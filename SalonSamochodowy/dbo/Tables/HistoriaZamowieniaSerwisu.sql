CREATE TABLE [dbo].[HistoriaZamowieniaSerwisu] (
    [ID]                        INT  IDENTITY (1, 1) NOT NULL,
    [PracownikID]               INT  DEFAULT ((-1)) NOT NULL,
    [StatusZamowieniaSerwisuID] INT  DEFAULT ((-1)) NOT NULL,
    [ZamowienieSerwisuID]       INT  DEFAULT ((-1)) NOT NULL,
    [DataZmianyStatusu]         DATE NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([PracownikID]) REFERENCES [dbo].[Pracownik] ([ID]) ON DELETE SET DEFAULT,
    FOREIGN KEY ([StatusZamowieniaSerwisuID]) REFERENCES [dbo].[StatusZamowieniaSerwisu] ([ID]) ON DELETE SET DEFAULT,
    FOREIGN KEY ([ZamowienieSerwisuID]) REFERENCES [dbo].[ZamowienieSerwisu] ([ID]) ON DELETE SET DEFAULT
);

