<#
.SYNOPSIS
    Updates Azure DevOps Build Pipelines that have no queue defined to use the Azure Pipelines agent pool.

.DESCRIPTION
    This script performs the following operations:
    1. Connects to Azure DevOps using a Personal Access Token (PAT)
    2. Retrieves all projects in the organization
    3. Scans all build pipelines in all projects
    4. Identifies pipelines with no queue defined (queue.pool is null)
    5. Displays found pipelines in Out-GridView for user selection
    6. Updates selected pipelines by:
       - Setting Queue ID to Azure Pipelines
    7. Pushes the updated pipeline definitions back to Azure DevOps
#>

$Pat = "<enter-your-pat>"
$Organization = "<enter-your-organization>"
# List Organizations
$Headers = @{Authorization = "Basic " + [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes(":$Pat")) }

#region CollectData
#Get All Projects
$Projects = Invoke-RestMethod -Uri "https://dev.azure.com/$Organization/_apis/projects?api-version=6.0" -Headers $Headers | Select-Object -ExpandProperty value

#Get All Pipelines in those Projects
$DefsToEdit = @()
foreach ($Project in $Projects) {
    $Definitions = Invoke-RestMethod -Uri "https://dev.azure.com/$Organization/$($Project.id)/_apis/build/definitions?api-version=7.1" -Headers $Headers | Select-Object -ExpandProperty value 
    foreach ($Def in $Definitions) {
        Write-Host "Found Pipeline: $($Def.name) (ID: $($Def.id)) in Project: $($Project.name)"
        if ($Def.queue.pool -eq $null) {
            Write-Host "   --> No Queue defined"
            $DefsToEdit += $Def
        }
    }
}
#endregion CollectData

# Display Pipelines with no Queue Defined and allow user to select which to update
$SelectedDefs = $DefsToEdit | Select-Object @{Name = "project"; Expression = { $_.project.name } }, name, id, url | Out-GridView -OutputMode Multiple -Title "Pipelines with no Queue Defined. Choose pipelines to update to use Azure Pipelines"

#region UpdatePipelines
#Update Pipelines to use Azure Pipelines
foreach ($Def in $SelectedDefs) {
    $FullDef = Invoke-RestMethod -Uri $Def.url -Headers $Headers
    $FullDef.queue = @{
        name = "Azure Pipelines"
    }
    # Update the definition in Azure DevOps
    $ProjectId = $Def.url.split('/')[4]
    $UpdateUri = "https://dev.azure.com/$Organization/$ProjectId/_apis/build/definitions/$($Def.id)?api-version=7.1"
    $Body = $FullDef | ConvertTo-Json -Depth 100
    try {
        $null = Invoke-RestMethod -Uri $UpdateUri -Method Put -Headers $Headers -Body $Body -ContentType "application/json"
        Write-Host "  Successfully updated pipeline: $($Def.project) - $($Def.name)" -ForegroundColor Green
    }
    catch {
        Write-Host "  Failed to update pipeline: $($Def.project) - $($Def.name) - Error: $($_.Exception.Message)" -ForegroundColor Red
    }
}
#endregion UpdatePipelines