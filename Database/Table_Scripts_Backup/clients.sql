USE [LawFirmDRM]
GO

/****** Object:  Table [dbo].[CLIENTS]    Script Date: 12/14/2012 09:59:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[CLIENTS](
	[client_ID] [int] IDENTITY(1,1) NOT NULL,
	[client_status_ID] [int] NOT NULL,
	[app_ret_date] [datetime] NOT NULL,
	[client_suffix_ID] [int] NOT NULL,
	[first_name] [nvarchar](255) NOT NULL,
	[last_name] [nvarchar](255) NOT NULL,
	[DOB] [datetime] NULL,
	[STREET_ADDRESS] [nvarchar](255) NULL,
	[CITY] [varchar](100) NULL,
	[STATE] [char](2) NULL,
	[ZIP] [int] NULL,
	[JID_CDC] [nvarchar](100) NULL,
	[SSN] [int] NULL,
	[DRIVER_LICENSE] [nvarchar](25) NULL,
	[EMAIL] [nvarchar](50) NULL,
	[PHONE] [nvarchar](20) NULL,
 CONSTRAINT [PK_CLIENT_ID] PRIMARY KEY CLUSTERED 
(
	[client_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING ON
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

