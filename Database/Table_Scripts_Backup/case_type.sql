USE [LawFirmDRM]
GO

/****** Object:  Table [dbo].[CASE_TYPE]    Script Date: 12/14/2012 09:58:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CASE_TYPE](
	[case_category_ID] [int] IDENTITY(1,1) NOT NULL,
	[case_catagory] [nvarchar](255) NOT NULL,
	[title] [nvarchar](255) NULL,
	[amount] [money] NULL,
 CONSTRAINT [PK_CASE_CAT_ID] PRIMARY KEY CLUSTERED 
(
	[case_category_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

