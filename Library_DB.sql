-- phpMyAdmin SQL Dump
-- version 4.7.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 13, 2018 at 04:37 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bibliotheque`
--

-- --------------------------------------------------------

--
-- Table structure for table `etudiant`
--

CREATE TABLE `etudiant` (
  `cne` int(12) NOT NULL,
  `nom` varchar(51) NOT NULL,
  `prenom` varchar(51) NOT NULL,
  `mdp` varchar(100) NOT NULL,
  `filiere` varchar(21) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `etudiant`
--

INSERT INTO `etudiant` (`cne`, `nom`, `prenom`, `mdp`, `filiere`, `photo`) VALUES
(1111111111, 'ziko', 'ziko', 'd3f8e92599685f90760863fa4fd659d5', 'big data', '20170501_000305_002.jpg'),
(1229180946, 'El ouaarabi', 'mohamed', '43bd48ade3219a1931115a1dabbe1a7f', 'lst GM', 'Screenshot_2015-06-13-14-34-13.png'),
(1311191177, 'boussakssou', 'Mohamed', '898b46287113708b0940f3c3a9daa415', 'lst informatique', '6tag_201115-085538[1].jpg'),
(1311191181, 'afkir', 'zakaria', 'e573c580ce11581eadd9d396a9bae99b', 'lst informatique', 'IMG_20150207_173850.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `livre`
--

CREATE TABLE `livre` (
  `id_livre` int(11) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `auteurs` varchar(100) NOT NULL,
  `cote` varchar(21) NOT NULL,
  `domaine` varchar(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `livre`
--

INSERT INTO `livre` (`id_livre`, `titre`, `auteurs`, `cote`, `domaine`) VALUES
(1, 'Exercices avec solutions  analyse', 'R.Dupont', 'M1', 'Math'),
(2, 'Exercices avec solutions Algebre', 'R.Dupont', 'M1', 'Math'),
(3, 'Mathematique deug A cours et exercices resolus T1', 'E.Azoulay', 'M1', 'Math'),
(4, 'Mathematique deug A cours et exercices resolus T2', 'E.Azoulay', 'M1', 'Math'),
(5, 'Mathematique deug A cours et exercices resolus T3', 'E.Azoulay', 'M1', 'Math'),
(6, 'Mathematique deug A cours et exercices resolus T4', 'E.Azoulay', 'M1', 'Math'),
(7, 'atlas de petrologie', 'jean franÃ§ois', 'G3', 'geologie'),
(8, 'roches et mineraux', 'Monica pric', 'G4', 'geologie'),
(10, 'volcanologie', 'J.M.Bardintzeff', 'G10', 'geologie'),
(11, 'mecanique generale ', 'Ch.Gruber', 'P10', 'physique'),
(12, 'Introduction a la pÃ©tralogie', 'B.Bayler', 'G.3', 'geologie'),
(13, 'TraitÃ© de sÃ©dimentalogie', 'E.saaidi', 'G.5', 'geologie'),
(14, 'Manuel et sÃ©domentologie', 'H.G.Term', 'G.5', 'geologie'),
(15, 'Stratigraphie', 'A.Vatan', 'G.6', 'geologie'),
(16, 'Stratigraphie : mÃ©thodes,principes, applications ', 'Ch.Promer', 'G.6', 'geologie'),
(17, 'MÃ©thodes granuomÃ©triques,techniques et interpretations', 'A.RiviÃ©re', 'G.7', 'geologie'),
(18, 'MinÃ©ralogiedes argiles 1 -Structure et propriÃ©tÃ©s physico-Chimique', 'S.CaillÃ©re', 'G.8', 'geologie'),
(19, 'Atlas photographique des minÃ©raux d\'alluvions', 'P.devismes', 'G.9', 'geologie'),
(20, 'Dictionnaire des roches d\'origine magmatique', 'F.Dominique', 'G.9', 'geologie'),
(21, 'Les volcans et leur activitÃ©', 'A.Rittman', 'G.10', 'geologie'),
(22, 'Geologie du granite', 'E.Raguin', 'G.10', 'geologie'),
(23, 'MÃ©canique 1 .Cours', 'J.Boutigny', 'P.5', 'physique'),
(24, 'MÃ©canique 2 .Cours', 'J.Boutigny', 'P.5', 'physique'),
(25, 'MÃ©canique 1 .Exercices avec solutions', 'J.Boutigny', 'P.5', 'physique'),
(26, 'MÃ©canique 2 .Exercices Avec Solutions', 'J.Boutigny', 'P.5', 'physique'),
(27, 'resoudre un probleme de mecanique ', 'J.Bergua', 'P.6', 'physique'),
(28, 'mecanique generale.cours et problemes', 'M.R.SPIEGL', 'P.6', 'physique'),
(29, 'MÃ©canique du point materiel', 'E.Elbaz', 'P.10', 'physique'),
(30, 'MÃ©canique.Rappel de cours ,exercices corrigÃ©s', 'Y.Talpaert', 'P.11', 'physique'),
(31, 'Mecanique T1', 'P.Germain', 'P.11', 'physique'),
(32, 'Comprendre la Mecanique', 'J.P.Romagnan', 'P.11', 'physique'),
(33, 'Mecanique des milieux poreux', 'O.Cossy', 'P.12', 'physique'),
(34, 'la fusion cellulaire', 'H.Harris', 'B.4', 'biologie'),
(35, 'Les modÃ©les molÃ©culaires des biomembranes ', 'P.Mazliak', 'B.4', 'biologie'),
(36, 'Biologie structurale: principes et methodes biophysiques', 'j.janin', 'B.1', 'biologie'),
(37, 'La cellule', 'M.A.Fain-Maural', 'B.2', 'biologie'),
(38, 'Neurobiologie cellulaire', 'Ch.De Duve', 'B.2', 'biologie'),
(39, 'Biologie et physiologie cellulaire I', 'C.HAminand', 'B.3', 'biologie'),
(40, 'Biologie 1.Biologie cellulaire', 'C-L Galien', 'B.5', 'biologie'),
(41, 'Biologie 2.GÃ©nÃ©tique ', 'C-L Galien', 'B.4', 'biologie'),
(42, 'Biologie 4. Exercices corrigÃ©es :Biologie cellulaire et biologie molÃ©culaire ', 'J-J-Galien', 'B.5', 'biologie'),
(43, 'Biologie 5. Biologie gÃ©nerale', 'J-J-Galien', 'B.5', 'biologie'),
(44, 'Biochimie ', 'J.Deauna', 'B.7', 'biologie'),
(45, 'biochimie mÃ©tabolique', 'D.duval', 'B.9', 'biologie'),
(46, 'Biochimie general', 'J-H.Well', 'B.10', 'biologie'),
(47, 'Problemes de biochimie', 'C.I.AudigÃ©', 'B.10', 'biologie'),
(48, 'GÃ©nÃ©tique', 'Ph.L\'Heritier', 'B.12', 'biologie'),
(49, 'GÃ©nÃ©tique 3', 'F.Lints', 'B.12', 'biologie'),
(50, 'GÃ©nÃ©tique. cours et Problemes', 'W.D.Stansfild', 'B.12', 'biologie'),
(51, 'Les Logiciels micro..Comment ca tourne ?', 'R.White', 'I.1', 'informatique'),
(52, 'Architecture et technologie des ordinateurs', 'P.Zanella', 'I.2', 'info'),
(53, 'Outils logiciels pour la programmation systeme', 'T.Biggerstaff', 'I.3', 'info'),
(54, 'la qualitÃ© logicielle', 'F.Parobeck', 'I.3', 'info'),
(55, 'Le calcul scientifique sur ordinateur', 'Chesneaux', 'I.4', 'info'),
(56, 'Informatique-programmation T3 :exercices corrigÃ©es', 'GrÃ©goire', 'I.4', 'info'),
(57, 'Apprendre a programmer basic', 'C.Dellanoy', 'I.5', 'info'),
(58, 'Cours de basic.Analyse et programmation ', 'D.lautier', 'I.5', 'info'),
(59, 'La programmation en Pascal', 'p.Grogono', 'I.6', 'info'),
(60, 'Le Language C++', 'J.Crozet', 'I.9', 'info'),
(61, 'Le Language Pascal', 'J.Crozet', 'I.7', 'info'),
(62, 'Le Language C', 'B.Kernig', 'I.8', 'info'),
(63, 'MÃ©thodes mathematiques pour l\'informatique', 'J.VÃ©lu', 'I.9', 'info'),
(64, 'types de donnÃ©es et algorithme ', 'Ch.Frogan', 'I.9', 'info');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id_livre` int(11) NOT NULL,
  `cne` int(12) NOT NULL,
  `date_reservation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id_livre`, `cne`, `date_reservation`) VALUES
(1, 1311191181, '2015-12-07'),
(11, 1311191181, '0000-00-00'),
(7, 1311191181, '2015-12-07'),
(3, 1311191181, '2015-12-07'),
(4, 1311191181, '2015-12-07'),
(11, 1311191177, '2015-12-07'),
(1, 1229180946, '2015-12-07'),
(1, 1229180946, '2015-12-07'),
(4, 1311191181, '2015-12-07'),
(8, 1311191181, '2015-12-08'),
(2, 1111111111, '2018-08-13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`cne`);

--
-- Indexes for table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`id_livre`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD KEY `id_livre` (`id_livre`),
  ADD KEY `cne` (`cne`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `livre`
--
ALTER TABLE `livre`
  MODIFY `id_livre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`id_livre`) REFERENCES `livre` (`id_livre`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`cne`) REFERENCES `etudiant` (`cne`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
