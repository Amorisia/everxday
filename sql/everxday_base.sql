-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Dim 25 Novembre 2012 à 17:00
-- Version du serveur: 5.5.24-log
-- Version de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `everxday`
--

-- --------------------------------------------------------

--
-- Structure de la table `girl`
--

DROP TABLE IF EXISTS `girl`;
CREATE TABLE IF NOT EXISTS `girl` (
  `girlId` int(3) NOT NULL AUTO_INCREMENT,
  `starringVideoId` int(4) NOT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `surname` varchar(20) DEFAULT NULL,
  `actress_name` varchar(20) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `skin` varchar(10) NOT NULL,
  `boobs` varchar(10) NOT NULL,
  `hair` varchar(10) NOT NULL,
  `country` varchar(20) DEFAULT NULL,
  `birthplace` varchar(50) DEFAULT NULL,
  `profilePict` varchar(100) NOT NULL,
  `pict2` varchar(100) NOT NULL,
  `pict3` varchar(100) NOT NULL,
  `starringDate` date DEFAULT NULL,
  PRIMARY KEY (`girlId`),
  UNIQUE KEY `profilePict` (`profilePict`),
  UNIQUE KEY `starringVideoId` (`starringVideoId`),
  UNIQUE KEY `starringDate` (`starringDate`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `girl`
--

INSERT INTO `girl` (`girlId`, `starringVideoId`, `lastname`, `surname`, `actress_name`, `birthdate`, `active`, `skin`, `boobs`, `hair`, `country`, `birthplace`, `profilePict`, `pict2`, `pict3`, `starringDate`) VALUES
(1, 0, 'Belle', 'Lexi', NULL, '1987-08-05', 1, 'caucasian', 'normal', 'blond', 'USA', 'Los Angeles, USA', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `video`
--

DROP TABLE IF EXISTS `video`;
CREATE TABLE IF NOT EXISTS `video` (
  `videoId` int(4) NOT NULL AUTO_INCREMENT,
  `girlId` int(3) NOT NULL,
  `sentence` varchar(100) NOT NULL,
  `embed` longtext NOT NULL,
  `length` int(3) NOT NULL,
  `lesbian` tinyint(1) NOT NULL,
  `gangbang` tinyint(1) NOT NULL,
  `orgy` tinyint(1) NOT NULL,
  `deepthroat` tinyint(1) NOT NULL,
  `doublepenetration` tinyint(1) NOT NULL,
  `anal` tinyint(1) NOT NULL,
  `cumshot` tinyint(1) NOT NULL,
  `oral` tinyint(1) NOT NULL,
  PRIMARY KEY (`videoId`),
  UNIQUE KEY `girlId` (`girlId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `video_ibfk_1` FOREIGN KEY (`girlId`) REFERENCES `girl` (`girlId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
