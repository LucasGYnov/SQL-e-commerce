-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 22 nov. 2024 à 12:27
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `e_commerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `card_payment`
--

CREATE TABLE `card_payment` (
  `id` int(11) NOT NULL,
  `card_number` varchar(16) NOT NULL,
  `expiration_date` date NOT NULL,
  `card_holder` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `card_payment`
--

INSERT INTO `card_payment` (`id`, `card_number`, `expiration_date`, `card_holder`) VALUES
(1, '4485004701108662', '2025-11-05', 'Talia Blick'),
(2, '2720723798212124', '2025-11-05', 'Heath Lynch'),
(3, '372472309133560', '2025-11-05', 'Lonie Blanda'),
(4, '4716873530480992', '2025-11-05', 'Justen Labadie'),
(5, '4539466658195', '2025-11-05', 'Raheem Langworth'),
(6, '2623039138337796', '2025-11-05', 'Mrs. Christiana Koelpin PhD'),
(7, '377878024092441', '2025-11-05', 'Marguerite Batz'),
(8, '2528146347525941', '2025-11-05', 'Manuel Mosciski'),
(9, '4916177201623007', '2025-11-05', 'Dr. Jan Pacocha I'),
(10, '5256843664469775', '2025-11-05', 'Vicenta Kulas'),
(11, '6011204331017097', '2025-11-05', 'Wayne Ebert'),
(12, '2720993822945573', '2025-11-05', 'Maribel Abernathy'),
(13, '4916350733114031', '2025-11-05', 'Mrs. Samantha Jenkins'),
(14, '2720363265093366', '2025-11-05', 'Elmira Ankunding'),
(15, '4485505770927238', '2025-11-05', 'Eldon Crist'),
(16, '349405506725689', '2025-11-05', 'Geoffrey Heaney'),
(17, '5442059507856434', '2025-11-05', 'Nash Parker II'),
(18, '5326559934805350', '2025-11-05', 'Lily Mitchell'),
(19, '2550857765691244', '2025-11-05', 'Nels Waters'),
(20, '6011891610099539', '2025-11-05', 'Mr. Trevion Jenkins'),
(21, '370517894287395', '2025-11-05', 'Dewayne Tillman'),
(22, '4024007142181', '2025-11-05', 'Eduardo Wolff'),
(23, '4485522956395981', '2025-11-05', 'Mr. Regan Macejkovic'),
(24, '5381700452476396', '2025-11-05', 'Prof. Winifred Eichmann'),
(25, '5480806153263007', '2025-11-05', 'Carolyne Ernser'),
(26, '2385859151581709', '2025-11-05', 'Ms. Brenna Torphy II'),
(27, '6011785883522369', '2025-11-05', 'Prof. Walter White V'),
(28, '3528675047014002', '2025-11-05', 'Johathan McClure DDS'),
(29, '6011011508102408', '2025-11-05', 'Vernie Swaniawski'),
(30, '374905637421064', '2025-11-05', 'Katharina Feil');

-- --------------------------------------------------------

--
-- Structure de la table `iban_payment`
--

CREATE TABLE `iban_payment` (
  `id` int(11) NOT NULL,
  `iban` varchar(34) NOT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `account_holder` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `iban_payment`
--

INSERT INTO `iban_payment` (`id`, `iban`, `bank_name`, `account_holder`) VALUES
(1, 'KW25LQSB2084597804873107150166', 'Breitenberg, Eichmann and Aufderhar', 'Gina Parisian V'),
(2, 'MU49NMEQ0868822790247309226TOZ', 'Pouros-Schmidt', 'Prof. Adrian Schaden III'),
(3, 'IS356142063412723968282283', 'Quitzon Group', 'Jamir Fisher'),
(4, 'CZ5011318084597051358901', 'Orn, Rosenbaum and Gerlach', 'Dr. Geo Weber'),
(5, 'PS27BWQKOGML4385V8DW74A1A1M2X', 'Zboncak, O\'Keefe and Mayert', 'Mae Bailey'),
(6, 'AD898675497971P92R589KWU', 'Schowalter and Sons', 'Emmanuel Hills'),
(7, 'SE1327809452677098816504', 'Maggio-Glover', 'Prof. Mallory Ziemann I'),
(8, 'KW45LIVY9904501982984204145648', 'Boyle Group', 'Prof. Delmer Hessel'),
(9, 'PL06632426809387766357252570', 'Cummerata and Sons', 'Dr. Meaghan Lowe Jr.'),
(10, 'SI58990388223876129', 'Casper Group', 'Grover Stroman'),
(11, 'AD4249954924SC65S5CW1G6M', 'Kassulke Inc', 'Mr. Brando Rice Sr.'),
(12, 'GE45EU8466969304105935', 'Bechtelar PLC', 'Cordia Green II'),
(13, 'MR1498393804572713238816711', 'Schmitt, Haley and Cole', 'Sister Sipes'),
(14, 'ES3268275022924027711745', 'Gerhold, Steuber and Olson', 'Prof. Marshall McKenzie IV'),
(15, 'VG22SVKH1890396951029674', 'Kautzer Ltd', 'Baby Homenick'),
(16, 'EG772119030336405228963736362', 'Beahan-Corkery', 'Sylvia Schmidt Sr.'),
(17, 'TR78861398WMXMP16MZJC0MC6Z', 'Nader, Upton and Nienow', 'Kendra Jacobs'),
(18, 'AT657655568066770562', 'Borer Group', 'Jesse Nolan'),
(19, 'RS61125458209240308077', 'Carter Inc', 'Trevion Ratke'),
(20, 'GT77REAF0B8N151RP79ZFIN8Y10A', 'Berge-Gusikowski', 'Chelsea Schiller'),
(21, 'GT16EH29917M6I73T9H87RK41V5C', 'Upton PLC', 'Damian Vandervort'),
(22, 'SM96K00884194775I8630Z838GO', 'O\'Kon-Balistreri', 'Prof. Lera Kozey'),
(23, 'PS86ZDPW9L96RL1BG0O491LJLVFN7', 'Greenholt Ltd', 'Shaylee Kessler'),
(24, 'MT38GUKU73588RNGD630K9NL2516X81', 'Bradtke, Rolfson and Crist', 'Miss Letitia Schmeler'),
(25, 'SK8252471711092680877446', 'Will, Ritchie and Luettgen', 'Claudine Cronin'),
(26, 'TN5629164493099153269025', 'Tillman Group', 'Carol Medhurst'),
(27, 'BR5689602559179950915489243KS', 'Littel, Cremin and Hills', 'Winona Marquardt'),
(28, 'CH507404787KIP939AZK5', 'Fay-Kovacek', 'Lynn Littel DVM'),
(29, 'SI22258693237086956', 'Wintheiser-Haag', 'Austin Douglas'),
(30, 'FR068763838024C57TQNB22ZH19', 'Conn, Gerlach and Padberg', 'Dr. Joesph Lockman');

-- --------------------------------------------------------

--
-- Structure de la table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `invoice`
--

INSERT INTO `invoice` (`id`, `order_id`, `total`, `invoice_date`, `created_at`) VALUES
(1, 1, 117.00, '2024-11-03', '2024-11-05 11:35:11'),
(2, 2, 33.00, '2024-10-10', '2024-11-05 11:35:11'),
(3, 3, 142.00, '2024-10-12', '2024-11-05 11:35:11'),
(4, 4, 115.00, '2024-10-15', '2024-11-05 11:35:11'),
(5, 5, 104.00, '2024-11-01', '2024-11-05 11:35:11'),
(6, 6, 43.00, '2024-10-29', '2024-11-05 11:35:11'),
(7, 7, 192.00, '2024-10-18', '2024-11-05 11:35:11'),
(8, 8, 141.00, '2024-10-31', '2024-11-05 11:35:11'),
(9, 9, 194.00, '2024-10-14', '2024-11-05 11:35:11'),
(10, 10, 122.00, '2024-11-03', '2024-11-05 11:35:11'),
(11, 1, 165.00, '2024-10-10', '2024-11-05 11:35:12'),
(12, 2, 116.00, '2024-10-15', '2024-11-05 11:35:12'),
(13, 3, 195.00, '2024-10-22', '2024-11-05 11:35:12'),
(14, 4, 97.00, '2024-10-30', '2024-11-05 11:35:12'),
(15, 5, 198.00, '2024-10-09', '2024-11-05 11:35:12'),
(16, 6, 120.00, '2024-10-31', '2024-11-05 11:35:12'),
(17, 7, 185.00, '2024-10-10', '2024-11-05 11:35:12'),
(18, 8, 136.00, '2024-10-14', '2024-11-05 11:35:12'),
(19, 9, 60.00, '2024-10-18', '2024-11-05 11:35:12'),
(20, 10, 92.00, '2024-10-13', '2024-11-05 11:35:12'),
(21, 1, 197.00, '2024-11-04', '2024-11-05 11:35:51'),
(22, 2, 53.00, '2024-11-02', '2024-11-05 11:35:51'),
(23, 3, 59.00, '2024-10-17', '2024-11-05 11:35:51'),
(24, 4, 161.00, '2024-10-27', '2024-11-05 11:35:51'),
(25, 5, 70.00, '2024-11-05', '2024-11-05 11:35:51'),
(26, 6, 87.00, '2024-11-03', '2024-11-05 11:35:51'),
(27, 7, 72.00, '2024-10-15', '2024-11-05 11:35:51'),
(28, 8, 157.00, '2024-10-15', '2024-11-05 11:35:51'),
(29, 9, 99.00, '2024-10-30', '2024-11-05 11:35:51'),
(30, 10, 99.00, '2024-10-22', '2024-11-05 11:35:51'),
(31, 1, 37.00, '2024-10-15', '2024-11-05 11:35:54'),
(32, 2, 26.00, '2024-10-08', '2024-11-05 11:35:54'),
(33, 3, 173.00, '2024-10-09', '2024-11-05 11:35:54'),
(34, 4, 169.00, '2024-10-07', '2024-11-05 11:35:54'),
(35, 5, 147.00, '2024-10-07', '2024-11-05 11:35:54'),
(36, 6, 23.00, '2024-11-02', '2024-11-05 11:35:54'),
(37, 7, 156.00, '2024-10-19', '2024-11-05 11:35:54'),
(38, 8, 125.00, '2024-10-19', '2024-11-05 11:35:54'),
(39, 9, 105.00, '2024-11-02', '2024-11-05 11:35:54'),
(40, 10, 118.00, '2024-10-31', '2024-11-05 11:35:54');

-- --------------------------------------------------------

--
-- Structure de la table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `order`
--

INSERT INTO `order` (`id`, `user_id`, `cart_id`, `created_at`) VALUES
(1, 1, 1, '2024-11-05 11:35:11'),
(2, 2, 2, '2024-11-05 11:35:11'),
(3, 3, 3, '2024-11-05 11:35:11'),
(4, 4, 4, '2024-11-05 11:35:11'),
(5, 5, 5, '2024-11-05 11:35:11'),
(6, 6, 6, '2024-11-05 11:35:11'),
(7, 7, 7, '2024-11-05 11:35:11'),
(8, 8, 8, '2024-11-05 11:35:11'),
(9, 9, 9, '2024-11-05 11:35:11'),
(10, 10, 10, '2024-11-05 11:35:11'),
(11, 1, 1, '2024-11-05 11:35:12'),
(12, 2, 2, '2024-11-05 11:35:12'),
(13, 3, 3, '2024-11-05 11:35:12'),
(14, 4, 4, '2024-11-05 11:35:12'),
(15, 5, 5, '2024-11-05 11:35:12'),
(16, 6, 6, '2024-11-05 11:35:12'),
(17, 7, 7, '2024-11-05 11:35:12'),
(18, 8, 8, '2024-11-05 11:35:12'),
(19, 9, 9, '2024-11-05 11:35:12'),
(20, 10, 10, '2024-11-05 11:35:12'),
(21, 1, 1, '2024-11-05 11:35:51'),
(22, 2, 2, '2024-11-05 11:35:51'),
(23, 3, 3, '2024-11-05 11:35:51'),
(24, 4, 4, '2024-11-05 11:35:51'),
(25, 5, 5, '2024-11-05 11:35:51'),
(26, 6, 6, '2024-11-05 11:35:51'),
(27, 7, 7, '2024-11-05 11:35:51'),
(28, 8, 8, '2024-11-05 11:35:51'),
(29, 9, 9, '2024-11-05 11:35:51'),
(30, 10, 10, '2024-11-05 11:35:51'),
(31, 1, 1, '2024-11-05 11:35:54'),
(32, 2, 2, '2024-11-05 11:35:54'),
(33, 3, 3, '2024-11-05 11:35:54'),
(34, 4, 4, '2024-11-05 11:35:54'),
(35, 5, 5, '2024-11-05 11:35:54'),
(36, 6, 6, '2024-11-05 11:35:54'),
(37, 7, 7, '2024-11-05 11:35:54'),
(38, 8, 8, '2024-11-05 11:35:54'),
(39, 9, 9, '2024-11-05 11:35:54'),
(40, 10, 10, '2024-11-05 11:35:54');

-- --------------------------------------------------------

--
-- Structure de la table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` enum('card','iban') NOT NULL,
  `card_payment_id` int(11) DEFAULT NULL,
  `iban_payment_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `payment`
--

INSERT INTO `payment` (`id`, `user_id`, `payment_type`, `card_payment_id`, `iban_payment_id`, `created_at`) VALUES
(1, 2, 'iban', NULL, 3, '2024-11-05 11:35:51'),
(2, 1, 'card', 2, NULL, '2024-11-05 11:35:51'),
(3, 4, 'iban', NULL, 1, '2024-11-05 11:35:51'),
(4, 10, 'iban', NULL, 4, '2024-11-05 11:35:51'),
(5, 7, 'card', 3, NULL, '2024-11-05 11:35:51'),
(6, 2, 'iban', NULL, 2, '2024-11-05 11:35:51'),
(7, 1, 'card', 8, NULL, '2024-11-05 11:35:51'),
(8, 5, 'card', 6, NULL, '2024-11-05 11:35:51'),
(9, 5, 'card', 8, NULL, '2024-11-05 11:35:51'),
(10, 4, 'iban', NULL, 8, '2024-11-05 11:35:51'),
(11, 4, 'iban', NULL, 3, '2024-11-05 11:35:54'),
(12, 9, 'card', 7, NULL, '2024-11-05 11:35:54'),
(13, 3, 'iban', NULL, 9, '2024-11-05 11:35:54'),
(14, 1, 'iban', NULL, 10, '2024-11-05 11:35:54'),
(15, 4, 'iban', NULL, 6, '2024-11-05 11:35:54'),
(16, 1, 'iban', NULL, 10, '2024-11-05 11:35:54'),
(17, 1, 'iban', NULL, 3, '2024-11-05 11:35:54'),
(18, 9, 'card', 10, NULL, '2024-11-05 11:35:54'),
(19, 7, 'iban', NULL, 3, '2024-11-05 11:35:54'),
(20, 2, 'iban', NULL, 10, '2024-11-05 11:35:54');

-- --------------------------------------------------------

--
-- Structure de la table `photo`
--

CREATE TABLE `photo` (
  `id` int(11) NOT NULL,
  `entity_type` enum('user','product') NOT NULL,
  `entity_id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `photo`
--

INSERT INTO `photo` (`id`, `entity_type`, `entity_id`, `url`) VALUES
(2, 'user', 8, 'https://via.placeholder.com/640x480.png/00ddaa?text=veritatis'),
(3, 'product', 19, 'https://via.placeholder.com/640x480.png/0000cc?text=nisi'),
(4, 'user', 8, 'https://via.placeholder.com/640x480.png/002266?text=sapiente'),
(5, 'user', 3, 'https://via.placeholder.com/640x480.png/009944?text=eum'),
(6, 'user', 3, 'https://via.placeholder.com/640x480.png/00eeaa?text=maiores'),
(7, 'user', 10, 'https://via.placeholder.com/640x480.png/0000bb?text=qui'),
(8, 'user', 5, 'https://via.placeholder.com/640x480.png/00ddee?text=et'),
(9, 'product', 18, 'https://via.placeholder.com/640x480.png/005599?text=sapiente'),
(10, 'user', 8, 'https://via.placeholder.com/640x480.png/0033aa?text=suscipit'),
(11, 'product', 11, 'https://via.placeholder.com/640x480.png/006644?text=recusandae'),
(12, 'user', 5, 'https://via.placeholder.com/640x480.png/0044cc?text=dolores'),
(13, 'user', 2, 'https://via.placeholder.com/640x480.png/007711?text=sit'),
(14, 'user', 2, 'https://via.placeholder.com/640x480.png/00ddcc?text=molestias'),
(15, 'user', 2, 'https://via.placeholder.com/640x480.png/000033?text=veritatis'),
(16, 'user', 10, 'https://via.placeholder.com/640x480.png/00eeaa?text=aperiam'),
(17, 'product', 4, 'https://via.placeholder.com/640x480.png/0033ff?text=voluptas'),
(18, 'product', 8, 'https://via.placeholder.com/640x480.png/009977?text=explicabo'),
(19, 'user', 8, 'https://via.placeholder.com/640x480.png/007711?text=itaque'),
(20, 'product', 10, 'https://via.placeholder.com/640x480.png/008833?text=ducimus'),
(21, 'product', 17, 'https://via.placeholder.com/640x480.png/007733?text=labore'),
(22, 'user', 5, 'https://via.placeholder.com/640x480.png/0044dd?text=mollitia'),
(23, 'user', 6, 'https://via.placeholder.com/640x480.png/007777?text=quia'),
(24, 'product', 5, 'https://via.placeholder.com/640x480.png/00bb77?text=dolor'),
(25, 'user', 5, 'https://via.placeholder.com/640x480.png/001100?text=praesentium'),
(26, 'product', 15, 'https://via.placeholder.com/640x480.png/00ff22?text=aut'),
(27, 'user', 5, 'https://via.placeholder.com/640x480.png/0022dd?text=vero'),
(28, 'user', 2, 'https://via.placeholder.com/640x480.png/0088ee?text=placeat'),
(29, 'user', 8, 'https://via.placeholder.com/640x480.png/00ddaa?text=molestias'),
(30, 'user', 2, 'https://via.placeholder.com/640x480.png/002299?text=ratione'),
(31, 'product', 17, 'https://via.placeholder.com/640x480.png/00ff33?text=modi'),
(32, 'product', 9, 'https://via.placeholder.com/640x480.png/00ddcc?text=eaque'),
(33, 'user', 4, 'https://via.placeholder.com/640x480.png/0077cc?text=minima'),
(34, 'product', 5, 'https://via.placeholder.com/640x480.png/005500?text=quod'),
(35, 'user', 2, 'https://via.placeholder.com/640x480.png/00eeff?text=veniam'),
(36, 'product', 2, 'https://via.placeholder.com/640x480.png/00ccbb?text=numquam'),
(37, 'user', 3, 'https://via.placeholder.com/640x480.png/009944?text=id'),
(38, 'product', 14, 'https://via.placeholder.com/640x480.png/0000bb?text=nobis'),
(39, 'product', 3, 'https://via.placeholder.com/640x480.png/002222?text=id'),
(40, 'user', 10, 'https://via.placeholder.com/640x480.png/005533?text=recusandae'),
(41, 'user', 2, 'https://via.placeholder.com/640x480.png/001166?text=possimus'),
(42, 'product', 11, 'https://via.placeholder.com/640x480.png/00dd55?text=ut'),
(43, 'product', 8, 'https://via.placeholder.com/640x480.png/0055cc?text=excepturi'),
(44, 'user', 4, 'https://via.placeholder.com/640x480.png/006600?text=quibusdam'),
(45, 'product', 19, 'https://via.placeholder.com/640x480.png/007744?text=perspiciatis'),
(46, 'product', 19, 'https://via.placeholder.com/640x480.png/008800?text=molestiae');

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `stock`, `created_at`) VALUES
(1, 'et', 'Quia laboriosam earum aut. Repellat sit qui consectetur. Nobis reiciendis quia error sunt commodi. Perspiciatis eius omnis numquam aperiam assumenda doloremque quaerat.', 25.68, 47, '2024-11-05 11:35:10'),
(2, 'asperiores', 'Est odio dignissimos autem officia fugit accusantium. Neque nihil sit ad aliquid id aliquid blanditiis ut. Laboriosam odio nobis modi at.', 20.69, 95, '2024-11-05 11:35:10'),
(3, 'quibusdam', 'Aperiam ullam sint quibusdam assumenda. Est ut ea pariatur reiciendis sed exercitationem incidunt odio. Facilis perferendis consequatur molestias cum pariatur et et. Maiores et sunt id vel.', 49.15, 9, '2024-11-05 11:35:10'),
(4, 'neque', 'Vel iste et eum repudiandae. Impedit atque perferendis aut vel doloremque. Enim perspiciatis accusantium aperiam quos illo ut.', 56.92, 98, '2024-11-05 11:35:10'),
(5, 'consequatur', 'Soluta cumque quam quaerat voluptatum. Ipsa autem eum maxime ut est. Sit et eum earum voluptates. Debitis eaque esse voluptatibus rerum expedita.', 84.47, 4, '2024-11-05 11:35:10'),
(6, 'voluptatem', 'Voluptatum et at est voluptatem voluptatum ducimus et. Voluptatibus quia aut quis tempore aspernatur et. Quisquam aliquam voluptate excepturi sit non natus nihil. Ut ea ut ut quasi rerum.', 43.53, 16, '2024-11-05 11:35:10'),
(7, 'asperiores', 'Nam similique qui sit. Illum velit voluptatem eligendi enim in et fugit. Expedita labore est placeat numquam natus blanditiis.', 20.57, 11, '2024-11-05 11:35:10'),
(8, 'harum', 'Aut qui reprehenderit placeat voluptas esse libero incidunt. Debitis quos dolor sit sed placeat atque. Totam laborum quisquam quibusdam. Deserunt est ut dolore. Quod facilis consequuntur qui.', 13.17, 71, '2024-11-05 11:35:10'),
(9, 'molestiae', 'Esse incidunt qui ullam fugiat eum magni. Qui omnis sit non incidunt debitis rerum. Sit molestiae libero ut at reprehenderit quo corrupti.', 57.57, 66, '2024-11-05 11:35:10'),
(10, 'voluptas', 'Nisi iste iusto neque voluptates cum omnis ea. Assumenda qui provident iste vitae. Porro non cum aut odit. Rerum atque facilis expedita dicta.', 61.89, 58, '2024-11-05 11:35:10'),
(11, 'in', 'Voluptates assumenda libero illum voluptas est. Nulla totam omnis dicta. Rerum assumenda praesentium qui perspiciatis. Eos est sequi voluptas placeat corrupti dolor consequuntur.', 29.95, 50, '2024-11-05 11:35:10'),
(12, 'ab', 'Consequatur voluptate porro in earum ex sequi. Nihil libero ut molestiae vero mollitia rem. Accusantium qui delectus autem pariatur impedit qui.', 89.23, 67, '2024-11-05 11:35:10'),
(13, 'rerum', 'Nostrum aut sequi maiores. Reiciendis nam ut commodi qui. Asperiores omnis iure ea repellendus quod labore distinctio. A repellat at sint blanditiis vero et atque.', 1.92, 3, '2024-11-05 11:35:11'),
(14, 'eaque', 'Dolorum repellendus delectus voluptate. Ut adipisci voluptas incidunt a provident. Eius perspiciatis ratione debitis quibusdam est. Harum sint velit laborum.', 98.12, 66, '2024-11-05 11:35:11'),
(15, 'voluptas', 'Ut quod et molestiae totam deserunt. Nulla natus qui earum officia sequi. Eaque repellat quibusdam optio vel.', 96.82, 96, '2024-11-05 11:35:11'),
(16, 'excepturi', 'Necessitatibus nobis enim earum ea odio. Dolorem et a enim et temporibus enim perferendis. Amet ullam soluta neque ratione aperiam sint. Impedit numquam aut explicabo.', 85.64, 23, '2024-11-05 11:35:11'),
(17, 'et', 'Voluptas ipsa et facere debitis. Autem eligendi atque et quia qui dolorem at. Aut aperiam et officia id. Aspernatur modi soluta sint magni.', 69.00, 44, '2024-11-05 11:35:11'),
(18, 'enim', 'Corrupti fuga laborum omnis amet praesentium. Nobis molestiae et quam odit commodi dignissimos.', 9.09, 32, '2024-11-05 11:35:11'),
(19, 'assumenda', 'Aut architecto dolore et. Deserunt necessitatibus eum ipsa repudiandae. Mollitia est dolores pariatur doloribus. Ut quidem magni neque cumque sed voluptatem.', 70.70, 67, '2024-11-05 11:35:11'),
(20, 'voluptatem', 'Libero ea voluptatem optio quia. Blanditiis distinctio nihil dolorem ut totam voluptas aliquam. Consequuntur architecto aut sint labore. Voluptate est rerum consequuntur ea dolores ut et et.', 7.22, 14, '2024-11-05 11:35:11'),
(21, 'qui', 'Ea quod deleniti minus voluptas. Eius commodi qui quia. Maxime culpa voluptatem sequi et possimus explicabo.', 58.71, 1, '2024-11-05 11:35:12'),
(22, 'non', 'Voluptatibus aliquam et a. Consectetur et aut quod fugit quod. Ipsam culpa sed eius deserunt et et reiciendis modi.', 34.27, 76, '2024-11-05 11:35:12'),
(23, 'soluta', 'Adipisci sunt ut id ab quis. Ipsum voluptatum labore dignissimos fugiat. Provident doloremque omnis quibusdam eveniet deserunt a. Harum est impedit culpa et vitae.', 53.33, 89, '2024-11-05 11:35:12'),
(24, 'illo', 'At facilis voluptate nobis magni dolore. Et a aut incidunt explicabo. Neque consequatur quae consequatur et excepturi.', 25.59, 86, '2024-11-05 11:35:12'),
(25, 'qui', 'A nulla doloribus voluptatem facere ipsa dolorem dicta. Officiis hic minima sequi quos dicta. Autem voluptas suscipit possimus qui. Animi ipsa nisi nobis labore.', 35.53, 42, '2024-11-05 11:35:12'),
(26, 'ducimus', 'Optio aut numquam vero error. Minus quia reprehenderit aliquam ea. Et unde eos voluptate sint.', 35.62, 72, '2024-11-05 11:35:12'),
(27, 'ut', 'Quod omnis doloribus nostrum magni exercitationem delectus dolore. Nesciunt saepe quos rerum sit dignissimos sint. Ea cum eligendi est velit quia qui consequatur.', 91.51, 58, '2024-11-05 11:35:12'),
(28, 'quidem', 'Omnis ut nam et facilis quia totam. Minima atque facere cupiditate autem ipsam occaecati magni. Ut necessitatibus voluptatum autem. Et iure quas qui in harum fugiat doloremque.', 27.84, 50, '2024-11-05 11:35:12'),
(29, 'commodi', 'Velit qui amet autem repudiandae quis recusandae. Atque temporibus sint cum voluptate et suscipit. Sed delectus suscipit hic quaerat voluptatibus.', 61.85, 46, '2024-11-05 11:35:12'),
(30, 'quisquam', 'Et consequatur impedit corrupti sapiente modi quia pariatur. Dicta ipsum veniam explicabo expedita. Autem similique excepturi tenetur et fuga.', 44.89, 17, '2024-11-05 11:35:12'),
(31, 'id', 'Aspernatur nihil eaque sit doloremque quod. Consequuntur eum aut et et in est sunt. Nemo nihil sunt aliquam enim est magni.', 64.00, 71, '2024-11-05 11:35:12'),
(32, 'quia', 'Laborum magnam voluptatum recusandae ratione. Omnis aut id a esse harum tempore ut. Porro ratione exercitationem quos et ab blanditiis laboriosam. Natus adipisci excepturi fugit rem.', 2.79, 68, '2024-11-05 11:35:12'),
(33, 'qui', 'Illum eos ea sequi eum est et magnam deleniti. Repudiandae eveniet mollitia itaque. Labore numquam ducimus et quas perspiciatis quam. Ipsa magni dolorum velit est ut est. Qui unde doloribus aut quis.', 63.48, 88, '2024-11-05 11:35:12'),
(34, 'dolores', 'Sunt corporis ut officiis nihil a et voluptates. Quis culpa tenetur optio laborum impedit qui natus. Non atque atque voluptatem totam tenetur. Voluptatem voluptatem nihil ut.', 38.55, 24, '2024-11-05 11:35:12'),
(35, 'eius', 'Eaque laboriosam quis est quam magnam perferendis exercitationem. Voluptas in laboriosam tenetur tempore voluptatibus ut sit. Incidunt ratione velit sit vel quibusdam et modi.', 12.52, 5, '2024-11-05 11:35:12'),
(36, 'quod', 'Veniam quisquam recusandae quos reiciendis error at accusamus quidem. Sint aut et itaque. Inventore id consequatur voluptatem.', 86.22, 8, '2024-11-05 11:35:12'),
(37, 'maiores', 'Asperiores dignissimos maxime et est mollitia eos nesciunt. Odio quia ea inventore eos. Consequuntur consequatur ea quidem facere consequuntur explicabo repellendus.', 8.21, 46, '2024-11-05 11:35:12'),
(38, 'similique', 'Pariatur molestiae blanditiis recusandae et voluptas sequi. Nam id distinctio ut. Quo repellendus quidem omnis doloribus aut quia aliquam id.', 46.22, 30, '2024-11-05 11:35:12'),
(39, 'nemo', 'Ut ea sit neque quo esse mollitia. Architecto nostrum nihil quia quia est ipsum nemo. Consequatur assumenda officia dolorem repellat. Beatae quia magni consequatur deserunt.', 97.92, 32, '2024-11-05 11:35:12'),
(40, 'illo', 'Et impedit aut sit consequatur repellendus est et. Enim aut quia nobis. Fuga aut molestiae debitis laboriosam. Sint quod harum qui necessitatibus autem et laborum.', 7.52, 39, '2024-11-05 11:35:12'),
(41, 'exercitationem', 'Aliquid dolor et quibusdam ad est. Quia veniam mollitia qui qui consequatur sed id. Sit placeat pariatur aperiam corporis veritatis dolor quae dolores. Velit dolorem tenetur ea saepe.', 51.27, 87, '2024-11-05 11:35:51'),
(42, 'quia', 'Expedita totam et itaque animi. Quibusdam esse rem minus et autem. Saepe quis ea sapiente dolores. Sunt nobis voluptatem aspernatur est. Iure voluptatum quia vero.', 72.81, 46, '2024-11-05 11:35:51'),
(43, 'dolorem', 'Consequatur totam iste repellendus voluptatem. Sit consectetur voluptatem dolor nulla. Corporis dolore fugiat accusamus qui adipisci. Recusandae sunt rerum quo qui eum.', 48.63, 16, '2024-11-05 11:35:51'),
(44, 'consequatur', 'Ab voluptates asperiores ratione quidem qui natus earum. Fugiat consequatur et non assumenda minima voluptatem et. Molestiae qui perspiciatis facere autem.', 18.31, 9, '2024-11-05 11:35:51'),
(45, 'dignissimos', 'Est occaecati provident unde quasi quia. Quidem at modi et laboriosam aut. Aut ipsam quaerat aperiam vitae.', 62.43, 99, '2024-11-05 11:35:51'),
(46, 'perferendis', 'Repellat praesentium est laudantium et dolor laboriosam. Et non sit expedita aut at iure veritatis. Autem velit aut voluptas. Sed dolores est voluptates sint corrupti iste delectus debitis.', 45.77, 45, '2024-11-05 11:35:51'),
(47, 'ut', 'Quod sequi perferendis sed voluptas. Ex aliquam autem numquam perferendis. Magni laborum et placeat provident quia aut quis.', 99.71, 49, '2024-11-05 11:35:51'),
(48, 'repudiandae', 'Eos dolore consequatur voluptatibus rerum. Harum voluptates porro ipsam fuga itaque exercitationem laboriosam dolores. Ut excepturi eum a tempore et.', 84.60, 65, '2024-11-05 11:35:51'),
(49, 'dolorem', 'Aliquam consequatur officiis reiciendis nam. Asperiores nihil enim soluta molestiae voluptates consequuntur laboriosam. Aut veritatis molestiae omnis exercitationem odit nesciunt.', 51.23, 61, '2024-11-05 11:35:51'),
(50, 'suscipit', 'Et eos dolorum molestias doloribus dolore unde. Repellendus quis sint eum quia quibusdam. Consequuntur commodi et a maiores.', 26.76, 27, '2024-11-05 11:35:51'),
(51, 'esse', 'Molestiae minus sint et et porro. Est et sed asperiores repellat omnis quas. Sint quo harum ea.', 16.66, 64, '2024-11-05 11:35:51'),
(52, 'quia', 'Ut eos est qui praesentium aperiam eaque enim. Quas rerum corporis illum aperiam in omnis. Soluta ratione sunt eos. Harum autem sed non et sit.', 97.52, 69, '2024-11-05 11:35:51'),
(53, 'ut', 'Qui quia aut inventore laboriosam distinctio. Eveniet nesciunt omnis aspernatur consequatur et sed.', 48.68, 95, '2024-11-05 11:35:51'),
(54, 'recusandae', 'Vel doloremque odit voluptas aperiam dolor rerum. Quam asperiores omnis tempora et quia hic. Deleniti et aut eius occaecati est.', 10.95, 52, '2024-11-05 11:35:51'),
(55, 'odio', 'Sit ut cum soluta perferendis. Beatae tenetur optio praesentium ipsa voluptate. Voluptatem et aspernatur sed qui fuga animi. Quisquam ipsa dolorem omnis quo vel consequatur.', 12.38, 2, '2024-11-05 11:35:51'),
(56, 'repellendus', 'Labore exercitationem cumque tempora earum cumque non. Distinctio debitis ullam dolor culpa dolorem qui.', 87.15, 76, '2024-11-05 11:35:51'),
(57, 'placeat', 'Ab vel repudiandae aliquid veritatis illum. Dignissimos et laborum nemo aspernatur dolore provident. Aut aliquam facere sunt consequuntur.', 87.69, 7, '2024-11-05 11:35:51'),
(58, 'suscipit', 'Voluptatem quas aut quaerat. Ab vero sunt esse consequatur aut. Doloremque in vel aut unde.', 50.21, 82, '2024-11-05 11:35:51'),
(59, 'et', 'Illum sit quae consequatur. Corporis deserunt fugiat ipsum nihil quis suscipit accusantium. Quia aut dolore voluptatem et rem animi.', 19.28, 45, '2024-11-05 11:35:51'),
(60, 'odit', 'Quia qui dolorum vero ut. Aut commodi velit ut in consectetur. Qui exercitationem reprehenderit quisquam ipsam hic ea. Mollitia eos quis autem exercitationem.', 72.38, 67, '2024-11-05 11:35:51'),
(61, 'est', 'Qui numquam illo harum rerum esse praesentium. Sed illo qui dolorem. Praesentium ducimus exercitationem quod praesentium nam animi. Quis perferendis laudantium placeat ut et at veritatis.', 63.86, 88, '2024-11-05 11:35:54'),
(62, 'quis', 'Quo quia sed architecto. Rerum repellendus voluptatibus ipsam vero. Rerum suscipit et distinctio perspiciatis numquam tenetur atque. Dolorem sunt fugit nihil placeat laudantium consequatur dicta.', 29.51, 14, '2024-11-05 11:35:54'),
(63, 'iure', 'Architecto vitae et omnis corporis id. Cum optio minus dolor. Dolores ea aut magni delectus iure nisi corrupti dolor. Modi in reprehenderit aut. Dolorem iste excepturi qui aut in velit.', 71.35, 34, '2024-11-05 11:35:54'),
(64, 'illum', 'Saepe rerum nam eum perspiciatis saepe sequi. Laboriosam enim dolore vitae harum. Qui quisquam non voluptatem veniam deleniti illum. Animi accusamus sit soluta omnis.', 43.40, 36, '2024-11-05 11:35:54'),
(65, 'et', 'Autem quis molestias sed ullam dolores voluptatem. Id voluptatem voluptas corporis et fugit vel sequi. Voluptatem id non eum delectus reiciendis fugit.', 32.47, 11, '2024-11-05 11:35:54'),
(66, 'ullam', 'Esse atque ea suscipit doloremque qui iusto quos sit. Eos necessitatibus atque distinctio voluptatem autem aperiam labore voluptatem. Nihil perferendis ullam non qui minus porro suscipit eum.', 20.41, 91, '2024-11-05 11:35:54'),
(67, 'quia', 'Eum quos et dolorem omnis consectetur fugiat. Totam illo dolorem debitis dignissimos et facilis eius. Rem et consequuntur accusantium debitis quasi est. Quidem ab illum provident non soluta quidem.', 79.79, 29, '2024-11-05 11:35:54'),
(68, 'rem', 'Praesentium laboriosam repellat modi labore odit ut et minima. Ipsum ea nihil quas sunt qui. Aut fuga repellendus odit maiores consectetur.', 76.27, 99, '2024-11-05 11:35:54'),
(69, 'in', 'Voluptas nisi voluptas neque aliquam ad. Dignissimos et sint omnis harum quasi. Et nesciunt consequuntur non ut voluptates optio molestiae tempora.', 24.80, 17, '2024-11-05 11:35:54'),
(70, 'eligendi', 'Est cum et cum omnis ab non ea. Deleniti cumque sed laboriosam ipsa. In ex sunt unde repellat earum qui dolores. Temporibus molestiae maxime placeat aut rerum consequuntur.', 29.29, 85, '2024-11-05 11:35:54'),
(71, 'quidem', 'Consequatur sapiente repellat dignissimos deserunt voluptatum enim. Consequatur omnis omnis quasi aliquam sapiente enim ad qui. Magni officia quia quaerat ut.', 91.17, 63, '2024-11-05 11:35:54'),
(72, 'ut', 'Quas deleniti quis quia placeat. Est vel nostrum sed voluptas. Est et consequuntur veniam est. Qui magni ratione laboriosam cumque exercitationem.', 38.06, 42, '2024-11-05 11:35:54'),
(73, 'consectetur', 'Eum praesentium error quidem magni. Libero sed in eius quam odit autem eos. Voluptatum et et voluptas labore ab. Dolor sint qui consequatur consequatur.', 55.06, 65, '2024-11-05 11:35:54'),
(74, 'consequatur', 'Rerum qui sit expedita molestiae vel. Iste repellat et nisi repellendus consequatur incidunt. Ut dicta nisi amet libero rerum.', 43.62, 59, '2024-11-05 11:35:54'),
(75, 'quis', 'Fugiat expedita nam sed quae at. Non omnis et ut animi voluptas sed. Aperiam fugiat ducimus eius ut recusandae. Occaecati eum architecto at nulla eos.', 4.26, 3, '2024-11-05 11:35:54'),
(76, 'ut', 'Saepe voluptate dolores impedit est voluptatibus dolorum. Reiciendis autem enim quis voluptas autem repudiandae. Quidem aut architecto suscipit nam.', 66.26, 23, '2024-11-05 11:35:54'),
(77, 'quia', 'Omnis quo rem ut non quasi cumque. Nemo tempore velit recusandae ut occaecati earum illo hic.', 19.17, 26, '2024-11-05 11:35:54'),
(78, 'facere', 'Sint earum libero quia. Magnam repellat numquam sint est. Eum quasi saepe excepturi error ipsum. Dolor suscipit sed commodi nihil modi.', 39.17, 51, '2024-11-05 11:35:54'),
(79, 'corrupti', 'Minima ea recusandae est aperiam omnis. Ea aut est delectus beatae quae. Corrupti voluptas omnis fugiat voluptatem.', 78.13, 9, '2024-11-05 11:35:54'),
(80, 'rerum', 'Rerum non dicta inventore autem aliquid unde id. Neque ut voluptas qui et eveniet. In autem placeat aut natus laudantium cum. Tempore est sit omnis quo.', 36.95, 63, '2024-11-05 11:35:54');

-- --------------------------------------------------------

--
-- Structure de la table `product_rating`
--

CREATE TABLE `product_rating` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` >= 1 and `rating` <= 5),
  `comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `product_rating`
--

INSERT INTO `product_rating` (`id`, `user_id`, `product_id`, `rating`, `comment`) VALUES
(1, 7, 15, 5, 'Est quo modi iste nobis. Minus dolores sapiente perspiciatis nihil sint quam autem.'),
(2, 5, 5, 5, 'Ut quisquam est repellendus qui reiciendis quaerat. Animi dolorem fugit nulla dolorem.'),
(3, 7, 4, 1, 'Nisi vel molestias a id. Ut ut voluptas atque a enim. Quis enim corrupti quod ut aut quia officiis.'),
(4, 7, 18, 5, 'Ipsa consequatur voluptas esse ex dignissimos provident. Sed quo maiores quisquam odio.'),
(5, 8, 18, 5, 'Id a ullam id dolor et. Iusto sint alias a. Aliquam quasi non ut enim.'),
(6, 5, 15, 2, 'Sunt maxime nihil sit nisi. Est quia quia molestiae iure vitae.'),
(7, 3, 4, 3, 'Perferendis expedita est culpa rerum. Amet magnam dolor mollitia. Aperiam ut magni provident aut.'),
(8, 8, 6, 3, 'Voluptatibus sunt architecto saepe sit sint. Accusantium voluptatibus molestiae quidem.'),
(9, 10, 18, 1, 'Sit soluta omnis nobis distinctio minima. Ut ut sunt blanditiis sapiente neque ut.'),
(10, 8, 20, 3, 'Quia architecto explicabo quis quasi accusantium dolores quos. Velit voluptas harum est quo.'),
(11, 10, 12, 5, 'Quam omnis quisquam doloremque nulla sed. Dignissimos beatae ut ut id voluptatibus est.'),
(12, 6, 15, 3, 'Neque ad illo nam qui voluptate ab. A occaecati sunt alias et hic. Eaque animi autem modi ab.'),
(13, 4, 4, 2, 'In qui et non reprehenderit neque. Sint qui neque expedita sit consequuntur consequuntur.'),
(14, 10, 10, 5, 'Nam itaque minima officia quasi. Sunt voluptas sit qui sit accusamus qui. Ad sunt aut et.'),
(15, 1, 7, 1, 'Ut in temporibus consequuntur. Alias debitis dolorem voluptatem et.'),
(16, 6, 20, 4, 'Dolor dolores voluptas tempore rerum. A iste fugiat incidunt laboriosam sed possimus recusandae.'),
(17, 5, 10, 4, 'Velit praesentium atque cum cumque aperiam. Qui eos voluptatibus minima eos. Beatae cumque et sunt.'),
(18, 2, 5, 5, 'Tempora dolor soluta in qui officia nobis. Quaerat alias quo earum id corporis id.'),
(19, 10, 18, 5, 'Ratione similique dolorum numquam. Harum qui ut eaque et est. Maiores sed et suscipit molestiae.'),
(20, 7, 1, 5, 'Inventore odio quo aut sunt quisquam optio. Eum tenetur laudantium omnis est quos aut.'),
(21, 3, 3, 3, 'Perspiciatis aut unde molestiae velit quae. Maxime quos unde cum sequi.'),
(22, 9, 11, 4, 'Harum et optio nesciunt doloribus quo molestiae natus aut. Veniam eveniet magnam enim esse aut.'),
(23, 3, 20, 5, 'Culpa molestiae nulla iure provident. Tempore sed eum in optio.'),
(24, 4, 12, 3, 'Nostrum ut quia et rerum. Architecto reiciendis consequatur eum nulla. Vero quod est eum et.'),
(25, 6, 12, 3, 'Possimus sunt at rerum et tenetur eos. Quia quasi fuga quis. Nostrum quo molestiae et ut.'),
(26, 4, 15, 3, 'Officia est nostrum expedita quia. Vel iste eligendi suscipit ut corrupti aspernatur beatae.'),
(27, 7, 18, 5, 'Quidem voluptatibus omnis illo. In fugiat error aut similique. Unde aut illum totam sint ut.'),
(28, 6, 9, 4, 'Incidunt facilis velit incidunt. Nihil placeat sit totam.'),
(29, 10, 2, 2, 'Omnis sit eum mollitia ipsam odio enim hic. Ea molestias facilis quia culpa et labore delectus.'),
(30, 4, 2, 5, 'Porro dicta nulla voluptate incidunt. Temporibus dignissimos et sit.'),
(31, 2, 9, 5, 'Ducimus asperiores soluta omnis. Aut fugit velit quia.'),
(32, 4, 9, 2, 'Voluptas quisquam unde et quasi. Eos aliquam nulla nam aspernatur voluptatibus non sint explicabo.'),
(33, 10, 11, 5, 'Debitis qui a et porro fugiat dolore. Praesentium ea sit aut. Dignissimos nemo voluptate et.'),
(34, 6, 16, 3, 'Qui voluptas quia sint officia dolores aut ex. Sed eveniet aut minus ut.'),
(35, 8, 10, 1, 'Earum itaque error dignissimos labore. Ratione quos voluptatem eos modi ratione illum.'),
(36, 6, 3, 5, 'Enim mollitia voluptates qui. Similique qui reiciendis quis aut assumenda distinctio id.'),
(37, 5, 6, 5, 'Sint sed nesciunt accusamus dolor soluta voluptatem voluptate. Cum enim aut voluptatem qui soluta.'),
(38, 10, 7, 3, 'Quaerat omnis sed repellendus minus dolores qui. Dignissimos praesentium in qui ea eos doloremque.'),
(39, 4, 18, 5, 'Molestias aliquam ut consequatur molestiae cupiditate. Ea quidem id atque.'),
(40, 3, 7, 3, 'Non enim voluptatem accusamus excepturi architecto. Qui et voluptatem quis.'),
(41, 7, 5, 1, 'Atque quae corrupti exercitationem accusamus qui esse cupiditate. Harum maiores omnis qui et.'),
(42, 1, 5, 1, 'Asperiores non deleniti veniam rerum. Placeat deleniti quasi ratione ut dicta mollitia ut.'),
(43, 3, 8, 4, 'Natus qui ipsum enim fugiat ad voluptatibus temporibus sit. Enim quia magni est.'),
(44, 9, 15, 2, 'Nisi voluptates aut hic voluptatem id. Mollitia cumque explicabo inventore sit.'),
(45, 2, 5, 3, 'Non ex ut cum aut. Atque debitis ea ut et fugiat.'),
(46, 9, 19, 3, 'Autem sed in officia ex numquam. Dolor pariatur illo quo illo nostrum vel voluptatum.'),
(47, 7, 6, 5, 'Voluptatem magnam dolore ea assumenda ab omnis. Debitis impedit facilis porro.'),
(48, 3, 2, 4, 'Similique earum neque cum. Nihil non eaque placeat pariatur unde repellat.'),
(49, 2, 7, 4, 'In dolores eveniet et est. Quam voluptatum iure quod aut perspiciatis et.'),
(50, 10, 13, 5, 'Beatae aut voluptatibus aliquid quam quaerat magnam voluptatibus. Dolorem omnis id qui veritatis.'),
(51, 4, 3, 2, 'Aut aliquam sapiente natus nihil et modi necessitatibus. Ullam debitis iure quia dolore facilis.'),
(52, 1, 15, 5, 'Eos quia natus exercitationem magni. Cum quis quod rerum. Quod ratione neque voluptatem harum.'),
(53, 6, 8, 3, 'Officiis nostrum explicabo neque ea rerum. Nam alias rerum sed quis. Quae vel quo labore.'),
(54, 10, 1, 4, 'Quaerat quidem sapiente explicabo qui laboriosam qui perspiciatis. Sit accusantium et omnis quis.'),
(55, 9, 11, 2, 'Ratione qui quia totam accusamus molestias eum odio. Qui est doloremque sint veritatis dolores.'),
(56, 6, 20, 5, 'Quisquam voluptatem a doloremque corporis et. Esse qui qui suscipit consectetur facilis.'),
(57, 2, 10, 3, 'Nihil delectus ipsam doloribus asperiores. Quia sed praesentium est quibusdam odio ut.'),
(58, 6, 4, 1, 'Beatae quia laudantium quos eos. Esse sed eveniet repellendus a. Ut enim beatae illum.'),
(59, 10, 17, 2, 'Autem aperiam quo neque. Eum harum beatae eum alias.'),
(60, 4, 1, 1, 'Atque ex non nemo nobis. Nihil ipsam voluptas repellendus omnis sit voluptates.'),
(61, 1, 5, 4, 'Maiores nihil et et consequatur eos temporibus velit. Est voluptas ut eos eos minus tempora.'),
(62, 4, 16, 1, 'In temporibus inventore cumque quis voluptatibus. Deserunt aut aliquam repellat rerum rerum.'),
(63, 6, 5, 2, 'Cum ut voluptates maxime omnis. Qui autem ea error ea autem molestiae non.'),
(64, 9, 12, 1, 'Dolorem soluta incidunt magnam tenetur dolores. Iure libero et molestiae sint.'),
(65, 8, 1, 5, 'Tempore quo cumque vero natus. Qui commodi modi quos culpa consequatur ea. Atque quia numquam non.'),
(66, 5, 13, 5, 'Porro beatae ut quod. Assumenda amet magnam suscipit ut id enim ea alias. Qui sint est aspernatur.'),
(67, 10, 4, 4, 'Laudantium fuga architecto quia excepturi. Dolorem eum ullam corporis quam.'),
(68, 4, 1, 4, 'Nihil velit quia laudantium enim debitis hic. Laudantium optio cumque et aut perferendis.'),
(69, 8, 2, 2, 'Voluptas molestiae dolorum est dicta aut sint deleniti. Error incidunt explicabo dolores sint in.'),
(70, 10, 7, 4, 'Sed quasi dolorem dignissimos aut et quo. Aliquam nisi aspernatur aperiam rerum.'),
(71, 5, 13, 4, 'Quis sunt officiis odit eum officia saepe. Cum dolore adipisci culpa vero. Et et eum et ratione.'),
(72, 1, 12, 1, 'Odio asperiores totam nihil itaque vero quae. Iure velit sed animi. Ipsum ullam non est rerum.'),
(73, 9, 19, 5, 'Animi exercitationem aut et iste iusto. Illum vel unde dolores sed nisi.'),
(74, 1, 7, 2, 'Quisquam quaerat magnam rem et qui officia iste. Quidem voluptas saepe sed dolores veritatis.'),
(75, 7, 17, 1, 'Sint explicabo vitae ipsam quis. Ratione voluptates laborum non amet architecto. Ullam hic vero et.'),
(76, 10, 13, 5, 'Blanditiis dolores tempore quos inventore incidunt. Qui id reiciendis sit itaque est assumenda est.'),
(77, 2, 10, 2, 'Corrupti velit aliquam non optio. Expedita est molestias ab corrupti similique.'),
(78, 4, 5, 5, 'Cum molestiae enim nulla magnam. Porro quasi quod suscipit esse voluptatem iste.'),
(79, 8, 17, 5, 'Eos corrupti non et. Tenetur id sit occaecati tempore culpa beatae.'),
(80, 4, 10, 3, 'Esse ut magni quia. Ea aut in cumque temporibus ea commodi voluptate distinctio.');

-- --------------------------------------------------------

--
-- Structure de la table `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `shopping_cart`
--

INSERT INTO `shopping_cart` (`id`, `user_id`, `created_at`) VALUES
(1, 1, '2024-11-05 11:35:11'),
(2, 2, '2024-11-05 11:35:11'),
(3, 3, '2024-11-05 11:35:11'),
(4, 4, '2024-11-05 11:35:11'),
(5, 5, '2024-11-05 11:35:11'),
(6, 6, '2024-11-05 11:35:11'),
(7, 7, '2024-11-05 11:35:11'),
(8, 8, '2024-11-05 11:35:11'),
(9, 9, '2024-11-05 11:35:11'),
(10, 10, '2024-11-05 11:35:11'),
(11, 1, '2024-11-05 11:35:12'),
(12, 2, '2024-11-05 11:35:12'),
(13, 3, '2024-11-05 11:35:12'),
(14, 4, '2024-11-05 11:35:12'),
(15, 5, '2024-11-05 11:35:12'),
(16, 6, '2024-11-05 11:35:12'),
(17, 7, '2024-11-05 11:35:12'),
(18, 8, '2024-11-05 11:35:12'),
(19, 9, '2024-11-05 11:35:12'),
(20, 10, '2024-11-05 11:35:12'),
(21, 1, '2024-11-05 11:35:51'),
(22, 2, '2024-11-05 11:35:51'),
(23, 3, '2024-11-05 11:35:51'),
(24, 4, '2024-11-05 11:35:51'),
(25, 5, '2024-11-05 11:35:51'),
(26, 6, '2024-11-05 11:35:51'),
(27, 7, '2024-11-05 11:35:51'),
(28, 8, '2024-11-05 11:35:51'),
(29, 9, '2024-11-05 11:35:51'),
(30, 10, '2024-11-05 11:35:51'),
(31, 1, '2024-11-05 11:35:54'),
(32, 2, '2024-11-05 11:35:54'),
(33, 3, '2024-11-05 11:35:54'),
(34, 4, '2024-11-05 11:35:54'),
(35, 5, '2024-11-05 11:35:54'),
(36, 6, '2024-11-05 11:35:54'),
(37, 7, '2024-11-05 11:35:54'),
(38, 8, '2024-11-05 11:35:54'),
(39, 9, '2024-11-05 11:35:54'),
(40, 10, '2024-11-05 11:35:54');

-- --------------------------------------------------------

--
-- Structure de la table `shopping_cart_item`
--

CREATE TABLE `shopping_cart_item` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `shopping_cart_item`
--

INSERT INTO `shopping_cart_item` (`id`, `cart_id`, `product_id`, `quantity`) VALUES
(1, 7, 14, 1),
(2, 10, 9, 1),
(3, 8, 2, 4),
(4, 2, 12, 3),
(5, 5, 14, 4),
(6, 2, 17, 4),
(7, 1, 8, 4),
(8, 2, 13, 2),
(9, 10, 3, 2),
(10, 7, 1, 4),
(11, 8, 11, 2),
(12, 7, 8, 3),
(13, 6, 1, 4),
(14, 4, 2, 1),
(15, 5, 6, 1),
(16, 5, 11, 4),
(17, 6, 18, 1),
(18, 6, 15, 2),
(19, 2, 4, 1),
(20, 3, 6, 1),
(21, 7, 15, 4),
(22, 5, 12, 3),
(23, 2, 18, 1),
(24, 7, 20, 3),
(25, 6, 10, 5),
(26, 10, 12, 1),
(27, 3, 18, 1),
(28, 2, 5, 1),
(29, 3, 1, 1),
(30, 2, 9, 5),
(31, 10, 4, 5),
(32, 2, 20, 5),
(33, 6, 7, 1),
(34, 8, 18, 2),
(35, 10, 1, 3),
(36, 10, 9, 3),
(37, 4, 20, 1),
(38, 1, 4, 4),
(39, 5, 2, 1),
(40, 9, 6, 5),
(41, 9, 15, 1),
(42, 4, 13, 3),
(43, 4, 19, 2),
(44, 5, 8, 2),
(45, 6, 3, 4),
(46, 10, 7, 4),
(47, 7, 8, 5),
(48, 6, 20, 5),
(49, 8, 11, 5),
(50, 1, 6, 4),
(51, 5, 5, 1),
(52, 10, 6, 1),
(53, 5, 6, 1),
(54, 8, 16, 5),
(55, 5, 12, 2),
(56, 8, 17, 2),
(57, 10, 18, 2),
(58, 7, 7, 4),
(59, 6, 10, 4),
(60, 5, 10, 4),
(61, 4, 7, 5),
(62, 10, 2, 2),
(63, 4, 16, 2),
(64, 10, 14, 1),
(65, 1, 16, 1),
(66, 8, 4, 2),
(67, 6, 7, 4),
(68, 4, 15, 1),
(69, 6, 17, 4),
(70, 8, 2, 4),
(71, 9, 9, 4),
(72, 2, 19, 4),
(73, 5, 17, 1),
(74, 9, 6, 2),
(75, 5, 7, 5),
(76, 10, 13, 1),
(77, 2, 15, 4),
(78, 4, 10, 1),
(79, 9, 10, 3),
(80, 5, 3, 1),
(81, 4, 18, 5),
(82, 6, 5, 4),
(83, 7, 2, 2),
(84, 2, 9, 3),
(85, 1, 4, 5),
(86, 1, 9, 4),
(87, 6, 5, 4),
(88, 5, 3, 3),
(89, 1, 1, 1),
(90, 5, 5, 4),
(91, 10, 20, 4),
(92, 3, 7, 2),
(93, 10, 4, 1),
(94, 2, 17, 1),
(95, 3, 5, 1),
(96, 9, 6, 1),
(97, 6, 6, 3),
(98, 7, 19, 4),
(99, 3, 8, 2),
(100, 1, 8, 1),
(101, 3, 12, 1),
(102, 6, 16, 2),
(103, 7, 6, 3),
(104, 4, 1, 2),
(105, 4, 18, 1),
(106, 6, 11, 3),
(107, 10, 12, 2),
(108, 10, 19, 1),
(109, 9, 4, 3),
(110, 7, 9, 1),
(111, 2, 13, 4),
(112, 10, 16, 5),
(113, 7, 17, 3),
(114, 3, 7, 5),
(115, 1, 17, 5),
(116, 4, 6, 4),
(117, 6, 4, 5),
(118, 5, 9, 1),
(119, 5, 19, 1),
(120, 4, 14, 4);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'Paula Koepp', 'hulda36@example.org', '$2y$10$FEkohaDr/xsQJeS6acBC1uKprHvdyd1h2lrQM2as39kG.xunnEq/K', '2024-11-05 11:35:10'),
(2, 'Timothy Pagac', 'grippin@example.net', '$2y$10$Ahpi8SvRGXR/e5giS2gbyO/CSmJWH55LbJLsp5cArApwKiCM6Mo/y', '2024-11-05 11:35:10'),
(3, 'Alena Beahan', 'reichel.calista@example.org', '$2y$10$TJcYgcDvKqJkT31x76YcoeOWTkX7AYCnGWrE1nJp4HmrZ0fFFtvCa', '2024-11-05 11:35:10'),
(4, 'Mr. Enid Welch IV', 'colten97@example.net', '$2y$10$iNQAgJDQgV9JSHGSxlQMK.l5ihFqQUN2p5NwzpteZGAgxaFUX.NBa', '2024-11-05 11:35:10'),
(5, 'Stephanie Aufderhar', 'mclaughlin.yasmin@example.com', '$2y$10$hDWhBT1VujK9s.hVjf0P8OmKl6mE7G0uSDXtofZeYtrsfNXGqKnlK', '2024-11-05 11:35:10'),
(6, 'Dashawn Borer II', 'oconnell.noemie@example.org', '$2y$10$5zaDSmU.vBwu1FsYvgBujet5.OiLvAmETsFdqqeYlh429N5KN/tPu', '2024-11-05 11:35:10'),
(7, 'Leland Legros', 'fritz16@example.com', '$2y$10$TRwLhW.xu6IBroZCSoPa4.4UoNSV9pcbZ/srgAWKFHMHzt3XfGxq.', '2024-11-05 11:35:10'),
(8, 'Jonathon Schamberger', 'connor.homenick@example.org', '$2y$10$KZRAtBrO.m0Zv9nRh.IKquuTvxogIVSqA8uSpVL4MdiOUCEkItYhe', '2024-11-05 11:35:10'),
(9, 'Dr. Graciela Skiles', 'gkassulke@example.net', '$2y$10$jEKVM6HQgF2CtIYrtAUQuO7MIXHUFUQ9eYWjSpbm/yO75.PQ2wgoO', '2024-11-05 11:35:10'),
(10, 'Schuyler Kshlerin', 'junior.runolfsdottir@example.org', '$2y$10$2.xNdUS3aKsY88/cKEqaa.M1GfK9p8uyc3IEWlJr6gPqh0lnf5eOW', '2024-11-05 11:35:10'),
(11, 'Daphnee Borer V', 'cole.oleta@example.net', '$2y$10$yqx0opnne4ZX2WvSpx0bZORdU9GRGhVpFoX2UDpBGroRuxqwnjgzq', '2024-11-05 11:35:11'),
(12, 'Prof. Pansy Bogisich', 'lamar13@example.net', '$2y$10$Snjhgm8E/xlheIdh5OLwdOEarkhJhrp8oYkTfL.G.jyYn8BZzAZ7e', '2024-11-05 11:35:12'),
(13, 'Mrs. Ima Ortiz IV', 'zzulauf@example.com', '$2y$10$llWQKbX8UvpBh7wDUsKvPuoyRduytUC/khUFMhAFvMVJgL4VznKCu', '2024-11-05 11:35:12'),
(14, 'Prof. Maybell Gaylord IV', 'runolfsdottir.darren@example.net', '$2y$10$HDKkarL53jWJ4tgjZck3w.pLqf66wTARvCgkG4eh/Ryw/4rfqHIFy', '2024-11-05 11:35:12'),
(15, 'Ozella Kiehn II', 'west.caitlyn@example.net', '$2y$10$f/GTyg7Ch6M2T5ejmZvPMONBFwy.tM7ytuWKt5CLrR8NK4TCtp8kq', '2024-11-05 11:35:12'),
(16, 'Alena Rau', 'vjohnston@example.com', '$2y$10$5y8mZs/BNEOCSCD.O6UJc.rauza.EQGZ8/M69dg00P9kwVJHkev3W', '2024-11-05 11:35:12'),
(17, 'Dr. Darron Boyle', 'rbotsford@example.net', '$2y$10$yQDhPvtRteMGUIRIl2DjcOmft80KUC0cfBoePs294YhOx6v8SwLza', '2024-11-05 11:35:12'),
(18, 'Velva King', 'dominic.rodriguez@example.net', '$2y$10$ERsLE4NPehCWRX1emsKHNu0kLkJKWiJBQA0A8.7Ktv8z6OrVWJq2K', '2024-11-05 11:35:12'),
(19, 'Jayda Bartell', 'brown.becker@example.net', '$2y$10$ioMsmE8VS46TPVZigEa4e.8iF6KO.ptuP.5K0mlRRDkNdo6J9Mr36', '2024-11-05 11:35:12'),
(20, 'Kamille Crona Jr.', 'maxime.dickinson@example.org', '$2y$10$gs1OnBRTfjSseQIZ/HzogOECy0EYypFq.UQMgpHEMxvvMRfsrJn3m', '2024-11-05 11:35:12'),
(21, 'Jarvis Quitzon DDS', 'conn.ardella@example.com', '$2y$10$oiWBwwr7LUBFlzTFt21G1.wMu85l3ayQvThRkYZz0rVn8QmIIVdFG', '2024-11-05 11:35:45'),
(22, 'Zita Kautzer', 'medhurst.virgil@example.net', '$2y$10$pOE4MYy9Vk4E1xwu786GCuyI3yd915kba594s3qmICji9oXZg6Wn6', '2024-11-05 11:35:46'),
(23, 'Prof. Jackson Blanda DDS', 'dina22@example.org', '$2y$10$IBwK3QSR79KpsQubgtcnEuWNTvjnotwdERQLADvEDBY9ZlEYVy0rO', '2024-11-05 11:35:46'),
(24, 'Betsy Conn', 'craig87@example.net', '$2y$10$WFSdYilo.bK7CFvC/3bXFeRpBj9S/qD1wjTBX6pOgmg.1WfYwpE8i', '2024-11-05 11:35:46'),
(25, 'Prof. Isom Rutherford PhD', 'ashton52@example.net', '$2y$10$gl2JM/deU5HIp9XRrXh4Zuu//Lr/hIRhL8FeMmhCwbDgBtjRfNLMi', '2024-11-05 11:35:46'),
(26, 'Rosina Stiedemann MD', 'keara.cruickshank@example.org', '$2y$10$cmb5uZrNFlw57fxQo.1vpu1mBMXkP3jZRHZn72GSjaIiXx9i8slkK', '2024-11-05 11:35:46'),
(27, 'Jaime Stanton DVM', 'eda15@example.net', '$2y$10$NIQoVaf4nHsa.VmscuCoo.EXVfcZb//1jil9KqsAudZ8vaILTv4By', '2024-11-05 11:35:46'),
(28, 'Vince Kiehn', 'taryn.goodwin@example.com', '$2y$10$esUiilKUT.TYoNEuBt.j0.f86NKoJbZUuiF0NFEHd3uGI0PQKUNda', '2024-11-05 11:35:46'),
(29, 'Dejuan Brown', 'omari54@example.net', '$2y$10$.rnN.ArdpX9atlUdp8wME.hQ4hQPzHIpcRj2SZjzYfPFsjFf6vN2G', '2024-11-05 11:35:46'),
(30, 'Felton Huels', 'halvorson.lauriane@example.com', '$2y$10$A35ivn1zNWk.FlyEmRMY8.OENZfbrqRYrfMDt8rfdl8jZMbV6Kx1W', '2024-11-05 11:35:46'),
(31, 'Kiel Flatley', 'xmohr@example.net', '$2y$10$T4LxXjPQ02TXdyLULJiYkevxK62yEBX90YBUdXPxsyoHZ90W.zI5u', '2024-11-05 11:35:50'),
(32, 'Dr. Ida Hammes', 'thane@example.net', '$2y$10$R1V06F08rmtZmxAvCnFRruk6AaDlL.uuFei.oWaBOp3nRLzIrCqQW', '2024-11-05 11:35:50'),
(33, 'Dr. Madeline Runolfsdottir', 'cole.jaquelin@example.net', '$2y$10$zrXcB.3u6foWwIxEMk75DuZKmnpnQB/FBhP0vfT2waJrng0uhJBJa', '2024-11-05 11:35:50'),
(34, 'Mrs. Eve Wilderman Sr.', 'lonie.oreilly@example.net', '$2y$10$JjTIbJfWlrswVh4AxfS4ceYQNmEhw0aWcOQhZbEn5qEwT4zVgtaIG', '2024-11-05 11:35:50'),
(35, 'Johan Dickinson', 'fjenkins@example.com', '$2y$10$lAfh.ggC3a2qNfIsHUSJ1.5JI/3AFuWwmL8wcxPiseFVFmJxJ3zFC', '2024-11-05 11:35:50'),
(36, 'Kattie Langworth II', 'reilly.karine@example.com', '$2y$10$ms0OeU8/OMqdxdR0aiz/Kej/2w.s0q3BJQoLADXn4xpxjhbBRsBUC', '2024-11-05 11:35:50'),
(37, 'Jaylin Davis', 'akuhic@example.com', '$2y$10$JQ8/boN7SgwsNDd9jeCC.OxqK9SpLHY0jfE6.VR1BdtuP2FXxbDeS', '2024-11-05 11:35:50'),
(38, 'Mr. Kris Streich', 'xstreich@example.org', '$2y$10$Qqq1328p3v77wMaPxyY7UOv3MR.difXnd56mXjjtJHq4rzhkYhIO6', '2024-11-05 11:35:51'),
(39, 'Vickie Hills PhD', 'fbraun@example.net', '$2y$10$mL0kmWOhlL/yHOVMYfQZ3OZN4PmJPthtybFlOb7P7dbp1ySBXf9sq', '2024-11-05 11:35:51'),
(40, 'Miss Calista Marks', 'roberts.jackson@example.org', '$2y$10$uk9xUXW9LOkEDijVL80o5uA4SsuckdesIA1CHVCTt0vOSSWFlzukW', '2024-11-05 11:35:51'),
(41, 'Joanny DuBuque', 'welch.lisandro@example.org', '$2y$10$KHJdzOYr6STuPxZ5X.zwAeetpKn.oss8goEIZU4mh90ATf57ehJg.', '2024-11-05 11:35:53'),
(42, 'Sydnie Walsh', 'evalyn.buckridge@example.com', '$2y$10$P2mBZCM5VDBDndEJWTERXejMuxPHECgMdVkVL/pL.YTwJSkNWO5xi', '2024-11-05 11:35:53'),
(43, 'Parker Jones', 'euna.bosco@example.net', '$2y$10$8FqTp1gVk/v4GzuW0JWqDu1nxy4XtvXjlHaVn/ZSvkhmovuAPJqfK', '2024-11-05 11:35:54'),
(44, 'Mr. Hal Kris', 'wwilliamson@example.net', '$2y$10$TjP8e6I9u6QnG9W6KSCCCOiK0IXUfNR6k3ar.3BMHFcqoGv47fQt6', '2024-11-05 11:35:54'),
(45, 'Mr. Ewald Pfeffer V', 'jarrett29@example.net', '$2y$10$PpvGGdpIcoPIa8DyC5PMfevur91uRAcDFTDUQ5JTADRN339pcDoVW', '2024-11-05 11:35:54'),
(46, 'Ms. Gerda Murphy V', 'terry.delpha@example.net', '$2y$10$3JgF19rPHJ8JnFFkQ.jdauTFzeb0QQNs5mHxERR8EJaXMnQy5jetq', '2024-11-05 11:35:54'),
(47, 'Margie Abshire', 'breana.gerlach@example.net', '$2y$10$MZyvOlKtB3KFlQtjaqUS9.4TXYP/SyDnF7aJPrjLMmSrA/Nabekge', '2024-11-05 11:35:54'),
(48, 'Mr. Neal Williamson PhD', 'thaddeus.kilback@example.com', '$2y$10$TEEpgPWWkbHk4RUeMyThDepKbS4D0ffVwxQzjaGdMSCBUife3FrAy', '2024-11-05 11:35:54'),
(49, 'Eliza Goodwin', 'dejuan33@example.com', '$2y$10$Dyr3QhFLrscMnfWGd64T5OuRVjPvlJT0PfrUHHBIMTEVt6KfIvNwW', '2024-11-05 11:35:54'),
(50, 'Mrs. Berniece McLaughlin', 'pansy.quigley@example.net', '$2y$10$IVusUTAnqr8wwrVg3SUc7Oz4dE4mjOrLymVg1mqJDu/vd9biNzcAK', '2024-11-05 11:35:54');

-- --------------------------------------------------------

--
-- Structure de la table `user_address`
--

CREATE TABLE `user_address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user_address`
--

INSERT INTO `user_address` (`id`, `user_id`, `street`, `city`, `postal_code`, `country`) VALUES
(1, 1, '9328 Moen Ports Suite 409', 'Toybury', '22037', 'Aruba'),
(2, 2, '7587 Lebsack Prairie Apt. 925', 'Marcosbury', '32034-5804', 'Yemen'),
(3, 3, '1435 Laurine Mill', 'Wiltonville', '96833-4256', 'Myanmar'),
(4, 4, '4644 Ahmed Falls', 'North Berry', '70198', 'Austria'),
(5, 5, '484 Ankunding Ramp Apt. 356', 'South Queen', '93518-5887', 'Sierra Leone'),
(6, 6, '30173 Gust Flats Apt. 180', 'South Gudruntown', '79386', 'Paraguay'),
(7, 7, '5073 Lebsack Field Apt. 884', 'North Lon', '17680-8902', 'Papua New Guinea'),
(8, 8, '295 Lacy Land Apt. 586', 'East Rubiehaven', '89194-9173', 'Turks and Caicos Islands'),
(9, 9, '408 Madalyn Terrace Suite 578', 'North Amiya', '84150-9878', 'El Salvador'),
(10, 10, '1933 Jordi Way', 'Port Lurachester', '26649', 'Myanmar'),
(11, 1, '96381 VonRueden Lights Suite 293', 'South Cecil', '52763-0053', 'British Virgin Islands'),
(12, 2, '8691 Lavonne Stravenue Suite 694', 'Wymanview', '69428', 'Spain'),
(13, 3, '821 Adelia Centers', 'Bruenton', '21234-8801', 'Faroe Islands'),
(14, 4, '6973 Wolf Junctions Apt. 416', 'Rhodaport', '15866', 'Botswana'),
(15, 5, '2360 Crist Squares Suite 784', 'Bruenfurt', '93002', 'Bermuda'),
(16, 6, '3377 Donnelly Alley', 'Bashirianfurt', '48686-3861', 'Mauritania'),
(17, 7, '786 Sawayn Views', 'Vernville', '50394-0632', 'Singapore'),
(18, 8, '68790 Colt Centers', 'Bayerton', '52706-6129', 'Niue'),
(19, 9, '98696 Graham Cliffs Suite 654', 'Lake Elsa', '26216-0907', 'Liberia'),
(20, 10, '9830 Constantin Street', 'Bayleeport', '59495', 'Denmark'),
(21, 1, '38190 Okuneva Rest', 'Felipafurt', '53941', 'Bahamas'),
(22, 2, '8821 Margaretta Radial', 'Kutchfurt', '33099-9881', 'Colombia'),
(23, 3, '655 Chloe Lake Suite 044', 'North Raoul', '35717-7793', 'Cook Islands'),
(24, 4, '6969 Jude Lights', 'Boehmtown', '18175-1620', 'United Arab Emirates'),
(25, 5, '53036 Birdie Rest', 'North Carmelo', '59087-9605', 'Uganda'),
(26, 6, '617 Franco Court', 'North Karenside', '51702-5400', 'Peru'),
(27, 7, '2606 Adelbert Plaza Apt. 936', 'Carmenchester', '02397-0240', 'Cyprus'),
(28, 8, '2448 Ana Inlet Suite 148', 'Balistreriland', '84081-7723', 'Solomon Islands'),
(29, 9, '706 Cortez Course', 'Port Oranburgh', '01923-5032', 'British Indian Ocean Territory (Chagos Archipelago)'),
(30, 10, '38798 Shields Lodge', 'Port Altheamouth', '88648-7040', 'Guyana'),
(31, 1, '808 Kassulke Row', 'Gorczanyfort', '45206', 'Sweden'),
(32, 2, '824 Spinka Parkway Apt. 903', 'Wymanland', '54906-5185', 'Anguilla'),
(33, 3, '6246 Johanna Lodge', 'Bennettfurt', '38862', 'Cayman Islands'),
(34, 4, '7368 Golda Valley', 'Keeblerstad', '84141', 'Croatia'),
(35, 5, '8911 Legros Plaza', 'Lake Jovaniview', '08597', 'Armenia'),
(36, 6, '217 Telly Trail', 'New Boydport', '76599', 'Andorra'),
(37, 7, '1343 Batz Field', 'Wilkinsonmouth', '49782', 'Uzbekistan'),
(38, 8, '714 Mraz Rest', 'Lake Vivianne', '17031-7112', 'Afghanistan'),
(39, 9, '4650 Kihn Point Suite 919', 'Rutherfordstad', '70839-2199', 'Mayotte'),
(40, 10, '893 Raynor Mountains Apt. 151', 'Graycestad', '61041-3504', 'Bulgaria');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `card_payment`
--
ALTER TABLE `card_payment`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `iban_payment`
--
ALTER TABLE `iban_payment`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Index pour la table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `cart_id` (`cart_id`);

--
-- Index pour la table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `card_payment_id` (`card_payment_id`),
  ADD KEY `iban_payment_id` (`iban_payment_id`);

--
-- Index pour la table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entity_id` (`entity_id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product_rating`
--
ALTER TABLE `product_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Index pour la table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `shopping_cart_item`
--
ALTER TABLE `shopping_cart_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_id` (`cart_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `card_payment`
--
ALTER TABLE `card_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `iban_payment`
--
ALTER TABLE `iban_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `photo`
--
ALTER TABLE `photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT pour la table `product_rating`
--
ALTER TABLE `product_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT pour la table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `shopping_cart_item`
--
ALTER TABLE `shopping_cart_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`);

--
-- Contraintes pour la table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`cart_id`) REFERENCES `shopping_cart` (`id`);

--
-- Contraintes pour la table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`card_payment_id`) REFERENCES `card_payment` (`id`),
  ADD CONSTRAINT `payment_ibfk_3` FOREIGN KEY (`iban_payment_id`) REFERENCES `iban_payment` (`id`);

--
-- Contraintes pour la table `photo`
--
ALTER TABLE `photo`
  ADD CONSTRAINT `photo_ibfk_1` FOREIGN KEY (`entity_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `photo_ibfk_2` FOREIGN KEY (`entity_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `product_rating`
--
ALTER TABLE `product_rating`
  ADD CONSTRAINT `product_rating_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `product_rating_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Contraintes pour la table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD CONSTRAINT `shopping_cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `shopping_cart_item`
--
ALTER TABLE `shopping_cart_item`
  ADD CONSTRAINT `shopping_cart_item_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `shopping_cart` (`id`),
  ADD CONSTRAINT `shopping_cart_item_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Contraintes pour la table `user_address`
--
ALTER TABLE `user_address`
  ADD CONSTRAINT `user_address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
