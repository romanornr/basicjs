-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Gegenereerd op: 10 feb 2016 om 21:56
-- Serverversie: 5.6.26
-- PHP-versie: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flickr`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dishes`
--

CREATE TABLE IF NOT EXISTS `dishes` (
  `id` int(11) unsigned NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `recipe` longtext,
  `score` int(11) NOT NULL,
  `kitchen_id` int(11) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `dishes`
--

INSERT INTO `dishes` (`id`, `description`, `name`, `recipe`, `score`, `kitchen_id`) VALUES
(6, 'Burger', 'Big mac', 'cow meat', 8, 1),
(7, 'mcnuggets from mcdonald', 'mcnuggets', 'chicken', 9, 1),
(8, NULL, 'BBQ chicken pizza', 'Pizza, Chicken, BBQ, other', 9, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dish_tag`
--

CREATE TABLE IF NOT EXISTS `dish_tag` (
  `dish_id` int(11) unsigned DEFAULT NULL,
  `tag_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='dish_tag';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `kitchens`
--

CREATE TABLE IF NOT EXISTS `kitchens` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `kitchens`
--

INSERT INTO `kitchens` (`id`, `name`) VALUES
(0, 'domino'),
(1, 'Mcdonald');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `tags`
--

INSERT INTO `tags` (`id`, `name`) VALUES
(1, 'burger');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kitchen_id` (`kitchen_id`);

--
-- Indexen voor tabel `dish_tag`
--
ALTER TABLE `dish_tag`
  ADD KEY `dish_id` (`dish_id`),
  ADD KEY `tag_id` (`tag_id`),
  ADD KEY `dish_id_2` (`dish_id`);

--
-- Indexen voor tabel `kitchens`
--
ALTER TABLE `kitchens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`);

--
-- Indexen voor tabel `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `dishes`
--
ALTER TABLE `dishes`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `dish_tag`
--
ALTER TABLE `dish_tag`
  ADD CONSTRAINT `dish_tag_ibfk_1` FOREIGN KEY (`dish_id`) REFERENCES `dishes` (`id`),
  ADD CONSTRAINT `dish_tag_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
