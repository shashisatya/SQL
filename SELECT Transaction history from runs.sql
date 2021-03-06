SELECT LoadTestRun.LoadTestRunId
	,LoadTestRun.LoadTestName
	,LoadTestTransactionResults.TransactionName
	,CONVERT(DECIMAL(6,2), LoadTestTransactionResults.Average) AS ResponseTime
	,CONVERT(VARCHAR(50), LoadTestRun.StartTime, 101) AS RunDate
FROM LoadTestRun
INNER JOIN LoadTestTransactionResults ON LoadTestRun.LoadTestRunId = LoadTestTransactionResults.LoadTestRunId
WHERE LoadTestName = 'Hospital'
ORDER BY LoadTestRun.StartTime DESC
