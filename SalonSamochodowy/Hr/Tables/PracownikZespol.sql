﻿CREATE TABLE [Hr].[PracownikZespol] (
    [ID]          INT IDENTITY (1, 1) NOT NULL,
    [PracownikID] INT DEFAULT ((-1)) NOT NULL,
    [ZespolID]    INT DEFAULT ((-1)) NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([PracownikID]) REFERENCES [dbo].[Pracownik] ([ID]) ON DELETE SET DEFAULT,
    FOREIGN KEY ([ZespolID]) REFERENCES [Hr].[Zespol] ([ID]) ON DELETE SET DEFAULT
);

