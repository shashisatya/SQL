CREATE PROCEDURE [dbo].[GetChartData] (@LoadTestName VARCHAR(50))
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @aa VARCHAR(8000);
	DECLARE @sql VARCHAR(8000);

	SET @aa = '[';

	WITH names
	AS (
		SELECT DISTINCT TransactionName
		FROM LoadTestTransactionResults
		where TransactionName like '%Care Day%'
		)
	SELECT @aa = COALESCE(CASE 
				WHEN @aa = '['
					THEN TransactionName
				ELSE @aa + '],[' + TransactionName
				END, '')
	FROM names;

	SET @aa = '[' + @aa + ']';
	SET @sql = ';WITH runs (
	        RunDate
	        ,TransactionName
	        ,ResponseTime
	        )
        AS (
	        SELECT CONVERT(VARCHAR(50), ltr.StartTime, 101)
		        ,txr.TransactionName
		        ,CONVERT(DECIMAL(6, 2), txr.Average)
	        FROM LoadTestRun ltr
	        INNER JOIN LoadTestTransactionResults txr ON ltr.LoadTestRunId = txr.LoadTestRunId
	        WHERE ltr.LoadTestName = ''' + @LoadTestName + '''
		        AND txr.Average < 30
	        )
        SELECT *
        FROM runs
        PIVOT(AVG(ResponseTime) FOR TransactionName IN (' + @aa + ')) AS foo';

	EXEC (@sql);
END
