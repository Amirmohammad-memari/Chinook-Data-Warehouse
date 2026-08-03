USE [ChinookDW]
GO

/****** Object:  Table [dbo].[DimEmployee]    Script Date: 8/4/2026 12:18:54 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimEmployee](
	[EmployeeSK] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NULL,
	[Title] [nvarchar](30) NULL,
	[ReportsTo] [int] NULL,
	[Department] [nvarchar](75) NULL,
	[FullName] [nvarchar](41) NULL,
	[Age] [int] NULL,
	[YearHireDate] [int] NULL,
	[GeographySK] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DimEmployee]  WITH CHECK ADD  CONSTRAINT [FK_DimEmployee_DimGeography] FOREIGN KEY([GeographySK])
REFERENCES [dbo].[DimGeography] ([GeographySK])
GO

ALTER TABLE [dbo].[DimEmployee] CHECK CONSTRAINT [FK_DimEmployee_DimGeography]
GO


