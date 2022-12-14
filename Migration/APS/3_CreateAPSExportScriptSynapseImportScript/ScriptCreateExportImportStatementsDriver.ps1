#======================================================================================================================#
#                                                                                                                      #
#  AzureSynapseScriptsAndAccelerators - PowerShell and T-SQL Utilities                                                 #
#                                                                                                                      #
#  This utility was developed to aid SMP/MPP migrations to Azure Synapse Migration Practitioners.                      #
#  It is not an officially supported Microsoft application or tool.                                                    #
#                                                                                                                      #
#  The utility and any script outputs are provided on "AS IS" basis and                                                #
#  there are no warranties, express or implied, including, but not limited to implied warranties of merchantability    #
#  or fitness for a particular purpose.                                                                                #
#                                                                                                                      #                    
#  The utility is therefore not guaranteed to generate perfect code or output. The output needs carefully reviewed.    #
#                                                                                                                      #
#                                       USE AT YOUR OWN RISK.                                                          #
#                                                                                                                      #
#======================================================================================================================#
#
# =================================================================================================================================================
# Description:
#       Driver script to create Export/Import scripts
#        
# =================================================================================================================================================
# 
# Authors: Andrey Mirskiy, Andy Isley
# Tested with APS (Analytics Platform System)
# 
# Use this to set Powershell permissions (examples)
# Set-ExecutionPolicy Unrestricted -Scope CurrentUser 
# Unblock-File -Path C:\AzureSynapseScriptsAndAccelerators\Migration\APS\3_CreateAPSExportScriptSynapseImportScript\ScriptCreateExportImportStatementsDriver.ps1


#Requires -Version 5.1
#Requires -Modules SqlServer


Function Get-AbsolutePath
{
    [CmdletBinding()] 
    param( 
        [Parameter(Position=0, Mandatory=$true)] [string]$Path
    ) 

    if ([System.IO.Path]::IsPathRooted($Path) -eq $false) {
        return [IO.Path]::GetFullPath( (Join-Path -Path $PSScriptRoot -ChildPath $Path) )
    } else {
        return $Path
    }
}


function ScriptCreateExportObjects($DatabaseName
					,$OutputFolderPath 
					,$FileName
					,$SourceSchemaName 
					,$SourceObjectName 
					,$DestSchemaName 
					,$DestObjectaName 
					,$DataSource 
					,$FileFormat 
					,$ExportLocation)
{
    $OutputFolderPath = Get-AbsolutePath $OutputFolderPath

	if (!(Test-Path $OutputFolderPath))
	{
		New-item "$OutputFolderPath" -ItemType Dir | Out-Null
	}

	$OutpputFolderPathFileName = Join-Path -Path $OutputFolderPath -ChildPath "$FileName.sql"

	#$cmd = "IF NOT EXISTS (SELECT * FROM sys.schemas WHERE [name]='" + $DestSchemaName + "') EXEC('CREATE SCHEMA [" + $DestSchemaName +"]')`r`nGO`r`n`r`n" +
    $cmd = "CREATE EXTERNAL TABLE [" + $DatabaseName + "].[" + $DestSchemaName + "].[" + $DestObjectaName + "]" +
			"`r`nWITH (`r`n`tLOCATION='" + $ExportLocation + "',`r`n`tDATA_SOURCE = " + $DataSource + ",`r`n`tFILE_FORMAT = " + $FileFormat + "`r`n`t)`r`nAS `r`nSELECT * FROM [" + $DatabaseName + "].[" + $SourceSchemaName +  "].[" + $SourceObjectName + "]" +
			"`r`nOPTION (LABEL = 'Export_Table_" + $DatabaseName + "." + $SourceSchemaName +  "." + $SourceObjectName + "')`r`n"
    #$cmd += "GO`r`n"
		
    $cmd | Out-File -FilePath $OutpputFolderPathFileName 
}


function ScriptCreateImportObjects(
					$InsertFilePath 
					,$ImportSchema 
					,$SourceObjectName 
					,$DestSchemaName 
					,$DestObjectName 
					)
{
    $InsertFilePath = Get-AbsolutePath $InsertFilePath

	if (!(Test-Path $InsertFilePath))
	{
		New-item "$InsertFilePath" -ItemType Dir | Out-Null
	}

	$InsertFilePathFull = Join-Path -Path $InsertFilePath -ChildPath "$FileName.sql"

	$cmd = "INSERT INTO [" + $ImportSchema + "].[" + $SourceObjectName + "]" +
		"`r`nSELECT * FROM [" + $DestSchemaName +  "].[" + $DestObjectName + "]" +
		"`r`n`OPTION (LABEL = 'Import_Table_" + $ImportSchema + "." + $SourceObjectName + "')"
		
    $cmd | Out-File -FilePath $InsertFilePathFull
}


function ScriptCopyQueries(
					$CopyFilePath 
					,$ImportSchema 
					,$SourceObjectName 
					,$DestSchemaName 
					,$DestObjectName
                    ,$StorageAccountName
                    ,$ContainerName
                    ,$ImportLocation
					)
{
    $CopyFilePath = Get-AbsolutePath $CopyFilePath

	if (!(Test-Path $CopyFilePath))
	{
		New-item "$CopyFilePath" -ItemType Dir | Out-Null
	}

	$CopyFilePathFull = Join-Path -Path $CopyFilePath -ChildPath "$FileName.sql"

	$cmd = "COPY INTO [" + $ImportSchema + "].[" + $SourceObjectName + "]`r`n" +
		"FROM 'https://" + $StorageAccountName + ".blob.core.windows.net/" + $ContainerName + $ImportLocation +"/*.txt'`r`n" +
        "WITH ( `r`n" +
        "`tFILE_TYPE = 'CSV', `r`n" +
        "`tCREDENTIAL = (IDENTITY = 'Managed Identity'), `r`n" +
	    "`t--[COMPRESSION = { 'Gzip' | 'DefaultCodec'| 'Snappy'}], `r`n" +
        "`tFIELDQUOTE = '', `r`n" +
        "`tFIELDTERMINATOR='0x01', `r`n" +
	    "`tROWTERMINATOR = '0x0A', `r`n" +
	    "`tFIRSTROW = 1, `r`n" +
	    "`t--[DATEFORMAT = 'date_format'], `r`n" +
	    "`tENCODING = 'UTF8' `r`n" +
	    "`t--[,IDENTITY_INSERT = {'ON' | 'OFF'}] `r`n" +
        ") `r`n" +
		"OPTION (LABEL = 'Import_Table_" + $ImportSchema + "." + $SourceObjectName + "')"
		
    $cmd | Out-File -FilePath $CopyFilePathFull
}


###############################################################################################
# User Input Here
###############################################################################################

$defaultScriptsDriverFile = "$PSScriptRoot\One_ExpImptStmtDriver_Generated.csv"

$ScriptsDriverFile = Read-Host -prompt "Enter the name of the csv Driver File or Press 'Enter' to accept the default [$defaultScriptsDriverFile] "
	if($ScriptsDriverFile -eq "" -or $ScriptsDriverFile -eq $null)
	{$ScriptsDriverFile = $defaultScriptsDriverFile}


###############################################################################################
# Main logic Here
###############################################################################################

$startTime = Get-Date

$csvFile = Import-Csv $ScriptsDriverFile

foreach ($ObjectToScript in $csvFile) 
{
	$Active = $ObjectToScript.Active
    if($Active -eq '1') 
	{
        $DatabaseName = $ObjectToScript.DatabaseName
        $OutputFolderPath = $ObjectToScript.OutputFolderPath
        $FileName = $ObjectToScript.FileName
        $SourceSchemaName= $ObjectToScript.SourceSchemaName
        $SourceObjectName= $ObjectToScript.SourceObjectName
        $DestSchemaName = $ObjectToScript.DestSchemaName
        $DestObjectaName = $ObjectToScript.DestObjectName
        $DataSource = $ObjectToScript.DataSource
        $FileFormat = $ObjectToScript.FileFormat
        $ExportLocation = $ObjectToScript.ExportLocation
        $ImportLocation = $ObjectToScript.ExportLocation
        $InsertFilePath = $ObjectToScript.InsertFilePath
        $CopyFilePath = $ObjectToScript.CopyFilePath
        $ImportSchema = $ObjectToScript.ImportSchema
        $StorageAccountName = $ObjectToScript.StorageAccountName
        $ContainerName = $ObjectToScript.ContainerName
				      
        Write-Host "Processing Export Script for: $DatabaseName.$SourceSchemaName.$SourceObjectName"
        ScriptCreateExportObjects $DatabaseName $OutputFolderPath $FileName $SourceSchemaName $SourceObjectName $DestSchemaName $DestObjectaName $DataSource $FileFormat $ExportLocation
        ScriptCreateImportObjects $InsertFilePath $ImportSchema $SourceObjectName $DestSchemaName $DestObjectaName
        ScriptCopyQueries $CopyFilePath $ImportSchema $SourceObjectName $DestSchemaName $DestObjectaName $StorageAccountName $ContainerName $ImportLocation
	}
}


$finishTime = Get-Date

Write-Host "Program Start Time:   ", $startTime -ForegroundColor Green
Write-Host "Program Finish Time:  ", $finishTime -ForegroundColor Green
Write-Host "Program Elapsed Time: ", ($finishTime-$startTime) -ForegroundColor Green
