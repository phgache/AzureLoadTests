CREATE TABLE [dbo].[Albums] (
    [AlbumId]     INT             IDENTITY (1, 1) NOT NULL,
    [GenreId]     INT             NOT NULL,
    [ArtistId]    INT             NOT NULL,
    [Title]       NVARCHAR (160)  NOT NULL,
    [Price]       DECIMAL (18, 2) NOT NULL,
    [AlbumArtUrl] NVARCHAR (1024) NULL,
    CONSTRAINT [PK_dbo.Albums] PRIMARY KEY CLUSTERED ([AlbumId] ASC),
    CONSTRAINT [FK_dbo.Albums_dbo.Artists_ArtistId] FOREIGN KEY ([ArtistId]) REFERENCES [dbo].[Artists] ([ArtistId]) ON DELETE CASCADE,
    CONSTRAINT [FK_dbo.Albums_dbo.Genres_GenreId] FOREIGN KEY ([GenreId]) REFERENCES [dbo].[Genres] ([GenreId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_GenreId]
    ON [dbo].[Albums]([GenreId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_ArtistId]
    ON [dbo].[Albums]([ArtistId] ASC);

