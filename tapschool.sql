-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Apr 06, 2017 alle 09:33
-- Versione del server: 10.1.16-MariaDB
-- Versione PHP: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tapschool`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `compiti`
--

CREATE TABLE `compiti` (
  `CodCompito` int(11) NOT NULL,
  `Materia` varchar(32) NOT NULL,
  `Scadenza` date NOT NULL,
  `Descrizione` varchar(32) NOT NULL,
  `IdUsername` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `corso`
--

CREATE TABLE `corso` (
  `CodCorso` int(11) NOT NULL,
  `Tipo` varchar(32) NOT NULL,
  `Giorno` date NOT NULL,
  `Ora` time NOT NULL,
  `Durata` int(10) UNSIGNED NOT NULL,
  `IdUsername` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `gita`
--

CREATE TABLE `gita` (
  `CodGita` int(11) NOT NULL,
  `Destinazione` varchar(32) NOT NULL,
  `Costo` decimal(10,0) NOT NULL,
  `OraPartenza` time NOT NULL,
  `OraRitorno` time NOT NULL,
  `IdUsername` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `interrogazione`
--

CREATE TABLE `interrogazione` (
  `CodInt` int(11) NOT NULL,
  `Materia` varchar(16) NOT NULL,
  `Giorno` date NOT NULL,
  `Ora` time NOT NULL,
  `Argomento` varchar(32) NOT NULL,
  `IdUsername` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `utente`
--

CREATE TABLE `utente` (
  `Username` varchar(32) NOT NULL,
  `Password` varchar(32) NOT NULL,
  `Nome` varchar(32) NOT NULL,
  `Cognome` varchar(32) NOT NULL,
  `E-mail` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `verifica`
--

CREATE TABLE `verifica` (
  `CodVer` int(11) NOT NULL,
  `Materia` varchar(32) NOT NULL,
  `Giorno` date NOT NULL,
  `Ora` time NOT NULL,
  `Argomento` varchar(32) NOT NULL,
  `IdUsername` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `compiti`
--
ALTER TABLE `compiti`
  ADD PRIMARY KEY (`CodCompito`);

--
-- Indici per le tabelle `corso`
--
ALTER TABLE `corso`
  ADD PRIMARY KEY (`CodCorso`);

--
-- Indici per le tabelle `gita`
--
ALTER TABLE `gita`
  ADD PRIMARY KEY (`CodGita`);

--
-- Indici per le tabelle `interrogazione`
--
ALTER TABLE `interrogazione`
  ADD PRIMARY KEY (`CodInt`);

--
-- Indici per le tabelle `utente`
--
ALTER TABLE `utente`
  ADD PRIMARY KEY (`Username`);

--
-- Indici per le tabelle `verifica`
--
ALTER TABLE `verifica`
  ADD PRIMARY KEY (`CodVer`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `compiti`
--
ALTER TABLE `compiti`
  MODIFY `CodCompito` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `corso`
--
ALTER TABLE `corso`
  MODIFY `CodCorso` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `gita`
--
ALTER TABLE `gita`
  MODIFY `CodGita` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `interrogazione`
--
ALTER TABLE `interrogazione`
  MODIFY `CodInt` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `verifica`
--
ALTER TABLE `verifica`
  MODIFY `CodVer` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
