---
    title: Import Backlog
    description: Import Backlog
---

# Import Backlog

Open the PowerApp and navigate to the "Project Maintenance" and than to the "Import Backlog" page.

![Import Backlog Page](../media/powerapps/import-backlog-01.png "Open Import Backlog Page")

1. Select your import source:
    - [Process Map](./import-backlog.md#import-source---process-map) from COSMO Solution Store
    - [Backlog](./import-backlog.md#import-source---source-project-backlog) form a source project
1. Select your [target project](./import-backlog.md#select-target-project).
1. [Export the backlog](./import-backlog.md#export-source-backlog) from COSMO solution store or source project
1. [Start the import](./import-backlog.md#start-import-backlog) of selected work items (epics, features, ...) into your target project
1. [Wait until the import finish](./import-backlog.md#wait-for-completion). There is an automatic refresh until the import is succeeded or failed.
1. [Check the import result](./import-backlog.md#check-import-result).

You can watch a walk through here:

<video width="1280px" height="720px" controls>
  <source src="../media/powerapps/import-processmap.webm" type='video/webm; codecs="vp8, vorbis"'>
  Your browser does not support the video tag.
</video>

## Import Source - Process Map

Change the process map language and press "Select Source" to continue. You can also use the toggle button to switch to import from [Backlog](./import-backlog.md#import-source---source-project-backlog).

![Import Process Map](../media/powerapps/import-backlog-02.png "Process Map")

## Import Source - Source Project Backlog

Select the source project, change the source project team name and press "Select Source" to continue. You can also use the toggle button to switch to import from [Process Map](./import-backlog.md#import-source---process-map).

![Select Source Project](../media/powerapps/import-backlog-02-1.png "Select Source Project")

## Select Target Project

Select the target project and press "Select Target" to continue.

![Select Target Project](../media/powerapps/import-backlog-03.png "Select Target Project")

## Export Source Backlog

Start the export backlog (only needed, when source backlog was selected) by pressing "Export Backlog":

![Export Source Backlog](../media/powerapps/import-backlog-04-1.png "Export Source Backlog")

## Start Import Backlog

If needed Filter by work item types and start the backlog import by pressing "Import Backlog":

![Start Import Backlog](../media/powerapps/import-backlog-04.png "Start Import Backlog")

As result, the import starts:

![Import Started](../media/powerapps/import-backlog-05.png "Import Started")

## Wait for completion

Afterwards the import is running:

![Import Running](../media/powerapps/import-backlog-06.png "Import Running")

## Check Import Result

The whole import take approx. 5 minutes. A result is automatically checked every 5 seconds. When the import is completed please navigate to **"Details"**:

![Import Complete](../media/powerapps/import-backlog-06-1.png "Import Complete")

For example her is a correct import result:

![Import Result](../media/powerapps/import-backlog-07.png "Import Result")
