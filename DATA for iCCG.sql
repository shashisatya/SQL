USE [iCCG]
GO
/****** Object:  Table [iCCG].[Goal]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[Goal](
	[GoalID] [int] IDENTITY(1,1) NOT NULL,
	[GoalUniqueID] [int] NOT NULL,
	[GoalText] [varchar](1000) NULL,
	[Ordinal] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [Goal_PK] PRIMARY KEY CLUSTERED 
(
	[GoalID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[Guideline]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[Guideline](
	[GuidelineID] [int] IDENTITY(1,1) NOT NULL,
	[GuidelineUniqueID] [int] NULL,
	[GuidelineTitle] [varchar](255) NULL,
	[ProductCode] [varchar](50) NULL,
	[Version] [varchar](50) NULL,
	[ContentOwner] [varchar](50) NULL,
	[Hsim] [varchar](50) NULL,
	[GuidelineCode] [varchar](50) NULL,
	[GuidelineType] [varchar](50) NULL,
	[ChronicCondition] [varchar](50) NULL,
	[GLOS] [varchar](100) NULL,
	[GuidelineXML] [xml] NULL,
	[GLOSXML] [xml] NULL,
	[GLOSMin] [int] NULL,
	[GLOSMax] [int] NULL,
	[GLOSType] [varchar](50) NULL,
	[VersionMajor] [int] NULL,
	[VersionMinor] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_Guideline] PRIMARY KEY CLUSTERED 
(
	[GuidelineID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [iCCG].[Guideline] ON
INSERT [iCCG].[Guideline] ([GuidelineID], [GuidelineUniqueID], [GuidelineTitle], [ProductCode], [Version], [ContentOwner], [Hsim], [GuidelineCode], [GuidelineType], [ChronicCondition], [GLOS], [GuidelineXML], [GLOSXML], [GLOSMin], [GLOSMax], [GLOSType], [VersionMajor], [VersionMinor], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (144, 0, N'Heart Failure', N'iCCG', N'16.0', N'GA', N'ICCG_MG_7', N'', N'assessment', N'True', N'', N'<sections><section Heading="Condition Monitoring" LogicType="1" Path="/Condition_Monitoring" DisplayOrder="1"><section Heading="Heart failure-self management" Path="/Condition_Monitoring/Heart_failure-self_management" DisplayOrder="1" /></section><section Heading="Patient Adherence" LogicType="1" Path="/Patient_Adherence" DisplayOrder="2" /><section Heading="Lifestyle Issues" LogicType="1" Path="/Lifestyle_Issues" DisplayOrder="3"><section Heading="Heart failure-alcohol use" Path="/Lifestyle_Issues/Heart_failure-alcohol_use" DisplayOrder="1" /><section Heading="Heart failure-exercise" Path="/Lifestyle_Issues/Heart_failure-exercise" DisplayOrder="2" /><section Heading="Heart failure-knowledge deficit" Path="/Lifestyle_Issues/Heart_failure-knowledge_deficit" DisplayOrder="3" /><section Heading="Heart failure-medication management" Path="/Lifestyle_Issues/Heart_failure-medication_management" DisplayOrder="4" /><section Heading="Heart failure-tobacco use" Path="/Lifestyle_Issues/Heart_failure-tobacco_use" DisplayOrder="5" /></section><section Heading="Follow Up" LogicType="1" Path="/Follow_Up" DisplayOrder="4" /></sections>', N'', -1, -1, N'', 16, 0, 0, NULL, 0, NULL, 0)
SET IDENTITY_INSERT [iCCG].[Guideline] OFF
/****** Object:  Table [iCCG].[Outcome]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[Outcome](
	[OutcomeID] [int] IDENTITY(1,1) NOT NULL,
	[OutcomeUniqueID] [int] NOT NULL,
	[OutcomeText] [varchar](1000) NULL,
	[Ordinal] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [Outcome_PK] PRIMARY KEY CLUSTERED 
(
	[OutcomeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[Note]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[Note](
	[NoteID] [int] IDENTITY(1,1) NOT NULL,
	[NoteType] [nchar](10) NULL,
	[ParentID] [int] NULL,
	[NoteText] [varchar](max) NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
 CONSTRAINT [PK_Note] PRIMARY KEY CLUSTERED 
(
	[NoteID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[Barrier]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[Barrier](
	[BarrierID] [int] IDENTITY(1,1) NOT NULL,
	[BarrierUniqueID] [int] NULL,
	[BarrierText] [varchar](1000) NULL,
	[Ordinal] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [Barrier_PK] PRIMARY KEY CLUSTERED 
(
	[BarrierID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[AppUser]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[AppUser](
	[UserID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[LoginName] [varchar](100) NOT NULL,
	[Password] [varchar](2048) NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](100) NOT NULL,
	[Email] [varchar](100) NULL,
	[ChangedPassword] [bit] NOT NULL,
	[LockDate] [datetime] NULL,
	[PasswordChangeDate] [datetime] NULL,
	[DeactivateDate] [datetime] NULL,
	[UnsuccessfulAttempts] [int] NOT NULL,
	[LastAttemptedDate] [datetime] NULL,
	[Active] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_AppUser] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_AppUser] UNIQUE NONCLUSTERED 
(
	[LoginName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[AnswerQuestionRef]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [iCCG].[AnswerQuestionRef](
	[AnswerQuestionRefID] [int] IDENTITY(1,1) NOT NULL,
	[AnswerUniqueID] [int] NOT NULL,
	[QuestionUniqueID] [int] NOT NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_AnswerQuestionRef] PRIMARY KEY CLUSTERED 
(
	[AnswerQuestionRefID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [iCCG].[AnswerProblemRef]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [iCCG].[AnswerProblemRef](
	[AnswerProblemRefID] [int] IDENTITY(1,1) NOT NULL,
	[AnswerUniqueID] [int] NOT NULL,
	[ProblemUniqueID] [int] NOT NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_AnswerProblemRef] PRIMARY KEY CLUSTERED 
(
	[AnswerProblemRefID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [iCCG].[AnswerProblemRef] ON
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3950, 3070, 7700, 0, CAST(0x00009EA00164C168 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3951, 3072, 7700, 0, CAST(0x00009EA00164C192 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3952, 3074, 7700, 0, CAST(0x00009EA00164C192 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3953, 3076, 7700, 0, CAST(0x00009EA00164C19C AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3954, 3078, 7700, 0, CAST(0x00009EA00164C19C AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3955, 3082, 7700, 0, CAST(0x00009EA00164C1A0 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3956, 3084, 7700, 0, CAST(0x00009EA00164C1A0 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3957, 3086, 7700, 0, CAST(0x00009EA00164C1A5 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3958, 3088, 7700, 0, CAST(0x00009EA00164C1A5 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3959, 3090, 7700, 0, CAST(0x00009EA00164C1AE AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3960, 3092, 7700, 0, CAST(0x00009EA00164C1AE AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3961, 3094, 7700, 0, CAST(0x00009EA00164C1B3 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3962, 3096, 7700, 0, CAST(0x00009EA00164C1B3 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3963, 3106, 7700, 0, CAST(0x00009EA00164C1B8 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3964, 3108, 7700, 0, CAST(0x00009EA00164C1BC AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3965, 3114, 7700, 0, CAST(0x00009EA00164C1BC AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3966, 3116, 7700, 0, CAST(0x00009EA00164C1C1 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3967, 3122, 7700, 0, CAST(0x00009EA00164C1C1 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3968, 3124, 7700, 0, CAST(0x00009EA00164C1C6 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3969, 3130, 7700, 0, CAST(0x00009EA00164C1C6 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3970, 3132, 7700, 0, CAST(0x00009EA00164C1CA AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3971, 3138, 7700, 0, CAST(0x00009EA00164C1CA AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3972, 3140, 7700, 0, CAST(0x00009EA00164C1CF AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3973, 3146, 7700, 0, CAST(0x00009EA00164C1CF AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3974, 3148, 7700, 0, CAST(0x00009EA00164C1D4 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3975, 3154, 7700, 0, CAST(0x00009EA00164C1D4 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3976, 3156, 7700, 0, CAST(0x00009EA00164C1D8 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3977, 2852, 7790, 0, CAST(0x00009EA00164C22D AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3978, 2854, 7790, 0, CAST(0x00009EA00164C231 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3979, 10, 7826, 0, CAST(0x00009EA00164C23F AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3980, 14, 7826, 0, CAST(0x00009EA00164C252 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3981, 16, 7826, 0, CAST(0x00009EA00164C257 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3982, 2990, 7948, 0, CAST(0x00009EA00164C28F AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3983, 2992, 7948, 0, CAST(0x00009EA00164C28F AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3984, 2994, 7948, 0, CAST(0x00009EA00164C28F AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3985, 2996, 7948, 0, CAST(0x00009EA00164C294 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3986, 2998, 7948, 0, CAST(0x00009EA00164C294 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3987, 3000, 7948, 0, CAST(0x00009EA00164C294 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3988, 3002, 7948, 0, CAST(0x00009EA00164C294 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3989, 3006, 7948, 0, CAST(0x00009EA00164C294 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3990, 3010, 7948, 0, CAST(0x00009EA00164C298 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3991, 3014, 7948, 0, CAST(0x00009EA00164C298 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3992, 500, 8024, 0, CAST(0x00009EA00164C29D AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3993, 1298, 8024, 0, CAST(0x00009EA00164C2A2 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3994, 1300, 8024, 0, CAST(0x00009EA00164C2A2 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3995, 1302, 8024, 0, CAST(0x00009EA00164C2A2 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3996, 1304, 8024, 0, CAST(0x00009EA00164C2A6 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[AnswerProblemRef] ([AnswerProblemRefID], [AnswerUniqueID], [ProblemUniqueID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3997, 1306, 8024, 0, CAST(0x00009EA00164C2A6 AS DateTime), 0, NULL, 0)
SET IDENTITY_INSERT [iCCG].[AnswerProblemRef] OFF
/****** Object:  Table [iCCG].[RefSectionType]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[RefSectionType](
	[SectionTypeID] [int] IDENTITY(1,1) NOT NULL,
	[SectionTypeName] [varchar](50) NULL,
	[Ordinal] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_RefSectionType] PRIMARY KEY CLUSTERED 
(
	[SectionTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [iCCG].[RefSectionType] ON
INSERT [iCCG].[RefSectionType] ([SectionTypeID], [SectionTypeName], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (1, N'Normal', 1, 1, CAST(0x00009E9B00000000 AS DateTime), NULL, NULL, NULL)
INSERT [iCCG].[RefSectionType] ([SectionTypeID], [SectionTypeName], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (2, N'Enrollment', 2, 1, CAST(0x00009E9B00000000 AS DateTime), NULL, NULL, NULL)
INSERT [iCCG].[RefSectionType] ([SectionTypeID], [SectionTypeName], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3, N'Medication', 3, 1, CAST(0x00009E9B00000000 AS DateTime), NULL, NULL, NULL)
SET IDENTITY_INSERT [iCCG].[RefSectionType] OFF
/****** Object:  Table [iCCG].[RefRoute]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[RefRoute](
	[RouteID] [int] IDENTITY(1,1) NOT NULL,
	[RouteName] [varchar](15) NULL,
	[Ordinal] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_RefRoute] PRIMARY KEY CLUSTERED 
(
	[RouteID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[RefQuestionType]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[RefQuestionType](
	[QuestionTypeID] [int] IDENTITY(1,1) NOT NULL,
	[QuestionTypeName] [varchar](50) NULL,
	[Description] [varchar](255) NULL,
	[Ordinal] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_RefQuestionType] PRIMARY KEY CLUSTERED 
(
	[QuestionTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [iCCG].[RefQuestionType] ON
INSERT [iCCG].[RefQuestionType] ([QuestionTypeID], [QuestionTypeName], [Description], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (1, N'SingleSelect', N'SingleSelect', 1, 1, CAST(0x00009E8D00000000 AS DateTime), NULL, NULL, NULL)
INSERT [iCCG].[RefQuestionType] ([QuestionTypeID], [QuestionTypeName], [Description], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (2, N'MultiSelect', N'MultiSelect', 2, 1, CAST(0x00009E8D00000000 AS DateTime), NULL, NULL, NULL)
INSERT [iCCG].[RefQuestionType] ([QuestionTypeID], [QuestionTypeName], [Description], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3, N'FreeText', N'FreeText', 3, 1, CAST(0x00009E8D00000000 AS DateTime), NULL, NULL, NULL)
SET IDENTITY_INSERT [iCCG].[RefQuestionType] OFF
/****** Object:  Table [iCCG].[RefQuestionLogicType]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[RefQuestionLogicType](
	[QuestionLogicTypeID] [int] IDENTITY(1,1) NOT NULL,
	[QuestionLogicTypeName] [varchar](50) NULL,
	[Ordinal] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_RefQuestionLogic] PRIMARY KEY CLUSTERED 
(
	[QuestionLogicTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[RefInterventionType]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[RefInterventionType](
	[InterventionTypeID] [int] IDENTITY(1,1) NOT NULL,
	[InterventionTypeName] [varchar](50) NULL,
	[Ordinal] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_RefInterventionType] PRIMARY KEY CLUSTERED 
(
	[InterventionTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[RefFrequency]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[RefFrequency](
	[FrequencyID] [int] IDENTITY(1,1) NOT NULL,
	[FrequencyName] [varchar](50) NULL,
	[Ordinal] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_RefFrequency] PRIMARY KEY CLUSTERED 
(
	[FrequencyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[RefDuration]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[RefDuration](
	[DurationID] [int] IDENTITY(1,1) NOT NULL,
	[DurationName] [varchar](50) NULL,
	[Ordinal] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_RefDuration] PRIMARY KEY CLUSTERED 
(
	[DurationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[RefClosureReason]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[RefClosureReason](
	[ClosureReasonID] [int] IDENTITY(1,1) NOT NULL,
	[ClosureReasonName] [varchar](255) NULL,
	[Ordinal] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_RefClosureReason] PRIMARY KEY CLUSTERED 
(
	[ClosureReasonID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[RefCaseStatusType]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[RefCaseStatusType](
	[CaseStatusTypeID] [int] IDENTITY(1,1) NOT NULL,
	[CaseStatusTypeName] [varchar](50) NULL,
	[Ordinal] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_RefCaseStatusType] PRIMARY KEY CLUSTERED 
(
	[CaseStatusTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[RefAnswerType]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[RefAnswerType](
	[AnswerTypeID] [int] IDENTITY(1,1) NOT NULL,
	[AnswerTypeName] [varchar](50) NULL,
	[Ordinal] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_RefAnswerType] PRIMARY KEY CLUSTERED 
(
	[AnswerTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [iCCG].[RefAnswerType] ON
INSERT [iCCG].[RefAnswerType] ([AnswerTypeID], [AnswerTypeName], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (1, N'Text', 1, 1, CAST(0x00009E8D00000000 AS DateTime), NULL, NULL, NULL)
INSERT [iCCG].[RefAnswerType] ([AnswerTypeID], [AnswerTypeName], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (2, N'Boolean', 2, 1, CAST(0x00009E8D00000000 AS DateTime), NULL, NULL, NULL)
INSERT [iCCG].[RefAnswerType] ([AnswerTypeID], [AnswerTypeName], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3, N'Date', 3, 1, CAST(0x00009E9100000000 AS DateTime), NULL, NULL, NULL)
SET IDENTITY_INSERT [iCCG].[RefAnswerType] OFF
/****** Object:  Table [iCCG].[Program]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[Program](
	[ProgramID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](255) NULL,
	[Ordinal] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_Program] PRIMARY KEY CLUSTERED 
(
	[ProgramID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [iCCG].[Program] ON
INSERT [iCCG].[Program] ([ProgramID], [Description], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (1, N'Healthy Heart', NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [iCCG].[Program] OFF
/****** Object:  Table [iCCG].[Problem]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[Problem](
	[ProblemID] [int] IDENTITY(1,1) NOT NULL,
	[ProblemUniqueID] [int] NULL,
	[ProblemText] [varchar](1000) NULL,
	[Ordinal] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [Problem_PK] PRIMARY KEY CLUSTERED 
(
	[ProblemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [iCCG].[Problem] ON
INSERT [iCCG].[Problem] ([ProblemID], [ProblemUniqueID], [ProblemText], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (568, 7700, N'Self management of heart failure', 0, 1, CAST(0x00009EA00164C0C4 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Problem] ([ProblemID], [ProblemUniqueID], [ProblemText], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (569, 7700, N'Self management of heart failure', 0, 1, CAST(0x00009EA00164C1D8 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Problem] ([ProblemID], [ProblemUniqueID], [ProblemText], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (570, 7790, N'Alcohol use: heart failure', 0, 1, CAST(0x00009EA00164C207 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Problem] ([ProblemID], [ProblemUniqueID], [ProblemText], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (571, 7826, N'Exercise: heart failure', 0, 1, CAST(0x00009EA00164C23B AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Problem] ([ProblemID], [ProblemUniqueID], [ProblemText], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (572, 7860, N'Knowledge deficits about heart failure', 0, 1, CAST(0x00009EA00164C25B AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Problem] ([ProblemID], [ProblemUniqueID], [ProblemText], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (573, 7948, N'Medication management: heart failure', 0, 1, CAST(0x00009EA00164C265 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Problem] ([ProblemID], [ProblemUniqueID], [ProblemText], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (574, 8024, N'Tobacco use', 0, 1, CAST(0x00009EA00164C29D AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Problem] ([ProblemID], [ProblemUniqueID], [ProblemText], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (575, 7790, N'Alcohol use: heart failure', 0, 1, CAST(0x00009EA00164C2B0 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Problem] ([ProblemID], [ProblemUniqueID], [ProblemText], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (576, 7826, N'Exercise: heart failure', 0, 1, CAST(0x00009EA00164C2B0 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Problem] ([ProblemID], [ProblemUniqueID], [ProblemText], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (577, 7860, N'Knowledge deficits about heart failure', 0, 1, CAST(0x00009EA00164C2B0 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Problem] ([ProblemID], [ProblemUniqueID], [ProblemText], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (578, 7948, N'Medication management: heart failure', 0, 1, CAST(0x00009EA00164C2B0 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Problem] ([ProblemID], [ProblemUniqueID], [ProblemText], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (579, 8024, N'Tobacco use', 0, 1, CAST(0x00009EA00164C2B0 AS DateTime), 0, NULL, 0)
SET IDENTITY_INSERT [iCCG].[Problem] OFF
/****** Object:  Table [iCCG].[Survey]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[Survey](
	[SurveyID] [int] IDENTITY(1,1) NOT NULL,
	[SurveyName] [varchar](50) NULL,
	[Ordinal] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_Survey] PRIMARY KEY CLUSTERED 
(
	[SurveyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [iCCG].[Survey] ON
INSERT [iCCG].[Survey] ([SurveyID], [SurveyName], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (2, N'Smoking', 1, 1, CAST(0x00009E9300000000 AS DateTime), NULL, NULL, NULL)
SET IDENTITY_INSERT [iCCG].[Survey] OFF
/****** Object:  Table [iCCG].[GoalBarrier]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [iCCG].[GoalBarrier](
	[GoalBarrierID] [int] IDENTITY(1,1) NOT NULL,
	[GoalID] [int] NOT NULL,
	[BarrierID] [int] NOT NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [GoalBarrier_PK] PRIMARY KEY CLUSTERED 
(
	[GoalBarrierID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [iCCG].[PatientMedicine]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[PatientMedicine](
	[PatientMedicineID] [int] IDENTITY(1,1) NOT NULL,
	[PatientID] [int] NULL,
	[MedicationName] [varchar](255) NULL,
	[Dose] [varchar](15) NULL,
	[RouteID] [int] NULL,
	[FrequencyID] [int] NULL,
	[Started] [datetime] NULL,
	[Discontinued] [datetime] NULL,
	[DurationID] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_PatientMedicine] PRIMARY KEY CLUSTERED 
(
	[PatientMedicineID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[Question]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[Question](
	[QuestionID] [int] IDENTITY(1,1) NOT NULL,
	[QuestionUniqueID] [int] NOT NULL,
	[QuestionText] [varchar](max) NULL,
	[CanPipe] [bit] NULL,
	[CanForward] [bit] NULL,
	[IsMandatory] [bit] NULL,
	[XmlID] [varchar](50) NULL,
	[XmlContent] [xml] NULL,
	[TypeID] [int] NULL,
	[Weight] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[QuestionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [iCCG].[Question] ON
INSERT [iCCG].[Question] ([QuestionID], [QuestionUniqueID], [QuestionText], [CanPipe], [CanForward], [IsMandatory], [XmlID], [XmlContent], [TypeID], [Weight], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (1397, 3068, N'Now let''s talk about symptoms of heart failure. Which of the following symptoms have you had within the past month?', 0, 0, 0, N'', N'', 1, 0, 1, CAST(0x00009EA00164C114 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Question] ([QuestionID], [QuestionUniqueID], [QuestionText], [CanPipe], [CanForward], [IsMandatory], [XmlID], [XmlContent], [TypeID], [Weight], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (1398, 3102, N'Do you know when to call the doctor for changes in your symptoms?', 0, 0, 0, N'', N'', 2, 0, 1, CAST(0x00009EA00164C1B8 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Question] ([QuestionID], [QuestionUniqueID], [QuestionText], [CanPipe], [CanForward], [IsMandatory], [XmlID], [XmlContent], [TypeID], [Weight], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (1399, 3110, N'Do you follow a low salt diet?', 0, 0, 0, N'', N'', 2, 0, 1, CAST(0x00009EA00164C1BC AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Question] ([QuestionID], [QuestionUniqueID], [QuestionText], [CanPipe], [CanForward], [IsMandatory], [XmlID], [XmlContent], [TypeID], [Weight], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (1400, 3118, N'Do you restrict the amount of liquids that you eat and drink?', 0, 0, 0, N'', N'', 2, 0, 1, CAST(0x00009EA00164C1C1 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Question] ([QuestionID], [QuestionUniqueID], [QuestionText], [CanPipe], [CanForward], [IsMandatory], [XmlID], [XmlContent], [TypeID], [Weight], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (1401, 3126, N'Do you take diuretics (water pills) to help with heart failure symptoms?', 0, 0, 0, N'', N'', 2, 0, 1, CAST(0x00009EA00164C1C6 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Question] ([QuestionID], [QuestionUniqueID], [QuestionText], [CanPipe], [CanForward], [IsMandatory], [XmlID], [XmlContent], [TypeID], [Weight], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (1402, 3134, N'Do you weigh yourself daily?', 0, 0, 0, N'', N'', 2, 0, 1, CAST(0x00009EA00164C1CA AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Question] ([QuestionID], [QuestionUniqueID], [QuestionText], [CanPipe], [CanForward], [IsMandatory], [XmlID], [XmlContent], [TypeID], [Weight], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (1403, 3142, N'Do you know how much weight gain should trigger an action on your part?', 0, 0, 0, N'', N'', 2, 0, 1, CAST(0x00009EA00164C1CF AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Question] ([QuestionID], [QuestionUniqueID], [QuestionText], [CanPipe], [CanForward], [IsMandatory], [XmlID], [XmlContent], [TypeID], [Weight], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (1404, 3150, N'Having an action plan for heart failure means that you know what to do when heart failure symptoms get worse. Do you have an action plan for your heart failure symptoms?', 0, 0, 0, N'', N'', 2, 0, 1, CAST(0x00009EA00164C1D4 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Question] ([QuestionID], [QuestionUniqueID], [QuestionText], [CanPipe], [CanForward], [IsMandatory], [XmlID], [XmlContent], [TypeID], [Weight], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (1405, 2834, N'How often do you drink alcoholic beverages?', 0, 0, 0, N'', N'', 2, 0, 1, CAST(0x00009EA00164C20C AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Question] ([QuestionID], [QuestionUniqueID], [QuestionText], [CanPipe], [CanForward], [IsMandatory], [XmlID], [XmlContent], [TypeID], [Weight], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (1406, 2848, N'On a day that you have a drink of alcoholic beverage, how much do you drink?', 0, 0, 0, N'', N'', 2, 0, 1, CAST(0x00009EA00164C228 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Question] ([QuestionID], [QuestionUniqueID], [QuestionText], [CanPipe], [CanForward], [IsMandatory], [XmlID], [XmlContent], [TypeID], [Weight], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (1407, 6, N'How much do you exercise?', 0, 0, 0, N'', N'', 2, 0, 1, CAST(0x00009EA00164C23B AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Question] ([QuestionID], [QuestionUniqueID], [QuestionText], [CanPipe], [CanForward], [IsMandatory], [XmlID], [XmlContent], [TypeID], [Weight], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (1408, 2920, N'I would like to make sure that you have information about heart failure that will help you live better with this condition. Would you be interested in learning about heart failure, especially about its symptoms and treatment?', 0, 0, 0, N'', N'', 2, 0, 1, CAST(0x00009EA00164C25B AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Question] ([QuestionID], [QuestionUniqueID], [QuestionText], [CanPipe], [CanForward], [IsMandatory], [XmlID], [XmlContent], [TypeID], [Weight], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (1409, 2948, N'Do you take an ACE inhibitor drug for heart failure?', 0, 0, 0, N'', N'', 2, 0, 1, CAST(0x00009EA00164C265 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Question] ([QuestionID], [QuestionUniqueID], [QuestionText], [CanPipe], [CanForward], [IsMandatory], [XmlID], [XmlContent], [TypeID], [Weight], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (1410, 2956, N'Do you take an ARB drug for heart failure?', 0, 0, 0, N'', N'', 2, 0, 1, CAST(0x00009EA00164C277 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Question] ([QuestionID], [QuestionUniqueID], [QuestionText], [CanPipe], [CanForward], [IsMandatory], [XmlID], [XmlContent], [TypeID], [Weight], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (1411, 2964, N'Do you take hydralazine and a nitrate drug for heart failure?', 0, 0, 0, N'', N'', 2, 0, 1, CAST(0x00009EA00164C281 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Question] ([QuestionID], [QuestionUniqueID], [QuestionText], [CanPipe], [CanForward], [IsMandatory], [XmlID], [XmlContent], [TypeID], [Weight], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (1412, 2972, N'Do you take a beta blocker drug for heart failure?', 0, 0, 0, N'', N'', 2, 0, 1, CAST(0x00009EA00164C281 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Question] ([QuestionID], [QuestionUniqueID], [QuestionText], [CanPipe], [CanForward], [IsMandatory], [XmlID], [XmlContent], [TypeID], [Weight], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (1413, 2980, N'Do you take spironolactone or eplerenone for heart failure?', 0, 0, 0, N'', N'', 2, 0, 1, CAST(0x00009EA00164C28A AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Question] ([QuestionID], [QuestionUniqueID], [QuestionText], [CanPipe], [CanForward], [IsMandatory], [XmlID], [XmlContent], [TypeID], [Weight], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (1414, 2988, N'What side effects are you having from drugs for heart failure?', 0, 0, 0, N'', N'', 1, 0, 1, CAST(0x00009EA00164C28F AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Question] ([QuestionID], [QuestionUniqueID], [QuestionText], [CanPipe], [CanForward], [IsMandatory], [XmlID], [XmlContent], [TypeID], [Weight], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (1415, 3012, N'What other side effects are you having from drugs for heart failure?', 0, 0, 0, N'', N'', 3, 0, 1, CAST(0x00009EA00164C298 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Question] ([QuestionID], [QuestionUniqueID], [QuestionText], [CanPipe], [CanForward], [IsMandatory], [XmlID], [XmlContent], [TypeID], [Weight], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (1416, 496, N'Have you ever smoked tobacco or used tobacco products?', 0, 0, 0, N'', N'', 2, 0, 1, CAST(0x00009EA00164C29D AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Question] ([QuestionID], [QuestionUniqueID], [QuestionText], [CanPipe], [CanForward], [IsMandatory], [XmlID], [XmlContent], [TypeID], [Weight], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (1417, 1296, N'How much do you smoke?', 0, 0, 0, N'', N'', 2, 0, 1, CAST(0x00009EA00164C2A2 AS DateTime), 0, NULL, 0)
SET IDENTITY_INSERT [iCCG].[Question] OFF
/****** Object:  Table [iCCG].[ProgramGuideline]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [iCCG].[ProgramGuideline](
	[ProgramGuidelineID] [int] IDENTITY(1,1) NOT NULL,
	[ProgramID] [int] NULL,
	[GuidelineID] [int] NULL,
	[Ordinal] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_ProgramGuideline] PRIMARY KEY CLUSTERED 
(
	[ProgramGuidelineID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [iCCG].[QuestionAnswerSet]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [iCCG].[QuestionAnswerSet](
	[QuestionAnswerSetID] [int] IDENTITY(1,1) NOT NULL,
	[QuestionLogicID] [int] NULL,
	[TargetQuestionAnswerID] [int] NULL,
	[TargetSectionID] [int] NULL,
	[TargetProblemID] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_QuestionAnswerSet] PRIMARY KEY CLUSTERED 
(
	[QuestionAnswerSetID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [iCCG].[Case]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[Case](
	[CaseID] [int] IDENTITY(1,1) NOT NULL,
	[OriginalCaseNumber] [varchar](255) NULL,
	[PatientID] [int] NULL,
	[CaseOwnerID] [int] NULL,
	[ProviderID] [int] NULL,
	[TypeID] [int] NULL,
	[IdentifiedDate] [datetime] NULL,
	[OpenDate] [datetime] NULL,
	[CloseDate] [datetime] NULL,
	[ClosureReasonID] [int] NULL,
	[StatusID] [int] NULL,
	[Source] [varchar](255) NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_Case] PRIMARY KEY CLUSTERED 
(
	[CaseID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [iCCG].[Case] ON
INSERT [iCCG].[Case] ([CaseID], [OriginalCaseNumber], [PatientID], [CaseOwnerID], [ProviderID], [TypeID], [IdentifiedDate], [OpenDate], [CloseDate], [ClosureReasonID], [StatusID], [Source], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (2, N'0001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [iCCG].[Case] OFF
/****** Object:  Table [iCCG].[Answer]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[Answer](
	[AnswerID] [int] IDENTITY(1,1) NOT NULL,
	[AnswerUniqueID] [int] NOT NULL,
	[AnswerText] [varchar](max) NULL,
	[XmlID] [varchar](50) NULL,
	[XmlContent] [xml] NULL,
	[TypeID] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_Answer] PRIMARY KEY CLUSTERED 
(
	[AnswerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [iCCG].[Answer] ON
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6403, 3070, N'Increased fatigue', N'', N'', 2, 0, CAST(0x00009EA00164C15A AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6404, 3072, N'Decreased ability to climb stairs', N'', N'', 2, 0, CAST(0x00009EA00164C192 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6405, 3074, N'Decreased ability to walk a block', N'', N'', 2, 0, CAST(0x00009EA00164C192 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6406, 3076, N'Difficulty sleeping because of your breathing', N'', N'', 2, 0, CAST(0x00009EA00164C197 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6407, 3078, N'Need to sit up to sleep or you use more pillows than usual', N'', N'', 2, 0, CAST(0x00009EA00164C19C AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6408, 3080, N'Waking up at night with shortness of breath', N'', N'', 2, 0, CAST(0x00009EA00164C19C AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6409, 3082, N'Having your belt feel tighter', N'', N'', 2, 0, CAST(0x00009EA00164C1A0 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6410, 3084, N'Your belly seems more swollen', N'', N'', 2, 0, CAST(0x00009EA00164C1A0 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6411, 3086, N'Your clothes feel too small', N'', N'', 2, 0, CAST(0x00009EA00164C1A5 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6412, 3088, N'Your feet and ankles are swollen', N'', N'', 2, 0, CAST(0x00009EA00164C1A5 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6413, 3090, N'Your shoes become tight; or your shoe laces seem shorter.', N'', N'', 2, 0, CAST(0x00009EA00164C1AA AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6414, 3092, N'Fast, racing or irregular heart beats', N'', N'', 2, 0, CAST(0x00009EA00164C1AE AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6415, 3094, N'Dizziness', N'', N'', 2, 0, CAST(0x00009EA00164C1B3 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6416, 3096, N'Fainting', N'', N'', 2, 0, CAST(0x00009EA00164C1B3 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6417, 3098, N'None', N'', N'', 2, 0, CAST(0x00009EA00164C1B3 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6418, 3100, N'I don''t know/I''m not sure', N'', N'', 2, 0, CAST(0x00009EA00164C1B8 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6419, 3104, N'Yes', N'', N'', 2, 0, CAST(0x00009EA00164C1B8 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6420, 3106, N'No', N'', N'', 2, 0, CAST(0x00009EA00164C1B8 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6421, 3108, N'I don''t know/I''m not sure', N'', N'', 2, 0, CAST(0x00009EA00164C1BC AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6422, 3112, N'Yes', N'', N'', 2, 0, CAST(0x00009EA00164C1BC AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6423, 3114, N'No', N'', N'', 2, 0, CAST(0x00009EA00164C1BC AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6424, 3116, N'I don''t know/I''m not sure', N'', N'', 2, 0, CAST(0x00009EA00164C1C1 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6425, 3120, N'Yes', N'', N'', 2, 0, CAST(0x00009EA00164C1C1 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6426, 3122, N'No', N'', N'', 2, 0, CAST(0x00009EA00164C1C1 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6427, 3124, N'I don''t know/I''m not sure', N'', N'', 2, 0, CAST(0x00009EA00164C1C6 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6428, 3128, N'Yes', N'', N'', 2, 0, CAST(0x00009EA00164C1C6 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6429, 3130, N'No', N'', N'', 2, 0, CAST(0x00009EA00164C1C6 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6430, 3132, N'I don''t know/I''m not sure', N'', N'', 2, 0, CAST(0x00009EA00164C1CA AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6431, 3136, N'Yes', N'', N'', 2, 0, CAST(0x00009EA00164C1CA AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6432, 3138, N'No', N'', N'', 2, 0, CAST(0x00009EA00164C1CA AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6433, 3140, N'I don''t know/I''m not sure', N'', N'', 2, 0, CAST(0x00009EA00164C1CF AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6434, 3144, N'Yes', N'', N'', 2, 0, CAST(0x00009EA00164C1CF AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6435, 3146, N'No', N'', N'', 2, 0, CAST(0x00009EA00164C1CF AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6436, 3148, N'I don''t know/I''m not sure', N'', N'', 2, 0, CAST(0x00009EA00164C1D4 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6437, 3152, N'Yes', N'', N'', 2, 0, CAST(0x00009EA00164C1D4 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6438, 3154, N'No', N'', N'', 2, 0, CAST(0x00009EA00164C1D4 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6439, 3156, N'I don''t know/I''m not sure', N'', N'', 2, 0, CAST(0x00009EA00164C1D8 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6440, 2836, N'Never', N'', N'', 2, 0, CAST(0x00009EA00164C20C AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6441, 2838, N'Once a week or less often', N'', N'', 2, 0, CAST(0x00009EA00164C20C AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6442, 2840, N'Two to three times per week', N'', N'', 2, 0, CAST(0x00009EA00164C223 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6443, 2842, N'Four to five times per week', N'', N'', 2, 0, CAST(0x00009EA00164C223 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6444, 2844, N'Six to seven times per week', N'', N'', 2, 0, CAST(0x00009EA00164C223 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6445, 2846, N'Don''t know/uncertain', N'', N'', 2, 0, CAST(0x00009EA00164C228 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6446, 2850, N'One drink or less', N'', N'', 2, 0, CAST(0x00009EA00164C228 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6447, 2852, N'Two drinks', N'', N'', 2, 0, CAST(0x00009EA00164C22D AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6448, 2854, N'Three drinks or more', N'', N'', 2, 0, CAST(0x00009EA00164C231 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6449, 2856, N'Don''t know/uncertain', N'', N'', 2, 0, CAST(0x00009EA00164C231 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6450, 8, N'I exercise for at least 30 minutes a day, at least 5 times a week', N'', N'', 2, 0, CAST(0x00009EA00164C23F AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6451, 10, N'I exercise, but for less than 30 minutes a day 5 times a week', N'', N'', 2, 0, CAST(0x00009EA00164C23F AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6452, 12, N'I don''t exercise because my doctor has told me not to exercise', N'', N'', 2, 0, CAST(0x00009EA00164C24D AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6453, 14, N'I don''t exercise', N'', N'', 2, 0, CAST(0x00009EA00164C252 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6454, 16, N'I don''t know/I''m not sure', N'', N'', 2, 0, CAST(0x00009EA00164C252 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6455, 2922, N'Yes', N'', N'', 2, 0, CAST(0x00009EA00164C25B AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6456, 2924, N'No', N'', N'', 2, 0, CAST(0x00009EA00164C25B AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6457, 2926, N'I don''t know/I''m not sure', N'', N'', 2, 0, CAST(0x00009EA00164C25B AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6458, 2950, N'Yes', N'', N'', 2, 0, CAST(0x00009EA00164C265 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6459, 2952, N'No', N'', N'', 2, 0, CAST(0x00009EA00164C265 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6460, 2954, N'I don''t know/I''m not sure', N'', N'', 2, 0, CAST(0x00009EA00164C273 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6461, 2958, N'Yes', N'', N'', 2, 0, CAST(0x00009EA00164C277 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6462, 2960, N'No', N'', N'', 2, 0, CAST(0x00009EA00164C277 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6463, 2962, N'I don''t know/I''m not sure', N'', N'', 2, 0, CAST(0x00009EA00164C27C AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6464, 2966, N'Yes', N'', N'', 2, 0, CAST(0x00009EA00164C281 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6465, 2968, N'No', N'', N'', 2, 0, CAST(0x00009EA00164C281 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6466, 2970, N'I don''t know/I''m not sure', N'', N'', 2, 0, CAST(0x00009EA00164C281 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6467, 2974, N'Yes', N'', N'', 2, 0, CAST(0x00009EA00164C281 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6468, 2976, N'No', N'', N'', 2, 0, CAST(0x00009EA00164C286 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6469, 2978, N'I don''t know/I''m not sure', N'', N'', 2, 0, CAST(0x00009EA00164C28A AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6470, 2982, N'Yes', N'', N'', 2, 0, CAST(0x00009EA00164C28A AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6471, 2984, N'No', N'', N'', 2, 0, CAST(0x00009EA00164C28F AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6472, 2986, N'I don''t know/I''m not sure', N'', N'', 2, 0, CAST(0x00009EA00164C28F AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6473, 2990, N'I''m not taking any drugs for heart failure', N'', N'', 2, 0, CAST(0x00009EA00164C28F AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6474, 2992, N'Dizzy', N'', N'', 2, 0, CAST(0x00009EA00164C28F AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6475, 2994, N'Fainting', N'', N'', 2, 0, CAST(0x00009EA00164C28F AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6476, 2996, N'Tired', N'', N'', 2, 0, CAST(0x00009EA00164C294 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6477, 2998, N'Cough', N'', N'', 2, 0, CAST(0x00009EA00164C294 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6478, 3000, N'Swelling', N'', N'', 2, 0, CAST(0x00009EA00164C294 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6479, 3002, N'Wheezing', N'', N'', 2, 0, CAST(0x00009EA00164C294 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6480, 3004, N'Trouble breathing', N'', N'', 2, 0, CAST(0x00009EA00164C294 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6481, 3006, N'Other', N'', N'', 2, 0, CAST(0x00009EA00164C294 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6482, 3008, N'None', N'', N'', 2, 0, CAST(0x00009EA00164C298 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6483, 3010, N'I don''t know/I''m not sure', N'', N'', 2, 0, CAST(0x00009EA00164C298 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6484, 3014, N'Specify', N'', N'', 2, 0, CAST(0x00009EA00164C298 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6485, 498, N'Yes, currently', N'', N'', 2, 0, CAST(0x00009EA00164C29D AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6486, 500, N'Yes, not currently, but within the last year', N'', N'', 2, 0, CAST(0x00009EA00164C29D AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6487, 502, N'Yes, not currently, and not within the last year', N'', N'', 2, 0, CAST(0x00009EA00164C29D AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6488, 504, N'No', N'', N'', 2, 0, CAST(0x00009EA00164C2A2 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6489, 1298, N'2 packs a day or more', N'', N'', 2, 0, CAST(0x00009EA00164C2A2 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6490, 1300, N'More than 1 but less than 2 packs a day', N'', N'', 2, 0, CAST(0x00009EA00164C2A2 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6491, 1302, N'1 pack a day', N'', N'', 2, 0, CAST(0x00009EA00164C2A2 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6492, 1304, N'Less than 1 pack a day', N'', N'', 2, 0, CAST(0x00009EA00164C2A6 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6493, 1306, N'Don''t smoke, but use smokeless tobacco', N'', N'', 2, 0, CAST(0x00009EA00164C2A6 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[Answer] ([AnswerID], [AnswerUniqueID], [AnswerText], [XmlID], [XmlContent], [TypeID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6494, 1308, N'Don''t know/Not sure', N'', N'', 2, 0, CAST(0x00009EA00164C2AB AS DateTime), 0, NULL, 0)
SET IDENTITY_INSERT [iCCG].[Answer] OFF
/****** Object:  Table [iCCG].[Intervention]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[Intervention](
	[InterventionID] [int] IDENTITY(1,1) NOT NULL,
	[InterventionUniqueID] [int] NOT NULL,
	[TypeID] [int] NULL,
	[InterventionText] [varchar](1000) NULL,
	[Ordinal] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [Intervention_PK] PRIMARY KEY CLUSTERED 
(
	[InterventionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[GuidelineSection]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[GuidelineSection](
	[GuidelineSectionID] [int] IDENTITY(1,1) NOT NULL,
	[GuidelineID] [int] NULL,
	[ParentGuidelineSectionID] [int] NULL,
	[Heading] [varchar](255) NULL,
	[Ordinal] [int] NULL,
	[TypeID] [int] NULL,
	[SectionPath] [varchar](500) NULL,
	[SectionXml] [xml] NULL,
	[ContentOwner] [varchar](50) NULL,
	[ContentVersion] [varchar](50) NULL,
	[ProductCode] [varchar](50) NULL,
	[Hsim] [varchar](50) NULL,
	[ProgressionPeriod] [varchar](50) NULL,
	[ProgressionBehavior] [varchar](50) NULL,
	[VersionMajor] [int] NULL,
	[VersionMinor] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_GuidelineSection] PRIMARY KEY CLUSTERED 
(
	[GuidelineSectionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [iCCG].[GuidelineSection] ON
INSERT [iCCG].[GuidelineSection] ([GuidelineSectionID], [GuidelineID], [ParentGuidelineSectionID], [Heading], [Ordinal], [TypeID], [SectionPath], [SectionXml], [ContentOwner], [ContentVersion], [ProductCode], [Hsim], [ProgressionPeriod], [ProgressionBehavior], [VersionMajor], [VersionMinor], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (569, 144, 0, N'Condition Monitoring', 1, 1, N'/Condition_Monitoring', N'<heading>Condition Monitoring</heading><guideline-sect3 hsim="iccg_031" uid="7608" role="Assessment"><heading>Heart failure-self management</heading><question uid="3068"><para>Now let''s talk about symptoms of heart failure. Which of the following symptoms have you had within the past month?</para><answer uid="3070"><para>Increased fatigue</para><problemref targetuid="7700" /></answer><answer uid="3072"><para>Decreased ability to climb stairs</para><problemref targetuid="7700" /></answer><answer uid="3074"><para>Decreased ability to walk a block</para><problemref targetuid="7700" /></answer><answer uid="3076"><para>Difficulty sleeping because of your breathing</para><problemref targetuid="7700" /></answer><answer uid="3078"><para>Need to sit up to sleep or you use more pillows than usual</para><problemref targetuid="7700" /></answer><answer uid="3080"><para>Waking up at night with shortness of breath</para></answer><answer uid="3082"><para>Having your belt feel tighter</para><problemref targetuid="7700" /></answer><answer uid="3084"><para>Your belly seems more swollen</para><problemref targetuid="7700" /></answer><answer uid="3086"><para>Your clothes feel too small</para><problemref targetuid="7700" /></answer><answer uid="3088"><para>Your feet and ankles are swollen</para><problemref targetuid="7700" /></answer><answer uid="3090"><para>Your shoes become tight; or your shoe laces seem shorter.</para><problemref targetuid="7700" /></answer><answer uid="3092"><para>Fast, racing or irregular heart beats</para><problemref targetuid="7700" /></answer><answer uid="3094"><para>Dizziness</para><problemref targetuid="7700" /></answer><answer uid="3096"><para>Fainting</para><problemref targetuid="7700" /></answer><answer uid="3098"><para>None</para></answer><answer uid="3100"><para>I don''t know/I''m not sure</para></answer></question><question uid="3102" type="single"><para>Do you know when to call the doctor for changes in your symptoms?</para><answer uid="3104"><para>Yes</para></answer><answer uid="3106"><para>No</para><problemref targetuid="7700" /></answer><answer uid="3108"><para>I don''t know/I''m not sure</para><problemref targetuid="7700" /></answer></question><question uid="3110" type="single"><para>Do you follow a low salt diet?</para><answer uid="3112"><para>Yes</para></answer><answer uid="3114"><para>No</para><problemref targetuid="7700" /></answer><answer uid="3116"><para>I don''t know/I''m not sure</para><problemref targetuid="7700" /></answer></question><question uid="3118" type="single"><para>Do you restrict the amount of liquids that you eat and drink?</para><note type="help">Foods such as popsicles, applesauce, ice cream, soup, puddings, and gelatin are considered liquids.</note><answer uid="3120"><para>Yes</para></answer><answer uid="3122"><para>No</para><problemref targetuid="7700" /></answer><answer uid="3124"><para>I don''t know/I''m not sure</para><problemref targetuid="7700" /></answer></question><question uid="3126" type="single"><para>Do you take diuretics (water pills) to help with heart failure symptoms?</para><note type="help">If needed, prompt patient with names of commonly-used diuretics: bumetanide, furosemide, torsemide, chlorthalidone, hydrochlorothiazide, indapamide, metolazone.</note><answer uid="3128"><para>Yes</para></answer><answer uid="3130"><para>No</para><problemref targetuid="7700" /></answer><answer uid="3132"><para>I don''t know/I''m not sure</para><problemref targetuid="7700" /></answer></question><question uid="3134" type="single"><para>Do you weigh yourself daily?</para><answer uid="3136"><para>Yes</para></answer><answer uid="3138"><para>No</para><problemref targetuid="7700" /></answer><answer uid="3140"><para>I don''t know/I''m not sure</para><problemref targetuid="7700" /></answer></question><question uid="3142" type="single"><para>Do you know how much weight gain should trigger an action on your part?</para><answer uid="3144"><para>Yes</para></answer><answer uid="3146"><para>No</para><problemref targetuid="7700" /></answer><answer uid="3148"><para>I don''t know/I''m not sure</para><problemref targetuid="7700" /></answer></question><question uid="3150" type="single"><para>Having an action plan for heart failure means that you know what to do when heart failure symptoms get worse. Do you have an action plan for your heart failure symptoms?</para><answer uid="3152"><para>Yes</para></answer><answer uid="3154"><para>No</para><problemref targetuid="7700" /></answer><answer uid="3156"><para>I don''t know/I''m not sure</para><problemref targetuid="7700" /></answer></question><problem uid="7700"><para>Self management of heart failure</para><goal uid="7702"><para>Improve self-monitoring and reporting of heart failure symptoms</para><intervention uid="7704" type="educate"><para>Instruct patient on symptoms of worsening heart failure. Symptoms of fluid in the lungs include decreased ability to perform activities of daily living, increasing fatigue, decreased ability to climb stairs, decreased ability to walk a block, difficulty sleeping because of your breathing; need to sit up to sleep or you use more pillows than usual, waking up at night with shortness of breath. Symptoms of fluid buildup in other parts of the body include having your belt feel tighter, your belly seems more swollen, your clothes don''t fit as well, your feet and ankles become swollen, your shoes become tight; or your shoe laces seem shorter. Heart symptoms palpitations, fast or irregular heart beats, or the feeling of a racing heart that makes you feel dizzy or lightheaded; or you feel like you may pass out. These symptoms should be reported to your doctor.</para></intervention><intervention uid="7706" type="educate"><para>Instruct patient about importance of weighing themselves on a daily basis. Monitoring weight is important because weight is one way to tell if your heart function is worsening or your medications are working to reduce excess body fluid. Fluid retention can be a sign of worsening heart failure or a sign that medications need to be adjusted. Daily weight monitoring includes: establishing "dry weight" based on home scale readings; weighing at the same time each day, using same scale, generally in morning after urinating, but before breakfast; establishing a realistic weight goal; maintaining weight within narrow limits; and keeping a daily weight log. Heart failure patients should report weight gain of 2 pounds (0.9 kg) overnight or 5 pounds (2.3 kg) in a week).</para></intervention><intervention uid="7708"><para>Ensure that patient has access to a scale. If no scale in the household, encourage purchase. If patient cannot afford a scale, help find resources to help patient pay for a scale or help find a place that will allow patient to use a scale for daily weights.</para></intervention><intervention uid="7710" type="send"><para><ulink url="pted_395.htm">Be ready to talk to the doctor - Heart failure</ulink></para></intervention><intervention uid="7712" type="send"><para><ulink url="pted_242.htm">When to call the doctor - Heart failure</ulink></para></intervention><intervention uid="7714"><para /></intervention><outcome uid="7716"><para>Goal met</para></outcome><outcome uid="7718"><para>Goal not met</para></outcome></goal><goal uid="7720" type="long-term"><para>Achieve and maintain normal volume status</para><note type="evidence">The ACC/AHA and other guidelines recommend limiting sodium and fluid intake in patients with symptomatic heart failure.<citation db_id="53393" linkend="cit_iccg_031_001" />This will increase the effectiveness of diuretic therapy and result in fewer hospitalizations for decompensated heart failure. Salt-retaining medications, such as NSAIDs, should be avoided.<citation db_id="68630" linkend="cit_iccg_031_002" />The DASH diet, used for hypertension, combines sodium restriction with other heart-healthy dietary components.<citation db_id="31789" linkend="cit_iccg_031_003" /><citation db_id="70238" linkend="cit_iccg_031_004" />Loop diuretics are used to control volume overload, maintain a stable weight, and improve the functional capacity of patients with NYHA class II through IV heart failure. They do not prevent progression of heart failure or help maintain clinical stability. There has been no assessment of long-term safety or effect on mortality of loop diuretics in heart failure.<citation db_id="68630" linkend="cit_iccg_031_002" />For most patients with evidence of or a history of fluid retention, diuretics should be taken until an euvolemic state is achieved and should be continued to prevent the recurrence of fluid retention. Loop diuretics are generally combined with moderate dietary sodium restriction (3 to 4 gm per day).<citation db_id="53393" linkend="cit_iccg_031_001" />Careful monitoring and early response to changes in volume status appear to be the most important aspects of care for advanced heart failure.<citation db_id="3337" cl="cl_c_4" display_value="1" linkend="cit_iccg_031_005" /></note><intervention uid="7722"><para>Facilitate contact with primary provider to determine ideal weight, to determine need for sodium restriction, to determine if salt substitutes may be used, and to determine need for fluid restriction.</para></intervention><intervention uid="7724"><para>Facilitate appointment with dietician to help manage sodium and fluid intake.</para></intervention><intervention uid="7726" type="educate"><para>Instruct patient on DASH diet, which includes sodium limitation and 6 to 8 servings of grains and grain products daily; 4 to 5 servings each of vegetables and fruits daily; 2 to 3 servings of fat-free or low-fat milk and other dairy products daily; 6 or fewer servings of lean meats, poultry, and fish daily; 4 to 5 servings of nuts, seeds, and dry beans weekly; 2 to 3 servings of fats and oils daily; and 5 or fewer servings of sweets weekly.</para></intervention><intervention uid="7728" type="educate"><para>Instruct patient on how to read food labels. Patients should know that information is listed per serving, not per total contents of package (packages often contains more than 1 serving); calories, especially from fat, should be limited if patient is overweight; two servings double amount of calories, fat, and sodium; and the form of food has an impact on nutrition (eg, increased sugar content of orange juice versus 1 orange).<citation db_id="63728" linkend="cit_iccg_031_006" /></para></intervention><intervention uid="7730" type="educate"><para>Instruct patient on self-monitoring of sodium.<citation db_id="34545" linkend="cit_iccg_031_007" /><citation db_id="71346" linkend="cit_iccg_031_008" />Sodium limitation (eg,<unit>2300 mg</unit>or less per day) recommendations include decreasing intake of sodium-containing foods<citation db_id="29006" linkend="cit_iccg_031_009" />; increasing intake of low-sodium foods; rinsing canned vegetables, beans, and shellfish; avoiding the addition of salt to food while cooking or eating; and removing the salt shaker from the table. Sodium-containing foods include milk, cheese, eggs, meat, fish, poultry, beets, carrots, celery, spinach, chard, seasoned salts, baking powder and soda, table salt, and processed foods with salt added.<citation db_id="29006" linkend="cit_iccg_031_009" />Low-sodium foods include fresh, frozen, or "no salt added" canned vegetables; fresh poultry, fish, and meat; rice, pasta, and hot cereals cooked without salt; "no salt added" foods; low-sodium or reduced-sodium foods; and shredded wheat. Tips for improving the taste of food and for eating out: Use low-or no-salt herbs, spices, or seasoning mixes to help make foods take better. Use seasonings like black, cayenne, or lemon pepper; dried and fresh herbs, such as garlic, garlic or onion powder, dill, parsley, or rosemary Try sprinkling lemon juice over vegetables or salads. Season or marinade meat, poultry, and fish with your favorite herbs or with onion or garlic. Get a low-salt cookbook or recipes from the library, bookstore, or internet Choose foods naturally low in sodium, such as fresh, frozen, or "no salt added" canned vegetables; fresh poultry, fish, and meat; rice, pasta, and hot cereals cooked without salt; "no salt added" foods; low- or reduced-sodium foods; and shredded wheat. For eating out, try the following tips: choose restaurants that serve fresh foods. Avoid breaded foods. Don''t be afraid to request that your food be prepared without added salt, monosodium glutamate, or soy sauce. Choose foods without sauces or ask for sauce and salad dressing on the side. Limit use of condiments that are high in salt, such as Worcestershire sauce, steak sauce, or ketchup. Avoid dishes with the name au gratin, parmesan, hashed, Newburg, casserole, and Devonshire. Choose a salad bar when possible, but be attentive to salt content of certain items, such as dressings, croutons, macaroni salads.</para></intervention><intervention uid="7732" type="educate"><para>Instruct on self-monitoring of fluid intake. This may include keeping a record of daily fluid intake until patient feels at ease with fluid restriction and can figure out fluid intake without measuring liquids. One way to keep track of fluid intake is to have patient fill a 2-quart pitcher or 2-liter soda bottle to the top with water and place it in an accessible place in the kitchen. Every time patient drinks or eats something that is considered a fluid, remove the same amount of water from the pitcher or bottle. When the pitcher or bottle is empty, patient has had limit of fluids for the day. Record urine output, as recommended by provider. Recording urine output will help ensure not taking in more fluids than expected. Patient may also directly measure fluid intake. You will need to learn the number of cc''s or ml''s in common servings. Examples of commonly used measurements include coffee cup equals 200 cc; clear glass equals 240 cc; milk carton equals 240 cc; small milk carton equals 120 cc; juice, gelatin or ice cream cup equals 120 cc; soup bowl equals 160 cc; and popsicle half equals 40 cc. Some foods are considered fluid foods (eg, pudding, gelatin, all soups, popsicles, ice cream).</para></intervention><intervention uid="7734" type="educate"><para>Effects and side effects of loop diuretics. The most common side effects of loop diuretics are electrolyte and fluid depletion, hypotension, and less commonly, rashes and hearing difficulties. Depletion of potassium or magnesium can predispose patients to cardiac arrhythmias, particularly if patient is also taking digitalis therapy. Electrolyte depletion is enhanced if the patient is taking 2 diuretics in combination. Patients may require potassium or magnesium supplements. If there are no signs of fluid retention, hypotension may be related to volume depletion and may resolve with a reduction in diuretic dose. The presence of fluid retention, hypotension, and azotemia likely reflect worsening heart failure and should be evaluated. Rashes and hearing difficulties are generally only seen with the use of large doses of diuretics or are related to individual hypersensitivities. See<ulink url="dsc00029.htm">Loop Diuretics</ulink>for further information.</para></intervention><intervention uid="7736" type="educate"><para>Diet for diuretic-induced hypokalemia. If patient is hypokalemic secondary to loop diuretics, encourage consumption of potassium-containing foods. Potassium sources include: potatoes, yogurt, leafy green vegetables, beans, whole grains (eg, oatmeal, bran), poultry, fish products, bananas, citrus fruits, and salt substitutes.</para></intervention><intervention uid="7738" type="send"><para><ulink url="pted_433.htm">Watch your salt and sodium intake</ulink></para></intervention><intervention uid="7740" type="send"><para><ulink url="pted_626.htm">Watch your fluids - Heart failure</ulink></para></intervention><intervention uid="7742" type="send"><para><ulink url="pted_731.htm">Diuretics</ulink></para></intervention><outcome uid="7744"><para>Goal met</para></outcome><outcome uid="7746"><para>Goal not met</para></outcome></goal><goal uid="7748"><para>Develop and implement action plan for heart failure</para><note>Developing and adhering to a self-management plan is an important component of disease management for heart failure.<citation db_id="46809" linkend="cit_iccg_031_010" /><citation db_id="40916" linkend="cit_iccg_031_011" /><citation db_id="63667" linkend="cit_iccg_031_012" /><citation db_id="68630" linkend="cit_iccg_031_002" /></note><intervention uid="7750"><para>Facilitate the creation of a self-monitoring and management plan between patient and provider. The self monitoring and management plan should include: what to do if weight increases or decreases significantly or if there are changes in patient''s condition. A self monitoring and management plan often includes making changes in the dose of diuretic if the weight increases or decreases beyond a specified range.</para></intervention><intervention uid="7752" type="educate"><para>Components of a self-management plan include what to do when heart failure symptoms worsen. An example of a self-management plan may include eliminating 500 mg (about 1/4 tsp) of sodium from the diet for two days (today and tomorrow) and decrease fluid intake by 360 cc (1 and 1/2 cups) for two days (today and tomorrow). If you do not notice a decrease in body fluid or a decrease in weight after restricting sodium and fluid for two days, follow your flexible diuretic plan or if you don''t have a plan, call your doctor or nurse. Your medications may need to be adjusted.</para></intervention><intervention uid="7754" type="send"><para><ulink url="pted_624.htm">Daily care plan - Heart failure</ulink></para></intervention><outcome uid="7756"><para>Goal met</para></outcome><outcome uid="7758"><para>Goal not met</para></outcome></goal></problem></guideline-sect3>', N'GA', N'16.0', N'iCCG', N'ICCG_MG_7', N'', N'', 16, 0, 1, CAST(0x00009EA00164C070 AS DateTime), 1, NULL, 0)
INSERT [iCCG].[GuidelineSection] ([GuidelineSectionID], [GuidelineID], [ParentGuidelineSectionID], [Heading], [Ordinal], [TypeID], [SectionPath], [SectionXml], [ContentOwner], [ContentVersion], [ProductCode], [Hsim], [ProgressionPeriod], [ProgressionBehavior], [VersionMajor], [VersionMinor], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (570, 144, 569, N'Heart failure-self management', 2, 1, N'/Condition_Monitoring/Heart_failure-self_management', N'<heading>Heart failure-self management</heading><question uid="3068"><para>Now let''s talk about symptoms of heart failure. Which of the following symptoms have you had within the past month?</para><answer uid="3070"><para>Increased fatigue</para><problemref targetuid="7700" /></answer><answer uid="3072"><para>Decreased ability to climb stairs</para><problemref targetuid="7700" /></answer><answer uid="3074"><para>Decreased ability to walk a block</para><problemref targetuid="7700" /></answer><answer uid="3076"><para>Difficulty sleeping because of your breathing</para><problemref targetuid="7700" /></answer><answer uid="3078"><para>Need to sit up to sleep or you use more pillows than usual</para><problemref targetuid="7700" /></answer><answer uid="3080"><para>Waking up at night with shortness of breath</para></answer><answer uid="3082"><para>Having your belt feel tighter</para><problemref targetuid="7700" /></answer><answer uid="3084"><para>Your belly seems more swollen</para><problemref targetuid="7700" /></answer><answer uid="3086"><para>Your clothes feel too small</para><problemref targetuid="7700" /></answer><answer uid="3088"><para>Your feet and ankles are swollen</para><problemref targetuid="7700" /></answer><answer uid="3090"><para>Your shoes become tight; or your shoe laces seem shorter.</para><problemref targetuid="7700" /></answer><answer uid="3092"><para>Fast, racing or irregular heart beats</para><problemref targetuid="7700" /></answer><answer uid="3094"><para>Dizziness</para><problemref targetuid="7700" /></answer><answer uid="3096"><para>Fainting</para><problemref targetuid="7700" /></answer><answer uid="3098"><para>None</para></answer><answer uid="3100"><para>I don''t know/I''m not sure</para></answer></question><question uid="3102" type="single"><para>Do you know when to call the doctor for changes in your symptoms?</para><answer uid="3104"><para>Yes</para></answer><answer uid="3106"><para>No</para><problemref targetuid="7700" /></answer><answer uid="3108"><para>I don''t know/I''m not sure</para><problemref targetuid="7700" /></answer></question><question uid="3110" type="single"><para>Do you follow a low salt diet?</para><answer uid="3112"><para>Yes</para></answer><answer uid="3114"><para>No</para><problemref targetuid="7700" /></answer><answer uid="3116"><para>I don''t know/I''m not sure</para><problemref targetuid="7700" /></answer></question><question uid="3118" type="single"><para>Do you restrict the amount of liquids that you eat and drink?</para><note type="help">Foods such as popsicles, applesauce, ice cream, soup, puddings, and gelatin are considered liquids.</note><answer uid="3120"><para>Yes</para></answer><answer uid="3122"><para>No</para><problemref targetuid="7700" /></answer><answer uid="3124"><para>I don''t know/I''m not sure</para><problemref targetuid="7700" /></answer></question><question uid="3126" type="single"><para>Do you take diuretics (water pills) to help with heart failure symptoms?</para><note type="help">If needed, prompt patient with names of commonly-used diuretics: bumetanide, furosemide, torsemide, chlorthalidone, hydrochlorothiazide, indapamide, metolazone.</note><answer uid="3128"><para>Yes</para></answer><answer uid="3130"><para>No</para><problemref targetuid="7700" /></answer><answer uid="3132"><para>I don''t know/I''m not sure</para><problemref targetuid="7700" /></answer></question><question uid="3134" type="single"><para>Do you weigh yourself daily?</para><answer uid="3136"><para>Yes</para></answer><answer uid="3138"><para>No</para><problemref targetuid="7700" /></answer><answer uid="3140"><para>I don''t know/I''m not sure</para><problemref targetuid="7700" /></answer></question><question uid="3142" type="single"><para>Do you know how much weight gain should trigger an action on your part?</para><answer uid="3144"><para>Yes</para></answer><answer uid="3146"><para>No</para><problemref targetuid="7700" /></answer><answer uid="3148"><para>I don''t know/I''m not sure</para><problemref targetuid="7700" /></answer></question><question uid="3150" type="single"><para>Having an action plan for heart failure means that you know what to do when heart failure symptoms get worse. Do you have an action plan for your heart failure symptoms?</para><answer uid="3152"><para>Yes</para></answer><answer uid="3154"><para>No</para><problemref targetuid="7700" /></answer><answer uid="3156"><para>I don''t know/I''m not sure</para><problemref targetuid="7700" /></answer></question><problem uid="7700"><para>Self management of heart failure</para><goal uid="7702"><para>Improve self-monitoring and reporting of heart failure symptoms</para><intervention uid="7704" type="educate"><para>Instruct patient on symptoms of worsening heart failure. Symptoms of fluid in the lungs include decreased ability to perform activities of daily living, increasing fatigue, decreased ability to climb stairs, decreased ability to walk a block, difficulty sleeping because of your breathing; need to sit up to sleep or you use more pillows than usual, waking up at night with shortness of breath. Symptoms of fluid buildup in other parts of the body include having your belt feel tighter, your belly seems more swollen, your clothes don''t fit as well, your feet and ankles become swollen, your shoes become tight; or your shoe laces seem shorter. Heart symptoms palpitations, fast or irregular heart beats, or the feeling of a racing heart that makes you feel dizzy or lightheaded; or you feel like you may pass out. These symptoms should be reported to your doctor.</para></intervention><intervention uid="7706" type="educate"><para>Instruct patient about importance of weighing themselves on a daily basis. Monitoring weight is important because weight is one way to tell if your heart function is worsening or your medications are working to reduce excess body fluid. Fluid retention can be a sign of worsening heart failure or a sign that medications need to be adjusted. Daily weight monitoring includes: establishing "dry weight" based on home scale readings; weighing at the same time each day, using same scale, generally in morning after urinating, but before breakfast; establishing a realistic weight goal; maintaining weight within narrow limits; and keeping a daily weight log. Heart failure patients should report weight gain of 2 pounds (0.9 kg) overnight or 5 pounds (2.3 kg) in a week).</para></intervention><intervention uid="7708"><para>Ensure that patient has access to a scale. If no scale in the household, encourage purchase. If patient cannot afford a scale, help find resources to help patient pay for a scale or help find a place that will allow patient to use a scale for daily weights.</para></intervention><intervention uid="7710" type="send"><para><ulink url="pted_395.htm">Be ready to talk to the doctor - Heart failure</ulink></para></intervention><intervention uid="7712" type="send"><para><ulink url="pted_242.htm">When to call the doctor - Heart failure</ulink></para></intervention><intervention uid="7714"><para /></intervention><outcome uid="7716"><para>Goal met</para></outcome><outcome uid="7718"><para>Goal not met</para></outcome></goal><goal uid="7720" type="long-term"><para>Achieve and maintain normal volume status</para><note type="evidence">The ACC/AHA and other guidelines recommend limiting sodium and fluid intake in patients with symptomatic heart failure.<citation db_id="53393" linkend="cit_iccg_031_001" />This will increase the effectiveness of diuretic therapy and result in fewer hospitalizations for decompensated heart failure. Salt-retaining medications, such as NSAIDs, should be avoided.<citation db_id="68630" linkend="cit_iccg_031_002" />The DASH diet, used for hypertension, combines sodium restriction with other heart-healthy dietary components.<citation db_id="31789" linkend="cit_iccg_031_003" /><citation db_id="70238" linkend="cit_iccg_031_004" />Loop diuretics are used to control volume overload, maintain a stable weight, and improve the functional capacity of patients with NYHA class II through IV heart failure. They do not prevent progression of heart failure or help maintain clinical stability. There has been no assessment of long-term safety or effect on mortality of loop diuretics in heart failure.<citation db_id="68630" linkend="cit_iccg_031_002" />For most patients with evidence of or a history of fluid retention, diuretics should be taken until an euvolemic state is achieved and should be continued to prevent the recurrence of fluid retention. Loop diuretics are generally combined with moderate dietary sodium restriction (3 to 4 gm per day).<citation db_id="53393" linkend="cit_iccg_031_001" />Careful monitoring and early response to changes in volume status appear to be the most important aspects of care for advanced heart failure.<citation db_id="3337" cl="cl_c_4" display_value="1" linkend="cit_iccg_031_005" /></note><intervention uid="7722"><para>Facilitate contact with primary provider to determine ideal weight, to determine need for sodium restriction, to determine if salt substitutes may be used, and to determine need for fluid restriction.</para></intervention><intervention uid="7724"><para>Facilitate appointment with dietician to help manage sodium and fluid intake.</para></intervention><intervention uid="7726" type="educate"><para>Instruct patient on DASH diet, which includes sodium limitation and 6 to 8 servings of grains and grain products daily; 4 to 5 servings each of vegetables and fruits daily; 2 to 3 servings of fat-free or low-fat milk and other dairy products daily; 6 or fewer servings of lean meats, poultry, and fish daily; 4 to 5 servings of nuts, seeds, and dry beans weekly; 2 to 3 servings of fats and oils daily; and 5 or fewer servings of sweets weekly.</para></intervention><intervention uid="7728" type="educate"><para>Instruct patient on how to read food labels. Patients should know that information is listed per serving, not per total contents of package (packages often contains more than 1 serving); calories, especially from fat, should be limited if patient is overweight; two servings double amount of calories, fat, and sodium; and the form of food has an impact on nutrition (eg, increased sugar content of orange juice versus 1 orange).<citation db_id="63728" linkend="cit_iccg_031_006" /></para></intervention><intervention uid="7730" type="educate"><para>Instruct patient on self-monitoring of sodium.<citation db_id="34545" linkend="cit_iccg_031_007" /><citation db_id="71346" linkend="cit_iccg_031_008" />Sodium limitation (eg,<unit>2300 mg</unit>or less per day) recommendations include decreasing intake of sodium-containing foods<citation db_id="29006" linkend="cit_iccg_031_009" />; increasing intake of low-sodium foods; rinsing canned vegetables, beans, and shellfish; avoiding the addition of salt to food while cooking or eating; and removing the salt shaker from the table. Sodium-containing foods include milk, cheese, eggs, meat, fish, poultry, beets, carrots, celery, spinach, chard, seasoned salts, baking powder and soda, table salt, and processed foods with salt added.<citation db_id="29006" linkend="cit_iccg_031_009" />Low-sodium foods include fresh, frozen, or "no salt added" canned vegetables; fresh poultry, fish, and meat; rice, pasta, and hot cereals cooked without salt; "no salt added" foods; low-sodium or reduced-sodium foods; and shredded wheat. Tips for improving the taste of food and for eating out: Use low-or no-salt herbs, spices, or seasoning mixes to help make foods take better. Use seasonings like black, cayenne, or lemon pepper; dried and fresh herbs, such as garlic, garlic or onion powder, dill, parsley, or rosemary Try sprinkling lemon juice over vegetables or salads. Season or marinade meat, poultry, and fish with your favorite herbs or with onion or garlic. Get a low-salt cookbook or recipes from the library, bookstore, or internet Choose foods naturally low in sodium, such as fresh, frozen, or "no salt added" canned vegetables; fresh poultry, fish, and meat; rice, pasta, and hot cereals cooked without salt; "no salt added" foods; low- or reduced-sodium foods; and shredded wheat. For eating out, try the following tips: choose restaurants that serve fresh foods. Avoid breaded foods. Don''t be afraid to request that your food be prepared without added salt, monosodium glutamate, or soy sauce. Choose foods without sauces or ask for sauce and salad dressing on the side. Limit use of condiments that are high in salt, such as Worcestershire sauce, steak sauce, or ketchup. Avoid dishes with the name au gratin, parmesan, hashed, Newburg, casserole, and Devonshire. Choose a salad bar when possible, but be attentive to salt content of certain items, such as dressings, croutons, macaroni salads.</para></intervention><intervention uid="7732" type="educate"><para>Instruct on self-monitoring of fluid intake. This may include keeping a record of daily fluid intake until patient feels at ease with fluid restriction and can figure out fluid intake without measuring liquids. One way to keep track of fluid intake is to have patient fill a 2-quart pitcher or 2-liter soda bottle to the top with water and place it in an accessible place in the kitchen. Every time patient drinks or eats something that is considered a fluid, remove the same amount of water from the pitcher or bottle. When the pitcher or bottle is empty, patient has had limit of fluids for the day. Record urine output, as recommended by provider. Recording urine output will help ensure not taking in more fluids than expected. Patient may also directly measure fluid intake. You will need to learn the number of cc''s or ml''s in common servings. Examples of commonly used measurements include coffee cup equals 200 cc; clear glass equals 240 cc; milk carton equals 240 cc; small milk carton equals 120 cc; juice, gelatin or ice cream cup equals 120 cc; soup bowl equals 160 cc; and popsicle half equals 40 cc. Some foods are considered fluid foods (eg, pudding, gelatin, all soups, popsicles, ice cream).</para></intervention><intervention uid="7734" type="educate"><para>Effects and side effects of loop diuretics. The most common side effects of loop diuretics are electrolyte and fluid depletion, hypotension, and less commonly, rashes and hearing difficulties. Depletion of potassium or magnesium can predispose patients to cardiac arrhythmias, particularly if patient is also taking digitalis therapy. Electrolyte depletion is enhanced if the patient is taking 2 diuretics in combination. Patients may require potassium or magnesium supplements. If there are no signs of fluid retention, hypotension may be related to volume depletion and may resolve with a reduction in diuretic dose. The presence of fluid retention, hypotension, and azotemia likely reflect worsening heart failure and should be evaluated. Rashes and hearing difficulties are generally only seen with the use of large doses of diuretics or are related to individual hypersensitivities. See<ulink url="dsc00029.htm">Loop Diuretics</ulink>for further information.</para></intervention><intervention uid="7736" type="educate"><para>Diet for diuretic-induced hypokalemia. If patient is hypokalemic secondary to loop diuretics, encourage consumption of potassium-containing foods. Potassium sources include: potatoes, yogurt, leafy green vegetables, beans, whole grains (eg, oatmeal, bran), poultry, fish products, bananas, citrus fruits, and salt substitutes.</para></intervention><intervention uid="7738" type="send"><para><ulink url="pted_433.htm">Watch your salt and sodium intake</ulink></para></intervention><intervention uid="7740" type="send"><para><ulink url="pted_626.htm">Watch your fluids - Heart failure</ulink></para></intervention><intervention uid="7742" type="send"><para><ulink url="pted_731.htm">Diuretics</ulink></para></intervention><outcome uid="7744"><para>Goal met</para></outcome><outcome uid="7746"><para>Goal not met</para></outcome></goal><goal uid="7748"><para>Develop and implement action plan for heart failure</para><note>Developing and adhering to a self-management plan is an important component of disease management for heart failure.<citation db_id="46809" linkend="cit_iccg_031_010" /><citation db_id="40916" linkend="cit_iccg_031_011" /><citation db_id="63667" linkend="cit_iccg_031_012" /><citation db_id="68630" linkend="cit_iccg_031_002" /></note><intervention uid="7750"><para>Facilitate the creation of a self-monitoring and management plan between patient and provider. The self monitoring and management plan should include: what to do if weight increases or decreases significantly or if there are changes in patient''s condition. A self monitoring and management plan often includes making changes in the dose of diuretic if the weight increases or decreases beyond a specified range.</para></intervention><intervention uid="7752" type="educate"><para>Components of a self-management plan include what to do when heart failure symptoms worsen. An example of a self-management plan may include eliminating 500 mg (about 1/4 tsp) of sodium from the diet for two days (today and tomorrow) and decrease fluid intake by 360 cc (1 and 1/2 cups) for two days (today and tomorrow). If you do not notice a decrease in body fluid or a decrease in weight after restricting sodium and fluid for two days, follow your flexible diuretic plan or if you don''t have a plan, call your doctor or nurse. Your medications may need to be adjusted.</para></intervention><intervention uid="7754" type="send"><para><ulink url="pted_624.htm">Daily care plan - Heart failure</ulink></para></intervention><outcome uid="7756"><para>Goal met</para></outcome><outcome uid="7758"><para>Goal not met</para></outcome></goal></problem>', N'GA', N'16.0', N'iCCG', N'ICCG_MG_7', N'', N'', 16, 0, 1, CAST(0x00009EA00164C0B6 AS DateTime), 1, NULL, 0)
INSERT [iCCG].[GuidelineSection] ([GuidelineSectionID], [GuidelineID], [ParentGuidelineSectionID], [Heading], [Ordinal], [TypeID], [SectionPath], [SectionXml], [ContentOwner], [ContentVersion], [ProductCode], [Hsim], [ProgressionPeriod], [ProgressionBehavior], [VersionMajor], [VersionMinor], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (571, 144, 0, N'Patient Adherence', 3, 1, N'/Patient_Adherence', N'<heading>Patient Adherence</heading>', N'GA', N'16.0', N'iCCG', N'ICCG_MG_7', N'', N'', 16, 0, 1, CAST(0x00009EA00164C1F0 AS DateTime), 1, NULL, 0)
INSERT [iCCG].[GuidelineSection] ([GuidelineSectionID], [GuidelineID], [ParentGuidelineSectionID], [Heading], [Ordinal], [TypeID], [SectionPath], [SectionXml], [ContentOwner], [ContentVersion], [ProductCode], [Hsim], [ProgressionPeriod], [ProgressionBehavior], [VersionMajor], [VersionMinor], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (572, 144, 0, N'Lifestyle Issues', 4, 1, N'/Lifestyle_Issues', N'<heading>Lifestyle Issues</heading><guideline-sect3 hsim="iccg_034" uid="7764" role="Assessment"><heading>Heart failure-alcohol use</heading><question uid="2834" type="single"><para>How often do you drink alcoholic beverages?</para><answer uid="2836"><para>Never</para></answer><answer uid="2838"><para>Once a week or less often</para><questionref targetuid="2848" /></answer><answer uid="2840"><para>Two to three times per week</para><questionref targetuid="2848" /></answer><answer uid="2842"><para>Four to five times per week</para><questionref targetuid="2848" /></answer><answer uid="2844"><para>Six to seven times per week</para><questionref targetuid="2848" /></answer><answer uid="2846"><para>Don''t know/uncertain</para></answer></question><question uid="2848" type="single"><para>On a day that you have a drink of alcoholic beverage, how much do you drink?</para><note type="help">Count beer and wine, as well as spirits. A serving of beer is....and so forth and so on.</note><answer uid="2850"><para>One drink or less</para></answer><answer uid="2852"><para>Two drinks</para><problemref targetuid="7790" /></answer><answer uid="2854"><para>Three drinks or more</para><problemref targetuid="7790" /></answer><answer uid="2856"><para>Don''t know/uncertain</para></answer></question><problem uid="7790"><para>Alcohol use: heart failure</para><note>Careful history of current use of alcohol should be obtained at each visit of a patient with heart failure.<citation db_id="53393" linkend="cit_iccg_034_001" />Patients with a history of alcohol abuse or with current substantial routine alcohol consumption and new-onset heart failure without other obvious cause should be counseled to become abstinent.<citation db_id="53393" linkend="cit_iccg_034_001" />Many heart failure programs limit alcoholic beverage consumption to no more than 1 alcoholic beverage serving daily for all patients with LV dysfunction, regardless of cause.<citation db_id="53393" linkend="cit_iccg_034_001" /></note><goal uid="7792"><para>Limit alcoholic beverage consumption to no more than 1 serving daily</para><intervention uid="7794" type="educate"><para>Explain limits of alcohol use for patients with heart failure.</para></intervention><intervention uid="7796" type="educate"><para>Alcohol cessation strategies</para></intervention><intervention uid="7798"><para>Facilitate patient''s joining support group or participating in alcohol abstinence programs (eg, Alcoholics Anonymous).</para></intervention><intervention uid="7800" type="educate"><para>Drugs for alcohol abstinence:<ulink url="dsc00102.htm">Alcohol Deterrents</ulink></para></intervention><intervention uid="7802" type="send"><para><ulink url="pted_641.htm">Websites - Substance abuse</ulink></para></intervention><outcome uid="7804"><para>Goal met</para></outcome><outcome uid="7806"><para>Goal not met</para></outcome></goal></problem></guideline-sect3><guideline-sect3 hsim="iccg_032" uid="7812" role="Assessment"><heading>Heart failure-exercise</heading><question uid="6" type="single"><para>How much do you exercise?</para><answer uid="8"><para>I exercise for at least 30 minutes a day, at least 5 times a week</para></answer><answer uid="10"><para>I exercise, but for less than 30 minutes a day 5 times a week</para><problemref targetuid="7826" /></answer><answer uid="12"><para>I don''t exercise because my doctor has told me not to exercise</para></answer><answer uid="14"><para>I don''t exercise</para><problemref targetuid="7826" /></answer><answer uid="16"><para>I don''t know/I''m not sure</para><problemref targetuid="7826" /></answer></question><problem uid="7826"><para>Exercise: heart failure</para><note type="evidence">ACC/AHA guidelines recommend exercise training as an adjunctive approach to improve clinical status in ambulatory patients with current or prior symptoms of heart failure and reduced LVEF.<citation db_id="53393" linkend="cit_iccg_032_001" />Several controlled trials have shown that exercise training can lessen symptoms, increase exercise capacity, and improve the quality of life of patients with chronic heart failure. The improvement was comparable to that achieved with pharmacological interventions, and was in addition to the benefits of ACE inhibitors and beta blockers.<citation db_id="53393" linkend="cit_iccg_032_001" />Except during periods of acute exacerbation of heart failure or in patients with suspected myocarditis, physical activity should be encouraged because restriction of activity promotes physical deconditioning, which may adversely affect clinical status and contribute to the exercise intolerance of patients with heart failure.<citation db_id="53393" linkend="cit_iccg_032_001" />An aerobic exercise program should meet a patient''s functional capacity.<citation db_id="68630" linkend="cit_iccg_032_002" />Lifestyle modifications should be emphasized with any exercise program.<citation db_id="68630" linkend="cit_iccg_032_002" />If heart failure worsens or evidence of exercise-induced ischemia is apparent, exercise should be stopped until an evaluation is performed and any adjustments to therapy have been initiated.<citation db_id="68630" linkend="cit_iccg_032_002" />Most patients with heart failure should not participate in heavy labor or exhaustive sports.<citation db_id="53393" linkend="cit_iccg_032_001" /></note><goal uid="7828" type="long-term"><para>Start and maintain exercise program</para><intervention uid="7830"><para>Finding out about insurance benefits available for cardiac rehabilitation or other formal exercise program</para></intervention><intervention uid="7832" type="educate"><para>Benefits of exercise for heart failure</para></intervention><intervention uid="7834"><para>Supervised (eg, cardiac rehabilitation for high-risk patients) or home-based exercise program</para></intervention><intervention uid="7836" type="educate"><para>Instruct patient how to self-monitor heart rate (pulse). Self-monitoring of heart rate includes establishing a safe heart rate for exercising with your physician or through cardiac rehabilitation; check pulse at least once daily; and recording how many beats per minute, whether rhythm is regular or irregular, and if any stops or pauses occur.</para></intervention><intervention uid="7838" type="educate"><para>Instruct patient on how to safely increase activity. Methods include increasing activity as tolerated, alternating brief activities with periods of rest; avoiding high-intensity sports like basketball, competitive swimming, diving, rowing, competitive cycling, jogging, and wrestling, until cleared by physician; and returning to driving or regular activity after medical clearance.</para></intervention><intervention uid="7840" type="send"><para><ulink url="pted_603.htm">Exercising when you have heart disease</ulink></para></intervention><outcome uid="7842"><para>Goal met</para></outcome><outcome uid="7844"><para>Goal not met</para></outcome></goal></problem></guideline-sect3><guideline-sect3 hsim="iccg_029" uid="7850" role="Assessment"><heading>Heart failure-knowledge deficit</heading><question uid="2920" type="single"><para>I would like to make sure that you have information about heart failure that will help you live better with this condition. Would you be interested in learning about heart failure, especially about its symptoms and treatment?</para><answer uid="2922"><para>Yes</para></answer><answer uid="2924"><para>No</para></answer><answer uid="2926"><para>I don''t know/I''m not sure</para></answer></question><problem uid="7860"><para>Knowledge deficits about heart failure</para><note>New York Heart Association classification of heart failure severity depends on the degree of effort needed to elicit symptoms: Patients may have symptoms of heart failure at rest (class IV), on less-than-ordinary exertion (class III), on ordinary exertion (class II), or only at levels of exertion that would limit normal individuals (class I).<citation db_id="3337" cl="cl_c_1" display_value="1" linkend="cit_iccg_029_001" /><citation db_id="68630" linkend="cit_iccg_029_002" /></note><goal uid="7862"><para>Improve patient''s understanding of heart failure, linking disease, symptoms, and treatment</para><intervention uid="7864" type="educate"><para>Heart failure means that the heart muscle is weak and cannot pump blood the way it should. It means that the heart is not pumping enough blood to the body. Because the heart can''t pump properly, there can be buildup of fluids in various parts of the body. Buildup in the feet, ankles, and legs is called edema. Buildup of fluids in the lungs makes you short of breath and tired. The most common causes of heart failure are coronary artery disease (blockage of the arteries that bring blood to the heart muscle), hypertension (high blood pressure), heart valve disease, and primary disease of the heart muscle (cardiomyopathy). Cardiomyopathy can be related to drinking too much alcohol, to pregnancy, to a viral infection, to medication, or for unknown reasons. Treatment of heart failure means treating its cause and using medicines to make it easier for the heart to pump blood. Some cases may need treatment with a special kind of pacemaker or, ultimately, a heart transplant.</para></intervention><intervention uid="7866" type="send"><para><ulink url="pted_652.htm">What you need to know - Heart failure</ulink></para></intervention><intervention uid="7868" type="educate"><para>Internet resources for additional information:<website>http://www.nlm.nih.gov/medlineplus/heartfailure.html</website>;<website>http://www.americanheart.org/presenter.jhtml?identifier=4585</website>;<website>http://www.nhlbi.nih.gov/health/dci/Diseases/Hf/HF_WhatIs.html</website></para></intervention><outcome uid="7870"><para>Goal met</para></outcome><outcome uid="7872"><para>Goal not met</para></outcome></goal></problem></guideline-sect3><guideline-sect3 hsim="iccg_030" uid="7878" role="Assessment"><heading>Heart failure-medication management</heading><question uid="2948" type="single"><para>Do you take an ACE inhibitor drug for heart failure?</para><note type="help">ACE inhibitors include benazepril, captopril, enalapril, fosinopril, lisinopril, moexipril, perindopril, quinapril, ramipril, and trandolapril.</note><answer uid="2950"><para>Yes</para></answer><answer uid="2952"><para>No</para></answer><answer uid="2954"><para>I don''t know/I''m not sure</para></answer></question><question uid="2956" type="single"><para>Do you take an ARB drug for heart failure?</para><note type="help">ARBs include candesartan, eprosartan, irbesartan, losartan, olmesartan, telmisartan, and valsartan.</note><answer uid="2958"><para>Yes</para></answer><answer uid="2960"><para>No</para></answer><answer uid="2962"><para>I don''t know/I''m not sure</para></answer></question><question uid="2964" type="single"><para>Do you take hydralazine and a nitrate drug for heart failure?</para><note type="help">Long-acting nitrate drugs include isosorbide dinitrate oral, isosorbide mononitrate extended release, nitroglycerin ointment, nitroglycerin patch, nitroglycerin spray, and nitroglycerin sustained release.</note><answer uid="2966"><para>Yes</para></answer><answer uid="2968"><para>No</para></answer><answer uid="2970"><para>I don''t know/I''m not sure</para></answer></question><question uid="2972" type="single"><para>Do you take a beta blocker drug for heart failure?</para><note type="help">Beta blockers include acebutolol, atenolol, betaxolol, bisoprolol, carvedilol, labetalol, metoprolol, nadolol, penbutolol, pindolol, propranolol, and timolol.</note><answer uid="2974"><para>Yes</para></answer><answer uid="2976"><para>No</para></answer><answer uid="2978"><para>I don''t know/I''m not sure</para></answer></question><question uid="2980" type="single"><para>Do you take spironolactone or eplerenone for heart failure?</para><answer uid="2982"><para>Yes</para></answer><answer uid="2984"><para>No</para></answer><answer uid="2986"><para>I don''t know/I''m not sure</para></answer></question><question uid="2988"><para>What side effects are you having from drugs for heart failure?</para><note type="help">Check all that apply.</note><answer uid="2990"><para>I''m not taking any drugs for heart failure</para><problemref targetuid="7948" /></answer><answer uid="2992"><para>Dizzy</para><problemref targetuid="7948" /></answer><answer uid="2994"><para>Fainting</para><problemref targetuid="7948" /></answer><answer uid="2996"><para>Tired</para><problemref targetuid="7948" /></answer><answer uid="2998"><para>Cough</para><problemref targetuid="7948" /></answer><answer uid="3000"><para>Swelling</para><problemref targetuid="7948" /></answer><answer uid="3002"><para>Wheezing</para><problemref targetuid="7948" /></answer><answer uid="3004"><para>Trouble breathing</para><questionref targetuid="3012" /></answer><answer uid="3006"><para>Other</para><problemref targetuid="7948" /></answer><answer uid="3008"><para>None</para></answer><answer uid="3010"><para>I don''t know/I''m not sure</para><problemref targetuid="7948" /></answer></question><question uid="3012" type="DEvalue"><para>What other side effects are you having from drugs for heart failure?</para><answer uid="3014"><para>Specify</para><problemref targetuid="7948" /></answer></question><problem uid="7948"><para>Medication management: heart failure</para><note type="evidence">In a randomized trial of nurse-led disease management, working with the doctor to optimize medical therapy led to an increase in the number of patients on medications consistent with guidelines.<citation db_id="21077" linkend="cit_iccg_030_001" />A disease management guideline recommends patient education on the indications and use for each medication. Target behaviors include adherence to the dosing schedule for each medications and what to do if a dose is missed.<citation db_id="46809" linkend="cit_iccg_030_002" /></note><goal uid="7950" type="long-term"><para>Patient initiates and maintains treatment with vasodilator</para><note type="evidence">Angiotensin-converting enzyme (ACE) inhibitors are vasodilators that improve survival and quality of life for patients with heart failure.<citation db_id="68630" linkend="cit_iccg_030_003" />ACE inhibitors have been shown to reduce the risk of death and the combined risk of death or hospitalization.<citation db_id="68630" linkend="cit_iccg_030_003" /><citation db_id="53393" linkend="cit_iccg_030_004" />All patients with heart failure should receive ACE inhibitors, unless contraindicated or not tolerated<citation db_id="53393" linkend="cit_iccg_030_004" />An angiotensin-receptor blocker (ARB) may be used in patients who have intolerable side effects from ACE inhibitors.<citation db_id="68630" linkend="cit_iccg_030_003" />Hydralazine plus a long-acting nitrate is used for vasodilation in patients who cannot tolerate either ACE inhibitors or ARBs. This combination has been shown to increase survival and decrease hospitalization in African Americans with heart failure.<citation db_id="9570" linkend="cit_iccg_030_005" /><citation db_id="26108" linkend="cit_iccg_030_006" /></note><intervention uid="7952" type="coordinate"><para>Work with patient and doctor to have patient receive vasodilator drug (ACE inhibitor, ARB, and/or hydralazine-nitrate).</para></intervention><intervention uid="7954" type="educate"><para>Effects and side effects of ACE inhibitors. An ACE inhibitor is started at a low dose that is titrated upwards over several weeks, with BP monitoring, to the patient''s tolerance. Hypotension and dizziness are the most common side effects of ACE inhibitor treatment of heart failure. As long as the patient does not have postural symptoms, dizziness or syncope, the systolic BP can been as low as<unit>80 mm Hg</unit>. Cough is the most common reason for withdrawing ACE-inhibitor therapy. A patients with cough is usually considered for a rechallenge with a different ACE-inhibitor or the use of an ARB. The patient taking an ACE inhibitor will have monitoring of serum electrolytes, creatinine, and BUN, as hyperkalemia and worsening kidney function are serious side effects. Angioedema is not a common side effect but can be life-threatening and may justify avoidance of all ACE-inhibitors for the lifetime of the patient. See<ulink url="pted_500.htm">ACE inhibitors</ulink>for further information.</para></intervention><intervention uid="7956" type="send"><para><ulink url="pted_500.htm">ACE inhibitors</ulink></para></intervention><intervention uid="7958" type="educate"><para>Effects and side effects of ARBs. An ARB may be added to ACE inhibitor treatment or may be used if the patient is intolerant to ACE inhibitors. As with ACE inhibitor treatment, the patient taking an ACE inhibitor will have monitoring of serum electrolytes, creatinine, and BUN, as hyperkalemia and worsening kidney function are serious side effects. See<ulink url="pted_501.htm">Angiotensin receptor blockers (ARBs)</ulink></para></intervention><intervention uid="7960" type="send"><para><ulink url="pted_501.htm">Angiotensin receptor blockers (ARBs)</ulink></para></intervention><intervention uid="7962" type="educate"><para>Effects and side effects of vasodilators. A patient who is intolerant to both ACE inhibitors and ARBs may receive combination therapy with hydralazine and a long-acting nitrate for vasodilation. The combination may also be added to other vasodilator medication treatment. As with other vasodilators, they may cause hypotension. A patient taking hydralazine is monitored with tests for lupus, as the drug may cause the condition. See<ulink url="dsc00034.htm">Vasodilators</ulink>and<ulink url="dsc00031.htm">Nitrates</ulink></para></intervention><intervention uid="7964" type="educate"><para>Remind patient of basic reason for taking vasodilator, reinforce vasodilator dosing schedule, and explain what to do if a dose is missed.</para></intervention><outcome uid="7966"><para>Goal met</para></outcome><outcome uid="7968"><para>Goal not met</para></outcome></goal><goal uid="7970" type="long-term"><para>Patient initiates and maintains treatment with beta blocker</para><note type="evidence">Long-term treatment with beta blockers can decrease symptoms of heart failure, improve clinical status of patients, and enhance patient''s sense of well-being. Beta blockers have been shown to reduce the risk of death and the combined risk of death or hospitalization.<citation db_id="53393" linkend="cit_iccg_030_004" />All patients with stable heart failure due to reduced left ventricular ejection fraction should receive a beta blocker unless contraindicated or not tolerated.<citation db_id="53393" linkend="cit_iccg_030_004" /></note><intervention uid="7972"><para>Work with patient and doctor to have patient receive beta blocker.</para></intervention><intervention uid="7974" type="educate"><para>Effects and side effects of beta blockers. Initiation of beta blocker therapy can cause fluid retention that is usually asymptomatic and detected primarily by an increase in body weight. Increasing diuretic therapy often allows patients to remain on long-term beta blocker therapy. Treatment with a beta blocker can cause fatigue or weakness. These symptoms will often resolve in several weeks with no change in beta blocker therapy. For some patients, beta blocker therapy will need to be reduced or withdrawn to eliminate symptoms. Reinitiation of beta blocker therapy at a later time or with a different beta blocker may be successful. If bradycardia is accompanied by dizziness or lightheadedness or if second- or third-degree heart block occurs, the dose of beta blocker should be decreased. Hypotension may produce symptoms of dizziness, lightheadedness, or blurred vision. For some beta blockers (eg, those that block alpha receptors, such as carvedilol), vasodilatory side effects generally subside within 48 hours of the first dose or first increment in dose. See<ulink url="pted_506.htm">Beta blockers</ulink></para></intervention><intervention uid="7976" type="educate"><para>Remind patient of basic reason for taking beta blocker, reinforce beta blocker dosing schedule, and explain what to do if a dose is missed.</para></intervention><intervention uid="7978" type="send"><para><ulink url="pted_506.htm">Beta blockers</ulink></para></intervention><outcome uid="7980"><para>Goal met</para></outcome><outcome uid="7982"><para>Goal not met</para></outcome></goal><goal uid="7984" type="long-term"><para>Patient initiates and maintains treatment with aldosterone antagonist</para><note type="evidence">Spironolactone has been shown to decrease mortality compared with placebo in patients with NYHA Class III to Class IV heart failure receiving other appropriate treatment.<citation db_id="2432" linkend="cit_iccg_030_007" />Eplerenone decreases mortality in patients with an ejection fraction of less than 40% following a myocardial infarction.<citation db_id="10680" linkend="cit_iccg_030_008" /></note><intervention uid="7986" type="educate"><para>Effects and side effects of aldosterone antagonists. Spironolactone or eplerenone may be used in low doses in patients who have severely symptomatic heart failure despite other appropriate treatment. They may contribute to hyperkalemia, especially when used with an ACE inhibitor or ARB. Spironolactone can cause painful gynecomastia in men. See<ulink url="dsc00032.htm">Nonloop Diuretics</ulink></para></intervention><intervention uid="7988" type="educate"><para>Remind patient of basic reason for taking aldosterone antagonist, reinforce aldosterone antagonist dosing schedule, and explain what to do if a dose is missed.</para></intervention><outcome uid="7990"><para>Goal met</para></outcome><outcome uid="7992"><para>Goal not met</para></outcome></goal></problem></guideline-sect3><guideline-sect3 hsim="iccg_033" uid="7998" role="Assessment"><heading>Heart failure-tobacco use</heading><question uid="496" type="single"><para>Have you ever smoked tobacco or used tobacco products?</para><note type="help">Record use of smokeless tobacco, such as chewing tobacco or use of snuff as Yes.</note><answer uid="498"><para>Yes, currently</para><questionref targetuid="1296" /></answer><answer uid="500"><para>Yes, not currently, but within the last year</para><problemref targetuid="8024" /></answer><answer uid="502"><para>Yes, not currently, and not within the last year</para></answer><answer uid="504"><para>No</para></answer></question><question uid="1296" type="single"><para>How much do you smoke?</para><answer uid="1298"><para>2 packs a day or more</para><problemref targetuid="8024" /></answer><answer uid="1300"><para>More than 1 but less than 2 packs a day</para><problemref targetuid="8024" /></answer><answer uid="1302"><para>1 pack a day</para><problemref targetuid="8024" /></answer><answer uid="1304"><para>Less than 1 pack a day</para><problemref targetuid="8024" /></answer><answer uid="1306"><para>Don''t smoke, but use smokeless tobacco</para><problemref targetuid="8024" /></answer><answer uid="1308"><para>Don''t know/Not sure</para></answer></question><problem uid="8024"><para>Tobacco use</para><note type="evidence">Careful history of current use of tobacco should be obtained at each visit of a patient with heart failure.<citation db_id="53393" linkend="cit_iccg_033_001" /></note><note>Smoking cessation includes guidance on patient''s willingness to quit, counseling to develop plan to quit, encouraging patient''s family members to quit, and education for patient and family about dangers of environmental tobacco smoke.<citation db_id="17625" linkend="cit_iccg_033_002" /></note><goal uid="8026"><para>Begin tobacco cessation program</para><intervention uid="8028" type="educate"><para>Tobacco cessation</para></intervention><intervention uid="8030"><para>Arrange discussion with physician about the use of nicotine replacement therapy or medications to help quit smoking.</para></intervention><intervention uid="8032"><para>Facilitate patient''s joining support group of ex-smokers or participating in stop-smoking programs (eg, American Cancer Society, American Lung Association).</para></intervention><intervention uid="8034" type="educate"><para>Smoking cessation strategies</para><note>Strategies to quit smoking include keeping the reason to quit in mind and staying motivated; choosing a firm date to quit and marking it on your calendar; avoiding times that may be stressful or situations that are associated with smoking; telling friends, family, and coworkers of intent to quit so they can offer support; avoiding places where people congregate to smoke; anticipating withdrawal symptoms (eg, cigarette cravings, anxiety, irritability, restlessness), which usually peak at 1 to 3 weeks after quitting, but generally wane; eating a healthy diet and staying active to help with stress and minimize weight gain; understanding the risks to family associated with exposure to second-hand smoke; and attending smoking cessation programs available in your area.<citation db_id="19411" linkend="cit_iccg_033_003" /></note></intervention><intervention uid="8036" type="educate"><para>Nicotine smoking cessation aids:<ulink url="dsc00099.htm">Nicotine Smoking Cessation Aids</ulink></para></intervention><intervention uid="8038" type="educate"><para>Nonnicotine smoking cessation aids:<ulink url="dsc00100.htm">Nonnicotine Smoking Cessation Aids</ulink></para></intervention><intervention uid="8040" type="send"><para><ulink url="pted_521.htm">How to stop smoking</ulink></para></intervention><intervention uid="8042" type="educate"><para>Web-based resources for smoking cessation, including<website>http://www.smokefree.gov/</website></para></intervention></goal><goal uid="8044"><para>Achieve and maintain abstinence from tobacco</para><intervention uid="8046" type="educate"><para>Maybe need a new category-----support?----</para></intervention><intervention uid="8048" type="educate"><para>Web-based resources for smoking cessation</para></intervention><outcome uid="8050"><para>Goal met</para></outcome><outcome uid="8052"><para>Goal not met</para></outcome></goal></problem></guideline-sect3>', N'GA', N'16.0', N'iCCG', N'ICCG_MG_7', N'', N'', 16, 0, 1, CAST(0x00009EA00164C202 AS DateTime), 1, NULL, 0)
INSERT [iCCG].[GuidelineSection] ([GuidelineSectionID], [GuidelineID], [ParentGuidelineSectionID], [Heading], [Ordinal], [TypeID], [SectionPath], [SectionXml], [ContentOwner], [ContentVersion], [ProductCode], [Hsim], [ProgressionPeriod], [ProgressionBehavior], [VersionMajor], [VersionMinor], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (573, 144, 572, N'Heart failure-alcohol use', 5, 1, N'/Lifestyle_Issues/Heart_failure-alcohol_use', N'<heading>Heart failure-alcohol use</heading><question uid="2834" type="single"><para>How often do you drink alcoholic beverages?</para><answer uid="2836"><para>Never</para></answer><answer uid="2838"><para>Once a week or less often</para><questionref targetuid="2848" /></answer><answer uid="2840"><para>Two to three times per week</para><questionref targetuid="2848" /></answer><answer uid="2842"><para>Four to five times per week</para><questionref targetuid="2848" /></answer><answer uid="2844"><para>Six to seven times per week</para><questionref targetuid="2848" /></answer><answer uid="2846"><para>Don''t know/uncertain</para></answer></question><question uid="2848" type="single"><para>On a day that you have a drink of alcoholic beverage, how much do you drink?</para><note type="help">Count beer and wine, as well as spirits. A serving of beer is....and so forth and so on.</note><answer uid="2850"><para>One drink or less</para></answer><answer uid="2852"><para>Two drinks</para><problemref targetuid="7790" /></answer><answer uid="2854"><para>Three drinks or more</para><problemref targetuid="7790" /></answer><answer uid="2856"><para>Don''t know/uncertain</para></answer></question><problem uid="7790"><para>Alcohol use: heart failure</para><note>Careful history of current use of alcohol should be obtained at each visit of a patient with heart failure.<citation db_id="53393" linkend="cit_iccg_034_001" />Patients with a history of alcohol abuse or with current substantial routine alcohol consumption and new-onset heart failure without other obvious cause should be counseled to become abstinent.<citation db_id="53393" linkend="cit_iccg_034_001" />Many heart failure programs limit alcoholic beverage consumption to no more than 1 alcoholic beverage serving daily for all patients with LV dysfunction, regardless of cause.<citation db_id="53393" linkend="cit_iccg_034_001" /></note><goal uid="7792"><para>Limit alcoholic beverage consumption to no more than 1 serving daily</para><intervention uid="7794" type="educate"><para>Explain limits of alcohol use for patients with heart failure.</para></intervention><intervention uid="7796" type="educate"><para>Alcohol cessation strategies</para></intervention><intervention uid="7798"><para>Facilitate patient''s joining support group or participating in alcohol abstinence programs (eg, Alcoholics Anonymous).</para></intervention><intervention uid="7800" type="educate"><para>Drugs for alcohol abstinence:<ulink url="dsc00102.htm">Alcohol Deterrents</ulink></para></intervention><intervention uid="7802" type="send"><para><ulink url="pted_641.htm">Websites - Substance abuse</ulink></para></intervention><outcome uid="7804"><para>Goal met</para></outcome><outcome uid="7806"><para>Goal not met</para></outcome></goal></problem>', N'GA', N'16.0', N'iCCG', N'ICCG_MG_7', N'', N'', 16, 0, 1, CAST(0x00009EA00164C207 AS DateTime), 1, NULL, 0)
INSERT [iCCG].[GuidelineSection] ([GuidelineSectionID], [GuidelineID], [ParentGuidelineSectionID], [Heading], [Ordinal], [TypeID], [SectionPath], [SectionXml], [ContentOwner], [ContentVersion], [ProductCode], [Hsim], [ProgressionPeriod], [ProgressionBehavior], [VersionMajor], [VersionMinor], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (574, 144, 572, N'Heart failure-exercise', 6, 1, N'/Lifestyle_Issues/Heart_failure-exercise', N'<heading>Heart failure-exercise</heading><question uid="6" type="single"><para>How much do you exercise?</para><answer uid="8"><para>I exercise for at least 30 minutes a day, at least 5 times a week</para></answer><answer uid="10"><para>I exercise, but for less than 30 minutes a day 5 times a week</para><problemref targetuid="7826" /></answer><answer uid="12"><para>I don''t exercise because my doctor has told me not to exercise</para></answer><answer uid="14"><para>I don''t exercise</para><problemref targetuid="7826" /></answer><answer uid="16"><para>I don''t know/I''m not sure</para><problemref targetuid="7826" /></answer></question><problem uid="7826"><para>Exercise: heart failure</para><note type="evidence">ACC/AHA guidelines recommend exercise training as an adjunctive approach to improve clinical status in ambulatory patients with current or prior symptoms of heart failure and reduced LVEF.<citation db_id="53393" linkend="cit_iccg_032_001" />Several controlled trials have shown that exercise training can lessen symptoms, increase exercise capacity, and improve the quality of life of patients with chronic heart failure. The improvement was comparable to that achieved with pharmacological interventions, and was in addition to the benefits of ACE inhibitors and beta blockers.<citation db_id="53393" linkend="cit_iccg_032_001" />Except during periods of acute exacerbation of heart failure or in patients with suspected myocarditis, physical activity should be encouraged because restriction of activity promotes physical deconditioning, which may adversely affect clinical status and contribute to the exercise intolerance of patients with heart failure.<citation db_id="53393" linkend="cit_iccg_032_001" />An aerobic exercise program should meet a patient''s functional capacity.<citation db_id="68630" linkend="cit_iccg_032_002" />Lifestyle modifications should be emphasized with any exercise program.<citation db_id="68630" linkend="cit_iccg_032_002" />If heart failure worsens or evidence of exercise-induced ischemia is apparent, exercise should be stopped until an evaluation is performed and any adjustments to therapy have been initiated.<citation db_id="68630" linkend="cit_iccg_032_002" />Most patients with heart failure should not participate in heavy labor or exhaustive sports.<citation db_id="53393" linkend="cit_iccg_032_001" /></note><goal uid="7828" type="long-term"><para>Start and maintain exercise program</para><intervention uid="7830"><para>Finding out about insurance benefits available for cardiac rehabilitation or other formal exercise program</para></intervention><intervention uid="7832" type="educate"><para>Benefits of exercise for heart failure</para></intervention><intervention uid="7834"><para>Supervised (eg, cardiac rehabilitation for high-risk patients) or home-based exercise program</para></intervention><intervention uid="7836" type="educate"><para>Instruct patient how to self-monitor heart rate (pulse). Self-monitoring of heart rate includes establishing a safe heart rate for exercising with your physician or through cardiac rehabilitation; check pulse at least once daily; and recording how many beats per minute, whether rhythm is regular or irregular, and if any stops or pauses occur.</para></intervention><intervention uid="7838" type="educate"><para>Instruct patient on how to safely increase activity. Methods include increasing activity as tolerated, alternating brief activities with periods of rest; avoiding high-intensity sports like basketball, competitive swimming, diving, rowing, competitive cycling, jogging, and wrestling, until cleared by physician; and returning to driving or regular activity after medical clearance.</para></intervention><intervention uid="7840" type="send"><para><ulink url="pted_603.htm">Exercising when you have heart disease</ulink></para></intervention><outcome uid="7842"><para>Goal met</para></outcome><outcome uid="7844"><para>Goal not met</para></outcome></goal></problem>', N'GA', N'16.0', N'iCCG', N'ICCG_MG_7', N'', N'', 16, 0, 1, CAST(0x00009EA00164C236 AS DateTime), 1, NULL, 0)
INSERT [iCCG].[GuidelineSection] ([GuidelineSectionID], [GuidelineID], [ParentGuidelineSectionID], [Heading], [Ordinal], [TypeID], [SectionPath], [SectionXml], [ContentOwner], [ContentVersion], [ProductCode], [Hsim], [ProgressionPeriod], [ProgressionBehavior], [VersionMajor], [VersionMinor], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (575, 144, 572, N'Heart failure-knowledge deficit', 7, 1, N'/Lifestyle_Issues/Heart_failure-knowledge_deficit', N'<heading>Heart failure-knowledge deficit</heading><question uid="2920" type="single"><para>I would like to make sure that you have information about heart failure that will help you live better with this condition. Would you be interested in learning about heart failure, especially about its symptoms and treatment?</para><answer uid="2922"><para>Yes</para></answer><answer uid="2924"><para>No</para></answer><answer uid="2926"><para>I don''t know/I''m not sure</para></answer></question><problem uid="7860"><para>Knowledge deficits about heart failure</para><note>New York Heart Association classification of heart failure severity depends on the degree of effort needed to elicit symptoms: Patients may have symptoms of heart failure at rest (class IV), on less-than-ordinary exertion (class III), on ordinary exertion (class II), or only at levels of exertion that would limit normal individuals (class I).<citation db_id="3337" cl="cl_c_1" display_value="1" linkend="cit_iccg_029_001" /><citation db_id="68630" linkend="cit_iccg_029_002" /></note><goal uid="7862"><para>Improve patient''s understanding of heart failure, linking disease, symptoms, and treatment</para><intervention uid="7864" type="educate"><para>Heart failure means that the heart muscle is weak and cannot pump blood the way it should. It means that the heart is not pumping enough blood to the body. Because the heart can''t pump properly, there can be buildup of fluids in various parts of the body. Buildup in the feet, ankles, and legs is called edema. Buildup of fluids in the lungs makes you short of breath and tired. The most common causes of heart failure are coronary artery disease (blockage of the arteries that bring blood to the heart muscle), hypertension (high blood pressure), heart valve disease, and primary disease of the heart muscle (cardiomyopathy). Cardiomyopathy can be related to drinking too much alcohol, to pregnancy, to a viral infection, to medication, or for unknown reasons. Treatment of heart failure means treating its cause and using medicines to make it easier for the heart to pump blood. Some cases may need treatment with a special kind of pacemaker or, ultimately, a heart transplant.</para></intervention><intervention uid="7866" type="send"><para><ulink url="pted_652.htm">What you need to know - Heart failure</ulink></para></intervention><intervention uid="7868" type="educate"><para>Internet resources for additional information:<website>http://www.nlm.nih.gov/medlineplus/heartfailure.html</website>;<website>http://www.americanheart.org/presenter.jhtml?identifier=4585</website>;<website>http://www.nhlbi.nih.gov/health/dci/Diseases/Hf/HF_WhatIs.html</website></para></intervention><outcome uid="7870"><para>Goal met</para></outcome><outcome uid="7872"><para>Goal not met</para></outcome></goal></problem>', N'GA', N'16.0', N'iCCG', N'ICCG_MG_7', N'', N'', 16, 0, 1, CAST(0x00009EA00164C257 AS DateTime), 1, NULL, 0)
INSERT [iCCG].[GuidelineSection] ([GuidelineSectionID], [GuidelineID], [ParentGuidelineSectionID], [Heading], [Ordinal], [TypeID], [SectionPath], [SectionXml], [ContentOwner], [ContentVersion], [ProductCode], [Hsim], [ProgressionPeriod], [ProgressionBehavior], [VersionMajor], [VersionMinor], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (576, 144, 572, N'Heart failure-medication management', 8, 1, N'/Lifestyle_Issues/Heart_failure-medication_management', N'<heading>Heart failure-medication management</heading><question uid="2948" type="single"><para>Do you take an ACE inhibitor drug for heart failure?</para><note type="help">ACE inhibitors include benazepril, captopril, enalapril, fosinopril, lisinopril, moexipril, perindopril, quinapril, ramipril, and trandolapril.</note><answer uid="2950"><para>Yes</para></answer><answer uid="2952"><para>No</para></answer><answer uid="2954"><para>I don''t know/I''m not sure</para></answer></question><question uid="2956" type="single"><para>Do you take an ARB drug for heart failure?</para><note type="help">ARBs include candesartan, eprosartan, irbesartan, losartan, olmesartan, telmisartan, and valsartan.</note><answer uid="2958"><para>Yes</para></answer><answer uid="2960"><para>No</para></answer><answer uid="2962"><para>I don''t know/I''m not sure</para></answer></question><question uid="2964" type="single"><para>Do you take hydralazine and a nitrate drug for heart failure?</para><note type="help">Long-acting nitrate drugs include isosorbide dinitrate oral, isosorbide mononitrate extended release, nitroglycerin ointment, nitroglycerin patch, nitroglycerin spray, and nitroglycerin sustained release.</note><answer uid="2966"><para>Yes</para></answer><answer uid="2968"><para>No</para></answer><answer uid="2970"><para>I don''t know/I''m not sure</para></answer></question><question uid="2972" type="single"><para>Do you take a beta blocker drug for heart failure?</para><note type="help">Beta blockers include acebutolol, atenolol, betaxolol, bisoprolol, carvedilol, labetalol, metoprolol, nadolol, penbutolol, pindolol, propranolol, and timolol.</note><answer uid="2974"><para>Yes</para></answer><answer uid="2976"><para>No</para></answer><answer uid="2978"><para>I don''t know/I''m not sure</para></answer></question><question uid="2980" type="single"><para>Do you take spironolactone or eplerenone for heart failure?</para><answer uid="2982"><para>Yes</para></answer><answer uid="2984"><para>No</para></answer><answer uid="2986"><para>I don''t know/I''m not sure</para></answer></question><question uid="2988"><para>What side effects are you having from drugs for heart failure?</para><note type="help">Check all that apply.</note><answer uid="2990"><para>I''m not taking any drugs for heart failure</para><problemref targetuid="7948" /></answer><answer uid="2992"><para>Dizzy</para><problemref targetuid="7948" /></answer><answer uid="2994"><para>Fainting</para><problemref targetuid="7948" /></answer><answer uid="2996"><para>Tired</para><problemref targetuid="7948" /></answer><answer uid="2998"><para>Cough</para><problemref targetuid="7948" /></answer><answer uid="3000"><para>Swelling</para><problemref targetuid="7948" /></answer><answer uid="3002"><para>Wheezing</para><problemref targetuid="7948" /></answer><answer uid="3004"><para>Trouble breathing</para><questionref targetuid="3012" /></answer><answer uid="3006"><para>Other</para><problemref targetuid="7948" /></answer><answer uid="3008"><para>None</para></answer><answer uid="3010"><para>I don''t know/I''m not sure</para><problemref targetuid="7948" /></answer></question><question uid="3012" type="DEvalue"><para>What other side effects are you having from drugs for heart failure?</para><answer uid="3014"><para>Specify</para><problemref targetuid="7948" /></answer></question><problem uid="7948"><para>Medication management: heart failure</para><note type="evidence">In a randomized trial of nurse-led disease management, working with the doctor to optimize medical therapy led to an increase in the number of patients on medications consistent with guidelines.<citation db_id="21077" linkend="cit_iccg_030_001" />A disease management guideline recommends patient education on the indications and use for each medication. Target behaviors include adherence to the dosing schedule for each medications and what to do if a dose is missed.<citation db_id="46809" linkend="cit_iccg_030_002" /></note><goal uid="7950" type="long-term"><para>Patient initiates and maintains treatment with vasodilator</para><note type="evidence">Angiotensin-converting enzyme (ACE) inhibitors are vasodilators that improve survival and quality of life for patients with heart failure.<citation db_id="68630" linkend="cit_iccg_030_003" />ACE inhibitors have been shown to reduce the risk of death and the combined risk of death or hospitalization.<citation db_id="68630" linkend="cit_iccg_030_003" /><citation db_id="53393" linkend="cit_iccg_030_004" />All patients with heart failure should receive ACE inhibitors, unless contraindicated or not tolerated<citation db_id="53393" linkend="cit_iccg_030_004" />An angiotensin-receptor blocker (ARB) may be used in patients who have intolerable side effects from ACE inhibitors.<citation db_id="68630" linkend="cit_iccg_030_003" />Hydralazine plus a long-acting nitrate is used for vasodilation in patients who cannot tolerate either ACE inhibitors or ARBs. This combination has been shown to increase survival and decrease hospitalization in African Americans with heart failure.<citation db_id="9570" linkend="cit_iccg_030_005" /><citation db_id="26108" linkend="cit_iccg_030_006" /></note><intervention uid="7952" type="coordinate"><para>Work with patient and doctor to have patient receive vasodilator drug (ACE inhibitor, ARB, and/or hydralazine-nitrate).</para></intervention><intervention uid="7954" type="educate"><para>Effects and side effects of ACE inhibitors. An ACE inhibitor is started at a low dose that is titrated upwards over several weeks, with BP monitoring, to the patient''s tolerance. Hypotension and dizziness are the most common side effects of ACE inhibitor treatment of heart failure. As long as the patient does not have postural symptoms, dizziness or syncope, the systolic BP can been as low as<unit>80 mm Hg</unit>. Cough is the most common reason for withdrawing ACE-inhibitor therapy. A patients with cough is usually considered for a rechallenge with a different ACE-inhibitor or the use of an ARB. The patient taking an ACE inhibitor will have monitoring of serum electrolytes, creatinine, and BUN, as hyperkalemia and worsening kidney function are serious side effects. Angioedema is not a common side effect but can be life-threatening and may justify avoidance of all ACE-inhibitors for the lifetime of the patient. See<ulink url="pted_500.htm">ACE inhibitors</ulink>for further information.</para></intervention><intervention uid="7956" type="send"><para><ulink url="pted_500.htm">ACE inhibitors</ulink></para></intervention><intervention uid="7958" type="educate"><para>Effects and side effects of ARBs. An ARB may be added to ACE inhibitor treatment or may be used if the patient is intolerant to ACE inhibitors. As with ACE inhibitor treatment, the patient taking an ACE inhibitor will have monitoring of serum electrolytes, creatinine, and BUN, as hyperkalemia and worsening kidney function are serious side effects. See<ulink url="pted_501.htm">Angiotensin receptor blockers (ARBs)</ulink></para></intervention><intervention uid="7960" type="send"><para><ulink url="pted_501.htm">Angiotensin receptor blockers (ARBs)</ulink></para></intervention><intervention uid="7962" type="educate"><para>Effects and side effects of vasodilators. A patient who is intolerant to both ACE inhibitors and ARBs may receive combination therapy with hydralazine and a long-acting nitrate for vasodilation. The combination may also be added to other vasodilator medication treatment. As with other vasodilators, they may cause hypotension. A patient taking hydralazine is monitored with tests for lupus, as the drug may cause the condition. See<ulink url="dsc00034.htm">Vasodilators</ulink>and<ulink url="dsc00031.htm">Nitrates</ulink></para></intervention><intervention uid="7964" type="educate"><para>Remind patient of basic reason for taking vasodilator, reinforce vasodilator dosing schedule, and explain what to do if a dose is missed.</para></intervention><outcome uid="7966"><para>Goal met</para></outcome><outcome uid="7968"><para>Goal not met</para></outcome></goal><goal uid="7970" type="long-term"><para>Patient initiates and maintains treatment with beta blocker</para><note type="evidence">Long-term treatment with beta blockers can decrease symptoms of heart failure, improve clinical status of patients, and enhance patient''s sense of well-being. Beta blockers have been shown to reduce the risk of death and the combined risk of death or hospitalization.<citation db_id="53393" linkend="cit_iccg_030_004" />All patients with stable heart failure due to reduced left ventricular ejection fraction should receive a beta blocker unless contraindicated or not tolerated.<citation db_id="53393" linkend="cit_iccg_030_004" /></note><intervention uid="7972"><para>Work with patient and doctor to have patient receive beta blocker.</para></intervention><intervention uid="7974" type="educate"><para>Effects and side effects of beta blockers. Initiation of beta blocker therapy can cause fluid retention that is usually asymptomatic and detected primarily by an increase in body weight. Increasing diuretic therapy often allows patients to remain on long-term beta blocker therapy. Treatment with a beta blocker can cause fatigue or weakness. These symptoms will often resolve in several weeks with no change in beta blocker therapy. For some patients, beta blocker therapy will need to be reduced or withdrawn to eliminate symptoms. Reinitiation of beta blocker therapy at a later time or with a different beta blocker may be successful. If bradycardia is accompanied by dizziness or lightheadedness or if second- or third-degree heart block occurs, the dose of beta blocker should be decreased. Hypotension may produce symptoms of dizziness, lightheadedness, or blurred vision. For some beta blockers (eg, those that block alpha receptors, such as carvedilol), vasodilatory side effects generally subside within 48 hours of the first dose or first increment in dose. See<ulink url="pted_506.htm">Beta blockers</ulink></para></intervention><intervention uid="7976" type="educate"><para>Remind patient of basic reason for taking beta blocker, reinforce beta blocker dosing schedule, and explain what to do if a dose is missed.</para></intervention><intervention uid="7978" type="send"><para><ulink url="pted_506.htm">Beta blockers</ulink></para></intervention><outcome uid="7980"><para>Goal met</para></outcome><outcome uid="7982"><para>Goal not met</para></outcome></goal><goal uid="7984" type="long-term"><para>Patient initiates and maintains treatment with aldosterone antagonist</para><note type="evidence">Spironolactone has been shown to decrease mortality compared with placebo in patients with NYHA Class III to Class IV heart failure receiving other appropriate treatment.<citation db_id="2432" linkend="cit_iccg_030_007" />Eplerenone decreases mortality in patients with an ejection fraction of less than 40% following a myocardial infarction.<citation db_id="10680" linkend="cit_iccg_030_008" /></note><intervention uid="7986" type="educate"><para>Effects and side effects of aldosterone antagonists. Spironolactone or eplerenone may be used in low doses in patients who have severely symptomatic heart failure despite other appropriate treatment. They may contribute to hyperkalemia, especially when used with an ACE inhibitor or ARB. Spironolactone can cause painful gynecomastia in men. See<ulink url="dsc00032.htm">Nonloop Diuretics</ulink></para></intervention><intervention uid="7988" type="educate"><para>Remind patient of basic reason for taking aldosterone antagonist, reinforce aldosterone antagonist dosing schedule, and explain what to do if a dose is missed.</para></intervention><outcome uid="7990"><para>Goal met</para></outcome><outcome uid="7992"><para>Goal not met</para></outcome></goal></problem>', N'GA', N'16.0', N'iCCG', N'ICCG_MG_7', N'', N'', 16, 0, 1, CAST(0x00009EA00164C260 AS DateTime), 1, NULL, 0)
INSERT [iCCG].[GuidelineSection] ([GuidelineSectionID], [GuidelineID], [ParentGuidelineSectionID], [Heading], [Ordinal], [TypeID], [SectionPath], [SectionXml], [ContentOwner], [ContentVersion], [ProductCode], [Hsim], [ProgressionPeriod], [ProgressionBehavior], [VersionMajor], [VersionMinor], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (577, 144, 572, N'Heart failure-tobacco use', 9, 1, N'/Lifestyle_Issues/Heart_failure-tobacco_use', N'<heading>Heart failure-tobacco use</heading><question uid="496" type="single"><para>Have you ever smoked tobacco or used tobacco products?</para><note type="help">Record use of smokeless tobacco, such as chewing tobacco or use of snuff as Yes.</note><answer uid="498"><para>Yes, currently</para><questionref targetuid="1296" /></answer><answer uid="500"><para>Yes, not currently, but within the last year</para><problemref targetuid="8024" /></answer><answer uid="502"><para>Yes, not currently, and not within the last year</para></answer><answer uid="504"><para>No</para></answer></question><question uid="1296" type="single"><para>How much do you smoke?</para><answer uid="1298"><para>2 packs a day or more</para><problemref targetuid="8024" /></answer><answer uid="1300"><para>More than 1 but less than 2 packs a day</para><problemref targetuid="8024" /></answer><answer uid="1302"><para>1 pack a day</para><problemref targetuid="8024" /></answer><answer uid="1304"><para>Less than 1 pack a day</para><problemref targetuid="8024" /></answer><answer uid="1306"><para>Don''t smoke, but use smokeless tobacco</para><problemref targetuid="8024" /></answer><answer uid="1308"><para>Don''t know/Not sure</para></answer></question><problem uid="8024"><para>Tobacco use</para><note type="evidence">Careful history of current use of tobacco should be obtained at each visit of a patient with heart failure.<citation db_id="53393" linkend="cit_iccg_033_001" /></note><note>Smoking cessation includes guidance on patient''s willingness to quit, counseling to develop plan to quit, encouraging patient''s family members to quit, and education for patient and family about dangers of environmental tobacco smoke.<citation db_id="17625" linkend="cit_iccg_033_002" /></note><goal uid="8026"><para>Begin tobacco cessation program</para><intervention uid="8028" type="educate"><para>Tobacco cessation</para></intervention><intervention uid="8030"><para>Arrange discussion with physician about the use of nicotine replacement therapy or medications to help quit smoking.</para></intervention><intervention uid="8032"><para>Facilitate patient''s joining support group of ex-smokers or participating in stop-smoking programs (eg, American Cancer Society, American Lung Association).</para></intervention><intervention uid="8034" type="educate"><para>Smoking cessation strategies</para><note>Strategies to quit smoking include keeping the reason to quit in mind and staying motivated; choosing a firm date to quit and marking it on your calendar; avoiding times that may be stressful or situations that are associated with smoking; telling friends, family, and coworkers of intent to quit so they can offer support; avoiding places where people congregate to smoke; anticipating withdrawal symptoms (eg, cigarette cravings, anxiety, irritability, restlessness), which usually peak at 1 to 3 weeks after quitting, but generally wane; eating a healthy diet and staying active to help with stress and minimize weight gain; understanding the risks to family associated with exposure to second-hand smoke; and attending smoking cessation programs available in your area.<citation db_id="19411" linkend="cit_iccg_033_003" /></note></intervention><intervention uid="8036" type="educate"><para>Nicotine smoking cessation aids:<ulink url="dsc00099.htm">Nicotine Smoking Cessation Aids</ulink></para></intervention><intervention uid="8038" type="educate"><para>Nonnicotine smoking cessation aids:<ulink url="dsc00100.htm">Nonnicotine Smoking Cessation Aids</ulink></para></intervention><intervention uid="8040" type="send"><para><ulink url="pted_521.htm">How to stop smoking</ulink></para></intervention><intervention uid="8042" type="educate"><para>Web-based resources for smoking cessation, including<website>http://www.smokefree.gov/</website></para></intervention></goal><goal uid="8044"><para>Achieve and maintain abstinence from tobacco</para><intervention uid="8046" type="educate"><para>Maybe need a new category-----support?----</para></intervention><intervention uid="8048" type="educate"><para>Web-based resources for smoking cessation</para></intervention><outcome uid="8050"><para>Goal met</para></outcome><outcome uid="8052"><para>Goal not met</para></outcome></goal></problem>', N'GA', N'16.0', N'iCCG', N'ICCG_MG_7', N'', N'', 16, 0, 1, CAST(0x00009EA00164C29D AS DateTime), 1, NULL, 0)
INSERT [iCCG].[GuidelineSection] ([GuidelineSectionID], [GuidelineID], [ParentGuidelineSectionID], [Heading], [Ordinal], [TypeID], [SectionPath], [SectionXml], [ContentOwner], [ContentVersion], [ProductCode], [Hsim], [ProgressionPeriod], [ProgressionBehavior], [VersionMajor], [VersionMinor], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (578, 144, 0, N'Follow Up', 10, 1, N'/Follow_Up', N'<heading>Follow Up</heading>', N'GA', N'16.0', N'iCCG', N'ICCG_MG_7', N'', N'', 16, 0, 1, CAST(0x00009EA00164C2CC AS DateTime), 1, NULL, 0)
SET IDENTITY_INSERT [iCCG].[GuidelineSection] OFF
/****** Object:  Table [iCCG].[GoalProblem]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [iCCG].[GoalProblem](
	[GoalProblemID] [int] IDENTITY(1,1) NOT NULL,
	[GoalID] [int] NOT NULL,
	[ProblemID] [int] NOT NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [GoalProblem_PK] PRIMARY KEY CLUSTERED 
(
	[GoalProblemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [iCCG].[GoalOutcome]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [iCCG].[GoalOutcome](
	[GoalOutcomeID] [int] IDENTITY(1,1) NOT NULL,
	[GoalID] [int] NOT NULL,
	[OutcomeID] [int] NOT NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [GoalOutcome_PK] PRIMARY KEY CLUSTERED 
(
	[GoalOutcomeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [iCCG].[GoalIntervention]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [iCCG].[GoalIntervention](
	[GoalInterventionID] [int] IDENTITY(1,1) NOT NULL,
	[GoalID] [int] NOT NULL,
	[InterventionID] [int] NOT NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [GoalIntervention_PK] PRIMARY KEY CLUSTERED 
(
	[GoalInterventionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [iCCG].[CaseProgram]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [iCCG].[CaseProgram](
	[CaseProgramID] [int] IDENTITY(1,1) NOT NULL,
	[CaseID] [int] NULL,
	[ProgramID] [int] NULL,
	[Ordinal] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_CaseProgram] PRIMARY KEY CLUSTERED 
(
	[CaseProgramID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [iCCG].[CaseProgram] ON
INSERT [iCCG].[CaseProgram] ([CaseProgramID], [CaseID], [ProgramID], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (1, 2, 1, 1, 1, CAST(0x00009EA000000000 AS DateTime), 1, NULL, NULL)
SET IDENTITY_INSERT [iCCG].[CaseProgram] OFF
/****** Object:  Table [iCCG].[Assessment]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [iCCG].[Assessment](
	[AssessmentID] [int] IDENTITY(1,1) NOT NULL,
	[CaseID] [int] NULL,
	[ProgramGuidelineID] [int] NULL,
	[StatusID] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_Assessment] PRIMARY KEY CLUSTERED 
(
	[AssessmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [iCCG].[QuestionAnswer]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[QuestionAnswer](
	[QuestionAnswerID] [int] IDENTITY(1,1) NOT NULL,
	[QuestionID] [int] NULL,
	[AnswerID] [int] NULL,
	[ParentQuestionAnswerID] [int] NULL,
	[Help] [varchar](max) NULL,
	[Ordinal] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_QuestionAnswer] PRIMARY KEY CLUSTERED 
(
	[QuestionAnswerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [iCCG].[QuestionAnswer] ON
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6488, 1397, 6403, 0, N'', 1, 1, CAST(0x00009EA00164C171 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6489, 1397, 6404, 0, N'', 2, 1, CAST(0x00009EA00164C192 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6490, 1397, 6405, 0, N'', 3, 1, CAST(0x00009EA00164C197 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6491, 1397, 6406, 0, N'', 4, 1, CAST(0x00009EA00164C19C AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6492, 1397, 6407, 0, N'', 5, 1, CAST(0x00009EA00164C19C AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6493, 1397, 6408, 0, N'', 6, 1, CAST(0x00009EA00164C1A0 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6494, 1397, 6409, 0, N'', 7, 1, CAST(0x00009EA00164C1A0 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6495, 1397, 6410, 0, N'', 8, 1, CAST(0x00009EA00164C1A5 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6496, 1397, 6411, 0, N'', 9, 1, CAST(0x00009EA00164C1A5 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6497, 1397, 6412, 0, N'', 10, 1, CAST(0x00009EA00164C1AA AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6498, 1397, 6413, 0, N'', 11, 1, CAST(0x00009EA00164C1AE AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6499, 1397, 6414, 0, N'', 12, 1, CAST(0x00009EA00164C1B3 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6500, 1397, 6415, 0, N'', 13, 1, CAST(0x00009EA00164C1B3 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6501, 1397, 6416, 0, N'', 14, 1, CAST(0x00009EA00164C1B3 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6502, 1397, 6417, 0, N'', 15, 1, CAST(0x00009EA00164C1B3 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6503, 1397, 6418, 0, N'', 16, 1, CAST(0x00009EA00164C1B8 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6504, 1398, 6419, 0, N'', 17, 1, CAST(0x00009EA00164C1B8 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6505, 1398, 6420, 0, N'', 18, 1, CAST(0x00009EA00164C1B8 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6506, 1398, 6421, 0, N'', 19, 1, CAST(0x00009EA00164C1BC AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6507, 1399, 6422, 0, N'', 20, 1, CAST(0x00009EA00164C1BC AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6508, 1399, 6423, 0, N'', 21, 1, CAST(0x00009EA00164C1BC AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6509, 1399, 6424, 0, N'', 22, 1, CAST(0x00009EA00164C1C1 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6510, 1400, 6425, 0, N'', 23, 1, CAST(0x00009EA00164C1C1 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6511, 1400, 6426, 0, N'', 24, 1, CAST(0x00009EA00164C1C1 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6512, 1400, 6427, 0, N'', 25, 1, CAST(0x00009EA00164C1C6 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6513, 1401, 6428, 0, N'', 26, 1, CAST(0x00009EA00164C1C6 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6514, 1401, 6429, 0, N'', 27, 1, CAST(0x00009EA00164C1C6 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6515, 1401, 6430, 0, N'', 28, 1, CAST(0x00009EA00164C1CA AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6516, 1402, 6431, 0, N'', 29, 1, CAST(0x00009EA00164C1CA AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6517, 1402, 6432, 0, N'', 30, 1, CAST(0x00009EA00164C1CA AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6518, 1402, 6433, 0, N'', 31, 1, CAST(0x00009EA00164C1CF AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6519, 1403, 6434, 0, N'', 32, 1, CAST(0x00009EA00164C1CF AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6520, 1403, 6435, 0, N'', 33, 1, CAST(0x00009EA00164C1CF AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6521, 1403, 6436, 0, N'', 34, 1, CAST(0x00009EA00164C1D4 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6522, 1404, 6437, 0, N'', 35, 1, CAST(0x00009EA00164C1D4 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6523, 1404, 6438, 0, N'', 36, 1, CAST(0x00009EA00164C1D4 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6524, 1404, 6439, 0, N'', 37, 1, CAST(0x00009EA00164C1D8 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6525, 1405, 6440, 0, N'', 1, 1, CAST(0x00009EA00164C20C AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6526, 1405, 6441, 0, N'', 2, 1, CAST(0x00009EA00164C20C AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6527, 1405, 6442, 0, N'', 3, 1, CAST(0x00009EA00164C223 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6528, 1405, 6443, 0, N'', 4, 1, CAST(0x00009EA00164C223 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6529, 1405, 6444, 0, N'', 5, 1, CAST(0x00009EA00164C228 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6530, 1405, 6445, 0, N'', 6, 1, CAST(0x00009EA00164C228 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6531, 1406, 6446, 0, N'', 7, 1, CAST(0x00009EA00164C228 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6532, 1406, 6447, 0, N'', 8, 1, CAST(0x00009EA00164C22D AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6533, 1406, 6448, 0, N'', 9, 1, CAST(0x00009EA00164C231 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6534, 1406, 6449, 0, N'', 10, 1, CAST(0x00009EA00164C231 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6535, 1407, 6450, 0, N'', 1, 1, CAST(0x00009EA00164C23F AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6536, 1407, 6451, 0, N'', 2, 1, CAST(0x00009EA00164C23F AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6537, 1407, 6452, 0, N'', 3, 1, CAST(0x00009EA00164C252 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6538, 1407, 6453, 0, N'', 4, 1, CAST(0x00009EA00164C252 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6539, 1407, 6454, 0, N'', 5, 1, CAST(0x00009EA00164C257 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6540, 1408, 6455, 0, N'', 1, 1, CAST(0x00009EA00164C25B AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6541, 1408, 6456, 0, N'', 2, 1, CAST(0x00009EA00164C25B AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6542, 1408, 6457, 0, N'', 3, 1, CAST(0x00009EA00164C25B AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6543, 1409, 6458, 0, N'', 1, 1, CAST(0x00009EA00164C265 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6544, 1409, 6459, 0, N'', 2, 1, CAST(0x00009EA00164C265 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6545, 1409, 6460, 0, N'', 3, 1, CAST(0x00009EA00164C277 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6546, 1410, 6461, 0, N'', 4, 1, CAST(0x00009EA00164C277 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6547, 1410, 6462, 0, N'', 5, 1, CAST(0x00009EA00164C277 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6548, 1410, 6463, 0, N'', 6, 1, CAST(0x00009EA00164C281 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6549, 1411, 6464, 0, N'', 7, 1, CAST(0x00009EA00164C281 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6550, 1411, 6465, 0, N'', 8, 1, CAST(0x00009EA00164C281 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6551, 1411, 6466, 0, N'', 9, 1, CAST(0x00009EA00164C281 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6552, 1412, 6467, 0, N'', 10, 1, CAST(0x00009EA00164C286 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6553, 1412, 6468, 0, N'', 11, 1, CAST(0x00009EA00164C286 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6554, 1412, 6469, 0, N'', 12, 1, CAST(0x00009EA00164C28A AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6555, 1413, 6470, 0, N'', 13, 1, CAST(0x00009EA00164C28A AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6556, 1413, 6471, 0, N'', 14, 1, CAST(0x00009EA00164C28F AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6557, 1413, 6472, 0, N'', 15, 1, CAST(0x00009EA00164C28F AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6558, 1414, 6473, 0, N'', 16, 1, CAST(0x00009EA00164C28F AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6559, 1414, 6474, 0, N'', 17, 1, CAST(0x00009EA00164C28F AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6560, 1414, 6475, 0, N'', 18, 1, CAST(0x00009EA00164C294 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6561, 1414, 6476, 0, N'', 19, 1, CAST(0x00009EA00164C294 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6562, 1414, 6477, 0, N'', 20, 1, CAST(0x00009EA00164C294 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6563, 1414, 6478, 0, N'', 21, 1, CAST(0x00009EA00164C294 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6564, 1414, 6479, 0, N'', 22, 1, CAST(0x00009EA00164C294 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6565, 1414, 6480, 0, N'', 23, 1, CAST(0x00009EA00164C294 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6566, 1414, 6481, 0, N'', 24, 1, CAST(0x00009EA00164C294 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6567, 1414, 6482, 0, N'', 25, 1, CAST(0x00009EA00164C298 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6568, 1414, 6483, 0, N'', 26, 1, CAST(0x00009EA00164C298 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6569, 1415, 6484, 0, N'', 27, 1, CAST(0x00009EA00164C298 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6570, 1416, 6485, 0, N'', 1, 1, CAST(0x00009EA00164C29D AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6571, 1416, 6486, 0, N'', 2, 1, CAST(0x00009EA00164C29D AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6572, 1416, 6487, 0, N'', 3, 1, CAST(0x00009EA00164C29D AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6573, 1416, 6488, 0, N'', 4, 1, CAST(0x00009EA00164C2A2 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6574, 1417, 6489, 0, N'', 5, 1, CAST(0x00009EA00164C2A2 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6575, 1417, 6490, 0, N'', 6, 1, CAST(0x00009EA00164C2A2 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6576, 1417, 6491, 0, N'', 7, 1, CAST(0x00009EA00164C2A2 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6577, 1417, 6492, 0, N'', 8, 1, CAST(0x00009EA00164C2A6 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6578, 1417, 6493, 0, N'', 9, 1, CAST(0x00009EA00164C2A6 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[QuestionAnswer] ([QuestionAnswerID], [QuestionID], [AnswerID], [ParentQuestionAnswerID], [Help], [Ordinal], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6579, 1417, 6494, 0, N'', 10, 1, CAST(0x00009EA00164C2AB AS DateTime), 0, NULL, 0)
SET IDENTITY_INSERT [iCCG].[QuestionAnswer] OFF
/****** Object:  Table [iCCG].[ProblemList]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [iCCG].[ProblemList](
	[ProblemListID] [int] IDENTITY(1,1) NOT NULL,
	[ProblemUniqueID] [int] NULL,
	[CaseID] [int] NULL,
	[Selected] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [int] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_ProblemList] PRIMARY KEY CLUSTERED 
(
	[ProblemListID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [iCCG].[SectionQuestionAnswer]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [iCCG].[SectionQuestionAnswer](
	[SectionQuestionAnswerID] [int] IDENTITY(1,1) NOT NULL,
	[GuidelineSectionID] [int] NULL,
	[QuestionAnswerID] [int] NULL,
	[Ordinal] [int] NULL,
	[SurveyID] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_SectionQuestionAnswer] PRIMARY KEY CLUSTERED 
(
	[SectionQuestionAnswerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [iCCG].[SectionQuestionAnswer] ON
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5686, 570, 6488, 1, 2, 1, CAST(0x00009EA00164C189 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5687, 570, 6489, 2, 2, 1, CAST(0x00009EA00164C192 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5688, 570, 6490, 3, 2, 1, CAST(0x00009EA00164C197 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5689, 570, 6491, 4, 2, 1, CAST(0x00009EA00164C19C AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5690, 570, 6492, 5, 2, 1, CAST(0x00009EA00164C19C AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5691, 570, 6493, 6, 2, 1, CAST(0x00009EA00164C1A0 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5692, 570, 6494, 7, 2, 1, CAST(0x00009EA00164C1A0 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5693, 570, 6495, 8, 2, 1, CAST(0x00009EA00164C1A5 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5694, 570, 6496, 9, 2, 1, CAST(0x00009EA00164C1A5 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5695, 570, 6497, 10, 2, 1, CAST(0x00009EA00164C1AA AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5696, 570, 6498, 11, 2, 1, CAST(0x00009EA00164C1AE AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5697, 570, 6499, 12, 2, 1, CAST(0x00009EA00164C1B3 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5698, 570, 6500, 13, 2, 1, CAST(0x00009EA00164C1B3 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5699, 570, 6501, 14, 2, 1, CAST(0x00009EA00164C1B3 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5700, 570, 6502, 15, 2, 1, CAST(0x00009EA00164C1B3 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5701, 570, 6503, 16, 2, 1, CAST(0x00009EA00164C1B8 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5702, 570, 6504, 17, 2, 1, CAST(0x00009EA00164C1B8 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5703, 570, 6505, 18, 2, 1, CAST(0x00009EA00164C1BC AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5704, 570, 6506, 19, 2, 1, CAST(0x00009EA00164C1BC AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5705, 570, 6507, 20, 2, 1, CAST(0x00009EA00164C1BC AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5706, 570, 6508, 21, 2, 1, CAST(0x00009EA00164C1C1 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5707, 570, 6509, 22, 2, 1, CAST(0x00009EA00164C1C1 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5708, 570, 6510, 23, 2, 1, CAST(0x00009EA00164C1C1 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5709, 570, 6511, 24, 2, 1, CAST(0x00009EA00164C1C6 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5710, 570, 6512, 25, 2, 1, CAST(0x00009EA00164C1C6 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5711, 570, 6513, 26, 2, 1, CAST(0x00009EA00164C1C6 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5712, 570, 6514, 27, 2, 1, CAST(0x00009EA00164C1CA AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5713, 570, 6515, 28, 2, 1, CAST(0x00009EA00164C1CA AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5714, 570, 6516, 29, 2, 1, CAST(0x00009EA00164C1CA AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5715, 570, 6517, 30, 2, 1, CAST(0x00009EA00164C1CF AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5716, 570, 6518, 31, 2, 1, CAST(0x00009EA00164C1CF AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5717, 570, 6519, 32, 2, 1, CAST(0x00009EA00164C1CF AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5718, 570, 6520, 33, 2, 1, CAST(0x00009EA00164C1D4 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5719, 570, 6521, 34, 2, 1, CAST(0x00009EA00164C1D4 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5720, 570, 6522, 35, 2, 1, CAST(0x00009EA00164C1D4 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5721, 570, 6523, 36, 2, 1, CAST(0x00009EA00164C1D4 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5722, 570, 6524, 37, 2, 1, CAST(0x00009EA00164C1D8 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5723, 573, 6525, 1, 2, 1, CAST(0x00009EA00164C20C AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5724, 573, 6526, 2, 2, 1, CAST(0x00009EA00164C21F AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5725, 573, 6527, 3, 2, 1, CAST(0x00009EA00164C223 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5726, 573, 6528, 4, 2, 1, CAST(0x00009EA00164C223 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5727, 573, 6529, 5, 2, 1, CAST(0x00009EA00164C228 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5728, 573, 6530, 6, 2, 1, CAST(0x00009EA00164C228 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5729, 573, 6531, 7, 2, 1, CAST(0x00009EA00164C22D AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5730, 573, 6532, 8, 2, 1, CAST(0x00009EA00164C22D AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5731, 573, 6533, 9, 2, 1, CAST(0x00009EA00164C231 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5732, 573, 6534, 10, 2, 1, CAST(0x00009EA00164C231 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5733, 574, 6535, 1, 2, 1, CAST(0x00009EA00164C23F AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5734, 574, 6536, 2, 2, 1, CAST(0x00009EA00164C24D AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5735, 574, 6537, 3, 2, 1, CAST(0x00009EA00164C252 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5736, 574, 6538, 4, 2, 1, CAST(0x00009EA00164C252 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5737, 574, 6539, 5, 2, 1, CAST(0x00009EA00164C257 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5738, 575, 6540, 1, 2, 1, CAST(0x00009EA00164C25B AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5739, 575, 6541, 2, 2, 1, CAST(0x00009EA00164C25B AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5740, 575, 6542, 3, 2, 1, CAST(0x00009EA00164C25B AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5741, 576, 6543, 1, 2, 1, CAST(0x00009EA00164C265 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5742, 576, 6544, 2, 2, 1, CAST(0x00009EA00164C265 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5743, 576, 6545, 3, 2, 1, CAST(0x00009EA00164C277 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5744, 576, 6546, 4, 2, 1, CAST(0x00009EA00164C277 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5745, 576, 6547, 5, 2, 1, CAST(0x00009EA00164C277 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5746, 576, 6548, 6, 2, 1, CAST(0x00009EA00164C281 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5747, 576, 6549, 7, 2, 1, CAST(0x00009EA00164C281 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5748, 576, 6550, 8, 2, 1, CAST(0x00009EA00164C281 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5749, 576, 6551, 9, 2, 1, CAST(0x00009EA00164C281 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5750, 576, 6552, 10, 2, 1, CAST(0x00009EA00164C286 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5751, 576, 6553, 11, 2, 1, CAST(0x00009EA00164C28A AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5752, 576, 6554, 12, 2, 1, CAST(0x00009EA00164C28A AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5753, 576, 6555, 13, 2, 1, CAST(0x00009EA00164C28A AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5754, 576, 6556, 14, 2, 1, CAST(0x00009EA00164C28F AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5755, 576, 6557, 15, 2, 1, CAST(0x00009EA00164C28F AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5756, 576, 6558, 16, 2, 1, CAST(0x00009EA00164C28F AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5757, 576, 6559, 17, 2, 1, CAST(0x00009EA00164C28F AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5758, 576, 6560, 18, 2, 1, CAST(0x00009EA00164C294 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5759, 576, 6561, 19, 2, 1, CAST(0x00009EA00164C294 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5760, 576, 6562, 20, 2, 1, CAST(0x00009EA00164C294 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5761, 576, 6563, 21, 2, 1, CAST(0x00009EA00164C294 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5762, 576, 6564, 22, 2, 1, CAST(0x00009EA00164C294 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5763, 576, 6565, 23, 2, 1, CAST(0x00009EA00164C294 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5764, 576, 6566, 24, 2, 1, CAST(0x00009EA00164C298 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5765, 576, 6567, 25, 2, 1, CAST(0x00009EA00164C298 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5766, 576, 6568, 26, 2, 1, CAST(0x00009EA00164C298 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5767, 576, 6569, 27, 2, 1, CAST(0x00009EA00164C298 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5768, 577, 6570, 1, 2, 1, CAST(0x00009EA00164C29D AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5769, 577, 6571, 2, 2, 1, CAST(0x00009EA00164C29D AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5770, 577, 6572, 3, 2, 1, CAST(0x00009EA00164C2A2 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5771, 577, 6573, 4, 2, 1, CAST(0x00009EA00164C2A2 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5772, 577, 6574, 5, 2, 1, CAST(0x00009EA00164C2A2 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5773, 577, 6575, 6, 2, 1, CAST(0x00009EA00164C2A2 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5774, 577, 6576, 7, 2, 1, CAST(0x00009EA00164C2A2 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5775, 577, 6577, 8, 2, 1, CAST(0x00009EA00164C2A6 AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5776, 577, 6578, 9, 2, 1, CAST(0x00009EA00164C2AB AS DateTime), 0, NULL, 0)
INSERT [iCCG].[SectionQuestionAnswer] ([SectionQuestionAnswerID], [GuidelineSectionID], [QuestionAnswerID], [Ordinal], [SurveyID], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5777, 577, 6579, 10, 2, 1, CAST(0x00009EA00164C2AB AS DateTime), 0, NULL, 0)
SET IDENTITY_INSERT [iCCG].[SectionQuestionAnswer] OFF
/****** Object:  Table [iCCG].[CaseAnswer]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[CaseAnswer](
	[CaseAnswerID] [int] IDENTITY(1,1) NOT NULL,
	[QuestionAnswerID] [int] NULL,
	[AssessmentID] [int] NULL,
	[TextValue] [varchar](max) NULL,
	[DateValue] [datetime] NULL,
	[DecimalValue] [decimal](18, 0) NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_CaseQuestionAnswer] PRIMARY KEY CLUSTERED 
(
	[CaseAnswerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[QuestionAnswerSetMember]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [iCCG].[QuestionAnswerSetMember](
	[QuestionAnswerSetMemberID] [int] IDENTITY(1,1) NOT NULL,
	[QuestionAnswerSetID] [int] NULL,
	[QuestionAnswerID] [int] NULL,
	[Weight] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_QuestionAnswerSetMember] PRIMARY KEY CLUSTERED 
(
	[QuestionAnswerSetMemberID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [iCCG].[CaseGoal]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [iCCG].[CaseGoal](
	[CaseGoalID] [int] IDENTITY(1,1) NOT NULL,
	[ProblemListID] [int] NULL,
	[GoalUniqueID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_CaseGoal] PRIMARY KEY CLUSTERED 
(
	[CaseGoalID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [iCCG].[CaseOutcome]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [iCCG].[CaseOutcome](
	[CaseOutcomeID] [int] IDENTITY(1,1) NOT NULL,
	[OutcomeUniqueID] [int] NULL,
	[CaseGoalID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_CaseOutcome] PRIMARY KEY CLUSTERED 
(
	[CaseOutcomeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [iCCG].[CaseIntervention]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [iCCG].[CaseIntervention](
	[CaseInterventionID] [int] IDENTITY(1,1) NOT NULL,
	[InterventionUniqueID] [int] NULL,
	[CaseGoalID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_CaseIntervention] PRIMARY KEY CLUSTERED 
(
	[CaseInterventionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [iCCG].[CaseBarrier]    Script Date: 03/08/2011 14:24:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [iCCG].[CaseBarrier](
	[CaseBarrierID] [int] IDENTITY(1,1) NOT NULL,
	[BarrierUniqueID] [int] NULL,
	[CaseGoalID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_CaseBarrier] PRIMARY KEY CLUSTERED 
(
	[CaseBarrierID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_Answer_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[Answer] ADD  CONSTRAINT [DF_Answer_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_AnswerProblemRef_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[AnswerProblemRef] ADD  CONSTRAINT [DF_AnswerProblemRef_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_AnswerQuestionRef_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[AnswerQuestionRef] ADD  CONSTRAINT [DF_AnswerQuestionRef_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_AppUser_ChangedPassword]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[AppUser] ADD  CONSTRAINT [DF_AppUser_ChangedPassword]  DEFAULT ((0)) FOR [ChangedPassword]
GO
/****** Object:  Default [DF_AppUser_UnsuccesfulAttempts]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[AppUser] ADD  CONSTRAINT [DF_AppUser_UnsuccesfulAttempts]  DEFAULT ((0)) FOR [UnsuccessfulAttempts]
GO
/****** Object:  Default [DF_AppUser_Active]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[AppUser] ADD  CONSTRAINT [DF_AppUser_Active]  DEFAULT ((0)) FOR [Active]
GO
/****** Object:  Default [DF_AppUser_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[AppUser] ADD  CONSTRAINT [DF_AppUser_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_Barrier_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[Barrier] ADD  CONSTRAINT [DF_Barrier_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_Case_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[Case] ADD  CONSTRAINT [DF_Case_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_CaseAnswer_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[CaseAnswer] ADD  CONSTRAINT [DF_CaseAnswer_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_CaseBarrier_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[CaseBarrier] ADD  CONSTRAINT [DF_CaseBarrier_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_CaseGoal_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[CaseGoal] ADD  CONSTRAINT [DF_CaseGoal_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_CaseIntervention_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[CaseIntervention] ADD  CONSTRAINT [DF_CaseIntervention_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_CaseOutcome_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[CaseOutcome] ADD  CONSTRAINT [DF_CaseOutcome_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_CaseProgram_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[CaseProgram] ADD  CONSTRAINT [DF_CaseProgram_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_Goal_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[Goal] ADD  CONSTRAINT [DF_Goal_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_GoalBarrier_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[GoalBarrier] ADD  CONSTRAINT [DF_GoalBarrier_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_GoalIntervention_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[GoalIntervention] ADD  CONSTRAINT [DF_GoalIntervention_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_GoalOutcome_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[GoalOutcome] ADD  CONSTRAINT [DF_GoalOutcome_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_GoalProblem_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[GoalProblem] ADD  CONSTRAINT [DF_GoalProblem_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_GuidelineSection_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[GuidelineSection] ADD  CONSTRAINT [DF_GuidelineSection_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_Intervention_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[Intervention] ADD  CONSTRAINT [DF_Intervention_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_Note_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[Note] ADD  CONSTRAINT [DF_Note_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_Outcome_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[Outcome] ADD  CONSTRAINT [DF_Outcome_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_PatientMedicine_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[PatientMedicine] ADD  CONSTRAINT [DF_PatientMedicine_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_Problem_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[Problem] ADD  CONSTRAINT [DF_Problem_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_ProblemList_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[ProblemList] ADD  CONSTRAINT [DF_ProblemList_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_Program_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[Program] ADD  CONSTRAINT [DF_Program_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_ProgramGuideline_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[ProgramGuideline] ADD  CONSTRAINT [DF_ProgramGuideline_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_Question_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[Question] ADD  CONSTRAINT [DF_Question_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_QuestionAnswer_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[QuestionAnswer] ADD  CONSTRAINT [DF_QuestionAnswer_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_QuestionAnswerSet_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[QuestionAnswerSet] ADD  CONSTRAINT [DF_QuestionAnswerSet_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_QuestionAnswerSetMember_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[QuestionAnswerSetMember] ADD  CONSTRAINT [DF_QuestionAnswerSetMember_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_RefAnswerType_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[RefAnswerType] ADD  CONSTRAINT [DF_RefAnswerType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_RefCaseStatusType_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[RefCaseStatusType] ADD  CONSTRAINT [DF_RefCaseStatusType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_RefClosureReason_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[RefClosureReason] ADD  CONSTRAINT [DF_RefClosureReason_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_RefDuration_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[RefDuration] ADD  CONSTRAINT [DF_RefDuration_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_RefFrequency_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[RefFrequency] ADD  CONSTRAINT [DF_RefFrequency_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_RefInterventionType_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[RefInterventionType] ADD  CONSTRAINT [DF_RefInterventionType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_RefQuestionLogicType_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[RefQuestionLogicType] ADD  CONSTRAINT [DF_RefQuestionLogicType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_RefQuestionType_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[RefQuestionType] ADD  CONSTRAINT [DF_RefQuestionType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_RefRoute_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[RefRoute] ADD  CONSTRAINT [DF_RefRoute_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_RefSectionType_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[RefSectionType] ADD  CONSTRAINT [DF_RefSectionType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_SectionQuestionAnswer_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[SectionQuestionAnswer] ADD  CONSTRAINT [DF_SectionQuestionAnswer_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_Survey_CreatedDate]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[Survey] ADD  CONSTRAINT [DF_Survey_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  ForeignKey [FK_Answer_RefAnswerType]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[Answer]  WITH CHECK ADD  CONSTRAINT [FK_Answer_RefAnswerType] FOREIGN KEY([TypeID])
REFERENCES [iCCG].[RefAnswerType] ([AnswerTypeID])
GO
ALTER TABLE [iCCG].[Answer] CHECK CONSTRAINT [FK_Answer_RefAnswerType]
GO
/****** Object:  ForeignKey [FK_Assessment_Case]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[Assessment]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Case] FOREIGN KEY([CaseID])
REFERENCES [iCCG].[Case] ([CaseID])
GO
ALTER TABLE [iCCG].[Assessment] CHECK CONSTRAINT [FK_Assessment_Case]
GO
/****** Object:  ForeignKey [FK_Assessment_ProgramGuideline]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[Assessment]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_ProgramGuideline] FOREIGN KEY([ProgramGuidelineID])
REFERENCES [iCCG].[ProgramGuideline] ([ProgramGuidelineID])
GO
ALTER TABLE [iCCG].[Assessment] CHECK CONSTRAINT [FK_Assessment_ProgramGuideline]
GO
/****** Object:  ForeignKey [FK_Case_RefCaseStatusType]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[Case]  WITH CHECK ADD  CONSTRAINT [FK_Case_RefCaseStatusType] FOREIGN KEY([StatusID])
REFERENCES [iCCG].[RefCaseStatusType] ([CaseStatusTypeID])
GO
ALTER TABLE [iCCG].[Case] CHECK CONSTRAINT [FK_Case_RefCaseStatusType]
GO
/****** Object:  ForeignKey [FK_Case_RefClosureReason]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[Case]  WITH CHECK ADD  CONSTRAINT [FK_Case_RefClosureReason] FOREIGN KEY([ClosureReasonID])
REFERENCES [iCCG].[RefClosureReason] ([ClosureReasonID])
GO
ALTER TABLE [iCCG].[Case] CHECK CONSTRAINT [FK_Case_RefClosureReason]
GO
/****** Object:  ForeignKey [FK_CaseAnswer_Assessment]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[CaseAnswer]  WITH CHECK ADD  CONSTRAINT [FK_CaseAnswer_Assessment] FOREIGN KEY([AssessmentID])
REFERENCES [iCCG].[Assessment] ([AssessmentID])
GO
ALTER TABLE [iCCG].[CaseAnswer] CHECK CONSTRAINT [FK_CaseAnswer_Assessment]
GO
/****** Object:  ForeignKey [FK_CaseAnswer_QuestionAnswer]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[CaseAnswer]  WITH CHECK ADD  CONSTRAINT [FK_CaseAnswer_QuestionAnswer] FOREIGN KEY([QuestionAnswerID])
REFERENCES [iCCG].[QuestionAnswer] ([QuestionAnswerID])
GO
ALTER TABLE [iCCG].[CaseAnswer] CHECK CONSTRAINT [FK_CaseAnswer_QuestionAnswer]
GO
/****** Object:  ForeignKey [FK_CaseBarrier_CaseGoal]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[CaseBarrier]  WITH CHECK ADD  CONSTRAINT [FK_CaseBarrier_CaseGoal] FOREIGN KEY([CaseGoalID])
REFERENCES [iCCG].[CaseGoal] ([CaseGoalID])
GO
ALTER TABLE [iCCG].[CaseBarrier] CHECK CONSTRAINT [FK_CaseBarrier_CaseGoal]
GO
/****** Object:  ForeignKey [FK_CaseGoal_ProblemList]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[CaseGoal]  WITH CHECK ADD  CONSTRAINT [FK_CaseGoal_ProblemList] FOREIGN KEY([ProblemListID])
REFERENCES [iCCG].[ProblemList] ([ProblemListID])
GO
ALTER TABLE [iCCG].[CaseGoal] CHECK CONSTRAINT [FK_CaseGoal_ProblemList]
GO
/****** Object:  ForeignKey [FK_CaseIntervention_CaseGoal]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[CaseIntervention]  WITH CHECK ADD  CONSTRAINT [FK_CaseIntervention_CaseGoal] FOREIGN KEY([CaseGoalID])
REFERENCES [iCCG].[CaseGoal] ([CaseGoalID])
GO
ALTER TABLE [iCCG].[CaseIntervention] CHECK CONSTRAINT [FK_CaseIntervention_CaseGoal]
GO
/****** Object:  ForeignKey [FK_CaseOutcome_CaseGoal]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[CaseOutcome]  WITH CHECK ADD  CONSTRAINT [FK_CaseOutcome_CaseGoal] FOREIGN KEY([CaseGoalID])
REFERENCES [iCCG].[CaseGoal] ([CaseGoalID])
GO
ALTER TABLE [iCCG].[CaseOutcome] CHECK CONSTRAINT [FK_CaseOutcome_CaseGoal]
GO
/****** Object:  ForeignKey [FK_CaseProgram_Case]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[CaseProgram]  WITH CHECK ADD  CONSTRAINT [FK_CaseProgram_Case] FOREIGN KEY([CaseID])
REFERENCES [iCCG].[Case] ([CaseID])
GO
ALTER TABLE [iCCG].[CaseProgram] CHECK CONSTRAINT [FK_CaseProgram_Case]
GO
/****** Object:  ForeignKey [FK_CaseProgram_Program]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[CaseProgram]  WITH CHECK ADD  CONSTRAINT [FK_CaseProgram_Program] FOREIGN KEY([ProgramID])
REFERENCES [iCCG].[Program] ([ProgramID])
GO
ALTER TABLE [iCCG].[CaseProgram] CHECK CONSTRAINT [FK_CaseProgram_Program]
GO
/****** Object:  ForeignKey [GoalBarrier_BarrierID_FK]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[GoalBarrier]  WITH CHECK ADD  CONSTRAINT [GoalBarrier_BarrierID_FK] FOREIGN KEY([BarrierID])
REFERENCES [iCCG].[Barrier] ([BarrierID])
GO
ALTER TABLE [iCCG].[GoalBarrier] CHECK CONSTRAINT [GoalBarrier_BarrierID_FK]
GO
/****** Object:  ForeignKey [GoalBarrier_GoalID_FK]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[GoalBarrier]  WITH CHECK ADD  CONSTRAINT [GoalBarrier_GoalID_FK] FOREIGN KEY([GoalID])
REFERENCES [iCCG].[Goal] ([GoalID])
GO
ALTER TABLE [iCCG].[GoalBarrier] CHECK CONSTRAINT [GoalBarrier_GoalID_FK]
GO
/****** Object:  ForeignKey [FK_GoalIntervention_Intervention]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[GoalIntervention]  WITH CHECK ADD  CONSTRAINT [FK_GoalIntervention_Intervention] FOREIGN KEY([InterventionID])
REFERENCES [iCCG].[Intervention] ([InterventionID])
GO
ALTER TABLE [iCCG].[GoalIntervention] CHECK CONSTRAINT [FK_GoalIntervention_Intervention]
GO
/****** Object:  ForeignKey [GoalIntervention_GoalID_FK]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[GoalIntervention]  WITH CHECK ADD  CONSTRAINT [GoalIntervention_GoalID_FK] FOREIGN KEY([GoalID])
REFERENCES [iCCG].[Goal] ([GoalID])
GO
ALTER TABLE [iCCG].[GoalIntervention] CHECK CONSTRAINT [GoalIntervention_GoalID_FK]
GO
/****** Object:  ForeignKey [GoalOutcome_GoalID_FK]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[GoalOutcome]  WITH CHECK ADD  CONSTRAINT [GoalOutcome_GoalID_FK] FOREIGN KEY([GoalID])
REFERENCES [iCCG].[Goal] ([GoalID])
GO
ALTER TABLE [iCCG].[GoalOutcome] CHECK CONSTRAINT [GoalOutcome_GoalID_FK]
GO
/****** Object:  ForeignKey [GoalOutcome_OutcomeID_FK]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[GoalOutcome]  WITH CHECK ADD  CONSTRAINT [GoalOutcome_OutcomeID_FK] FOREIGN KEY([OutcomeID])
REFERENCES [iCCG].[Outcome] ([OutcomeID])
GO
ALTER TABLE [iCCG].[GoalOutcome] CHECK CONSTRAINT [GoalOutcome_OutcomeID_FK]
GO
/****** Object:  ForeignKey [GoalProblem_GoalID_FK]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[GoalProblem]  WITH CHECK ADD  CONSTRAINT [GoalProblem_GoalID_FK] FOREIGN KEY([GoalID])
REFERENCES [iCCG].[Goal] ([GoalID])
GO
ALTER TABLE [iCCG].[GoalProblem] CHECK CONSTRAINT [GoalProblem_GoalID_FK]
GO
/****** Object:  ForeignKey [GoalProblem_ProblemID_FK]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[GoalProblem]  WITH CHECK ADD  CONSTRAINT [GoalProblem_ProblemID_FK] FOREIGN KEY([ProblemID])
REFERENCES [iCCG].[Problem] ([ProblemID])
GO
ALTER TABLE [iCCG].[GoalProblem] CHECK CONSTRAINT [GoalProblem_ProblemID_FK]
GO
/****** Object:  ForeignKey [FK_GuidelineSection_Guideline]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[GuidelineSection]  WITH CHECK ADD  CONSTRAINT [FK_GuidelineSection_Guideline] FOREIGN KEY([GuidelineID])
REFERENCES [iCCG].[Guideline] ([GuidelineID])
GO
ALTER TABLE [iCCG].[GuidelineSection] CHECK CONSTRAINT [FK_GuidelineSection_Guideline]
GO
/****** Object:  ForeignKey [FK_GuidelineSection_RefSectionType]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[GuidelineSection]  WITH CHECK ADD  CONSTRAINT [FK_GuidelineSection_RefSectionType] FOREIGN KEY([TypeID])
REFERENCES [iCCG].[RefSectionType] ([SectionTypeID])
GO
ALTER TABLE [iCCG].[GuidelineSection] CHECK CONSTRAINT [FK_GuidelineSection_RefSectionType]
GO
/****** Object:  ForeignKey [FK_Intervention_RefInterventionType1]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[Intervention]  WITH CHECK ADD  CONSTRAINT [FK_Intervention_RefInterventionType1] FOREIGN KEY([TypeID])
REFERENCES [iCCG].[RefInterventionType] ([InterventionTypeID])
GO
ALTER TABLE [iCCG].[Intervention] CHECK CONSTRAINT [FK_Intervention_RefInterventionType1]
GO
/****** Object:  ForeignKey [FK_PatientMedicine_RefDuration]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[PatientMedicine]  WITH CHECK ADD  CONSTRAINT [FK_PatientMedicine_RefDuration] FOREIGN KEY([DurationID])
REFERENCES [iCCG].[RefDuration] ([DurationID])
GO
ALTER TABLE [iCCG].[PatientMedicine] CHECK CONSTRAINT [FK_PatientMedicine_RefDuration]
GO
/****** Object:  ForeignKey [FK_PatientMedicine_RefFrequency]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[PatientMedicine]  WITH CHECK ADD  CONSTRAINT [FK_PatientMedicine_RefFrequency] FOREIGN KEY([FrequencyID])
REFERENCES [iCCG].[RefFrequency] ([FrequencyID])
GO
ALTER TABLE [iCCG].[PatientMedicine] CHECK CONSTRAINT [FK_PatientMedicine_RefFrequency]
GO
/****** Object:  ForeignKey [FK_PatientMedicine_RefRoute]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[PatientMedicine]  WITH CHECK ADD  CONSTRAINT [FK_PatientMedicine_RefRoute] FOREIGN KEY([RouteID])
REFERENCES [iCCG].[RefRoute] ([RouteID])
GO
ALTER TABLE [iCCG].[PatientMedicine] CHECK CONSTRAINT [FK_PatientMedicine_RefRoute]
GO
/****** Object:  ForeignKey [FK_ProblemList_Case]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[ProblemList]  WITH CHECK ADD  CONSTRAINT [FK_ProblemList_Case] FOREIGN KEY([CaseID])
REFERENCES [iCCG].[Case] ([CaseID])
GO
ALTER TABLE [iCCG].[ProblemList] CHECK CONSTRAINT [FK_ProblemList_Case]
GO
/****** Object:  ForeignKey [FK_ProgramGuideline_Guideline]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[ProgramGuideline]  WITH CHECK ADD  CONSTRAINT [FK_ProgramGuideline_Guideline] FOREIGN KEY([GuidelineID])
REFERENCES [iCCG].[Guideline] ([GuidelineID])
GO
ALTER TABLE [iCCG].[ProgramGuideline] CHECK CONSTRAINT [FK_ProgramGuideline_Guideline]
GO
/****** Object:  ForeignKey [FK_ProgramGuideline_Program]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[ProgramGuideline]  WITH CHECK ADD  CONSTRAINT [FK_ProgramGuideline_Program] FOREIGN KEY([ProgramID])
REFERENCES [iCCG].[Program] ([ProgramID])
GO
ALTER TABLE [iCCG].[ProgramGuideline] CHECK CONSTRAINT [FK_ProgramGuideline_Program]
GO
/****** Object:  ForeignKey [FK_Question_RefQuestionType]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_RefQuestionType] FOREIGN KEY([TypeID])
REFERENCES [iCCG].[RefQuestionType] ([QuestionTypeID])
GO
ALTER TABLE [iCCG].[Question] CHECK CONSTRAINT [FK_Question_RefQuestionType]
GO
/****** Object:  ForeignKey [FK_QuestionAnswer_Answer]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[QuestionAnswer]  WITH CHECK ADD  CONSTRAINT [FK_QuestionAnswer_Answer] FOREIGN KEY([AnswerID])
REFERENCES [iCCG].[Answer] ([AnswerID])
GO
ALTER TABLE [iCCG].[QuestionAnswer] CHECK CONSTRAINT [FK_QuestionAnswer_Answer]
GO
/****** Object:  ForeignKey [FK_QuestionAnswer_Question]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[QuestionAnswer]  WITH CHECK ADD  CONSTRAINT [FK_QuestionAnswer_Question] FOREIGN KEY([QuestionID])
REFERENCES [iCCG].[Question] ([QuestionID])
GO
ALTER TABLE [iCCG].[QuestionAnswer] CHECK CONSTRAINT [FK_QuestionAnswer_Question]
GO
/****** Object:  ForeignKey [FK_QuestionAnswerSet_Problem]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[QuestionAnswerSet]  WITH CHECK ADD  CONSTRAINT [FK_QuestionAnswerSet_Problem] FOREIGN KEY([TargetProblemID])
REFERENCES [iCCG].[Problem] ([ProblemID])
GO
ALTER TABLE [iCCG].[QuestionAnswerSet] CHECK CONSTRAINT [FK_QuestionAnswerSet_Problem]
GO
/****** Object:  ForeignKey [FK_QuestionAnswerSet_RefQuestionLogic]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[QuestionAnswerSet]  WITH CHECK ADD  CONSTRAINT [FK_QuestionAnswerSet_RefQuestionLogic] FOREIGN KEY([QuestionLogicID])
REFERENCES [iCCG].[RefQuestionLogicType] ([QuestionLogicTypeID])
GO
ALTER TABLE [iCCG].[QuestionAnswerSet] CHECK CONSTRAINT [FK_QuestionAnswerSet_RefQuestionLogic]
GO
/****** Object:  ForeignKey [FK_QuestionAnswerSetMember_QuestionAnswer]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[QuestionAnswerSetMember]  WITH CHECK ADD  CONSTRAINT [FK_QuestionAnswerSetMember_QuestionAnswer] FOREIGN KEY([QuestionAnswerID])
REFERENCES [iCCG].[QuestionAnswer] ([QuestionAnswerID])
GO
ALTER TABLE [iCCG].[QuestionAnswerSetMember] CHECK CONSTRAINT [FK_QuestionAnswerSetMember_QuestionAnswer]
GO
/****** Object:  ForeignKey [FK_QuestionAnswerSetMember_QuestionAnswerSet]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[QuestionAnswerSetMember]  WITH CHECK ADD  CONSTRAINT [FK_QuestionAnswerSetMember_QuestionAnswerSet] FOREIGN KEY([QuestionAnswerSetID])
REFERENCES [iCCG].[QuestionAnswerSet] ([QuestionAnswerSetID])
GO
ALTER TABLE [iCCG].[QuestionAnswerSetMember] CHECK CONSTRAINT [FK_QuestionAnswerSetMember_QuestionAnswerSet]
GO
/****** Object:  ForeignKey [FK_SectionQuestionAnswer_GuidelineSection]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[SectionQuestionAnswer]  WITH CHECK ADD  CONSTRAINT [FK_SectionQuestionAnswer_GuidelineSection] FOREIGN KEY([GuidelineSectionID])
REFERENCES [iCCG].[GuidelineSection] ([GuidelineSectionID])
GO
ALTER TABLE [iCCG].[SectionQuestionAnswer] CHECK CONSTRAINT [FK_SectionQuestionAnswer_GuidelineSection]
GO
/****** Object:  ForeignKey [FK_SectionQuestionAnswer_QuestionAnswer]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[SectionQuestionAnswer]  WITH CHECK ADD  CONSTRAINT [FK_SectionQuestionAnswer_QuestionAnswer] FOREIGN KEY([QuestionAnswerID])
REFERENCES [iCCG].[QuestionAnswer] ([QuestionAnswerID])
GO
ALTER TABLE [iCCG].[SectionQuestionAnswer] CHECK CONSTRAINT [FK_SectionQuestionAnswer_QuestionAnswer]
GO
/****** Object:  ForeignKey [FK_SectionQuestionAnswer_Survey]    Script Date: 03/08/2011 14:24:42 ******/
ALTER TABLE [iCCG].[SectionQuestionAnswer]  WITH CHECK ADD  CONSTRAINT [FK_SectionQuestionAnswer_Survey] FOREIGN KEY([SurveyID])
REFERENCES [iCCG].[Survey] ([SurveyID])
GO
ALTER TABLE [iCCG].[SectionQuestionAnswer] CHECK CONSTRAINT [FK_SectionQuestionAnswer_Survey]
GO
