-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 02, 2025 at 05:34 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kaido_kel1`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Dolores perferendis architecto optio.', 'Theo Bahringer', 'At vel qui quo. Odit commodi aut est autem non. Non dolore repellendus doloribus accusantium non mollitia omnis eum. Distinctio cupiditate a qui quas cupiditate libero veritatis.', '2025-05-28 23:55:13', '2025-05-28 23:55:13'),
(2, 'Consequuntur beatae.', 'Jayson Osinski', 'Et consequatur corrupti tenetur est praesentium molestiae est ut. Expedita laboriosam voluptatem quas consectetur. Facere facilis maiores sed sint quia.', '2025-05-28 23:55:13', '2025-05-28 23:55:13'),
(3, 'Molestiae tenetur quam commodi.', 'Prof. Brett Cassin V', 'Sed quibusdam reprehenderit rerum harum libero consectetur. Facere numquam ut officia tempora ex. Neque excepturi quisquam inventore.', '2025-05-28 23:55:13', '2025-05-28 23:55:13'),
(4, 'Rerum vero iure.', 'Jade Nicolas', 'Repudiandae et in laborum. Voluptates suscipit tempore voluptatem. Non molestiae illum ad eius saepe est repudiandae. Ad qui dignissimos aperiam labore temporibus velit assumenda amet. Sint modi impedit exercitationem labore doloribus non quae nesciunt.', '2025-05-28 23:55:13', '2025-05-28 23:55:13'),
(5, 'Quos dolorum voluptatem.', 'Simone Conn', 'Minima consectetur impedit vero. Omnis odio nam occaecati rerum et. Animi accusamus quaerat aut velit sequi aut dolore delectus. Voluptatem est corporis numquam ut ipsa.', '2025-05-28 23:55:13', '2025-05-28 23:55:13');

-- --------------------------------------------------------

--
-- Table structure for table `breezy_sessions`
--

CREATE TABLE `breezy_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `authenticatable_type` varchar(255) NOT NULL,
  `authenticatable_id` bigint(20) UNSIGNED NOT NULL,
  `panel_id` varchar(255) DEFAULT NULL,
  `guard` varchar(255) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('1574bddb75c78a6fd2251d61e2993b5146201319', 'i:1;', 1748619302),
('1574bddb75c78a6fd2251d61e2993b5146201319:timer', 'i:1748619302;', 1748619302),
('17ba0791499db908433b80f37c5fbc89b870084b', 'i:1;', 1748619456),
('17ba0791499db908433b80f37c5fbc89b870084b:timer', 'i:1748619456;', 1748619456),
('livewire-rate-limiter:59d6ad626907b5a0341aba51c3754cd265bffec5', 'i:1;', 1748619378),
('livewire-rate-limiter:59d6ad626907b5a0341aba51c3754cd265bffec5:timer', 'i:1748619378;', 1748619378),
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:110:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:9:\"view_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:13:\"view_any_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:11:\"create_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:11:\"update_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:12:\"restore_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:16:\"restore_any_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:14:\"replicate_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:12:\"reorder_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:11:\"delete_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:15:\"delete_any_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:17:\"force_delete_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:21:\"force_delete_any_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:16:\"book:create_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:16:\"book:update_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:16:\"book:delete_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:20:\"book:pagination_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:16:\"book:detail_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:12:\"view_pasiens\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:16:\"view_any_pasiens\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:14:\"create_pasiens\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:14:\"update_pasiens\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:15:\"restore_pasiens\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:19:\"restore_any_pasiens\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:17:\"replicate_pasiens\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:15:\"reorder_pasiens\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:14:\"delete_pasiens\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:18:\"delete_any_pasiens\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:20:\"force_delete_pasiens\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:24:\"force_delete_any_pasiens\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:16:\"view_pendaftaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:20:\"view_any_pendaftaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:18:\"create_pendaftaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:4;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:18:\"update_pendaftaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:19:\"restore_pendaftaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:23:\"restore_any_pendaftaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:21:\"replicate_pendaftaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:19:\"reorder_pendaftaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:18:\"delete_pendaftaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:4;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:22:\"delete_any_pendaftaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:4;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:24:\"force_delete_pendaftaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:4;}}i:40;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:28:\"force_delete_any_pendaftaran\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:4;}}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:9:\"view_poli\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:42;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:13:\"view_any_poli\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:11:\"create_poli\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:44;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:11:\"update_poli\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:45;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:12:\"restore_poli\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:46;a:4:{s:1:\"a\";i:47;s:1:\"b\";s:16:\"restore_any_poli\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:47;a:4:{s:1:\"a\";i:48;s:1:\"b\";s:14:\"replicate_poli\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:48;a:4:{s:1:\"a\";i:49;s:1:\"b\";s:12:\"reorder_poli\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:49;a:4:{s:1:\"a\";i:50;s:1:\"b\";s:11:\"delete_poli\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:50;a:4:{s:1:\"a\";i:51;s:1:\"b\";s:15:\"delete_any_poli\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:51;a:4:{s:1:\"a\";i:52;s:1:\"b\";s:17:\"force_delete_poli\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:52;a:4:{s:1:\"a\";i:53;s:1:\"b\";s:21:\"force_delete_any_poli\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:53;a:4:{s:1:\"a\";i:54;s:1:\"b\";s:9:\"view_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:54;a:4:{s:1:\"a\";i:55;s:1:\"b\";s:13:\"view_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:55;a:4:{s:1:\"a\";i:56;s:1:\"b\";s:11:\"create_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:56;a:4:{s:1:\"a\";i:57;s:1:\"b\";s:11:\"update_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:57;a:4:{s:1:\"a\";i:58;s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:58;a:4:{s:1:\"a\";i:59;s:1:\"b\";s:15:\"delete_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:59;a:4:{s:1:\"a\";i:60;s:1:\"b\";s:10:\"view_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:60;a:4:{s:1:\"a\";i:61;s:1:\"b\";s:14:\"view_any_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:61;a:4:{s:1:\"a\";i:62;s:1:\"b\";s:12:\"create_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:62;a:4:{s:1:\"a\";i:63;s:1:\"b\";s:12:\"update_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:63;a:4:{s:1:\"a\";i:64;s:1:\"b\";s:13:\"restore_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:64;a:4:{s:1:\"a\";i:65;s:1:\"b\";s:17:\"restore_any_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:65;a:4:{s:1:\"a\";i:66;s:1:\"b\";s:15:\"replicate_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:66;a:4:{s:1:\"a\";i:67;s:1:\"b\";s:13:\"reorder_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:67;a:4:{s:1:\"a\";i:68;s:1:\"b\";s:12:\"delete_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:68;a:4:{s:1:\"a\";i:69;s:1:\"b\";s:16:\"delete_any_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:69;a:4:{s:1:\"a\";i:70;s:1:\"b\";s:18:\"force_delete_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:70;a:4:{s:1:\"a\";i:71;s:1:\"b\";s:22:\"force_delete_any_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:71;a:4:{s:1:\"a\";i:72;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:72;a:4:{s:1:\"a\";i:73;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:73;a:4:{s:1:\"a\";i:74;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:74;a:4:{s:1:\"a\";i:75;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:75;a:4:{s:1:\"a\";i:76;s:1:\"b\";s:12:\"restore_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:76;a:4:{s:1:\"a\";i:77;s:1:\"b\";s:16:\"restore_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:77;a:4:{s:1:\"a\";i:78;s:1:\"b\";s:14:\"replicate_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:78;a:4:{s:1:\"a\";i:79;s:1:\"b\";s:12:\"reorder_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:79;a:4:{s:1:\"a\";i:80;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:80;a:4:{s:1:\"a\";i:81;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:81;a:4:{s:1:\"a\";i:82;s:1:\"b\";s:17:\"force_delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:82;a:4:{s:1:\"a\";i:83;s:1:\"b\";s:21:\"force_delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:83;a:4:{s:1:\"a\";i:84;s:1:\"b\";s:18:\"page_ManageSetting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:84;a:4:{s:1:\"a\";i:85;s:1:\"b\";s:11:\"page_Themes\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:85;a:4:{s:1:\"a\";i:86;s:1:\"b\";s:18:\"page_MyProfilePage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:86;a:4:{s:1:\"a\";i:87;s:1:\"b\";s:11:\"view_dokter\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:87;a:4:{s:1:\"a\";i:88;s:1:\"b\";s:12:\"view_perawat\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:88;a:4:{s:1:\"a\";i:89;s:1:\"b\";s:16:\"view_any_perawat\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:89;a:4:{s:1:\"a\";i:90;s:1:\"b\";s:14:\"create_perawat\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:90;a:4:{s:1:\"a\";i:91;s:1:\"b\";s:14:\"update_perawat\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:91;a:4:{s:1:\"a\";i:92;s:1:\"b\";s:15:\"restore_perawat\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:92;a:4:{s:1:\"a\";i:93;s:1:\"b\";s:19:\"restore_any_perawat\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:93;a:4:{s:1:\"a\";i:94;s:1:\"b\";s:17:\"replicate_perawat\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:94;a:4:{s:1:\"a\";i:95;s:1:\"b\";s:15:\"reorder_perawat\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:95;a:4:{s:1:\"a\";i:96;s:1:\"b\";s:14:\"delete_perawat\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:96;a:4:{s:1:\"a\";i:97;s:1:\"b\";s:18:\"delete_any_perawat\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:97;a:4:{s:1:\"a\";i:98;s:1:\"b\";s:20:\"force_delete_perawat\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:98;a:4:{s:1:\"a\";i:99;s:1:\"b\";s:24:\"force_delete_any_perawat\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:99;a:4:{s:1:\"a\";i:100;s:1:\"b\";s:15:\"view_any_dokter\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:100;a:4:{s:1:\"a\";i:101;s:1:\"b\";s:13:\"create_dokter\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:101;a:4:{s:1:\"a\";i:102;s:1:\"b\";s:13:\"update_dokter\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:102;a:4:{s:1:\"a\";i:103;s:1:\"b\";s:14:\"restore_dokter\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:103;a:4:{s:1:\"a\";i:104;s:1:\"b\";s:18:\"restore_any_dokter\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:104;a:4:{s:1:\"a\";i:105;s:1:\"b\";s:16:\"replicate_dokter\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:105;a:4:{s:1:\"a\";i:106;s:1:\"b\";s:14:\"reorder_dokter\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:106;a:4:{s:1:\"a\";i:107;s:1:\"b\";s:13:\"delete_dokter\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:107;a:4:{s:1:\"a\";i:108;s:1:\"b\";s:17:\"delete_any_dokter\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:108;a:4:{s:1:\"a\";i:109;s:1:\"b\";s:19:\"force_delete_dokter\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:109;a:4:{s:1:\"a\";i:110;s:1:\"b\";s:23:\"force_delete_any_dokter\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:4:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:4;s:1:\"b\";s:7:\"Petugas\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:7:\"Perawat\";s:1:\"c\";s:3:\"web\";}i:3;a:3:{s:1:\"a\";i:3;s:1:\"b\";s:6:\"Dokter\";s:1:\"c\";s:3:\"web\";}}}', 1748921495),
('theme_color', 's:5:\"amber\";', 2063979273);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Luisa McClure', '2025-05-28 23:55:13', '2025-05-28 23:55:13'),
(2, 'Mr. Howard Schneider PhD', '2025-05-28 23:55:13', '2025-05-28 23:55:13'),
(3, 'Deron Hane', '2025-05-28 23:55:13', '2025-05-28 23:55:13'),
(4, 'Prof. Janie Berge DDS', '2025-05-28 23:55:13', '2025-05-28 23:55:13'),
(5, 'Cydney Sipes DDS', '2025-05-28 23:55:13', '2025-05-28 23:55:13'),
(6, 'Pierre Schiller', '2025-05-28 23:55:13', '2025-05-28 23:55:13'),
(7, 'Deondre Blanda', '2025-05-28 23:55:13', '2025-05-28 23:55:13'),
(8, 'Prof. Ronaldo Dickens', '2025-05-28 23:55:13', '2025-05-28 23:55:13'),
(9, 'Katrine Prohaska', '2025-05-28 23:55:13', '2025-05-28 23:55:13'),
(10, 'Destiney Sawayn', '2025-05-28 23:55:13', '2025-05-28 23:55:13');

-- --------------------------------------------------------

--
-- Table structure for table `dokters`
--

CREATE TABLE `dokters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_dokter` varchar(100) NOT NULL,
  `no_hp_dokter` varchar(13) NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dokters`
--

INSERT INTO `dokters` (`id`, `nama_dokter`, `no_hp_dokter`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 'Dr Angelina', '085248162500', 12, '2025-05-29 00:13:14', '2025-05-29 00:13:14'),
(2, 'Dr. Aqila', '085248162500', 13, '2025-05-29 00:13:36', '2025-05-29 00:13:36'),
(3, 'Dr. Saifullah', '085248162500', 17, '2025-05-30 07:15:26', '2025-05-30 07:15:26'),
(4, 'Dr. Rizki', '085248162500', 18, '2025-05-30 07:15:49', '2025-05-30 07:15:49'),
(5, 'Dr. Sifa', '085248162500', 19, '2025-05-30 07:16:16', '2025-05-30 07:16:16');

-- --------------------------------------------------------

--
-- Table structure for table `exports`
--

CREATE TABLE `exports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `file_disk` varchar(255) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `exporter` varchar(255) NOT NULL,
  `processed_rows` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_rows` int(10) UNSIGNED NOT NULL,
  `successful_rows` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_import_rows`
--

CREATE TABLE `failed_import_rows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`data`)),
  `import_id` bigint(20) UNSIGNED NOT NULL,
  `validation_error` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `imports`
--

CREATE TABLE `imports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `importer` varchar(255) NOT NULL,
  `processed_rows` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_rows` int(10) UNSIGNED NOT NULL,
  `successful_rows` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `disk` varchar(255) NOT NULL,
  `conversions_disk` varchar(255) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2022_12_14_083707_create_settings_table', 1),
(5, '2024_12_04_025120_create_media_table', 1),
(6, '2024_12_04_041953_create_breezy_sessions_table', 1),
(7, '2025_01_01_120813_create_books_table', 1),
(8, '2025_01_02_064819_create_permission_tables', 1),
(9, '2025_01_02_225927_add_avatar_url_column_to_users_table', 1),
(10, '2025_01_03_114929_create_personal_access_tokens_table', 1),
(11, '2025_01_04_125650_create_posts_table', 1),
(12, '2025_01_08_152510_create_kaido_settings', 1),
(13, '2025_01_08_233142_create_socialite_users_table', 1),
(14, '2025_01_09_225908_update_user_table_make_password_column_nullable', 1),
(15, '2025_01_12_031340_create_notifications_table', 1),
(16, '2025_01_12_031357_create_imports_table', 1),
(17, '2025_01_12_031358_create_exports_table', 1),
(18, '2025_01_12_031359_create_failed_import_rows_table', 1),
(19, '2025_01_12_091355_create_contacts_table', 1),
(20, '2025_01_31_020024_add_themes_settings_to_users_table', 1),
(21, '2025_05_28_231814_create_pasiens_table', 1),
(22, '2025_05_28_233230_create_dokters_table', 1),
(23, '2025_05_28_233231_create_perawats_table', 1),
(24, '2025_05_28_233232_create_polis_table', 1),
(25, '2025_05_28_233235_create_pendaftarans_table', 1),
(26, '2025_05_29_082349_create_pendaftarans_table', 2),
(27, '2025_05_29_082616_create_pendaftarans_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 15),
(2, 'App\\Models\\User', 16),
(2, 'App\\Models\\User', 20),
(2, 'App\\Models\\User', 21),
(2, 'App\\Models\\User', 22),
(3, 'App\\Models\\User', 12),
(3, 'App\\Models\\User', 13),
(3, 'App\\Models\\User', 17),
(3, 'App\\Models\\User', 18),
(3, 'App\\Models\\User', 19),
(4, 'App\\Models\\User', 14),
(4, 'App\\Models\\User', 23);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`data`)),
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pasiens`
--

CREATE TABLE `pasiens` (
  `rm` int(10) UNSIGNED NOT NULL,
  `nik` bigint(20) UNSIGNED NOT NULL,
  `nama_pasien` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `agama` char(255) NOT NULL,
  `kabupaten` char(255) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `jns_kelamin` enum('pria','perempuan') NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_hp_pasien` char(15) NOT NULL,
  `email_pasien` varchar(20) NOT NULL,
  `gol_darah` char(3) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pasiens`
--

INSERT INTO `pasiens` (`rm`, `nik`, `nama_pasien`, `tgl_lahir`, `agama`, `kabupaten`, `pekerjaan`, `jns_kelamin`, `alamat`, `no_hp_pasien`, `email_pasien`, `gol_darah`, `created_at`, `updated_at`) VALUES
(10, 1234567890123456, 'Ridho Ansari', '2010-06-08', 'Islam', 'Kota Banjarbaru', 'Pegawai Negeri Sipil', 'pria', 'Jl. Manggis blok C no.5', '085248162500', 'ridho@gmail.com', 'B', '2025-05-28 23:59:13', '2025-05-28 23:59:13'),
(21, 1234567890123467, 'Ali Maulana', '1990-05-12', 'Islam', 'Kabupaten Banjar', 'Guru', 'pria', 'Jl. Cemara No. 1', '081234567891', 'ali@mail.com', 'O', '2025-05-30 15:23:15', '2025-05-30 15:23:15'),
(22, 1234567890123468, 'Fitri Ayu', '1988-07-22', 'Kristen', 'Kota Banjarmasin', 'Wiraswasta', 'perempuan', 'Jl. Nusa Indah', '082134567892', 'fitri@mail.com', 'A', '2025-05-30 15:23:15', '2025-05-30 15:23:15'),
(23, 1234567890123469, 'Bayu Prasetyo', '1995-03-15', 'Hindu', 'Kabupaten Hulu Sungai Selatan', 'Mahasiswa', 'pria', 'Jl. Anggrek No. 8', '083134567893', 'bayu@mail.com', 'AB', '2025-05-30 15:23:15', '2025-05-30 15:23:15'),
(24, 1234567890123470, 'Siti Nurhaliza', '1992-08-10', 'Islam', 'Kabupaten Barito Kuala', 'Ibu Rumah Tangga', 'perempuan', 'Jl. Dahlia No. 3', '084234567894', 'siti@mail.com', 'B', '2025-05-30 15:23:15', '2025-05-30 15:23:15'),
(25, 1234567890123471, 'Rizky Fadillah', '1993-12-30', 'Katolik', 'Kabupaten Tapin', 'Programmer', 'pria', 'Jl. Kenanga No. 4', '085334567895', 'rizky@mail.com', 'O', '2025-05-30 15:23:15', '2025-05-30 15:23:15'),
(26, 1234567890123472, 'Dewi Larasati', '1991-09-21', 'Buddha', 'Kota Banjarbaru', 'Perawat', 'perempuan', 'Jl. Cendana No. 6', '086434567896', 'dewi@mail.com', 'A', '2025-05-30 15:23:15', '2025-05-30 15:23:15'),
(27, 1234567890123473, 'Teguh Santoso', '1985-04-01', 'Islam', 'Kabupaten Tanah Laut', 'Supir', 'pria', 'Jl. Mawar No. 9', '087534567897', 'teguh@mail.com', 'B', '2025-05-30 15:23:15', '2025-05-30 15:23:15'),
(28, 1234567890123474, 'Anisa Rahma', '1996-11-17', 'Konghucu', 'Kabupaten Hulu Sungai Tengah', 'Dokter', 'perempuan', 'Jl. Belimbing No. 10', '088634567898', 'anisa@mail.com', 'AB', '2025-05-30 15:23:15', '2025-05-30 15:23:15'),
(29, 1234567890123475, 'Yusuf Maulana', '1990-01-25', 'Islam', 'Kabupaten Tanah Bumbu', 'Montir', 'pria', 'Jl. Sirsak No. 7', '089734567899', 'yusuf@mail.com', 'O', '2025-05-30 15:23:15', '2025-05-30 15:23:15'),
(30, 1234567890123476, 'Nadia Amelia', '1987-06-05', 'Lainnya', 'Kabupaten Kotabaru', 'Apoteker', 'perempuan', 'Jl. Jambu No. 11', '081834567800', 'nadia@mail.com', 'B', '2025-05-30 15:23:15', '2025-05-30 15:23:15');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pendaftarans`
--

CREATE TABLE `pendaftarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rm` int(10) UNSIGNED NOT NULL,
  `id_poli` bigint(20) UNSIGNED NOT NULL,
  `tgl_kunjungan` datetime NOT NULL,
  `no_antrian` smallint(6) NOT NULL,
  `status` char(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pendaftarans`
--

INSERT INTO `pendaftarans` (`id`, `rm`, `id_poli`, `tgl_kunjungan`, `no_antrian`, `status`, `created_at`, `updated_at`) VALUES
(1, 10, 1, '2025-05-30 00:00:00', 1, 'Menunggu', '2025-05-29 00:30:03', '2025-05-29 00:30:03'),
(2, 10, 2, '2025-05-30 00:00:00', 1, 'Menunggu', '2025-05-29 23:57:06', '2025-05-29 23:57:06'),
(3, 21, 1, '2025-06-01 08:00:00', 1, 'Menunggu', '2025-05-30 15:28:42', '2025-05-30 15:28:42'),
(4, 22, 2, '2025-06-01 08:10:00', 2, 'Menunggu', '2025-05-30 15:28:42', '2025-05-30 15:28:42'),
(5, 23, 3, '2025-06-01 08:20:00', 3, 'Menunggu', '2025-05-30 15:28:42', '2025-05-30 15:28:42'),
(6, 24, 1, '2025-06-01 08:30:00', 4, 'Menunggu', '2025-05-30 15:28:42', '2025-05-30 15:28:42'),
(7, 25, 2, '2025-06-01 08:40:00', 5, 'Menunggu', '2025-05-30 15:28:42', '2025-05-30 15:28:42'),
(8, 26, 3, '2025-06-01 08:50:00', 6, 'Menunggu', '2025-05-30 15:28:42', '2025-05-30 15:28:42'),
(9, 27, 1, '2025-06-01 09:00:00', 7, 'Menunggu', '2025-05-30 15:28:42', '2025-05-30 15:28:42'),
(10, 28, 2, '2025-06-01 09:10:00', 8, 'Menunggu', '2025-05-30 15:28:42', '2025-05-30 15:28:42'),
(11, 29, 3, '2025-06-01 09:20:00', 9, 'Menunggu', '2025-05-30 15:28:42', '2025-05-30 15:28:42'),
(12, 30, 1, '2025-06-01 09:30:00', 10, 'Menunggu', '2025-05-30 15:28:42', '2025-05-30 15:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `perawats`
--

CREATE TABLE `perawats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_perawat` varchar(100) NOT NULL,
  `no_hp_perawat` varchar(13) NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `perawats`
--

INSERT INTO `perawats` (`id`, `nama_perawat`, `no_hp_perawat`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 'Ridho', '085248162500', 15, '2025-05-29 00:15:07', '2025-05-29 00:15:07'),
(2, 'Ana', '085248162500', 16, '2025-05-29 00:15:25', '2025-05-29 00:15:25'),
(3, 'Aini', '085248162500', 20, '2025-05-30 07:16:50', '2025-05-30 07:16:50'),
(4, 'Rizki', '085248162500', 21, '2025-05-30 07:17:15', '2025-05-30 07:17:15'),
(5, 'Rizka', '085248162500', 22, '2025-05-30 07:17:39', '2025-05-30 07:17:39');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_book', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(2, 'view_any_book', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(3, 'create_book', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(4, 'update_book', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(5, 'restore_book', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(6, 'restore_any_book', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(7, 'replicate_book', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(8, 'reorder_book', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(9, 'delete_book', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(10, 'delete_any_book', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(11, 'force_delete_book', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(12, 'force_delete_any_book', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(13, 'book:create_book', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(14, 'book:update_book', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(15, 'book:delete_book', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(16, 'book:pagination_book', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(17, 'book:detail_book', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(18, 'view_pasiens', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(19, 'view_any_pasiens', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(20, 'create_pasiens', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(21, 'update_pasiens', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(22, 'restore_pasiens', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(23, 'restore_any_pasiens', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(24, 'replicate_pasiens', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(25, 'reorder_pasiens', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(26, 'delete_pasiens', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(27, 'delete_any_pasiens', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(28, 'force_delete_pasiens', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(29, 'force_delete_any_pasiens', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(30, 'view_pendaftaran', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(31, 'view_any_pendaftaran', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(32, 'create_pendaftaran', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(33, 'update_pendaftaran', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(34, 'restore_pendaftaran', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(35, 'restore_any_pendaftaran', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(36, 'replicate_pendaftaran', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(37, 'reorder_pendaftaran', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(38, 'delete_pendaftaran', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(39, 'delete_any_pendaftaran', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(40, 'force_delete_pendaftaran', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(41, 'force_delete_any_pendaftaran', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(42, 'view_poli', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(43, 'view_any_poli', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(44, 'create_poli', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(45, 'update_poli', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(46, 'restore_poli', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(47, 'restore_any_poli', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(48, 'replicate_poli', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(49, 'reorder_poli', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(50, 'delete_poli', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(51, 'delete_any_poli', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(52, 'force_delete_poli', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(53, 'force_delete_any_poli', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(54, 'view_role', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(55, 'view_any_role', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(56, 'create_role', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(57, 'update_role', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(58, 'delete_role', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(59, 'delete_any_role', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(60, 'view_token', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(61, 'view_any_token', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(62, 'create_token', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(63, 'update_token', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(64, 'restore_token', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(65, 'restore_any_token', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(66, 'replicate_token', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(67, 'reorder_token', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(68, 'delete_token', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(69, 'delete_any_token', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(70, 'force_delete_token', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(71, 'force_delete_any_token', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(72, 'view_user', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(73, 'view_any_user', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(74, 'create_user', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(75, 'update_user', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(76, 'restore_user', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(77, 'restore_any_user', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(78, 'replicate_user', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(79, 'reorder_user', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(80, 'delete_user', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(81, 'delete_any_user', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(82, 'force_delete_user', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(83, 'force_delete_any_user', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(84, 'page_ManageSetting', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(85, 'page_Themes', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(86, 'page_MyProfilePage', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(87, 'view_dokter', 'web', '2025-05-29 00:01:04', '2025-05-29 00:01:04'),
(88, 'view_perawat', 'web', '2025-05-29 00:01:04', '2025-05-29 00:01:04'),
(89, 'view_any_perawat', 'web', '2025-05-29 00:01:04', '2025-05-29 00:01:04'),
(90, 'create_perawat', 'web', '2025-05-29 00:01:04', '2025-05-29 00:01:04'),
(91, 'update_perawat', 'web', '2025-05-29 00:01:04', '2025-05-29 00:01:04'),
(92, 'restore_perawat', 'web', '2025-05-29 00:01:04', '2025-05-29 00:01:04'),
(93, 'restore_any_perawat', 'web', '2025-05-29 00:01:04', '2025-05-29 00:01:04'),
(94, 'replicate_perawat', 'web', '2025-05-29 00:01:04', '2025-05-29 00:01:04'),
(95, 'reorder_perawat', 'web', '2025-05-29 00:01:04', '2025-05-29 00:01:04'),
(96, 'delete_perawat', 'web', '2025-05-29 00:01:04', '2025-05-29 00:01:04'),
(97, 'delete_any_perawat', 'web', '2025-05-29 00:01:04', '2025-05-29 00:01:04'),
(98, 'force_delete_perawat', 'web', '2025-05-29 00:01:04', '2025-05-29 00:01:04'),
(99, 'force_delete_any_perawat', 'web', '2025-05-29 00:01:04', '2025-05-29 00:01:04'),
(100, 'view_any_dokter', 'web', '2025-05-30 06:52:15', '2025-05-30 06:52:15'),
(101, 'create_dokter', 'web', '2025-05-30 06:52:15', '2025-05-30 06:52:15'),
(102, 'update_dokter', 'web', '2025-05-30 06:52:15', '2025-05-30 06:52:15'),
(103, 'restore_dokter', 'web', '2025-05-30 06:52:15', '2025-05-30 06:52:15'),
(104, 'restore_any_dokter', 'web', '2025-05-30 06:52:15', '2025-05-30 06:52:15'),
(105, 'replicate_dokter', 'web', '2025-05-30 06:52:15', '2025-05-30 06:52:15'),
(106, 'reorder_dokter', 'web', '2025-05-30 06:52:15', '2025-05-30 06:52:15'),
(107, 'delete_dokter', 'web', '2025-05-30 06:52:15', '2025-05-30 06:52:15'),
(108, 'delete_any_dokter', 'web', '2025-05-30 06:52:15', '2025-05-30 06:52:15'),
(109, 'force_delete_dokter', 'web', '2025-05-30 06:52:15', '2025-05-30 06:52:15'),
(110, 'force_delete_any_dokter', 'web', '2025-05-30 06:52:16', '2025-05-30 06:52:16');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 11, 'adminAPI', '842f6fa1eccca61849c085f08034a1b0318f4f7e3a32b6d55c19c9f1522289a0', '[\"create_dokter\",\"update_dokter\",\"delete_dokter\",\"view_any_dokter\",\"view_dokter\",\"create_pasiens\",\"update_pasiens\",\"delete_pasiens\",\"view_any_pasiens\",\"view_pasiens\",\"create_pendaftaran\",\"update_pendaftaran\",\"delete_pendaftaran\",\"view_any_pendaftaran\",\"view_pendaftaran\",\"create_perawat\",\"update_perawat\",\"delete_perawat\",\"view_any_perawat\",\"view_perawat\",\"create_poli\",\"update_poli\",\"delete_poli\",\"view_any_poli\",\"view_poli\"]', '2025-05-30 07:06:01', NULL, '2025-05-30 07:02:22', '2025-05-30 07:06:01');

-- --------------------------------------------------------

--
-- Table structure for table `polis`
--

CREATE TABLE `polis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_poli` varchar(100) NOT NULL,
  `id_dokter` bigint(20) UNSIGNED NOT NULL,
  `id_perawat` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `polis`
--

INSERT INTO `polis` (`id`, `nama_poli`, `id_dokter`, `id_perawat`, `created_at`, `updated_at`) VALUES
(1, 'Poli Mata', 1, 1, '2025-05-29 00:15:52', '2025-05-29 00:15:52'),
(2, 'Poli Gigi', 2, 2, '2025-05-29 00:16:12', '2025-05-29 00:16:12'),
(3, 'Poli THT', 3, 3, '2025-05-30 07:18:21', '2025-05-30 07:18:53'),
(4, 'Poli Anak', 4, 4, '2025-05-30 07:19:27', '2025-05-30 07:19:27'),
(5, 'Poli Umum', 5, 5, '2025-05-30 07:20:07', '2025-05-30 07:20:07');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Iste ut dolorum omnis.', 'Sed earum illo accusamus consectetur dolores aut. Magnam qui dolores veritatis eos nulla. Voluptas fugiat sed enim aut consequatur expedita assumenda.', '2025-05-28 23:55:13', '2025-05-28 23:55:13'),
(2, 'Est repellat iste quo.', 'Optio exercitationem maxime consectetur reprehenderit ea. Sed fugiat illo praesentium molestias. Quis numquam et reiciendis harum cumque cum dolor.', '2025-05-28 23:55:13', '2025-05-28 23:55:13'),
(3, 'Sequi et et eveniet deserunt delectus est omnis.', 'Perferendis facere rerum occaecati consequatur nobis. Quidem et occaecati ex. Officiis aliquam sunt aperiam dolor eos neque.', '2025-05-28 23:55:13', '2025-05-28 23:55:13'),
(4, 'Aut laboriosam debitis suscipit perspiciatis ut.', 'Inventore eligendi error sed consequatur. Id dolore nesciunt quis et ut velit. Et omnis vel eligendi nemo quisquam. Qui corporis sit sequi placeat. Sed iure tempora temporibus optio.', '2025-05-28 23:55:13', '2025-05-28 23:55:13'),
(5, 'Repellat sit animi ratione aliquam.', 'Voluptas architecto qui vel id molestiae officiis aut. Accusamus rerum dolore eos libero voluptas voluptas. Eveniet officia velit est reiciendis ipsam nihil.', '2025-05-28 23:55:13', '2025-05-28 23:55:13'),
(6, 'Nobis quis deserunt itaque nam porro.', 'Temporibus doloremque labore sunt in praesentium accusantium. Sed libero odit ut numquam nisi ut. Ab qui dolores non autem. Cumque voluptatibus totam voluptate culpa fugiat voluptatibus et.', '2025-05-28 23:55:13', '2025-05-28 23:55:13'),
(7, 'Suscipit non qui qui ipsam.', 'Quaerat necessitatibus et ut accusantium itaque debitis harum sapiente. Neque velit sit non tempora dolorum. Architecto eius tempore vel sapiente. Molestiae in enim beatae. Laudantium quo ut aut voluptatem pariatur et.', '2025-05-28 23:55:13', '2025-05-28 23:55:13'),
(8, 'Tenetur maxime amet a accusamus ut voluptas.', 'Ut dolorum beatae dicta quo pariatur alias velit. Nemo dolorem autem aliquam odio necessitatibus. Fuga omnis ut delectus laboriosam rerum. Ut voluptatem sit quia in rem.', '2025-05-28 23:55:13', '2025-05-28 23:55:13'),
(9, 'Ducimus perspiciatis necessitatibus eos nihil distinctio.', 'Voluptas corrupti qui at nulla libero. Explicabo eveniet aliquam reiciendis quia. Eaque voluptatem quasi ratione nobis nesciunt repudiandae.', '2025-05-28 23:55:13', '2025-05-28 23:55:13'),
(10, 'Qui nobis officia necessitatibus sed.', 'Laborum exercitationem quae ea delectus non consequatur blanditiis. Placeat error non qui quo perspiciatis et. Et maiores vel est et magnam necessitatibus sed. Repudiandae et vero natus consequatur ut repellat.', '2025-05-28 23:55:13', '2025-05-28 23:55:13');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'web', '2025-05-28 23:55:45', '2025-05-28 23:55:45'),
(2, 'Perawat', 'web', '2025-05-28 23:59:56', '2025-05-28 23:59:56'),
(3, 'Dokter', 'web', '2025-05-29 00:00:20', '2025-05-29 00:00:20'),
(4, 'Petugas', 'web', '2025-05-29 00:01:04', '2025-05-29 00:01:04');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(18, 4),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(30, 2),
(30, 3),
(30, 4),
(31, 1),
(31, 2),
(31, 3),
(31, 4),
(32, 1),
(32, 2),
(32, 4),
(33, 1),
(33, 2),
(33, 3),
(33, 4),
(34, 1),
(34, 2),
(34, 3),
(34, 4),
(35, 1),
(35, 2),
(35, 3),
(35, 4),
(36, 1),
(36, 2),
(36, 3),
(36, 4),
(37, 1),
(37, 2),
(37, 3),
(37, 4),
(38, 1),
(38, 2),
(38, 4),
(39, 1),
(39, 2),
(39, 4),
(40, 1),
(40, 2),
(40, 4),
(41, 1),
(41, 2),
(41, 4),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(87, 4),
(88, 1),
(88, 4),
(89, 1),
(89, 4),
(90, 1),
(90, 4),
(91, 1),
(91, 4),
(92, 1),
(92, 4),
(93, 1),
(93, 4),
(94, 1),
(94, 4),
(95, 1),
(95, 4),
(96, 1),
(96, 4),
(97, 1),
(97, 4),
(98, 1),
(98, 4),
(99, 1),
(99, 4),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('21znMLdw7Y3S1LRNr74RNoeD6pqeorKGrWBKbGrg', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.19.1 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid0Q3bnM1QnJ4MGdLV0VKdVBWZkt2OGZSQWpKcEpMZXJtWDhvY21YNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9rYWlkb19rZWwxLnRlc3QvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1748617121),
('dATkIbsyUOzAfGUsd6SsdAlJtTMku9UzyonHgU90', 11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiOW1DSXc4aUtVa1AxU3hNOVBzQ2h2N29kNVBHb1NjcHYzRlpzeEdyTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly9rYWlkb19rZWwxLnRlc3QiO31zOjUwOiJsb2dpbl93ZWJfM2RjN2E5MTNlZjVmZDRiODkwZWNhYmUzNDg3MDg1NTczZTE2Y2Y4MiI7aToxMTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJFhTTXNmWUJJbVlDYnNSQ0NWcDhxcS5IUlJKSEp0WkJYcld2cTA5Tm95eWxCRGdibmpsbkNxIjtzOjg6ImZpbGFtZW50IjthOjA6e319', 1748619774),
('k5V6fLMDPiCwBPAvfSdPWYjjXrVKw9xOB4ctZXiw', 11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiY3MwbHF4NUZUWnc3NEdJMkl5MzFPM3c0UzQ0YTY5bXBPZEFjSlBvbyI7czo1MDoibG9naW5fd2ViXzNkYzdhOTEzZWY1ZmQ0Yjg5MGVjYWJlMzQ4NzA4NTU3M2UxNmNmODIiO2k6MTE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiRYU01zZllCSW1ZQ2JzUkNDVnA4cXEuSFJSSkhKdFpCWHJXdnEwOU5veXlsQkRnYm5qbG5DcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9rYWlkb19rZWwxLnRlc3QvcGVyYXdhdHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjY6InRhYmxlcyI7YToxOntzOjQxOiI3ODllZTVhZDBkZGJlNjUwM2U3YWQ2NjVkY2YzM2ZhOV9wZXJfcGFnZSI7czoyOiIyNSI7fX0=', 1748835207),
('R49QsOmxSdvv1Vv59M5N9e66I7BMdST1KPemQtoS', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.19.1 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNUpzeTlzcUhaZmpqRDBNVGROR0lYMGxLakFDQ2pHQ1VIR2xOZkEzMyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNjoiaHR0cDovL2thaWRvX2tlbDEudGVzdC8/aGVyZD1wcmV2aWV3Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9rYWlkb19rZWwxLnRlc3QvP2hlcmQ9cHJldmlldyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1748696879),
('SrvVkLRk9rLsKDYFPN490C3HrXWCFavHTxkSrHek', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.19.1 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZGd4QjM5UE0zeFM5Ym42MmMwSFNBMDhTdlNBWjAwQmNFblJTMDU4ZCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNjoiaHR0cDovL2thaWRvX2tlbDEudGVzdC8/aGVyZD1wcmV2aWV3Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9rYWlkb19rZWwxLnRlc3QvP2hlcmQ9cHJldmlldyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1748617118);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`payload`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `group`, `name`, `locked`, `payload`, `created_at`, `updated_at`) VALUES
(1, 'KaidoSetting', 'site_name', 0, '\"Spatie\"', '2025-05-28 23:55:12', '2025-05-28 23:55:12'),
(2, 'KaidoSetting', 'site_active', 0, 'true', '2025-05-28 23:55:12', '2025-05-28 23:55:12'),
(3, 'KaidoSetting', 'registration_enabled', 0, 'true', '2025-05-28 23:55:12', '2025-05-28 23:55:12'),
(4, 'KaidoSetting', 'login_enabled', 0, 'true', '2025-05-28 23:55:12', '2025-05-28 23:55:12'),
(5, 'KaidoSetting', 'password_reset_enabled', 0, 'true', '2025-05-28 23:55:12', '2025-05-28 23:55:12'),
(6, 'KaidoSetting', 'sso_enabled', 0, 'true', '2025-05-28 23:55:12', '2025-05-28 23:55:12');

-- --------------------------------------------------------

--
-- Table structure for table `socialite_users`
--

CREATE TABLE `socialite_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar_url` varchar(255) DEFAULT NULL,
  `theme` varchar(255) DEFAULT 'default',
  `theme_color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `avatar_url`, `theme`, `theme_color`) VALUES
(1, 'Georgianna Rogahn IV', 'jade83@example.net', '2025-05-28 23:55:13', '$2y$12$XSMsfYBImYCbsRCCVp8qq.HRRJHJtZBXrWvq09NoyylBDgbnjlnCq', 'Jkv8Obyu9f', '2025-05-28 23:55:13', '2025-05-28 23:55:13', NULL, 'default', NULL),
(2, 'Monty Hermiston', 'herzog.columbus@example.com', '2025-05-28 23:55:13', '$2y$12$XSMsfYBImYCbsRCCVp8qq.HRRJHJtZBXrWvq09NoyylBDgbnjlnCq', 'qyFSP3JZXP', '2025-05-28 23:55:13', '2025-05-28 23:55:13', NULL, 'default', NULL),
(3, 'Delmer Howell', 'summer.schultz@example.org', '2025-05-28 23:55:13', '$2y$12$XSMsfYBImYCbsRCCVp8qq.HRRJHJtZBXrWvq09NoyylBDgbnjlnCq', '68wIIxlowD', '2025-05-28 23:55:13', '2025-05-28 23:55:13', NULL, 'default', NULL),
(4, 'Abdiel Schinner', 'laurie.nikolaus@example.net', '2025-05-28 23:55:13', '$2y$12$XSMsfYBImYCbsRCCVp8qq.HRRJHJtZBXrWvq09NoyylBDgbnjlnCq', 'UeBICpuXiJ', '2025-05-28 23:55:13', '2025-05-28 23:55:13', NULL, 'default', NULL),
(5, 'Austin Crona', 'jonathan.ritchie@example.com', '2025-05-28 23:55:13', '$2y$12$XSMsfYBImYCbsRCCVp8qq.HRRJHJtZBXrWvq09NoyylBDgbnjlnCq', 'xeWXYRxsP0', '2025-05-28 23:55:13', '2025-05-28 23:55:13', NULL, 'default', NULL),
(6, 'Mrs. Micaela Wilderman', 'alvina.cormier@example.org', '2025-05-28 23:55:13', '$2y$12$XSMsfYBImYCbsRCCVp8qq.HRRJHJtZBXrWvq09NoyylBDgbnjlnCq', 'sUGj0l34te', '2025-05-28 23:55:13', '2025-05-28 23:55:13', NULL, 'default', NULL),
(7, 'Miss Wanda Abernathy V', 'schroeder.tania@example.net', '2025-05-28 23:55:13', '$2y$12$XSMsfYBImYCbsRCCVp8qq.HRRJHJtZBXrWvq09NoyylBDgbnjlnCq', 'fI4fxWq5cM', '2025-05-28 23:55:13', '2025-05-28 23:55:13', NULL, 'default', NULL),
(8, 'Kaia Will', 'grady.kuphal@example.org', '2025-05-28 23:55:13', '$2y$12$XSMsfYBImYCbsRCCVp8qq.HRRJHJtZBXrWvq09NoyylBDgbnjlnCq', 'FSeGPJhpSo', '2025-05-28 23:55:13', '2025-05-28 23:55:13', NULL, 'default', NULL),
(9, 'Judah Cormier', 'thurman72@example.org', '2025-05-28 23:55:13', '$2y$12$XSMsfYBImYCbsRCCVp8qq.HRRJHJtZBXrWvq09NoyylBDgbnjlnCq', 'UOotmA5oYT', '2025-05-28 23:55:13', '2025-05-28 23:55:13', NULL, 'default', NULL),
(10, 'Elnora Keeling', 'dglover@example.org', '2025-05-28 23:55:13', '$2y$12$XSMsfYBImYCbsRCCVp8qq.HRRJHJtZBXrWvq09NoyylBDgbnjlnCq', 'ueqh2bks3N', '2025-05-28 23:55:13', '2025-05-28 23:55:13', NULL, 'default', NULL),
(11, 'Admin ', 'admin@admin.com', '2025-05-28 23:55:13', '$2y$12$XSMsfYBImYCbsRCCVp8qq.HRRJHJtZBXrWvq09NoyylBDgbnjlnCq', 'SVjN8yqza76lK6KrfOzWKEExvXBhR6D93USJrqG3QTZJrUY9j6AHqlGbGMFZ', '2025-05-28 23:55:13', '2025-05-30 07:36:45', '01JWGXDA44T4NN4TGRZ4FAXA5T.png', 'default', NULL),
(12, 'Dokter A', 'doktera@gmail.com', '2025-05-28 11:19:25', '$2y$12$fkwmHQZvOyPjWR3yqWFE6OKe92xyV3dNE7.xqxahhNfUAQPxzGFfG', 'QHURVtwNWv27TXyjvoHL5W1sV6NXgTcn7xC0lmJabaX0oAQv2sOJzsrG08C6', '2025-05-29 00:01:41', '2025-05-29 00:01:41', NULL, 'default', NULL),
(13, 'Dokter B', 'dokterb@gmail.com', '2025-05-24 04:26:24', '$2y$12$MbBU0lt47c465XLteSuUleQJs5N67skneX9pMmClGKmNdIzMIvydO', '0iyGUCVWfZe2y1xud0yRjqtjQdqcAW8Pi5Z0B4Tt420DULKjoN5Ol9FDnOfH', '2025-05-29 00:02:14', '2025-05-29 00:02:14', NULL, 'default', NULL),
(14, 'Petugas A', 'petugasa@gmail.com', '2025-05-29 08:39:32', '$2y$12$xW7pDH0uGdJYoSUmZgR.1.jF5/TjRqcAGKaXZ.DnQOL8IoOu5GuOO', NULL, '2025-05-29 00:02:43', '2025-05-29 00:02:43', NULL, 'default', NULL),
(15, 'Perawat A', 'perawata@gmail.com', '2025-05-29 08:39:32', '$2y$12$C2VTJj92bk.ea8CmVRF8WO7P4BM.QRhXpR2xCTXIq.To1TPWqn/pe', NULL, '2025-05-29 00:03:23', '2025-05-29 00:03:23', NULL, 'default', NULL),
(16, 'Perawat B', 'perawatb@gmail.com', '2025-05-29 08:40:12', '$2y$12$6UZjgoBdHeHhXpB1pOq3jeceVXhjId40Iz4xwb9oBH231G7n3Eiou', 'YjlckrVFmRTFeytShdyzDzR7SonTJslWFlklwl7MGpWWQBw67AIiK0xkXIIy', '2025-05-29 00:04:03', '2025-05-30 07:34:09', '01JWGX8HVJAPA2DJ8XRZRTQ9CP.png', 'default', NULL),
(17, 'Dokter C', 'dokterc@gmail.com', NULL, '$2y$12$tYFu.CxWMMpnAR4qbYtNqumy7Q99J9trjKGG/GNvqkY3yU0yUBD86', NULL, '2025-05-30 07:11:49', '2025-05-30 07:11:49', NULL, 'default', NULL),
(18, 'Dokter D', 'dokterd@gmail.com', NULL, '$2y$12$kVTwllSBgPIElqBUkG0sI.cEtSkA7xRI4/rmavsIpHVkzHPlrStH6', NULL, '2025-05-30 07:12:20', '2025-05-30 07:12:20', NULL, 'default', NULL),
(19, 'Dokter E', 'doktere@gmail.com', NULL, '$2y$12$lA5rLy6mfe9tmKL53vZzweGMGfrMWUY5FPQ0GjHid1C0pYtwfAV4S', NULL, '2025-05-30 07:12:48', '2025-05-30 07:12:48', NULL, 'default', NULL),
(20, 'Perawat C', 'perawatc@gmail.com', NULL, '$2y$12$lnxuJlxFIZrSdqOM3QC/YO8R1QNfwR3v79K1n.PnqtRIx8cMq9BTa', NULL, '2025-05-30 07:13:31', '2025-05-30 07:13:31', NULL, 'default', NULL),
(21, 'Perawat D', 'perawatd@gmail.com', NULL, '$2y$12$qOgghwC4M1.4n1nlD4IxsOGXiZI2riMh97T.xpd4kKz0joGk5TNFW', NULL, '2025-05-30 07:14:11', '2025-05-30 07:14:11', NULL, 'default', NULL),
(22, 'Perawat E', 'perawate@gmail.com', NULL, '$2y$12$DsmvK.IuHA3d.4pXUXiD8.dzl6nQh1zi.Q3xN/DcRePEGz3Tw0Ira', NULL, '2025-05-30 07:14:49', '2025-05-30 07:14:49', NULL, 'default', NULL),
(23, 'Petugas B', 'petugasb@gmail.com', NULL, '$2y$12$g0bZ6CFTamzvN3lbFwpioegiXsxzNmBNCKDKMh2q4fikgbF3BT5sy', NULL, '2025-05-30 07:36:05', '2025-05-30 07:36:05', NULL, 'default', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `breezy_sessions`
--
ALTER TABLE `breezy_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `breezy_sessions_authenticatable_type_authenticatable_id_index` (`authenticatable_type`,`authenticatable_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dokters`
--
ALTER TABLE `dokters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dokters_id_user_foreign` (`id_user`);

--
-- Indexes for table `exports`
--
ALTER TABLE `exports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exports_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_import_rows`
--
ALTER TABLE `failed_import_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `failed_import_rows_import_id_foreign` (`import_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `imports`
--
ALTER TABLE `imports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `imports_user_id_foreign` (`user_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `pasiens`
--
ALTER TABLE `pasiens`
  ADD PRIMARY KEY (`rm`),
  ADD UNIQUE KEY `pasiens_nik_unique` (`nik`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pendaftarans`
--
ALTER TABLE `pendaftarans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pendaftarans_id_poli_foreign` (`id_poli`),
  ADD KEY `pendaftarans_rm_foreign` (`rm`);

--
-- Indexes for table `perawats`
--
ALTER TABLE `perawats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `perawats_id_user_foreign` (`id_user`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `polis`
--
ALTER TABLE `polis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `polis_id_dokter_foreign` (`id_dokter`),
  ADD KEY `polis_id_perawat_foreign` (`id_perawat`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_group_name_unique` (`group`,`name`);

--
-- Indexes for table `socialite_users`
--
ALTER TABLE `socialite_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialite_users_provider_provider_id_unique` (`provider`,`provider_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `breezy_sessions`
--
ALTER TABLE `breezy_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dokters`
--
ALTER TABLE `dokters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `exports`
--
ALTER TABLE `exports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_import_rows`
--
ALTER TABLE `failed_import_rows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `imports`
--
ALTER TABLE `imports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pendaftarans`
--
ALTER TABLE `pendaftarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `perawats`
--
ALTER TABLE `perawats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `polis`
--
ALTER TABLE `polis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `socialite_users`
--
ALTER TABLE `socialite_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dokters`
--
ALTER TABLE `dokters`
  ADD CONSTRAINT `dokters_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exports`
--
ALTER TABLE `exports`
  ADD CONSTRAINT `exports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `failed_import_rows`
--
ALTER TABLE `failed_import_rows`
  ADD CONSTRAINT `failed_import_rows_import_id_foreign` FOREIGN KEY (`import_id`) REFERENCES `imports` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `imports`
--
ALTER TABLE `imports`
  ADD CONSTRAINT `imports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pendaftarans`
--
ALTER TABLE `pendaftarans`
  ADD CONSTRAINT `pendaftarans_id_poli_foreign` FOREIGN KEY (`id_poli`) REFERENCES `polis` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pendaftarans_rm_foreign` FOREIGN KEY (`rm`) REFERENCES `pasiens` (`rm`) ON DELETE CASCADE;

--
-- Constraints for table `perawats`
--
ALTER TABLE `perawats`
  ADD CONSTRAINT `perawats_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `polis`
--
ALTER TABLE `polis`
  ADD CONSTRAINT `polis_id_dokter_foreign` FOREIGN KEY (`id_dokter`) REFERENCES `dokters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `polis_id_perawat_foreign` FOREIGN KEY (`id_perawat`) REFERENCES `perawats` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
