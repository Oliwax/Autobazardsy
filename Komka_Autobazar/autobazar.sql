-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2024 at 10:18 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `autobazar`
--

-- --------------------------------------------------------

--
-- Table structure for table `auta`
--

CREATE TABLE `auta` (
  `ID_auta` int(11) NOT NULL,
  `Znacka` varchar(50) DEFAULT NULL,
  `Model` varchar(50) DEFAULT NULL,
  `Rok_vyroby` int(11) DEFAULT NULL,
  `Typ_karosérie` varchar(50) DEFAULT NULL,
  `Farba` varchar(50) DEFAULT NULL,
  `Najazdene_km` int(11) DEFAULT NULL,
  `Typ_pohonu` varchar(50) DEFAULT NULL,
  `Prevodovka` varchar(50) DEFAULT NULL,
  `Cena` decimal(10,2) DEFAULT NULL,
  `Lokalita` varchar(100) DEFAULT NULL,
  `Kontaktné_udaje` varchar(100) DEFAULT NULL,
  `Obrazok` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auta`
--

INSERT INTO `auta` (`ID_auta`, `Znacka`, `Model`, `Rok_vyroby`, `Typ_karosérie`, `Farba`, `Najazdene_km`, `Typ_pohonu`, `Prevodovka`, `Cena`, `Lokalita`, `Kontaktné_udaje`, `Obrazok`) VALUES
(1, 'Škoda', 'Octavia', 2018, 'Sedan', 'Modrá', 50000, 'Benzín', 'Manuálna', 15000.00, 'Bratislava', '+421 123 456 789', 'https://th.bing.com/th/id/R.942db81060f462318c7bfd9cbe114cd1?rik=eIF6klpKP8%2fNIw&pid=ImgRaw&r=0'),
(2, 'Volkswagen', 'Golf', 2017, 'Hatchback', 'Biela', 60000, 'Diesel', 'Automatická', 18000.00, 'Košice', '+421 987 654 321', 'https://wallup.net/wp-content/uploads/2019/09/1000660-volkswagen-golf-gti-40-years-cars-white-typ-5g-2016.jpg'),
(3, 'Ford', 'Focus', 2015, 'sedan', 'čierna', 75000, 'predný', 'manuálna', 12000.00, 'Bratislava', '0901234567', 'https://th.bing.com/th/id/R.b92e4f6abd98c3e5359a4c59695f7c15?rik=23GgLyWivI6bPQ&pid=ImgRaw&r=0'),
(4, 'Volkswagen', 'Golf', 2017, 'hatchback', 'biela', 60000, 'predný', 'automatická', 15000.00, 'Košice', '0912345678', 'https://wallup.net/wp-content/uploads/2019/09/1000660-volkswagen-golf-gti-40-years-cars-white-typ-5g-2016.jpg'),
(5, 'Toyota', 'Corolla', 2016, 'sedan', 'strieborná', 80000, 'predný', 'manuálna', 13000.00, 'Žilina', '0923456789', 'https://th.bing.com/th/id/R.cac850d2029a3f9ff7485a2423b86c2e?rik=pDJlhdAEvgP0ug&pid=ImgRaw&r=0'),
(6, 'Škoda', 'Octavia', 2018, 'hatchback', 'modrá', 50000, 'predný', 'automatická', 17000.00, 'Nitra', '0934567890', 'https://th.bing.com/th/id/R.942db81060f462318c7bfd9cbe114cd1?rik=eIF6klpKP8%2fNIw&pid=ImgRaw&r=0'),
(7, 'Honda', 'Civic', 2017, 'sedan', 'červená', 65000, 'predný', 'manuálna', 14000.00, 'Bratislava', '0945678901', 'https://th.bing.com/th/id/R.62b764f4c1be6de2e31f2dfe98f9832f?rik=Oyfdz5Z2YFu1wQ&pid=ImgRaw&r=0'),
(8, 'Hyundai', 'i30', 2019, 'hatchback', 'biela', 40000, 'predný', 'automatická', 18000.00, 'Košice', '0956789012', 'https://th.bing.com/th/id/OIP.pqCgcFpKo8hRNNd4_v07KQHaEL?rs=1&pid=ImgDetMain'),
(9, 'Kia', 'Ceed', 2016, 'hatchback', 'strieborná', 70000, 'predný', 'manuálna', 13500.00, 'Žilina', '0967890123', 'https://th.bing.com/th/id/OIP.E-CY4zzxNTfiAMPenGZRtwHaFj?rs=1&pid=ImgDetMain'),
(10, 'Mazda', '3', 2018, 'sedan', 'modrá', 55000, 'predný', 'automatická', 16000.00, 'Nitra', '0978901234', 'https://th.bing.com/th/id/OIP.mXYyvYkMEftXAoNqcSEEKgHaEK?rs=1&pid=ImgDetMain'),
(11, 'Nissan', 'Qashqai', 2017, 'SUV', 'čierna', 60000, 'predný', 'manuálna', 14500.00, 'Bratislava', '0989012345', 'https://th.bing.com/th/id/R.a4cd8d223db39e5cba2a2dab878e182d?rik=eWis5rAwZ6KMvw&pid=ImgRaw&r=0'),
(12, 'Opel', 'Astra', 2016, 'hatchback', 'strieborná', 75000, 'predný', 'automatická', 15500.00, 'Košice', '0990123456', 'https://th.bing.com/th/id/R.4187ed846995d80e2e5f88b2d8987345?rik=VjOLBaTn52AkRg&pid=ImgRaw&r=0'),
(13, 'Peugeot', '308', 2017, 'hatchback', 'biela', 62000, 'predný', 'manuálna', 13750.00, 'Žilina', '0123456789', 'https://th.bing.com/th/id/R.55c7a1e12b4041e8c5c716144f4d29dd?rik=yF1YC%2fpIzlOg0A&pid=ImgRaw&r=0'),
(14, 'Renault', 'Megane', 2018, 'hatchback', 'červená', 53000, 'predný', 'automatická', 16700.00, 'Nitra', '0234567890', 'https://th.bing.com/th/id/R.56862517bb8cd2c5be7be612d3f8763a?rik=POh%2boUZVNpzuoA&pid=ImgRaw&r=0'),
(15, 'Seat', 'Leon', 2016, 'hatchback', 'strieborná', 71000, 'predný', 'manuálna', 14000.00, 'Bratislava', '0345678901', 'https://th.bing.com/th/id/OIP.mGFXeFEQo5kH0tFxTDWu9AHaHa?rs=1&pid=ImgDetMain'),
(16, 'Škoda', 'Superb', 2019, 'sedan', 'modrá', 48000, 'predný', 'automatická', 17500.00, 'Košice', '0456789012', 'https://th.bing.com/th/id/OIP.eod5elxR61QHjB-OifkXRgHaE8?rs=1&pid=ImgDetMain'),
(17, 'Subaru', 'Impreza', 2017, 'sedan', 'biela', 64000, 'predný', 'manuálna', 14200.00, 'Žilina', '0567890123', 'https://i.pinimg.com/originals/f9/f8/38/f9f8380f6d77471be2fb4003c650e9e9.jpg'),
(18, 'Suzuki', 'Swift', 2018, 'hatchback', 'čierna', 56000, 'predný', 'automatická', 16500.00, 'Nitra', '0678901234', 'https://th.bing.com/th/id/OIP.uEMIFJrLIXG-JzGtMkPFQwHaEL?rs=1&pid=ImgDetMain'),
(19, 'Tesla', 'Model 3', 2019, 'sedan', 'červená', 45000, 'elektrický', 'automatická', 50000.00, 'Bratislava', '0789012345', 'https://th.bing.com/th/id/OIP.ftz6-yP4qCGLcp4NBdklNQHaDo?rs=1&pid=ImgDetMain');

-- --------------------------------------------------------

--
-- Table structure for table `predajne`
--

CREATE TABLE `predajne` (
  `ID_predajne` int(11) NOT NULL,
  `Nazov` varchar(100) DEFAULT NULL,
  `Adresa` varchar(255) DEFAULT NULL,
  `Mesto` varchar(100) DEFAULT NULL,
  `PSC` varchar(10) DEFAULT NULL,
  `Telefonne_cislo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `predajne`
--

INSERT INTO `predajne` (`ID_predajne`, `Nazov`, `Adresa`, `Mesto`, `PSC`, `Telefonne_cislo`) VALUES
(1, 'Autopark', 'Hlavná 123', 'Bratislava', '811 02', '+421 111 222 333'),
(2, 'Autocentrum', 'Družstevná 456', 'Košice', '040 01', '+421 444 555 666');

-- --------------------------------------------------------

--
-- Table structure for table `rezervacie`
--

CREATE TABLE `rezervacie` (
  `ID_rezervacie` int(11) NOT NULL,
  `ID_auta` int(11) DEFAULT NULL,
  `ID_predajne` int(11) DEFAULT NULL,
  `Meno` varchar(100) DEFAULT NULL,
  `Priezvisko` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Telefonne_cislo` varchar(20) DEFAULT NULL,
  `Datum_rezervacie` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rezervacie`
--

INSERT INTO `rezervacie` (`ID_rezervacie`, `ID_auta`, `ID_predajne`, `Meno`, `Priezvisko`, `Email`, `Telefonne_cislo`, `Datum_rezervacie`) VALUES
(1, 2, 2, 'Oliver', 'Komka', 'oliver.komka@gmail.com', '0919415292', '2024-04-05'),
(2, 5, 2, 'Patrik', 'Gajdos', 'martinbartko07@gmail.com', '0919 512 121', '2024-04-06'),
(3, 5, 2, 'Patrik', 'Gajdos', 'martinbartko07@gmail.com', '0919 512 121', '2024-04-06'),
(4, 6, 1, 'Patrik', 'Gajdos', 'martinbartko07@gmail.com', '0919 512 121', '2024-04-07');

-- --------------------------------------------------------

--
-- Table structure for table `servisne_zaznamy`
--

CREATE TABLE `servisne_zaznamy` (
  `ID_zaznamu` int(11) NOT NULL,
  `ID_auta` int(11) DEFAULT NULL,
  `Datum` date DEFAULT NULL,
  `Popis` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `servisne_zaznamy`
--

INSERT INTO `servisne_zaznamy` (`ID_zaznamu`, `ID_auta`, `Datum`, `Popis`) VALUES
(1, 1, '2023-05-15', 'Výmena oleja a filtrov'),
(2, 2, '2023-07-20', 'Kontrola brzdového systému');

-- --------------------------------------------------------

--
-- Table structure for table `typy_karoserie`
--

CREATE TABLE `typy_karoserie` (
  `ID_karoserie` int(11) NOT NULL,
  `Typ` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `typy_karoserie`
--

INSERT INTO `typy_karoserie` (`ID_karoserie`, `Typ`) VALUES
(1, 'Sedan'),
(2, 'Hatchback'),
(3, 'SUV'),
(4, 'Kombi'),
(5, 'Coupé');

-- --------------------------------------------------------

--
-- Table structure for table `typy_pohonov`
--

CREATE TABLE `typy_pohonov` (
  `ID_pohonu` int(11) NOT NULL,
  `Typ` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `typy_pohonov`
--

INSERT INTO `typy_pohonov` (`ID_pohonu`, `Typ`) VALUES
(1, 'Benzín'),
(2, 'Diesel'),
(3, 'Elektrický'),
(4, 'Hybrid');

-- --------------------------------------------------------

--
-- Table structure for table `vybavenie_vozidiel`
--

CREATE TABLE `vybavenie_vozidiel` (
  `ID_vybavenia` int(11) NOT NULL,
  `Popis` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vybavenie_vozidiel`
--

INSERT INTO `vybavenie_vozidiel` (`ID_vybavenia`, `Popis`) VALUES
(1, 'ABS, Airbagy'),
(2, 'Štandardný zvukový systém'),
(3, 'Navigácia'),
(4, 'Parkovacie senzory'),
(5, 'Klimatizácia'),
(6, 'Kamera vzadu'),
(7, 'Kožený interiér'),
(8, 'Tempomat'),
(9, 'Bluetooth'),
(10, 'Alkantara sedadlá');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auta`
--
ALTER TABLE `auta`
  ADD PRIMARY KEY (`ID_auta`);

--
-- Indexes for table `predajne`
--
ALTER TABLE `predajne`
  ADD PRIMARY KEY (`ID_predajne`);

--
-- Indexes for table `rezervacie`
--
ALTER TABLE `rezervacie`
  ADD PRIMARY KEY (`ID_rezervacie`),
  ADD KEY `ID_auta` (`ID_auta`),
  ADD KEY `ID_predajne` (`ID_predajne`);

--
-- Indexes for table `servisne_zaznamy`
--
ALTER TABLE `servisne_zaznamy`
  ADD PRIMARY KEY (`ID_zaznamu`),
  ADD KEY `ID_auta` (`ID_auta`);

--
-- Indexes for table `typy_karoserie`
--
ALTER TABLE `typy_karoserie`
  ADD PRIMARY KEY (`ID_karoserie`);

--
-- Indexes for table `typy_pohonov`
--
ALTER TABLE `typy_pohonov`
  ADD PRIMARY KEY (`ID_pohonu`);

--
-- Indexes for table `vybavenie_vozidiel`
--
ALTER TABLE `vybavenie_vozidiel`
  ADD PRIMARY KEY (`ID_vybavenia`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auta`
--
ALTER TABLE `auta`
  MODIFY `ID_auta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `predajne`
--
ALTER TABLE `predajne`
  MODIFY `ID_predajne` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rezervacie`
--
ALTER TABLE `rezervacie`
  MODIFY `ID_rezervacie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `servisne_zaznamy`
--
ALTER TABLE `servisne_zaznamy`
  MODIFY `ID_zaznamu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `typy_karoserie`
--
ALTER TABLE `typy_karoserie`
  MODIFY `ID_karoserie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `typy_pohonov`
--
ALTER TABLE `typy_pohonov`
  MODIFY `ID_pohonu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vybavenie_vozidiel`
--
ALTER TABLE `vybavenie_vozidiel`
  MODIFY `ID_vybavenia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rezervacie`
--
ALTER TABLE `rezervacie`
  ADD CONSTRAINT `rezervacie_ibfk_1` FOREIGN KEY (`ID_auta`) REFERENCES `auta` (`ID_auta`),
  ADD CONSTRAINT `rezervacie_ibfk_2` FOREIGN KEY (`ID_predajne`) REFERENCES `predajne` (`ID_predajne`);

--
-- Constraints for table `servisne_zaznamy`
--
ALTER TABLE `servisne_zaznamy`
  ADD CONSTRAINT `servisne_zaznamy_ibfk_1` FOREIGN KEY (`ID_auta`) REFERENCES `auta` (`ID_auta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
