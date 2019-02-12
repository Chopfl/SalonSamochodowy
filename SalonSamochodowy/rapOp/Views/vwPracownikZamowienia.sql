CREATE VIEW rapOp.vwPracownikZamowienia as
	SELECT p.ID, COUNT(z.ID) as IloscZamowien, SUM(z.Cena) as LacznaKwota
	FROM Pracownik AS p LEFT JOIN Zamowienie AS z ON p.ID = z.PracownikId  
	GROUP BY p.ID;