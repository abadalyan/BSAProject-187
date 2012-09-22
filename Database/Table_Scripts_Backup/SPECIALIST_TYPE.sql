USE [LawFirm]
GO

/****** Object:  Table [dbo].[EXPENSE_TYPE]    Script Date: 9/21/2012 8:22:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EXPENSE_TYPE](
	[expense_type_ID] [int] IDENTITY(1,1) NOT NULL,
	[expense_type] [nvarchar](255) NULL,
 CONSTRAINT [PK_EXP_TYPE_ID] PRIMARY KEY CLUSTERED 
(
	[expense_type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
