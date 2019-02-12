CREATE TABLE [dbo].[PracownikStanowisko] (
    [ID]                INT  IDENTITY (1, 1) NOT NULL,
    [PracownikID]       INT  DEFAULT ((-1)) NOT NULL,
    [StanowiskoPracyID] INT  DEFAULT ((-1)) NOT NULL,
    [OkresDataOd]       DATE NOT NULL,
    [OkresDataDo]       DATE NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([PracownikID]) REFERENCES [dbo].[Pracownik] ([ID]) ON DELETE SET DEFAULT,
    FOREIGN KEY ([StanowiskoPracyID]) REFERENCES [dbo].[StanowiskoPracy] ([ID]) ON DELETE SET DEFAULT
);

