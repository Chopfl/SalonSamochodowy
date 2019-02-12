CREATE VIEW rapOp.vwZamowieniaSerwisuZakonczone as
	--zamowienia uslug z serwisu o statusie zamkniete 
	SELECT z.ID
	FROM Serwis.HistoriaZamowieniaSerwisu AS z LEFT JOIN Serwis.StatusZamowieniaSerwisu AS s ON s.ID = z.StatusZamowieniaSerwisuID
	WHERE s.NazwaStatusu = 'zamkniete';