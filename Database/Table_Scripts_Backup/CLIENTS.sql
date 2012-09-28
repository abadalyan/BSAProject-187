USE [LawFirmDRM]
GO

/****** Object:  Table [dbo].[CLIENTS]    Script Date: 9/21/2012 8:23:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CLIENTS](
	[client_ID] [int] IDENTITY(1,1) NOT NULL,
	[client_status_ID] [int] NOT NULL,
	[app_ret_date][datetime] NOT NULL,
	[client_suffix_ID] [int] NOT NULL,
	[first_name] [nvarchar](255) NOT NULL,
	[last_name][nvarchar](255) NOT NULL,
	[DOB][datetime],
	[STREET_ADDRESS][nvarchar](255),
	[CITY][varchar](100) ,
	[STATE][char](2),
	[ZIP][int] ,
	[JID_CDC][nvarchar](100),
	[SSN][int],
	[DRIVER_LICENSE][nvarchar](25),
	[EMAIL][nvarchar](50),
	[PHONE][nvarchar](20)
 CONSTRAINT [PK_CLIENT_ID] PRIMARY KEY CLUSTERED 
(
	[client_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[CLIENTS]  WITH CHECK ADD  CONSTRAINT [FK_CLIENT_STATUS_ID] FOREIGN KEY([client_status_ID])
REFERENCES [dbo].[CLIENT_STATUS] ([client_status_ID])
GO

ALTER TABLE [dbo].[CLIENTS] CHECK CONSTRAINT [FK_CLIENT_STATUS_ID]
GO

ALTER TABLE [dbo].[CLIENTS]  WITH CHECK ADD  CONSTRAINT [FK_CLIENT_SUFFIX_ID] FOREIGN KEY([client_suffix_ID])
REFERENCES [dbo].[CLIENT_SUFFIX] ([client_suffix_ID])
GO

ALTER TABLE [dbo].[CLIENTS] CHECK CONSTRAINT [FK_CLIENT_SUFFIX_ID]
GO
