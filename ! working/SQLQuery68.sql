USE [Christus50]
GO

/****** Object:  StoredProcedure [dbo].[GetAutoAuthSubmissionsPaged]    Script Date: 08/23/2013 11:46:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[GetAutoAuthSubmissionsPaged] (
	@UserSessionID INT = 0
	, @startIndex INT = 0
	, @pageSize INT = 25
	, @sortColumn VARCHAR(255) = 'DateOfSubmission'
	, @sort VARCHAR(5) = 'ASC'
	, @filterPatient INT = NULL
	, @filterDateOfSubmission DATETIME = NULL
	, @filterDateOfService DATETIME = NULL
	, @filterFacility INT = NULL
	, @filterStatus VARCHAR(255) = NULL
	, @submitStatus VARCHAR(50) = 'Published'
	, @recordCount INT OUT
	, @Debug BIT = 0
	)
AS
DECLARE @errCode INT;
DECLARE @procName VARCHAR(50);
DECLARE @statement VARCHAR(2048);
DECLARE @wc VARCHAR(2048);
DECLARE @orderby VARCHAR(2048);
DECLARE @updateAccessTypeBit INT;
DECLARE @SubmitStatusCancelled INT;

SET @errCode = 0;
SET @procName = '[GetAutoAuthSubmissionsPaged]';

IF @Debug = 1
BEGIN
	PRINT @procName + ': Begin'
END

DECLARE @RecordStart INT
DECLARE @RecordEnd INT
DECLARE @today DATETIME
DECLARE @localizationId INT

SELECT @localizationID = dbo.fx_cgasp_GetUserLocalizationID(NULL, NULL)

SELECT @SubmitStatusCancelled = (
		SELECT RefAuthRequestSubmitStatusID
		FROM RefAuthRequestSubmitStatus
		WHERE [Text] = 'Cancelled'
		);

IF @SubmitStatusCancelled IS NULL
BEGIN
	SET @SubmitStatusCancelled = 0;
END

SET @RecordStart = @startIndex
SET @RecordEnd = @startIndex + @pageSize
SET @updateAccessTypeBit = (
		SELECT BitMask
		FROM AccessType
		WHERE AccessTypeName = 'Update'
		);

--1) create prelim temp table
CREATE TABLE #TempTablePrelim (
	[ClientID] INT IDENTITY PRIMARY KEY
	, [AutoAuthRequestID] INT
	, [EpisodeID] INT
	, [EpisodeIDSource] VARCHAR(100) NULL
	, [AttendingProvider] VARCHAR(255) NULL
	, [RequestingProvider] VARCHAR(255) NULL
	, [PatientName] VARCHAR(255) NULL
	, [CCGFlag] BIT NULL
	, [IsVIP] BIT NULL
	, [EpisodeCode] VARCHAR(2000) NULL
	, [FacilityName] VARCHAR(255) NULL
	, [DateOfSubmission] DATETIME NULL
	, [DateOfService] DATETIME NULL
	, [Status] VARCHAR(255)
	, [AdditionalInfoRequested] BIT NULL
	, [UserCanEdit] BIT
	)

INSERT INTO #TempTablePrelim
SELECT request.AuthorizationRequestID AS [AutoAuthRequestID]
	, ISNULL(episode.EpisodeID, 0) AS [EpisodeID]
	, episode.EpisodeIDSource AS [EpisodeIDSource]
	, episode.AttendingProviderName AS [AttendingProvider]
	, provider.LastName + ', ' + provider.FirstName + ' ' + provider.MiddleInitial AS [RequestingProvider]
	, RTRIM(episode.PatientLastName + ', ' + episode.PatientFirstName + ' ' + episode.PatientMiddleInitial) AS [PatientName]
	, patient.CCGFlag AS [CCGFlag]
	, patient.IsVIP AS [IsVIP]
	, dbo.fx_cgasp_GetEpisodeCodes(ISNULL(episode.EpisodeID, 0)) AS [EpisodeCode]
	, episode.FacilityName AS [FacilityName]
	, request.SubmitDate AS [DateOfSubmission]
	, episode.RequestedAdmitDate AS [DateOfService]
	, reqstat.TEXT AS [Status]
	, request.AdditionalInfoRequested
	, CASE 
		WHEN (ES.EpisodeSecMask & @updateAccessTypeBit = @updateAccessTypeBit)
			THEN 1
		ELSE 0
		END AS UserCanEdit
FROM [AuthorizationRequest] request
INNER JOIN dbo.fx_cgasp_GetEpisodeSecMask(@UserSessionID) ES ON request.EpisodeID = ES.EpisodeID
	AND ES.EpisodeSecMask & 2 = 2
	AND ES.PatientSecMask & 2 = 2
	AND ES.FacilitySecMask & 2 = 2
INNER JOIN [RefAuthRequestStatus] reqstat ON reqstat.ID = request.RefAuthRequestStatusID
INNER JOIN [RefAuthRequestSubmitStatus] submitstat ON submitstat.RefAuthRequestSubmitStatusID = request.RefAuthRequestSubmitStatusID
LEFT JOIN [Episode] episode ON request.EpisodeID = episode.EpisodeID
INNER JOIN [Patient] patient ON patient.PatientID = episode.PatientID
INNER JOIN [Provider] provider ON provider.ProviderID = request.RequestingProviderID
WHERE request.RefAuthRequestSubmitStatusID != @SubmitStatusCancelled
	AND episode.Active = 'TRUE'
	AND patient.Active = 'TRUE'
	AND (
		@filterPatient IS NULL
		OR episode.PatientID = @filterPatient
		)
	AND (
		@filterDateOfSubmission IS NULL
		OR (
			request.SubmitDate IS NOT NULL
			AND YEAR(CAST(dbo.fx_cgasp_Intl_UtcToLocalDate(request.SubmitDate, @localizationID) AS DATETIME)) = YEAR(@filterDateOfSubmission)
			AND MONTH(CAST(dbo.fx_cgasp_Intl_UtcToLocalDate(request.SubmitDate, @localizationID) AS DATETIME)) = MONTH(@filterDateOfSubmission)
			AND DAY(CAST(dbo.fx_cgasp_Intl_UtcToLocalDate(request.SubmitDate, @localizationID) AS DATETIME)) = DAY(@filterDateOfSubmission)
			)
		)
	AND (
		@filterDateOfService IS NULL
		OR (
			episode.RequestedAdmitDate IS NOT NULL
			AND YEAR(episode.RequestedAdmitDate) = YEAR(@filterDateOfService)
			AND MONTH(episode.RequestedAdmitDate) = MONTH(@filterDateOfService)
			AND DAY(episode.RequestedAdmitDate) = DAY(@filterDateOfService)
			)
		)
	AND (
		@filterFacility IS NULL
		OR episode.FacilityID = @filterFacility
		)
	AND (
		@filterStatus IS NULL
		OR reqStat.[Text] = @filterStatus
		)
	AND submitstat.[Text] = @submitStatus;

--2) sort prelim table into 2nd temp table 
DECLARE @SQLStatement NVARCHAR(4000)
DECLARE @SelectString NVARCHAR(4000)
DECLARE @OrderByString NVARCHAR(4000)

SET @SQLStatement = ''
SET @SelectString = ''
SET @OrderByString = ''

--build string for order by
SELECT @OrderByString = ' ORDER BY ' + CASE (@sortColumn)
		WHEN 'EpisodeIDSource'
			THEN '[EpisodeIDSource] ' + @Sort
		WHEN 'AttendingProvider'
			THEN 'AttendingProvider ' + @Sort
		WHEN 'RequestingProvider'
			THEN 'RequestingProvider ' + @Sort
		WHEN 'PatientName'
			THEN 'PatientName ' + @Sort
		WHEN 'EpisodeCode'
			THEN 'EpisodeCode ' + @Sort
		WHEN 'FacilityName'
			THEN 'FacilityName ' + @Sort
		WHEN 'DateOfSubmission'
			THEN 'DateOfSubmission ' + @Sort
		WHEN 'DateOfService'
			THEN 'DateOfService ' + @Sort
		WHEN 'Status'
			THEN 'Status ' + @Sort
		END

--build string for select part from filtered prelim table
SELECT @SelectString = 'SELECT  
	[AutoAuthRequestID],
	[EpisodeID],
	[EpisodeIDSource],
	[AttendingProvider],
	[RequestingProvider],
	[PatientName],
	[CCGFlag],
	[IsVIP],
	[EpisodeCode],
	[FacilityName],
	[DateOfSubmission],
	[DateOfService],
	[Status],
	[AdditionalInfoRequested],
	[UserCanEdit]
FROM #TempTablePrelim '

SELECT @SQLStatement = @SelectString + @OrderByString

--create sorted temp table with all filters etc. & correct keys
CREATE TABLE #TempTable (
	[ClientID] INT IDENTITY PRIMARY KEY
	, [AutoAuthRequestID] INT
	, [EpisodeID] INT
	, [EpisodeIDSource] VARCHAR(100) NULL
	, [AttendingProvider] VARCHAR(255) NULL
	, [RequestingProvider] VARCHAR(255) NULL
	, [PatientName] VARCHAR(255) NULL
	, [CCGFlag] BIT NULL
	, [IsVIP] BIT NULL
	, [EpisodeCode] VARCHAR(2000) NULL
	, [FacilityName] VARCHAR(255) NULL
	, [DateOfSubmission] DATETIME NULL
	, [DateOfService] DATETIME NULL
	, [Status] VARCHAR(255)
	, [AdditionalInfoRequested] BIT NULL
	, [UserCanEdit] BIT
	)

INSERT INTO #TempTable
EXEC (@SQLStatement)

DROP TABLE #TempTablePrelim

--3)return results set for a page
SET @statement = 'SELECT [AutoAuthRequestID], 
			[EpisodeID],
			[EpisodeIDSource],
			[RequestingProvider],
			[AttendingProvider],
			[PatientName],
			[CCGFlag],
			[IsVIP],
			[EpisodeCode],
			[FacilityName],
			[DateOfSubmission],
			[DateOfService],
			[Status],
			[AdditionalInfoRequested],
			[UserCanEdit]
			FROM  #TempTable TEMP ';
SET @wc = 'WHERE TEMP.ClientID > ' + CAST(@RecordStart AS VARCHAR(10)) + ' AND TEMP.ClientID <= ' + CAST(@RecordStart + @pageSize AS VARCHAR(10));
SET @orderby = 'ORDER BY ' + @sortColumn + ' ' + @sort;

EXEC (@statement + @wc + @orderby)

SELECT @errCode = @errCode + @@ERROR;

SELECT @recordCount = COUNT(*)
FROM #TempTable;

--Drop temp table
DROP TABLE #TempTable

IF @Debug = 1
BEGIN
	PRINT 'Error: ' + CAST(@errCode AS VARCHAR(10))
	PRINT 'End: ' + @procName
END

SET NOCOUNT OFF
