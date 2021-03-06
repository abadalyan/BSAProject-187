USE [LawFirmDRM]
GO

/****** Object:  Table [dbo].[EMPLOYEE_TYPE]    Script Date: 12/13/2012 23:50:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EMPLOYEE_TYPE](
	[employee_type_ID] [int] IDENTITY(1,1) NOT NULL,
	[employee_type] [nvarchar](255) NULL,
 CONSTRAINT [PK_EMPLYEE_TYPE_ID] PRIMARY KEY CLUSTERED 
(
	[employee_type_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

