CREATE VIEW rapOp.vwZadaniaPracownikowNaWypowiedzeniu as
	--Zamowienia na przeglad wykonane przez pracownikow na wypowiedzeniu   
	SELECT u.Nazwa, p.Nazwisko as NazwiskoPracownikaNaWypowiedzeniu 
	FROM Serwis.UslugaSerwisu AS u LEFT JOIN Serwis.ZamowienieSerwisu AS z ON u.ID = z.UslugaID LEFT JOIN Pracownik AS p ON z.PracownikID = p.ID
	WHERE u.Nazwa = 'Przeglad' AND p.CzyNaWypowiedzeniu = 1
	GROUP BY u.Nazwa, p.Nazwisko;