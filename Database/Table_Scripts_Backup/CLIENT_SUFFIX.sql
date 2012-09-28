USE [LawFirmDRM]
GO

/****** Object:  Table [dbo].[CLIENT_SUFFIX]    Script Date: 9/21/2012 8:15:52 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CLIENT_SUFFIX](
	[client_suffix_ID] [int] IDENTITY(1,1) NOT NULL,
	[client_suffix] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_CLIENT_SUFFIX_ID] PRIMARY KEY CLUSTERED 
(
	[client_suffix_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
