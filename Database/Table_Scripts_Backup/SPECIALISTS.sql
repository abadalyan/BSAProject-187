USE [LawFirmDRM]
GO

/****** Object:  Table [dbo].[SPECIALISTS]    Script Date: 9/21/2012 8:33:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SPECIALISTS](
	[specialist_ID] [int] IDENTITY(1,1) NOT NULL,
	[specialist_type_ID] [int] NULL,
	[first_name] [nvarchar](255) NOT NULL,
	[last_name][nvarchar](255) NOT NULL,
	[DOB][datetime],
	[STREET_ADDRESS][nvarchar](255),
	[CITY][varchar](100) ,
	[STATE][char](2),
	[ZIP][int],
	[EMAIL][nvarchar](50),
	[PHONE][nvarchar](20)
 CONSTRAINT [PK_SP_ID] PRIMARY KEY CLUSTERED 
(
	[specialist_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[SPECIALISTS]  WITH CHECK ADD  CONSTRAINT [FK_SP_TYPE_ID] FOREIGN KEY([specialist_type_ID])
REFERENCES [dbo].[SPECIALIST_TYPE] ([specialist_type_ID])
GO

ALTER TABLE [dbo].[SPECIALISTS] CHECK CONSTRAINT [FK_SP_TYPE_ID]
GO
