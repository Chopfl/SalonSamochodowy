CREATE VIEW rapOp.vwZamowieniaRabat as
	SELECT z.ID, z.Cena, c.Cena as CenaKatalogowa, ((c.Cena-z.Cena)/c.Cena) as Rabat
	FROM Zamowienie AS z LEFT JOIN Cennik AS c ON c.ID = z.CennikID;