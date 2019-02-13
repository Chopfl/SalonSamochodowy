

CREATE VIEW rapOp.vwMarkaZamowienia as
	SELECT ma.Nazwa, COUNT(z.ID) as IloscZamowien, SUM(z.Cena) as LacznaKwota
	FROM Marka AS ma WITH (NOLOCK) LEFT JOIN Model AS mo ON ma.Nazwa = mo.Marka LEFT JOIN Zamowienie AS z ON mo.ID = z.ModelID
	GROUP BY ma.Nazwa;