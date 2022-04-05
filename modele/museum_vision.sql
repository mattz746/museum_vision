-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mar. 29 mars 2022 à 07:02
-- Version du serveur :  5.7.11
-- Version de PHP :  7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `museum vision`
--
DROP DATABASE IF EXISTS museum vision;
CREATE DATABASE museum_vision;
USE museum_vision;
--
-- Structure de la table `exposition`
--

CREATE TABLE `exposition` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `permanent` tinyint(1) NOT NULL,
  `tarifEnfant` decimal(10,0) NOT NULL,
  `tarifAdulte` decimal(10,0) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `idExpo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `exposition`
--

INSERT INTO `exposition` (`id`, `nom`, `permanent`, `tarifEnfant`, `tarifAdulte`, `active`, `idExpo`) VALUES
(1, 'Picasso', 1, '8', '10', 1, 1),
(2, 'Harry-potter', 0, '5', '9', 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `visite`
--

CREATE TABLE `visite` (
  `id` int(11) NOT NULL,
  `nbAdulte` int(11) NOT NULL,
  `nbEnfant` int(11) NOT NULL,
  `DateHeureEntree` datetime NOT NULL,
  `DateHeureSortie` datetime NOT NULL,
  `idVisiteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `visite`
--

INSERT INTO `visite` (`id`, `nbAdulte`, `nbEnfant`, `DateHeureEntree`, `DateHeureSortie`, `idVisiteur`) VALUES
(1, 2, 1, '2022-02-08 15:15:00', '2022-02-08 16:46:00', 1);

-- --------------------------------------------------------

--
-- Structure de la table `visiteexpo`
--

CREATE TABLE `visiteexpo` (
  `idvisite` int(11) NOT NULL,
  `idExpo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `visiteexpo`
--

INSERT INTO `visiteexpo` (`idvisite`, `idExpo`) VALUES
(1, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `exposition`
--
ALTER TABLE `exposition`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idExpo` (`idExpo`);

--
-- Index pour la table `visite`
--
ALTER TABLE `visite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idVisiteur` (`idVisiteur`);

--
-- Index pour la table `visiteexpo`
--
ALTER TABLE `visiteexpo`
  ADD PRIMARY KEY (`idvisite`,`idExpo`),
  ADD KEY `idExpo` (`idExpo`),
  ADD KEY `idvisite` (`idvisite`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `visiteexpo`
--
ALTER TABLE `visiteexpo`
  ADD CONSTRAINT `visiteexpo_ibfk_1` FOREIGN KEY (`idvisite`) REFERENCES `visite` (`id`),
  ADD CONSTRAINT `visiteexpo_ibfk_2` FOREIGN KEY (`idExpo`) REFERENCES `exposition` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
