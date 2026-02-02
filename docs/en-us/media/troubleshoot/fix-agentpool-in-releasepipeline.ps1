<#
.SYNOPSIS
    Updates Azure DevOps Release Pipelines to migrate from any Hosted Windows agent pool to Azure Pipelines agent pool.

.DESCRIPTION
    This script performs the following operations:
    1. Connects to Azure DevOps using a Personal Access Token (PAT)
    2. Retrieves all projects in the organization
    3. Filters projects that have agent pools starting with "Hosted Windows" and "Azure Pipelines" pools
    4. Scans all release pipelines in filtered projects
    5. Identifies pipelines using any "Hosted Windows*" agent pool
    6. Updates those pipelines by:
       - Changing agent pool to "Azure Pipelines"
       - Adding agentSpecification with identifier "windows-latest"
    7. Pushes the updated pipeline definitions back to Azure DevOps

.NOTES
    This script dynamically resolves agent pool names to queue IDs, making it work across different Azure DevOps organizations.
#>

$Pat = "<enter-your-pat>"
$Organization = "<enter-your-organization>"

###

$OldAgentPoolPattern = "Hosted Windows*"
$NewAgentPoolName = "Azure Pipelines"

# List Organizations
$Headers = @{Authorization = "Basic " + [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes(":$Pat")) }

#region CollectData
#Get All Projects
$Projects = Invoke-RestMethod -Uri "https://dev.azure.com/$Organization/_apis/projects?api-version=6.0" -Headers $Headers | Select-Object -ExpandProperty value

#Filter Projects that have both old and new agent pools, and store their queue IDs
$ProjectsWithQueues = @()
foreach ($Project in $Projects) {
    $AllQueues = Invoke-RestMethod -Uri "https://dev.azure.com/$Organization/$($Project.id)/_apis/distributedtask/queues?api-version=7.1" -Headers $Headers | Select-Object -ExpandProperty value
    $OldQueues = $AllQueues | Where-Object { $_.name -like $OldAgentPoolPattern }
    $NewQueue = $AllQueues | Where-Object { $_.name -eq $NewAgentPoolName }
    
    if ($OldQueues -and $NewQueue) {
        foreach ($OldQueue in $OldQueues) {
            $ProjectsWithQueues += [PSCustomObject]@{
                Project = $Project
                OldQueueId = $OldQueue.id
                OldQueueName = $OldQueue.name
                NewQueueId = $NewQueue.id
            }
            Write-Host "Found project '$($Project.name)' with old queue '$($OldQueue.name)' (ID: $($OldQueue.id)) and new queue ID $($NewQueue.id)"
        }
    }
}

#Get All Release Pipelines in those Projects and filter ones that need updating
$ReleasePipelinesToModify = @()
foreach ($ProjectWithQueue in $ProjectsWithQueues) {
    $Project = $ProjectWithQueue.Project
    $ReleasePipelinesShort = Invoke-RestMethod -Uri "https://vsrm.dev.azure.com/$Organization/$($Project.id)/_apis/release/definitions?api-version=6.0" -Headers $Headers | Select-Object -ExpandProperty value
    
    foreach ($Pipeline in $ReleasePipelinesShort) {
        Write-Host "Checking Release Pipeline: $($Pipeline.name) (ID: $($Pipeline.id)) in project: $($Project.name)"
        $FullPipeline = Invoke-RestMethod -Uri $Pipeline._links.self.href -Headers $Headers
        $QueueIds = $FullPipeline.environments.deployPhases.deploymentInput.queueId | Select-Object -Unique
        
        if ($QueueIds -contains $ProjectWithQueue.OldQueueId) {
            Write-Host "    --> Uses old agent pool '$($ProjectWithQueue.OldQueueName)' (Queue ID: $($ProjectWithQueue.OldQueueId))"
            # Add the queue mapping info to the pipeline object for later use
            $FullPipeline | Add-Member -MemberType NoteProperty -Name "OldQueueId" -Value $ProjectWithQueue.OldQueueId -Force
            $FullPipeline | Add-Member -MemberType NoteProperty -Name "OldQueueName" -Value $ProjectWithQueue.OldQueueName -Force
            $FullPipeline | Add-Member -MemberType NoteProperty -Name "NewQueueId" -Value $ProjectWithQueue.NewQueueId -Force
            $ReleasePipelinesToModify += $FullPipeline
        }
    }
}
#endregion CollectData

#region UpdatePipelines
foreach ($Pipeline in $ReleasePipelinesToModify) {
    Write-Host "Updating Pipeline: $($Pipeline.name) (ID: $($Pipeline.id))"
    # Change old agent pool to new agent pool
    foreach ($environment in $Pipeline.environments) {
        foreach ($deployPhase in $environment.deployPhases) {
            if ($deployPhase.deploymentInput.queueId -eq $Pipeline.OldQueueId) {
                Write-Host "  Changing agent pool from '$($Pipeline.OldQueueName)' to '$NewAgentPoolName' in environment: $($environment.name)"
                $deployPhase.deploymentInput.queueId = $Pipeline.NewQueueId
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