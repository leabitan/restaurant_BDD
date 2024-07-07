-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 07 juil. 2024 à 23:54
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `CDA`
--
CREATE DATABASE IF NOT EXISTS `CDA` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `CDA`;
--
-- Base de données : `db_cda`
--
CREATE DATABASE IF NOT EXISTS `db_cda` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_cda`;

-- --------------------------------------------------------

--
-- Structure de la table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `date_booking` date NOT NULL,
  `people_number` int(11) NOT NULL,
  `booking_confirmed` tinyint(1) DEFAULT NULL,
  `hour_booking` time NOT NULL,
  `name_booking` varchar(50) NOT NULL,
  `phone_booking` varchar(20) NOT NULL,
  `email_booking` varchar(255) NOT NULL,
  `comments` longtext DEFAULT NULL,
  `diner` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `booking`
--

INSERT INTO `booking` (`id`, `date_booking`, `people_number`, `booking_confirmed`, `hour_booking`, `name_booking`, `phone_booking`, `email_booking`, `comments`, `diner`) VALUES
(1, '2024-01-01', 2, 1, '20:00:00', 'Léa', '0606060606', 'leabitan@hotmail.fr', 'blabla', 1),
(4, '2024-02-12', 5, NULL, '20:00:00', 'jean', '0679888888', 'jean@hotmail.fr', NULL, 1),
(5, '2024-04-26', 4, 0, '12:30:00', 'Bitan', '0679885645', 'leabitan@hotmail.fr', NULL, 0),
(6, '2024-04-27', 2, 0, '21:00:00', 'Mouchard', '0645789656', 'mouchard@hotmail.fr', 'Client detestable', 1),
(7, '2024-04-29', 5, 1, '12:00:00', 'Hermosa', '0659785462', 'hermosa@hotmail.fr', NULL, 0),
(8, '2024-04-16', 2, NULL, '12:00:00', 'Dupont', '0679856531', 'dupont@hotmail.fr', NULL, 0),
(10, '2024-05-21', 3, 1, '21:00:00', 'Julie', '0679887676', 'julie@julie.fr', NULL, 1),
(11, '2022-06-20', 6, 1, '21:00:00', 'Any', '0658452632', 'any@hotmail.fr', 'Coté jardin', 1),
(12, '2026-08-31', 0, 1, '12:05:00', 'non', '0199999998', 'bjkjbk@h.g', NULL, 0),
(13, '2024-06-21', 2, NULL, '19:00:00', 'bitan', '0625221212', 'lea@hotmail.fr', 'hjn', 1),
(14, '2024-06-24', 5, NULL, '12:00:00', 'hanna', '0145555555', 'hanne@hotmail.fr', NULL, 0),
(15, '2024-06-27', 2, NULL, '21:00:00', 'Jacques', '0149586532', 'jacques@hormail.fr', NULL, 1),
(17, '0202-01-04', 6, NULL, '20:00:00', 'Alice', '0676283946', 'alice@hotmail.fr', NULL, 1),
(18, '2024-07-09', 6, NULL, '12:00:00', 'Louise', '0679127385', 'louise@hotmail.fr', NULL, 0),
(19, '2024-07-12', 3, NULL, '20:30:00', 'Paul', '0133445566', 'cda@hotmail.fr', NULL, 1),
(20, '2024-07-15', 2, 1, '21:00:00', 'Camille', '0618293819', 'Camille@hotmail.fr', 'Dehors', 1),
(21, '2024-07-10', 3, 1, '21:00:00', 'Margaux', '0123829302', 'margaux@hotmail.fr', 'allergies', 1),
(22, '2024-07-10', 6, NULL, '12:00:00', 'Matthieu', '0678987617', 'matthieu@hotmail.fr', NULL, 0),
(23, '2024-07-10', 2, NULL, '20:30:00', 'Roseline', '0156738293', 'roseline@hotmail.fr', NULL, 1),
(24, '2024-07-10', 2, NULL, '20:30:00', 'Pascal', '0678972618', 'pascal@hormail.fr', NULL, 1),
(25, '2024-07-10', 4, NULL, '21:00:00', 'Lionel', '0678771829', 'lionel@hotmail.fr', NULL, 1),
(26, '2024-07-10', 4, NULL, '20:00:00', 'Leila', '0617283919', 'leila@hotmail.fr', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name_category` varchar(255) NOT NULL,
  `active_category` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name_category`, `active_category`) VALUES
(1, 'Entrée', 1),
(2, 'Plat', 1),
(3, 'Dessert', 1);

-- --------------------------------------------------------

--
-- Structure de la table `category_product`
--

CREATE TABLE `category_product` (
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category_product`
--

INSERT INTO `category_product` (`category_id`, `product_id`) VALUES
(1, 5),
(1, 7),
(1, 9),
(1, 12),
(1, 18),
(2, 2),
(2, 11),
(2, 17),
(2, 19),
(2, 21),
(3, 1),
(3, 3),
(3, 14),
(3, 15);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20231218032702', '2023-12-18 04:43:57', 619),
('DoctrineMigrations\\Version20231226174219', '2023-12-26 18:43:07', 38),
('DoctrineMigrations\\Version20231226181350', '2023-12-26 19:13:57', 102),
('DoctrineMigrations\\Version20240506123906', '2024-05-06 14:39:19', 24),
('DoctrineMigrations\\Version20240506124436', '2024-05-06 14:44:44', 25),
('DoctrineMigrations\\Version20240506124604', '2024-05-06 14:46:12', 18),
('DoctrineMigrations\\Version20240506124921', '2024-05-06 14:49:27', 28),
('DoctrineMigrations\\Version20240506142826', '2024-05-06 16:28:37', 101),
('DoctrineMigrations\\Version20240507083528', '2024-05-07 10:35:38', 15),
('DoctrineMigrations\\Version20240507090026', '2024-05-07 11:00:37', 86),
('DoctrineMigrations\\Version20240513113517', '2024-05-13 13:35:28', 12),
('DoctrineMigrations\\Version20240618142031', '2024-06-18 16:20:49', 142),
('DoctrineMigrations\\Version20240618145837', '2024-06-18 16:58:42', 24),
('DoctrineMigrations\\Version20240621163616', '2024-06-21 18:36:31', 102);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `reference`, `created_at`, `user_id`) VALUES
(1, '6639e85177df0', '2024-05-07 10:37:37', NULL),
(2, '6639e85a5ca9c', '2024-05-07 10:37:46', NULL),
(3, '6639e9e0259da', '2024-05-07 10:44:16', NULL),
(4, '6639ede625c58', '2024-05-07 11:01:26', NULL),
(5, '6641e31550213', '2024-05-13 11:53:25', NULL),
(6, '6641e3196258f', '2024-05-13 11:53:29', NULL),
(7, '6641e573287b9', '2024-05-13 12:03:31', NULL),
(8, '6641e5b61bb3e', '2024-05-13 12:04:38', NULL),
(9, '6641e5b641eeb', '2024-05-13 12:04:38', NULL),
(10, '6641e5b662bc4', '2024-05-13 12:04:38', NULL),
(11, '6641e5b6850c5', '2024-05-13 12:04:38', NULL),
(12, '6641e5b6a7107', '2024-05-13 12:04:38', NULL),
(13, '6641e5b6c644f', '2024-05-13 12:04:38', NULL),
(14, '6641e5b6e6084', '2024-05-13 12:04:38', NULL),
(15, '6641e5b70cd85', '2024-05-13 12:04:39', NULL),
(16, '6641e5b72b66c', '2024-05-13 12:04:39', NULL),
(17, '6641e5b749efe', '2024-05-13 12:04:39', NULL),
(18, '6641e5b7680f2', '2024-05-13 12:04:39', NULL),
(19, '6641e5b782d90', '2024-05-13 12:04:39', NULL),
(20, '6641e5b7a0e12', '2024-05-13 12:04:39', NULL),
(21, '6641e5b7bd894', '2024-05-13 12:04:39', NULL),
(22, '6641e5b7e33ef', '2024-05-13 12:04:39', NULL),
(23, '6641e5b80b811', '2024-05-13 12:04:40', NULL),
(24, '6641e5b82343a', '2024-05-13 12:04:40', NULL),
(25, '6641e5b842732', '2024-05-13 12:04:40', NULL),
(26, '6641e5b864a5d', '2024-05-13 12:04:40', NULL),
(27, '6641e5b8844f2', '2024-05-13 12:04:40', NULL),
(28, '6641e5b8a0bd9', '2024-05-13 12:04:40', NULL),
(29, '6641e5bdcf089', '2024-05-13 12:04:45', NULL),
(30, '6641e5be135d2', '2024-05-13 12:04:46', NULL),
(31, '6641e5be42e25', '2024-05-13 12:04:46', NULL),
(32, '6641e5be70b3a', '2024-05-13 12:04:46', NULL),
(33, '6641e5be9b350', '2024-05-13 12:04:46', NULL),
(34, '6641e5beccb91', '2024-05-13 12:04:46', NULL),
(35, '6641e5bf09c98', '2024-05-13 12:04:47', NULL),
(36, '6641e5bf3d270', '2024-05-13 12:04:47', NULL),
(37, '6641e5bf6a185', '2024-05-13 12:04:47', NULL),
(38, '6641e5bf8471f', '2024-05-13 12:04:47', NULL),
(39, '6641e5bf9c664', '2024-05-13 12:04:47', NULL),
(40, '6641e5bfb3ca0', '2024-05-13 12:04:47', NULL),
(41, '6641e5bfc9a87', '2024-05-13 12:04:47', NULL),
(42, '6641e5bfe661d', '2024-05-13 12:04:47', NULL),
(43, '6641e5c010c3c', '2024-05-13 12:04:48', NULL),
(44, '6641e5c02d155', '2024-05-13 12:04:48', NULL),
(45, '6641e5c047ca4', '2024-05-13 12:04:48', NULL),
(46, '6641e5c0638e9', '2024-05-13 12:04:48', NULL),
(47, '6641e5c07e3b4', '2024-05-13 12:04:48', NULL),
(48, '6641e5c098df3', '2024-05-13 12:04:48', NULL),
(49, '6641e5c0b1e2e', '2024-05-13 12:04:48', NULL),
(50, '6641e5c50091b', '2024-05-13 12:04:53', NULL),
(51, '6641e5c52ee6c', '2024-05-13 12:04:53', NULL),
(52, '6641e5c55cbda', '2024-05-13 12:04:53', NULL),
(53, '6641e5c588906', '2024-05-13 12:04:53', NULL),
(54, '6641e5c5a62a5', '2024-05-13 12:04:53', NULL),
(55, '6641e5c5c3276', '2024-05-13 12:04:53', NULL),
(56, '6641e5c5dd9ce', '2024-05-13 12:04:53', NULL),
(57, '6641e5c60579e', '2024-05-13 12:04:54', NULL),
(58, '6641e5c6202ad', '2024-05-13 12:04:54', NULL),
(59, '6641e5c63c450', '2024-05-13 12:04:54', NULL),
(60, '6641e5c656948', '2024-05-13 12:04:54', NULL),
(61, '6641e5c674704', '2024-05-13 12:04:54', NULL),
(62, '6641e5c68f85f', '2024-05-13 12:04:54', NULL),
(63, '6641e5c6ad8d9', '2024-05-13 12:04:54', NULL),
(64, '6641e5c6c9da9', '2024-05-13 12:04:54', NULL),
(65, '6641e5c6e44fa', '2024-05-13 12:04:54', NULL),
(66, '6641e5c710d0d', '2024-05-13 12:04:55', NULL),
(67, '6641e5c72e471', '2024-05-13 12:04:55', NULL),
(68, '6641e5c74a756', '2024-05-13 12:04:55', NULL),
(69, '6641e5c76921c', '2024-05-13 12:04:55', NULL),
(70, '6641e5c7814cf', '2024-05-13 12:04:55', NULL),
(71, '6641eadad064d', '2024-05-13 12:26:34', NULL),
(72, '6641eb0d5abd3', '2024-05-13 12:27:25', NULL),
(73, '6641eb2ec6a16', '2024-05-13 12:27:58', NULL),
(74, '6641eb869d2b2', '2024-05-13 12:29:26', NULL),
(75, '6641ee9e3c03a', '2024-05-13 12:42:38', NULL),
(76, '6641ef336dc92', '2024-05-13 12:45:07', NULL),
(77, '6641ef69d3302', '2024-05-13 12:46:01', NULL),
(78, '6641ef6bedb21', '2024-05-13 12:46:03', NULL),
(79, '6641ef9cd3c85', '2024-05-13 12:46:52', NULL),
(80, '6641f0a81fa9e', '2024-05-13 12:51:20', NULL),
(81, '6641f0b912365', '2024-05-13 12:51:37', NULL),
(82, '6641f0dbd7da2', '2024-05-13 12:52:11', NULL),
(83, '6641f0e3149e9', '2024-05-13 12:52:19', NULL),
(84, '6641f15d067e4', '2024-05-13 12:54:21', NULL),
(85, '6641f160729eb', '2024-05-13 12:54:24', NULL),
(86, '6641f1b0ced8e', '2024-05-13 12:55:44', NULL),
(87, '6641f1c584a57', '2024-05-13 12:56:05', NULL),
(88, '6641f1ce295f6', '2024-05-13 12:56:14', NULL),
(89, '6641f1ee4f426', '2024-05-13 12:56:46', NULL),
(90, '6641f3d0ae946', '2024-05-13 13:04:48', NULL),
(91, '6641f3dabf5ff', '2024-05-13 13:04:58', NULL),
(92, '6641f3f1304a8', '2024-05-13 13:05:21', NULL),
(93, '6641f4042873e', '2024-05-13 13:05:40', NULL),
(94, '6641f55e2d158', '2024-05-13 13:11:26', NULL),
(95, '6641f586f0265', '2024-05-13 13:12:06', NULL),
(96, '6641f5dab1448', '2024-05-13 13:13:30', NULL),
(97, '6641fb606ba4d', '2024-05-13 13:37:04', NULL),
(98, '6641fb772b4d9', '2024-05-13 13:37:27', NULL),
(99, '6641fbfe76239', '2024-05-13 13:39:42', NULL),
(100, '6641fc09210a5', '2024-05-13 13:39:53', NULL),
(101, '6641fc5761221', '2024-05-13 13:41:11', NULL),
(102, '6641fc8ca19ca', '2024-05-13 13:42:04', NULL),
(103, '6642036c9c96a', '2024-05-13 14:11:24', NULL),
(104, '664203d0cc389', '2024-05-13 14:13:04', NULL),
(105, '6642041f43b0b', '2024-05-13 14:14:23', NULL),
(106, '66420421aca3c', '2024-05-13 14:14:25', NULL),
(107, '6642045817633', '2024-05-13 14:15:20', NULL),
(108, '6642046b8d7af', '2024-05-13 14:15:39', NULL),
(109, '66420487d9bc1', '2024-05-13 14:16:07', NULL),
(110, '664204a98137c', '2024-05-13 14:16:41', NULL),
(111, '6642056ac6a0f', '2024-05-13 14:19:54', NULL),
(112, '664372f509d7e', '2024-05-14 16:19:33', NULL),
(113, '6643741aa4ea7', '2024-05-14 16:24:26', NULL),
(114, '664374771d941', '2024-05-14 16:25:59', NULL),
(115, '6643aa201e736', '2024-05-14 20:14:56', NULL),
(116, '6643aa601355e', '2024-05-14 20:16:00', NULL),
(117, '6671946455277', '2024-06-18 16:06:28', NULL),
(118, '667197cb10cc7', '2024-06-18 16:20:59', NULL),
(119, '667197d94fe99', '2024-06-18 16:21:13', NULL),
(120, '66719c674a649', '2024-06-18 16:40:39', NULL),
(121, '66719c6e4e04c', '2024-06-18 16:40:46', NULL),
(122, '6671a0c68f425', '2024-06-18 16:59:18', NULL),
(123, '6675af184ca61', '2024-06-21 18:49:28', NULL),
(124, '6677ef7f13828', '2024-06-23 11:48:47', 29),
(125, '6677efa40ecdc', '2024-06-23 11:49:24', 29),
(126, '6677efb402b88', '2024-06-23 11:49:40', 29),
(127, '6677f014a16d7', '2024-06-23 11:51:16', 29),
(128, '6687b934d978d', '2024-07-05 11:13:24', NULL),
(129, '6687bdb24b736', '2024-07-05 11:32:34', NULL),
(130, '6688006461cdd', '2024-07-05 16:17:08', NULL),
(131, '668800af7ae35', '2024-07-05 16:18:23', NULL),
(132, '668920ce80d1b', '2024-07-06 12:47:42', NULL),
(133, '668920e52c3b4', '2024-07-06 12:48:05', NULL),
(134, '668963f693053', '2024-07-06 17:34:14', NULL),
(135, '668a7cb158d59', '2024-07-07 13:32:01', 40),
(136, '668afdcd34e56', '2024-07-07 22:42:53', 38);

-- --------------------------------------------------------

--
-- Structure de la table `orders_details`
--

CREATE TABLE `orders_details` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` double NOT NULL,
  `orders_id` int(11) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `orders_details`
--

INSERT INTO `orders_details` (`id`, `products_id`, `quantity`, `price`, `orders_id`, `product_name`) VALUES
(1, 2, 2, 25, 1, NULL),
(2, 2, 3, 25, 2, NULL),
(3, 2, 3, 25, 3, NULL),
(4, 2, 4, 25, 4, NULL),
(5, 3, 1, 7, 4, NULL),
(6, 3, 1, 7, 5, NULL),
(7, 3, 1, 7, 6, NULL),
(8, 6, 1, 14, 7, NULL),
(9, 6, 1, 14, 8, NULL),
(10, 6, 1, 14, 9, NULL),
(11, 6, 1, 14, 10, NULL),
(12, 6, 1, 14, 11, NULL),
(13, 6, 1, 14, 12, NULL),
(14, 6, 1, 14, 13, NULL),
(15, 6, 1, 14, 14, NULL),
(16, 6, 1, 14, 15, NULL),
(17, 6, 1, 14, 16, NULL),
(18, 6, 1, 14, 17, NULL),
(19, 6, 1, 14, 18, NULL),
(20, 6, 1, 14, 19, NULL),
(21, 6, 1, 14, 20, NULL),
(22, 6, 1, 14, 21, NULL),
(23, 6, 1, 14, 22, NULL),
(24, 6, 1, 14, 23, NULL),
(25, 6, 1, 14, 24, NULL),
(26, 6, 1, 14, 25, NULL),
(27, 6, 1, 14, 26, NULL),
(28, 6, 1, 14, 27, NULL),
(29, 6, 1, 14, 28, NULL),
(30, 6, 1, 14, 29, NULL),
(31, 6, 1, 14, 30, NULL),
(32, 6, 1, 14, 31, NULL),
(33, 6, 1, 14, 32, NULL),
(34, 6, 1, 14, 33, NULL),
(35, 6, 1, 14, 34, NULL),
(36, 6, 1, 14, 35, NULL),
(37, 6, 1, 14, 36, NULL),
(38, 6, 1, 14, 37, NULL),
(39, 6, 1, 14, 38, NULL),
(40, 6, 1, 14, 39, NULL),
(41, 6, 1, 14, 40, NULL),
(42, 6, 1, 14, 41, NULL),
(43, 6, 1, 14, 42, NULL),
(44, 6, 1, 14, 43, NULL),
(45, 6, 1, 14, 44, NULL),
(46, 6, 1, 14, 45, NULL),
(47, 6, 1, 14, 46, NULL),
(48, 6, 1, 14, 47, NULL),
(49, 6, 1, 14, 48, NULL),
(50, 6, 1, 14, 49, NULL),
(51, 6, 1, 14, 50, NULL),
(52, 6, 1, 14, 51, NULL),
(53, 6, 1, 14, 52, NULL),
(54, 6, 1, 14, 53, NULL),
(55, 6, 1, 14, 54, NULL),
(56, 6, 1, 14, 55, NULL),
(57, 6, 1, 14, 56, NULL),
(58, 6, 1, 14, 57, NULL),
(59, 6, 1, 14, 58, NULL),
(60, 6, 1, 14, 59, NULL),
(61, 6, 1, 14, 60, NULL),
(62, 6, 1, 14, 61, NULL),
(63, 6, 1, 14, 62, NULL),
(64, 6, 1, 14, 63, NULL),
(65, 6, 1, 14, 64, NULL),
(66, 6, 1, 14, 65, NULL),
(67, 6, 1, 14, 66, NULL),
(68, 6, 1, 14, 67, NULL),
(69, 6, 1, 14, 68, NULL),
(70, 6, 1, 14, 69, NULL),
(71, 6, 1, 14, 70, NULL),
(72, 6, 1, 14, 71, NULL),
(73, 6, 1, 14, 72, NULL),
(74, 6, 1, 14, 73, NULL),
(75, 7, 1, 15, 73, NULL),
(76, 4, 1, 6, 74, NULL),
(77, 1, 1, 15, 75, NULL),
(78, 1, 1, 15, 76, NULL),
(79, 1, 1, 15, 77, NULL),
(80, 1, 1, 15, 78, NULL),
(81, 1, 1, 15, 79, NULL),
(82, 1, 1, 15, 80, NULL),
(83, 1, 1, 15, 81, NULL),
(84, 1, 1, 15, 82, NULL),
(85, 1, 2, 15, 83, NULL),
(86, 1, 2, 15, 84, NULL),
(87, 1, 2, 15, 85, NULL),
(88, 1, 2, 15, 86, NULL),
(89, 1, 2, 15, 87, NULL),
(90, 1, 2, 15, 88, NULL),
(91, 1, 2, 15, 89, NULL),
(92, 1, 2, 15, 90, NULL),
(93, 1, 2, 15, 91, NULL),
(94, 1, 2, 15, 92, NULL),
(95, 1, 2, 15, 93, NULL),
(96, 1, 2, 15, 94, NULL),
(97, 1, 2, 15, 95, NULL),
(98, 1, 2, 15, 96, NULL),
(99, 2, 1, 25, 97, 'Pate bolognaise'),
(100, 2, 1, 25, 98, 'Pate bolognaise'),
(101, 2, 1, 25, 99, 'Pate bolognaise'),
(102, 2, 1, 25, 100, 'Pate bolognaise'),
(103, 2, 1, 25, 101, 'Pate bolognaise'),
(104, 6, 1, 14, 102, 'Poireaux Vinaigrette'),
(105, 3, 1, 7, 102, 'Mousse au chocolat'),
(106, 6, 1, 14, 103, 'Poireaux Vinaigrette'),
(107, 3, 1, 7, 103, 'Mousse au chocolat'),
(108, 6, 1, 14, 104, 'Poireaux Vinaigrette'),
(109, 3, 1, 7, 104, 'Mousse au chocolat'),
(110, 6, 1, 14, 105, 'Poireaux Vinaigrette'),
(111, 3, 1, 7, 105, 'Mousse au chocolat'),
(112, 6, 1, 14, 106, 'Poireaux Vinaigrette'),
(113, 3, 1, 7, 106, 'Mousse au chocolat'),
(114, 6, 1, 14, 107, 'Poireaux Vinaigrette'),
(115, 3, 1, 7, 107, 'Mousse au chocolat'),
(116, 6, 1, 14, 108, 'Poireaux Vinaigrette'),
(117, 3, 1, 7, 108, 'Mousse au chocolat'),
(118, 6, 1, 14, 109, 'Poireaux Vinaigrette'),
(119, 3, 1, 7, 109, 'Mousse au chocolat'),
(120, 6, 1, 14, 110, 'Poireaux Vinaigrette'),
(121, 3, 1, 7, 110, 'Mousse au chocolat'),
(122, 3, 1, 7, 111, 'Mousse au chocolat'),
(123, 2, 1, 25, 112, NULL),
(124, 2, 1, 25, 113, 'Pate bolognaise'),
(125, 2, 2, 25, 114, 'Pate bolognaise'),
(126, 7, 2, 15, 114, 'Houmous'),
(127, 8, 1, 18, 115, 'tarte aux oignons revisitée'),
(128, 8, 1, 18, 116, 'tarte aux oignons revisitée'),
(129, 3, 1, 7, 116, 'Mousse au chocolat'),
(130, 2, 1, 25, 117, 'Pate bolognaise'),
(131, 2, 1, 25, 118, 'Pate bolognaise'),
(132, 1, 1, 15, 119, 'Tarte pomme'),
(133, 1, 1, 15, 120, 'Tarte pomme'),
(134, 3, 1, 7, 121, 'Mousse au chocolat'),
(135, 4, 1, 6, 122, 'Peche'),
(136, 2, 1, 25, 123, 'Pate bolognaise'),
(137, 14, 1, 9, 125, 'tarte citron'),
(138, 14, 111, 9, 127, 'tarte citron'),
(139, 1, 1, 15, 129, 'Tarte pomme'),
(140, 13, 1, 15, 130, 'Salade du moment'),
(141, 11, 1, 28, 130, 'Coquille saint jacques'),
(142, 16, 1, 8, 130, 'Meringue'),
(143, 13, 1, 15, 131, 'Salade du moment'),
(144, 11, 1, 28, 131, 'Coquille saint jacques'),
(145, 15, 1, 9, 131, 'Tarte fraise'),
(146, 6, 1, 14, 133, 'Poireaux Vinaigrette'),
(147, 12, 1, 19, 134, 'Tartare de saumon'),
(148, 17, 1, 29, 134, 'Cabillaud et purée'),
(149, 3, 1, 7, 134, 'Mousse au chocolat'),
(150, 7, 2, 15, 135, 'Houmous'),
(151, 17, 2, 29, 135, 'Cabillaud et purée'),
(152, 1, 2, 15, 135, 'Tarte pomme'),
(153, 2, 1, 25, 136, 'Bolognaise');

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `stock_id` int(11) DEFAULT NULL,
  `name_product` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `price` double NOT NULL,
  `active_product` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `stock_id`, `name_product`, `description`, `image`, `price`, `active_product`) VALUES
(1, 6, 'Tarte pomme', 'blablabla', '66894f0fba612.jpg', 15, 1),
(2, 2, 'Bolognaise', 'blablabla', '66895020ce41c.jpg', 25, 1),
(3, 19, 'Mousse choco', 'blablabla', '66894e25b72f3.jpg', 7, 1),
(5, 16, 'Velouté', 'mais', '66894f295d7ab.jpg', 17, 1),
(7, 20, 'Houmous', 'poids', '66894f3e51f56.jpg', 15, 1),
(9, 21, 'Foie gras', 'confiture', '66894f568dca2.jpg', 20, 1),
(11, 22, 'Coquille saint jacques', 'et poirreaux', '66894f78079ac.jpg', 28, 1),
(12, 23, 'Tartare de saumon', 'citron', '66895088e57be.jpg', 19, 1),
(14, 8, 'tarte citron', 'citron', '66894fab3cdd8.jpg', 9, 1),
(15, 10, 'Tarte fraise', 'fraise', '668950d6ed218.jpg', 9, 1),
(17, 12, 'Cabillaud et purée', 'poisson et pomme de terre', '66895012bfd68.jpg', 29, 1),
(18, 13, 'Soupe du moment', 'légumes', '66894b91d5e97.jpg', 15, 1),
(19, 14, 'brochettes de poulet', 'viande', '66894fe16b0c1.jpg', 25, 1),
(21, 18, 'Lasagnes', 'boeuf et pates', '66892889767fe.jpg', 26, 1);

-- --------------------------------------------------------

--
-- Structure de la table `reset_password_request`
--

CREATE TABLE `reset_password_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `selector` varchar(20) NOT NULL,
  `hashed_token` varchar(100) NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `quantity_sold` int(11) DEFAULT NULL,
  `quantity_prepared` int(11) DEFAULT NULL,
  `quantity_real` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `stock`
--

INSERT INTO `stock` (`id`, `quantity_sold`, `quantity_prepared`, `quantity_real`) VALUES
(1, NULL, 5, NULL),
(2, 0, 10, 10),
(4, NULL, 8, NULL),
(5, NULL, 5, NULL),
(6, 0, 6, 6),
(7, 2, 5, 3),
(8, 5, 10, 5),
(10, 5, 10, 5),
(12, 0, 10, 10),
(13, 0, 10, 10),
(14, 0, 23, 23),
(16, 0, 15, 15),
(18, 0, 10, 10),
(19, 0, 16, 16),
(20, 0, 20, 20),
(21, 0, 7, 7),
(22, 0, 3, 3),
(23, 0, 15, 15);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`roles`)),
  `password` varchar(255) NOT NULL,
  `inscription_date` datetime NOT NULL DEFAULT current_timestamp() COMMENT '(DC2Type:datetime_immutable)',
  `matricule` varchar(10) DEFAULT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `active_user` tinyint(1) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `postal_code` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `inscription_date`, `matricule`, `firstname`, `lastname`, `active_user`, `phone`, `street`, `postal_code`) VALUES
(12, 'test5@hotmail.fr', '[\"ROLE_USER\",\"ROLE_ADMIN\"]', '$2y$10$ZiZQvLOcvO1xCIEw8s6mR.r0JiB9bc10XF5FB9UTt2.oOFqmDNt5y', '2023-12-18 20:11:39', NULL, 'test5', 'test5', 1, NULL, NULL, NULL),
(13, 'fonctionne@hotmail.fr', '[]', '$2y$10$Wl1i8qNCmwdu5iERO.4wZOKfwG9QK/6kd2I73LHhNF6Fmr7GJryMS', '2023-12-23 19:30:51', NULL, 'fonctionne', 'fonctionne', NULL, NULL, NULL, NULL),
(16, 'test2023@hotmail.fr', '[]', '$2y$13$iBC.2pSR5xp4bfpknquII.FotLWvLC6Y7cGJbkqSAN..FC1KIWqUu', '2023-12-26 18:44:20', NULL, 'test2023', 'test2023', NULL, NULL, NULL, NULL),
(18, 'test2024@hotmail.fr', '[]', '$2y$13$t7ZQSx.5XRtJufo3iVL5veuE6HAnh2bf9RQUpx826QID4Ot0FSuqu', '2023-12-26 19:14:25', NULL, 'test2024', 'test2024', NULL, NULL, NULL, NULL),
(24, 'arnaud@arnaud.fr', '[]', '$2y$13$jw0crQQtKFXw6DF2d73.KusEU80K3iTS54eh.CUaNpCJVugDn/Uja', '2024-05-06 14:17:15', NULL, 'Arnaud', 'Arnaud', NULL, NULL, NULL, NULL),
(29, 'user_1_random@hotmail.fr', '[]', '$2y$13$mBMs7nb1hg.vx6O45F6f2ueYFKXjXdy2gdy0m9O/RAOGz/ZM1UTq2', '2024-06-23 11:48:09', NULL, 'User_1', 'Utilisateur_random', 0, '0', 'Non', '0'),
(35, 'admin@outlook.com', '[\"ROLE_ADMIN\"]', '$2y$13$3WYpK4IEQbfzNGp.Jdr9iOkKN3SvK0PBzqvjFT.mvqDcsir1HdSku', '2024-07-07 12:30:17', NULL, 'Léa', 'Bitan', 0, '0679885718', '10 rue roger', '75015'),
(38, 'admin@hotmail.fr', '[\"ROLE_USER\",\"ROLE_ADMIN\",\"ROLE_EMPLOYEE\"]', '$2y$13$PM1Z9RH4gy/94kbEvIS/WeMEWH4/99qp.bOjo.ksMgSsN9yBliDaa', '2024-07-07 12:58:29', NULL, 'admin', 'admin', 0, '0678263718', 'rue jean paul', '75010'),
(39, 'employe@hotmail.fr', '[\"ROLE_USER\",\"ROLE_EMPLOYEE\"]', '$2y$13$e4IMD5NeTDqcQT/22YkrceZf5xLifCn8Csm9lAkkj9y45vXOZqG5e', '2024-07-07 13:00:18', NULL, 'employe', 'employe', 0, '0678972618', '3 rue Lequindre', '75020'),
(40, 'leabitan@outlook.com', '[]', '$2y$13$2sbFeNU2aAKQP9vJqrjJdOxG6ID5v8x0svljW9io6Pdl1jhQ5GZ..', '2024-07-07 13:23:30', NULL, 'Léa', 'Bitan', NULL, NULL, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`category_id`,`product_id`),
  ADD KEY `IDX_149244D312469DE2` (`category_id`),
  ADD KEY `IDX_149244D34584665A` (`product_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E52FFDEEA76ED395` (`user_id`);

--
-- Index pour la table `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_835379F1CFFE9AD6` (`orders_id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_D34A04ADDCD6110` (`stock_id`);

--
-- Index pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7CE748AA76ED395` (`user_id`);

--
-- Index pour la table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT pour la table `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `FK_149244D312469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_149244D34584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_E52FFDEEA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `orders_details`
--
ALTER TABLE `orders_details`
  ADD CONSTRAINT `FK_835379F1CFFE9AD6` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`);

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04ADDCD6110` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`id`);

--
-- Contraintes pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
--
-- Base de données : `db_cda_test_test`
--
CREATE DATABASE IF NOT EXISTS `db_cda_test_test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_cda_test_test`;

-- --------------------------------------------------------

--
-- Structure de la table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `date_booking` date NOT NULL,
  `people_number` int(11) NOT NULL,
  `booking_confirmed` tinyint(1) DEFAULT NULL,
  `hour_booking` time NOT NULL,
  `name_booking` varchar(50) NOT NULL,
  `phone_booking` varchar(20) NOT NULL,
  `email_booking` varchar(255) NOT NULL,
  `comments` longtext DEFAULT NULL,
  `diner` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `booking`
--

INSERT INTO `booking` (`id`, `date_booking`, `people_number`, `booking_confirmed`, `hour_booking`, `name_booking`, `phone_booking`, `email_booking`, `comments`, `diner`) VALUES
(2, '2024-02-25', 2, 0, '17:35:17', 'Denis Duval-Etienne', '0899327774', 'gmonnier@lebrun.fr', 'Ut quasi aut natus.', 1),
(3, '2024-03-25', 10, 0, '07:28:22', 'Franck-Louis Perrot', '+33 3 68 21 55 77', 'jacquot.rene@baron.net', 'Debitis sit numquam maiores rerum harum repellendus error.', 0),
(4, '2024-03-08', 4, 0, '10:28:00', 'Sabine Pereira', '0746452858', 'remy.josette@courtois.org', 'Dignissimos similique voluptatem veniam.', 1),
(5, '2024-04-19', 9, 0, '15:37:12', 'Célina Ramos', '0154328267', 'luc.brunel@free.fr', 'Minus aut dolor dolorem dolorem quia.', 0),
(6, '2024-01-31', 5, 0, '20:00:34', 'Guy Millet', '+33 (0)1 76 87 79 83', 'ymarques@hotmail.fr', 'Voluptatibus explicabo odit rerum delectus repellendus iure.', 0),
(7, '2024-05-13', 4, 0, '18:33:50', 'Inès Leroux', '05 75 86 41 76', 'augustin.wagner@renaud.com', 'Id voluptas omnis necessitatibus doloremque deleniti sint.', 1),
(8, '2024-03-15', 3, 1, '08:41:57', 'Christine Lebrun', '0811881433', 'guillon.josette@lecoq.fr', 'Quam ad voluptatem aspernatur.', 0),
(9, '2024-04-14', 3, 0, '09:01:43', 'Corinne Boyer-Verdier', '07 69 00 64 78', 'guy.richard@yahoo.fr', 'Maxime quod quibusdam veniam hic voluptatem.', 1),
(10, '2024-02-03', 5, 0, '20:24:47', 'Laurent Lambert', '07 51 86 13 07', 'rousset.ines@coste.fr', 'Facere earum illo rem.', 0),
(11, '2024-01-31', 4, 1, '16:36:31', 'André Ollivier', '0790751347', 'hbouchet@tele2.fr', 'Sint soluta consequuntur sint et.', 0),
(12, '2024-02-02', 2, 1, '17:50:31', 'Nicole Poirier', '0584879518', 'laure.brun@hotmail.fr', 'Quia est recusandae magnam optio voluptates.', 1),
(13, '2024-04-20', 1, 1, '03:10:59', 'Eugène Launay-Allard', '01 62 08 05 94', 'diane18@girard.com', 'Explicabo provident quaerat quam vero harum omnis nesciunt.', 1),
(14, '2024-01-30', 7, 0, '12:30:10', 'Bernard Blanchard', '+33 4 35 36 08 26', 'xgilbert@peltier.com', 'Vel commodi et minus voluptatem tenetur qui.', 0),
(15, '2024-03-02', 6, 0, '15:32:11', 'Benjamin Bailly', '+33 (0)1 01 35 64 59', 'pevrard@costa.com', 'Aut facilis qui provident quis in.', 0),
(16, '2024-01-01', 4, 1, '04:28:45', 'Gérard Baudry', '+33 (0)1 53 48 02 86', 'julien64@laposte.net', 'Distinctio rerum officiis eaque ducimus vitae quia.', 0),
(17, '2024-02-13', 3, 0, '12:34:34', 'Joseph Humbert-Guillot', '07 61 08 40 39', 'pasquier.roland@yahoo.fr', 'Accusamus distinctio adipisci vel neque.', 0),
(18, '2024-04-11', 3, 1, '08:49:27', 'David Pasquier', '+33 (0)7 99 96 79 37', 'amelie.vallee@tele2.fr', 'Et qui id itaque esse sed error.', 0),
(19, '2024-03-10', 8, 1, '16:08:08', 'Alexandria du Guillet', '+33 (0)6 68 87 50 91', 'odette57@wagner.com', 'Quidem et dolor deleniti aut quis quos.', 1),
(20, '2024-05-12', 3, 0, '18:57:17', 'Patrick Legros', '+33 8 05 81 64 90', 'tristan.muller@noos.fr', 'Libero sit quisquam natus.', 0),
(21, '2024-01-24', 9, 1, '07:29:32', 'Camille Torres', '+33 (0)3 57 52 31 50', 'danielle96@munoz.fr', 'Explicabo eveniet ad expedita eos ipsum earum omnis.', 0),
(22, '2024-01-21', 8, 0, '01:25:46', 'Emmanuelle Lelievre', '0103433973', 'aimee70@noos.fr', 'Iste aliquid perferendis error facere ut quisquam.', 1),
(23, '2024-03-12', 7, 0, '10:34:53', 'Anaïs Gallet', '+33 (0)2 03 28 92 79', 'roger.maillot@aubert.com', 'Nemo pariatur est laudantium quo velit occaecati quas.', 1),
(24, '2024-03-16', 10, 1, '01:37:38', 'Dominique Richard-Bousquet', '+33 4 98 35 46 76', 'monique18@valette.fr', 'Aut non quas odio repellat minima consequuntur voluptatem.', 0),
(25, '2024-02-11', 9, 0, '16:47:14', 'Théophile de la Poirier', '02 42 23 85 47', 'zoe.tessier@vidal.com', 'Saepe rerum ab autem cum numquam et earum et.', 0),
(26, '2024-03-06', 1, 0, '00:35:01', 'Amélie-Diane Perrin', '0140178934', 'yves.gros@gmail.com', 'Et aspernatur voluptas doloremque maxime inventore quis eaque tempore.', 0),
(27, '2024-02-21', 9, 0, '03:31:10', 'Bertrand Wagner', '+33 (0)1 66 99 55 13', 'leclerc.adelaide@morvan.fr', 'Consequatur neque maiores qui labore eum et aut.', 0),
(28, '2024-03-09', 8, 1, '21:22:38', 'Henriette Antoine', '+33 4 67 93 11 08', 'scarre@live.com', 'Eos consequatur quia error voluptas.', 1),
(29, '2024-05-10', 2, 0, '04:20:57', 'Camille Fleury', '08 26 97 80 83', 'lagarde.veronique@guibert.fr', 'Ab et nulla soluta rerum placeat.', 1),
(30, '2024-01-20', 4, 0, '22:16:13', 'François-Jérôme Martin', '01 79 23 01 79', 'daniel89@bazin.fr', 'Consequuntur autem a eveniet minima dolores voluptas dolorum.', 0),
(31, '2024-03-28', 4, 0, '10:16:00', 'Dominique Barbier', '+33 3 85 95 41 69', 'wbazin@perrot.org', 'Nihil et ipsa eveniet laudantium eum quo laboriosam.', 0),
(32, '2024-05-08', 6, 1, '06:58:56', 'Madeleine Da Silva-Lacroix', '0550944266', 'udupre@sfr.fr', 'Quas est dolor nihil.', 1),
(33, '2024-03-10', 4, 1, '22:22:34', 'Joséphine Marchal', '0755852359', 'picard.isaac@jourdan.net', 'Eaque illum animi omnis nam.', 0),
(34, '2024-05-09', 7, 1, '23:44:10', 'Geneviève Bernard', '+33 (0)5 28 96 43 14', 'herve.marcelle@gmail.com', 'Maxime optio modi eligendi eos omnis.', 1),
(35, '2024-04-05', 2, 1, '12:46:35', 'Marthe Masse', '+33 7 80 48 51 92', 'jeannine.grondin@wanadoo.fr', 'Nihil quasi iusto et neque optio vel.', 0),
(36, '2024-02-11', 8, 0, '01:51:32', 'Christine Le Goncalves', '07 87 74 85 06', 'theodore.valette@live.com', 'A velit vero eos odio dolor quia id aut.', 1),
(37, '2024-01-16', 10, 1, '12:12:58', 'Raymond Garcia-Perrin', '0752261651', 'vthomas@meyer.fr', 'Est fuga placeat voluptatem sit inventore qui enim.', 0),
(38, '2024-05-11', 10, 0, '13:08:55', 'Honoré Gimenez', '+33 6 63 26 77 58', 'benoit85@marques.org', 'Enim consequatur sit exercitationem voluptas.', 0),
(39, '2024-03-25', 4, 0, '11:24:41', 'Rémy Germain-Didier', '+33 6 08 71 13 19', 'xavier14@guillaume.com', 'Asperiores ut quia non animi itaque id.', 1),
(40, '2024-03-14', 10, 0, '17:58:14', 'Alix Maurice', '02 60 94 19 57', 'bernard.elodie@laposte.net', 'Labore et omnis id dicta est voluptatem.', 1),
(41, '2024-03-14', 6, 1, '03:10:35', 'Léon Evrard-Launay', '+33 1 31 63 78 48', 'victor57@orange.fr', 'Accusantium totam qui quas veniam et.', 1),
(42, '2024-02-26', 3, 1, '06:07:44', 'Christelle Valentin', '01 63 64 44 98', 'traore.paul@dbmail.com', 'Voluptas a labore velit et.', 1),
(43, '2024-01-01', 5, 0, '05:07:30', 'Luc Bigot', '+33 (0)1 67 19 94 45', 'fernandes.clemence@devaux.fr', 'Consectetur et omnis recusandae laborum totam.', 1),
(44, '2024-04-07', 8, 0, '23:39:11', 'Stéphanie-Sophie Ruiz', '0543833861', 'vlemonnier@orange.fr', 'Et quis et quia consequatur inventore.', 0),
(45, '2024-01-19', 3, 1, '19:35:10', 'Anne Robin', '05 03 82 20 63', 'lambert.paul@david.com', 'Asperiores ut explicabo sapiente velit nihil ut.', 1),
(46, '2024-04-19', 6, 1, '19:45:58', 'Agnès Raymond', '01 19 36 39 66', 'alexandrie65@dbmail.com', 'Et atque et sint et voluptatem facere.', 1),
(47, '2024-04-19', 4, 0, '22:49:05', 'Roland Chretien', '+33 (0)2 47 93 22 64', 'helene.leconte@guillaume.com', 'Ea omnis totam repellat suscipit facilis ab voluptatum.', 0),
(48, '2024-05-09', 3, 0, '00:39:57', 'Jacqueline Martineau', '02 59 10 79 72', 'hugues.philippe@dbmail.com', 'Iusto inventore sunt in magnam sint et impedit et.', 1),
(49, '2024-01-23', 1, 1, '21:14:09', 'Dorothée-Adrienne Weiss', '+33 2 46 98 51 05', 'jules10@club-internet.fr', 'Modi incidunt omnis enim aut laborum.', 0),
(50, '2024-05-09', 10, 0, '14:52:31', 'Dominique Robin', '0173794468', 'honore.bruneau@potier.fr', 'Consequatur expedita nihil tempore nesciunt nostrum.', 0),
(51, '2024-05-11', 2, 0, '06:24:08', 'Valérie Renard', '+33 (0)2 79 26 49 04', 'christophe.guerin@chauveau.fr', 'Iusto et voluptatem est quis enim.', 1);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name_category` varchar(255) NOT NULL,
  `active_category` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `category_product`
--

CREATE TABLE `category_product` (
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `orders_details`
--

CREATE TABLE `orders_details` (
  `id` int(11) NOT NULL,
  `orders_id` int(11) DEFAULT NULL,
  `products_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` double NOT NULL,
  `product_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `stock_id` int(11) DEFAULT NULL,
  `name_product` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `price` double NOT NULL,
  `active_product` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reset_password_request`
--

CREATE TABLE `reset_password_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `selector` varchar(20) NOT NULL,
  `hashed_token` varchar(100) NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `quantity_sold` int(11) DEFAULT NULL,
  `quantity_prepared` int(11) DEFAULT NULL,
  `quantity_real` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`roles`)),
  `password` varchar(255) NOT NULL,
  `inscription_date` datetime NOT NULL DEFAULT current_timestamp() COMMENT '(DC2Type:datetime_immutable)',
  `matricule` varchar(10) DEFAULT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `active_user` tinyint(1) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `postal_code` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`category_id`,`product_id`),
  ADD KEY `IDX_149244D312469DE2` (`category_id`),
  ADD KEY `IDX_149244D34584665A` (`product_id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_835379F1CFFE9AD6` (`orders_id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_D34A04ADDCD6110` (`stock_id`);

--
-- Index pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7CE748AA76ED395` (`user_id`);

--
-- Index pour la table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `FK_149244D312469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_149244D34584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `orders_details`
--
ALTER TABLE `orders_details`
  ADD CONSTRAINT `FK_835379F1CFFE9AD6` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`);

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04ADDCD6110` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`id`);

--
-- Contraintes pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
--
-- Base de données : `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Structure de la table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Structure de la table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Structure de la table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Structure de la table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Structure de la table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Structure de la table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Structure de la table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Déchargement des données de la table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"db_cda\",\"table\":\"user\"},{\"db\":\"cda24\",\"table\":\"user\"}]');

-- --------------------------------------------------------

--
-- Structure de la table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Structure de la table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Structure de la table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Déchargement des données de la table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-02-18 13:47:58', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"fr\"}');

-- --------------------------------------------------------

--
-- Structure de la table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Structure de la table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Index pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Index pour la table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Index pour la table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Index pour la table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Index pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Index pour la table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Index pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Index pour la table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Index pour la table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Index pour la table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Index pour la table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Index pour la table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Index pour la table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de données : `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
