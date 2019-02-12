CREATE VIEW rapOp.vwPracownicyBezObowiazkow as
	--Pracownicy bez obowiazkow na stanowisku   
	SELECT p.Imie, p.Nazwisko, s.Nazwa as NazwaStanowiska  
	From Pracownik AS p 
	LEFT JOIN Hr.PracownikStanowisko AS ps On p.ID = ps.PracownikID
	LEFT JOIN Hr.StanowiskoPracy AS s On s.ID = ps.StanowiskoPracyID
	WHERE s.Obowiazki IS NULL;