USE [CareWebQIDb]
GO
/****** Object:  StoredProcedure [iCCG].[CaseSearch]    Script Date: 07/11/2011 15:22:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [iCCG].[CaseSearch]
    (
     @UserSessionID INT = 0,
     @searchstring VARCHAR(255) = '',
     @startIndex INT = 0,
     @PageSize INT = 25,
     @state INT = 1,
     @sortColumn VARCHAR(255) = 'LastModifiedDate',
     @sort VARCHAR(5) = 'DESC',
     @recordCount INT OUT,
     @showDeleted BIT = 0,
     @Debug BIT = 0		
    )
AS 
    DECLARE @errCode INT ;
    DECLARE @procName VARCHAR(50) ;

    SET @errCode = 0 ;
    SET @procName = 'CaseSearch' ;

    IF @Debug = 1 
        BEGIN
            PRINT @procName + ': Begin'
        END

    DECLARE @SQLStatement NVARCHAR(4000)
    DECLARE @SelectString NVARCHAR(4000)
    DECLARE @JoinString NVARCHAR(4000)
    DECLARE @CriteriaString NVARCHAR(4000)
    DECLARE @OrderByString NVARCHAR(4000)
    DECLARE @ReadAccessTypeBit INT
    DECLARE @timetorun DATETIME

    SET @SelectString = ''
    SET @CriteriaString = ''
    SET @OrderByString = ''

    SET @ReadAccessTypeBit = 2

    IF @showDeleted IS NULL 
        BEGIN
            SET @showDeleted = 0 ;
        END ;
 
    SET NOCOUNT ON
    SET ROWCOUNT 0

    IF (@recordCount < 1
        OR @recordCount IS NULL) 
        SET @recordCount = 5000 ;

    SET @timetorun = GETDATE()

--    CREATE TABLE #PatientHierarchy
--        (
--         PatientID INT,
--         ParentPatientID INT,
--         ChildPatientID INT,
--         PatientIDSource1 VARCHAR(100),
--         PatientIDSource2 VARCHAR(100),
--         LastName1 VARCHAR(100),
--         LastName2 VARCHAR(100),
--         FirstName1 VARCHAR(50),
--         FirstName2 VARCHAR(50),
--         Active BIT,
--         IsVIP BIT,
--         CCGFlag BIT
--        )
--    CREATE NONCLUSTERED INDEX IX_tmp_PatientHierarchy ON #PatientHierarchy (PatientId)
---- drop table #PatientHierarchy
--    INSERT  INTO #PatientHierarchy
--            SELECT  ph.patientid,
--                    ph.PatientID,
--                    ph.ChildPatientID,
--                    p.patientidsource,
--                    p1.PatientIDSource,
--                    p.lastname,
--                    p1.lastname,
--                    p.firstname,
--                    p1.Firstname,
--                    p.active,
--                    p.ISVip,
--                    p.CCGFlag
--            FROM    patienthierarchy ph
--                    JOIN patient p ON ph.patientid = p.patientid
--                    LEFT JOIN Patient p1 ON ph.ChildPatientID = p1.PatientID
--            WHERE   ph.Active = 1
--            UNION
--            SELECT  ph.childpatientid,
--                    ph.PatientID,
--                    ph.ChildPatientID,
--                    p.patientidsource,
--                    p1.PatientIDSource,
--                    p.lastname,
--                    p1.lastname,
--                    p.firstname,
--                    p1.Firstname,
--                    p.active,
--                    p.ISVip,
--                    p.CCGFlag
--            FROM    patienthierarchy ph
--                    JOIN patient p ON ph.childpatientid = p.patientid
--                    LEFT JOIN Patient p1 ON ph.PatientID = p1.PatientID
--            WHERE   ph.active = 1
--
--    IF @Debug = 1 
--        BEGIN
--            PRINT 'Time taken to fill #PatientHierarchy : ' + CAST(DATEDIFF(ss, @timetorun, GETDATE()) AS VARCHAR(25))
--        END ;
--
-- Create a temp table to hold the current page of data
-- Add an ID column to count the records
    CREATE TABLE #TempTable
        (
         ClientId INT IDENTITY
                      PRIMARY KEY,
         CaseID INT,
         CaseIDSource VARCHAR(100),
         PatientName VARCHAR(255),
         PatientID INT,
         IsVIPFlag BIT,
         IsCCGFlag BIT,
         IsAAFlag BIT,
         PatientIDSource VARCHAR(100),
         ReviewerName VARCHAR(255),
         AdmitDate DATETIME,
         NextReviewDate DATETIME,
         DischargeDate DATETIME,
         CaseState INT,
         LastModifiedDate DATETIME,
         FacilityName VARCHAR(102),
         SecMask INT,
         AdmittingProviderID INT,
         AttendingProviderID INT,
         PCPID INT,
         FacilityID INT
        )

--    DECLARE @PatientSubSelect VARCHAR(1000)
    DECLARE @CaseSubSelect VARCHAR(1000)

    IF (@showDeleted = 0) 
        BEGIN
--            SELECT  @PatientSubSelect = '(SELECT PatientID, PatientIDSource, LastName, FirstName, IsVIP, CCGFlag FROM Patient WITH(INDEX(IX_Patient_Active)) WHERE Active = 1)'
            SELECT  @CaseSubSelect = '(SELECT * FROM Case WITH(INDEX(IX_Case_Active)) WHERE Active = 1)'
        END
    ELSE 
        BEGIN
--            SELECT  @PatientSubSelect = '(SELECT PatientID, PatientIDSource, LastName, FirstName, IsVIP, CCGFlag FROM Patient)'
            SELECT  @CaseSubSelect = '(SELECT * FROM Case)'
        END
--
--Build Select part
    SELECT  @SelectString = 'SELECT -- TOP ( ' + CAST(@recordCount AS VARCHAR) + ' )
		DISTINCT
		E.[CaseID] AS CaseID, 
		E.[CaseIDSource] AS CaseIDSource, 
	--	CASE WHEN (P.[IsVip] = 1) THEN ''XXXXXXXX'' ELSE RTRIM(E.[PatientLastName] + '', '' + E.[PatientFirstName] + '' '' + ISNULL(E.[PatientMiddleInitial], '''')) END as PatientName,
		RTRIM(E.[PatientLastName] + '', '' + E.[PatientFirstName] + '' '' + ISNULL(E.[PatientMiddleInitial], '''')) as PatientName,	
		E.[PatientID] AS PatientID,
		P.[IsVip] as IsVIPFlag,
		P.[CCGFlag] as IsCCGFlag,
		0 as ISAAFlag,
		E.[PatientIDSource] AS PatientIDSource,
		CASE WHEN (WQ.[ReviewerUserID] IS NULL) THEN E.[ReviewerName] ELSE dbo.fx_GetUserNameOffUserID(WQ.[ReviewerUserID]) END AS ReviewerName, 
		E.[AdmitDate] AS AdmitDate, 
		getutcdate()) AS [NextReviewDate],
		E.[DischargeDate] AS DischargeDate,
		E.[State] as CaseState,
		E.[LastModifiedDate] AS LastModifiedDate,
		E.[FacilityName] AS FacilityName,
		0 AS SecMask,
		E.AdmittingProviderID,
		E.AttendingProviderID,
		E.PCPID,
		E.FacilityID
 FROM 
	' + @CaseSubSelect + ' E ' ;
--	
--    SELECT  @JoinString = '
--	INNER JOIN ' + @PatientSubSelect + ' P ON E.PatientID = P.PatientID 
--	LEFT JOIN [WorkQueue] WQ ON WQ.[Active] = 1 AND WQ.[CaseID] = E.[CaseID] 
--	 '
--
----Build Criteria part
--    DECLARE @id INT
--    SELECT  @id = 1
--    DECLARE @max_id INT
--    DECLARE @episodeSubString VARCHAR(100)
--    DECLARE @patientNameWhereCriteria_PatientRecord VARCHAR(8000)
--    DECLARE @patientNameCriteria_PatientHierarchy1 VARCHAR(8000)
--    DECLARE @patientNameCriteria_PatientHierarchy2 VARCHAR(8000)
--
--    SET @timetorun = GETDATE()
--
--    SELECT  @CriteriaString = ' WHERE ((' + dbo.fx_BuildNamePermutationSearch(@searchstring, 'E.Patient') + ') OR '
--    SELECT  @patientNameWhereCriteria_PatientRecord = dbo.fx_BuildNamePermutationSearch(@searchstring, 'P.') ; 
--    SELECT  @patientNameCriteria_PatientHierarchy1 = dbo.fx_BuildNamePermutationSearch(@searchstring, 'PH.') ; 
--    SELECT  @patientNameCriteria_PatientHierarchy2 = dbo.fx_BuildNamePermutationSearch(@searchstring, 'PH1.') ; 
--    SELECT  @max_id = MAX(Id)
--    FROM    dbo.fx_ParseInputString(@searchstring)
--
--    IF @Debug = 1 
--        BEGIN
--            PRINT 'Time taken to run  functions : ' + CAST(DATEDIFF(ss, @timetorun, GETDATE()) AS VARCHAR(25))
--        END ;
----Hold parsed keywords
--    DECLARE @SearchKeyWords TABLE
--        (
--         [ID] INT,
--         SearchKeyWord VARCHAR(100)
--        )
--
--    INSERT  INTO @SearchKeyWords
--            SELECT  *
--            FROM    dbo.fx_ParseInputString(@searchstring)
--
--    WHILE @id <= @max_id 
--        BEGIN
--            SELECT  @episodeSubString = SearchKeyWord
--            FROM    @SearchKeyWords
--            WHERE   ID = @id
--	
--            SELECT  @CriteriaString = @CriteriaString + 'E.CaseIDSource LIKE ''' + @episodeSubString + '%'' ESCAPE ''\'' '
--	  
--            SELECT  @CriteriaString = @CriteriaString + 'OR E.PatientIDSource LIKE ''' + @episodeSubString + '%'' ESCAPE ''\'' '
--
--            SELECT  @CriteriaString = @CriteriaString + ' OR ' + @patientNameWhereCriteria_PatientRecord
--	  
--            SELECT  @CriteriaString = @CriteriaString + ' OR ' + @patientNameCriteria_PatientHierarchy1
--            SELECT  @CriteriaString = @CriteriaString + 'OR PH.PatientIDSource LIKE ''' + @episodeSubString + '%'' ESCAPE ''\'' '
--	  
--            IF (@id < @max_id) 
--                SELECT  @CriteriaString = @CriteriaString + ' OR '
--	
--            SET @id = @id + 1
--   
--        END
--
--    SELECT  @CriteriaString = @CriteriaString + ')'
--
--/*
--IF ( @showDeleted = 0 )
--BEGIN
-- SELECT @CriteriaString = @CriteriaString + ' AND E.Active = 1 AND P.Active = 1'
-- SELECT @PatientSubSelect = '(SELECT PatientID, PatientIDSource, LastName, FirstName, IsVIP, CCGFlag FROM Patient WITH(INDEX(IX_Patient_Active)) WHERE Active = 1)'
-- SELECT @CaseSubSelect = '(SELECT * FROM Case WITH(INDEX(IX_Case_Active)) WHERE Active = 1)'
--END
--ELSE
--BEGIN
-- SELECT @PatientSubSelect = '(SELECT PatientID, PatientIDSource, LastName, FirstName, IsVIP, CCGFlag FROM Patient)'
-- SELECT @CaseSubSelect = '(SELECT * FROM Case)'
--END
--*/
--
--    SELECT  @CriteriaString = @CriteriaString + ' AND (E.[State] & ' + CONVERT(VARCHAR(10), @state) + ')= E.[State]' 
--
----Build Order By part	
--    SELECT  @OrderByString = ' 
--ORDER BY ' + CASE (@sortColumn)
--               WHEN 'CaseIDSource' THEN 'E.[CaseIDSource] ' + @Sort
--               WHEN 'PatientName' THEN 'RTRIM(E.[PatientLastName] + '', '' + E.[PatientFirstName] + '' '' + ISNULL(E.[PatientMiddleInitial], ''''))' + @Sort
--               WHEN 'PatientIDSource' THEN 'E.[PatientIDSource] ' + @Sort
--               WHEN 'ReviewerName' THEN 'CASE WHEN (WQ.[ReviewerUserID] IS NULL) THEN E.[ReviewerName] ELSE dbo.fx_GetUserNameOffUserID(WQ.[ReviewerUserID]) END  ' + @Sort
--               WHEN 'AdmitDate' THEN 'E.[AdmitDate] ' + @Sort
--               WHEN 'NextReviewDate' THEN 'dbo.fx_GetCaseNextReviewDate(E.[CaseID], getutcdate())  ' + @Sort
--               WHEN 'LastModifiedDate' THEN 'E.[LastModifiedDate] ' + @Sort
--               WHEN 'FacilityName' THEN 'E.[FacilityName]  ' + @Sort
--             END
--
--
---- Building later part of joining 	
--    SELECT  @JoinString = @JoinString + 'LEFT JOIN	(SELECT  PatientID, PatientIDSource, LastName, FirstName
--				FROM
--					(	SELECT  b.PatientID, a.PatientIDSource, a.LastName, a.FirstName
--					 FROM 
--							(	SELECT 	PatientID, ParentPatientID, PatientIDSource, LastName, FirstName
--								FROM	(	SELECT	PatientID,  ParentPatientID, PatientIDSource1  PatientIDSource, 
--													LastName1 LastName,  FirstName1 FirstName 
--											FROM	#patientHierarchy 
--										) sph
--							) a
--							join #patientHierarchy b on  a.ParentPatientID = b.ParentPatientID 
--					) sph1 
--				WHERE ' + dbo.fx_BuildNamePermutationSearch(@searchstring, 'sph1.') + 'OR sph1.PatientIDSource LIKE ''' + @episodeSubString + '%'' ESCAPE ''\'' ' + ') PH ON p.PatientID = PH.PatientID
--	' ;
--
----Fill the temp table with the reminders
--
--    SELECT  @SQLStatement = @SelectString + @JoinString + @CriteriaString + @OrderByString
--
--    IF @Debug = 1 
--        BEGIN
--            PRINT @SQLStatement
--        END
--
--    SET @timetorun = GETDATE()
--
--
---- Select all matching records (up to @recordCount) into temp table
--    INSERT  INTO #TempTable
--            (CaseID,
--             CaseIDSource,
--             PatientName,
--             PatientID,
--             IsVIPFlag,
--             IsCCGFlag,
--             IsAAFlag,
--             PatientIDSource,
--             ReviewerName,
--             AdmitDate,
--             NextReviewDate,
--             DischargeDate,
--             CaseState,
--             LastModifiedDate,
--             FacilityName,
--             SecMask,
--             AdmittingProviderID,
--             AttendingProviderID,
--             PCPID,
--             FacilityID)
--            EXEC (@SQLStatement)
--
--
--    IF @Debug = 1 
--        BEGIN
--            PRINT 'Time taken to fill #TempTable : ' + CAST(DATEDIFF(ss, @timetorun, GETDATE()) AS VARCHAR(25))
--        END ;
--
--    SET @timetorun = GETDATE()
--
-----> Casesecmask function logic into sp
--
--    DECLARE @PatientResourceTypeID INT
--    DECLARE @FacilityResourceTypeID INT
--    DECLARE @ProviderResourceTypeID INT
--    DECLARE @CaseResourceTypeID INT
--
--    DECLARE @DriveAccessTypeBit INT
--
--    SET @CaseResourceTypeID = 8
--    SET @PatientResourceTypeID = 3
--    SET @FacilityResourceTypeID = 5
--    SET @ProviderResourceTypeID = 4
--
--    SET @ReadAccessTypeBit = 2
--    SET @DriveAccessTypeBit = 256
--
--    DECLARE @esec TABLE
--        (
--         UserSessionID INT,
--         GroupID INT,
--         SecMask INT
--        )
--
--    INSERT  INTO @esec
--            (UserSessionID,
--             GroupID,
--             SecMask)
--            SELECT  UserSessionID,
--                    GroupID,
--                    SecMask
--            FROM    v_SessionResourceAccess
--            WHERE   UserSessionID = @UserSessionID
--                    AND ResourceTypeID = @CaseResourceTypeID
--                    AND SecMask & @ReadAccessTypeBit = @ReadAccessTypeBit
--
--    DECLARE @prsec TABLE
--        (
--         UserSessionID INT,
--         GroupID INT,
--         SecMask INT
--        )
--
--    INSERT  INTO @prsec
--            (UserSessionID,
--             GroupID,
--             SecMask)
--            SELECT  UserSessionID,
--                    GroupID,
--                    SecMask
--            FROM    v_SessionResourceAccess
--            WHERE   UserSessionID = @UserSessionID
--                    AND ResourceTypeID = @ProviderResourceTypeID
--                    AND SecMask & @ReadAccessTypeBit = @ReadAccessTypeBit
--
--    DECLARE @episodesecmask TABLE (CaseID INT, secmask INT)
--
--    INSERT  INTO @episodesecmask
--            SELECT  e.CaseID,
--                    ISNULL(epsec.SecMask, 0) | ISNULL(efsec.SecMask, 0) | ISNULL(epcpsec.SecMask, 0) | ISNULL(eattndsec.SecMask, 0) | ISNULL(eadmitsec.SecMask, 0)
--            FROM    #TempTable e
--                    INNER JOIN PatientGroup pg ON e.PatientID = pg.PatientID
--                    LEFT JOIN (SELECT   UserSessionID,
--                                        GroupID,
--                                        SecMask
--                               FROM     v_SessionResourceAccess
--                               WHERE    UserSessionID = @UserSessionID
--                                        AND ResourceTypeID = @PatientResourceTypeID
--                                        AND SecMask & @ReadAccessTypeBit = @ReadAccessTypeBit) psec ON pg.GroupID = psec.GroupID
--                    LEFT JOIN @esec epsec ON pg.GroupID = epsec.GroupID
--                    LEFT JOIN FacilityGroup fg ON e.FacilityID = fg.FacilityID
--                    LEFT JOIN (SELECT   UserSessionID,
--                                        GroupID,
--                                        SecMask
--                               FROM     v_SessionResourceAccess
--                               WHERE    UserSessionID = @UserSessionID
--                                        AND ResourceTypeID = @FacilityResourceTypeID
--                                        AND SecMask & @ReadAccessTypeBit = @ReadAccessTypeBit) fsec ON fg.GroupID = fsec.GroupID
--                    LEFT JOIN @esec efsec ON fg.GroupID = efsec.GroupID
--                    LEFT JOIN ProviderGroup pcpg ON e.PCPID = pcpg.ProviderID
--                    LEFT JOIN @prsec pcpsec ON pcpg.GroupID = pcpsec.GroupID
--                    LEFT JOIN @esec epcpsec ON pcpg.GroupID = epcpsec.GroupID
--                    LEFT JOIN ProviderGroup attndg ON e.AttendingProviderID = attndg.ProviderID
--                    LEFT JOIN @prsec attndsec ON attndg.GroupID = attndsec.GroupID
--                    LEFT JOIN @esec eattndsec ON attndg.GroupID = eattndsec.GroupID
--                    LEFT JOIN ProviderGroup admitg ON e.AdmittingProviderID = admitg.ProviderID
--                    LEFT JOIN @prsec admitsec ON admitg.GroupID = admitsec.GroupID
--                    LEFT JOIN @esec eadmitsec ON admitg.GroupID = eadmitsec.GroupID
--            WHERE   ISNULL(psec.SecMask, 0) & @DriveAccessTypeBit = @DriveAccessTypeBit
--                    OR ISNULL(fsec.SecMask, 0) & @DriveAccessTypeBit = @DriveAccessTypeBit
--                    OR ISNULL(pcpsec.SecMask, 0) & @DriveAccessTypeBit = @DriveAccessTypeBit
--                    OR ISNULL(attndsec.SecMask, 0) & @DriveAccessTypeBit = @DriveAccessTypeBit
--                    OR ISNULL(admitsec.SecMask, 0) & @DriveAccessTypeBit = @DriveAccessTypeBit
--
--    IF @Debug = 1 
--        BEGIN
--            PRINT 'Time taken to fill @episodesecmask : ' + CAST(DATEDIFF(ss, @timetorun, GETDATE()) AS VARCHAR(25))
--        END ;
--
--    SET @timetorun = GETDATE()
--
--    CREATE TABLE #TempFinalTable
--        (
--         pageId INT IDENTITY
--                    PRIMARY KEY,
--         ClientId INT,
--         CaseID INT,
--         CaseIDSource VARCHAR(100),
--         PatientName VARCHAR(255),
--         PatientID INT,
--         IsVIPFlag BIT,
--         IsCCGFlag BIT,
--         IsAAFlag BIT,
--         PatientIDSource VARCHAR(100),
--         ReviewerName VARCHAR(255),
--         AdmitDate DATETIME,
--         NextReviewDate DATETIME,
--         DischargeDate DATETIME,
--         CaseState INT,
--         LastModifiedDate DATETIME,
--         FacilityName VARCHAR(102),
--         SecMask INT
--        )
--
--    INSERT  INTO #TempFinalTable
--            SELECT TOP (@recordCount)
--                    ClientID,
--                    a.CaseID,
--                    CaseIDSource,
--                    CASE WHEN (IsVIPFlag = 1) THEN 'XXXXXXXX'
--                         ELSE PatientName
--                    END AS PatientName,
--                    PatientID,
--                    IsVIPFlag,
--                    IsCCGFlag,
--                    CASE WHEN AutoAuth.CaseID IS NULL THEN 'FALSE'
--                         ELSE 'TRUE'
--                    END AS ISAAFlag,
--                    CASE WHEN (IsVIPFlag = 1) THEN 'XXXX'
--                         ELSE PatientIDSource
--                    END AS PatientIDSource,
--                    ReviewerName,
--                    AdmitDate,
--                    NextReviewDate,
--                    DischargeDate,
--                    CaseState,
--                    LastModifiedDate,
--                    FacilityName,
--                    b.secmask AS SecMask
--            FROM    #TempTable a
--                    JOIN @episodesecmask b ON a.CaseID = b.CaseID
--                    LEFT JOIN [AuthorizationRequest] AutoAuth ON AutoAuth.CaseID = a.CaseID 
--
--
--    IF @Debug = 1 
--        BEGIN
--            PRINT 'Time taken to fill #TempfinalTable : ' + CAST(DATEDIFF(ss, @timetorun, GETDATE()) AS VARCHAR(25))
--        END ;
--
--
--    SELECT  @errCode = @errCode + @@ERROR ;
--    IF @Debug = 1 
--        BEGIN
--            PRINT 'Error: ' + CONVERT(VARCHAR(10), @errCode)
--        END


---- Generate final recordset.  Limit result count to maximum allowed per page.
--    SELECT  CaseID,
--            CaseIDSource,
--            PatientName,
--            IsVIPFlag,
--            IsCCGFlag,
--            IsAAFlag,
--            PatientID,
--            PatientIDSource,
--            ReviewerName,
--            AdmitDate,
--            NextReviewDate,
--            DischargeDate,
--            CaseState,
--            LastModifiedDate,
--            FacilityName,
--            SecMask
--    FROM    #TempFinalTable TEMP
--    WHERE   TEMP.pageid > @startIndex
--            AND TEMP.pageid <= @startIndex + @pageSize
--    ORDER BY TEMP.ClientID ;

-- Generate final recordset.  Limit result count to maximum allowed per page.
    SELECT  CaseID,
            CaseIDSource,
            p.LastName + ', ' + p.FirstName,
            p.IsVIP AS IsVIPFlag,
            p.CCGFlag AS IsCCGFlag,
            0 AS IsAAFlag,
            p.PatientID,
            p.PatientIDSource,
            p.ReviewerName,
            GETDATE() AS AdmitDate,
            GETDATE() AS NextReviewDate,
            GETDATE() AS DischargeDate,
            0 AS CaseState,
            c.UpdateDate AS LastModifiedDate,
            'FacilityName' AS FacilityName,
            0 AS SecMask
    FROM    [iCCG].[Case] c
            JOIN Patient p ON c.PatientID = p.PatientID
    WHERE   CaseIDSource >= @searchstring
    ORDER BY CaseIDSource ;

-- Get Total Count and return via @recordCount output parameter.
    SELECT  @recordCount = COUNT(*)
    FROM    [iCCG].[Case] ;

--Drop temp table
    --DROP TABLE #TempTable

    SELECT  @errCode = @errCode + @@ERROR ;

    IF @Debug = 1 
        BEGIN
            PRINT 'End: ' + @procName
        END


    SET NOCOUNT OFF