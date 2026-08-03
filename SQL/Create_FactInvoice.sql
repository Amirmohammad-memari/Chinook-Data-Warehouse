USE [ChinookDW]
GO

/****** Object:  Table [dbo].[FactInvoice]    Script Date: 8/4/2026 12:21:16 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactInvoice](
	[InvoiceLineId] [int] NOT NULL,
	[InvoiceTotal] [numeric](14, 2) NULL,
	[UnitPrice] [numeric](10, 2) NULL,
	[Quantity] [int] NULL,
	[Discount] [numeric](5, 2) NULL,
	[LineTotal] [numeric](14, 2) NULL,
	[InvoiceDateKey] [int] NULL,
	[CustomerSK] [int] NULL,
	[TrackSK] [int] NULL,
	[GeographySK] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[InvoiceLineId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FactInvoice]  WITH CHECK ADD  CONSTRAINT [FK_FactInvoice_DimCustomer] FOREIGN KEY([CustomerSK])
REFERENCES [dbo].[DimCustomer] ([CustomerSK])
GO

ALTER TABLE [dbo].[FactInvoice] CHECK CONSTRAINT [FK_FactInvoice_DimCustomer]
GO

ALTER TABLE [dbo].[FactInvoice]  WITH CHECK ADD  CONSTRAINT [FK_FactInvoice_DimDate] FOREIGN KEY([InvoiceDateKey])
REFERENCES [dbo].[DimDate] ([DateKey])
GO

ALTER TABLE [dbo].[FactInvoice] CHECK CONSTRAINT [FK_FactInvoice_DimDate]
GO

ALTER TABLE [dbo].[FactInvoice]  WITH CHECK ADD  CONSTRAINT [FK_FactInvoice_DimGeography] FOREIGN KEY([GeographySK])
REFERENCES [dbo].[DimGeography] ([GeographySK])
GO

ALTER TABLE [dbo].[FactInvoice] CHECK CONSTRAINT [FK_FactInvoice_DimGeography]
GO

ALTER TABLE [dbo].[FactInvoice]  WITH CHECK ADD  CONSTRAINT [FK_FactInvoice_DimTrack] FOREIGN KEY([TrackSK])
REFERENCES [dbo].[DimTrack] ([TrackSK])
GO

ALTER TABLE [dbo].[FactInvoice] CHECK CONSTRAINT [FK_FactInvoice_DimTrack]
GO


