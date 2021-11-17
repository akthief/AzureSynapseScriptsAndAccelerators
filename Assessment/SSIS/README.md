# SSIS Assessment

## Contents

- [Introduction](#Introduction) 
- [Collecting SSIS packages inventory](#Collecting SSIS packages inventory)
- [Analyzing SSIS packages](#Analyzing SSIS packages)
- [Conclusion](#Conclusion)



## Introduction

SSIS (SQL Server Integration Services) is ETL tool which is widely used with data warehouses based on Microsoft SQL Server or Microsoft Analytics Platform System (APS, MPP appliance). When migrating/modernizing these data warehouses in Azure cloud, ETL migration/modernization is frequently the hottest topic.

This toolkit is to help with collecting SSIS packages inventory at scale and assessing overall complexity. It will help to get insights on the questions such as (but not limited):

- How many SSIS packages are there?
- What is target SQL Server version? What is deployment model (package vs project)?
- How many tasks / data flows / event handlers / connection managers are there?
- What kind of control flow tasks are in use? 
- What kind of data flow transformations are in use?
- What kind of connection managers and providers are in use?

Getting insights on these questions would help to define proper migration/modernization strategy and estimate required efforts.

The toolkit comprises of 2 pieces:

1) [Get-SsisPackagesInventory.ps1](Get-SsisPackagesInventory.ps1) - the script which collects SSIS packages inventory.
2) [SSIS Assessment.pbit](SSIS Assessment.pbit) - Power BI report template used for data visualization and further analysis.

> **Note**
>
> This toolkit does not replace [Database Migration Assistant](https://docs.microsoft.com/en-us/sql/dma/dma-assess-ssis?view=sql-server-ver15) which focuses on possible blockers only. This toolkit is complimentary to Database Migration Assistant and provides more details on the scale and packages complexity.



## Collecting SSIS packages inventory

Collecting SSIS packages inventory is implemented using a PowerShell script.

Script prerequisites include:

- PowerShell 5.1 or higher
- 32-bit (64-bit is not supported due to SSIS object model limitations)
- SSIS 2012/2014/2016/2017 assemblies installed

If any of these prerequisites is not met the script will fail reporting corresponding error message.

The script expects 2 parameters:

- **RootFolder** - the path to a folder where SSIS packages source code is located. This can be either a single project or the whole solution.
- **OutputFolder** - the path to a folder where the script will create inventory files.

<img src="images/ScriptParameters.png" alt="Script Parameters" style="zoom:67%;" />

The script seeks for all SSIS project files (*.dtproj) under specified **RootFolder**, programmatically opens all packages in the found projects, and retrieves information about tasks, event handlers, connection managers, data flows, and data flow transformations. 

> ###### Note
>
> The script analyzes source code files only and does not connect to actual SSIS environment (msdb, SSISDB, Package store).
>
> Standalone packages (not linked to any project) are not analyzed.

<img src="images/ScriptOutput.png" alt="Script Output" style="zoom:67%;" />

<img src="images/ScriptOutput2.png" alt="Script Output" style="zoom:67%;" />

Script execution time varies and depends on the total number of packages and packages complexity. Typically it is in the range of minutes.

The script saves inventory information in CSV-files under **OutputFolder**. File names are self-explanatory.

<img src=".\images\InventoryFiles.png" alt="Inventory Files" style="zoom: 67%;" />



## **Analyzing SSIS packages** ##

When SSIS packages inventory is collected, it can be further analyzed using any analytics tool, such as Power BI, Excel, SQL, and others. Here, in the repository you can find a pre-configured template for Power BI report [SSIS Assessment.pbit](SSIS Assessment.pbit).

> ###### Note
>
> To use the template you will need to have Power BI Desktop on your machine. The latest version can be download from [Microsoft Downloads](https://aka.ms/pbiSingleInstaller) or [Microsoft Store](https://aka.ms/pbidesktopstore). 

To generate a new report, open a template in Power BI Desktop or simply double-click report template file name in Windows Explorer. Power BI Desktop will prompt for the path to inventory files. ***Do not change other parameters.***

<img src="images/PBI-parameters.png" alt="Power BI report parameters" style="zoom:50%;" />



###### **Overview page**

Overview page provides the summary of all found projects and packages, incl. target SQL Server version, deployment model, protection level, number of tasks by type, and number of data flow transformations by type.

<img src="images/PBI-Report-Overview.png" alt="Report Overview" style="zoom: 50%;" />

###### **Parameters**

Parameters page provides information about all found project parameters, including data type, Required, Sensitive, and Value.

<img src="images/PBI-Report-Parameters.png" alt="Parameters" style="zoom:50%;" />

###### **Executables**

Executables page provides information about control flow tasks and their types with drill-down capability.

<img src="images/PBI-Report-Executables.png" alt="Executables" style="zoom:50%;" />

###### **Data Flows**

Data Flows page provides information about data flow transformations  and their types with drill-down capability.

<img src="images/PBI-Report-DataFlows.png" alt="Data Flows" style="zoom:50%;" />

###### **Event Handlers**

Event Handlers  page provides information about event handlers with split by event type.

<img src="images/PBI-Report-EventHandlers.png" alt="Event Handlers" style="zoom:50%;" />

###### **Package Connection Managers**

Package Connection Managers page provides information about ***package***-level connection managers and split by connection type and providers.

<img src="images/PBI-Report-PackageConnectionManagers.png" alt="Package Connection Managers" style="zoom:50%;" />

###### **Project Connection Managers**

Project Connection Managers page provides information about ***project***-level connection managers and split by connection type and providers.

<img src="images/PBI-Report-ProjectConnectionManagers.png" alt="Project Connection Managers" style="zoom:50%;" />



## Conclusion ##

This toolkit enables data warehouse migration practitioners to perform SSIS packages analysis within literally minutes. This would help to shape migration strategy, including:

- Target platform definition, e.g. SSIS on VM, Azure SSIS, Azure Data Factory, etc.
- Possible blockers and/or items for further analysis and considerations
- Migration efforts estimation.
