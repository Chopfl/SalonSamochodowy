CREATE VIEW rapOp.vwZamowieniaSerwisuNaPrzeglad as
	--Ilosc zamowienia przegladu w serwisie   
	SELECT u.Nazwa,  COUNT(z.ID) as IlosZamowien
	FROM Serwis.UslugaSerwisu AS u WITH (NOLOCK) LEFT JOIN Serwis.ZamowienieSerwisu AS z ON u.ID = z.UslugaID
	WHERE u.Nazwa = 'Przeglad'
	GROUP BY u.Nazwa;