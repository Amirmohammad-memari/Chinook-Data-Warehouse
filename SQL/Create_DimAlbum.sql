USE [ChinookDW]
GO

/****** Object:  Table [dbo].[DimAlbum]    Script Date: 8/4/2026 12:16:43 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimAlbum](
	[AlbumSK] [int] IDENTITY(1,1) NOT NULL,
	[AlbumId] [int] NULL,
	[Title] [nvarchar](160) NULL,
	[ArtistSK] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AlbumSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DimAlbum]  WITH CHECK ADD  CONSTRAINT [FK_DimAlbum_DimArtist] FOREIGN KEY([ArtistSK])
REFERENCES [dbo].[DimArtist] ([ArtistSK])
GO

ALTER TABLE [dbo].[DimAlbum] CHECK CONSTRAINT [FK_DimAlbum_DimArtist]
GO


