-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 07 juil. 2026 à 23:06
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ma_petite_robe_en_wax`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admins`
--

INSERT INTO `admins` (`id`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sylvestre', 'isylvestre757@gmail.com', NULL, '$2y$12$UVBreuNPJ5cfgx26kb2zFeuCsHrn4MjsodaihkkvYqdWZONtCRccq', NULL, '2024-11-18 20:32:46', '2024-11-18 20:32:46');

-- --------------------------------------------------------

--
-- Structure de la table `artisans`
--

CREATE TABLE `artisans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `etat` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `artisans`
--

INSERT INTO `artisans` (`id`, `username`, `email`, `password`, `telephone`, `adresse`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Karolann Marvin', 'sylvestre@groupeisi.com', '$2y$12$C2SKG41Yd60snMF5G7i4Y.HaLLatijsXgT3u3TqXUjxny9t/yB7u2', '1-970-548-7158', '1646 Lakin Freeway\nBergnaumhaven, HI 59906-4979', 1, '2024-11-18 20:24:19', '2024-11-18 20:24:19');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `mensurations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `genre` char(1) NOT NULL,
  `etat` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `username`, `email`, `password`, `adresse`, `mensurations`, `genre`, `etat`, `created_at`, `updated_at`, `telephone`) VALUES
(9, 'Bellar', 'docbellar@gmail.com', '$2y$12$U3s7UEdsjgY0ANCOt.yhtuRzKe1OvjxkDXH91DxmCy.xV.8AohJye', NULL, '\"{\\\"tourCou\\\":\\\"50\\\",\\\"largeurEpaule\\\":\\\"15\\\",\\\"tourPoitrine\\\":\\\"25\\\",\\\"hauteurPoitrine\\\":\\\"15\\\",\\\"tourDessousPoitrine\\\":\\\"20\\\",\\\"tourTaille\\\":\\\"50\\\",\\\"tourTailleHaute\\\":\\\"40\\\",\\\"tourHanche\\\":\\\"50\\\",\\\"tourBras\\\":null,\\\"longueurBras\\\":\\\"20\\\",\\\"longueurManches\\\":\\\"30\\\",\\\"tourPoignet\\\":\\\"45\\\",\\\"longueurDos\\\":\\\"100\\\",\\\"longueurRobe\\\":\\\"12\\\"}\"', 'M', 1, '2024-11-20 05:17:06', '2024-11-22 03:20:11', NULL),
(11, 'Rama', 'otchomaclaude8@gmail.com', '$2y$12$MPphFjfUiWbmRttHY7XGPuxPr7zZ/4XxELSdIE0XXpmYDMGhALhHG', NULL, '\"{\\\"tourCou\\\":\\\"20\\\",\\\"largeurEpaule\\\":\\\"15\\\",\\\"tourPoitrine\\\":\\\"30\\\",\\\"hauteurPoitrine\\\":\\\"40\\\",\\\"tourDessousPoitrine\\\":\\\"35\\\",\\\"tourTaille\\\":\\\"30\\\",\\\"tourTailleHaute\\\":\\\"33\\\",\\\"tourHanche\\\":\\\"50\\\",\\\"tourBras\\\":\\\"15\\\",\\\"longueurBras\\\":\\\"30\\\",\\\"longueurManches\\\":\\\"25\\\",\\\"tourPoignet\\\":\\\"10\\\",\\\"longueurDos\\\":\\\"45\\\",\\\"longueurRobe\\\":\\\"145\\\"}\"', 'F', 1, '2024-12-18 16:43:23', '2024-12-18 16:56:29', NULL),
(12, 'Hyacinthe', 'hyacinthe105@gmail.com', '$2y$12$oYG0xG2n4KFCoZooj6J4L.3Pwr.06Or5FShHZOkNv9zfiNf2Ol19.', NULL, NULL, 'M', 1, '2024-12-21 18:26:21', '2024-12-21 18:26:21', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cols`
--

CREATE TABLE `cols` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `imagePath` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cols`
--

INSERT INTO `cols` (`id`, `nom`, `imagePath`, `description`, `created_at`, `updated_at`) VALUES
(1, 'colbateau', 'imagesCol/39O20RQmnXCwGo5AW2keSzMKPkR91aa2C91UIC6C.png', 'colbateau', '2024-11-18 22:53:07', '2024-11-18 22:53:07'),
(2, 'colcarre', 'imagesCol/SKNNDu4MaDUIZs1UVmYRdA5h815tVL7Dz9R9adVF.png', 'colcarre', '2024-11-18 22:53:27', '2024-11-18 22:53:27'),
(3, 'colrond', 'imagesCol/Y7d7h9Aq8RUuBtkQh65O5FDYF2n56GSlq8J0XEBj.png', 'colrond', '2024-11-18 22:53:42', '2024-11-18 22:53:42'),
(5, 'colv', 'imagesCol/psqV7XYM7l0P5uUPJfoteZEx2olQF49AZUr7SSbc.png', 'colv', '2024-11-19 23:46:00', '2024-11-19 23:46:00');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE `commandes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `total` double(8,2) NOT NULL,
  `statut` varchar(255) NOT NULL,
  `clientId` bigint(20) UNSIGNED NOT NULL,
  `artisanId` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commandes`
--

INSERT INTO `commandes` (`id`, `date`, `total`, `statut`, `clientId`, `artisanId`, `created_at`, `updated_at`) VALUES
(8, '2024-12-20', 200.00, 'TERMINE', 9, 1, '2024-12-20 16:44:12', '2024-12-21 20:25:28'),
(9, '2024-12-20', 100.00, 'EN_PREPARATION', 9, 1, '2024-12-20 16:59:43', '2024-12-21 18:21:57'),
(10, '2024-12-21', 100.00, 'EN_PREPARATION', 12, 1, '2024-12-21 18:34:13', '2024-12-21 19:39:21'),
(11, '2024-12-22', 100.00, 'EN_ATTENTE', 9, NULL, '2024-12-22 19:31:27', '2024-12-22 19:31:27');

-- --------------------------------------------------------

--
-- Structure de la table `commande_articles`
--

CREATE TABLE `commande_articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `robeId` bigint(20) UNSIGNED NOT NULL,
  `quantite` int(10) UNSIGNED NOT NULL,
  `prixUnitaire` double(8,2) NOT NULL,
  `commandeId` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commande_articles`
--

INSERT INTO `commande_articles` (`id`, `robeId`, `quantite`, `prixUnitaire`, `commandeId`, `created_at`, `updated_at`) VALUES
(9, 24, 1, 100.00, 8, '2024-12-20 16:44:12', '2024-12-20 16:44:12'),
(10, 25, 1, 100.00, 8, '2024-12-20 16:44:12', '2024-12-20 16:44:12'),
(11, 25, 1, 100.00, 9, '2024-12-20 16:59:43', '2024-12-20 16:59:43'),
(12, 26, 1, 100.00, 10, '2024-12-21 18:34:13', '2024-12-21 18:34:13'),
(13, 25, 1, 100.00, 11, '2024-12-22 19:31:27', '2024-12-22 19:31:27');

-- --------------------------------------------------------

--
-- Structure de la table `comptesequestres`
--

CREATE TABLE `comptesequestres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `solde` double(15,2) NOT NULL DEFAULT 0.00,
  `dateCreation` datetime NOT NULL DEFAULT current_timestamp(),
  `dernierMouvement` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `coupes`
--

CREATE TABLE `coupes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `imagePath` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `coupes`
--

INSERT INTO `coupes` (`id`, `nom`, `imagePath`, `description`, `created_at`, `updated_at`) VALUES
(1, 'topdress', 'imagesCoupe/7PcVp0gg8OMLDT8omY4G41DQVySzUpMZiwerMPmj.png', 'topdress', '2024-11-18 22:54:37', '2024-11-18 22:54:37'),
(2, 'tubedress', 'imagesCoupe/RgsXHRy9tvpENis5ZXlg7WX5wYlZi15WKtOa6YoP.png', 'tubedress', '2024-11-18 22:54:58', '2024-11-18 22:54:58'),
(3, 'easydress', 'imagesCoupe/IZ4ImkT4ednZShgWvJZefhumcxVhePCUHabqFrKr.png', 'easydress', '2024-11-25 17:33:45', '2024-11-25 17:33:45');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jupes`
--

CREATE TABLE `jupes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `imagePath` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `jupes`
--

INSERT INTO `jupes` (`id`, `nom`, `imagePath`, `description`, `created_at`, `updated_at`) VALUES
(1, 'jupevolant', 'imagesJupe/7FJgWWzfNEa7GaK5DoCAwM6nslixPKmlmswzCGyE.png', 'jupevolant', '2024-11-18 22:58:10', '2024-11-18 22:58:10'),
(2, 'jupegodet', 'imagesJupe/C4fZYBT253m2ROBXEpRjG2pFdY5z5GrAe3cBY8jx.png', 'jupegodet', '2024-11-18 22:58:35', '2024-11-20 15:56:33'),
(3, 'jupecrayon', 'imagesJupe/RA8YMmRTJulhKioPRy9QxFHSKK3vhVfkugcmhv0m.png', 'jupecrayon', '2024-11-18 22:59:10', '2024-11-18 22:59:10'),
(4, 'jupefentedroite', 'imagesJupe/r1qZvXEt7X7awzqIu1SFAeXFXCruNLw0iLMKl7fw.png', 'jupefentedroite', '2024-11-18 22:59:36', '2024-11-18 22:59:36');

-- --------------------------------------------------------

--
-- Structure de la table `livraisons`
--

CREATE TABLE `livraisons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `statut` enum('En attente','En cours','Livré','Annulé') NOT NULL DEFAULT 'En attente',
  `commande_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `manches`
--

CREATE TABLE `manches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `imagePath` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `manches`
--

INSERT INTO `manches` (`id`, `nom`, `imagePath`, `description`, `created_at`, `updated_at`) VALUES
(1, 'sansmanches', 'imagesManche/aqo4OSWZh3g6iI8GgrkMDFlUalCQZr83FALIOCJX.png', 'sansmanches', '2024-11-18 22:55:24', '2024-11-18 22:56:37'),
(2, 'manchespapillon', 'imagesManche/PBmQTkCa4oGP2xdXGcwhzWfdX1VSS1cWjlD8ciOz.png', 'manchespapillon', '2024-11-18 22:55:52', '2024-11-18 22:57:10'),
(3, 'manchesbishop', 'imagesManche/aNPUxeVVGiEGeoJnJSCcoumR1GfA8f4PALcLNGT6.png', 'manchesbishop', '2024-11-18 22:57:38', '2024-11-18 22:57:38');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_11_11_155624_create_clients_table', 1),
(6, '2024_11_11_155625_create_artisans_table', 1),
(7, '2024_11_11_155629_create_coupes_table', 1),
(8, '2024_11_11_155630_create_cols_table', 1),
(9, '2024_11_11_155631_create_manches_table', 1),
(10, '2024_11_11_155632_create_jupes_table', 1),
(11, '2024_11_11_155633_create_tissues_table', 1),
(12, '2024_11_11_155635_create_robes_table', 1),
(13, '2024_11_11_155636_create_commandes_table', 1),
(14, '2024_11_11_155637_create_commande_articles_table', 1),
(15, '2024_11_11_155641_create_comptesequestres_table', 1),
(16, '2024_11_11_155642_create_paiements_table', 1),
(17, '2024_11_11_155700_create_transactions_table', 1),
(18, '2024_11_11_155746_create_notifications_table', 1),
(19, '2024_11_12_011558_create_livraisons_table', 1),
(20, '2024_11_18_210027_create_admins_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `estLu` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `paiements`
--

CREATE TABLE `paiements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `montant` double(8,2) NOT NULL,
  `date` datetime NOT NULL,
  `statut` enum('EN_ATTENTE','VALIDÉ','ANNULÉ','TERMINÉ','PAYÉ','NON_PAYÉ','LIVRÉ') NOT NULL,
  `commande_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Clients', 4, 'ClientToken', 'c9026d47e3fe0d9a235aa2555bd9f669c750e2cb6a269c9bc1169978d1172c69', '[\"*\"]', NULL, NULL, '2024-11-19 11:19:08', '2024-11-19 11:19:08'),
(2, 'App\\Models\\Clients', 6, 'ClientToken', '277782795d4e2f24d443156954b7c4e4f29b8255b194ec77594d75d57cd9129c', '[\"*\"]', NULL, NULL, '2024-11-19 12:58:36', '2024-11-19 12:58:36'),
(3, 'App\\Models\\Clients', 7, 'ClientToken', '8da5ed5ad0b8c0101c3dc12b1bbf0232dad1a7df7ee3b3ac9dd5ac3a8817e6a9', '[\"*\"]', NULL, NULL, '2024-11-19 22:04:34', '2024-11-19 22:04:34'),
(4, 'App\\Models\\Clients', 8, 'ClientToken', '45e0a9f25e1ab51897fdb7d7ef6a02d46d706ea14b6816878f6c12358fb941b7', '[\"*\"]', NULL, NULL, '2024-11-19 22:31:26', '2024-11-19 22:31:26'),
(5, 'App\\Models\\Clients', 1, 'ClientToken', '62ee6fec61fd124271268076a0fd2afe97aa276f361a2401e3affecfb16bebc2', '[\"*\"]', NULL, NULL, '2024-11-19 23:11:01', '2024-11-19 23:11:01'),
(6, 'App\\Models\\Clients', 1, 'ClientToken', '470b2635d07e40601b87a68704d5668b877f0d5730fd3bb0a75392ee8e34f061', '[\"*\"]', NULL, NULL, '2024-11-19 23:32:56', '2024-11-19 23:32:56'),
(7, 'App\\Models\\Clients', 1, 'ClientToken', 'cf7725464cba91210ee05f5af18ded8b909153a87bdc2ca3e68a0b35ce30ae1a', '[\"*\"]', NULL, NULL, '2024-11-20 00:11:03', '2024-11-20 00:11:03'),
(8, 'App\\Models\\Clients', 1, 'ClientToken', '3a814d640694cecdb764b1f3ea7b0273df9d34b60bae916d66b20794c25baabb', '[\"*\"]', NULL, NULL, '2024-11-20 02:33:56', '2024-11-20 02:33:56'),
(9, 'App\\Models\\Clients', 1, 'ClientToken', 'b296a953e779adedbc56967479367c253b18d934b6d171702515c7cb78dc8d80', '[\"*\"]', NULL, NULL, '2024-11-20 02:52:17', '2024-11-20 02:52:17'),
(10, 'App\\Models\\Clients', 9, 'ClientToken', '0cf067ed8a659c306069c09cd4b20e41fba87c878581e91cda5aabea0b9a9bf1', '[\"*\"]', NULL, NULL, '2024-11-20 05:17:06', '2024-11-20 05:17:06'),
(11, 'App\\Models\\Clients', 9, 'ClientToken', '24b36892277c14b8a71de17f03383f3584ed9124ae28a2375021ff222854f489', '[\"*\"]', NULL, NULL, '2024-11-20 05:17:36', '2024-11-20 05:17:36'),
(12, 'App\\Models\\Clients', 9, 'ClientToken', '84ab7877c5e47fcbfa4dd80c267eeea94df753705c2047b2e4818415831c8f73', '[\"*\"]', NULL, NULL, '2024-11-20 05:21:23', '2024-11-20 05:21:23'),
(13, 'App\\Models\\Clients', 9, 'ClientToken', 'eccdc79b52d5ed2916a0adeff2f3c563c343deef9e24498c7747b886f343e0ae', '[\"*\"]', NULL, NULL, '2024-11-20 05:49:15', '2024-11-20 05:49:15'),
(14, 'App\\Models\\Clients', 9, 'ClientToken', '3dd8f4c282b53ca3cb377a8166d2c7cdffdef5deeab586896c6544f8392e0c22', '[\"*\"]', NULL, NULL, '2024-11-20 06:16:07', '2024-11-20 06:16:07'),
(16, 'App\\Models\\Clients', 9, 'ClientToken', 'e5c514d02e01f0e127b43d7a3122d384139a979e2d18dd93893512ea1711f020', '[\"*\"]', NULL, NULL, '2024-11-20 06:16:39', '2024-11-20 06:16:39'),
(17, 'App\\Models\\Clients', 9, 'ClientToken', '99dc7c916462e6c7c460aefe0074198418a4bbc042e9347cf6df012c760ffe54', '[\"*\"]', NULL, NULL, '2024-11-20 06:25:09', '2024-11-20 06:25:09'),
(19, 'App\\Models\\Clients', 9, 'ClientToken', 'f377b568ad413038d5ddb3da39c0d56c49b4f5639fe811270aba76cde69d2277', '[\"*\"]', NULL, NULL, '2024-11-20 07:09:21', '2024-11-20 07:09:21'),
(20, 'App\\Models\\Clients', 9, 'ClientToken', 'f0ddffd280fa2bc9a46851f25fac7c9155f8ae896ab007910d4ce20300586645', '[\"*\"]', NULL, NULL, '2024-11-20 07:21:20', '2024-11-20 07:21:20'),
(21, 'App\\Models\\Clients', 9, 'ClientToken', 'b5ff878b1d1964c8aa4e35db87b12182604fa840de4b164620582634b77b3a17', '[\"*\"]', NULL, NULL, '2024-11-20 07:22:53', '2024-11-20 07:22:53'),
(23, 'App\\Models\\Clients', 9, 'ClientToken', '4f9c8a16aed553efaf4c85bc10fa69e505fe8025c15f71f4093214bba496c42f', '[\"*\"]', NULL, NULL, '2024-11-20 07:38:12', '2024-11-20 07:38:12'),
(24, 'App\\Models\\Clients', 9, 'ClientToken', 'ef81fbd2cc9e0e1eb2f6f7b50f7ffcb686f73ca0aa3a019a7e9a8b678b16f8b2', '[\"*\"]', NULL, NULL, '2024-11-20 08:19:11', '2024-11-20 08:19:11'),
(25, 'App\\Models\\Clients', 9, 'ClientToken', '55079193fbbd87945478eba5ebb2ee28034e7d101412395c6f6092b917eba715', '[\"*\"]', NULL, NULL, '2024-11-20 08:24:56', '2024-11-20 08:24:56'),
(26, 'App\\Models\\Clients', 9, 'ClientToken', 'fa847ebd6d6e0f34473eb778ec5186cdddb42150113b8fb64f30a9d00956426c', '[\"*\"]', NULL, NULL, '2024-11-20 08:25:56', '2024-11-20 08:25:56'),
(27, 'App\\Models\\Clients', 9, 'ClientToken', 'f93ef229576aa08240b8c25d2f35ef4202116ca28137195e6150f5ac13c496e9', '[\"*\"]', NULL, NULL, '2024-11-20 08:26:55', '2024-11-20 08:26:55'),
(28, 'App\\Models\\Clients', 9, 'ClientToken', '8dc06a5f60eafbdcd19100e88bd4a935ba50c6c6de28faebe0c81fe8ceb23a08', '[\"*\"]', NULL, NULL, '2024-11-20 08:27:27', '2024-11-20 08:27:27'),
(30, 'App\\Models\\Clients', 9, 'ClientToken', '4efef35173a1695ede9e2064830e25e1ea55d4634cb9d53d3fe82363c69ed3f0', '[\"*\"]', NULL, NULL, '2024-11-20 08:37:21', '2024-11-20 08:37:21'),
(31, 'App\\Models\\Clients', 9, 'ClientToken', 'f21d0c430ace7251a260c46257df18e047d55012b218fdee2cb16576861cc589', '[\"*\"]', NULL, NULL, '2024-11-20 08:42:06', '2024-11-20 08:42:06'),
(32, 'App\\Models\\Clients', 9, 'ClientToken', '086b9cebcd5fa299c83bb4661740ac521dceed3a471dfa54f4d750f9e9029698', '[\"*\"]', NULL, NULL, '2024-11-20 08:51:55', '2024-11-20 08:51:55'),
(33, 'App\\Models\\Clients', 9, 'ClientToken', '75e1a5dff1b01ca11ab9f5cae2eb7c05cbefc9f80026770a1b41a73ed3191012', '[\"*\"]', NULL, NULL, '2024-11-20 09:24:17', '2024-11-20 09:24:17'),
(34, 'App\\Models\\Clients', 9, 'ClientToken', 'e0c18c3959928c03f1c93f9bfb374a87bb06add63c491de1e439a2f02ea56a64', '[\"*\"]', '2024-11-21 13:07:08', NULL, '2024-11-20 09:36:27', '2024-11-21 13:07:08'),
(35, 'App\\Models\\Clients', 9, 'ClientToken', 'bb293afd99b31ade9938a4086cb232d8b18939151d5021c2aa00a5d1d274989e', '[\"*\"]', '2024-11-20 09:54:14', NULL, '2024-11-20 09:53:37', '2024-11-20 09:54:14'),
(36, 'App\\Models\\Clients', 9, 'ClientToken', '3840c413b0d90657cce5ab72ad9dd92cd67d87b59121e680c8e71eefc5f05548', '[\"*\"]', '2024-11-20 09:59:00', NULL, '2024-11-20 09:58:58', '2024-11-20 09:59:00'),
(37, 'App\\Models\\Clients', 9, 'ClientToken', '449b02c92a1a5ed43e4313adb615a85647006846c5239b4d5070a6b47a121fe3', '[\"*\"]', '2024-11-20 10:14:07', NULL, '2024-11-20 10:14:05', '2024-11-20 10:14:07'),
(38, 'App\\Models\\Clients', 9, 'ClientToken', 'c3a77e1494fc353edb9f25fd7e1aa6ea7259babfa250a9922bfef82f77152915', '[\"*\"]', '2024-11-20 11:50:00', NULL, '2024-11-20 11:27:50', '2024-11-20 11:50:00'),
(39, 'App\\Models\\Clients', 9, 'ClientToken', '8bb035cd93069ca0b613a9314c035d6183f318b1853d075736e975871cf7669f', '[\"*\"]', NULL, NULL, '2024-11-20 13:09:44', '2024-11-20 13:09:44'),
(40, 'App\\Models\\Clients', 9, 'ClientToken', '6f5ea52b592110d51adf08465ec3bbfb4a9b8187d3c489b1531a537a79ac6c6e', '[\"*\"]', NULL, NULL, '2024-11-20 13:09:45', '2024-11-20 13:09:45'),
(41, 'App\\Models\\Clients', 9, 'ClientToken', '1a3f5e70dfa70026cba0549bbfe1c6502cb1c0c9573b69d65810af2a3aa79174', '[\"*\"]', NULL, NULL, '2024-11-20 13:19:09', '2024-11-20 13:19:09'),
(42, 'App\\Models\\Clients', 9, 'ClientToken', 'ec9c13700382b1a80f9e0df9478d3bddbe2dc648bc9fa4b8731a530d12dade83', '[\"*\"]', NULL, NULL, '2024-11-20 13:22:08', '2024-11-20 13:22:08'),
(43, 'App\\Models\\Clients', 9, 'ClientToken', 'e7d2ad4694d124857d622c783196d3962e70c84f4034da6ac390724baf4ce9e3', '[\"*\"]', NULL, NULL, '2024-11-20 13:24:02', '2024-11-20 13:24:02'),
(44, 'App\\Models\\Clients', 9, 'ClientToken', '715bb27d2e28ea25b3a22479d7a489ba851baa132a9c9c870f18bc3c6ecbff26', '[\"*\"]', NULL, NULL, '2024-11-20 15:23:23', '2024-11-20 15:23:23'),
(45, 'App\\Models\\Clients', 9, 'ClientToken', '2a90b373e135ab88c91751f92f8b830459ff37bc39751ef82a772c6a706af708', '[\"*\"]', '2024-11-20 16:52:29', NULL, '2024-11-20 15:23:24', '2024-11-20 16:52:29'),
(46, 'App\\Models\\Clients', 9, 'ClientToken', '151ab451cb72668b713f874aace129377f03ade297e4ed990515c048862e67b4', '[\"*\"]', NULL, NULL, '2024-11-20 17:12:23', '2024-11-20 17:12:23'),
(47, 'App\\Models\\Clients', 9, 'ClientToken', 'fdd1760d318d9b9eda9c3cd143b90e92c34e7cb6c974e18b3fc8487da9f5f299', '[\"*\"]', NULL, NULL, '2024-11-20 17:16:51', '2024-11-20 17:16:51'),
(48, 'App\\Models\\Clients', 9, 'ClientToken', '1d52ca62ddfcc6bb53610cfb8c2941a4f5f45fcfcaec8752f4b86f8aa812dcf0', '[\"*\"]', NULL, NULL, '2024-11-20 17:18:17', '2024-11-20 17:18:17'),
(49, 'App\\Models\\Clients', 9, 'ClientToken', 'c9e00add3ec42ff69a80297593df019fccc96cb8d1b7a02330f488a4882a82f3', '[\"*\"]', NULL, NULL, '2024-11-20 17:25:03', '2024-11-20 17:25:03'),
(50, 'App\\Models\\Clients', 9, 'ClientToken', 'd5c1211dcb43bb170f061f2e52eebff2584ddd3e45a183c9870d79c307336d8e', '[\"*\"]', NULL, NULL, '2024-11-20 17:31:14', '2024-11-20 17:31:14'),
(51, 'App\\Models\\Clients', 9, 'ClientToken', 'fd6a174c9460d9b835f071d6295f12f18397c4ee43d67a3a9544a840dfb0aa44', '[\"*\"]', NULL, NULL, '2024-11-20 18:07:56', '2024-11-20 18:07:56'),
(53, 'App\\Models\\Clients', 9, 'ClientToken', '043b584dff225e12962aa603bc6a460646e219173c71754dd8818cbf4528a97f', '[\"*\"]', '2024-11-21 11:55:54', NULL, '2024-11-21 11:53:58', '2024-11-21 11:55:54'),
(54, 'App\\Models\\Clients', 9, 'ClientToken', '1d8d75008af79c424192fd15970fd4e0704c3254fc57196dbf21625cdd6ab728', '[\"*\"]', '2024-11-21 12:00:01', NULL, '2024-11-21 11:57:13', '2024-11-21 12:00:01'),
(55, 'App\\Models\\Clients', 9, 'ClientToken', '335950f68b037d3484bd72a9483745a0c7382da616f8928daf876b0e97051477', '[\"*\"]', NULL, NULL, '2024-11-21 12:25:21', '2024-11-21 12:25:21'),
(56, 'App\\Models\\Clients', 9, 'ClientToken', 'd3a1f9a30761d7007c13f45e1be6ae017c916774c1392e99d8895d36f5bfa72c', '[\"*\"]', NULL, NULL, '2024-11-21 12:29:46', '2024-11-21 12:29:46'),
(60, 'App\\Models\\Clients', 9, 'ClientToken', 'bd56228b913518ca720f06e314b6a401a13f27a730d9991d5d7066e043bfb0a9', '[\"*\"]', '2024-11-21 13:53:45', NULL, '2024-11-21 12:50:37', '2024-11-21 13:53:45'),
(61, 'App\\Models\\Clients', 9, 'ClientToken', '4e5cd5d2bb45b6fa416e9dcb8d7271774a3bac00f187d77866a6e16b78375c8f', '[\"*\"]', NULL, NULL, '2024-11-21 13:08:16', '2024-11-21 13:08:16'),
(62, 'App\\Models\\Clients', 9, 'ClientToken', '560cb02ae80ea30f78aac2e2c2477ff31c30ad3bddcb1d5b1070a7c5555b70c5', '[\"*\"]', '2024-11-21 13:59:53', NULL, '2024-11-21 13:28:40', '2024-11-21 13:59:53'),
(63, 'App\\Models\\Clients', 9, 'ClientToken', '2c6f584324ceddfa3975f9cbdb57fb58dbaf9940b48854813ad5cae963490d35', '[\"*\"]', NULL, NULL, '2024-11-21 13:59:15', '2024-11-21 13:59:15'),
(64, 'App\\Models\\Clients', 9, 'ClientToken', '1ec4413390ab687e975a572aa5d11bc23ea17781ff3128cfe9bb863402d7ebd9', '[\"*\"]', NULL, NULL, '2024-11-21 13:59:16', '2024-11-21 13:59:16'),
(65, 'App\\Models\\Clients', 9, 'ClientToken', '0cc5cebfed0d33db856fbac717fade7f31d2056b14d67d5ba1a019f4af77d633', '[\"*\"]', '2024-11-21 14:06:21', NULL, '2024-11-21 14:06:16', '2024-11-21 14:06:21'),
(66, 'App\\Models\\Clients', 9, 'ClientToken', 'b774e96cddb9bf3144a91ea5fa60219d76ec4c4bfcd260a263dd7f37d3fd574c', '[\"*\"]', '2024-11-21 14:14:26', NULL, '2024-11-21 14:10:37', '2024-11-21 14:14:26'),
(67, 'App\\Models\\Clients', 9, 'ClientToken', '03d8b1981ebe0d33931c10b15816540ce5eac0c65339c634c931436c8d4ff6e3', '[\"*\"]', '2024-11-21 14:33:00', NULL, '2024-11-21 14:14:56', '2024-11-21 14:33:00'),
(68, 'App\\Models\\Clients', 10, 'ClientToken', '6f49ddf22985a22a4a436b464a58acbe5adc1d29e2c3e7a89bbbaa6808d32490', '[\"*\"]', NULL, NULL, '2024-11-21 14:59:31', '2024-11-21 14:59:31'),
(69, 'App\\Models\\Clients', 10, 'ClientToken', '38e9eecc81dfebd11235b41459890505f95a93aa3a50926b264c8619990a37f0', '[\"*\"]', '2024-11-21 15:01:23', NULL, '2024-11-21 14:59:53', '2024-11-21 15:01:23'),
(70, 'App\\Models\\Clients', 9, 'ClientToken', '0717d34fa1766797386159b29b91b6abc6cd3623ef07e9ca61f25110479314f6', '[\"*\"]', '2024-11-21 17:53:56', NULL, '2024-11-21 17:23:48', '2024-11-21 17:53:56'),
(71, 'App\\Models\\Clients', 9, 'ClientToken', 'e22f80c1a16dc2d43be05aa61b19ac5ef21b16463fe8e37f275732afc43c0623', '[\"*\"]', NULL, NULL, '2024-11-21 22:07:32', '2024-11-21 22:07:32'),
(72, 'App\\Models\\Clients', 9, 'ClientToken', 'fe38fb41a784c9248e390fe3f354d068e726b0d7d4fd054f470053f95c5bfcdd', '[\"*\"]', '2024-11-21 22:13:59', NULL, '2024-11-21 22:07:33', '2024-11-21 22:13:59'),
(73, 'App\\Models\\Clients', 9, 'ClientToken', 'cb17ed0b3c1470ecc3b38f53d5c0d61466d4121b843cbed45dd055802f741664', '[\"*\"]', '2024-11-21 22:18:09', NULL, '2024-11-21 22:15:00', '2024-11-21 22:18:09'),
(74, 'App\\Models\\Clients', 9, 'ClientToken', 'ee27f9ec540a35e159b8f75d44ed912777295a3b959d960bfd3de48df2bd518a', '[\"*\"]', '2024-11-21 22:21:05', NULL, '2024-11-21 22:19:35', '2024-11-21 22:21:05'),
(75, 'App\\Models\\Clients', 9, 'ClientToken', 'de2972c8b2f3084556d5064f7ba282679117e942d51e00f73dc15a2bef1edfa5', '[\"*\"]', '2024-11-21 22:29:01', NULL, '2024-11-21 22:25:39', '2024-11-21 22:29:01'),
(76, 'App\\Models\\Clients', 9, 'ClientToken', '96bb3383ac09a019231b36b5a45760a4c5d4872a071f6d7b44b02d9fbb4776a5', '[\"*\"]', NULL, NULL, '2024-11-21 22:59:56', '2024-11-21 22:59:56'),
(77, 'App\\Models\\Clients', 9, 'ClientToken', '8f79fbd2d9668fcb30f373ed01803343daa35cd0245bc57b846787319854a3af', '[\"*\"]', '2024-11-21 23:00:02', NULL, '2024-11-21 22:59:57', '2024-11-21 23:00:02'),
(78, 'App\\Models\\Clients', 9, 'ClientToken', '81219befecf607ed1e8d6b1e76522d0df83309e61398838e2f3b167a1671e123', '[\"*\"]', '2024-11-21 23:43:19', NULL, '2024-11-21 23:18:08', '2024-11-21 23:43:19'),
(79, 'App\\Models\\Clients', 9, 'ClientToken', 'eb5d5a4ccba73dd38beb6060a81de3381b0bb67a5b66192584b5834495c82703', '[\"*\"]', '2024-11-21 23:45:53', NULL, '2024-11-21 23:45:50', '2024-11-21 23:45:53'),
(80, 'App\\Models\\Clients', 9, 'ClientToken', '619593b56f64e3e11ae4e3d3dd68aa39a1f35c4810f35014b3c3b8d57b4d7a56', '[\"*\"]', '2024-11-21 23:55:13', NULL, '2024-11-21 23:55:10', '2024-11-21 23:55:13'),
(81, 'App\\Models\\Clients', 9, 'ClientToken', 'e6a11562e2a4419a6d6d66cb8bfaa62acc0f837d6b296d2019f5863fef70c70d', '[\"*\"]', '2024-11-21 23:57:50', NULL, '2024-11-21 23:57:48', '2024-11-21 23:57:50'),
(82, 'App\\Models\\Clients', 9, 'ClientToken', '43fb9b260d848301bf4526b9753f9a405a2c5d0580aa2392f8c66beba45a7854', '[\"*\"]', NULL, NULL, '2024-11-22 00:08:07', '2024-11-22 00:08:07'),
(83, 'App\\Models\\Clients', 9, 'ClientToken', '820e3ea5de2b135b4d5a47a417b04b9fe8dbbeee1c50d936f3adb166142693f0', '[\"*\"]', '2024-11-22 00:08:10', NULL, '2024-11-22 00:08:08', '2024-11-22 00:08:10'),
(84, 'App\\Models\\Clients', 9, 'ClientToken', '8d25d7243e81e27f76ec68129a960c635e8b43f3d6bad52922ef18c236e1e94f', '[\"*\"]', '2024-11-22 00:14:52', NULL, '2024-11-22 00:14:49', '2024-11-22 00:14:52'),
(85, 'App\\Models\\Clients', 9, 'ClientToken', '20c67fbb5f43d23f5bb7acdb507d3dff818ad81e9033a7bfc53d6ee80e9475c2', '[\"*\"]', '2024-11-22 00:33:41', NULL, '2024-11-22 00:33:39', '2024-11-22 00:33:41'),
(86, 'App\\Models\\Clients', 9, 'ClientToken', '527465745b2ce912c3d1d26d33a36574376a8fc1d7f3d8f8bec03999f0d6fa18', '[\"*\"]', NULL, NULL, '2024-11-22 00:51:23', '2024-11-22 00:51:23'),
(87, 'App\\Models\\Clients', 9, 'ClientToken', '47da1a1ba7f540f5d9b956067a9dea7fb6af332958c0e1ea8e1d956d83bcd95c', '[\"*\"]', '2024-11-22 01:09:49', NULL, '2024-11-22 00:51:32', '2024-11-22 01:09:49'),
(88, 'App\\Models\\Clients', 9, 'ClientToken', 'f51b5f0ecc4fa076f857aa9be557e2d6891d02b6c40e40e78db80938891bb532', '[\"*\"]', '2024-11-22 01:24:46', NULL, '2024-11-22 01:07:19', '2024-11-22 01:24:46'),
(89, 'App\\Models\\Clients', 9, 'ClientToken', 'b68617413de455e7b3d994ae34e14f8ce1b2b7199aa75cd8d8bcabbc4e7c38bc', '[\"*\"]', '2024-11-22 01:37:36', NULL, '2024-11-22 01:28:52', '2024-11-22 01:37:36'),
(90, 'App\\Models\\Clients', 9, 'ClientToken', '81cb86887221d18c59ece794f917586d1bdb7d8738501972c4b21706ec67e041', '[\"*\"]', '2024-12-22 17:09:51', NULL, '2024-11-22 01:53:47', '2024-12-22 17:09:51'),
(91, 'App\\Models\\Clients', 9, 'ClientToken', 'fbe3e0a6097a47b78d01a6f5dd3b9bceea506fec26345a420dd80deda90e17d5', '[\"*\"]', '2024-11-22 02:10:37', NULL, '2024-11-22 01:59:15', '2024-11-22 02:10:37'),
(92, 'App\\Models\\Clients', 9, 'ClientToken', 'd6b71d78ed6ba94f55b93a6a879ef379fffa1b081a500cfeed9ff609b980fbb2', '[\"*\"]', '2024-11-22 02:33:48', NULL, '2024-11-22 02:18:16', '2024-11-22 02:33:48'),
(93, 'App\\Models\\Clients', 9, 'ClientToken', 'feb437ad129a3399966ffef583851d6b7e051d4c5615e5941dbab012fdea51df', '[\"*\"]', '2024-11-22 02:57:56', NULL, '2024-11-22 02:34:12', '2024-11-22 02:57:56'),
(94, 'App\\Models\\Clients', 9, 'ClientToken', 'dcf237fedbd296a617193e445fd67df1053d834ceae7bc25b978872df930f23b', '[\"*\"]', '2024-11-22 03:22:52', NULL, '2024-11-22 03:00:44', '2024-11-22 03:22:52'),
(95, 'App\\Models\\Clients', 9, 'ClientToken', 'f7eaec89ff8e39b36c87229df7671fffefdf8e2d0c3b710798ac0e8f175be35f', '[\"*\"]', NULL, NULL, '2024-11-22 03:23:15', '2024-11-22 03:23:15'),
(96, 'App\\Models\\Clients', 9, 'ClientToken', '131de69cd2060734f93b057a730a036abd1d218245bbcb3c64b1040561c12a3d', '[\"*\"]', '2024-11-22 03:23:44', NULL, '2024-11-22 03:23:15', '2024-11-22 03:23:44'),
(97, 'App\\Models\\Clients', 9, 'ClientToken', 'c167943e0ea24656784ec03d03de7cdd3b2d4d9a8ddc312653757429bce0a681', '[\"*\"]', NULL, NULL, '2024-11-22 03:24:09', '2024-11-22 03:24:09'),
(98, 'App\\Models\\Clients', 9, 'ClientToken', '448c11e22ead183a8a54e0183cec90212bcb07595b3cfb193ae455215f936952', '[\"*\"]', '2024-11-22 03:41:20', NULL, '2024-11-22 03:33:05', '2024-11-22 03:41:20'),
(99, 'App\\Models\\Clients', 9, 'ClientToken', '83457503e9f3d7c5d57e392a6d44721472ee62109fda0f98ba4caa4c2b6670d2', '[\"*\"]', '2024-11-22 03:46:54', NULL, '2024-11-22 03:45:22', '2024-11-22 03:46:54'),
(100, 'App\\Models\\Clients', 9, 'ClientToken', 'bb8fe05e33bdabb2dfab2d7416d7acb5e96e3e44a24a8e910dada4d72d01e68d', '[\"*\"]', NULL, NULL, '2024-11-22 03:47:19', '2024-11-22 03:47:19'),
(101, 'App\\Models\\Clients', 9, 'ClientToken', '95b5b92f0e1ec2c39a7f233153997f1cac46310c559b8e7b9c2cf6e7d3eacaad', '[\"*\"]', '2024-11-22 03:47:35', NULL, '2024-11-22 03:47:20', '2024-11-22 03:47:35'),
(102, 'App\\Models\\Clients', 9, 'ClientToken', '2dd04e9b8e37e932a4f648bce90265e921647541500d168dad772e98b3454050', '[\"*\"]', NULL, NULL, '2024-11-22 06:19:20', '2024-11-22 06:19:20'),
(103, 'App\\Models\\Clients', 9, 'ClientToken', 'e226d281f5af2223d36e6c0d59088505ba4e32c7294e7e412937753c22e00c43', '[\"*\"]', NULL, NULL, '2024-11-22 06:19:22', '2024-11-22 06:19:22'),
(104, 'App\\Models\\Clients', 9, 'ClientToken', '05e35b0cfb751078c8cdfe92504116503c61d087c92cb07526e59bb31bf63720', '[\"*\"]', '2024-11-22 06:26:49', NULL, '2024-11-22 06:19:22', '2024-11-22 06:26:49'),
(105, 'App\\Models\\Clients', 9, 'ClientToken', '6d576e6480bdd6c383c41acbf5e8b1f488689b39b03e914e61462b0c4a74f84a', '[\"*\"]', '2024-11-22 06:43:45', NULL, '2024-11-22 06:34:11', '2024-11-22 06:43:45'),
(106, 'App\\Models\\Clients', 9, 'ClientToken', '4197e743fb443401450d4b46432de76c5aca722d15a932253b3c650287142c29', '[\"*\"]', '2024-11-22 06:56:14', NULL, '2024-11-22 06:56:07', '2024-11-22 06:56:14'),
(107, 'App\\Models\\Clients', 9, 'ClientToken', 'd493b18558ad6a685606bb36c9c7242aa7c7b2892641a265b62e444fd232d213', '[\"*\"]', '2024-11-22 07:39:31', NULL, '2024-11-22 07:37:14', '2024-11-22 07:39:31'),
(108, 'App\\Models\\Clients', 9, 'ClientToken', '819c6dd7a77e6a1f22718439c1a9ceea0bace26d560f705ef91c2b8cc8d7168b', '[\"*\"]', '2024-11-22 08:00:51', NULL, '2024-11-22 07:40:14', '2024-11-22 08:00:51'),
(109, 'App\\Models\\Clients', 9, 'ClientToken', 'e803eb8843496a9aae10a132f69020d207803fd92b7dd60485fab1e7c13b590d', '[\"*\"]', '2024-11-22 08:22:52', NULL, '2024-11-22 08:06:55', '2024-11-22 08:22:52'),
(110, 'App\\Models\\Clients', 9, 'ClientToken', '80aa20ce9b9487ea94165053cb569c9445c937b2a1dc82e45aa652ec903311b5', '[\"*\"]', '2024-11-22 08:43:20', NULL, '2024-11-22 08:40:34', '2024-11-22 08:43:20'),
(111, 'App\\Models\\Clients', 9, 'ClientToken', '82fc129451f55056c2cd2459eaeeed2b79b3e7d6900c84f76f98745bcae8313d', '[\"*\"]', '2024-11-22 09:03:13', NULL, '2024-11-22 08:47:50', '2024-11-22 09:03:13'),
(112, 'App\\Models\\Clients', 9, 'ClientToken', '7ab20c6fd12078dca81274db28ef5a559ab1e2c56c8c7f7f09f76f08e150b47a', '[\"*\"]', '2024-11-22 09:07:42', NULL, '2024-11-22 09:07:36', '2024-11-22 09:07:42'),
(113, 'App\\Models\\Clients', 9, 'ClientToken', '0f62fedead0575effbd1eee06266ba0363c00811a53efc81d20391fee1516d77', '[\"*\"]', '2024-11-22 09:51:46', NULL, '2024-11-22 09:49:34', '2024-11-22 09:51:46'),
(114, 'App\\Models\\Clients', 9, 'ClientToken', '87e1131201599399cb56218502f3307133951e5d7945fbf4cc5a45199f30ce7a', '[\"*\"]', NULL, NULL, '2024-11-22 13:02:43', '2024-11-22 13:02:43'),
(115, 'App\\Models\\Clients', 9, 'ClientToken', '2a52bfd56da37067d0a349a4730c6d82a595b893738c219e2c2f0aba23e1c9e9', '[\"*\"]', '2024-11-22 13:03:44', NULL, '2024-11-22 13:02:45', '2024-11-22 13:03:44'),
(116, 'App\\Models\\Clients', 9, 'ClientToken', '501f4a79d5b8b4381a3d6644a7ac9a418b5799470d38d72773333436cc276786', '[\"*\"]', '2024-11-22 14:15:00', NULL, '2024-11-22 14:14:53', '2024-11-22 14:15:00'),
(117, 'App\\Models\\Clients', 9, 'ClientToken', '4f7d7342a1481a993dab5bc973f3882ecc2e87d4fe4bdf6a5100caab5c9feb2d', '[\"*\"]', '2024-11-22 14:38:02', NULL, '2024-11-22 14:24:26', '2024-11-22 14:38:02'),
(118, 'App\\Models\\Clients', 9, 'ClientToken', '50cf8c7552e02e56cfaa2e4a388eed22548985614a95bbe131ab0e5a51050722', '[\"*\"]', '2024-11-22 14:42:53', NULL, '2024-11-22 14:42:46', '2024-11-22 14:42:53'),
(119, 'App\\Models\\Clients', 9, 'ClientToken', 'ea3c3e500e51702e742fc34500d41e1fb8c81b6a58ba7ae73ef5c85e08103564', '[\"*\"]', '2024-11-22 14:43:54', NULL, '2024-11-22 14:43:36', '2024-11-22 14:43:54'),
(120, 'App\\Models\\Clients', 9, 'ClientToken', '7ab7733585a0f26b5a49fb9037ec17e1fbe722f5687514540fe67ea358d243c9', '[\"*\"]', '2024-11-22 14:54:06', NULL, '2024-11-22 14:47:35', '2024-11-22 14:54:06'),
(121, 'App\\Models\\Clients', 9, 'ClientToken', '3b3f84742e59592a0d1e2835b5e6e5de968e638d20d9c3524ca47d8046dddc96', '[\"*\"]', '2024-11-22 14:57:55', NULL, '2024-11-22 14:57:09', '2024-11-22 14:57:55'),
(124, 'App\\Models\\Clients', 9, 'ClientToken', '230b48ca75d636d5bdec304166443f395b19bf3a9e3d46df997427620478d307', '[\"*\"]', '2024-11-25 18:41:18', NULL, '2024-11-25 18:41:11', '2024-11-25 18:41:18'),
(125, 'App\\Models\\Clients', 9, 'ClientToken', '40531a5a1e21a17becd5cd2cc3f1e950e3429e6b48f759a82dabc51e6048a21a', '[\"*\"]', '2024-11-25 20:53:32', NULL, '2024-11-25 18:41:12', '2024-11-25 20:53:32'),
(126, 'App\\Models\\Clients', 9, 'ClientToken', 'f6c0bcf8bc73a7273de9374ea033507bf2ad3ed44b702dd01a03ab2170dd4c78', '[\"*\"]', '2024-12-18 14:47:59', NULL, '2024-12-18 14:47:23', '2024-12-18 14:47:59'),
(127, 'App\\Models\\Clients', 9, 'ClientToken', 'e920c8f0525f47432582a15e12b4f9607f09971339c2ea0021658a8c1a0dd1bc', '[\"*\"]', NULL, NULL, '2024-12-18 14:52:24', '2024-12-18 14:52:24'),
(128, 'App\\Models\\Clients', 9, 'ClientToken', '842c619c6beb1c94ac48c6aa2a747863887be5ee6e50d96abd570a49f161da00', '[\"*\"]', '2024-12-18 14:52:33', NULL, '2024-12-18 14:52:24', '2024-12-18 14:52:33'),
(129, 'App\\Models\\Clients', 9, 'ClientToken', 'e7df4d861a06672a3e1c744ebc8490f30ac8c8dad3aad1a645c54c3cb8b98de7', '[\"*\"]', '2024-12-18 15:10:41', NULL, '2024-12-18 14:59:01', '2024-12-18 15:10:41'),
(130, 'App\\Models\\Clients', 9, 'ClientToken', '2d78e4f6929013af158fd3fe7acde26bb0261e0c8c5bcad26fa80b8bdb253abc', '[\"*\"]', '2024-12-18 15:42:47', NULL, '2024-12-18 15:27:23', '2024-12-18 15:42:47'),
(131, 'App\\Models\\Clients', 9, 'ClientToken', 'a7ab6ee18a04675900842a561fba9a9d6a56e2c9ee93083b0b26da9d6390bc72', '[\"*\"]', '2024-12-18 15:46:47', NULL, '2024-12-18 15:43:25', '2024-12-18 15:46:47'),
(132, 'App\\Models\\Clients', 9, 'ClientToken', '94be9cb5bee98eab38da10b44a71fa8239ac88bc22556162a6d6d270b1c16efa', '[\"*\"]', '2024-12-18 15:50:47', NULL, '2024-12-18 15:50:38', '2024-12-18 15:50:47'),
(133, 'App\\Models\\Clients', 11, 'ClientToken', '0e3d3b2aa0895e2dfb178f7b340c66278995f1b6a832dfdbca64a2f6eaf31393', '[\"*\"]', NULL, NULL, '2024-12-18 16:43:23', '2024-12-18 16:43:23'),
(134, 'App\\Models\\Clients', 11, 'ClientToken', '081ed95656f30d43fb26307172e89f23c9e4a479d73b1d13821064be4d841271', '[\"*\"]', '2024-12-18 16:57:02', NULL, '2024-12-18 16:43:33', '2024-12-18 16:57:02'),
(135, 'App\\Models\\Clients', 9, 'ClientToken', 'af775e445f31cd19371754dbde64f2ed2e4ef9eecf9f44cc546e7442d38ff18a', '[\"*\"]', NULL, NULL, '2024-12-20 00:32:05', '2024-12-20 00:32:05'),
(136, 'App\\Models\\Clients', 9, 'ClientToken', '214886d7cef5ba3fe71e07c8cf4e86d26b4fc8630d4ebd542f3cd23650951725', '[\"*\"]', '2024-12-20 00:40:55', NULL, '2024-12-20 00:32:06', '2024-12-20 00:40:55'),
(137, 'App\\Models\\Clients', 9, 'ClientToken', 'ef4dc50144c86a05e3262d8d43507a9e9f3170dca04e1724a6341f9f0492d365', '[\"*\"]', '2024-12-20 00:47:24', NULL, '2024-12-20 00:41:33', '2024-12-20 00:47:24'),
(138, 'App\\Models\\Clients', 9, 'ClientToken', '8341b2151b4f09644fe82f2fd3fc9e244b219288f25293eacdf9018a563d83e7', '[\"*\"]', '2024-12-20 12:50:23', NULL, '2024-12-20 00:51:30', '2024-12-20 12:50:23'),
(139, 'App\\Models\\Clients', 9, 'ClientToken', '79763eb999518b11db482021040dcaf55cfbdacfa8ad715d7ea2994758af8774', '[\"*\"]', '2024-12-20 13:34:36', NULL, '2024-12-20 13:33:56', '2024-12-20 13:34:36'),
(140, 'App\\Models\\Clients', 9, 'ClientToken', '4890d68ad669e8df1395c0115400979a6b5c3bc36e4937e0cfc1f6e74d6b02e7', '[\"*\"]', '2024-12-20 14:17:38', NULL, '2024-12-20 14:17:08', '2024-12-20 14:17:38'),
(141, 'App\\Models\\Clients', 9, 'ClientToken', '997db731acf5a5e4e661fad1c89a85c4442c9ec7e80b049295f2d48fc869039f', '[\"*\"]', '2024-12-20 14:48:12', NULL, '2024-12-20 14:21:32', '2024-12-20 14:48:12'),
(142, 'App\\Models\\Clients', 9, 'ClientToken', 'b70933a527be9a5c15548762fecd96bf46084d097bd840a3e2d45b38f27f1c6e', '[\"*\"]', '2024-12-20 16:59:42', NULL, '2024-12-20 15:26:24', '2024-12-20 16:59:42'),
(143, 'App\\Models\\Clients', 12, 'ClientToken', '60277896eec87174a49a0a98651cf34c516db870bbf535109a6a74ed281ebd8f', '[\"*\"]', NULL, NULL, '2024-12-21 18:26:21', '2024-12-21 18:26:21'),
(144, 'App\\Models\\Clients', 12, 'ClientToken', 'a93373efcd36020b4ccdbf3a3c9a378e334aa53bca19365ba4f9d9a6b8e4c58c', '[\"*\"]', '2024-12-21 18:27:11', NULL, '2024-12-21 18:26:33', '2024-12-21 18:27:11'),
(145, 'App\\Models\\Clients', 12, 'ClientToken', '4e9c6b4ca1c3fa873eeb3cdf2daf0f616dd091cafb6da24ab1ffc1b8cc231561', '[\"*\"]', '2024-12-21 18:33:31', NULL, '2024-12-21 18:32:54', '2024-12-21 18:33:31'),
(146, 'App\\Models\\Clients', 12, 'ClientToken', 'deac70f7ca78adf5d52874f0021593c7973a28ed401442aad5c843f62407fff8', '[\"*\"]', '2024-12-21 18:48:26', NULL, '2024-12-21 18:33:59', '2024-12-21 18:48:26'),
(147, 'App\\Models\\Clients', 11, 'ClientToken', 'f17f60222a36e53280653f0760ca0d3daccff3ef3d931da72180e2e4e4e3207b', '[\"*\"]', '2024-12-22 00:56:00', NULL, '2024-12-22 00:54:54', '2024-12-22 00:56:00'),
(148, 'App\\Models\\Clients', 9, 'ClientToken', '77167668f3ee6209997e1b5c27d8f04e0fe1297caefc3e3cb15804d15dd3903d', '[\"*\"]', NULL, NULL, '2024-12-22 17:05:42', '2024-12-22 17:05:42'),
(149, 'App\\Models\\Clients', 9, 'ClientToken', '3d547cb9f29c4c86bef2c9b7b2b5772c705a6d353de6539797299a26fb563490', '[\"*\"]', '2024-12-22 17:05:46', NULL, '2024-12-22 17:05:43', '2024-12-22 17:05:46'),
(150, 'App\\Models\\Clients', 9, 'ClientToken', '9cce49e928bbd3710256788a3b34b12c5173f0d6d56748945736485d37f83d64', '[\"*\"]', NULL, NULL, '2024-12-22 17:08:20', '2024-12-22 17:08:20'),
(151, 'App\\Models\\Clients', 9, 'ClientToken', 'fafefcb72763cc6b261121d73217fa27f612e1e55d6bc31008f6000734661652', '[\"*\"]', '2024-12-22 17:20:22', NULL, '2024-12-22 17:20:19', '2024-12-22 17:20:22'),
(152, 'App\\Models\\Clients', 9, 'ClientToken', 'ff15d1abd0d342ddc27938984d1eb4345e59665e689f68a6ded121a40772efd8', '[\"*\"]', '2024-12-22 17:23:32', NULL, '2024-12-22 17:21:13', '2024-12-22 17:23:32'),
(153, 'App\\Models\\Clients', 9, 'ClientToken', '0ada767ef5be81412cfecfbfa607554ce981d9d5aee1d0a56a3dbeba601f3d96', '[\"*\"]', '2024-12-22 17:29:00', NULL, '2024-12-22 17:23:57', '2024-12-22 17:29:00'),
(154, 'App\\Models\\Clients', 9, 'ClientToken', '59ed738f28a4b9b2947d1aa080a7f2454c8932046648d29d1372ce4b0bc12a13', '[\"*\"]', '2024-12-22 18:30:44', NULL, '2024-12-22 18:29:05', '2024-12-22 18:30:44'),
(155, 'App\\Models\\Clients', 9, 'ClientToken', '124cc17cec9d0bbf7fc84defb847097f63b3074e516152f97e4b6e7750b20cfa', '[\"*\"]', '2024-12-22 19:00:22', NULL, '2024-12-22 18:33:33', '2024-12-22 19:00:22'),
(156, 'App\\Models\\Clients', 9, 'ClientToken', '5e8fa3946be5074231bed6977f5b102ff649de4391b4ec77875b39d66831cee4', '[\"*\"]', '2024-12-22 19:19:43', NULL, '2024-12-22 19:02:54', '2024-12-22 19:19:43'),
(157, 'App\\Models\\Clients', 9, 'ClientToken', '00e36ab0ef828a64c73ee1c0eb4a352180ee3d7dd3786b29ff0c4c5fcdfbbbb7', '[\"*\"]', '2024-12-22 19:34:15', NULL, '2024-12-22 19:20:22', '2024-12-22 19:34:15'),
(158, 'App\\Models\\Clients', 9, 'ClientToken', '1fb7e58118b4e1f53355010d62953f358ba31fc2ab79b694e8ffbaab2f1f7da9', '[\"*\"]', '2024-12-22 19:35:17', NULL, '2024-12-22 19:35:12', '2024-12-22 19:35:17'),
(159, 'App\\Models\\Clients', 9, 'ClientToken', '1ea454449dac0462ffb41bc99d7ca03ebc66f99a800596c2392c846c25b2d94c', '[\"*\"]', '2024-12-22 20:49:04', NULL, '2024-12-22 20:24:22', '2024-12-22 20:49:04');

-- --------------------------------------------------------

--
-- Structure de la table `robes`
--

CREATE TABLE `robes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `prix` text DEFAULT NULL,
  `date` datetime NOT NULL,
  `imagePath` varchar(255) DEFAULT NULL,
  `colId` bigint(20) UNSIGNED NOT NULL,
  `coupeId` bigint(20) UNSIGNED NOT NULL,
  `mancheId` bigint(20) UNSIGNED NOT NULL,
  `jupeId` bigint(20) UNSIGNED NOT NULL,
  `tissuId` bigint(20) UNSIGNED NOT NULL,
  `clientId` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `robes`
--

INSERT INTO `robes` (`id`, `nom`, `prix`, `date`, `imagePath`, `colId`, `coupeId`, `mancheId`, `jupeId`, `tissuId`, `clientId`, `created_at`, `updated_at`) VALUES
(24, 'topdress_colcarre_sansmanches_jupevolant_wax1', '100', '2024-12-20 00:54:05', NULL, 2, 1, 1, 1, 1, 9, '2024-12-20 00:54:05', '2024-12-20 00:54:05'),
(25, 'tubedress_colrond_sansmanches_jupecrayon_wax1', '100', '2024-12-20 15:26:44', NULL, 3, 2, 1, 3, 1, 9, '2024-12-20 15:26:44', '2024-12-20 15:26:44'),
(26, 'topdress_colv_sansmanches_jupevolant_wax2', '100', '2024-12-21 18:27:02', NULL, 5, 1, 1, 1, 2, 12, '2024-12-21 18:27:02', '2024-12-21 18:27:02');

-- --------------------------------------------------------

--
-- Structure de la table `tissues`
--

CREATE TABLE `tissues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `imagePath` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tissues`
--

INSERT INTO `tissues` (`id`, `nom`, `imagePath`, `description`, `created_at`, `updated_at`) VALUES
(1, 'wax1', 'imagesTissu/1W34vj11dlCsUbLH6GSgtKIT2fu7KYRcIG5qnfHm.jpg', 'wax1', '2024-11-18 23:00:26', '2024-11-18 23:00:26'),
(2, 'wax2', 'imagesTissu/BWWTWKha46mjeIBvg37SboiJcNRVUDUtS3CuoECr.jpg', 'wax2', '2024-11-18 23:00:47', '2024-11-20 13:57:06');

-- --------------------------------------------------------

--
-- Structure de la table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('Entrée','Sortie') NOT NULL,
  `montant` double NOT NULL,
  `date` datetime NOT NULL,
  `artisan_id` bigint(20) UNSIGNED NOT NULL,
  `paiement_id` bigint(20) UNSIGNED NOT NULL,
  `comptesequestre_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Index pour la table `artisans`
--
ALTER TABLE `artisans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `artisans_email_unique` (`email`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_email_unique` (`email`);

--
-- Index pour la table `cols`
--
ALTER TABLE `cols`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commandes_clientid_foreign` (`clientId`),
  ADD KEY `commandes_artisanid_foreign` (`artisanId`);

--
-- Index pour la table `commande_articles`
--
ALTER TABLE `commande_articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commande_articles_robeid_foreign` (`robeId`),
  ADD KEY `commande_articles_commandeid_foreign` (`commandeId`);

--
-- Index pour la table `comptesequestres`
--
ALTER TABLE `comptesequestres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `coupes`
--
ALTER TABLE `coupes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `jupes`
--
ALTER TABLE `jupes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `livraisons`
--
ALTER TABLE `livraisons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `livraisons_commande_id_foreign` (`commande_id`);

--
-- Index pour la table `manches`
--
ALTER TABLE `manches`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `paiements`
--
ALTER TABLE `paiements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paiements_commande_id_foreign` (`commande_id`),
  ADD KEY `paiements_client_id_foreign` (`client_id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `robes`
--
ALTER TABLE `robes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `robes_colid_foreign` (`colId`),
  ADD KEY `robes_coupeid_foreign` (`coupeId`),
  ADD KEY `robes_mancheid_foreign` (`mancheId`),
  ADD KEY `robes_jupeid_foreign` (`jupeId`),
  ADD KEY `robes_tissuid_foreign` (`tissuId`),
  ADD KEY `robes_clientid_foreign` (`clientId`);

--
-- Index pour la table `tissues`
--
ALTER TABLE `tissues`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_artisan_id_foreign` (`artisan_id`),
  ADD KEY `transactions_paiement_id_foreign` (`paiement_id`),
  ADD KEY `transactions_comptesequestre_id_foreign` (`comptesequestre_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `artisans`
--
ALTER TABLE `artisans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `cols`
--
ALTER TABLE `cols`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `commandes`
--
ALTER TABLE `commandes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `commande_articles`
--
ALTER TABLE `commande_articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `comptesequestres`
--
ALTER TABLE `comptesequestres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `coupes`
--
ALTER TABLE `coupes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jupes`
--
ALTER TABLE `jupes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `livraisons`
--
ALTER TABLE `livraisons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `manches`
--
ALTER TABLE `manches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `paiements`
--
ALTER TABLE `paiements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT pour la table `robes`
--
ALTER TABLE `robes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `tissues`
--
ALTER TABLE `tissues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD CONSTRAINT `commandes_artisanid_foreign` FOREIGN KEY (`artisanId`) REFERENCES `artisans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `commandes_clientid_foreign` FOREIGN KEY (`clientId`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `commande_articles`
--
ALTER TABLE `commande_articles`
  ADD CONSTRAINT `commande_articles_commandeid_foreign` FOREIGN KEY (`commandeId`) REFERENCES `commandes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `commande_articles_robeid_foreign` FOREIGN KEY (`robeId`) REFERENCES `robes` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `livraisons`
--
ALTER TABLE `livraisons`
  ADD CONSTRAINT `livraisons_commande_id_foreign` FOREIGN KEY (`commande_id`) REFERENCES `commandes` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `paiements`
--
ALTER TABLE `paiements`
  ADD CONSTRAINT `paiements_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `paiements_commande_id_foreign` FOREIGN KEY (`commande_id`) REFERENCES `commandes` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `robes`
--
ALTER TABLE `robes`
  ADD CONSTRAINT `robes_clientid_foreign` FOREIGN KEY (`clientId`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `robes_colid_foreign` FOREIGN KEY (`colId`) REFERENCES `cols` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `robes_coupeid_foreign` FOREIGN KEY (`coupeId`) REFERENCES `coupes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `robes_jupeid_foreign` FOREIGN KEY (`jupeId`) REFERENCES `jupes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `robes_mancheid_foreign` FOREIGN KEY (`mancheId`) REFERENCES `manches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `robes_tissuid_foreign` FOREIGN KEY (`tissuId`) REFERENCES `tissues` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_artisan_id_foreign` FOREIGN KEY (`artisan_id`) REFERENCES `artisans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_comptesequestre_id_foreign` FOREIGN KEY (`comptesequestre_id`) REFERENCES `comptesequestres` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_paiement_id_foreign` FOREIGN KEY (`paiement_id`) REFERENCES `paiements` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
