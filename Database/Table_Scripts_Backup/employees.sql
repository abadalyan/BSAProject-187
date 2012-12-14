USE [LawFirmDRM]
GO

/****** Object:  Table [dbo].[EMPLOYEES]    Script Date: 12/13/2012 23:50:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[EMPLOYEES](
	[employee_ID] [int] IDENTITY(1,1) NOT NULL,
	[employee_type_ID] [int] NULL,
	[first_name] [nvarchar](255) NOT NULL,
	[last_name] [nvarchar](255) NOT NULL,
	[DOB] [datetime] NULL,
	[STREET_ADDRESS] [nvarchar](255) NULL,
	[CITY] [varchar](100) NULL,
	[STATE] [char](2) NULL,
	[ZIP] [int] NULL,
	[EMAIL] [nvarchar](50) NULL,
	[PHONE] [nvarchar](20) NULL,
 CONSTRAINT [PK_EMPLOYEE_ID] PRIMARY KEY CLUSTERED 
(
	[employee_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING ON
GO

ALTER TABLE [dbo].[EMPLOYEES]  WITH CHECK ADD  CONSTRAINT [FK_EMPLYEE_TYPE_ID] FOREIGN KEY([employee_type_ID])
REFERENCES [dbo].[EMPLOYEE_TYPE] ([employee_type_ID])
GO

ALTER TABLE [dbo].[EMPLOYEES] CHECK CONSTRAINT [FK_EMPLYEE_TYPE_ID]
GO

