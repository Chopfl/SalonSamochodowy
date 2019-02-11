CREATE TABLE [dbo].[StanowiskoPracy] (
    [ID]        INT           IDENTITY (1, 1) NOT NULL,
    [Nazwa]     VARCHAR (255) NOT NULL,
    [Obowiazki] VARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

