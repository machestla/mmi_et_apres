-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 23 Mars 2017 à 20:13
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

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(255) NOT NULL,
  `date` date NOT NULL,
  `titre` text CHARACTER SET armscii8 NOT NULL,
  `contenu_visuel` text,
  `contenu_video` text,
  `contenu_txt` text NOT NULL,
  `idTagDomaine` int(255) NOT NULL,
  `idTagMetier` int(255) NOT NULL,
  `idTagRegion` int(255) NOT NULL,
  `idAuteur` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`id`, `date`, `titre`, `contenu_visuel`, `contenu_video`, `contenu_txt`, `idTagDomaine`, `idTagMetier`, `idTagRegion`, `idAuteur`) VALUES
(1, '2017-03-12', 'Interview de Yann Kubacki - Gobelins', NULL, 'content/interview_yann.mp4', 'Vous pouvez retrouver dans cette interview le parcours et les conseils de Yann Kubacki, ancien etudiant de notre formation.', 3, 1, 1, 1),
(2, '2017-03-12', 'Interview de Quentin Tshaimanga - Developpeur full stack', NULL, 'content/interview_quentin.mp4', 'Vous pouvez retrouver dans cette interview le parcours et les conseils de Quentin Tshaimanga, ancien etudiant de notre formation.', 3, 1, 1, 1),
(3, '2017-03-12', 'Interview de Maxime Blin - ISART digital', NULL, 'content/interview_maxime.mp4', 'Vous pouvez retrouver dans cette interview le parcours et les conseils de Maxime Blin, ancien etudiant de notre formation.', 1, 1, 1, 1),
(4, '2017-03-12', 'Interview de Gaelle Gignon - Ingenieure pedagogique', NULL, 'content/interview_gaelle.mp4', 'Vous pouvez retrouver dans cette interview le parcours et les conseils de Gaelle Guignon, ancienne etudiante de notre formation.', 3, 1, 1, 1),
(5, '2017-03-12', 'Interview d\'Edwin Leblond - Bachelor graphique', NULL, 'content/interview_edwin.mp4', 'Vous pouvez retrouver dans cette interview le parcours et les conseils de Edwin Leblond, ancien etudiant de notre formation.', 2, 1, 1, 1),
(6, '2017-03-12', 'Interview d\'Alexandre Laurette - Trucages image et son', NULL, 'content/interview_alexandre.mp4', 'Vous pouvez retrouver dans cette interview le parcours et les conseils d\'Alexandre Laurette, ancien etudiant de notre formation.', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

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
-- Structure de la table `formation`
--

CREATE TABLE `formation` (
  `idTagDomaine` int(255) NOT NULL,
  `Nom` text CHARACTER SET armscii8 NOT NULL,
  `idTagType` int(255) NOT NULL,
  `Ville` text CHARACTER SET armscii8 NOT NULL,
  `idTagRegion` int(255) NOT NULL,
  `Lien` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `formation`
--

INSERT INTO `formation` (`idTagDomaine`, `Nom`, `idTagType`, `Ville`, `idTagRegion`, `Lien`) VALUES
(2, 'Efficom', 4, 'Lille', 1, 'www.efficom-lille.fr'),
(2, 'efficom', 3, 'Lille', 1, 'www.efficom-lille.fr'),
(2, 'efficom', 1, 'Lille', 1, 'www.efficom-lille.fr'),
(2, 'efficom', 2, 'Lille', 1, 'www.efficom-lille.fr'),
(2, 'efficom', 1, 'Paris', 3, 'www.efficom.fr'),
(2, 'efficom', 2, 'Paris', 3, 'www.efficom.fr'),
(2, 'efficom', 3, 'Paris', 3, 'www.efficom.fr'),
(2, 'efficom', 4, 'Lille', 3, 'www.efficom.fr'),
(2, 'ESUPCOM', 1, 'Lille', 1, 'www.esupcom.com'),
(2, 'ESUPCOM', 5, 'Lille', 1, 'www.esupcom.com'),
(2, 'ESUPCOM', 6, 'Lille', 1, 'www.esupcom.com'),
(2, 'ESUPCOM', 1, 'Paris', 3, 'www.esupcom.com'),
(2, 'ESUPCOM', 5, 'Paris', 3, 'www.esupcom.com'),
(2, 'ESUPCOM', 6, 'Paris', 3, 'www.esupcom.com'),
(2, 'ESUPCOM', 1, 'Reims', 4, 'www.esupcom.com'),
(2, 'ESUPCOM', 5, 'Reims', 4, 'www.esupcom.com'),
(2, 'ESUPCOM', 6, 'Reims', 4, 'www.esupcom.com'),
(2, 'ESUPCOM', 1, 'Aix-en-Provence', 11, 'www.esupcom.com'),
(2, 'ESUPCOM', 5, 'Aix-en-Provence', 11, 'www.esupcom.com'),
(2, 'ESUPCOM', 6, 'Aix-en-Provence', 11, 'www.esupcom.com'),
(2, 'Campus science-u-lyon', 5, 'Lyon', 9, 'www.science-u-lyon.fr'),
(2, 'Campus science-u-lyon', 6, 'Lyon', 9, 'www.science-u-lyon.fr'),
(2, 'E2SE', 1, 'Caen', 2, 'www.e2se.fr'),
(2, 'E2SE', 5, 'Caen', 2, 'www.e2se.fr'),
(2, 'SUP DE PUB', 1, 'Paris', 3, 'www.supdepub.com'),
(2, 'SUP DE PUB', 4, 'Paris', 3, 'www.supdepub.com'),
(2, 'SUP DE PUB', 1, 'Bordeaux', 8, 'www.supdepub.com'),
(2, 'SUP DE PUB', 4, 'Bordeaux', 8, 'www.supdepub.com'),
(2, 'SUP DE PUB', 1, 'Lyon', 9, 'www.supdepub.com'),
(2, 'SUP DE PUB', 4, 'Lyon', 9, 'www.supdepub.com'),
(2, 'ISEFAC', 5, 'Paris', 3, 'www.isefac-bachelor.fr'),
(2, 'ISEFAC', 5, 'Bordeaux', 8, 'www.isefac-bachelor.fr'),
(2, 'ISEFAC', 5, 'Lyon', 9, 'www.isefac-bachelor.fr'),
(2, 'ISEFAC', 5, 'Montpellier', 10, 'www.isefac-bachelor.fr'),
(2, 'ISEFAC', 1, 'Nantes', 5, 'www.isefac-alternance.fr'),
(2, 'ISEFAC', 1, 'Lille', 1, 'www.isefac-alternance.fr'),
(2, 'Groupe CEPRECO (ESDM)', 4, 'Roubaix', 1, 'www.groupe-cepreco.fr'),
(2, 'EFAP', 6, 'Lille', 1, 'www.efap.com'),
(2, 'EFAP', 6, 'Paris', 3, 'www.efap.com'),
(2, 'EFAP', 6, 'Bordeaux', 8, 'www.efap.com'),
(2, 'EFAP', 6, 'Lyon', 9, 'www.efap.com'),
(2, 'INFOCOM', 3, 'Roubaix', 1, 'www.univ-lille3.fr'),
(2, 'INFOCOM', 4, 'Roubaix', 1, 'www.univ-lille3.fr'),
(3, 'Licence Pro reseaux et telecommunications specialite developpement web et mobilite', 3, 'Orlean', 6, 'www.univ-orleans.fr/iut-orleans/'),
(1, 'AIS Atelier de l\'Image et du Son', 1, 'Marseille', 11, 'www.ais-formation.com');

-- --------------------------------------------------------

--
-- Structure de la table `tagdomaine`
--

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

CREATE TABLE `tagmetier` (
  `id` int(255) NOT NULL,
  `metier` text CHARACTER SET ascii NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tagmetier`
--

INSERT INTO `tagmetier` (`id`, `metier`) VALUES
(1, 'Aucun');

-- --------------------------------------------------------

--
-- Structure de la table `tagregion`
--

CREATE TABLE `tagregion` (
  `id` int(255) NOT NULL,
  `region` text CHARACTER SET ascii NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tagregion`
--

INSERT INTO `tagregion` (`id`, `region`) VALUES
(1, 'Haut-de-France'),
(2, 'Normandie'),
(3, 'Ile-de-France'),
(4, 'Grand Est'),
(5, 'Pays de la Loire'),
(6, 'Centre-Val de Loire'),
(7, 'Bourgogne-Franche-Compte'),
(8, 'Nouvelle-Aquitaine'),
(9, 'Auvergnes_Rhone-Alpes'),
(10, 'Occitanie'),
(11, 'Provence-Alpes-Cote d\'Azur'),
(12, 'Guyane'),
(13, 'Guadeloupe'),
(14, 'Martinique'),
(15, 'Corse'),
(16, 'Mayotte'),
(17, 'La Reunion'),
(18, 'Bretagne');

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `Nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `type`
--

INSERT INTO `type` (`id`, `Nom`) VALUES
(1, 'BTS'),
(2, 'DUT'),
(3, 'Licence'),
(4, 'Master'),
(5, 'Bachelor'),
(6, 'Mastere'),
(7, 'Ecole d\'ingenieur');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
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
-- Index pour la table `formation`
--
ALTER TABLE `formation`
  ADD KEY `idTagRegion` (`idTagRegion`),
  ADD KEY `idTagType` (`idTagType`),
  ADD KEY `idTagDomaine` (`idTagDomaine`) USING BTREE;

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
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
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

--
-- Contraintes pour la table `formation`
--
ALTER TABLE `formation`
  ADD CONSTRAINT `formation_ibfk_1` FOREIGN KEY (`idTagRegion`) REFERENCES `tagregion` (`id`),
  ADD CONSTRAINT `formation_ibfk_2` FOREIGN KEY (`idTagDomaine`) REFERENCES `tagdomaine` (`id`),
  ADD CONSTRAINT `formation_ibfk_3` FOREIGN KEY (`idTagType`) REFERENCES `type` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
