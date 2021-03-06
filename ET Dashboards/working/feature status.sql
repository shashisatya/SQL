DECLARE @TeamProjectCollectionSK INT = 1
DECLARE @Iteration VARCHAR(50) = '\MCG\Cite Health Management\3.0 Release'

SET NOCOUNT ON;

WITH Features
AS (
	SELECT IterationPath
		, System_Id
		, System_Title
		, WorkItemSK
		, Microsoft_VSTS_Scheduling_Effort
		, MAX(System_Rev) AS MaxRev
	FROM tfs_warehouse.dbo.CurrentWorkItemView
	WHERE TeamProjectCollectionSK = 1
		AND System_WorkItemType = 'Feature'
		AND IterationPath IN (
			'\MCG\Cite CareWebQI\6.0 Release'
			, '\MCG\Cite Health Management\3.0 Release'
			, '\MCG\Cite Auto Auth\4.0 Release'
			, '\MCG\Indicia Care Coordination'
			)
	GROUP BY IterationPath
		, System_Id
		, System_Title
		, WorkItemSK
		, Microsoft_VSTS_Scheduling_Effort
	)
	, Activities
AS (
	SELECT f.IterationPath
		, f.System_Id AS FeatureID
		, f.System_Title AS Feature
		, SUM(Microsoft_VSTS_Scheduling_Effort) AS TotalPoints
		, COUNT(link2.TargetWorkItemSK) UserStoryCount
	FROM Features f
	INNER JOIN tfs_warehouse.dbo.vFactLinkedCurrentWorkItem link ON f.WorkItemSK = link.SourceWorkItemSK
	INNER JOIN tfs_warehouse.dbo.vFactLinkedCurrentWorkItem link2 ON link.TargetWorkitemSK = link2.SourceWorkItemSK
	WHERE link.WorkItemLinkTypeSK = 2
		AND link2.WorkItemLinkTypeSK = 2
	GROUP BY f.IterationPath
		, f.System_Id
		, f.System_Title
		, f.WorkItemSK
		, f.Microsoft_VSTS_Scheduling_Effort
		, link.TargetWorkitemSK
	)
SELECT IterationPath
	, FeatureID
	, Feature
	, SUM(UserStoryCount) AS [User Story Count]
	, SUM(TotalPoints) AS [Total Points]
FROM Activities a
GROUP BY IterationPath
	, FeatureID
	, Feature
ORDER BY IterationPath
	, FeatureID
