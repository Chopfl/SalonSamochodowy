CREATE TABLE [dbo].[Marka] (
    [Nazwa]           VARCHAR (255) NOT NULL,
    [ID]              INT           IDENTITY (1, 1) NOT NULL,
    [KrajPochodzenia] VARCHAR (255) NOT NULL,
    [Koncern]         VARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([Nazwa] ASC)
);

