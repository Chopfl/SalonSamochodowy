CREATE TABLE [dbo].[Pracownik] (
    [ID]                  INT           IDENTITY (1, 1) NOT NULL,
    [Imie]                VARCHAR (255) NOT NULL,
    [Nazwisko]            VARCHAR (255) NOT NULL,
    [PESEL]               INT           NOT NULL,
    [NrKontaBankowego]    INT           NOT NULL,
    [DataPodpisaniaUmowy] DATE          NOT NULL,
    [CzyNaWypowiedzeniu]  BIT           NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    UNIQUE NONCLUSTERED ([PESEL] ASC)
);

