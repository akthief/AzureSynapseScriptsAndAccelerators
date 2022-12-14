COPY INTO [cso].[DimStore]
FROM 'https://apsmigrationstaging.blob.core.windows.net/aps-export/ContosoDW/dbo_DimStore/*.txt'
WITH ( 
	FILE_TYPE = 'CSV', 
	CREDENTIAL = (IDENTITY = 'Managed Identity'), 
	--[COMPRESSION = { 'Gzip' | 'DefaultCodec'| 'Snappy'}], 
	FIELDQUOTE = '', 
	FIELDTERMINATOR='0x01', 
	ROWTERMINATOR = '0x0A', 
	FIRSTROW = 1, 
	--[DATEFORMAT = 'date_format'], 
	ENCODING = 'UTF8' 
	--[,IDENTITY_INSERT = {'ON' | 'OFF'}] 
) 
OPTION (LABEL = 'Import_Table_cso.DimStore')
