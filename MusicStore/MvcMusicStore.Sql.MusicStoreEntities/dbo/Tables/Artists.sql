CREATE TABLE [dbo].[Artists] (
    [ArtistId] INT            IDENTITY (1, 1) NOT NULL,
    [Name]     NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_dbo.Artists] PRIMARY KEY CLUSTERED ([ArtistId] ASC)
);

