-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2023 at 01:12 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mojmajstor`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `ID_Admina` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Sifra` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`ID_Admina`, `Username`, `Sifra`, `Email`) VALUES
(1, 'Andrija', '123', 'andrija.spasojevic.2000@gmail.com\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `aktivnost`
--

CREATE TABLE `aktivnost` (
  `ID_aktivnosti` int(11) NOT NULL,
  `ID_intervencije` int(11) NOT NULL,
  `Naziv` text NOT NULL,
  `Opis` text DEFAULT NULL,
  `Datum_pocetka` datetime NOT NULL,
  `Datum_zavrsetka` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `alati`
--

CREATE TABLE `alati` (
  `ID_Alata` int(11) NOT NULL,
  `NazivAlata` varchar(255) DEFAULT NULL,
  `KolicinaAlata` int(11) DEFAULT NULL,
  `ID_Magacina` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alati`
--

INSERT INTO `alati` (`ID_Alata`, `NazivAlata`, `KolicinaAlata`, `ID_Magacina`) VALUES
(2, 'Brusilica', 110, 1),
(3, 'Busilica', 147815, 1),
(4, 'Rezac', 246601, 1),
(5, 'Multimetar', 1017, 2),
(6, 'Klesta', 2466, 2),
(7, 'Rucna_testera', 56, 2),
(8, 'Kljuc_za_cevi', 138, 3),
(9, 'Rendgen_za_cevi', 8, 3),
(10, 'Brusilica_za_cevi', 133, 3),
(11, 'Cekic_za_plocice', 1018, 4),
(12, 'Secica_za_plocice', 12, 4),
(13, 'Gumena_gleterica', 22, 4),
(14, 'Valjak_za_farbanje', 25, 5),
(15, 'Cetka_za_detalje', 30, 5),
(16, 'Lepak_za_tapete', 18, 5);

-- --------------------------------------------------------

--
-- Table structure for table `alatiusluge`
--

CREATE TABLE `alatiusluge` (
  `IDUsluga` int(11) DEFAULT NULL,
  `IDAlata` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alatiusluge`
--

INSERT INTO `alatiusluge` (`IDUsluga`, `IDAlata`) VALUES
(1, 2),
(1, 3),
(1, 4),
(2, 5),
(2, 6),
(2, 7),
(3, 8),
(3, 9),
(3, 10),
(4, 11),
(4, 12),
(4, 13),
(5, 14),
(5, 15),
(5, 16);

-- --------------------------------------------------------

--
-- Table structure for table `banka`
--

CREATE TABLE `banka` (
  `IDBanke` int(11) NOT NULL,
  `ImeBanke` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blokiranikorisnici`
--

CREATE TABLE `blokiranikorisnici` (
  `IDBlokiranihKorisnika` int(11) NOT NULL,
  `IDKorisnika` int(11) NOT NULL,
  `SpisakKorisnika` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cenovnikusluga`
--

CREATE TABLE `cenovnikusluga` (
  `IDCenovnikUsluga` int(11) NOT NULL,
  `IDUsluga` int(11) NOT NULL,
  `Cenovnik` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dobavljaci`
--

CREATE TABLE `dobavljaci` (
  `IDDobavljaci` int(11) NOT NULL,
  `IDAlata` int(11) DEFAULT NULL,
  `IDNabavka` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dogovoroposlu`
--

CREATE TABLE `dogovoroposlu` (
  `IDDogovori` int(11) NOT NULL,
  `IDListeKlijenata` varchar(255) NOT NULL,
  `IDListePoziva` varchar(255) NOT NULL,
  `IDListaPoslova` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fakture`
--

CREATE TABLE `fakture` (
  `idFakture` int(11) NOT NULL,
  `ImeFirme` varchar(255) NOT NULL,
  `Cena` varchar(255) NOT NULL,
  `Datum` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fakture`
--

INSERT INTO `fakture` (`idFakture`, `ImeFirme`, `Cena`, `Datum`) VALUES
(1, 'Stefan', '12345', '2023-08-30'),
(2, '12312', '123123', '2023-08-30'),
(3, '12321', '213123', '2023-08-30'),
(4, '123', '123', '2023-08-30'),
(5, '123', '123', '2023-08-30'),
(6, '123', '123', '2023-08-30'),
(7, '123', '123', '2023-08-30');

-- --------------------------------------------------------

--
-- Table structure for table `finansije`
--

CREATE TABLE `finansije` (
  `IDFinansije` int(11) NOT NULL,
  `IDBlokiranihKorisnika` int(11) DEFAULT NULL,
  `IDStanjeRacuna` int(11) NOT NULL,
  `IDListaZaTroskove` int(11) NOT NULL,
  `IDListaProfita` int(11) NOT NULL,
  `IDListaPrihoda` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inspekcija`
--

CREATE TABLE `inspekcija` (
  `ID_inspekcije` int(11) NOT NULL,
  `Datum_inspekcije` datetime NOT NULL,
  `ID_aktivnosti` int(11) NOT NULL,
  `Opis` text DEFAULT NULL,
  `Rezultat_inspekcije` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `intervencije`
--

CREATE TABLE `intervencije` (
  `ID_intervencije` int(11) NOT NULL,
  `Datum_pocetka` date NOT NULL,
  `Datum_zavrsetka` date NOT NULL,
  `Vrsta_usluge` text NOT NULL,
  `Opis` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `intervencije`
--

INSERT INTO `intervencije` (`ID_intervencije`, `Datum_pocetka`, `Datum_zavrsetka`, `Vrsta_usluge`, `Opis`) VALUES
(6, '2023-09-09', '2023-08-28', 'Obrada materijala', 'ASDJSIDJAISUJDIASJDISJADIJSAIJD'),
(7, '2023-09-09', '2023-08-28', 'Obrada materijala', 'ASDJSIDJAISUJDIASJDISJADIJSAIJD'),
(8, '2023-08-29', '2023-08-26', 'Keramika', '123123213412');

-- --------------------------------------------------------

--
-- Table structure for table `komunikacije`
--

CREATE TABLE `komunikacije` (
  `ID_poruke` int(11) NOT NULL,
  `sadrzaj_poruke` text NOT NULL,
  `datum_slanja` datetime NOT NULL,
  `ID_posiljaoca` int(11) NOT NULL,
  `ID_primaoca` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `IDKorisnika` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Sifra` varchar(20) NOT NULL,
  `Adresa` varchar(50) NOT NULL,
  `BrojTelefona` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`IDKorisnika`, `Username`, `Sifra`, `Adresa`, `BrojTelefona`) VALUES
(4, '123', '123', '123', 123),
(1, 'Stefan', '123', 'TAtatata', 213213213),
(5, '123', '1231', '123', 123),
(6, '1', '1', '1', 1),
(7, '2', '2', '2', 2),
(8, 'Andrija', '321', '123213', 123213),
(9, 'Proba', '123', '123', 123);

-- --------------------------------------------------------

--
-- Table structure for table `listakorisnika`
--

CREATE TABLE `listakorisnika` (
  `IDListaKorisnika` int(11) NOT NULL,
  `IDKlijenti` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listapoziva`
--

CREATE TABLE `listapoziva` (
  `IDListaPoziva` int(11) NOT NULL,
  `Pozivi` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listaugovorenihposlova`
--

CREATE TABLE `listaugovorenihposlova` (
  `IDListaPoslova` int(11) NOT NULL,
  `Poslovi` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listeprihoda`
--

CREATE TABLE `listeprihoda` (
  `IDListePrihoda` int(11) NOT NULL,
  `IDStanjeRacuna` int(11) NOT NULL,
  `IDisakKorisnika` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listeprofita`
--

CREATE TABLE `listeprofita` (
  `IDListeProfita` int(11) NOT NULL,
  `IDStanjeRacuna` int(11) NOT NULL,
  `Profit` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listetroskova`
--

CREATE TABLE `listetroskova` (
  `IDListeTroskova` int(11) NOT NULL,
  `IDStanjeRacuna` int(11) NOT NULL,
  `Troskovi` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `magacini`
--

CREATE TABLE `magacini` (
  `ID_Magacina` int(11) NOT NULL,
  `NazivMagacina` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `magacini`
--

INSERT INTO `magacini` (`ID_Magacina`, `NazivMagacina`) VALUES
(1, 'Magacin 1\r\n'),
(2, 'Magacin 2'),
(3, 'Magacin 3'),
(4, 'Magacin 4'),
(5, 'Magacin 5');

-- --------------------------------------------------------

--
-- Table structure for table `nabavka`
--

CREATE TABLE `nabavka` (
  `IDNabavka` int(11) NOT NULL,
  `IDAlata` int(11) DEFAULT NULL,
  `IDUgovor` varchar(255) DEFAULT NULL,
  `IDPlacanje` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `naplata`
--

CREATE TABLE `naplata` (
  `IDNaplata` int(11) NOT NULL,
  `IDBanke` int(11) NOT NULL,
  `IDKorisnika` int(11) NOT NULL,
  `Racun` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `obradanaplate`
--

CREATE TABLE `obradanaplate` (
  `IDObradeNaplate` int(11) NOT NULL,
  `IDCenovnikUsluga` int(11) NOT NULL,
  `IDNaplate` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `odabraneusluge`
--

CREATE TABLE `odabraneusluge` (
  `IDOdabraneUsluge` int(11) NOT NULL,
  `IDVrstaUsluge` int(11) NOT NULL,
  `IDCenovnikUsluga` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `placanje`
--

CREATE TABLE `placanje` (
  `IDPlacanje` int(11) NOT NULL,
  `IDFaktura` int(11) NOT NULL,
  `ListaTroskova` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plate`
--

CREATE TABLE `plate` (
  `idplate` int(11) NOT NULL,
  `idradnika` int(11) DEFAULT NULL,
  `datum` date DEFAULT NULL,
  `iznos` decimal(10,2) DEFAULT NULL,
  `mesec` int(11) DEFAULT NULL,
  `godina` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plate`
--

INSERT INTO `plate` (`idplate`, `idradnika`, `datum`, `iznos`, `mesec`, `godina`) VALUES
(1, 0, '2023-09-14', '30000.00', 1, 2001),
(2, 0, '2023-09-14', '30000.00', 1, 2001);

-- --------------------------------------------------------

--
-- Table structure for table `poslovifirme`
--

CREATE TABLE `poslovifirme` (
  `IDPosloviFirme` int(11) NOT NULL,
  `IDListaPoslova` varchar(255) NOT NULL,
  `VrastaPoslova` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pozivi`
--

CREATE TABLE `pozivi` (
  `IDPozivi` int(11) NOT NULL,
  `IDListaPoziva` varchar(255) NOT NULL,
  `IDListaKlijenata` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pracenjeisporuke`
--

CREATE TABLE `pracenjeisporuke` (
  `IDIsporuke` int(11) NOT NULL,
  `IDPlacanje` int(11) DEFAULT NULL,
  `IDGarancija` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prihodi`
--

CREATE TABLE `prihodi` (
  `id_prihoda` int(11) NOT NULL,
  `ImeFirme` varchar(255) DEFAULT NULL,
  `Prihodi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prihodi`
--

INSERT INTO `prihodi` (`id_prihoda`, `ImeFirme`, `Prihodi`) VALUES
(1, 'IceFire ', 114454),
(2, 'NekaFirma', 123456);

-- --------------------------------------------------------

--
-- Table structure for table `prodaja`
--

CREATE TABLE `prodaja` (
  `IDProdaje` int(11) NOT NULL,
  `IDFinansija` int(11) NOT NULL,
  `IDNaplata` int(11) NOT NULL,
  `IDUsluga` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profit`
--

CREATE TABLE `profit` (
  `id_profita` int(11) NOT NULL,
  `ImeFirme` varchar(255) DEFAULT NULL,
  `Profit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profit`
--

INSERT INTO `profit` (`id_profita`, `ImeFirme`, `Profit`) VALUES
(1, 'IceFire', 123124),
(2, 'NekaFirma', 2131242);

-- --------------------------------------------------------

--
-- Table structure for table `radnik`
--

CREATE TABLE `radnik` (
  `ID_Radnika` int(11) NOT NULL,
  `Username` text NOT NULL,
  `Password` text NOT NULL,
  `Radno_mesto` text DEFAULT NULL,
  `ime` text NOT NULL,
  `prezime` text NOT NULL,
  `Plata` int(11) DEFAULT NULL,
  `DatumZaposlenja` date DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `DatumPrestankaRada` date DEFAULT NULL,
  `Razlog` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `radnik`
--

INSERT INTO `radnik` (`ID_Radnika`, `Username`, `Password`, `Radno_mesto`, `ime`, `prezime`, `Plata`, `DatumZaposlenja`, `Status`, `DatumPrestankaRada`, `Razlog`) VALUES
(11, 'Radnik1', 'Radnik1', 'Radnik1', 'Radnik1', 'Radnik1', 30000, '2023-09-13', 'U radnom odnosu.', NULL, NULL),
(10, 'Viktor', '123', 'Sef', 'Viktor', 'Lukovic', 300000, '2023-09-30', 'Neaktivan', '2023-09-28', 'Otkaz'),
(12, 'Andrija00', '123', 'Sef', 'Andrija', 'Spasojevic', 123214125, '2023-09-13', 'status', '2023-09-22', 'q2wertyuio'),
(13, 'Radnik za probu', 'Radnik za probu', 'Radnik za probu', 'Radnik za probu', 'Radnik za probu', 1231231, '2023-09-12', 'Neaktivan', '2023-09-23', 'Otkaz');

-- --------------------------------------------------------

--
-- Table structure for table `resursi`
--

CREATE TABLE `resursi` (
  `ID_resursa` int(11) NOT NULL,
  `ime_resursa` text NOT NULL,
  `Opis_resursa` text DEFAULT NULL,
  `Kolicina` int(11) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `ID_radnika` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rizik`
--

CREATE TABLE `rizik` (
  `ID_rizika` int(11) NOT NULL,
  `id_radnika` int(11) NOT NULL,
  `Status_rizika` text NOT NULL,
  `Opis` text DEFAULT NULL,
  `Nivo_rizika` int(11) DEFAULT NULL,
  `Vrednost_rizika` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stanjeracuna`
--

CREATE TABLE `stanjeracuna` (
  `IDStanjeRacuna` int(11) NOT NULL,
  `IDKorisika` int(11) NOT NULL,
  `IDBanke` int(11) NOT NULL,
  `ImeFirme` varchar(50) NOT NULL,
  `StanjeRacuna` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `troskovi`
--

CREATE TABLE `troskovi` (
  `id_troskova` int(11) NOT NULL,
  `OpisTroskova` varchar(255) DEFAULT NULL,
  `Troskovi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `troskovi`
--

INSERT INTO `troskovi` (`id_troskova`, `OpisTroskova`, `Troskovi`) VALUES
(1, 'Narucivanje alata\r\n', 11456),
(2, 'Porez\r\n', 2323);

-- --------------------------------------------------------

--
-- Table structure for table `usluge`
--

CREATE TABLE `usluge` (
  `IDUsluga` int(11) NOT NULL,
  `Usluga` varchar(55) NOT NULL,
  `IDCenovnikUsluga` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usluge`
--

INSERT INTO `usluge` (`IDUsluga`, `Usluga`, `IDCenovnikUsluga`) VALUES
(1, 'Obrada materijala', 1),
(2, 'Elektricarski radovi', 2),
(3, 'Vodoinstalaterski radovi', 3),
(4, 'Keramicarski radovi', 4),
(5, 'Moleraj', 5);

-- --------------------------------------------------------

--
-- Table structure for table `zakazivanje`
--

CREATE TABLE `zakazivanje` (
  `id_zakazivanja` int(11) NOT NULL,
  `ime` varchar(255) DEFAULT NULL,
  `prezime` varchar(255) DEFAULT NULL,
  `adresa` varchar(255) DEFAULT NULL,
  `broj_telefona` varchar(20) DEFAULT NULL,
  `datum` date DEFAULT NULL,
  `Vrsta_usluge` varchar(255) DEFAULT NULL,
  `opis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zakazivanje`
--

INSERT INTO `zakazivanje` (`id_zakazivanja`, `ime`, `prezime`, `adresa`, `broj_telefona`, `datum`, `Vrsta_usluge`, `opis`) VALUES
(3, 'v', 'v', 'v', 'v', '2023-08-29', 'Vodoinstalaterski radovi', NULL),
(4, 'proba', 'proba', 'proba', 'proba', '2023-08-29', 'Obrada materijala', NULL),
(6, '123', '123', '321', '321', '2023-08-18', 'Obrada materijala', NULL),
(7, '42141245', '213123', '213213', '213', '2023-08-29', 'Moleraj', NULL),
(9, 'Stefan', '123', '321', '123465', '2023-08-29', 'Moleraj', NULL),
(10, 'sds', 'sdsdsa', 'asdas', 'sadasdas', '2023-08-29', 'Keramika', NULL),
(11, '123', '123', '123', '123', '2023-08-29', 'Obrada materijala', NULL),
(12, '123', '123', '123', '123', '2023-08-29', 'Keramika', NULL),
(13, 'Andrija', 'Spasojevic', 'Neka adresa', '0930923', '2023-09-01', 'Moleraj', NULL),
(15, '123', '132123', '123123', '213213', '2023-08-29', 'Obrada materijala', '213213');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`ID_Admina`);

--
-- Indexes for table `aktivnost`
--
ALTER TABLE `aktivnost`
  ADD PRIMARY KEY (`ID_aktivnosti`);

--
-- Indexes for table `alati`
--
ALTER TABLE `alati`
  ADD PRIMARY KEY (`ID_Alata`),
  ADD KEY `ID_Magacina` (`ID_Magacina`);

--
-- Indexes for table `alatiusluge`
--
ALTER TABLE `alatiusluge`
  ADD KEY `FK_IDUsluga` (`IDUsluga`),
  ADD KEY `FK_IDAlata` (`IDAlata`);

--
-- Indexes for table `banka`
--
ALTER TABLE `banka`
  ADD PRIMARY KEY (`IDBanke`);

--
-- Indexes for table `blokiranikorisnici`
--
ALTER TABLE `blokiranikorisnici`
  ADD PRIMARY KEY (`IDBlokiranihKorisnika`);

--
-- Indexes for table `cenovnikusluga`
--
ALTER TABLE `cenovnikusluga`
  ADD PRIMARY KEY (`IDCenovnikUsluga`);

--
-- Indexes for table `dobavljaci`
--
ALTER TABLE `dobavljaci`
  ADD PRIMARY KEY (`IDDobavljaci`);

--
-- Indexes for table `dogovoroposlu`
--
ALTER TABLE `dogovoroposlu`
  ADD PRIMARY KEY (`IDDogovori`);

--
-- Indexes for table `fakture`
--
ALTER TABLE `fakture`
  ADD PRIMARY KEY (`idFakture`);

--
-- Indexes for table `finansije`
--
ALTER TABLE `finansije`
  ADD PRIMARY KEY (`IDFinansije`);

--
-- Indexes for table `inspekcija`
--
ALTER TABLE `inspekcija`
  ADD PRIMARY KEY (`ID_inspekcije`);

--
-- Indexes for table `intervencije`
--
ALTER TABLE `intervencije`
  ADD PRIMARY KEY (`ID_intervencije`);

--
-- Indexes for table `komunikacije`
--
ALTER TABLE `komunikacije`
  ADD PRIMARY KEY (`ID_poruke`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`IDKorisnika`);

--
-- Indexes for table `listakorisnika`
--
ALTER TABLE `listakorisnika`
  ADD PRIMARY KEY (`IDListaKorisnika`);

--
-- Indexes for table `listapoziva`
--
ALTER TABLE `listapoziva`
  ADD PRIMARY KEY (`IDListaPoziva`);

--
-- Indexes for table `listaugovorenihposlova`
--
ALTER TABLE `listaugovorenihposlova`
  ADD PRIMARY KEY (`IDListaPoslova`);

--
-- Indexes for table `listeprihoda`
--
ALTER TABLE `listeprihoda`
  ADD PRIMARY KEY (`IDListePrihoda`);

--
-- Indexes for table `listeprofita`
--
ALTER TABLE `listeprofita`
  ADD PRIMARY KEY (`IDListeProfita`);

--
-- Indexes for table `listetroskova`
--
ALTER TABLE `listetroskova`
  ADD PRIMARY KEY (`IDListeTroskova`);

--
-- Indexes for table `magacini`
--
ALTER TABLE `magacini`
  ADD PRIMARY KEY (`ID_Magacina`);

--
-- Indexes for table `nabavka`
--
ALTER TABLE `nabavka`
  ADD PRIMARY KEY (`IDNabavka`);

--
-- Indexes for table `naplata`
--
ALTER TABLE `naplata`
  ADD PRIMARY KEY (`IDNaplata`);

--
-- Indexes for table `obradanaplate`
--
ALTER TABLE `obradanaplate`
  ADD PRIMARY KEY (`IDObradeNaplate`);

--
-- Indexes for table `odabraneusluge`
--
ALTER TABLE `odabraneusluge`
  ADD PRIMARY KEY (`IDCenovnikUsluga`);

--
-- Indexes for table `placanje`
--
ALTER TABLE `placanje`
  ADD PRIMARY KEY (`IDPlacanje`);

--
-- Indexes for table `plate`
--
ALTER TABLE `plate`
  ADD PRIMARY KEY (`idplate`);

--
-- Indexes for table `poslovifirme`
--
ALTER TABLE `poslovifirme`
  ADD PRIMARY KEY (`IDPosloviFirme`);

--
-- Indexes for table `pozivi`
--
ALTER TABLE `pozivi`
  ADD PRIMARY KEY (`IDPozivi`);

--
-- Indexes for table `pracenjeisporuke`
--
ALTER TABLE `pracenjeisporuke`
  ADD PRIMARY KEY (`IDIsporuke`);

--
-- Indexes for table `prihodi`
--
ALTER TABLE `prihodi`
  ADD PRIMARY KEY (`id_prihoda`);

--
-- Indexes for table `prodaja`
--
ALTER TABLE `prodaja`
  ADD PRIMARY KEY (`IDProdaje`);

--
-- Indexes for table `profit`
--
ALTER TABLE `profit`
  ADD PRIMARY KEY (`id_profita`);

--
-- Indexes for table `radnik`
--
ALTER TABLE `radnik`
  ADD PRIMARY KEY (`ID_Radnika`);

--
-- Indexes for table `resursi`
--
ALTER TABLE `resursi`
  ADD PRIMARY KEY (`ID_resursa`);

--
-- Indexes for table `rizik`
--
ALTER TABLE `rizik`
  ADD PRIMARY KEY (`ID_rizika`);

--
-- Indexes for table `stanjeracuna`
--
ALTER TABLE `stanjeracuna`
  ADD PRIMARY KEY (`IDStanjeRacuna`);

--
-- Indexes for table `troskovi`
--
ALTER TABLE `troskovi`
  ADD PRIMARY KEY (`id_troskova`);

--
-- Indexes for table `usluge`
--
ALTER TABLE `usluge`
  ADD PRIMARY KEY (`IDUsluga`);

--
-- Indexes for table `zakazivanje`
--
ALTER TABLE `zakazivanje`
  ADD PRIMARY KEY (`id_zakazivanja`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `ID_Admina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `alati`
--
ALTER TABLE `alati`
  MODIFY `ID_Alata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `fakture`
--
ALTER TABLE `fakture`
  MODIFY `idFakture` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `intervencije`
--
ALTER TABLE `intervencije`
  MODIFY `ID_intervencije` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `IDKorisnika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `magacini`
--
ALTER TABLE `magacini`
  MODIFY `ID_Magacina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `plate`
--
ALTER TABLE `plate`
  MODIFY `idplate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prihodi`
--
ALTER TABLE `prihodi`
  MODIFY `id_prihoda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `profit`
--
ALTER TABLE `profit`
  MODIFY `id_profita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `radnik`
--
ALTER TABLE `radnik`
  MODIFY `ID_Radnika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `troskovi`
--
ALTER TABLE `troskovi`
  MODIFY `id_troskova` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `zakazivanje`
--
ALTER TABLE `zakazivanje`
  MODIFY `id_zakazivanja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alati`
--
ALTER TABLE `alati`
  ADD CONSTRAINT `alati_ibfk_1` FOREIGN KEY (`ID_Magacina`) REFERENCES `magacini` (`ID_Magacina`);

--
-- Constraints for table `alatiusluge`
--
ALTER TABLE `alatiusluge`
  ADD CONSTRAINT `FK_IDAlata` FOREIGN KEY (`IDAlata`) REFERENCES `alati` (`ID_Alata`),
  ADD CONSTRAINT `FK_IDUsluga` FOREIGN KEY (`IDUsluga`) REFERENCES `usluge` (`IDUsluga`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
