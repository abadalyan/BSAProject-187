USE [LawFirmDRM]
GO

/****** Object:  Table [dbo].[SPECIALISTS]    Script Date: 12/14/2012 09:59:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[SPECIALISTS](
	[specialist_ID] [int] IDENTITY(1,1) NOT NULL,
	[specialist_type_ID] [int] NULL,
	[first_name] [nvarchar](255) NOT NULL,
	[last_name] [nvarchar](255) NOT NULL,
	[DOB] [datetime] NULL,
	[STREET_ADDRESS] [nvarchar](255) NULL,
	[CITY] [varchar](100) NULL,
	[STATE] [char](2) NULL,
	[ZIP] [int] NULL,
	[EMAIL] [nvarchar](50) NULL,
	[PHONE] [nvarchar](20) NULL,
 CONSTRAINT [PK_SP_ID] PRIMARY KEY CLUSTERED 
(
	[specialist_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING ON
GO

ALTER TABLE [dbo].[SPECIALISTS]  WITH CHECK ADD  CONSTRAINT [FK_SP_TYPE_ID] FOREIGN KEY([specialist_type_ID])
REFERENCES [dbo].[SPECIALIST_TYPE] ([SPECIALIST_type_ID])
GO

ALTER TABLE [dbo].[SPECIALISTS] CHECK CONSTRAINT [FK_SP_TYPE_ID]
GO

