CREATE TABLE [dbo].[Cennik] (
    [ID]       INT             IDENTITY (1, 1) NOT NULL,
    [ModelID]  INT             NULL,
    [Cena]     DECIMAL (19, 2) NOT NULL,
    [Uzywany]  BIT             NOT NULL,
    [Przebieg] INT             NOT NULL,
    [CenaOd]   DATE            NOT NULL,
    [CenaDo]   DATE            NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([ModelID]) REFERENCES [dbo].[Model] ([ID]) ON DELETE SET NULL
);

