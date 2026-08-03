USE [ChinookDW]
GO

/****** Object:  Table [dbo].[DimTrack]    Script Date: 8/4/2026 12:20:59 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimTrack](
	[TrackSK] [int] IDENTITY(1,1) NOT NULL,
	[TrackId] [int] NULL,
	[Name] [nvarchar](200) NULL,
	[Composer] [nvarchar](220) NULL,
	[GenreSK] [int] NULL,
	[AlbumSK] [int] NULL,
	[MediaTypeSK] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[TrackSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DimTrack]  WITH CHECK ADD  CONSTRAINT [FK_DimTrack_DimAlbum] FOREIGN KEY([AlbumSK])
REFERENCES [dbo].[DimAlbum] ([AlbumSK])
GO

ALTER TABLE [dbo].[DimTrack] CHECK CONSTRAINT [FK_DimTrack_DimAlbum]
GO

ALTER TABLE [dbo].[DimTrack]  WITH CHECK ADD  CONSTRAINT [FK_DimTrack_DimGenre] FOREIGN KEY([GenreSK])
REFERENCES [dbo].[DimGenre] ([GenreSK])
GO

ALTER TABLE [dbo].[DimTrack] CHECK CONSTRAINT [FK_DimTrack_DimGenre]
GO

ALTER TABLE [dbo].[DimTrack]  WITH CHECK ADD  CONSTRAINT [FK_DimTrack_DimMediaType] FOREIGN KEY([MediaTypeSK])
REFERENCES [dbo].[DimMediaType] ([MediaTypeSK])
GO

ALTER TABLE [dbo].[DimTrack] CHECK CONSTRAINT [FK_DimTrack_DimMediaType]
GO


