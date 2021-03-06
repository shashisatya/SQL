--USE [master]
--GO

--/****** Object:  Database [iCCG]    Script Date: 02/03/2011 16:34:28 ******/
--IF EXISTS ( SELECT  name
--            FROM    sys.databases
--            WHERE   name = N'iCCG' ) 
--    DROP DATABASE [iCCG]
--GO

--USE [master]
--GO

--/****** Object:  Database [iCCG]    Script Date: 02/03/2011 16:34:28 ******/
--CREATE DATABASE [iCCG] ON PRIMARY 
--( NAME = N'iCCG', FILENAME = N'C:\Data\iCCG.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB ) LOG ON 
--( NAME = N'iCCG_log', FILENAME = N'C:\Data\iCCG_1.ldf' , SIZE = 5696KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
--GO

ALTER DATABASE [iCCG] SET COMPATIBILITY_LEVEL = 90
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled')) 
    BEGIN
        EXEC [iCCG].[dbo].[sp_fulltext_database] @action = 'enable'
    END
GO

ALTER DATABASE [iCCG] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [iCCG] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [iCCG] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [iCCG] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [iCCG] SET ARITHABORT OFF 
GO

ALTER DATABASE [iCCG] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [iCCG] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [iCCG] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [iCCG] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [iCCG] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [iCCG] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [iCCG] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [iCCG] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [iCCG] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [iCCG] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [iCCG] SET  DISABLE_BROKER 
GO

ALTER DATABASE [iCCG] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [iCCG] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [iCCG] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [iCCG] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [iCCG] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [iCCG] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [iCCG] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [iCCG] SET  READ_WRITE 
GO

ALTER DATABASE [iCCG] SET RECOVERY FULL 
GO

ALTER DATABASE [iCCG] SET  MULTI_USER 
GO

ALTER DATABASE [iCCG] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [iCCG] SET DB_CHAINING OFF 
GO

/****** Object:  User [iccg_user]    Script Date: 02/03/2011 15:54:39 ******/
CREATE USER [iccg_user] FOR LOGIN [iccg_user] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Role [iCCGUser]    Script Date: 02/03/2011 15:54:39 ******/
CREATE ROLE [iCCGUser] AUTHORIZATION [iccg_user]
GO
/****** Object:  Schema [iCCG]    Script Date: 02/03/2011 15:54:39 ******/
CREATE SCHEMA [iCCG] AUTHORIZATION [iCCGUser]
GO
/****** Object:  Table [iCCG].[Barrier]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[Barrier]
    (
     [BarrierID] [int] IDENTITY(1, 1)
                       NOT NULL
    ,[BarrierUniqueID] [int] NULL
    ,[BarrierText] [varchar](1000) NULL
    ,CONSTRAINT [Barrier_PK] PRIMARY KEY CLUSTERED ([BarrierID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[Outcome]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[Outcome]
    (
     [OutcomeID] [int] IDENTITY(1, 1)
                       NOT NULL
    ,[OutcomeUniqueID] [int] NOT NULL
    ,[OutcomeText] [varchar](1000) NULL
    ,CONSTRAINT [Outcome_PK] PRIMARY KEY CLUSTERED ([OutcomeID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[Note]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[Note]
    (
     [NoteID] [int] NOT NULL
    ,[NoteType] [nchar](10) NULL
    ,[ParentID] [int] NULL
    ,[NoteText] [varchar](MAX) NULL
    ,[Created] [datetime] NULL
    ,[CreatedBy] [varchar](50) NULL
    ,[Modified] [datetime] NULL
    ,[ModifiedBy] [varchar](50) NULL
    ,CONSTRAINT [PK_Note] PRIMARY KEY CLUSTERED ([NoteID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[Intervention]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[Intervention]
    (
     [InterventionID] [int] IDENTITY(1, 1)
                            NOT NULL
    ,[InterventionUniqueID] [int] NOT NULL
    ,[TypeID] [int] NULL
    ,[InterventionText] [varchar](1000) NULL
    ,CONSTRAINT [Intervention_PK] PRIMARY KEY CLUSTERED ([InterventionID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[Guideline]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[Guideline]
    (
     [GuidelineID] [int] NOT NULL
    ,[GuidelineTitle] [varchar](255) NULL
    ,[ProductCode] [varchar](50) NULL
    ,[Version] [varchar](50) NULL
    ,[ContentOwner] [varchar](50) NULL
    ,[HSIM] [varchar](50) NULL
    ,[GuidelineCode] [varchar](50) NULL
    ,[GuidelineType] [varchar](50) NULL
    ,[ChronicCondition] [varchar](50) NULL
    ,[GLOS] [varchar](255) NULL
    ,[GuidelineXML] [xml] NULL
    ,[GLOSXml] [xml] NULL
    ,[GLOSMin] [int] NULL
    ,[GLOSMax] [int] NULL
    ,[GLOSType] [varchar](50) NULL
    ,[VersionMajor] [int] NULL
    ,[VersionMinor] [int] NULL
    ,CONSTRAINT [PK_Guideline] PRIMARY KEY CLUSTERED ([GuidelineID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[Goal]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[Goal]
    (
     [GoalID] [int] NOT NULL
    ,[GoalUniqueID] [int] NOT NULL
    ,[GoalText] [varchar](1000) NULL
    ,CONSTRAINT [Goal_PK] PRIMARY KEY CLUSTERED ([GoalID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[Problem]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[Problem]
    (
     [ProblemID] [int] IDENTITY(1, 1)
                       NOT NULL
    ,[ProblemUniqueID] [int] NULL
    ,[ProblemText] [varchar](1000) NULL
    ,CONSTRAINT [Problem_PK] PRIMARY KEY CLUSTERED ([ProblemID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[Program]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[Program]
    (
     [ProgramID] [int] NOT NULL
    ,[Description] [varchar](255) NULL
    ,CONSTRAINT [PK_Program] PRIMARY KEY CLUSTERED ([ProgramID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[RefFrequency]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[RefFrequency]
    (
     [FrequencyID] [int] IDENTITY(1, 1)
                         NOT NULL
    ,[FrequencyName] [varchar](50) NULL
    ,CONSTRAINT [PK_RefFrequency] PRIMARY KEY CLUSTERED ([FrequencyID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[RefClosureReason]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[RefClosureReason]
    (
     [ClosureReasonID] [int] IDENTITY(1, 1)
                             NOT NULL
    ,[ClosureReasonName] [varchar](255) NULL
    ,CONSTRAINT [PK_RefClosureReason] PRIMARY KEY CLUSTERED ([ClosureReasonID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[RefCaseStatusType]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[RefCaseStatusType]
    (
     [CaseStatusTypeID] [int] IDENTITY(1, 1)
                              NOT NULL
    ,[CaseStatusTypeName] [varchar](50) NULL
    ,CONSTRAINT [PK_RefCaseStatusType] PRIMARY KEY CLUSTERED ([CaseStatusTypeID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[RefCaseGLSectionStatusType]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[RefCaseGLSectionStatusType]
    (
     [CaseGLSectionStatusTypeID] [int] IDENTITY(1, 1)
                                       NOT NULL
    ,[CaseGLSectionStatusTypeName] [varchar](50) NULL
    ,CONSTRAINT [PK_RefCaseGLSectionStatusType] PRIMARY KEY CLUSTERED ([CaseGLSectionStatusTypeID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[RefAnswerType]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[RefAnswerType]
    (
     [AnswerTypeID] [int] IDENTITY(1, 1)
                          NOT NULL
    ,[AnswerTypeName] [varchar](50) NULL
    ,CONSTRAINT [PK_RefAnswerType] PRIMARY KEY CLUSTERED ([AnswerTypeID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[Survey]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[Survey]
    (
     [SurveyID] [int] NOT NULL
    ,[SurveyName] [varchar](50) NULL
    ,CONSTRAINT [PK_Survey] PRIMARY KEY CLUSTERED ([SurveyID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[Section]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[Section]
    (
     [SectionID] [int] NOT NULL
    ,[HSIM] [varchar](50) NULL
    ,[ProductCode] [varchar](50) NULL
    ,[ContentVersion] [varchar](50) NULL
    ,[ContentOwner] [varchar](50) NULL
    ,[SectionPath] [varchar](500) NULL
    ,[SectionXml] [xml] NULL
    ,[ProgressionPeriod] [varchar](50) NULL
    ,[ProgressionBehavior] [varchar](50) NULL
    ,[DisplayOrder] [int] NULL
    ,[VersionMajor] [int] NULL
    ,[VersionMinor] [int] NULL
    ,CONSTRAINT [PK_Section_1] PRIMARY KEY CLUSTERED ([SectionID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[RefSectionType]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[RefSectionType]
    (
     [SectionTypeID] [int] NOT NULL
    ,[SectionTypeName] [varchar](50) NULL
    ,CONSTRAINT [PK_RefSectionType] PRIMARY KEY CLUSTERED ([SectionTypeID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[RefRoute]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[RefRoute]
    (
     [RouteID] [int] IDENTITY(1, 1)
                     NOT NULL
    ,[RouteName] [varchar](15) NULL
    ,CONSTRAINT [PK_RefRoute] PRIMARY KEY CLUSTERED ([RouteID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[RefQuestionType]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[RefQuestionType]
    (
     [QuestionTypeID] [int] IDENTITY(1, 1)
                            NOT NULL
    ,[QuestionTypeName] [varchar](50) NULL
    ,[Description] [varchar](255) NULL
    ,CONSTRAINT [PK_RefQuestionType] PRIMARY KEY CLUSTERED ([QuestionTypeID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[RefQuestionLogicType]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[RefQuestionLogicType]
    (
     [QuestionLogicTypeID] [int] IDENTITY(1, 1)
                                 NOT NULL
    ,[QuestionLogicTypeName] [varchar](50) NULL
    ,CONSTRAINT [PK_RefQuestionLogic] PRIMARY KEY CLUSTERED ([QuestionLogicTypeID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[PatientMedicine]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[PatientMedicine]
    (
     [PatientMedicineID] [int] NOT NULL
    ,[PatientID] [int] NULL
    ,[MedicationName] [varchar](255) NULL
    ,[Dose] [varchar](15) NULL
    ,[RouteID] [int] NULL
    ,[FrequencyID] [int] NULL
    ,[Started] [date] NULL
    ,[Discontinued] [date] NULL
    ,CONSTRAINT [PK_PatientMedicine] PRIMARY KEY CLUSTERED ([PatientMedicineID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[RefInterventionType]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[RefInterventionType]
    (
     [InterventionTypeID] [int] IDENTITY(1, 1)
                                NOT NULL
    ,[InterventionTypeName] [varchar](50) NULL
    ,CONSTRAINT [PK_RefInterventionType] PRIMARY KEY CLUSTERED ([InterventionTypeID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[Question]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[Question]
    (
     [QuestionID] [int] NOT NULL
    ,[QuestionUniqueID] [int] NOT NULL
    ,[QuestionText] [varchar](MAX) NULL
    ,[CanPipe] [bit] NULL
    ,[CanForward] [bit] NULL
    ,[IsMandatory] [bit] NULL
    ,[XmlID] [varchar](50) NULL
    ,[XmlContent] [xml] NULL
    ,[TypeID] [int] NULL
    ,[Weight] [int] NULL
    ,CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED ([QuestionID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[QuestionAnswerSet]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [iCCG].[QuestionAnswerSet]
    (
     [QuestionAnswerSetID] [int] NOT NULL
    ,[QuestionLogicID] [int] NULL
    ,[TargetQuestionAnswerID] [int] NULL
    ,[TargetSectionID] [int] NULL
    ,[TargetProblemID] [int] NULL
    ,CONSTRAINT [PK_QuestionAnswerSet] PRIMARY KEY CLUSTERED ([QuestionAnswerSetID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
/****** Object:  Table [iCCG].[ProgramGuideline]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [iCCG].[ProgramGuideline]
    (
     [ProgramGuidelineID] [int] NOT NULL
    ,[ProgramID] [int] NULL
    ,[GuidelineID] [int] NULL
    ,CONSTRAINT [PK_ProgramGuideline] PRIMARY KEY CLUSTERED ([ProgramGuidelineID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
/****** Object:  Table [iCCG].[GoalProblem]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [iCCG].[GoalProblem]
    (
     [GoalProblemID] [int] IDENTITY(1, 1)
                           NOT NULL
    ,[GoalID] [int] NOT NULL
    ,[ProblemID] [int] NOT NULL
    ,CONSTRAINT [GoalProblem_PK] PRIMARY KEY CLUSTERED ([GoalProblemID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
/****** Object:  Table [iCCG].[GoalOutcome]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [iCCG].[GoalOutcome]
    (
     [GoalOutcomeID] [int] IDENTITY(1, 1)
                           NOT NULL
    ,[GoalID] [int] NOT NULL
    ,[OutcomeID] [int] NOT NULL
    ,CONSTRAINT [GoalOutcome_PK] PRIMARY KEY CLUSTERED ([GoalOutcomeID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
/****** Object:  Table [iCCG].[GoalIntervention]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [iCCG].[GoalIntervention]
    (
     [GoalInterventionID] [int] IDENTITY(1, 1)
                                NOT NULL
    ,[GoalID] [int] NOT NULL
    ,[InterventionID] [int] NOT NULL
    ,CONSTRAINT [GoalIntervention_PK] PRIMARY KEY CLUSTERED ([GoalInterventionID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
/****** Object:  Table [iCCG].[GoalBarrier]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [iCCG].[GoalBarrier]
    (
     [GoalBarrierID] [int] IDENTITY(1, 1)
                           NOT NULL
    ,[GoalID] [int] NOT NULL
    ,[BarrierID] [int] NOT NULL
    ,CONSTRAINT [GoalBarrier_PK] PRIMARY KEY CLUSTERED ([GoalBarrierID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
/****** Object:  Table [iCCG].[Case]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[Case]
    (
     [CaseID] [int] IDENTITY(1, 1)
                    NOT NULL
    ,[OriginalCaseNumber] [varchar](255) NULL
    ,[ProgramID] [int] NULL
    ,[PatientID] [int] NULL
    ,[CaseOwnerID] [int] NULL
    ,[ProviderID] [int] NULL
    ,[TypeID] [int] NULL
    ,[Identified] [datetime] NULL
    ,[Opened] [datetime] NULL
    ,[Closed] [datetime] NULL
    ,[ClosureReasonID] [int] NULL
    ,[StatusID] [int] NULL
    ,[Source] [varchar](255) NULL
    ,[Created] [datetime] NULL
    ,[CreatedBy] [int] NULL
    ,[Modified] [datetime] NULL
    ,[ModifiedBy] [int] NULL
    ,CONSTRAINT [PK_Case] PRIMARY KEY CLUSTERED ([CaseID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[GuidelineSection]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [iCCG].[GuidelineSection]
    (
     [GuidelineSectionID] [int] NOT NULL
    ,[GuidelineID] [int] NULL
    ,[SectionID] [int] NULL
    ,CONSTRAINT [PK_GuidelineSection] PRIMARY KEY CLUSTERED ([GuidelineSectionID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
/****** Object:  Table [iCCG].[Answer]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[Answer]
    (
     [AnswerID] [int] NOT NULL
    ,[AnswerUniqueID] [int] NOT NULL
    ,[AnswerText] [varchar](MAX) NULL
    ,[XmlID] [varchar](50) NULL
    ,[XmlContent] [xml] NULL
    ,[TypeID] [int] NULL
    ,CONSTRAINT [PK_Answer] PRIMARY KEY CLUSTERED ([AnswerID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[CaseGuideline]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [iCCG].[CaseGuideline]
    (
     [CaseGuidelineID] [int] NOT NULL
    ,[CaseID] [int] NULL
    ,[GuidelineID] [int] NULL
    ,CONSTRAINT [PK_CaseGuideline] PRIMARY KEY CLUSTERED ([CaseGuidelineID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
/****** Object:  Table [iCCG].[ProblemList]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [iCCG].[ProblemList]
    (
     [ProblemListID] [int] IDENTITY(1, 1)
                           NOT NULL
    ,[ProblemUniqueID] [int] NULL
    ,[CaseID] [int] NULL
    ,[Selected] [bit] NULL
    ,[Created] [datetime] NULL
    ,[CreatedBy] [int] NULL
    ,[Modified] [int] NULL
    ,[ModifiedBy] [int] NULL
    ,[Active] [bit] NULL
    ,CONSTRAINT [PK_ProblemList] PRIMARY KEY CLUSTERED ([ProblemListID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
/****** Object:  Table [iCCG].[QuestionAnswer]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[QuestionAnswer]
    (
     [QuestionAnswerID] [int] NOT NULL
    ,[QuestionID] [int] NULL
    ,[AnswerID] [int] NULL
    ,[ParentQuestionAnswerID] [int] NULL
    ,[Help] [varchar](MAX) NULL
    ,[Ordinal] [int] NULL
    ,CONSTRAINT [PK_QuestionAnswer] PRIMARY KEY CLUSTERED ([QuestionAnswerID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[CaseGuidelineSection]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [iCCG].[CaseGuidelineSection]
    (
     [CaseGuidelineSectionID] [int] IDENTITY(1, 1)
                                    NOT NULL
    ,[CaseGuidelineID] [int] NULL
    ,[SectionID] [int] NULL
    ,[Started] [datetime] NULL
    ,[Completed] [datetime] NULL
    ,[StatusID] [int] NULL
    ,[Created] [datetime] NULL
    ,[CreatedBy] [int] NULL
    ,[Modified] [datetime] NULL
    ,[ModifiedBy] [int] NULL
    ,CONSTRAINT [PK_CaseGuidelineSection] PRIMARY KEY CLUSTERED ([CaseGuidelineSectionID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
/****** Object:  Table [iCCG].[SectionQuestionAnswer]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [iCCG].[SectionQuestionAnswer]
    (
     [SectionQuestionAnswerID] [int] NOT NULL
    ,[SectionID] [int] NULL
    ,[QuestionAnswerID] [int] NULL
    ,[Ordinal] [int] NULL
    ,[SurveyID] [int] NULL
    ,CONSTRAINT [PK_SectionQuestionAnswer] PRIMARY KEY CLUSTERED ([SectionQuestionAnswerID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
/****** Object:  Table [iCCG].[QuestionAnswerSetMember]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [iCCG].[QuestionAnswerSetMember]
    (
     [QuestionAnswerSetMemberID] [int] NOT NULL
    ,[QuestionAnswerSetID] [int] NULL
    ,[QuestionAnswerID] [int] NULL
    ,[Weight] [int] NULL
    ,CONSTRAINT [PK_QuestionAnswerSetMember] PRIMARY KEY CLUSTERED ([QuestionAnswerSetMemberID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
/****** Object:  Table [iCCG].[CaseGoal]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [iCCG].[CaseGoal]
    (
     [CaseGoalID] [int] NOT NULL
    ,[ProblemListID] [int] NULL
    ,[GoalUniqueID] [int] NULL
    ,[Created] [datetime] NULL
    ,[CreatedBy] [int] NULL
    ,[Modified] [datetime] NULL
    ,[ModifiedBy] [int] NULL
    ,[Active] [bit] NULL
    ,CONSTRAINT [PK_CaseGoal] PRIMARY KEY CLUSTERED ([CaseGoalID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
/****** Object:  Table [iCCG].[CaseBarrier]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [iCCG].[CaseBarrier]
    (
     [CaseBarrierID] [int] NOT NULL
    ,[BarrierUniqueID] [int] NULL
    ,[CaseGoalID] [int] NULL
    ,[Created] [datetime] NULL
    ,[CreatedBy] [int] NULL
    ,[Modified] [datetime] NULL
    ,[ModifiedBy] [int] NULL
    ,[Active] [bit] NULL
    ,CONSTRAINT [PK_CaseBarrier] PRIMARY KEY CLUSTERED ([CaseBarrierID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
/****** Object:  Table [iCCG].[CaseAnswer]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[CaseAnswer]
    (
     [CaseAnswerID] [int] NOT NULL
    ,[CaseGuidelineSectionID] [int] NULL
    ,[QuestionAnswerID] [int] NULL
    ,[TextValue] [varchar](MAX) NULL
    ,[DateValue] [datetime] NULL
    ,[DecimalValue] [decimal](18, 0) NULL
    ,[Created] [datetime] NULL
    ,[CreatedBy] [int] NULL
    ,[Modified] [datetime] NULL
    ,[ModifiedBy] [int] NULL
    ,[Active] [bit] NULL
    ,CONSTRAINT [PK_CaseQuestionAnswer] PRIMARY KEY CLUSTERED ([CaseAnswerID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [iCCG].[CaseOutcome]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [iCCG].[CaseOutcome]
    (
     [CaseOutcomeID] [int] NOT NULL
    ,[OutcomeUniqueID] [int] NULL
    ,[CaseGoalID] [int] NULL
    ,[Created] [datetime] NULL
    ,[CreatedBy] [int] NULL
    ,[Modified] [datetime] NULL
    ,[ModifiedBy] [int] NULL
    ,[Active] [bit] NULL
    ,CONSTRAINT [PK_CaseOutcome] PRIMARY KEY CLUSTERED ([CaseOutcomeID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
/****** Object:  Table [iCCG].[CaseIntervention]    Script Date: 02/03/2011 15:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [iCCG].[CaseIntervention]
    (
     [CaseInterventionID] [int] NOT NULL
    ,[InterventionUniqueID] [int] NULL
    ,[CaseGoalID] [int] NULL
    ,[Created] [datetime] NULL
    ,[CreatedBy] [int] NULL
    ,[Modified] [datetime] NULL
    ,[ModifiedBy] [int] NULL
    ,[Active] [bit] NULL
    ,CONSTRAINT [PK_CaseIntervention] PRIMARY KEY CLUSTERED ([CaseInterventionID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Answer_RefAnswerType]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[Answer]  WITH CHECK ADD  CONSTRAINT [FK_Answer_RefAnswerType] FOREIGN KEY([TypeID])
REFERENCES [iCCG].[RefAnswerType] ([AnswerTypeID])
GO
ALTER TABLE [iCCG].[Answer] CHECK CONSTRAINT [FK_Answer_RefAnswerType]
GO
/****** Object:  ForeignKey [FK_CaseAnswer_CaseGuidelineSection]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[CaseAnswer]  WITH CHECK ADD  CONSTRAINT [FK_CaseAnswer_CaseGuidelineSection] FOREIGN KEY([CaseGuidelineSectionID])
REFERENCES [iCCG].[CaseGuidelineSection] ([CaseGuidelineSectionID])
GO
ALTER TABLE [iCCG].[CaseAnswer] CHECK CONSTRAINT [FK_CaseAnswer_CaseGuidelineSection]
GO
/****** Object:  ForeignKey [FK_CaseAnswer_QuestionAnswer]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[CaseAnswer]  WITH CHECK ADD  CONSTRAINT [FK_CaseAnswer_QuestionAnswer] FOREIGN KEY([QuestionAnswerID])
REFERENCES [iCCG].[QuestionAnswer] ([QuestionAnswerID])
GO
ALTER TABLE [iCCG].[CaseAnswer] CHECK CONSTRAINT [FK_CaseAnswer_QuestionAnswer]
GO
/****** Object:  ForeignKey [FK_CaseBarrier_CaseGoal]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[CaseBarrier]  WITH CHECK ADD  CONSTRAINT [FK_CaseBarrier_CaseGoal] FOREIGN KEY([CaseGoalID])
REFERENCES [iCCG].[CaseGoal] ([CaseGoalID])
GO
ALTER TABLE [iCCG].[CaseBarrier] CHECK CONSTRAINT [FK_CaseBarrier_CaseGoal]
GO
/****** Object:  ForeignKey [FK_CaseGoal_ProblemList]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[CaseGoal]  WITH CHECK ADD  CONSTRAINT [FK_CaseGoal_ProblemList] FOREIGN KEY([ProblemListID])
REFERENCES [iCCG].[ProblemList] ([ProblemListID])
GO
ALTER TABLE [iCCG].[CaseGoal] CHECK CONSTRAINT [FK_CaseGoal_ProblemList]
GO
/****** Object:  ForeignKey [FK_CaseGuideline_Case]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[CaseGuideline]  WITH CHECK ADD  CONSTRAINT [FK_CaseGuideline_Case] FOREIGN KEY([CaseID])
REFERENCES [iCCG].[Case] ([CaseID])
GO
ALTER TABLE [iCCG].[CaseGuideline] CHECK CONSTRAINT [FK_CaseGuideline_Case]
GO
/****** Object:  ForeignKey [FK_CaseGuideline_Guideline]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[CaseGuideline]  WITH CHECK ADD  CONSTRAINT [FK_CaseGuideline_Guideline] FOREIGN KEY([GuidelineID])
REFERENCES [iCCG].[Guideline] ([GuidelineID])
GO
ALTER TABLE [iCCG].[CaseGuideline] CHECK CONSTRAINT [FK_CaseGuideline_Guideline]
GO
/****** Object:  ForeignKey [FK_CaseGuidelineSection_CaseGuideline]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[CaseGuidelineSection]  WITH CHECK ADD  CONSTRAINT [FK_CaseGuidelineSection_CaseGuideline] FOREIGN KEY([CaseGuidelineID])
REFERENCES [iCCG].[CaseGuideline] ([CaseGuidelineID])
GO
ALTER TABLE [iCCG].[CaseGuidelineSection] CHECK CONSTRAINT [FK_CaseGuidelineSection_CaseGuideline]
GO
/****** Object:  ForeignKey [FK_CaseGuidelineSection_RefCaseGLSectionStatusType]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[CaseGuidelineSection]  WITH CHECK ADD  CONSTRAINT [FK_CaseGuidelineSection_RefCaseGLSectionStatusType] FOREIGN KEY([StatusID])
REFERENCES [iCCG].[RefCaseGLSectionStatusType] ([CaseGLSectionStatusTypeID])
GO
ALTER TABLE [iCCG].[CaseGuidelineSection] CHECK CONSTRAINT [FK_CaseGuidelineSection_RefCaseGLSectionStatusType]
GO
/****** Object:  ForeignKey [FK_CaseGuidelineSection_Section]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[CaseGuidelineSection]  WITH CHECK ADD  CONSTRAINT [FK_CaseGuidelineSection_Section] FOREIGN KEY([SectionID])
REFERENCES [iCCG].[Section] ([SectionID])
GO
ALTER TABLE [iCCG].[CaseGuidelineSection] CHECK CONSTRAINT [FK_CaseGuidelineSection_Section]
GO
/****** Object:  ForeignKey [FK_CaseIntervention_CaseGoal]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[CaseIntervention]  WITH CHECK ADD  CONSTRAINT [FK_CaseIntervention_CaseGoal] FOREIGN KEY([CaseGoalID])
REFERENCES [iCCG].[CaseGoal] ([CaseGoalID])
GO
ALTER TABLE [iCCG].[CaseIntervention] CHECK CONSTRAINT [FK_CaseIntervention_CaseGoal]
GO
/****** Object:  ForeignKey [FK_CaseOutcome_CaseGoal]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[CaseOutcome]  WITH CHECK ADD  CONSTRAINT [FK_CaseOutcome_CaseGoal] FOREIGN KEY([CaseGoalID])
REFERENCES [iCCG].[CaseGoal] ([CaseGoalID])
GO
ALTER TABLE [iCCG].[CaseOutcome] CHECK CONSTRAINT [FK_CaseOutcome_CaseGoal]
GO
/****** Object:  ForeignKey [FK_Case_Program]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[Case]  WITH CHECK ADD  CONSTRAINT [FK_Case_Program] FOREIGN KEY([ProgramID])
REFERENCES [iCCG].[Program] ([ProgramID])
GO
ALTER TABLE [iCCG].[Case] CHECK CONSTRAINT [FK_Case_Program]
GO
/****** Object:  ForeignKey [FK_Case_RefCaseStatusType]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[Case]  WITH CHECK ADD  CONSTRAINT [FK_Case_RefCaseStatusType] FOREIGN KEY([StatusID])
REFERENCES [iCCG].[RefCaseStatusType] ([CaseStatusTypeID])
GO
ALTER TABLE [iCCG].[Case] CHECK CONSTRAINT [FK_Case_RefCaseStatusType]
GO
/****** Object:  ForeignKey [FK_Case_RefClosureReason]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[Case]  WITH CHECK ADD  CONSTRAINT [FK_Case_RefClosureReason] FOREIGN KEY([ClosureReasonID])
REFERENCES [iCCG].[RefClosureReason] ([ClosureReasonID])
GO
ALTER TABLE [iCCG].[Case] CHECK CONSTRAINT [FK_Case_RefClosureReason]
GO
/****** Object:  ForeignKey [GoalBarrier_BarrierID_FK]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[GoalBarrier]  WITH CHECK ADD  CONSTRAINT [GoalBarrier_BarrierID_FK] FOREIGN KEY([BarrierID])
REFERENCES [iCCG].[Barrier] ([BarrierID])
GO
ALTER TABLE [iCCG].[GoalBarrier] CHECK CONSTRAINT [GoalBarrier_BarrierID_FK]
GO
/****** Object:  ForeignKey [GoalBarrier_GoalID_FK]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[GoalBarrier]  WITH CHECK ADD  CONSTRAINT [GoalBarrier_GoalID_FK] FOREIGN KEY([GoalID])
REFERENCES [iCCG].[Goal] ([GoalID])
GO
ALTER TABLE [iCCG].[GoalBarrier] CHECK CONSTRAINT [GoalBarrier_GoalID_FK]
GO
/****** Object:  ForeignKey [GoalIntervention_GoalID_FK]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[GoalIntervention]  WITH CHECK ADD  CONSTRAINT [GoalIntervention_GoalID_FK] FOREIGN KEY([GoalID])
REFERENCES [iCCG].[Goal] ([GoalID])
GO
ALTER TABLE [iCCG].[GoalIntervention] CHECK CONSTRAINT [GoalIntervention_GoalID_FK]
GO
/****** Object:  ForeignKey [GoalIntervention_InterventionID_FK]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[GoalIntervention]  WITH CHECK ADD  CONSTRAINT [GoalIntervention_InterventionID_FK] FOREIGN KEY([InterventionID])
REFERENCES [iCCG].[Intervention] ([InterventionID])
GO
ALTER TABLE [iCCG].[GoalIntervention] CHECK CONSTRAINT [GoalIntervention_InterventionID_FK]
GO
/****** Object:  ForeignKey [GoalOutcome_GoalID_FK]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[GoalOutcome]  WITH CHECK ADD  CONSTRAINT [GoalOutcome_GoalID_FK] FOREIGN KEY([GoalID])
REFERENCES [iCCG].[Goal] ([GoalID])
GO
ALTER TABLE [iCCG].[GoalOutcome] CHECK CONSTRAINT [GoalOutcome_GoalID_FK]
GO
/****** Object:  ForeignKey [GoalOutcome_OutcomeID_FK]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[GoalOutcome]  WITH CHECK ADD  CONSTRAINT [GoalOutcome_OutcomeID_FK] FOREIGN KEY([OutcomeID])
REFERENCES [iCCG].[Outcome] ([OutcomeID])
GO
ALTER TABLE [iCCG].[GoalOutcome] CHECK CONSTRAINT [GoalOutcome_OutcomeID_FK]
GO
/****** Object:  ForeignKey [GoalProblem_GoalID_FK]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[GoalProblem]  WITH CHECK ADD  CONSTRAINT [GoalProblem_GoalID_FK] FOREIGN KEY([GoalID])
REFERENCES [iCCG].[Goal] ([GoalID])
GO
ALTER TABLE [iCCG].[GoalProblem] CHECK CONSTRAINT [GoalProblem_GoalID_FK]
GO
/****** Object:  ForeignKey [GoalProblem_ProblemID_FK]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[GoalProblem]  WITH CHECK ADD  CONSTRAINT [GoalProblem_ProblemID_FK] FOREIGN KEY([ProblemID])
REFERENCES [iCCG].[Problem] ([ProblemID])
GO
ALTER TABLE [iCCG].[GoalProblem] CHECK CONSTRAINT [GoalProblem_ProblemID_FK]
GO
/****** Object:  ForeignKey [FK_GuidelineSection_Guideline]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[GuidelineSection]  WITH CHECK ADD  CONSTRAINT [FK_GuidelineSection_Guideline] FOREIGN KEY([GuidelineID])
REFERENCES [iCCG].[Guideline] ([GuidelineID])
GO
ALTER TABLE [iCCG].[GuidelineSection] CHECK CONSTRAINT [FK_GuidelineSection_Guideline]
GO
/****** Object:  ForeignKey [FK_GuidelineSection_Section]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[GuidelineSection]  WITH CHECK ADD  CONSTRAINT [FK_GuidelineSection_Section] FOREIGN KEY([SectionID])
REFERENCES [iCCG].[Section] ([SectionID])
GO
ALTER TABLE [iCCG].[GuidelineSection] CHECK CONSTRAINT [FK_GuidelineSection_Section]
GO
/****** Object:  ForeignKey [FK_PatientMedicine_RefFrequency]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[PatientMedicine]  WITH CHECK ADD  CONSTRAINT [FK_PatientMedicine_RefFrequency] FOREIGN KEY([FrequencyID])
REFERENCES [iCCG].[RefFrequency] ([FrequencyID])
GO
ALTER TABLE [iCCG].[PatientMedicine] CHECK CONSTRAINT [FK_PatientMedicine_RefFrequency]
GO
/****** Object:  ForeignKey [FK_PatientMedicine_RefRoute]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[PatientMedicine]  WITH CHECK ADD  CONSTRAINT [FK_PatientMedicine_RefRoute] FOREIGN KEY([RouteID])
REFERENCES [iCCG].[RefRoute] ([RouteID])
GO
ALTER TABLE [iCCG].[PatientMedicine] CHECK CONSTRAINT [FK_PatientMedicine_RefRoute]
GO
/****** Object:  ForeignKey [FK_ProblemList_Case]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[ProblemList]  WITH CHECK ADD  CONSTRAINT [FK_ProblemList_Case] FOREIGN KEY([CaseID])
REFERENCES [iCCG].[Case] ([CaseID])
GO
ALTER TABLE [iCCG].[ProblemList] CHECK CONSTRAINT [FK_ProblemList_Case]
GO
/****** Object:  ForeignKey [FK_ProgramGuideline_Guideline]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[ProgramGuideline]  WITH CHECK ADD  CONSTRAINT [FK_ProgramGuideline_Guideline] FOREIGN KEY([GuidelineID])
REFERENCES [iCCG].[Guideline] ([GuidelineID])
GO
ALTER TABLE [iCCG].[ProgramGuideline] CHECK CONSTRAINT [FK_ProgramGuideline_Guideline]
GO
/****** Object:  ForeignKey [FK_ProgramGuideline_Program]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[ProgramGuideline]  WITH CHECK ADD  CONSTRAINT [FK_ProgramGuideline_Program] FOREIGN KEY([ProgramID])
REFERENCES [iCCG].[Program] ([ProgramID])
GO
ALTER TABLE [iCCG].[ProgramGuideline] CHECK CONSTRAINT [FK_ProgramGuideline_Program]
GO
/****** Object:  ForeignKey [FK_QuestionAnswer_Answer]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[QuestionAnswer]  WITH CHECK ADD  CONSTRAINT [FK_QuestionAnswer_Answer] FOREIGN KEY([AnswerID])
REFERENCES [iCCG].[Answer] ([AnswerID])
GO
ALTER TABLE [iCCG].[QuestionAnswer] CHECK CONSTRAINT [FK_QuestionAnswer_Answer]
GO
/****** Object:  ForeignKey [FK_QuestionAnswer_Question]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[QuestionAnswer]  WITH CHECK ADD  CONSTRAINT [FK_QuestionAnswer_Question] FOREIGN KEY([QuestionID])
REFERENCES [iCCG].[Question] ([QuestionID])
GO
ALTER TABLE [iCCG].[QuestionAnswer] CHECK CONSTRAINT [FK_QuestionAnswer_Question]
GO
/****** Object:  ForeignKey [FK_QuestionAnswerSetMember_QuestionAnswer]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[QuestionAnswerSetMember]  WITH CHECK ADD  CONSTRAINT [FK_QuestionAnswerSetMember_QuestionAnswer] FOREIGN KEY([QuestionAnswerID])
REFERENCES [iCCG].[QuestionAnswer] ([QuestionAnswerID])
GO
ALTER TABLE [iCCG].[QuestionAnswerSetMember] CHECK CONSTRAINT [FK_QuestionAnswerSetMember_QuestionAnswer]
GO
/****** Object:  ForeignKey [FK_QuestionAnswerSetMember_QuestionAnswerSet]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[QuestionAnswerSetMember]  WITH CHECK ADD  CONSTRAINT [FK_QuestionAnswerSetMember_QuestionAnswerSet] FOREIGN KEY([QuestionAnswerSetID])
REFERENCES [iCCG].[QuestionAnswerSet] ([QuestionAnswerSetID])
GO
ALTER TABLE [iCCG].[QuestionAnswerSetMember] CHECK CONSTRAINT [FK_QuestionAnswerSetMember_QuestionAnswerSet]
GO
/****** Object:  ForeignKey [FK_QuestionAnswerSet_Problem]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[QuestionAnswerSet]  WITH CHECK ADD  CONSTRAINT [FK_QuestionAnswerSet_Problem] FOREIGN KEY([TargetProblemID])
REFERENCES [iCCG].[Problem] ([ProblemID])
GO
ALTER TABLE [iCCG].[QuestionAnswerSet] CHECK CONSTRAINT [FK_QuestionAnswerSet_Problem]
GO
/****** Object:  ForeignKey [FK_QuestionAnswerSet_RefQuestionLogic]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[QuestionAnswerSet]  WITH CHECK ADD  CONSTRAINT [FK_QuestionAnswerSet_RefQuestionLogic] FOREIGN KEY([QuestionLogicID])
REFERENCES [iCCG].[RefQuestionLogicType] ([QuestionLogicTypeID])
GO
ALTER TABLE [iCCG].[QuestionAnswerSet] CHECK CONSTRAINT [FK_QuestionAnswerSet_RefQuestionLogic]
GO
/****** Object:  ForeignKey [FK_Question_RefQuestionType]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_RefQuestionType] FOREIGN KEY([TypeID])
REFERENCES [iCCG].[RefQuestionType] ([QuestionTypeID])
GO
ALTER TABLE [iCCG].[Question] CHECK CONSTRAINT [FK_Question_RefQuestionType]
GO
/****** Object:  ForeignKey [FK_RefInterventionType_Intervention]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[RefInterventionType]  WITH CHECK ADD  CONSTRAINT [FK_RefInterventionType_Intervention] FOREIGN KEY([InterventionTypeID])
REFERENCES [iCCG].[Intervention] ([InterventionID])
GO
ALTER TABLE [iCCG].[RefInterventionType] CHECK CONSTRAINT [FK_RefInterventionType_Intervention]
GO
/****** Object:  ForeignKey [FK_SectionQuestionAnswer_QuestionAnswer1]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[SectionQuestionAnswer]  WITH CHECK ADD  CONSTRAINT [FK_SectionQuestionAnswer_QuestionAnswer1] FOREIGN KEY([QuestionAnswerID])
REFERENCES [iCCG].[QuestionAnswer] ([QuestionAnswerID])
GO
ALTER TABLE [iCCG].[SectionQuestionAnswer] CHECK CONSTRAINT [FK_SectionQuestionAnswer_QuestionAnswer1]
GO
/****** Object:  ForeignKey [FK_SectionQuestionAnswer_Section]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[SectionQuestionAnswer]  WITH CHECK ADD  CONSTRAINT [FK_SectionQuestionAnswer_Section] FOREIGN KEY([SectionID])
REFERENCES [iCCG].[Section] ([SectionID])
GO
ALTER TABLE [iCCG].[SectionQuestionAnswer] CHECK CONSTRAINT [FK_SectionQuestionAnswer_Section]
GO
/****** Object:  ForeignKey [FK_SectionQuestionAnswer_Survey]    Script Date: 02/03/2011 15:54:39 ******/
ALTER TABLE [iCCG].[SectionQuestionAnswer]  WITH CHECK ADD  CONSTRAINT [FK_SectionQuestionAnswer_Survey] FOREIGN KEY([SurveyID])
REFERENCES [iCCG].[Survey] ([SurveyID])
GO
ALTER TABLE [iCCG].[SectionQuestionAnswer] CHECK CONSTRAINT [FK_SectionQuestionAnswer_Survey]
GO
