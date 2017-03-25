-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 24 Mars 2017 à 23:52
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
(4, '2017-03-12', 'Interview de Gaëlle Gignon - Ingénieure pédagogique', NULL, 'content/interview_gaelle.mp4', 'Vous pouvez retrouver dans cette interview le parcours et les conseils de Gaëlle Guignon, ancienne étudiante de notre formation.', 3, 1, 1, 1),
(5, '2017-03-12', 'Interview d\'Edwin Leblond - Bachelor graphique', NULL, 'content/interview_edwin.mp4', 'Vous pouvez retrouver dans cette interview le parcours et les conseils de Edwin Leblond, ancien etudiant de notre formation.', 2, 1, 1, 1),
(6, '2017-03-12', 'Interview d\'Alexandre Laurette - Trucages image et son', NULL, 'content/interview_alexandre.mp4', 'Vous pouvez retrouver dans cette interview le parcours et les conseils d\'Alexandre Laurette, ancien etudiant de notre formation.', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE `auteur` (
  `id` int(255) NOT NULL,
  `nom` text NOT NULL,
  `prenom` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `auteur`
--

INSERT INTO `auteur` (`id`, `nom`, `prenom`) VALUES
(1, 'Dassonville', 'Marion'),
(2, 'Lefèbvre', 'Gwendoline'),
(3, 'Chagot', 'Chloé'),
(4, 'Rots', 'Marie-Hélène');

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

CREATE TABLE `formation` (
  `id` int(255) NOT NULL,
  `idTagDomaine` int(255) NOT NULL,
  `Nom` text NOT NULL,
  `idTagType` int(255) NOT NULL,
  `Ville` text NOT NULL,
  `idTagRegion` int(255) NOT NULL,
  `Lien` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `formation`
--

INSERT INTO `formation` (`id`, `idTagDomaine`, `Nom`, `idTagType`, `Ville`, `idTagRegion`, `Lien`) VALUES
(1, 2, 'Efficom', 4, 'Lille', 1, 'www.efficom-lille.fr'),
(2, 2, 'Efficom', 3, 'Lille', 1, 'www.efficom-lille.fr'),
(3, 2, 'Efficom', 1, 'Lille', 1, 'www.efficom-lille.fr'),
(4, 2, 'Efficom', 2, 'Lille', 1, 'www.efficom-lille.fr'),
(5, 2, 'Efficom', 1, 'Paris', 3, 'www.efficom.fr'),
(6, 2, 'Efficom', 2, 'Paris', 3, 'www.efficom.fr'),
(7, 2, 'Efficom', 3, 'Paris', 3, 'www.efficom.fr'),
(8, 2, 'Efficom', 4, 'Lille', 3, 'www.efficom.fr'),
(9, 2, 'ESUPCOM', 1, 'Lille', 1, 'www.esupcom.com'),
(10, 2, 'ESUPCOM', 5, 'Lille', 1, 'www.esupcom.com'),
(11, 2, 'ESUPCOM', 6, 'Lille', 1, 'www.esupcom.com'),
(12, 2, 'ESUPCOM', 1, 'Paris', 3, 'www.esupcom.com'),
(13, 2, 'ESUPCOM', 5, 'Paris', 3, 'www.esupcom.com'),
(14, 2, 'ESUPCOM', 6, 'Paris', 3, 'www.esupcom.com'),
(15, 2, 'ESUPCOM', 1, 'Reims', 4, 'www.esupcom.com'),
(16, 2, 'ESUPCOM', 5, 'Reims', 4, 'www.esupcom.com'),
(17, 2, 'ESUPCOM', 6, 'Reims', 4, 'www.esupcom.com'),
(18, 2, 'ESUPCOM', 1, 'Aix-en-Provence', 11, 'www.esupcom.com'),
(19, 2, 'ESUPCOM', 5, 'Aix-en-Provence', 11, 'www.esupcom.com'),
(20, 2, 'ESUPCOM', 6, 'Aix-en-Provence', 11, 'www.esupcom.com'),
(21, 2, 'Campus science-u-lyon', 5, 'Lyon', 9, 'www.science-u-lyon.fr'),
(22, 2, 'Campus science-u-lyon', 6, 'Lyon', 9, 'www.science-u-lyon.fr'),
(23, 2, 'E2SE', 1, 'Caen', 2, 'www.e2se.fr'),
(24, 2, 'E2SE', 5, 'Caen', 2, 'www.e2se.fr'),
(25, 2, 'SUP DE PUB', 1, 'Paris', 3, 'www.supdepub.com'),
(26, 2, 'SUP DE PUB', 4, 'Paris', 3, 'www.supdepub.com'),
(27, 2, 'SUP DE PUB', 1, 'Bordeaux', 8, 'www.supdepub.com'),
(28, 2, 'SUP DE PUB', 4, 'Bordeaux', 8, 'www.supdepub.com'),
(29, 2, 'SUP DE PUB', 1, 'Lyon', 9, 'www.supdepub.com'),
(30, 2, 'SUP DE PUB', 4, 'Lyon', 9, 'www.supdepub.com'),
(31, 2, 'ISEFAC', 5, 'Paris', 3, 'www.isefac-bachelor.fr'),
(32, 2, 'ISEFAC', 5, 'Bordeaux', 8, 'www.isefac-bachelor.fr'),
(33, 2, 'ISEFAC', 5, 'Lyon', 9, 'www.isefac-bachelor.fr'),
(34, 2, 'ISEFAC', 5, 'Montpellier', 10, 'www.isefac-bachelor.fr'),
(35, 2, 'ISEFAC', 1, 'Nantes', 5, 'www.isefac-alternance.fr'),
(36, 2, 'ISEFAC', 1, 'Lille', 1, 'www.isefac-alternance.fr'),
(37, 2, 'Groupe CEPRECO (ESDM)', 4, 'Roubaix', 1, 'www.groupe-cepreco.fr'),
(38, 2, 'EFAP', 6, 'Lille', 1, 'www.efap.com'),
(39, 2, 'EFAP', 6, 'Paris', 3, 'www.efap.com'),
(40, 2, 'EFAP', 6, 'Bordeaux', 8, 'www.efap.com'),
(41, 2, 'EFAP', 6, 'Lyon', 9, 'www.efap.com'),
(42, 2, 'INFOCOM', 3, 'Roubaix', 1, 'www.univ-lille3.fr'),
(43, 2, 'INFOCOM', 4, 'Roubaix', 1, 'www.univ-lille3.fr'),
(44, 3, 'Licence Pro Réseaux et Télécommunications Spécialité Développement web et Mobilité', 3, 'Orléan', 6, 'www.univ-orleans.fr/iut-orleans/'),
(45, 1, 'AIS Atelier de l\'Image et du Son', 1, 'Marseille', 11, 'www.ais-formation.com'),
(46, 2, 'Université de Valenciennes', 3, 'Valenciennes', 1, 'www.univ-valenciennes.fr'),
(47, 2, 'Université de Valenciennes', 3, 'Cambrai', 1, 'www.univ-valenciennes.fr'),
(48, 2, 'Université de Valenciennes', 3, 'Maubeuge', 1, 'www.univ-valenciennes.fr'),
(49, 2, 'MJM graphic design', 8, 'Paris', 3, 'http://www.mjm-design.com/'),
(50, 2, 'MJM graphic design', 8, 'Bordeaux', 8, 'www.mjm-design.com'),
(51, 2, 'MJM graphic design', 8, 'Nantes', 5, 'http://www.mjm-design.com/'),
(52, 2, 'MJM graphic design', 8, 'Rennes', 18, 'http://www.mjm-design.com/'),
(53, 2, 'MJM graphic design', 8, 'Strasbourg', 4, 'http://www.mjm-design.com/'),
(54, 2, 'Supinfocom Rubika', 4, 'Valenciennes', 1, 'rubika-edu.com'),
(55, 2, 'Supinfocom Rubika', 5, 'Valenciennes', 1, 'rubika-edu.com'),
(56, 2, 'ESMA', 1, 'Montpellier', 10, 'www.esma-artistique.com'),
(57, 2, 'ESMA', 5, 'Montpellier', 10, 'www.esma-artistique.com'),
(58, 2, 'ESMA', 9, 'Montpellier', 10, 'www.esma-artistique.com'),
(59, 2, 'ESMA', 1, 'Toulouse', 10, 'www.esma-artistique.com'),
(60, 2, 'ESMA', 5, 'Toulouse', 10, 'www.esma-artistique.com'),
(61, 2, 'ESMA', 9, 'Toulouse', 10, 'www.esma-artistique.com'),
(62, 2, 'ESMA', 1, 'Nantes', 5, 'www.esma-artistique.com'),
(63, 2, 'ESMA', 5, 'Nantes', 5, 'www.esma-artistique.com'),
(64, 2, 'ESMA', 9, 'Nantes', 5, 'www.esma-artistique.com'),
(65, 2, 'ESMA', 1, 'Lyon', 9, 'www.esma-artistique.com'),
(66, 2, 'ESMA', 5, 'Lyon', 9, 'www.esma-artistique.com'),
(67, 2, 'ESMA', 9, 'Lyon', 9, 'www.esma-artistique.com'),
(68, 2, 'ISCPA', 5, 'Paris', 3, 'www.iscpa-ecoles.com'),
(69, 2, 'ISCPA', 6, 'Paris', 3, 'www.iscpa-ecoles.com'),
(70, 2, 'ISCPA', 8, 'Paris', 3, 'www.iscpa-ecoles.com'),
(71, 2, 'ISCPA', 5, 'Lyon', 9, 'www.iscpa-ecoles.com'),
(72, 2, 'ISCPA', 6, 'Lyon', 9, 'www.iscpa-ecoles.com'),
(73, 2, 'ISCPA', 8, 'Lyon', 9, 'www.iscpa-ecoles.com'),
(74, 2, 'ISCPA', 5, 'Toulouse', 10, 'www.iscpa-ecoles.com'),
(75, 2, 'ISCPA', 6, 'Toulouse', 10, 'www.iscpa-ecoles.com'),
(76, 2, 'ISCPA', 8, 'Toulouse', 10, 'www.iscpa-ecoles.com'),
(95, 2, 'ECS', 4, 'Paris', 3, 'www.mediaschool.eu'),
(96, 2, 'ECS', 5, 'Paris', 3, 'www.mediaschool.eu'),
(97, 2, 'ECS', 4, 'Marseille', 11, 'www.mediaschool.eu'),
(98, 2, 'ECS', 5, 'Marseille', 11, 'www.mediaschool.eu'),
(99, 2, 'ECS', 4, 'Toulouse', 10, 'www.mediaschool.eu'),
(100, 2, 'ECS', 5, 'Toulouse', 10, 'www.mediaschool.eu'),
(101, 2, 'ECS', 4, 'Strasbourg', 4, 'www.mediaschool.eu'),
(102, 2, 'ECS', 5, 'Strasbourg', 4, 'www.mediaschool.eu'),
(103, 2, 'IICP', 1, 'Paris', 3, 'www.iicp.fr'),
(104, 2, 'IICP', 6, 'Paris', 3, 'www.iicp.fr'),
(105, 2, 'IICP', 8, 'Paris', 3, 'www.iicp.fr'),
(106, 2, 'ISEG', 4, 'Paris', 3, 'http://mcs.iseg.fr/'),
(107, 2, 'ISEG', 4, 'Lille', 1, 'http://mcs.iseg.fr/'),
(108, 2, 'ISEG', 4, 'Toulouse', 10, 'http://mcs.iseg.fr/'),
(109, 2, 'ISEG', 4, 'Strasbourg', 4, 'http://mcs.iseg.fr/'),
(110, 2, 'ISEG', 4, 'Nantes', 5, 'http://mcs.iseg.fr/'),
(111, 2, 'ISEG', 4, 'Bordeaux', 8, 'http://mcs.iseg.fr/'),
(112, 2, 'ISEG', 4, 'Lyon', 9, 'http://mcs.iseg.fr/'),
(113, 2, 'ESICAD', 1, 'Toulouse', 10, 'www.esicad.com'),
(114, 2, 'ESICAD', 5, 'Toulouse', 10, 'www.esicad.com'),
(115, 2, 'ESICAD', 8, 'Toulouse', 10, 'www.esicad.com'),
(116, 2, 'ESICAD', 1, 'Montpellier', 10, 'www.esicad.com'),
(117, 2, 'ESICAD', 5, 'Montpellier', 10, 'www.esicad.com'),
(118, 2, 'ESICAD', 8, 'Montpellier', 10, 'www.esicad.com'),
(119, 2, 'LYON2 - ICOM BRON', 3, 'Lyon', 9, 'http://icom.univ-lyon.fr/'),
(120, 2, 'LYON2 - ICOM BRON', 2, 'Lyon', 9, 'http://icom.univ-lyon.fr/'),
(121, 2, 'LYON2 - ICOM BRON', 4, 'Lyon', 4, 'http://icom.univ-lyon.fr/'),
(122, 2, 'Ipesaa', 1, 'Montpellier', 10, 'www.ipesaa.fr'),
(123, 2, 'Ipesaa', 9, 'Montpellier', 10, 'www.ipesaa.fr'),
(124, 2, 'ISTC', 3, 'Lille', 1, 'www.istc.fr'),
(125, 2, 'ISTC', 4, 'Lille', 1, 'www.istc.fr'),
(126, 2, 'ICOGES (ESPCM)', 5, 'Paris', 3, 'www.espcm.fr'),
(127, 2, 'ICOGES (ESPCM)', 1, 'Paris', 3, 'www.espcm.fr'),
(128, 2, 'ICOGES (ESPCM)', 4, 'Paris', 3, 'www.espcm.fr'),
(129, 2, 'ESP', 1, 'Paris', 3, 'www.espub.org'),
(130, 2, 'ESP', 4, 'Paris', 3, 'www.espub.org'),
(131, 2, 'ESP', 5, 'Paris', 3, 'www.espub.org'),
(132, 2, 'ESP', 1, 'Lyon', 9, 'www.espub.org'),
(133, 2, 'ESP', 4, 'Lyon', 9, 'www.espub.org'),
(134, 2, 'ESP', 5, 'Lyon', 10, 'www.espub.org'),
(135, 1, 'ACFA Multimédia', 1, 'Montpellier', 10, 'http://www.acfamultimedia.com'),
(136, 1, 'ACFA Multimédia', 1, 'Lyon', 9, 'http://www.acfamultimedia.com'),
(137, 1, 'ACFA Multimédia', 1, 'Toulouse', 10, 'http://www.acfamultimedia.com'),
(138, 1, 'ACFA Multimédia', 1, 'Grenoble', 9, 'http://www.acfamultimedia.com'),
(139, 1, 'ACFA Multimédia', 1, 'Paris', 3, 'http://www.acfamultimedia.com'),
(140, 1, 'CIFACOM Audiovisuel', 1, 'Montreuil', 1, 'https://www.cifacom.com/'),
(141, 1, 'EMC Cinéma, Son, Digital', 1, 'Malakoff', 1, 'http://www.emc.fr'),
(252, 1, 'EICAR Cinéma et Télévision', 1, 'Saint-Denis', 3, 'http://www.eicar.fr/'),
(253, 1, 'IMA Image et Son', 1, 'Toulouse', 10, 'https://www.imatoulouse.fr'),
(254, 1, 'STUDIO M 3D, Jeux Vidéo, Son, Audiovisuel', 1, 'Paris', 3, 'http://www.studio-m.fr'),
(255, 1, 'STUDIO M 3D, Jeux Vidéo, Son, Audiovisuel', 1, 'Lyon', 9, 'http://www.studio-m.fr/'),
(256, 1, 'STUDIO M 3D, Jeux Vidéo, Son, Audiovisuel', 1, 'Toulouse', 10, 'http://www.studio-m.fr'),
(257, 1, 'STUDIO M 3D, Jeux Vidéo, Son, Audiovisuel', 1, 'Grenoble', 9, 'http://www.studio-m.fr/'),
(258, 1, 'ESAAT Cinéma d’animation', 1, 'Roubaix', 1, 'http://www.esaat-roubaix.com'),
(259, 1, 'ESAAT Cinéma d’animation', 6, 'Roubaix', 1, 'http://www.esaat-roubaix.com'),
(260, 1, 'ESRA Cinéma, Son, Animation', 7, 'Paris', 3, 'http://www.esra.edu'),
(261, 1, 'ESRA Cinéma, Son, Animation', 7, 'Rennes', 18, 'http://www.esra.edu'),
(262, 1, 'ESRA Cinéma, Son, Animation', 7, 'Nice', 11, 'http://www.esra.edu'),
(263, 1, 'ECITV Communication audiovisuelle', 4, 'Paris', 3, 'http://www.ecitv.fr/ecole-web-internet-audiovisuel.html'),
(264, 1, 'ECITV Communication audiovisuelle', 5, 'Paris', 3, 'http://www.ecitv.fr/ecole-web-internet-audiovisuel.html'),
(265, 1, 'ISTS', 7, 'Paris', 3, 'http://www.esra.edu/formations/ists-ecole-de-son-formation-ingenieur-du-son'),
(266, 1, 'ISTS', 7, 'Nice', 11, 'http://www.esra.edu/formations/ists-ecole-de-son-formation-ingenieur-du-son'),
(267, 1, 'ISTS', 7, 'Rennes', 18, 'http://www.esra.edu/formations/ists-ecole-de-son-formation-ingenieur-du-son'),
(268, 1, 'LILLE 3 Arts et audiovisuel', 3, 'Villeneuve d’Ascq', 1, 'https://formations.univ-lille3.fr/fr/fiche/admission/16arts/1116'),
(269, 1, 'PÔLE IIID 2D, 3D, Game', 6, 'Roubaix', 1, 'http://www.pole3d.com/'),
(270, 1, 'LISAA Animation, jeux vidéo', 4, 'Paris', 3, 'http://www.lisaa.com/'),
(271, 1, 'LISAA Animation, jeux vidéo', 5, 'Paris', 3, 'http://www.lisaa.com/'),
(272, 1, 'LISAA Animation, jeux vidéo', 4, 'Rennes', 18, 'http://www.lisaa.com/'),
(273, 1, 'LISAA Animation, jeux vidéo', 4, 'Nantes', 5, 'http://www.lisaa.com/'),
(274, 1, 'LISAA Animation, jeux vidéo', 5, 'Nantes', 5, 'http://www.lisaa.com/'),
(275, 1, 'LISAA Animation, jeux vidéo', 4, 'Strasbourg', 4, 'http://www.lisaa.com/'),
(276, 1, 'LISAA Animation, jeux vidéo', 5, 'Strasbourg', 4, 'http://www.lisaa.com/'),
(277, 1, 'ISART DIGITAL Jeux vidéo, animation 3D/FX', 8, 'Paris', 3, 'https://www.isartdigital.com/fr/'),
(278, 1, 'GOBELINS Cinéma d’animation', 8, 'Paris', 3, 'http://www.gobelins.fr/'),
(279, 1, 'GOBELINS Cinéma d’animation', 8, 'Noisy', 3, 'http://www.gobelins.fr/'),
(280, 1, 'FACTORY Cinéma, Théâtre, 3D/FX', 8, 'Lyon', 9, 'www.centre-factory.com'),
(281, 1, 'CFPM', 8, 'Lille', 1, 'https://www.cfpmfrance.com'),
(282, 1, 'E-ARTSUP', 8, 'Lille', 1, 'http://www.e-artsup.net'),
(283, 1, 'E-ARTSUP', 8, 'Paris', 3, 'http://www.e-artsup.net'),
(284, 1, 'E-ARTSUP', 8, 'Bordeaux', 8, 'http://www.e-artsup.net'),
(285, 1, 'E-ARTSUP', 8, 'Lyon', 9, 'http://www.e-artsup.net'),
(286, 1, 'E-ARTSUP', 8, 'Montpellier', 10, 'http://www.e-artsup.net'),
(287, 1, 'E-ARTSUP', 8, 'Nantes', 5, 'http://www.e-artsup.net'),
(288, 1, 'E-ARTSUP', 8, 'Toulouse', 10, 'http://www.e-artsup.net'),
(289, 1, 'RUBIKA', 8, 'Valenciennes', 1, 'http://rubika-edu.com'),
(290, 1, 'ECV Animation 2D/3D', 8, 'Lille', 1, 'https://www.ecv.fr/'),
(291, 1, 'ECV Animation 2D/3D', 8, 'Paris', 3, 'https://www.ecv.fr'),
(292, 1, 'ECV Animation 2D/3D', 8, 'Nantes', 5, 'https://www.ecv.fr'),
(293, 1, 'ECV Animation 2D/3D', 8, 'Bordeaux', 8, 'https://www.ecv.fr'),
(294, 1, 'ECV Animation 2D/3D', 8, 'Aix-en-Provence', 11, 'https://www.ecv.fr'),
(295, 1, 'MJM Design', 8, 'Paris', 3, 'http://www.mjm-design.com'),
(296, 1, 'MJM Design', 8, 'Bordeaux', 8, 'http://www.mjm-design.com'),
(297, 1, 'MJM Design', 8, 'Lille', 1, 'http://www.mjm-design.com'),
(298, 1, 'MJM Design', 8, 'Nantes', 5, 'http://www.mjm-design.com'),
(299, 1, 'MJM Design', 8, 'Rennes', 18, 'http://www.mjm-design.com'),
(300, 1, 'MJM Design', 8, 'Strasbourg', 4, 'http://www.mjm-design.com'),
(301, 3, 'Licence pro Métiers de l\'Informatique', 3, 'Toulouse', 10, 'www.ut-capitole.fr'),
(302, 3, 'Licence pro Métiers de l\'Informatique', 3, 'Valenciennes', 1, 'www.univ-valenciennes.fr/ISTV/'),
(303, 3, 'Licence pro Métiers de l\'Informatique', 3, 'Villeneuve d\'Ascq', 1, 'www.univ-lille1.fr'),
(304, 3, 'Licence pro Métiers de l\'Informatique', 3, 'Gradignan', 1, 'www.iut.u-bordeaux.fr/general/'),
(305, 3, 'Licence pro Métiers de l\'Informatique', 3, 'Carcassonne', 10, 'www.iut.univ-perp.fr'),
(306, 3, 'Licence pro Métiers de l\'Informatique', 3, 'Evry', 3, 'www.ut-capitole.fr'),
(307, 3, 'Licence pro Métiers de l\'Informatique', 3, 'Le Havre', 2, 'www.iut-evry.fr'),
(308, 3, 'Licence pro Métiers de l\'Informatique', 3, 'Calais', 1, 'www.univ-littoral.fr'),
(309, 3, 'Licence pro Métiers de l\'Informatique', 3, 'Bourg-en-Bresse', 9, 'www.iut.univ-lyon1.fr'),
(310, 3, 'Licence pro Métiers de l\'Informatique', 3, 'Castres', 10, 'www.iut.ups-tlse.fr');

-- --------------------------------------------------------

--
-- Structure de la table `mail`
--

CREATE TABLE `mail` (
  `id` int(255) NOT NULL,
  `adresse` text NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `tagdomaine`
--

CREATE TABLE `tagdomaine` (
  `id` int(255) NOT NULL,
  `domaine` text CHARACTER SET utf8 NOT NULL
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
  `metier` text NOT NULL
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
  `region` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tagregion`
--

INSERT INTO `tagregion` (`id`, `region`) VALUES
(1, 'Haut-de-France'),
(2, 'Normandie'),
(3, 'Île-de-France'),
(4, 'Grand Est'),
(5, 'Pays de la Loire'),
(6, 'Centre-Val de Loire'),
(7, 'Bourgogne-Franche-Compté'),
(8, 'Nouvelle-Aquitaine'),
(9, 'Auvergnes-Rhône-Alpes'),
(10, 'Occitanie'),
(11, 'Provence-Alpes-Côte d\'Azur'),
(12, 'Guyane'),
(13, 'Guadeloupe'),
(14, 'Martinique'),
(15, 'Corse'),
(16, 'Mayotte'),
(17, 'La Réunion'),
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
(6, 'Mastère'),
(7, 'Ecole d\'ingénieur'),
(8, 'Non précisé'),
(9, 'MANAA');

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `idTagRegion` (`idTagRegion`),
  ADD KEY `idTagType` (`idTagType`),
  ADD KEY `idTagDomaine` (`idTagDomaine`) USING BTREE;

--
-- Index pour la table `mail`
--
ALTER TABLE `mail`
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
-- AUTO_INCREMENT pour la table `formation`
--
ALTER TABLE `formation`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;
--
-- AUTO_INCREMENT pour la table `mail`
--
ALTER TABLE `mail`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
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
