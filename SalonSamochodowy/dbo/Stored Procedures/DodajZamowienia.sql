-- Dodanie losowych danych do tabeli zamowienia

CREATE PROCEDURE dbo.DodajZamowienia
@ileWierszy int
as

BEGIN

	DECLARE @iteracjaPentli int
	SET @iteracjaPentli = 0

	WHILE @iteracjaPentli < @ileWierszy
	BEGIN

		DECLARE @KlientID as int  = (SELECT TOP 1 ID FROM Klient ORDER BY NEWID())
		DECLARE @ModelID as int  = (SELECT TOP 1 ID FROM Model ORDER BY NEWID())
		DECLARE @PracownikID as int = (SELECT TOP 1 ID FROM Pracownik ORDER BY NEWID())
		DECLARE @CennikID as int
		DECLARE @Cena as int
		DECLARE @CzyOplacone as bit
		DECLARE @CzyZrealizowane as bit
		DECLARE @DataZamowienia as date = (DATEADD(DAY, ABS(CHECKSUM(NEWID()) % 31), '2019-01-01'))
		DECLARE @DataPlanowanegoOdbioru as date = DATEADD(DAY, ABS(CHECKSUM(NEWID()) % 92), '2019-01-01')

		SET @Cena = ((SELECT c.Cena 
					From Cennik as c INNER JOIN Model as m on m.ID = c.ModelID
					WHERE m.ID = @ModelID)  - ( rand()*(1000-500)+500))

		SET @CennikID = (SELECT c.ID
						FROM Cennik as C INNER JOIN Model as m on m.ID = c.ModelID
						WHERE m.ID = @ModelID)
	
		SET @CzyOplacone = CONVERT(bit,SUBSTRING(CONVERT(binary(18),newid()),1,1)&1)
		SET @CzyZrealizowane = CONVERT(bit,SUBSTRING(CONVERT(binary(18),newid()),1,1)&1)

		SET @iteracjaPentli = @iteracjaPentli + 1

		INSERT INTO Zamowienie (Cena, CennikID, ModelID, PracownikID, KlientID, DataZamowienia, DataPlanowanegoOdbioru, CzyZrealizowane, CzyOplacone)
		Values
		(@Cena ,@CennikID ,@ModelID ,@PracownikID ,@KlientID ,@DataZamowienia ,@DataPlanowanegoOdbioru ,@CzyZrealizowane ,@CzyOplacone )
		
	END 

END