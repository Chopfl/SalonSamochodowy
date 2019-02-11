CREATE TABLE [dbo].[Zamowienie] (
    [ID]                     INT             IDENTITY (1, 1) NOT NULL,
    [Cena]                   DECIMAL (19, 2) NOT NULL,
    [CennikID]               INT             DEFAULT ((-1)) NOT NULL,
    [ModelID]                INT             DEFAULT ((-1)) NOT NULL,
    [PracownikID]            INT             DEFAULT ((-1)) NOT NULL,
    [KlientID]               INT             DEFAULT ((-1)) NOT NULL,
    [DataZamowienia]         DATE            NOT NULL,
    [DataPlanowanegoOdbioru] DATE            NOT NULL,
    [CzyZrealizowane]        BIT             NOT NULL,
    [CzyOplacone]            BIT             NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    CHECK ([Cena]>(0)),
    FOREIGN KEY ([CennikID]) REFERENCES [dbo].[Cennik] ([ID]) ON DELETE SET DEFAULT,
    FOREIGN KEY ([KlientID]) REFERENCES [dbo].[Klient] ([ID]) ON DELETE SET DEFAULT,
    FOREIGN KEY ([ModelID]) REFERENCES [dbo].[Model] ([ID]) ON DELETE SET DEFAULT,
    FOREIGN KEY ([PracownikID]) REFERENCES [dbo].[Pracownik] ([ID]) ON DELETE SET DEFAULT
);

