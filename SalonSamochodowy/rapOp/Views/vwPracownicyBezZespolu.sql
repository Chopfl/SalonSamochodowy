CREATE VIEW rapOp.vwPracownicyBezZespolu as
	--Pracownicy nie przydzieleni do zespolow   
	SELECT p.ID, p.Imie, p.Nazwisko
	FROM Pracownik AS p INNER JOIN Hr.PracownikZespol AS pz ON p.ID = pz.PracownikID
	WHERE pz.PracownikID IS NULL;