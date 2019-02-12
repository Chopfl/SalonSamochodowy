CREATE TABLE [Hr].[Wynagrodzenie] (
    [ID]          INT             IDENTITY (1, 1) NOT NULL,
    [Kwota]       DECIMAL (19, 4) NOT NULL,
    [OkresOd]     DATE            NOT NULL,
    [OkresDo]     DATE            NOT NULL,
    [PracownikID] INT             DEFAULT ((-1)) NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    CHECK ([Kwota]>(0)),
    FOREIGN KEY ([PracownikID]) REFERENCES [dbo].[Pracownik] ([ID]) ON DELETE SET DEFAULT
);

