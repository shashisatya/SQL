USE [CareWebQIDb]
GO
/****** Object:  StoredProcedure [dbo].[TaskLogInsert]    Script Date: 04/19/2011 13:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[TaskLogInsert]
    (
     @taskLogID INT OUTPUT,
     @auditType CHAR(1) = NULL,
     @taskID INT = NULL,
     @taskTypeID INT = NULL,
     @caseID INT = NULL,
     @episodeID INT = NULL,
     @patientID INT = NULL,
     @ownerID INT,
     @assigneeID INT,
     @priorityID INT = NULL,
     @statusID INT = NULL,
     @reasonID INT = NULL,
     @outcomeID INT = NULL,
     @subject VARCHAR(255) = NULL,
     @notes VARCHAR(1000) = NULL,
     @contactName VARCHAR(255) = NULL,
     @contactDetails VARCHAR(512) = NULL,
     @dueDate DATETIME = NULL,
     @startDate DATETIME = NULL,
     @endDate DATETIME = NULL,
     @insertBy INT = NULL,
     @active BIT = 0,
     @Debug INT = 0
    )
AS 
    BEGIN
        DECLARE @errCode INT ;
        DECLARE @procName VARCHAR(50) ;
	
        SET @errCode = 0 ;
        SET @procName = 'TaskLogInsert' ;
	
        DECLARE @taskType VARCHAR(50) ;
        DECLARE @priority VARCHAR(50) ;
        DECLARE @status VARCHAR(50) ;
        DECLARE @reason VARCHAR(50) ;
        DECLARE @outcome VARCHAR(50) ;
        DECLARE @ownerUserName VARCHAR(50) ;
        DECLARE @assigneeUserName VARCHAR(50) ;
	
        SELECT  @taskType = [Text]
        FROM    dbo.RefTaskType
        WHERE   ID = @priorityID
        
        SELECT  @priority = [Text]
        FROM    dbo.RefTaskPriority
        WHERE   ID = @priorityID
        
        SELECT  @status = [TaskStatusName]
        FROM    dbo.RefTaskStatus
        WHERE   TaskStatusID = @statusID
        
        SELECT  @reason = [TaskReasonName]
        FROM    dbo.RefTaskReason
        WHERE   TaskReasonID = @reasonID
        
        SELECT  @outcome = [TaskOutcomeName]
        FROM    dbo.RefTaskOutcome
        WHERE   TaskOutcomeID = @outcomeID
        
        SELECT  @ownerUserName = [LastName] + ', ' + [FirstName]
        FROM    dbo.AppUser
        WHERE   UserID = @ownerID
        
        SELECT  @assigneeUserName = [LastName] + ', ' + [FirstName]
        FROM    dbo.AppUser
        WHERE   UserID = @assigneeID
                 	
        IF @Debug = 1 
            BEGIN
                PRINT @procName + ': Inserting new [TaskLog] record...' ;
            END

        INSERT  INTO [TaskLog]
                ([AuditType],
                 [TaskID],
                 [TaskType],
                 [ParentType],
                 [ParentID],
                 [Priority],
                 [Status],
                 [Reason],
                 [Outcome],
                 [OwnerUserName],
                 [AssigneeUserName],
                 [Subject],
                 [Notes],
                 [ContactName],
                 [ContactDetails],
                 [DueDate],
                 [StartDate],
                 [EndDate],
                 [InsertDate],
                 [InsertBy])
        VALUES  (@auditType,
                 @taskID,
                 @taskType,
                 CASE WHEN @caseID IS NOT NULL THEN 'Case'
                      WHEN @episodeID IS NOT NULL THEN 'Episode'
                      WHEN @patientID IS NOT NULL THEN 'Patient'
                 END,
                 CASE WHEN @caseID IS NOT NULL THEN @caseID
                      WHEN @episodeID IS NOT NULL THEN @episodeID
                      WHEN @patientID IS NOT NULL THEN @patientID
                 END,
                 @priority,
                 @status,
                 @reason,
                 @outcome,
                 @ownerUserName,
                 @assigneeUserName,
                 @subject,
                 @notes,
                 @contactName,
                 @contactDetails,
                 @dueDate,
                 @startDate,
                 @endDate,
                 GETUTCDATE(),
                 @insertBy) ;
	
        SELECT  @errCode = @errCode + @@ERROR ;
        SELECT  @taskLogID = SCOPE_IDENTITY() ;
	
        IF @Debug = 1 
            BEGIN
                PRINT @procName + ': Trapped TaskLogID = ' + CAST(@taskLogID AS VARCHAR(10)) ;
            END
	
        IF @errCode <> 0 
            RETURN -1 ;
        ELSE 
            RETURN 0 ;
    END