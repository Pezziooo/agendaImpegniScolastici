-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Mar 30, 2017 alle 08:26
-- Versione del server: 10.1.16-MariaDB
-- Versione PHP: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iis_jean_monnet`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `operazioni`
--

CREATE TABLE `operazioni` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='elenco operazioni aritmetiche';

--
-- Dump dei dati per la tabella `operazioni`
--

INSERT INTO `operazioni` (`id`, `nome`) VALUES
(1, 'più'),
(2, 'meno'),
(3, 'per'),
(4, 'diviso'),
(5, 'elevato alla');

-- --------------------------------------------------------

--
-- Struttura della tabella `specializzazioni`
--

CREATE TABLE `specializzazioni` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='specializzazioni presenti in istituto';

--
-- Dump dei dati per la tabella `specializzazioni`
--

INSERT INTO `specializzazioni` (`id`, `nome`) VALUES
(1, 'informatica e telecomunicazioni'),
(2, 'chimica'),
(3, 'meccanica'),
(4, 'amministrazione finanza e marketing'),
(5, 'liceo scientifico scienze applicate'),
(6, 'liceo linguistico');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `operazioni`
--
ALTER TABLE `operazioni`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `specializzazioni`
--
ALTER TABLE `specializzazioni`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `operazioni`
--
ALTER TABLE `operazioni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT per la tabella `specializzazioni`
--
ALTER TABLE `specializzazioni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
