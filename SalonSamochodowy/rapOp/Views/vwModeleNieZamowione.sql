CREATE VIEW rapOp.vwModeleNieZamowione as
	SELECT m.ID
	FROM Model AS m WITH (NOLOCK) LEFT JOIN Zamowienie AS z ON m.ID = z.ModelID
	WHERE z.ModelID IS NULL;