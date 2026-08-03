USE [ChinookDW]
GO

/****** Object:  Table [dbo].[DimCustomer]    Script Date: 8/4/2026 12:18:03 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimCustomer](
	[CustomerSK] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[FullName] [nvarchar](61) NULL,
	[GeographySK] [int] NULL,
	[EmployeeSK] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DimCustomer]  WITH CHECK ADD  CONSTRAINT [FK_DimCustomer_DimEmployee] FOREIGN KEY([EmployeeSK])
REFERENCES [dbo].[DimEmployee] ([EmployeeSK])
GO

ALTER TABLE [dbo].[DimCustomer] CHECK CONSTRAINT [FK_DimCustomer_DimEmployee]
GO

ALTER TABLE [dbo].[DimCustomer]  WITH CHECK ADD  CONSTRAINT [FK_DimCustomer_DimGeography] FOREIGN KEY([GeographySK])
REFERENCES [dbo].[DimGeography] ([GeographySK])
GO

ALTER TABLE [dbo].[DimCustomer] CHECK CONSTRAINT [FK_DimCustomer_DimGeography]
GO


