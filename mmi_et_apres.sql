-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mar 28 Mars 2017 à 16:34
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
  `titre` text NOT NULL,
  `contenu_visuel` text,
  `contenu_video` text,
  `resume` varchar(255) DEFAULT NULL,
  `contenu_txt` text NOT NULL,
  `idTagDomaine` int(255) NOT NULL,
  `idTagMetier` int(255) NOT NULL,
  `idTagRegion` int(255) NOT NULL,
  `idAuteur` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`id`, `date`, `titre`, `contenu_visuel`, `contenu_video`, `resume`, `contenu_txt`, `idTagDomaine`, `idTagMetier`, `idTagRegion`, `idAuteur`) VALUES
(1, '2017-03-12', 'Interview de Yann Kubacki - Gobelins', '../img/interview/Yann.png', 'https://www.youtube.com/embed/ZPDYWiRItlE?autohide=1&amp;el=editpage&amp;rel=0&amp;et=HuX7CRVKmnT_CFVr5X6RqGmojp4XZbrp', NULL, 'Vous pouvez retrouver dans cette interview le parcours et les conseils de Yann Kubacki, ancien etudiant de notre formation.', 3, 1, 3, 1),
(2, '2017-03-12', 'Interview de Quentin Tshaimanga - Developpeur full stack', '../img/interview/Quentin.png', 'https://www.youtube.com/embed/-om6D7b9Ehw?autohide=1&amp;el=editpage&amp;rel=0&amp;et=ObMnw6tuAVLLLJRsx8dPETzBjDXMAfbk', NULL, 'Vous pouvez retrouver dans cette interview le parcours et les conseils de Quentin Tshaimanga, ancien etudiant de notre formation.', 3, 2, 3, 1),
(3, '2017-03-12', 'Interview de Maxime Blin - ISART digital', '../img/interview/Maxime.png', 'https://www.youtube.com/embed/8kry5FB4RVw?autohide=1&amp;el=editpage&amp;rel=0&amp;et=e4zBkGcDYBOU67VWCHuTI0w-pC4vaiND', NULL, 'Vous pouvez retrouver dans cette interview le parcours et les conseils de Maxime Blin, ancien etudiant de notre formation.', 1, 1, 3, 1),
(4, '2017-03-12', 'Interview de Gaëlle Gigon - Ingénieure pédagogique', '../img/interview/Gaelle.png', 'https://www.youtube.com/embed/t-m872pBLiE?autohide=1&amp;el=editpage&amp;rel=0&amp;et=B1uA7nXlT8Vp6bo6uwLv3QXTaqzEGsGP', NULL, 'Vous pouvez retrouver dans cette interview le parcours et les conseils de Gaëlle Guigon, ancienne étudiante de notre formation.', 3, 3, 1, 1),
(5, '2017-03-12', 'Interview d\'Edwin Leblond - Bachelor graphique', '../img/interview/Edwin.png', 'https://www.youtube.com/embed/hXdnEqZjcMc?autohide=1&amp;el=editpage&amp;rel=0&amp;et=gfXHsytxJPsN2EsK_Iv7bZVQFtuNNBE2', NULL, 'Vous pouvez retrouver dans cette interview le parcours et les conseils de Edwin Leblond, ancien etudiant de notre formation.', 2, 1, 1, 1),
(6, '2017-03-12', 'Interview d\'Alexandre Laurette - Trucages image et son', '../img/interview/Alexandre.png', 'https://www.youtube.com/embed/JXgeW94RFSk?autohide=1&amp;el=editpage&amp;rel=0&amp;et=D7vEfjjl6ag3Z-FtojX4wtLxG_noz2_-', NULL, 'Vous pouvez retrouver dans cette interview le parcours et les conseils d\'Alexandre Laurette, ancien etudiant de notre formation.', 1, 1, 1, 1);

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
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
