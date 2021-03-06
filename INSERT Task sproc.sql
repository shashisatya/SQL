USE [CareWebQIDb]
GO
/****** Object:  StoredProcedure [dbo].[TaskInsert]    Script Date: 04/15/2011 08:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TaskInsert]
    (
     @taskID INT OUTPUT,
     @typeID INT,
     @caseID INT = NULL,
     @episodeID INT = NULL,
     @patientID INT = NULL,
     @ownerID INT,
     @assigneeID INT,
     @priorityID INT = NULL,
     @statusID INT,
     @reasonID INT,
     @outcomeID INT = NULL,
     @subject VARCHAR(255),
     @notes VARCHAR(1000) = NULL,
     @contactName VARCHAR(255) = NULL,
     @contactDetails VARCHAR(512) = NULL,
     @dueDate DATETIME = NULL,
     @startDate DATETIME = NULL,
     @endDate DATETIME = NULL,
     @insertBy INT,
     @isSystemTask BIT = 0,
     @Debug BIT = 0
    )
AS 
    BEGIN
        DECLARE @errCode INT ;
        DECLARE @procName VARCHAR(50) ;
	
        SET @errCode = 0 ;
        SET @procName = 'TaskInsert' ;

        IF @Debug = 1 
            BEGIN
                PRINT @procName + ': Inserting new [Task] record...' ;
            END

        INSERT  INTO [Task]
                ([TypeID],
                 [PriorityID],
                 [StatusID],
                 [ReasonID],
                 [OutcomeID],
                 [Subject],
                 [Notes],
                 [ContactName],
                 [ContactDetails],
                 [DueDate],
                 [StartDate],
                 [EndDate],
                 [InsertDate],
                 [InsertBy],
                 [IsSystemTask],
                 [Active])
        VALUES  (@typeID,
                 CASE WHEN @priorityID = 0 THEN NULL
                      ELSE @priorityID
                 END,
                 CASE WHEN @statusID = 0 THEN NULL
                      ELSE @statusID
                 END,
                 CASE WHEN @reasonID = 0 THEN NULL
                      ELSE @reasonID
                 END,
                 CASE WHEN @outcomeID = 0 THEN NULL
                      ELSE @outcomeID
                 END,
                 @subject,
                 @notes,
                 @contactName,
                 @contactDetails,
                 @dueDate,
                 @startDate,
                 @endDate,
                 GETUTCDATE(),
                 @insertBy,
                 @isSystemTask,
                 1) ;
	
        SELECT  @errCode = @errCode + @@ERROR ;

        SELECT  @taskID = SCOPE_IDENTITY() ;
        
        IF @caseID IS NOT NULL 
            INSERT  INTO [dbo].[TaskCase]
                    ([TaskID],
                     [CaseID],
                     [InsertDate],
                     [InsertBy],
                     [UpdateDate],
                     [UpdateBy],
                     [Active])
            VALUES  (@taskID,
                     @caseID,
                     GETUTCDATE(),
                     @insertBy,
                     NULL,
                     NULL,
                     1) ;

        IF @episodeID IS NOT NULL 
            INSERT  INTO [dbo].[TaskEpisode]
                    ([TaskID],
                     [EpisodeID],
                     [InsertDate],
                     [InsertBy],
                     [UpdateDate],
                     [UpdateBy],
                     [Active])
            VALUES  (@taskID,
                     @episodeID,
                     GETUTCDATE(),
                     @insertBy,
                     NULL,
                     NULL,
                     1) ;

        IF @patientID IS NOT NULL 
            INSERT  INTO [dbo].[TaskPatient]
                    ([TaskID],
                     [PatientID],
                     [InsertDate],
                     [InsertBy],
                     [UpdateDate],
                     [UpdateBy],
                     [Active])
            VALUES  (@taskID,
                     @patientID,
                     GETUTCDATE(),
                     @insertBy,
                     NULL,
                     NULL,
                     1) ;

        IF EXISTS ( SELECT  TaskID
                    FROM    TaskUser
                    WHERE   TaskID = @taskID ) 
            UPDATE  TaskUser
            SET     OwnerID = @ownerID,
                    AssigneeID = @assigneeID,
                    UpdateBy = @insertBy,
                    UpdateDate = GETUTCDATE()
            WHERE   TaskID = @taskID
        ELSE 
            INSERT  INTO [dbo].[TaskUser]
                    ([TaskID],
                     [OwnerID],
                     [AssigneeID],
                     [InsertDate],
                     [InsertBy],
                     [UpdateDate],
                     [UpdateBy],
                     [Active])
            VALUES  (@taskID,
                     @ownerID,
                     @assigneeID,
                     GETUTCDATE(),
                     @insertBy,
                     NULL,
                     NULL,
                     1) ;

		-- Save corresponding TaskLog record
        DECLARE @auditType CHAR(1) ;
        SET @auditType = 'I' ;
		
        EXEC dbo.TaskLogInsert
            @auditType,
            @taskID,
            @typeID,
            @caseID,
            @episodeID,
            @patientID,
            @priorityID,
            @statusID,
            @reasonID,
            @outcomeID,
            @ownerID,
            @assigneeID,
            @notes,
            @contactName,
            @contactDetails,
            @dueDate,
            @startDate,
            @endDate,
            @insertBy,
            NULL,
            @isSystemTask,
            1
	
        IF @Debug = 1 
            BEGIN
                PRINT @procName + ': Trapped TaskID = ' + CAST(@taskID AS VARCHAR(10)) ;
            END
	
        IF @errCode <> 0 
            RETURN -1 ;
        ELSE 
            RETURN 0 ;

    END