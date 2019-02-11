CREATE TABLE [dbo].[Model] (
    [ID]                INT           IDENTITY (1, 1) NOT NULL,
    [Nazwa]             VARCHAR (255) NOT NULL,
    [IloscDrzwi]        INT           NOT NULL,
    [ZamekCentralny]    BIT           NOT NULL,
    [Radio]             BIT           NOT NULL,
    [PoczatekProdukcji] DATE          NOT NULL,
    [MasaKg]            INT           NOT NULL,
    [Marka]             VARCHAR (255) DEFAULT ('Nieznana') NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([Marka]) REFERENCES [dbo].[Marka] ([Nazwa]) ON DELETE SET DEFAULT
);

