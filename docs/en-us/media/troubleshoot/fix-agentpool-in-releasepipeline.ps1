<#
.SYNOPSIS
    Updates Azure DevOps Release Pipelines to migrate from Hosted Windows 2019 with VS2019 to Azure Pipelines agent pool.

.DESCRIPTION
    This script performs the following operations:
    1. Connects to Azure DevOps using a Personal Access Token (PAT)
    2. Retrieves all projects in the organization
    3. Filters projects that have both "Hosted Windows 2019 with VS2019" (Queue ID 13) and "Azure Pipelines" (Queue ID 18) pools
    4. Scans all release pipelines in filtered projects
    5. Identifies pipelines using Queue ID 13 (Hosted Windows 2019 with VS2019)
    6. Updates those pipelines by:
       - Changing Queue ID from 13 to 18 (Azure Pipelines)
       - Adding agentSpecification with identifier "windows-latest"
    7. Pushes the updated pipeline definitions back to Azure DevOps
#>

$Pat = "<enter-your-pat>"
$Organization = "<enter-your-organization>"
# List Organizations
$Headers = @{Authorization = "Basic " + [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes(":$Pat")) }

#region CollectData
#Get All Projects
$Projects = Invoke-RestMethod -Uri "https://dev.azure.com/$Organization/_apis/projects?api-version=6.0" -Headers $Headers | Select-Object -ExpandProperty value

#Filter Projects that have both Hosted Windows 2019 with VS2019 (queueId 13) and Azure Pipelines (queueId 18)
$Projects = foreach ($Project in $Projects) {
    $Queues = Invoke-RestMethod -Uri "https://dev.azure.com/$Organization/$($Project.id)/_apis/distributedtask/queues?queueIds=13,18&api-version=7.1" -Headers $Headers
    if ($Queues.count -eq 2 -and $Queues.value.name -contains 'Hosted Windows 2019 with VS2019' -and $Queues.value.name -contains 'Azure Pipelines') {
        $Project
    }
}

#Get All Release Pipelines in those Projects
$ReleasePipelinesShort = @()
foreach ($Project in $Projects) {
    $ReleasePipelinesShort += Invoke-RestMethod -Uri "https://vsrm.dev.azure.com/$Organization/$($Project.id)/_apis/release/definitions?api-version=6.0" -Headers $Headers | Select-Object -ExpandProperty value 
}

#Filter Release Pipelines that use Hosted Windows 2019 with VS2019 (queueId 13)
$ReleasePipelinesToModify = @()
foreach ($Pipeline in $ReleasePipelinesShort) {
    Write-Host "Found Release Pipeline: $($Pipeline.name) (ID: $($Pipeline.id))"
    $FullPipeline = Invoke-RestMethod -Uri $Pipeline._links.self.href -Headers $Headers
    $QueueIds = $FullPipeline.environments.deployPhases.deploymentInput.queueId | Select-Object -Unique
    if ($QueueIds -contains 13) {
        Write-Host "    --> Contains Queue ID 13"
        $ReleasePipelinesToModify += $FullPipeline
    }
}
#endregion CollectData

#region UpdatePipelines
foreach ($Pipeline in $ReleasePipelinesToModify) {
    Write-Host "Updating Pipeline: $($Pipeline.name) (ID: $($Pipeline.id))"
    # Change all queueId 13 to 18
    foreach ($environment in $Pipeline.environments) {
        foreach ($deployPhase in $environment.deployPhases) {
            if ($deployPhase.deploymentInput.queueId -eq 13) {
                Write-Host "  Changing Queue ID from 13 to 18 in environment: $($environment.name)"
                $deployPhase.deploymentInput.queueId = 18
                $deployPhase.deploymentInput | Add-Member -MemberType NoteProperty -Name "agentSpecification" -Value @{identifier = "windows-latest" } -Force
            }
        }
    }
    
    # Update the definition in Azure DevOps
    $ProjectId = $Pipeline.url.split('/')[4]
    $UpdateUri = "https://vsrm.dev.azure.com/$Organization/$ProjectId/_apis/release/definitions/$($Pipeline.id)?api-version=6.0"
    $Body = $Pipeline | ConvertTo-Json -Depth 100
    try {
        $UpdatedPipeline = Invoke-RestMethod -Uri $UpdateUri -Method Put -Headers $Headers -Body $Body -ContentType "application/json"
        Write-Host "  Successfully updated pipeline: $($Pipeline.name)" -ForegroundColor Green
    }
    catch {
        Write-Host "  Failed to update pipeline: $($Pipeline.name) - Error: $($_.Exception.Message)" -ForegroundColor Red
    }
}
#endregion UpdatePipelines