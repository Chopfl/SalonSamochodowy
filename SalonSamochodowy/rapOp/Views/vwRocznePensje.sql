CREATE VIEW rapOp.vwRocznePensje as
	--Srednia Roczna Pensja Pracownika   
	SELECT p.Imie, p.Nazwisko, SUM(w.Kwota * 12) AS RocznaPensja  
	From Pracownik AS p LEFT JOIN Hr.Wynagrodzenie AS w On p.ID = w.PracownikID
	GROUP BY p.Imie, p.Nazwisko;