USE [ChinookDW]
GO

/****** Object:  Table [dbo].[DimPlaylistTrack]    Script Date: 8/4/2026 12:20:34 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimPlaylistTrack](
	[PlaylistTrackSK] [int] IDENTITY(1,1) NOT NULL,
	[PlaylistSK] [int] NULL,
	[TrackSK] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PlaylistTrackSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DimPlaylistTrack]  WITH CHECK ADD  CONSTRAINT [FK_DimPlaylistTrack_DimPlaylist] FOREIGN KEY([PlaylistSK])
REFERENCES [dbo].[DimPlaylist] ([PlaylistSK])
GO

ALTER TABLE [dbo].[DimPlaylistTrack] CHECK CONSTRAINT [FK_DimPlaylistTrack_DimPlaylist]
GO

ALTER TABLE [dbo].[DimPlaylistTrack]  WITH CHECK ADD  CONSTRAINT [FK_DimPlaylistTrack_DimTrack] FOREIGN KEY([TrackSK])
REFERENCES [dbo].[DimTrack] ([TrackSK])
GO

ALTER TABLE [dbo].[DimPlaylistTrack] CHECK CONSTRAINT [FK_DimPlaylistTrack_DimTrack]
GO


