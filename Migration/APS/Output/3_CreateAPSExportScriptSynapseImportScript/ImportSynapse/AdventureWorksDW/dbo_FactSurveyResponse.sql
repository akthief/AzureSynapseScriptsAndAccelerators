INSERT INTO [aw].[FactSurveyResponse]
SELECT * FROM [EXT_aw].[FactSurveyResponse]
OPTION (LABEL = 'Import_Table_aw.FactSurveyResponse')
