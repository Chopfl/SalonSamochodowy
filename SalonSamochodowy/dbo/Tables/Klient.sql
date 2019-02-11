CREATE TABLE [dbo].[Klient] (
    [Imie]               VARCHAR (255) NOT NULL,
    [Nazwisko]           VARCHAR (255) NOT NULL,
    [NrTel]              INT           NULL,
    [Adres]              VARCHAR (255) NOT NULL,
    [Email]              VARCHAR (255) NOT NULL,
    [NrDowoduOSobistego] VARCHAR (10)  NOT NULL,
    [ID]                 INT           IDENTITY (1, 1) NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    UNIQUE NONCLUSTERED ([NrDowoduOSobistego] ASC)
);



