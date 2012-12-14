USE [LawFirmDRM]
GO

/****** Object:  Table [dbo].[SPECIALIST_TYPE]    Script Date: 12/14/2012 09:59:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SPECIALIST_TYPE](
	[SPECIALIST_type_ID] [int] IDENTITY(1,1) NOT NULL,
	[SPECIALIST_type] [nvarchar](255) NULL,
 CONSTRAINT [PK_SP_TYPE_ID] PRIMARY KEY CLUSTERED 
(
	[SPECIALIST_type_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

