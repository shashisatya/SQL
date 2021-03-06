
GO
/****** Object:  Table [dbo].[Task]    Script Date: 04/14/2011 17:58:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Task](
	[TaskID] [int] IDENTITY(1,1) NOT NULL,
	[TypeID] [int] NULL,
	[PriorityID] [int] NULL,
	[StatusID] [int] NULL,
	[ReasonID] [int] NULL,
	[OutcomeID] [int] NULL,
	[Subject] [varchar](255) NULL,
	[Notes] [varchar](1000) NULL,
	[ContactName] [varchar](255) NULL,
	[ContactDetails] [varchar](512) NULL,
	[DueDate] [datetime] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[InsertDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[InsertBy] [int] NULL,
	[UpdateBy] [int] NULL,
	[IsSystemTask] [bit] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED 
(
	[TaskID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_Task_RefTaskOutcome] FOREIGN KEY([OutcomeID])
REFERENCES [dbo].[RefTaskOutcome] ([TaskOutcomeID])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_Task_RefTaskOutcome]
GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_Task_RefTaskPriority] FOREIGN KEY([PriorityID])
REFERENCES [dbo].[RefTaskPriority] ([ID])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_Task_RefTaskPriority]
GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_Task_RefTaskReason] FOREIGN KEY([ReasonID])
REFERENCES [dbo].[RefTaskReason] ([TaskReasonID])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_Task_RefTaskReason]
GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_Task_RefTaskStatus] FOREIGN KEY([StatusID])
REFERENCES [dbo].[RefTaskStatus] ([TaskStatusID])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_Task_RefTaskStatus]
GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_Task_RefTaskType] FOREIGN KEY([TypeID])
REFERENCES [dbo].[RefTaskType] ([ID])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_Task_RefTaskType]



GO
/****** Object:  Table [dbo].[TaskCase]    Script Date: 04/14/2011 17:58:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskCase](
	[TaskCaseID] [int] IDENTITY(1,1) NOT NULL,
	[TaskID] [int] NULL,
	[CaseID] [int] NULL,
	[InsertDate] [datetime] NULL,
	[InsertBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_TaskCase] PRIMARY KEY CLUSTERED 
(
	[TaskCaseID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]



GO
/****** Object:  Table [dbo].[TaskEpisode]    Script Date: 04/14/2011 17:58:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskEpisode](
	[TaskEpisodeID] [int] IDENTITY(1,1) NOT NULL,
	[TaskID] [int] NULL,
	[EpisodeID] [int] NULL,
	[InsertDate] [datetime] NULL,
	[InsertBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_TaskEpisode] PRIMARY KEY CLUSTERED 
(
	[TaskEpisodeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]



GO
/****** Object:  Table [dbo].[TaskLog]    Script Date: 04/14/2011 17:58:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaskLog](
	[TaskLogID] [int] IDENTITY(1,1) NOT NULL,
	[AuditType] [char](1) NULL,
	[TaskID] [int] NULL,
	[TaskType] [varchar](50) NULL,
	[ParentType] [varchar](50) NULL,
	[ParentID] [int] NULL,
	[PatientID] [int] NULL,
	[PatientName] [varchar](255) NULL,
	[Priority] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[Reason] [varchar](50) NULL,
	[Outcome] [varchar](50) NULL,
	[OwnerName] [varchar](150) NULL,
	[CurrentUserName] [varchar](150) NULL,
	[PreviousUserName] [varchar](150) NULL,
	[Subject] [varchar](255) NULL,
	[Notes] [varchar](1000) NULL,
	[ContactName] [varchar](255) NULL,
	[ContactDetails] [varchar](512) NULL,
	[DueDate] [datetime] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[InsertDate] [datetime] NULL,
	[InsertBy] [int] NULL,
	[suser_sname] [varchar](100) NULL CONSTRAINT [DF_TaskLog_suser_sname]  DEFAULT (suser_sname()),
 CONSTRAINT [PK_TaskLog] PRIMARY KEY CLUSTERED 
(
	[TaskLogID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF



GO
/****** Object:  Table [dbo].[TaskPatient]    Script Date: 04/14/2011 17:58:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskPatient](
	[TaskPatientID] [int] IDENTITY(1,1) NOT NULL,
	[TaskID] [int] NULL,
	[PatientID] [int] NULL,
	[InsertDate] [datetime] NULL,
	[InsertBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_TaskPatient] PRIMARY KEY CLUSTERED 
(
	[TaskPatientID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]




GO
/****** Object:  Table [dbo].[TaskUser]    Script Date: 04/14/2011 17:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskUser](
	[TaskUserID] [int] IDENTITY(1,1) NOT NULL,
	[TaskID] [int] NULL,
	[UserID] [int] NULL,
	[AssigneeID] [int] NULL,
	[InsertDate] [datetime] NULL,
	[InsertBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_TaskUser] PRIMARY KEY CLUSTERED 
(
	[TaskUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
