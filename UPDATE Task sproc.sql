/****** Object:  StoredProcedure [dbo].[TaskUpdate]    Script Date: 04/15/2011 13:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TaskUpdate]
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
     @updateBy INT,
     @isSystemTask BIT = 0,
     @active BIT,
     @Debug BIT = 0
    )
AS 
    BEGIN

        DECLARE @errCode INT ;
        DECLARE @procName VARCHAR(50) ;
	
        SET @errCode = 0 ;
        SET @procName = 'TaskUpdate' ;

        IF @Debug = 1 
            BEGIN
                PRINT @procName + ': Updating specified [Task] record...' ;
            END

        UPDATE  [Task]
        SET     [TypeID] = @typeID,
                [PriorityID] = CASE WHEN @priorityID = 0 THEN NULL
                                    ELSE @priorityID
                               END,
                [StatusID] = CASE WHEN @statusID = 0 THEN NULL
                                  ELSE @statusID
                             END,
                [ReasonID] = CASE WHEN @reasonID = 0 THEN NULL
                                  ELSE @reasonID
                             END,
                [OutcomeID] = CASE WHEN @outcomeID = 0 THEN NULL
                                   ELSE @outcomeID
                              END,
                [Subject] = @subject,
                [Notes] = @notes,
                [ContactName] = @contactName,
                [ContactDetails] = @contactDetails,
                [DueDate] = @dueDate,
                [StartDate] = @startDate,
                [EndDate] = @endDate,
                [UpdateDate] = GETUTCDATE(),
                [UpdateBy] = @updateBy,
                [IsSystemTask] = @isSystemTask,
                [Active] = @active
        WHERE   [TaskID] = @taskID ;
	
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
            NULL,
            @updateBy,
            @isSystemTask,
            @active
	
        SELECT  @errCode = @errCode + @@ERROR ;

        IF @errCode <> 0 
            RETURN -1 ;
        ELSE 
            RETURN 0 ;

    END