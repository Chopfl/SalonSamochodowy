CREATE TABLE [Hr].[Zespol] (
    [ID]           INT           IDENTITY (1, 1) NOT NULL,
    [Nazwa]        VARCHAR (255) NOT NULL,
    [MiejscePracy] VARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

