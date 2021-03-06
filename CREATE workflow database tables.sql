/****** Object:  Table [dbo].[RefWorkflow]    Script Date: 04/08/2011 13:26:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RefWorkflow](
	[WorkflowID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[WorkflowName] [varchar](100) NOT NULL,
	[Description] [varchar](255) NULL,
	[StateObject] [varchar](255) NULL,
	[Active] [bit] NOT NULL CONSTRAINT [DF_RefWorkflow_Active]  DEFAULT ((1)),
	[InsertDate] [datetime] NOT NULL DEFAULT (GETUTCDATE()),
	[InsertUserID] [int] NULL,
	[UpdateDate] [datetime] NULL DEFAULT (GETUTCDATE()),
	[UpdateUserID] [int] NULL,
 CONSTRAINT [PK_RefWorkflow] PRIMARY KEY CLUSTERED 
(
	[WorkflowID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF

/****** Object:  Table [dbo].[RefState]    Script Date: 04/08/2011 13:23:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RefState](
	[StateID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[StateName] [varchar](100) NOT NULL,
	[Description] [varchar](255) NULL,
	[WorkflowID] [int] NOT NULL,
	[ObjectID] [int] NOT NULL,
	[Active] [bit] NOT NULL CONSTRAINT [DF_RefState_Active]  DEFAULT ((1)),
	[InsertDate] [datetime] NOT NULL DEFAULT (GETUTCDATE()),
	[InsertUserID] [int] NULL,
	[UpdateDate] [datetime] NULL DEFAULT (GETUTCDATE()),
	[UpdateUserID] [int] NULL,
 CONSTRAINT [PK_RefState] PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[RefState]  WITH NOCHECK ADD  CONSTRAINT [FK_RefState_RefWorkflow] FOREIGN KEY([WorkflowID])
REFERENCES [dbo].[RefWorkflow] ([WorkflowID])
GO
ALTER TABLE [dbo].[RefState] CHECK CONSTRAINT [FK_RefState_RefWorkflow]


/****** Object:  Table [dbo].[RefTask]    Script Date: 04/08/2011 13:25:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RefTask](
	[TaskID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[TaskName] [varchar](100) NOT NULL,
	[Description] [varchar](255) NULL,
	[WorkflowID] [int] NOT NULL,
	[Active] [bit] NOT NULL CONSTRAINT [DF_RefTask_Active]  DEFAULT ((1)),
	[InsertDate] [datetime] NOT NULL DEFAULT (GETUTCDATE()),
	[InsertUserID] [int] NULL,
	[UpdateDate] [datetime] NULL DEFAULT (GETUTCDATE()),
	[UpdateUserID] [int] NULL,
 CONSTRAINT [PK_RefTask] PRIMARY KEY CLUSTERED 
(
	[TaskID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[RefTask]  WITH NOCHECK ADD  CONSTRAINT [FK_RefTask_RefWorkflow] FOREIGN KEY([WorkflowID])
REFERENCES [dbo].[RefWorkflow] ([WorkflowID])
GO
ALTER TABLE [dbo].[RefTask] CHECK CONSTRAINT [FK_RefTask_RefWorkflow]

/****** Object:  Table [dbo].[RefTaskStatus]    Script Date: 04/08/2011 13:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RefTaskStatus](
	[TaskStatusID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[TaskStatusName] [varchar](100) NOT NULL,
	[Description] [varchar](255) NULL,
	[Active] [bit] NOT NULL CONSTRAINT [DF_RefTaskStatus_Active]  DEFAULT ((1)),
	[InsertDate] [datetime] NOT NULL DEFAULT (GETUTCDATE()),
	[InsertUserID] [int] NULL,
	[UpdateDate] [datetime] NULL DEFAULT (GETUTCDATE()),
	[UpdateUserID] [int] NULL,
 CONSTRAINT [PK_RefTaskStatus] PRIMARY KEY CLUSTERED 
(
	[TaskStatusID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF


/****** Object:  Table [dbo].[Rule]    Script Date: 04/08/2011 13:26:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rule](
	[RuleID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[BeginStateID] [int] NOT NULL,
	[EndStateID] [int] NOT NULL,
	[TaskID] [int] NOT NULL,
	[TaskStatusID] [int] NOT NULL,
	[Active] [bit] NOT NULL CONSTRAINT [DF_Rule_Active]  DEFAULT ((1)),
	[InsertDate] [datetime] NOT NULL DEFAULT (GETUTCDATE()),
	[InsertUserID] [int] NULL,
	[UpdateDate] [datetime] NULL DEFAULT (GETUTCDATE()),
	[UpdateUserID] [int] NULL,
 CONSTRAINT [PK_Rule] PRIMARY KEY CLUSTERED 
(
	[RuleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Rule]  WITH NOCHECK ADD  CONSTRAINT [FK_Rule_EndState] FOREIGN KEY([EndStateID])
REFERENCES [dbo].[RefState] ([StateID])
GO
ALTER TABLE [dbo].[Rule] CHECK CONSTRAINT [FK_Rule_EndState]
GO
ALTER TABLE [dbo].[Rule]  WITH NOCHECK ADD  CONSTRAINT [FK_Rule_Task] FOREIGN KEY([TaskID])
REFERENCES [dbo].[RefTask] ([TaskID])
GO
ALTER TABLE [dbo].[Rule] CHECK CONSTRAINT [FK_Rule_Task]
GO
ALTER TABLE [dbo].[Rule]  WITH NOCHECK ADD  CONSTRAINT [FK_Rule_TaskStatus] FOREIGN KEY([TaskStatusID])
REFERENCES [dbo].[RefTaskStatus] ([TaskStatusID])
GO
ALTER TABLE [dbo].[Rule] CHECK CONSTRAINT [FK_Rule_TaskStatus]
GO
ALTER TABLE [dbo].[Rule]  WITH NOCHECK ADD  CONSTRAINT [FK_Rule_StartState] FOREIGN KEY([BeginStateID])
REFERENCES [dbo].[RefState] ([StateID])
GO
ALTER TABLE [dbo].[Rule] CHECK CONSTRAINT [FK_Rule_StartState]