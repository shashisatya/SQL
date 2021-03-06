/****** Object:  Table [iCCG].[Contact]    Script Date: 08/09/2011 09:42:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [iCCG].[Contact]
    (
     [ContactID] [int] IDENTITY(1, 1) NOT NULL,
     [CaseID] [int] NOT NULL,
     [TypeID] [int] NOT NULL,
     [ExistingEntityID] [int] NULL,
     [Title] [nchar](10) NULL,
     [FirstName] [varchar](50) NULL,
     [LastName] [varchar](50) NULL,
     [Company] [varchar](100) NULL,
     [Phone1] [varchar](50) NULL,
     [Phone2] [varchar](50) NULL,
     [Phone3] [varchar](50) NULL,
     [Address1] [varchar](50) NULL,
     [Address2] [varchar](50) NULL,
     [City] [varchar](50) NULL,
     [State] [varchar](50) NULL,
     [PostalCode] [varchar](50) NULL,
     [Email] [varchar](100) NULL,
     [PatientConsent] [bit] NULL,
     [Notes] [nvarchar](MAX) NULL,
     [Active] [bit] NOT NULL,
     [InsertDate] [datetime] NOT NULL
                             CONSTRAINT [DF_Contact_InsertDate] DEFAULT (GETUTCDATE()),
     [InsertBy] [int] NOT NULL,
     [UpdateDate] [datetime] NULL,
     [UpdateBy] [int] NULL,
     CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED ([ContactID] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    )
ON  [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [iCCG].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_Case] FOREIGN KEY([CaseID])
REFERENCES [iCCG].[Case] ([CaseID])
GO
ALTER TABLE [iCCG].[Contact] CHECK CONSTRAINT [FK_Contact_Case]
GO
ALTER TABLE [iCCG].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_RefContactType] FOREIGN KEY([TypeID])
REFERENCES [iCCG].[RefContactType] ([ID])
GO
ALTER TABLE [iCCG].[Contact] CHECK CONSTRAINT [FK_Contact_RefContactType]