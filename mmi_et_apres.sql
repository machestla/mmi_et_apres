-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mar 07 Mars 2017 à 18:57
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mmi_et_apres`
--
CREATE DATABASE IF NOT EXISTS `mmi_et_apres` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mmi_et_apres`;

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `date` date NOT NULL,
  `titre` text CHARACTER SET ascii NOT NULL,
  `contenu_visuel` text CHARACTER SET ascii NOT NULL,
  `contenu_txt` text CHARACTER SET ascii NOT NULL,
  `idTagDomaine` int(255) NOT NULL,
  `idTagMetier` int(255) NOT NULL,
  `idTagRegion` int(255) NOT NULL,
  `idAuteur` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

DROP TABLE IF EXISTS `auteur`;
CREATE TABLE `auteur` (
  `id` int(255) NOT NULL,
  `nom` text CHARACTER SET ascii NOT NULL,
  `prenom` text CHARACTER SET ascii NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `auteur`
--

INSERT INTO `auteur` (`id`, `nom`, `prenom`) VALUES
(1, 'Dassonville', 'Marion'),
(2, 'Lefebvre', 'Gwendoline'),
(3, 'Chagot', 'Chloe'),
(4, 'Rots', 'Marie-Helene');

-- --------------------------------------------------------

--
-- Structure de la table `tagdomaine`
--

DROP TABLE IF EXISTS `tagdomaine`;
CREATE TABLE `tagdomaine` (
  `id` int(255) NOT NULL,
  `domaine` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Contenu de la table `tagdomaine`
--

INSERT INTO `tagdomaine` (`id`, `domaine`) VALUES
(1, 'Audiovisuel'),
(2, 'Communication'),
(3, 'Web');

-- --------------------------------------------------------

--
-- Structure de la table `tagmetier`
--

DROP TABLE IF EXISTS `tagmetier`;
CREATE TABLE `tagmetier` (
  `id` int(255) NOT NULL,
  `metier` text CHARACTER SET ascii NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `tagregion`
--

DROP TABLE IF EXISTS `tagregion`;
CREATE TABLE `tagregion` (
  `id` int(255) NOT NULL,
  `region` text CHARACTER SET ascii NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tagregion`
--

INSERT INTO `tagregion` (`id`, `region`) VALUES
(1, 'Haut-de-France');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD KEY `idTagDomaine` (`idTagDomaine`),
  ADD KEY `idTagMetier` (`idTagMetier`),
  ADD KEY `idTagRegion` (`idTagRegion`),
  ADD KEY `idAuteur` (`idAuteur`);

--
-- Index pour la table `auteur`
--
ALTER TABLE `auteur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Index pour la table `tagdomaine`
--
ALTER TABLE `tagdomaine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Index pour la table `tagmetier`
--
ALTER TABLE `tagmetier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Index pour la table `tagregion`
--
ALTER TABLE `tagregion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`idTagDomaine`) REFERENCES `tagdomaine` (`id`),
  ADD CONSTRAINT `article_ibfk_2` FOREIGN KEY (`idTagMetier`) REFERENCES `tagmetier` (`id`),
  ADD CONSTRAINT `article_ibfk_3` FOREIGN KEY (`idTagRegion`) REFERENCES `tagregion` (`id`),
  ADD CONSTRAINT `article_ibfk_4` FOREIGN KEY (`idAuteur`) REFERENCES `auteur` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
