/* 5A. Insert Into Statements From Staging Tables */
-- Manually modifed 

SET IDENTITY_INSERT SqlPoolDatabaseName.edw.FactCallCenter on 
INSERT INTO SqlPoolDatabaseName.edw.FactCallCenter
(
	[FactCallCenterID],
	[DateKey],
	[WageType],
	[Shift],
	[LevelOneOperators],
	[LevelTwoOperators],
	[TotalOperators],
	[Calls],
	[AutomaticResponses],
	[Orders],
	[IssuesRaised],
	[AverageTimePerIssue],
	[ServiceGrade],
	[Date]
)
SELECT
	[FactCallCenterID],
	[DateKey],
	[WageType],
	[Shift],
	[LevelOneOperators],
	[LevelTwoOperators],
	[TotalOperators],
	[Calls],
	[AutomaticResponses],
	[Orders],
	[IssuesRaised],
	[AverageTimePerIssue],
	[ServiceGrade],
	[Date]
FROM  SqlPoolDatabaseName.Staging.FactCallCenter
SET IDENTITY_INSERT SqlPoolDatabaseName.edw.FactCallCenter off 
GO 

 