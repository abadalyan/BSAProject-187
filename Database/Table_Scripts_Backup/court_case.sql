USE [LawFirmDRM]
GO

/****** Object:  Table [dbo].[COURT_CASE]    Script Date: 12/13/2012 23:49:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[COURT_CASE](
	[case_ID] [int] IDENTITY(1,1) NOT NULL,
	[case_number] [varchar](255) NULL,
	[case_category_ID] [int] NULL,
	[client_ID] [int] NOT NULL,
	[case_type] [nvarchar](255) NULL,
	[case_title] [nvarchar](255) NOT NULL,
	[case_date] [datetime] NULL,
	[client_relationship] [nvarchar](255) NULL,
	[notes] [nvarchar](255) NULL,
 CONSTRAINT [PK_CASE_ID] PRIMARY KEY CLUSTERED 
(
	[case_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING ON
GO

ALTER TABLE [dbo].[COURT_CASE]  WITH CHECK ADD  CONSTRAINT [FK_CASE_CAT_ID] FOREIGN KEY([case_category_ID])
REFERENCES [dbo].[CASE_TYPE] ([case_category_ID])
GO

ALTER TABLE [dbo].[COURT_CASE] CHECK CONSTRAINT [FK_CASE_CAT_ID]
GO

ALTER TABLE [dbo].[COURT_CASE]  WITH CHECK ADD  CONSTRAINT [FK_CLIENT_ID] FOREIGN KEY([client_ID])
REFERENCES [dbo].[CLIENTS] ([client_ID])
GO

ALTER TABLE [dbo].[COURT_CASE] CHECK CONSTRAINT [FK_CLIENT_ID]
GO

