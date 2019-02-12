CREATE TABLE [Serwis].[ZamowienieSerwisu] (
    [ID]          INT IDENTITY (1, 1) NOT NULL,
    [PracownikID] INT DEFAULT ((-1)) NOT NULL,
    [UslugaID]    INT DEFAULT ((-1)) NOT NULL,
    [KlientID]    INT DEFAULT ((-1)) NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([KlientID]) REFERENCES [dbo].[Klient] ([ID]) ON DELETE SET DEFAULT,
    FOREIGN KEY ([PracownikID]) REFERENCES [dbo].[Pracownik] ([ID]) ON DELETE SET DEFAULT,
    FOREIGN KEY ([UslugaID]) REFERENCES [Serwis].[UslugaSerwisu] ([ID]) ON DELETE SET DEFAULT
);

