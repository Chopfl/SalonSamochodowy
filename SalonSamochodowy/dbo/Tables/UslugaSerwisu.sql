CREATE TABLE [dbo].[UslugaSerwisu] (
    [ID]    INT             IDENTITY (1, 1) NOT NULL,
    [Nazwa] VARCHAR (255)   NOT NULL,
    [Koszt] DECIMAL (19, 4) NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

