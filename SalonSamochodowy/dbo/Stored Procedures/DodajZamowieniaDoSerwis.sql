-- Procedura dodawania losowych zamowien serwisu

CREATE PROCEDURE DodajZamowieniaDoSerwis 
 @ileWierszy int
as

BEGIN

	DECLARE @iteracjaPetli as int 
	SET @iteracjaPetli = 0

	WHILE @iteracjaPetli < @ileWierszy
	BEGIN

		DECLARE @PracownikID as int = (SELECT TOP 1 ID FROM Pracownik ORDER BY NEWID())
		DECLARE @UslugaID as int = (SELECT TOP 1 ID FROM Serwis.UslugaSerwisu ORDER BY NEWID())
		DECLARE @KlientID as int = (SELECT TOP 1 ID FROM Klient ORDER BY NEWID())
		
		INSERT INTO Serwis.ZamowienieSerwisu (PracownikID, UslugaID, KlientID)
		VALUES
		(@PracownikID, @UslugaID, @KlientID) 
		
	END

END