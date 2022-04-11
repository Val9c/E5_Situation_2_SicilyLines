-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 30, 2022 at 08:29 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projetsicily`
--

-- --------------------------------------------------------

--
-- Table structure for table `bateau`
--

CREATE TABLE `bateau` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longueur` double NOT NULL,
  `largeur` double NOT NULL,
  `vitesse` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bateau`
--

INSERT INTO `bateau` (`id`, `nom`, `longueur`, `largeur`, `vitesse`) VALUES
(3, 'Eduardo', 37.2, 8.6, 26),
(4, 'Platone', 25, 7, 16);

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `libelle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`id`, `libelle`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `tel` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `tel`, `mail`) VALUES
(18, '0768636315', 'ck@gmail.com'),
(19, '1235888', 'fzfz@frgr.fr'),
(20, '11111', 'test@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `contenir`
--

CREATE TABLE `contenir` (
  `id` int(11) NOT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `bateau_id` int(11) DEFAULT NULL,
  `nb_max` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contenir`
--

INSERT INTO `contenir` (`id`, `categorie_id`, `bateau_id`, `nb_max`) VALUES
(1, 1, 3, 210),
(2, 2, 3, 9),
(3, 3, 3, 2),
(4, 1, 4, 155),
(5, 2, 4, 0),
(6, 3, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20211208101421', '2021-12-08 11:14:42', 2405),
('DoctrineMigrations\\Version20211208102203', '2021-12-08 11:22:07', 2296),
('DoctrineMigrations\\Version20211208103625', '2021-12-08 11:36:29', 1642),
('DoctrineMigrations\\Version20211208103909', '2021-12-08 11:39:12', 236),
('DoctrineMigrations\\Version20211208110535', '2021-12-08 12:05:39', 2863),
('DoctrineMigrations\\Version20211208111002', '2021-12-08 12:10:07', 1703),
('DoctrineMigrations\\Version20211208114449', '2021-12-08 12:44:52', 572),
('DoctrineMigrations\\Version20211208115223', '2021-12-08 12:52:27', 4024),
('DoctrineMigrations\\Version20211208120243', '2021-12-08 13:02:52', 2480),
('DoctrineMigrations\\Version20220308112333', '2022-03-08 12:24:04', 130),
('DoctrineMigrations\\Version20220308114309', '2022-03-08 12:43:13', 49),
('DoctrineMigrations\\Version20220308114422', '2022-03-08 12:44:31', 35),
('DoctrineMigrations\\Version20220308121710', '2022-03-08 13:17:13', 62),
('DoctrineMigrations\\Version20220308121957', '2022-03-08 13:20:02', 103),
('DoctrineMigrations\\Version20220308131157', '2022-03-08 14:12:00', 143),
('DoctrineMigrations\\Version20220308131326', '2022-03-08 14:13:29', 115),
('DoctrineMigrations\\Version20220308131501', '2022-03-08 14:15:04', 51),
('DoctrineMigrations\\Version20220308131610', '2022-03-08 14:16:14', 79),
('DoctrineMigrations\\Version20220308133809', '2022-03-08 14:38:11', 68),
('DoctrineMigrations\\Version20220308133855', '2022-03-08 14:38:58', 93),
('DoctrineMigrations\\Version20220313181703', '2022-03-13 14:20:25', 46),
('DoctrineMigrations\\Version20220313181947', '2022-03-13 14:20:25', 28),
('DoctrineMigrations\\Version20220313182729', '2022-03-13 14:27:34', 85),
('DoctrineMigrations\\Version20220313183502', '2022-03-13 14:35:07', 44),
('DoctrineMigrations\\Version20220313183645', '2022-03-13 14:36:49', 44),
('DoctrineMigrations\\Version20220313184003', '2022-03-13 14:40:06', 90),
('DoctrineMigrations\\Version20220314104656', '2022-03-14 06:47:03', 78),
('DoctrineMigrations\\Version20220314105226', '2022-03-14 06:52:30', 70),
('DoctrineMigrations\\Version20220314105522', '2022-03-14 06:55:56', 37),
('DoctrineMigrations\\Version20220314110008', '2022-03-14 07:00:12', 114),
('DoctrineMigrations\\Version20220314110212', '2022-03-14 07:02:16', 56),
('DoctrineMigrations\\Version20220314110700', '2022-03-14 07:07:06', 52),
('DoctrineMigrations\\Version20220314110806', '2022-03-14 07:08:08', 71),
('DoctrineMigrations\\Version20220314110947', '2022-03-14 07:09:51', 67),
('DoctrineMigrations\\Version20220314111108', '2022-03-14 07:11:11', 78),
('DoctrineMigrations\\Version20220314111230', '2022-03-14 07:12:33', 47),
('DoctrineMigrations\\Version20220314111332', '2022-03-14 07:13:35', 63),
('DoctrineMigrations\\Version20220316084253', '2022-03-16 04:43:10', 98),
('DoctrineMigrations\\Version20220316084510', '2022-03-16 04:45:13', 103);

-- --------------------------------------------------------

--
-- Table structure for table `equipement`
--

CREATE TABLE `equipement` (
  `id` int(11) NOT NULL,
  `libelle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `equipement`
--

INSERT INTO `equipement` (`id`, `libelle`) VALUES
(3, 'Acc├®s Handicap├®'),
(4, 'Bar'),
(5, 'Pont Promenade'),
(6, 'Salon Vid├®o');

-- --------------------------------------------------------

--
-- Table structure for table `liaison`
--

CREATE TABLE `liaison` (
  `id` int(11) NOT NULL,
  `duree` time NOT NULL,
  `port_depart_id` int(11) DEFAULT NULL,
  `port_arrivee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `liaison`
--

INSERT INTO `liaison` (`id`, `duree`, `port_depart_id`, `port_arrivee_id`) VALUES
(1, '01:30:00', 2, 6),
(2, '04:00:00', 2, 7),
(3, '01:25:00', 3, 8),
(4, '01:45:00', 3, 9),
(5, '02:05:00', 3, 10),
(6, '00:50:00', 4, 7),
(7, '00:40:00', 4, 9),
(8, '02:30:00', 5, 11),
(9, '00:30:00', 5, 12),
(10, '00:55:00', 4, 8),
(11, '01:25:00', 8, 6),
(12, '01:55:00', 9, 5),
(13, '03:00:00', 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `participer`
--

CREATE TABLE `participer` (
  `id` int(11) NOT NULL,
  `reservation_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `nombre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `periode`
--

CREATE TABLE `periode` (
  `id` int(11) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `periode`
--

INSERT INTO `periode` (`id`, `date_debut`, `date_fin`) VALUES
(1, '2021-09-01', '2022-06-15'),
(2, '2022-06-16', '2022-09-15'),
(3, '2022-09-16', '2023-05-31');

-- --------------------------------------------------------

--
-- Table structure for table `port`
--

CREATE TABLE `port` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `port`
--

INSERT INTO `port` (`id`, `nom`) VALUES
(2, 'Palerme'),
(3, 'Messine'),
(4, 'Milazzo'),
(5, 'Trapani'),
(6, 'Ustica'),
(7, 'Lipari'),
(8, 'Stromboli'),
(9, 'Vulcano'),
(10, 'Panarea'),
(11, 'Pantelleria'),
(12, 'Favignagna');

-- --------------------------------------------------------

--
-- Table structure for table `proposer`
--

CREATE TABLE `proposer` (
  `id` int(11) NOT NULL,
  `equipement_id` int(11) DEFAULT NULL,
  `bateau_id` int(11) DEFAULT NULL,
  `quantite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `proposer`
--

INSERT INTO `proposer` (`id`, `equipement_id`, `bateau_id`, `quantite`) VALUES
(2, 3, 3, 2),
(3, 4, 3, 1),
(4, 5, 3, 1),
(5, 6, 3, 1),
(6, 3, 4, 1),
(7, 5, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `traversee_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `code_reservation` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `traversee_id`, `client_id`, `user_id`, `code_reservation`) VALUES
(2, 3, NULL, 2, '3EFD54'),
(3, 6, NULL, 3, 'XG8DAK'),
(4, 5, NULL, 2, 'LSK93J'),
(10, 1, 18, NULL, 'WFGVJ6H9HX'),
(11, 1, 19, NULL, 'uFZ6EeW8ey'),
(12, 6, 20, NULL, 'usTlChuKfe');

-- --------------------------------------------------------

--
-- Table structure for table `secteur`
--

CREATE TABLE `secteur` (
  `id` int(11) NOT NULL,
  `libelle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `liaison_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `secteur`
--

INSERT INTO `secteur` (`id`, `libelle`, `liaison_id`) VALUES
(1, 'Palerme', 1),
(2, 'Palerme', 2),
(3, 'Messine', 3),
(4, 'Messine', 4),
(5, 'Messine', 5),
(6, 'Milazzo', 6),
(7, 'Milazzo', 7),
(8, 'Trapani', 8),
(9, 'Trapani', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tarifer`
--

CREATE TABLE `tarifer` (
  `id` int(11) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `periode_id` int(11) DEFAULT NULL,
  `liaison_id` int(11) DEFAULT NULL,
  `tarif` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tarifer`
--

INSERT INTO `tarifer` (`id`, `type_id`, `periode_id`, `liaison_id`, `tarif`) VALUES
(1, 1, 1, 9, 18),
(2, 1, 2, 9, 20),
(3, 1, 3, 9, 19),
(4, 2, 1, 9, 11.1),
(5, 2, 2, 9, 13.1),
(6, 2, 3, 9, 12.1),
(7, 3, 1, 9, 5.6),
(8, 3, 2, 9, 7),
(9, 3, 3, 9, 6.4),
(10, 4, 1, 9, 86),
(11, 4, 2, 9, 95),
(12, 4, 3, 9, 91),
(13, 5, 1, 9, 129),
(14, 5, 2, 9, 142),
(15, 5, 3, 9, 136),
(16, 6, 1, 9, 189),
(17, 6, 2, 9, 208),
(18, 6, 3, 9, 199),
(19, 7, 1, 9, 205),
(20, 7, 2, 9, 226),
(21, 7, 3, 9, 216),
(22, 8, 1, 9, 268),
(23, 8, 2, 9, 295),
(24, 8, 3, 9, 282),
(25, 1, 1, 2, 27.2),
(26, 1, 2, 2, 29.3),
(27, 1, 3, 2, 28.5),
(28, 2, 1, 2, 17.3),
(29, 2, 2, 2, 18.6),
(30, 2, 3, 2, 18.1),
(31, 3, 1, 2, 9.8),
(32, 3, 2, 2, 10.6),
(33, 3, 3, 2, 10.2),
(34, 4, 1, 2, 129),
(35, 4, 2, 2, 139),
(36, 4, 3, 2, 135),
(37, 5, 1, 2, 194),
(38, 5, 2, 2, 209),
(39, 5, 3, 2, 203),
(40, 6, 1, 2, 284),
(41, 6, 2, 2, 306),
(42, 6, 3, 2, 298),
(43, 7, 1, 2, 308),
(44, 7, 2, 2, 332),
(45, 7, 3, 2, 323),
(46, 8, 1, 2, 402),
(47, 8, 2, 2, 434),
(48, 8, 3, 2, 422),
(49, 1, 1, 1, 12),
(53, 1, 1, 1, 12),
(54, 1, 2, 1, 15),
(55, 1, 3, 1, 16),
(56, 2, 1, 1, 8),
(57, 2, 2, 1, 23),
(58, 2, 3, 1, 48),
(59, 3, 1, 1, 56),
(60, 3, 2, 1, 11),
(61, 3, 3, 1, 14),
(62, 4, 1, 1, 15.3),
(63, 4, 2, 1, 89),
(64, 4, 3, 1, 754),
(65, 5, 1, 1, 36.1),
(66, 5, 2, 1, 78),
(67, 5, 3, 1, 45),
(68, 6, 1, 1, 68),
(69, 6, 2, 1, 9),
(70, 6, 3, 1, 46.3),
(71, 7, 1, 1, 785),
(72, 7, 2, 1, 694),
(73, 7, 3, 1, 136),
(74, 8, 1, 1, 421),
(75, 8, 2, 1, 1202.45),
(76, 8, 3, 1, 248.99),
(77, 1, 1, 3, 12),
(78, 1, 2, 3, 15),
(79, 1, 3, 3, 16),
(80, 2, 1, 3, 8),
(81, 2, 2, 3, 23),
(82, 2, 3, 3, 48),
(83, 3, 1, 3, 56),
(84, 3, 2, 3, 11),
(85, 3, 3, 3, 14),
(86, 4, 1, 3, 15.3),
(87, 4, 2, 3, 89),
(88, 4, 3, 3, 754),
(89, 5, 1, 3, 36.1),
(90, 5, 2, 3, 78),
(91, 5, 3, 3, 45),
(92, 6, 1, 3, 68),
(93, 6, 2, 3, 9),
(94, 6, 3, 3, 46.3),
(95, 7, 1, 3, 785),
(96, 7, 2, 3, 694),
(97, 7, 3, 3, 136),
(98, 8, 1, 3, 421),
(99, 8, 2, 3, 1202.45),
(100, 8, 3, 3, 248.99),
(101, 1, 1, 4, 7),
(102, 1, 2, 4, 12),
(103, 1, 3, 4, 16),
(104, 2, 1, 4, 8),
(105, 2, 2, 4, 74),
(106, 2, 3, 4, 48),
(107, 3, 1, 4, 41),
(108, 3, 2, 4, 17),
(109, 3, 3, 4, 14),
(110, 4, 1, 4, 15.3),
(111, 4, 2, 4, 45),
(112, 4, 3, 4, 74),
(113, 5, 1, 4, 36.1),
(114, 5, 2, 4, 78),
(115, 5, 3, 4, 45),
(116, 6, 1, 4, 68),
(117, 6, 2, 4, 9),
(118, 6, 3, 4, 46.3),
(119, 7, 1, 4, 85),
(120, 7, 2, 4, 64),
(121, 7, 3, 4, 396),
(122, 8, 1, 4, 421),
(123, 8, 2, 4, 102.45),
(124, 8, 3, 4, 848.99),
(125, 1, 1, 5, 12),
(126, 1, 2, 5, 15),
(127, 1, 3, 5, 16),
(128, 2, 1, 5, 8),
(129, 2, 2, 5, 23),
(130, 2, 3, 5, 48),
(131, 3, 1, 5, 56),
(132, 3, 2, 5, 11),
(133, 3, 3, 5, 14),
(134, 4, 1, 5, 15.3),
(135, 4, 2, 5, 89),
(136, 4, 3, 5, 754),
(137, 5, 1, 5, 36.1),
(138, 5, 2, 5, 78),
(139, 5, 3, 5, 45),
(140, 6, 1, 5, 68),
(141, 6, 2, 5, 9),
(142, 6, 3, 5, 46.3),
(143, 7, 1, 5, 785),
(144, 7, 2, 5, 694),
(145, 7, 3, 5, 136),
(146, 8, 1, 5, 421),
(147, 8, 2, 5, 1202.45),
(148, 8, 3, 5, 248.99),
(149, 1, 1, 6, 12),
(150, 1, 2, 6, 14),
(151, 1, 3, 6, 18),
(152, 2, 1, 6, 10.56),
(153, 2, 2, 6, 23.3),
(154, 2, 3, 6, 48),
(155, 3, 1, 6, 45),
(156, 3, 2, 6, 68),
(157, 3, 3, 6, 140),
(158, 4, 1, 6, 15.3),
(159, 4, 2, 6, 89),
(160, 4, 3, 6, 754),
(161, 5, 1, 6, 36.1),
(162, 5, 2, 6, 78),
(163, 5, 3, 6, 45),
(164, 6, 1, 6, 68),
(165, 6, 2, 6, 9),
(166, 6, 3, 6, 46.3),
(167, 7, 1, 6, 785),
(168, 7, 2, 6, 694),
(169, 7, 3, 6, 136),
(170, 8, 1, 6, 421),
(171, 8, 2, 6, 1202.45),
(172, 8, 3, 6, 248.99),
(173, 1, 1, 7, 2),
(174, 1, 2, 7, 5),
(175, 1, 3, 7, 6),
(176, 2, 1, 7, 8),
(177, 2, 2, 7, 243),
(178, 2, 3, 7, 48),
(179, 3, 1, 7, 56),
(180, 3, 2, 7, 11),
(181, 3, 3, 7, 15),
(182, 4, 1, 7, 15.3),
(183, 4, 2, 7, 89),
(184, 4, 3, 7, 754),
(185, 5, 1, 7, 36.1),
(186, 5, 2, 7, 78),
(187, 5, 3, 7, 45),
(188, 6, 1, 7, 68),
(189, 6, 2, 7, 9),
(190, 6, 3, 7, 46.3),
(191, 7, 1, 7, 75),
(192, 7, 2, 7, 694),
(193, 7, 3, 7, 136),
(194, 8, 1, 7, 421),
(195, 8, 2, 7, 1202.45),
(196, 8, 3, 7, 248.99),
(197, 1, 1, 1, 2),
(198, 1, 2, 1, 26),
(199, 1, 3, 1, 16),
(200, 2, 1, 1, 15),
(201, 2, 2, 1, 23),
(202, 2, 3, 1, 48),
(203, 3, 1, 1, 56),
(204, 3, 2, 1, 11),
(205, 3, 3, 8, 14),
(206, 4, 1, 8, 15.3),
(207, 4, 2, 8, 89),
(208, 4, 3, 8, 754),
(209, 5, 1, 8, 36.1),
(210, 5, 2, 8, 78),
(211, 5, 3, 8, 45),
(212, 6, 1, 8, 68),
(213, 6, 2, 8, 9),
(214, 6, 3, 8, 46.3),
(215, 7, 1, 8, 75),
(216, 7, 2, 8, 484),
(217, 7, 3, 8, 136),
(218, 8, 1, 8, 121),
(219, 8, 2, 8, 122.45),
(220, 8, 3, 8, 269.99),
(221, 1, 1, 10, 12),
(222, 1, 2, 10, 15),
(223, 1, 3, 10, 16),
(224, 2, 1, 10, 8),
(225, 2, 2, 10, 23),
(226, 2, 3, 10, 48),
(227, 3, 1, 10, 56),
(228, 3, 2, 10, 11),
(229, 3, 3, 10, 14),
(230, 4, 1, 10, 15.3),
(231, 4, 2, 10, 89),
(232, 4, 3, 10, 754),
(233, 5, 1, 10, 36.1),
(234, 5, 2, 10, 78),
(235, 5, 3, 10, 45),
(236, 6, 1, 10, 68),
(237, 6, 2, 10, 9),
(238, 6, 3, 10, 46.3),
(239, 7, 1, 10, 785),
(240, 7, 2, 10, 694),
(241, 7, 3, 10, 136),
(242, 8, 1, 10, 421),
(243, 8, 2, 10, 1202.45),
(244, 8, 3, 10, 248.99),
(245, 1, 1, 8, 12),
(246, 1, 2, 8, 15),
(247, 1, 3, 8, 16),
(248, 2, 1, 8, 8),
(249, 2, 2, 8, 23),
(250, 2, 3, 8, 48),
(251, 3, 1, 8, 56),
(252, 3, 2, 8, 11),
(253, 1, 1, 11, 10),
(254, 1, 2, 11, 11),
(255, 1, 3, 11, 13),
(256, 2, 1, 11, 15),
(257, 2, 2, 11, 21),
(258, 2, 3, 11, 26),
(259, 3, 1, 11, 35),
(260, 3, 2, 11, 39),
(261, 3, 3, 11, 42),
(262, 4, 1, 11, 45.3),
(263, 4, 2, 11, 51),
(264, 4, 3, 11, 63),
(265, 5, 1, 11, 76.1),
(266, 5, 2, 11, 79),
(267, 5, 3, 11, 86),
(268, 6, 1, 11, 92),
(269, 6, 2, 11, 99.99),
(270, 6, 3, 11, 103),
(271, 7, 1, 11, 109),
(272, 7, 2, 11, 123),
(273, 7, 3, 11, 136),
(274, 8, 1, 11, 154),
(275, 8, 2, 11, 254),
(276, 8, 3, 11, 249.56),
(277, 1, 1, 12, 10),
(278, 1, 2, 12, 11),
(279, 1, 3, 12, 13),
(280, 2, 1, 12, 15),
(281, 2, 2, 12, 21),
(282, 2, 3, 12, 26),
(283, 3, 1, 12, 35),
(284, 3, 2, 12, 39),
(285, 3, 3, 12, 42),
(286, 4, 1, 12, 45.3),
(287, 4, 2, 12, 51),
(288, 4, 3, 12, 63),
(289, 5, 1, 12, 76.1),
(290, 5, 2, 12, 79),
(291, 5, 3, 12, 86),
(292, 6, 1, 12, 92),
(293, 6, 2, 12, 99.99),
(294, 6, 3, 12, 103),
(295, 7, 1, 12, 109),
(296, 7, 2, 12, 123),
(297, 7, 3, 12, 136),
(298, 8, 1, 12, 154),
(299, 8, 2, 12, 254),
(300, 8, 3, 12, 249.56),
(301, 1, 1, 13, 10),
(302, 1, 2, 13, 11),
(303, 1, 3, 13, 13),
(304, 2, 1, 13, 15),
(305, 2, 2, 13, 21),
(306, 2, 3, 13, 26),
(307, 3, 1, 13, 35),
(308, 3, 2, 13, 39),
(309, 3, 3, 13, 42),
(310, 4, 1, 13, 45.3),
(311, 4, 2, 13, 51),
(312, 4, 3, 13, 63),
(313, 5, 1, 13, 76.1),
(314, 5, 2, 13, 79),
(315, 5, 3, 13, 86),
(316, 6, 1, 13, 92),
(317, 6, 2, 13, 100.99),
(318, 6, 3, 13, 103),
(319, 7, 1, 13, 109),
(320, 7, 2, 13, 215),
(321, 7, 3, 13, 325),
(322, 8, 1, 13, 410),
(323, 8, 2, 13, 421),
(324, 8, 3, 13, 659.56);

-- --------------------------------------------------------

--
-- Table structure for table `traversee`
--

CREATE TABLE `traversee` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `heure` time NOT NULL,
  `bateau_id` int(11) DEFAULT NULL,
  `liaison_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `traversee`
--

INSERT INTO `traversee` (`id`, `date`, `heure`, `bateau_id`, `liaison_id`) VALUES
(1, '2021-09-21', '07:45:00', 3, 2),
(2, '2021-09-21', '09:45:00', 4, 3),
(3, '2021-09-21', '14:30:00', 3, 5),
(4, '2021-09-21', '08:30:00', 4, 6),
(5, '2021-09-21', '17:30:00', 3, 1),
(6, '2021-09-21', '19:30:00', 4, 4),
(7, '2022-04-21', '19:30:00', 4, 7),
(8, '2022-04-21', '07:30:00', 3, 8),
(9, '2022-04-21', '14:00:00', 3, 4),
(10, '2023-01-18', '10:00:00', 4, 2),
(11, '2023-01-18', '14:00:00', 3, 3),
(12, '2023-01-18', '17:45:00', 4, 5),
(13, '2021-12-15', '13:55:00', 3, 10),
(14, '2022-12-15', '19:55:00', 3, 11),
(15, '2023-07-11', '15:30:00', 4, 8),
(16, '2023-07-11', '15:30:00', 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `libelle` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorie_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `libelle`, `categorie_id`) VALUES
(1, 'A1', 1),
(2, 'A2', 1),
(3, 'A3', 1),
(4, 'B1', 2),
(5, 'B2', 2),
(6, 'C1', 3),
(7, 'C2', 3),
(8, 'C3', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `username`) VALUES
(1, 'vaalroyer@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$HOEYdi9flQ41c78D6UQtMg$WNHk9BCz0bFYG+CCjrMQLeozF6xm1q/qbzYiYUQF2dk', 'valentin'),
(2, 'bsahraoui.mail@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$9ogf1NiB292EBitMerPa2w$QMblSykmmS9hfhPLmfPMBlERNebqVLobwgme3EEsls0', 'Bilel Sahraoui'),
(3, 'bilel@gmail.com', '[]', '$2y$13$joGT5EHArdyTawNWiitXguraPqS1Ahpjlg85hUIuqkJEHYhCUvjri', 'Bilel 2'),
(5, 'vaaalroyer@gmail.com', '[]', '$2y$13$XS76xa8FOdt79koOL2OBQuN0VRDGwJus6vPLIyaLvqbF1yvOCoLKe', 'valentin'),
(6, 'b@gmail.com', '[]', '$2y$13$9JP3sNu7jj6np8JAYc.Xc.sULLeBCylSuV7xMK.YeOFDVKN4i2//K', 'sl'),
(7, 'erikobarneto@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$TGVYMzNBNldNbXgyL1g2cA$WkOq5QlJBBUPsWIEeTQDs/XnemrRyZfRRyQBXPoj744', 'Eric94');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bateau`
--
ALTER TABLE `bateau`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contenir`
--
ALTER TABLE `contenir`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_3C914DFDBCF5E72D` (`categorie_id`),
  ADD KEY `IDX_3C914DFDA9706509` (`bateau_id`);

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `equipement`
--
ALTER TABLE `equipement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `liaison`
--
ALTER TABLE `liaison`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_225AC3794C9CCD3` (`port_depart_id`),
  ADD KEY `IDX_225AC37141EAE06` (`port_arrivee_id`);

--
-- Indexes for table `participer`
--
ALTER TABLE `participer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EDBE16F8B83297E7` (`reservation_id`),
  ADD KEY `IDX_EDBE16F8C54C8C93` (`type_id`);

--
-- Indexes for table `periode`
--
ALTER TABLE `periode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `port`
--
ALTER TABLE `port`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proposer`
--
ALTER TABLE `proposer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_21866C15806F0F5C` (`equipement_id`),
  ADD KEY `IDX_21866C15A9706509` (`bateau_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_42C84955ED2BB15B` (`traversee_id`),
  ADD KEY `IDX_42C8495519EB6921` (`client_id`),
  ADD KEY `IDX_42C84955A76ED395` (`user_id`);

--
-- Indexes for table `secteur`
--
ALTER TABLE `secteur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8045251FED31185` (`liaison_id`);

--
-- Indexes for table `tarifer`
--
ALTER TABLE `tarifer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6904C4FFC54C8C93` (`type_id`),
  ADD KEY `IDX_6904C4FFF384C1CF` (`periode_id`),
  ADD KEY `IDX_6904C4FFED31185` (`liaison_id`);

--
-- Indexes for table `traversee`
--
ALTER TABLE `traversee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B688F501A9706509` (`bateau_id`),
  ADD KEY `IDX_B688F501ED31185` (`liaison_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8CDE5729BCF5E72D` (`categorie_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bateau`
--
ALTER TABLE `bateau`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `contenir`
--
ALTER TABLE `contenir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `equipement`
--
ALTER TABLE `equipement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `liaison`
--
ALTER TABLE `liaison`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `participer`
--
ALTER TABLE `participer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `periode`
--
ALTER TABLE `periode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `port`
--
ALTER TABLE `port`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `proposer`
--
ALTER TABLE `proposer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `secteur`
--
ALTER TABLE `secteur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tarifer`
--
ALTER TABLE `tarifer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT for table `traversee`
--
ALTER TABLE `traversee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contenir`
--
ALTER TABLE `contenir`
  ADD CONSTRAINT `FK_3C914DFDA9706509` FOREIGN KEY (`bateau_id`) REFERENCES `bateau` (`id`),
  ADD CONSTRAINT `FK_3C914DFDBCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`);

--
-- Constraints for table `liaison`
--
ALTER TABLE `liaison`
  ADD CONSTRAINT `FK_225AC37141EAE06` FOREIGN KEY (`port_arrivee_id`) REFERENCES `port` (`id`),
  ADD CONSTRAINT `FK_225AC3794C9CCD3` FOREIGN KEY (`port_depart_id`) REFERENCES `port` (`id`);

--
-- Constraints for table `participer`
--
ALTER TABLE `participer`
  ADD CONSTRAINT `FK_EDBE16F8B83297E7` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`id`),
  ADD CONSTRAINT `FK_EDBE16F8C54C8C93` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`);

--
-- Constraints for table `proposer`
--
ALTER TABLE `proposer`
  ADD CONSTRAINT `FK_21866C15806F0F5C` FOREIGN KEY (`equipement_id`) REFERENCES `equipement` (`id`),
  ADD CONSTRAINT `FK_21866C15A9706509` FOREIGN KEY (`bateau_id`) REFERENCES `bateau` (`id`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `FK_42C8495519EB6921` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `FK_42C84955A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_42C84955ED2BB15B` FOREIGN KEY (`traversee_id`) REFERENCES `traversee` (`id`);

--
-- Constraints for table `secteur`
--
ALTER TABLE `secteur`
  ADD CONSTRAINT `FK_8045251FED31185` FOREIGN KEY (`liaison_id`) REFERENCES `liaison` (`id`);

--
-- Constraints for table `tarifer`
--
ALTER TABLE `tarifer`
  ADD CONSTRAINT `FK_6904C4FFC54C8C93` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`),
  ADD CONSTRAINT `FK_6904C4FFED31185` FOREIGN KEY (`liaison_id`) REFERENCES `liaison` (`id`),
  ADD CONSTRAINT `FK_6904C4FFF384C1CF` FOREIGN KEY (`periode_id`) REFERENCES `periode` (`id`);

--
-- Constraints for table `traversee`
--
ALTER TABLE `traversee`
  ADD CONSTRAINT `FK_B688F501A9706509` FOREIGN KEY (`bateau_id`) REFERENCES `bateau` (`id`),
  ADD CONSTRAINT `FK_B688F501ED31185` FOREIGN KEY (`liaison_id`) REFERENCES `liaison` (`id`);

--
-- Constraints for table `type`
--
ALTER TABLE `type`
  ADD CONSTRAINT `FK_8CDE5729BCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
