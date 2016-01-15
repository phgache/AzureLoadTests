CREATE TABLE [dbo].[Carts] (
    [RecordId]    INT            IDENTITY (1, 1) NOT NULL,
    [CartId]      NVARCHAR (MAX) NULL,
    [AlbumId]     INT            NOT NULL,
    [Count]       INT            NOT NULL,
    [DateCreated] DATETIME       NOT NULL,
    CONSTRAINT [PK_dbo.Carts] PRIMARY KEY CLUSTERED ([RecordId] ASC),
    CONSTRAINT [FK_dbo.Carts_dbo.Albums_AlbumId] FOREIGN KEY ([AlbumId]) REFERENCES [dbo].[Albums] ([AlbumId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_AlbumId]
    ON [dbo].[Carts]([AlbumId] ASC);

