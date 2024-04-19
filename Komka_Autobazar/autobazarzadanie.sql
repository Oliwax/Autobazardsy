-- Creating the database
CREATE DATABASE autobazarzadanie;
GO

-- Using the created database
USE autobazarzadanie;
GO

-- Table structure for table 'Mesto'
CREATE TABLE Mesto (
    ID_Mesto INT PRIMARY KEY,
    Nazov_Mesta VARCHAR(100),
    PSC VARCHAR(10)
);

-- Data insertion for table 'Mesto'
INSERT INTO Mesto (ID_Mesto, Nazov_Mesta, PSC) VALUES
(1, 'Bratislava', '811 02'),
(2, 'Ko�ice', '040 01');

-- Table structure for table 'Platba'
CREATE TABLE Platba (
    ID_Platba INT PRIMARY KEY,
    Hotovost VARCHAR(3),
    Bankovy_Prevod VARCHAR(3),
    Card VARCHAR(3)
);

INSERT INTO Platba (ID_Platba, Hotovost, Bankovy_Prevod, Card) VALUES
(1, 'Ano', 'Nie', 'Nie'),
(2, 'Nie', 'Ano', 'Nie'),
(3, 'Nie', 'Nie', 'Ano'),
(4, 'Ano', 'Nie', 'Nie');

-- Table structure for table 'ZnackaPneu'
CREATE TABLE ZnackaPneu (
    ID_Znacka_Pneu INT PRIMARY KEY,
    Znacka_Pneu VARCHAR(100),
    Model_Pneu VARCHAR(100)
);

-- Data insertion for table 'ZnackaPneu'
INSERT INTO ZnackaPneu (ID_Znacka_Pneu, Znacka_Pneu, Model_Pneu) VALUES
(1, 'Michelin', 'Pilot Sport 4'),
(2, 'Continental', 'ContiSportContact 5'),
(3, 'Bridgestone', 'Potenza S001'),
(4, 'Pirelli', 'P Zero'),
(5, 'Goodyear', 'Eagle F1 Asymmetric 5');

-- Table structure for table 'Pneumatiky'
CREATE TABLE Pneumatiky (
    ID_Pneumatiky INT PRIMARY KEY,
    ID_Znacka INT,
    Stav VARCHAR(50),
    Vyuzitie VARCHAR(50),
    Pocet INT,
    FOREIGN KEY (ID_Znacka) REFERENCES ZnackaPneu(ID_Znacka_Pneu)
);

INSERT INTO Pneumatiky (ID_Pneumatiky, ID_Znacka, Stav, Vyuzitie, Pocet) VALUES
(1, 1, 'Nov�', 'Letn�', 4),
(2, 2, 'Pou�it�', 'Zimn�', 4),
(3, 3, 'Nov�', 'Letn�', 4),
(4, 4, 'Pou�it�', 'Letn�', 4),
(5, 5, 'Nov�', 'Zimn�', 4);

-- Table structure for table 'auta'
CREATE TABLE auta (
    ID_auta INT PRIMARY KEY,
    Znacka VARCHAR(50) NULL,
    Model VARCHAR(50) NULL,
    Rok_vyroby INT NULL,
    Typ_karos�rie VARCHAR(50) NULL,
    Farba VARCHAR(50) NULL,
    Najazdene_km INT NULL,
    Typ_pohonu INT NULL,
    Prevodovka VARCHAR(50) NULL,
    Cena DECIMAL(10,2) NULL,
    Lokalita VARCHAR(100) NULL,
    Kontaktn�_udaje VARCHAR(100) NULL,
    Obrazok VARCHAR(255) NULL,
    ID_Pneumatiky INT NULL,
    FOREIGN KEY (ID_Pneumatiky) REFERENCES Pneumatiky(ID_Pneumatiky)
);

-- Data insertion for table 'auta'
INSERT INTO auta (ID_auta, Znacka, Model, Rok_vyroby, Typ_karos�rie, Farba, Najazdene_km, Typ_pohonu, Prevodovka, Cena, Lokalita, Kontaktn�_udaje, Obrazok, ID_Pneumatiky)
VALUES
(1, '�koda', 'Octavia', 2018, 'Sedan', 'Modr�', 50000, 1, 'Manu�lna', 15000.00, 'Bratislava', '+421 123 456 789', 'https://th.bing.com/th/id/R.942db81060f462318c7bfd9cbe114cd1?rik=eIF6klpKP8%2fNIw&pid=ImgRaw&r=0', 1),
(2, 'Volkswagen', 'Golf', 2017, 'Hatchback', 'Biela', 60000, 2, 'Automatick�', 18000.00, 'Ko�ice', '+421 987 654 321', 'https://wallup.net/wp-content/uploads/2019/09/1000660-volkswagen-golf-gti-40-years-cars-white-typ-5g-2016.jpg', 2),
(3, 'Ford', 'Focus', 2015, 'Sedan', '�ierna', 75000, 1, 'Manu�lna', 12000.00, 'Bratislava', '0901234567', 'https://th.bing.com/th/id/R.b92e4f6abd98c3e5359a4c59695f7c15?rik=23GgLyWivI6bPQ&pid=ImgRaw&r=0', 3),
(4, 'Volkswagen', 'Golf', 2017, 'Hatchback', 'Biela', 60000, 1, 'Automatick�', 15000.00, 'Ko�ice', '0912345678', 'https://wallup.net/wp-content/uploads/2019/09/1000660-volkswagen-golf-gti-40-years-cars-white-typ-5g-2016.jpg', 4),
(5, 'Toyota', 'Corolla', 2016, 'Sedan', 'Strieborn�', 80000, 1, 'Manu�lna', 13000.00, '�ilina', '0923456789', 'https://th.bing.com/th/id/R.cac850d2029a3f9ff7485a2423b86c2e?rik=pDJlhdAEvgP0ug&pid=ImgRaw&r=0', 5),
(6, '�koda', 'Octavia', 2018, 'Hatchback', 'Modr�', 50000, 1, 'Automatick�', 17000.00, 'Nitra', '0934567890', 'https://th.bing.com/th/id/R.942db81060f462318c7bfd9cbe114cd1?rik=eIF6klpKP8%2fNIw&pid=ImgRaw&r=0', 1),
(7, 'Honda', 'Civic', 2017, 'Sedan', '�erven�', 65000, 1, 'Manu�lna', 14000.00, 'Bratislava', '0945678901', 'https://th.bing.com/th/id/R.62b764f4c1be6de2e31f2dfe98f9832f?rik=Oyfdz5Z2YFu1wQ&pid=ImgRaw&r=0', 3),
(8, 'Hyundai', 'i30', 2019, 'Hatchback', 'Biela', 40000, 1, 'Automatick�', 18000.00, 'Ko�ice', '0956789012', 'https://th.bing.com/th/id/OIP.pqCgcFpKo8hRNNd4_v07KQHaEL?rs=1&pid=ImgDetMain', 2),
(9, 'Kia', 'Ceed', 2016, 'Hatchback', 'Strieborn�', 70000, 1, 'Manu�lna', 13500.00, '�ilina', '0967890123', 'https://th.bing.com/th/id/OIP.E-CY4zzxNTfiAMPenGZRtwHaFj?rs=1&pid=ImgDetMain', 5),
(10, 'Mazda', '3', 2018, 'Sedan', 'Modr�', 55000, 1, 'Automatick�', 16000.00, 'Nitra', '0978901234', 'https://th.bing.com/th/id/OIP.mXYyvYkMEftXAoNqcSEEKgHaEK?rs=1&pid=ImgDetMain', 1),
(11, 'Nissan', 'Qashqai', 2017, 'SUV', '�ierna', 60000, 1, 'Manu�lna', 14500.00, 'Bratislava', '0989012345', 'https://th.bing.com/th/id/R.a4cd8d223db39e5cba2a2dab878e182d?rik=eWis5rAwZ6KMvw&pid=ImgRaw&r=0', 3),
(12, 'Opel', 'Astra', 2016, 'Hatchback', 'Strieborn�', 75000, 1, 'Automatick�', 15500.00, 'Ko�ice', '0990123456', 'https://th.bing.com/th/id/R.4187ed846995d80e2e5f88b2d8987345?rik=VjOLBaTn52AkRg&pid=ImgRaw&r=0', 4),
(13, 'Peugeot', '308', 2017, 'Hatchback', 'Biela', 62000, 1, 'Manu�lna', 13750.00, '�ilina', '0123456789', 'https://th.bing.com/th/id/R.55c7a1e12b4041e8c5c716144f4d29dd?rik=yF1YC%2fpIzlOg0A&pid=ImgRaw&r=0', 2),
(14, 'Renault', 'Megane', 2018, 'Hatchback', '�erven�', 53000, 1, 'Automatick�', 16700.00, 'Nitra', '0234567890', 'https://th.bing.com/th/id/R.56862517bb8cd2c5be7be612d3f8763a?rik=POh%2boUZVNpzuoA&pid=ImgRaw&r=0', 4),
(15, 'Seat', 'Leon', 2016, 'Hatchback', 'Strieborn�', 71000, 1, 'Manu�lna', 14000.00, 'Bratislava', '0345678901', 'https://th.bing.com/th/id/OIP.mGFXeFEQo5kH0tFxTDWu9AHaHa?rs=1&pid=ImgDetMain', 5),
(16, '�koda', 'Superb', 2019, 'Sedan', 'Modr�', 48000, 1, 'Automatick�', 17500.00, 'Ko�ice', '0456789012', 'https://th.bing.com/th/id/OIP.eod5elxR61QHjB-OifkXRgHaE8?rs=1&pid=ImgDetMain', 1),
(17, 'Subaru', 'Impreza', 2017, 'Sedan', 'Biela', 64000, 1, 'Manu�lna', 14200.00, '�ilina', '0567890123', 'https://i.pinimg.com/originals/f9/f8/38/f9f8380f6d77471be2fb4003c650e9e9.jpg', 3),
(18, 'Suzuki', 'Swift', 2018, 'Hatchback', '�ierna', 56000, 1, 'Automatick�', 16500.00, 'Nitra', '0678901234', 'https://th.bing.com/th/id/OIP.uEMIFJrLIXG-JzGtMkPFQwHaEL?rs=1&pid=ImgDetMain', 4),
(19, 'Tesla', 'Model 3', 2019, 'Sedan', '�erven�', 45000, 3, 'Automatick�', 50000.00, 'Bratislava', '0789012345', 'https://th.bing.com/th/id/OIP.ftz6-yP4qCGLcp4NBdklNQHaDo?rs=1&pid=ImgDetMain', 5);

-- Table structure for table 'predajne'
CREATE TABLE predajne (
    ID_predajne INT PRIMARY KEY,
    Nazov VARCHAR(100) NULL,
    Adresa VARCHAR(255) NULL,
    Mesto VARCHAR(100) NULL,
    PSC VARCHAR(10) NULL,
    Telefonne_cislo VARCHAR(20) NULL
);

-- Data insertion for table 'predajne'
INSERT INTO predajne (ID_predajne, Nazov, Adresa, Mesto, PSC, Telefonne_cislo) VALUES
(1, 'Autopark', 'Hlavn� 123', 'Bratislava', '811 02', '+421 111 222 333'),
(2, 'Autocentrum', 'Dru�stevn� 456', 'Ko�ice', '040 01', '+421 444 555 666');

-- Table structure for table 'rezervacie'
CREATE TABLE rezervacie (
    ID_rezervacie INT PRIMARY KEY,
    ID_auta INT NULL,
    ID_predajne INT NULL,
    Meno VARCHAR(100) NULL,
    Priezvisko VARCHAR(100) NULL,
    Email VARCHAR(100) NULL,
    Telefonne_cislo VARCHAR(20) NULL,
    Datum_rezervacie DATE NULL,
    ID_platby INT NULL, -- Pridan� st�pec pre ID platby
    ID_mesta INT NULL, -- Pridan� st�pec pre ID mesta
    FOREIGN KEY (ID_auta) REFERENCES auta (ID_auta),
    FOREIGN KEY (ID_predajne) REFERENCES predajne (ID_predajne),
    FOREIGN KEY (ID_platby) REFERENCES Platba (ID_Platba), -- Foreign key pre ID platby
    FOREIGN KEY (ID_mesta) REFERENCES Mesto (ID_Mesto) -- Foreign key pre ID mesta
);


drop table rezervacie

-- Data insertion for table 'rezervacie'
-- Insert into 'rezervacie' table with payment type and city
INSERT INTO rezervacie (ID_rezervacie, ID_auta, ID_predajne, Meno, Priezvisko, Email, Telefonne_cislo, Datum_rezervacie, ID_platby, ID_mesta)
VALUES
(1, 2, 2, 'Oliver', 'Komka', 'oliver.komka@gmail.com', '0919415292', '2024-04-05', 1, 1), -- ID_platby a ID_mesta pridane
(2, 5, 2, 'Patrik', 'Gajdos', 'martinbartko07@gmail.com', '0919 512 121', '2024-04-06', 2, 2), -- ID_platby a ID_mesta pridane
(3, 5, 2, 'Patrik', 'Gajdos', 'martinbartko07@gmail.com', '0919 512 121', '2024-04-06', 3, 2), -- ID_platby a ID_mesta pridane
(4, 6, 1, 'Patrik', 'Gajdos', 'martinbartko07@gmail.com', '0919 512 121', '2024-04-07', 4, 1); -- ID_platby a ID_mesta pridane

delete rezervacie

-- Table structure for table 'servisne_zaznamy'
CREATE TABLE servisne_zaznamy (
    ID_zaznamu INT PRIMARY KEY,
    ID_auta INT NULL,
    Datum DATE NULL,
    Popis VARCHAR(255) NULL,
    FOREIGN KEY (ID_auta) REFERENCES auta (ID_auta)
);

-- Data insertion for table 'servisne_zaznamy'
INSERT INTO servisne_zaznamy (ID_zaznamu, ID_auta, Datum, Popis) VALUES
(1, 1, '2023-05-15', 'V�mena oleja a filtrov'),
(2, 1, '2022-12-20', 'V�mena brzdov�ch platni�iek'),
(3, 1, '2021-08-10', 'V�mena bat�rie'),
(4, 2, '2023-03-01', 'V�mena oleja a filtrov'),
(5, 2, '2022-10-05', 'V�mena brzdov�ch platni�iek'),
(6, 3, '2022-11-12', 'V�mena oleja a filtrov'),
(7, 3, '2022-06-22', 'V�mena bat�rie'),
(8, 3, '2021-09-18', 'V�mena brzdov�ch platni�iek');








-- Z�skanie �dajov o aut�ch vyroben�ch po roku 2017
SELECT * FROM auta WHERE Rok_vyroby > 2017;

-- Z�skanie �dajov o nov�ch letn�ch pneumatik�ch
SELECT * FROM Pneumatiky WHERE Stav = 'Nov�' AND Vyuzitie = 'Letn�';

-- Z�skanie �dajov o pneumatik�ch s inform�ciami o ich zna�ke
SELECT pn.ID_Pneumatiky, pn.Stav, pn.Vyuzitie, pn.Pocet, zp.Znacka_Pneu, zp.Model_Pneu
FROM Pneumatiky AS pn
JOIN ZnackaPneu AS zp ON pn.ID_Znacka = zp.ID_Znacka_Pneu;

-- Z�skanie �dajov o rezerv�ci�ch s inform�ciami o aute, cene a predajni
SELECT r.ID_rezervacie, r.Meno, r.Priezvisko, r.Datum_rezervacie, a.Znacka, a.Model, a.Cena, p.Nazov, p.Adresa
FROM rezervacie AS r
JOIN auta AS a ON r.ID_auta = a.ID_auta
JOIN predajne AS p ON r.ID_predajne = p.ID_predajne;

-- V�po�et celkov�ho priemeru ceny �ut
SELECT SUM(Cena) AS Celkovy_Priemer FROM auta;

-- V�po�et priemeru najazden�ch kilometrov �ut
SELECT AVG(Najazdene_km) AS Priemer_Najazdenych_km FROM auta;

-- Vytvorenie sp���a�a na udalos� vlo�enia do tabu�ky 'rezervacie'
CREATE TRIGGER trg_rezervacie_insert
ON rezervacie
AFTER INSERT
AS
BEGIN
    -- V�pis inform�cie o novom z�zname
    PRINT 'Nov� rezerv�cia bola vytvoren�.';
END;

-- Vytvorenie funkcie na v�po�et po�tu dostupn�ch pneumat�k pre dan� zna�ku
CREATE FUNCTION PocetDostupnychPneumatikov (@ZnackaPneu VARCHAR(100))
RETURNS INT
AS
BEGIN
    DECLARE @Pocet INT;
    SELECT @Pocet = SUM(Pocet)
    FROM Pneumatiky p
    JOIN ZnackaPneu z ON p.ID_Znacka = z.ID_Znacka_Pneu
    WHERE z.Znacka_Pneu = @ZnackaPneu;
    RETURN @Pocet;
END;

-- Spustenie funkcie na v�po�et po�tu dostupn�ch pneumat�k pre zna�ku 'Michelin'
SELECT dbo.PocetDostupnychPneumatikov('Michelin') AS Pocet_Dostupnych_Pneumatikov;

-- Vytvorenie trigeru na aktualiz�ciu �dajov o predajniach pri zmene ich adresy
CREATE TRIGGER trg_update_predajne
ON predajne
AFTER UPDATE
AS
BEGIN
    PRINT 'Aktualiz�cia �dajov o predajniach bola vykonan�.';
END;

-- Aktualiz�cia �dajov o predajniach
UPDATE predajne
SET Adresa = 'Nov� adresa 789'
WHERE Nazov = 'Autocentrum';

-- Dropping the trigger
DROP TRIGGER trg_update_predajne;

--selct rezervacie
SELECT r.ID_rezervacie, r.Meno, r.Priezvisko, r.Datum_rezervacie, a.Znacka, a.Model, a.Cena, p.Nazov, p.Adresa
FROM rezervacie AS r
JOIN auta AS a ON r.ID_auta = a.ID_auta
JOIN predajne AS p ON r.ID_predajne = p.ID_predajne;


--selct auta
SELECT a.Znacka, a.Model, a.Rok_vyroby, a.Typ_karos�rie, a.Farba, a.Najazdene_km, 
    CASE a.Typ_pohonu
        WHEN 1 THEN 'Predn�'
        WHEN 2 THEN 'Zadn�'
        WHEN 3 THEN 'Pohon v�etk�ch kolies'
        ELSE 'Nezn�my'
    END AS Typ_pohonu, 
    a.Prevodovka, a.Cena, a.Lokalita, a.Kontaktn�_udaje, 
    p.Stav AS Stav_pneumatiky, p.Vyuzitie AS Vyuzitie_pneumatiky
FROM auta AS a
JOIN Pneumatiky AS p ON a.ID_Pneumatiky = p.ID_Pneumatiky;


CREATE PROCEDURE PridatRezervaciu
    @ID_auta INT,
    @ID_predajne INT,
    @Meno VARCHAR(100),
    @Priezvisko VARCHAR(100),
    @Email VARCHAR(100),
    @Telefonne_cislo VARCHAR(20),
    @Datum_rezervacie DATE,
    @ID_platby INT,
    @ID_mesta INT
AS
BEGIN
    DECLARE @ID_rezervacie INT;
    SELECT @ID_rezervacie = ISNULL(MAX(ID_rezervacie), 0) + 1 FROM rezervacie;
    INSERT INTO rezervacie (ID_rezervacie, ID_auta, ID_predajne, Meno, Priezvisko, Email, Telefonne_cislo, Datum_rezervacie, ID_platby, ID_mesta)
    VALUES (@ID_rezervacie, @ID_auta, @ID_predajne, @Meno, @Priezvisko, @Email, @Telefonne_cislo, @Datum_rezervacie, @ID_platby, @ID_mesta);
    PRINT 'Rezerv�cia bola �spe�ne pridan�.';
END;



DROP PROCEDURE IF EXISTS PridatRezervaciu;

EXECUTE PridatRezervaciu 
    @ID_auta = 3,
    @ID_predajne = 1,
    @Meno = 'Peter',
    @Priezvisko = 'Nov�k',
    @Email = 'peter.novak@email.com',
    @Telefonne_cislo = '0908 123 456',
    @Datum_rezervacie = '2024-04-18',
    @ID_platby = 2,
    @ID_mesta = 1;
