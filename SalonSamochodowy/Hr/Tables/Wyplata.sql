CREATE TABLE [Hr].[Wyplata] (
    [ID]          INT           IDENTITY (1, 1) NOT NULL,
    [PracownikID] INT           DEFAULT ((-1)) NOT NULL,
    [KwotaID]     INT           DEFAULT ((-1)) NOT NULL,
    [DataWyplaty] DATE          NOT NULL,
    [Typ]         VARCHAR (255) NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    CHECK ([Typ]='premia' OR [Typ]='pensja'),
    FOREIGN KEY ([KwotaID]) REFERENCES [Hr].[Wynagrodzenie] ([ID]) ON DELETE SET DEFAULT,
    FOREIGN KEY ([PracownikID]) REFERENCES [dbo].[Pracownik] ([ID]) ON DELETE SET DEFAULT
);

