--#======================================================================================================================#
--#                                                                                                                      #
--#  AzureSynapseScriptsAndAccelerators - PowerShell and T-SQL Utilities                                                 #
--#                                                                                                                      #
--#  This utility was developed to aid SMP/MPP migrations to Azure Synapse Migration Practitioners.                      #
--#  It is not an officially supported Microsoft application or tool.                                                    #
--#                                                                                                                      #
--#  The utility and any script outputs are provided on "AS IS" basis and                                                #
--#  there are no warranties, express or implied, including, but not limited to implied warranties of merchantability    #
--#  or fitness for a particular purpose.                                                                                #
--#                                                                                                                      #                    
--#  The utility is therefore not guaranteed to generate perfect code or output. The output needs carefully reviewed.    #
--#                                                                                                                      #
--#                                       USE AT YOUR OWN RISK.                                                          #
--#                                                                                                                      #
--#======================================================================================================================#

/*                                               
--======================================================================================================================#
-- T-SQL Utilities that produce output that you can capture and save to TablesConfig.csv
-- Connect to the on-Prem SQL Server to generate this output 
-- Author: Gaiye "Gail" Zhou 
-- June 2021 
--======================================================================================================================#
*/

-- Connect to the specific database you'd like to generate config files. 
--Use AdventureWorksDW20107

Select '1' as Active,
db_name()  as DatabaseName, 
s.name as SchemaName, 
t.name as TableName, 
'ext_' + s.name as ExternalSchemaName, 
'Yes' as DropExternalTable
from sys.tables t 
inner join sys.schemas s 
on t.schema_id = s.schema_id 
inner join sys.databases d
on d.name = db_name()  and t.type_desc = 'USER_TABLE' 
and t.temporal_type_desc ='NON_TEMPORAL_TABLE' 
and t.object_id not in (select object_id from sys.external_tables)
and s.name in ('dbo') -- if you'd like to limit to specific schemas 
and t.name in 
('DimAccount',
'DimCustomer', 
'DimDate', 
'DimGeography',
'DimReseller', 
'FactInternetSales',
'FactResellerSales',
'FactProductInventory',
'FactResellerSales'
 ) 
