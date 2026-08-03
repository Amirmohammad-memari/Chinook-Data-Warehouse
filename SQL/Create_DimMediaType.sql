USE [ChinookDW]
GO

/****** Object:  Table [dbo].[DimMediaType]    Script Date: 8/4/2026 12:19:56 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimMediaType](
	[MediaTypeSK] [int] IDENTITY(1,1) NOT NULL,
	[MediaTypeId] [int] NULL,
	[Name] [nvarchar](120) NULL,
PRIMARY KEY CLUSTERED 
(
	[MediaTypeSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


