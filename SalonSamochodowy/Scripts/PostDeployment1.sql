/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
Use SalonSamochodowy;

Go

INSERT INTO [Marka] (Nazwa, KrajPochodzenia, Koncern)
VALUES 
('Opel', 'Niemcy' , 'Groupe PSA'),
('Audi', 'Niemcy' , 'Volkswagen AG'),
('Volkswagen', 'Niemcy' , 'Volkswagen AG'),
('Skoda', 'Czechy' , 'Volkswagen AG'),
('Ford', 'USA' , 'Ford Motor Company'),
('Nissan', 'Japonia' , 'Nissan Motor Co. Ltd'),
('BMW', 'Niemcy' , 'BMW'),
('Porshe', 'Niemcy' , 'Volkswagen AG'),
('Seat', 'Hiszpania' , 'Volkswagen AG'),
('Citroen', 'Francja' , 'PSA');
go

INSERT INTO [Model] (Nazwa, IloscDrzwi, ZamekCentralny, Radio, PoczatekProdukcji, MasaKg, Marka)
VALUES
('Passat', 4, 0, 1, '2001-02-1', 1450, 'Volkswagen'),
('Golf 4', 5, 1, 1, '2008-10-7', 1800, 'Volkswagen'),
('Golf 2', 3, 0, 0, '1998-06-14', 1150, 'Volkswagen'),
('A3', 3, 1, 1, '2001-02-1', 1670, 'Audi'),
('A4', 5, 1, 0, '2012-05-21', 2100, 'Audi'),
('Focus', 4, 0, 1, '2006-01-1', 1550, 'Ford'),
('E36', 3, 1, 1, '2000-12-12', 1600, 'BMW'),
('E46', 3, 0, 0, '2001-02-1', 1200, 'Volkswagen'),
('Insignia', 4, 1, 1, '2015-09-12', 1900, 'Opel'),
('Astra', 5, 1, 0, '1995-05-9', 1850, 'Opel'),
('Fabia', 5, 1, 1, '1999-11-1', 1300, 'Skoda'),
('GTR', 3, 1, 1, '2016-01-8', 1900, 'Nissan'),
('Panamera', 5, 1, 1, '2012-12-25', 2600, 'Porshe'),
('Cordoba', 3, 1, 0, '2008-09-16', 1100, 'Seat'),
('C4', 4, 1, 1, '2007-10-1', 1750, 'Citroen');
go 

INSERT INTO [Pracownik] (Imie, Nazwisko, PESEL, NrKontaBankowego, DataPodpisaniaUmowy, CzyNaWypowiedzeniu)
VALUES
('Piotr','Nowak',98345678901, 1221321, '2017-01-1', 0),
('Tomasz','Laskowski',23456789011, 7867883, '2010-06-1', 0),
('Tomasz','Kostyrka',34567890112, 9921399, '2018-10-1', 0),
('Paweł','Skrobacz',45678901123, 1234321, '2015-11-1', 0),
('Jan','Kowalski',67890112345, 4321343, '2019-01-1', 0);
go

INSERT INTO [Klient] (Imie, Nazwisko, Email, Adres, NrDowoduOSobistego, NrTel)
VALUES
('Katarzyna','Kowalska','jakis@o2.pl', 'Krakow', 'AWK-65232', 12345678),
('Paweł','Nowak','znany@o2.pl', 'Wieliczka', 'AWK-12345', 12312333),
('Marcin','Wojcik','artysta@o2.pl', 'Zakopane', 'AWK-54321', 4545455),
('Jolanta','Mnich','ktory@o2.pl', 'Warszawa', 'AWK-12123', 6767677),
('Przemyslaw','Walczyk','lubi@o2.pl', 'Poznan', 'AWK-11111', 1231232),
('Mateusz','Put','male@o2.pl', 'Krakow', 'AWK-54311', 1234543),
('Janusz','Biznesu','slodkie@o2.pl', 'Wieliczka', 'AWK-44444', 7654321),
('Tomasz','Hoffman','kotki@o2.pl', 'Pcim', 'AWK-22334', 9876543);
go

INSERT INTO Serwis.StatusZamowieniaSerwisu (NazwaStatusu)
VALUES 
('zlozone'),
('w realizacji'),
('czeka na obior'),
('zamkniete');
go

INSERT INTO Serwis.UslugaSerwisu (Nazwa, Koszt)
VALUES
('Przeglad',100),
('Zmiana oleju',200),
('Malowanie',300),
('Mycie',50),
('Zmiana Opon',110);
go

INSERT INTO [Cennik] (ModelID, Cena, Uzywany, Przebieg, CenaOd, CenaDo)
VALUES
(1,17000 ,1 ,110000 ,'2018-04-1' ,'2019-05-1' ),
(2,21750 ,0 ,220000 ,'2018-08-1' ,'2019-04-1' ),
(3,11200 ,1 ,400000 ,'2018-07-1' ,'2019-03-1' ),
(4,56500 ,1 ,450000 ,'2018-06-1' ,'2019-09-1' ),
(5,12500 ,1 ,123000 ,'2018-07-1' ,'2019-08-1' ),
(6,10000 ,0 ,450000 ,'2018-08-1' ,'2019-05-1' ),
(7,12000 ,0 ,500500 ,'2018-10-1' ,'2019-06-1' ),
(8,34000 ,0 ,560000 ,'2018-04-1' ,'2019-07-1' ),
(9,23400 ,0 ,140000 ,'2018-06-1' ,'2019-09-1' ),
(10,99000 ,0 ,340500 ,'2018-05-1' ,'2019-04-1' ),
(11,77000 ,0 ,450000 ,'2018-04-1' ,'2019-04-1' ),
(12,12400 ,1 ,120000 ,'2018-06-1' ,'2019-05-1' ),
(13,20000 ,0 ,230000 ,'2018-03-1' ,'2019-04-1' ),
(14,11100 ,1 ,230000 ,'2018-01-1' ,'2019-03-1' ),
(15,22500 ,0 ,300000 ,'2018-12-1' ,'2019-04-1' );
GO

INSERT INTO Hr.Zespol (Nazwa, MiejscePracy)
VALUES
('Sprzedawcy','Salon'),
('Mechanicy','Warsztat'),
('Administracja','Biuro'),
('Lakiernicy','Warsztat'),
('Sprzatacze','Wszedzie');
GO

INSERT INTO Hr.StanowiskoPracy (Nazwa, Obowiazki)
VALUES
('Asystent Mechanik','naprawa samochodow'),
('Mechanik','naprawa Samochodow'),
('Sprzedawca','sprzedaz samochodow'),
('Mlodszy Malarz','malowanie oklejanie'),
('Malarz','malowanie oklejanie'),
('Starszy Malarz','malowanie, oklejanie'),
('Sekretarka','spotkania, korespondencja, obsluga telefonu'),
('Sprzataczka','dbanie o czystosc'),
('Przedstawiciel','reprezentowanie salonu, pozyskiwanie klijentow'),
('Pracownik Myjni','dbanie o czystosc samochodow'),
GO