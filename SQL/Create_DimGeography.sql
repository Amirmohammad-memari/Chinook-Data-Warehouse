USE [ChinookDW]
GO

/****** Object:  Table [dbo].[DimGeography]    Script Date: 8/4/2026 12:19:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimGeography](
	[GeographySK] [int] IDENTITY(1,1) NOT NULL,
	[city] [nvarchar](40) NULL,
	[state] [nvarchar](40) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[country] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[GeographySK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


