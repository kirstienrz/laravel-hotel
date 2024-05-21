-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2024 at 09:07 AM
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
-- Database: `kiaveha-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `fullName`, `phone`, `email`, `password`, `profile`, `created_at`, `updated_at`) VALUES
(1, 'Avery Ruiz Cervantes', '0942882848182', 'Admin@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `checkin_date` varchar(255) NOT NULL,
  `checkout_date` varchar(255) NOT NULL,
  `total_adults` varchar(255) NOT NULL,
  `total_kids` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `customer_id`, `room_id`, `checkin_date`, `checkout_date`, `total_adults`, `total_kids`, `created_at`, `updated_at`) VALUES
(3, 6, 2, '2024-04-10', '2024-04-18', '2', '3', '2024-04-01 02:18:02', '2024-04-01 02:18:02'),
(4, 5, 2, '2024-04-01', '2024-04-02', '5', '6', '2024-04-01 02:19:20', '2024-04-01 02:19:20'),
(5, 6, 3, '2024-04-19', '2024-04-29', '6', '0', '2024-04-01 02:19:51', '2024-04-01 02:19:51'),
(6, 6, 3, '2024-04-19', '2024-04-29', '6', '0', '2024-04-01 02:19:51', '2024-04-01 02:19:51'),
(7, 6, 4, '2024-04-01', '2024-04-09', '2', '0', '2024-04-01 02:27:18', '2024-04-01 02:27:18'),
(8, 6, 1, '2024-04-09', '2024-04-25', '1', '1', '2024-04-01 05:59:15', '2024-04-01 05:59:15'),
(9, 5, 5, '2024-04-02', '2024-04-10', '2', '0', '2024-04-01 19:47:59', '2024-04-01 19:47:59'),
(10, 8, 3, '2024-04-02', '2024-04-03', '2', '1', '2024-04-01 19:51:33', '2024-04-01 19:51:33'),
(11, 6, 1, '2024-04-02', '2024-04-10', '2', '2', '2024-04-01 21:33:26', '2024-04-01 21:33:26');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `fullName`, `email`, `password`, `phone`, `address`, `photo`, `created_at`, `updated_at`) VALUES
(4, 'April Gonzales', 'Damaso@gmail.com', '$2y$12$xYI9aa.pHNpxitaNwWEUJOVro1unm8zyFyrsY7HsgWxP6JA2lNvK.', '09569939101', 'blk35 lot6 sitio central bicutan Taguig City', 'public/imgs/HskeDI2A2ys0pGdwkomxmwgH26CLkEhqppQZp7bn.avif', '2024-03-30 18:24:46', '2024-03-30 18:24:46'),
(6, 'Harley Quin', 'Damas@gmail.com', '$2y$12$WnL.8oMhYHvphEE5lWpGkOeBCvZ1YkRC6pEsEytxXJlT6xkY35Tdi', '09569939101', 'blk35 lot6 sitio central bicutan Taguig City', 'public/imgs/xcYhbSRGvTehdh7EAqNGCIklIvKDR6PW9lHsaeBO.jpg', '2024-03-31 00:30:47', '2024-03-31 00:30:47'),
(7, 'useruser', 'user@gmail.com', '$2y$12$ONbBh.yBtGBy.LWNxkyikOVgKUB3Gh5UlPo1bEDF9RZFd3co9CZ6O', '09569939101', 'blk35 lot6 sitio central bicutan Taguig City', 'public/imgs/Dl2b6RKz28Bl1j4Q9tqZcDqCelTx45cCeqdnJE74.jpg', '2024-04-01 16:36:07', '2024-04-01 16:36:07'),
(8, 'Kirs', 'kirs@gmail.com', '$2y$12$gjW5HJNlrf9/mwwT8wNcr.oB7QaMWYNvU11u9L8ula6Ygh7iqZUim', '0923288', 'maabn', 'public/imgs/JHLhLQom7rZym9pr8ThGfLLxlGZXVHoNPs3cGzWc.jpg', '2024-04-01 19:19:39', '2024-04-01 19:19:39'),
(9, 'bhey Cervantes', 'Bhey@gmail.com', '$2y$12$jApyp0hSplgUtrrYvode8ezkSphHsCokISjG5RmJ8LDl/5P8FxRrm', '09569939101', 'blk35 lot6 sitio central bicutan Taguig City', 'public/imgs/uNeCU5WGbKpnpsEP62pzQBfOKDVLsdX9SPy9XVYN.png', '2024-04-01 20:01:00', '2024-04-01 20:01:00'),
(10, 'April Gonzales', 'ave@gmai.com', '$2y$12$kXIrvCP5tBXwPVU9B9wU/uLu/YT4Z2OMpQU/JilRIVN/LVnyGSTbG', '09569939101', 'blk35 lot6 sitio central bicutan Taguig City', 'public/imgs/RVyCCiUDJxJcE1v6nIhXZVVqCDY0Oy9f9mYnDMNs.png', '2024-04-01 20:03:43', '2024-04-01 20:03:43');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `title`, `detail`, `created_at`, `updated_at`) VALUES
(1, 'Book Keeper', 'Masipag matiyaga', '2024-03-31 08:10:21', '2024-03-31 08:10:21'),
(2, 'Janitor', 'Mapagmahal, magaling,magalang,malupit,masipag', '2024-03-31 08:12:13', '2024-03-31 08:12:13'),
(3, 'BellBoy', 'asipag', '2024-03-31 23:27:19', '2024-03-31 23:27:19');

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
(19, '0001_01_01_000000_create_users_table', 1),
(20, '0001_01_01_000001_create_cache_table', 1),
(21, '0001_01_01_000002_create_jobs_table', 1),
(22, '2024_03_19_012529_create_room_types_table', 1),
(23, '2024_03_19_012919_create_rooms_table', 1),
(24, '2024_03_19_013534_add_room_type_id_to_rooms_table', 1),
(25, '2024_03_22_112616_create_customers_table', 1),
(26, '2024_03_24_050340_add_price_to_room_types_table', 1),
(27, '2024_03_29_004956_create_admins_table', 1),
(28, '2024_03_29_011552_add_column_image_to_table_room_types', 1),
(30, '2024_03_31_152116_create_departments_table', 2),
(33, '2024_03_31_164208_create_staff_table', 3),
(34, '2024_03_31_235827_create_staff_payments_table', 4),
(35, '2024_04_01_021322_create_bookings_table', 5);

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
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `room_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `title`, `created_at`, `updated_at`, `room_type_id`) VALUES
(1, 'Room12', '2024-03-30 17:41:16', '2024-03-30 17:41:16', 31),
(2, 'Room2', '2024-03-30 17:58:06', '2024-03-30 17:58:06', 41),
(3, 'dasd', '2024-03-31 08:29:03', '2024-03-31 08:29:03', 6),
(4, 'kwarto12', '2024-04-01 02:26:44', '2024-04-01 02:26:44', 13),
(5, 'jhSDKHASKHFAS', '2024-04-01 05:57:04', '2024-04-01 05:57:04', 8),
(6, 'UUIGKJK', '2024-04-01 05:58:34', '2024-04-01 05:58:34', 10),
(7, 'asdioasfilasf', '2024-04-01 16:53:59', '2024-04-01 16:53:59', 41),
(8, 'hatdog', '2024-04-01 19:45:57', '2024-04-01 19:45:57', 33),
(9, '101', '2024-04-01 21:33:05', '2024-04-01 21:33:05', 7);

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE `room_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_types`
--

INSERT INTO `room_types` (`id`, `title`, `detail`, `created_at`, `updated_at`, `price`, `image`) VALUES
(7, 'Double Room', 'Eum quis corrupti aut odit non placeat. Blanditiis voluptates fugiat eius suscipit ratione. Qui quod et consequuntur.', '2024-03-30 12:00:55', '2024-04-01 04:03:28', '85.45', '[\"imgs\\/Gi7XowrhdwaUyaleaeuYIY33R8QIPtPgIDb79Drt.jpg\",\"imgs\\/TTYe9uxkCCtJLp66adez4ejjoMjJyGwVMNZCRkn3.jpg\",\"imgs\\/15TKpyuQd84d8WqYccN3G8KqhnUqK6azT5T1f4E9.jpg\"]'),
(32, 'Dr.', 'Vero sed incidunt enim dignissimos saepe aspernatur sint. Labore non optio ea quos debitis nemo qui. Consequatur qui sit ipsam.', '2024-03-30 12:00:56', '2024-03-30 12:00:56', '117.69', NULL),
(33, 'Prof.', 'Qui nostrum accusamus rerum quisquam quod dolorem sunt. Aut quia officiis voluptatem sed. Cumque deserunt nam dolores non sit et error.', '2024-03-30 12:00:56', '2024-03-30 12:00:56', '169.98', NULL),
(34, 'Ms.', 'Ea omnis dolorum dolore rem nobis amet consequatur. Eos autem aut est ut vel. Minima ut ea aut. Numquam earum laboriosam animi fugit dolor porro.', '2024-03-30 12:00:56', '2024-03-30 12:00:56', '168.65', NULL),
(35, 'Miss', 'Cumque ut quaerat assumenda ullam. Doloribus accusamus sed accusamus neque. Minus reiciendis animi dicta voluptate. Quis omnis sapiente facilis rerum.', '2024-03-30 12:00:56', '2024-03-30 12:00:56', '103.92', NULL),
(36, 'Mr.', 'Tempore delectus consequuntur eum saepe animi aut. Enim repellat voluptatum autem quo. Id numquam et velit rerum incidunt veniam consequuntur.', '2024-03-30 12:00:56', '2024-03-30 12:00:56', '162.33', NULL),
(37, 'Ms.', 'Ut enim similique illum voluptates et ut. Sunt quo animi repellat numquam. Rerum eum exercitationem neque eum quisquam saepe.', '2024-03-30 12:00:56', '2024-03-30 12:00:56', '70.58', NULL),
(38, 'Prof.', 'Impedit nihil aut facilis et dolorem. Sint consequatur veniam illum. Ea error unde dolor unde saepe dolorem blanditiis.', '2024-03-30 12:00:56', '2024-03-30 12:00:56', '131.13', NULL),
(39, 'Mr.', 'Illo sint harum veritatis quasi. Cupiditate quis et voluptatem corrupti provident voluptates.', '2024-03-30 12:00:56', '2024-03-30 12:00:56', '190.61', NULL),
(40, 'Prof.', 'Magnam magnam voluptates repellat. Sit ea vel debitis doloremque et consequatur dolor. Accusantium ratione culpa modi. Ullam dolorem eaque incidunt fugit eos vitae.', '2024-03-30 12:00:56', '2024-03-30 12:00:56', '157.35', NULL),
(41, 'Single Room', 'kashdkhasjdhas', '2024-03-30 17:57:41', '2024-03-30 17:57:41', '2000', '[\"imgs\\/HBryAcbqh4gf9lsowAK7QoyLNQpg5ryBbNYzQqyt.jpg\",\"imgs\\/YrzMivAGOSOmO5a2HD8fz9GrPHQxuX6yC2F1YsUP.jpg\",\"imgs\\/395z3jMB8xPHhVTn3C9SqxbRDvOsYqPwVmgVt1NG.jpg\"]'),
(42, 'Iste quis cumque quos facere excepturi at vel reiciendis.', 'In voluptate doloremque nam ut et. Totam ducimus autem qui.', NULL, NULL, '443', NULL),
(43, 'Nisi impedit natus neque quos eum cumque.', 'Earum dolorum praesentium possimus qui velit omnis amet. Tempora occaecati nulla repellat qui nisi dolore quam molestiae.', NULL, NULL, '619', NULL),
(44, 'Dignissimos nulla perferendis architecto et ea dolores.', 'Blanditiis in est repellendus ullam. In architecto sequi nemo quibusdam autem quos cupiditate nemo. Officiis ex ducimus enim illum reiciendis incidunt.', NULL, NULL, '290', NULL),
(45, 'Est doloremque impedit minus veritatis maiores dicta modi.', 'In non necessitatibus veniam temporibus. Voluptas amet sint incidunt deleniti. Blanditiis et in eos labore necessitatibus.', NULL, NULL, '213', NULL),
(46, 'Deleniti et ipsa omnis ut.', 'Eligendi et fugiat at. Incidunt eos eligendi velit odit quam itaque.', NULL, NULL, '565', NULL),
(47, 'Dignissimos et id enim aut.', 'Dolorem voluptatum ullam quia quibusdam. Eaque architecto et earum rerum sunt sed dolores sunt. Tenetur id fugiat dolorum.', NULL, NULL, '957', NULL),
(48, 'Accusantium sed eos dolor aut.', 'Voluptatem et illo vero illum. Omnis molestias sint id eum praesentium aspernatur.', NULL, NULL, '471', NULL),
(49, 'Blanditiis et voluptates earum est ipsum culpa qui.', 'Illum ea tenetur sed et. Iusto minima delectus consequuntur aspernatur culpa sit. Perferendis vel quod et quia et.', NULL, NULL, '944', NULL),
(50, 'Quibusdam voluptas non perferendis hic excepturi laborum ex.', 'Saepe consequatur consequatur necessitatibus sapiente aut temporibus recusandae totam. Ipsa consequatur impedit velit quos explicabo labore. Aut accusantium laudantium et sunt et optio temporibus optio.', NULL, NULL, '365', NULL),
(51, 'Iste placeat porro distinctio accusamus.', 'Quae voluptatibus placeat corporis et ipsam quia facere. Voluptate optio soluta iure expedita.', NULL, NULL, '868', NULL),
(52, 'Unde provident laudantium sint.', 'Iste aspernatur necessitatibus ut vel nobis deleniti id. Unde est illo dolorem sed dignissimos nobis culpa.', NULL, NULL, '601', NULL),
(53, 'Molestiae at quidem incidunt aliquam ut fugiat.', 'Magni nam itaque expedita impedit quia et. Laboriosam est sequi eveniet.', NULL, NULL, '871', NULL),
(54, 'Temporibus at nam molestiae sequi similique.', 'Aut cupiditate necessitatibus optio et adipisci. Quaerat quaerat rem optio quae. Enim pariatur enim illo qui harum.', NULL, NULL, '728', NULL),
(55, 'Iste corporis optio eaque illo qui.', 'Voluptate illum eaque ipsum. Id tempore et cupiditate et non minus hic ea.', NULL, NULL, '157', NULL),
(56, 'Quidem fugiat et et cumque ea.', 'Perferendis suscipit enim dolorum nihil provident qui minus unde. Quis autem tempora explicabo saepe omnis. Omnis ut ipsa laborum rerum perferendis suscipit.', NULL, NULL, '555', NULL),
(57, 'Doloribus cum possimus accusamus placeat.', 'Accusantium similique totam quaerat corporis sed excepturi. Sequi omnis aut cupiditate ut.', NULL, NULL, '699', NULL),
(58, 'Temporibus sit et enim aliquam mollitia id ipsam qui.', 'Ut quia qui ut ab enim veritatis. Nulla qui esse doloremque placeat.', NULL, NULL, '793', NULL),
(59, 'Inventore impedit dolores sint et reiciendis laborum cupiditate.', 'Quae sequi vitae quaerat non incidunt. Porro beatae eos quasi repudiandae et.', NULL, NULL, '689', NULL),
(60, 'Velit iusto mollitia voluptatem.', 'Aut facere eum quo. Enim velit omnis est ipsam sit nostrum. Eos corporis sint optio blanditiis.', NULL, NULL, '756', NULL),
(61, 'Aperiam in doloribus itaque dolores ipsum libero adipisci.', 'Eaque possimus impedit beatae rerum. Ut tempore incidunt sint voluptatibus iure repellat aut.', NULL, NULL, '226', NULL),
(62, 'Exercitationem sed excepturi minus harum qui numquam cupiditate.', 'Ullam nobis occaecati qui rem magnam distinctio. Quo minus occaecati ut ratione iste suscipit libero in.', NULL, NULL, '454', NULL),
(63, 'Aut et repellendus beatae nesciunt dolores pariatur.', 'Dolorem soluta quas ut qui magni. Aut adipisci dignissimos voluptatem ullam.', NULL, NULL, '685', NULL),
(64, 'Labore officia nulla et voluptatem ut soluta reprehenderit.', 'Soluta dolores et et aut vero neque et. Repudiandae quibusdam suscipit debitis numquam.', NULL, NULL, '244', NULL),
(65, 'Assumenda esse praesentium maiores placeat quia aspernatur molestias et.', 'Assumenda minima enim rerum ea laborum labore consequatur. Alias alias quas laboriosam at. Ex sapiente repellat provident pariatur officia minus.', NULL, NULL, '604', NULL),
(66, 'Molestiae necessitatibus quas ratione sed pariatur dolor alias.', 'Eligendi qui commodi doloribus eos eos voluptas accusantium. Quisquam architecto quia quas ad. Autem molestiae est iure qui et ipsa quisquam.', NULL, NULL, '982', NULL),
(67, 'Ut itaque et qui deleniti laboriosam et sunt.', 'Est eos dolor possimus ratione sapiente natus veniam. Repudiandae vel veniam fuga provident. Ut repellendus velit dolores repudiandae ullam facilis repellendus neque.', NULL, NULL, '874', NULL),
(68, 'Odit quo aut commodi.', 'Error veniam reiciendis praesentium vel enim. Veniam aut temporibus et iste. Nihil neque odit iusto saepe dolor et molestiae.', NULL, NULL, '738', NULL),
(69, 'Ducimus excepturi sunt facere aut.', 'Dolorem quas voluptatem dolores. Non maxime velit laboriosam repellat modi quis consequuntur.', NULL, NULL, '284', NULL),
(70, 'Quam totam ducimus voluptas voluptas ea sed et.', 'Repudiandae quod quo atque ratione et odit corrupti. Vitae a a ad facilis rerum.', NULL, NULL, '425', NULL),
(71, 'Ut nisi qui ullam et aut nesciunt est.', 'Voluptas velit aut et possimus voluptas laboriosam ut est. Veritatis inventore voluptas nisi ducimus quae amet illum. Quaerat tempora non soluta possimus hic.', NULL, NULL, '760', NULL),
(72, 'Repudiandae excepturi rem porro esse quasi.', 'Aspernatur quis voluptatem qui est quisquam officia iste odio. Iure labore commodi nisi dolor aspernatur porro illum accusantium. Iusto perspiciatis quia eos laudantium doloremque.', NULL, NULL, '793', NULL),
(73, 'Ducimus iusto tempore rerum dolores atque ut natus.', 'Nesciunt necessitatibus quas tempora dolores quia quaerat. Qui ut similique deserunt.', NULL, NULL, '581', NULL),
(74, 'Qui nisi et ut sint itaque.', 'Dolore inventore perspiciatis provident voluptas sed molestiae est. Enim facilis et sed praesentium nihil non. Et id optio expedita et.', NULL, NULL, '457', NULL),
(75, 'Distinctio modi quaerat aut fugit.', 'Assumenda est numquam sunt similique iste in ad. Voluptatem saepe et explicabo. Nulla libero sint suscipit iure perferendis.', NULL, NULL, '243', NULL),
(76, 'Nostrum quam at eos minus ipsam.', 'Laudantium rem nisi possimus enim non natus fugit. Ab excepturi illum animi in aspernatur est.', NULL, NULL, '121', NULL),
(77, 'Incidunt natus placeat dicta voluptas et quo ipsum.', 'Fuga ratione debitis beatae doloremque veniam nostrum. Fugit dolor consequuntur tenetur quod omnis omnis.', NULL, NULL, '256', NULL),
(78, 'Ipsam dolorem sint architecto omnis veniam adipisci voluptate.', 'Inventore nihil et mollitia rerum. Laborum non itaque nobis expedita.', NULL, NULL, '951', NULL),
(79, 'Quisquam iure animi ut nihil dolor dignissimos.', 'Dicta illum laborum voluptatibus expedita sunt. Autem quia et est eligendi ullam necessitatibus perferendis.', NULL, NULL, '139', NULL),
(80, 'Impedit ea sequi non accusamus officia et est.', 'Velit maiores repudiandae laborum voluptatum rerum. Inventore alias odio perferendis doloribus quia. Earum maxime et est error non sint repudiandae quia.', NULL, NULL, '714', NULL),
(81, 'Expedita quod ab consequatur id est vitae.', 'Earum doloremque occaecati nobis et maxime alias. Animi adipisci vitae assumenda omnis est saepe dolor.', NULL, NULL, '901', NULL),
(82, 'Sed cum quo est corrupti qui non aliquam neque.', 'Vero optio totam non iste laborum sed commodi. Recusandae perspiciatis vel ab autem voluptas cumque similique.', NULL, NULL, '221', NULL),
(83, 'Eum consequuntur beatae voluptas minima inventore ullam.', 'Vel explicabo nam porro id enim. Sed eos modi distinctio beatae. Recusandae numquam aut est ut non ipsa.', NULL, NULL, '334', NULL),
(84, 'Reiciendis magnam sequi sed consequuntur cumque amet enim.', 'Sequi architecto facilis eum ea voluptas ut dolor. Numquam nihil est ut dolore ut. Sit ut quam nemo et eos aut quasi.', NULL, NULL, '403', NULL),
(85, 'Placeat molestias occaecati ut quia voluptatem eum.', 'Iure qui ut ipsa sit voluptates totam porro est. Eveniet nisi nostrum sit error aut.', NULL, NULL, '393', NULL),
(86, 'Sit repudiandae non iusto aut.', 'Id corrupti enim tenetur quos aut saepe. Veritatis perspiciatis numquam pariatur animi.', NULL, NULL, '140', NULL),
(87, 'Ut et blanditiis numquam voluptatem et nulla.', 'Quod placeat molestiae tempora non enim. Eveniet hic reiciendis corrupti.', NULL, NULL, '725', NULL),
(88, 'Inventore sit ea fugiat vel voluptatem consequatur et.', 'Sit qui voluptatum molestiae accusantium. Qui rerum mollitia in vel dolor. Et fuga doloribus incidunt inventore et dolor velit.', NULL, NULL, '259', NULL),
(89, 'Et nulla reprehenderit illum illo dolore sed ut et.', 'Nihil et modi reprehenderit odit. Ex magnam facere harum rerum sit.', NULL, NULL, '678', NULL),
(90, 'Et et rerum vel et delectus voluptatem a.', 'Cupiditate aperiam minima ut dolor. Animi quos dolor dolore et aut. Itaque nemo voluptates corrupti explicabo iusto rem quia qui.', NULL, NULL, '570', NULL),
(91, 'Nostrum consequatur sit reprehenderit inventore temporibus dolore voluptatibus.', 'Nostrum aperiam sunt et maxime fugiat explicabo aspernatur. Architecto quo natus et quas ad.', NULL, NULL, '517', NULL),
(92, 'Explicabo velit eum animi qui dolorem.', 'Voluptatem ad ipsa rerum asperiores error. Velit quibusdam natus consequatur sed ut.', NULL, NULL, '183', NULL),
(93, 'Odio odit odio quia.', 'Nesciunt repudiandae et temporibus et sint. Debitis voluptates enim est occaecati beatae magnam.', NULL, NULL, '982', NULL),
(94, 'Ut veritatis iure est quia et.', 'Velit ut recusandae aperiam voluptate. Consequatur non rerum libero quia.', NULL, NULL, '802', NULL),
(95, 'Sit aut et consequatur ut.', 'Est quia perferendis minima harum sunt. Quidem sit ad maiores natus quos.', NULL, NULL, '219', NULL),
(96, 'Praesentium recusandae non veritatis iste beatae architecto inventore.', 'Impedit beatae voluptate qui veritatis. Illo et rerum vel nulla natus cupiditate. Veniam et et sint commodi veniam qui ab.', NULL, NULL, '565', NULL),
(97, 'Et et consequatur quisquam.', 'Alias velit consequatur et earum est eaque. Mollitia doloremque aut aliquid vero tempore omnis ipsam.', NULL, NULL, '256', NULL),
(98, 'Sit ea optio ea fuga eos est.', 'Sed sed fugiat numquam aperiam labore. Eum incidunt eos laborum esse unde mollitia.', NULL, NULL, '337', NULL),
(99, 'Ducimus molestiae quia aliquam voluptatibus et minus.', 'Dolorem temporibus eum perferendis soluta unde iste. Non consectetur et dolor aut laborum.', NULL, NULL, '185', NULL),
(100, 'Qui praesentium numquam omnis architecto labore eligendi.', 'Voluptas et quia officiis fugit. Et laborum itaque quam error itaque quos. Veritatis ea delectus voluptas dignissimos officiis ipsam.', NULL, NULL, '322', NULL),
(101, 'Est occaecati nisi ea voluptatem.', 'Maiores vel voluptatem quis dolorem. Soluta blanditiis qui excepturi distinctio molestiae sed ut. Et ea quo quia dicta.', NULL, NULL, '281', NULL),
(102, 'Quis neque cumque sit consectetur eos et.', 'Id numquam totam placeat sint voluptates repellendus. Officia nesciunt voluptatem enim debitis dolores.', NULL, NULL, '251', NULL),
(103, 'Laborum dicta fugit ducimus quis labore dolorum fuga.', 'Dolor aperiam quo nulla aperiam. Aut et iste labore dolores quisquam sit eveniet.', NULL, NULL, '550', NULL),
(104, 'Tempora deleniti omnis debitis quibusdam error maxime alias.', 'Voluptas sint culpa enim dolorum non. Rem culpa sequi sapiente consequatur necessitatibus molestiae cumque.', NULL, NULL, '894', NULL),
(105, 'Accusamus ut velit natus natus.', 'Numquam molestias mollitia qui quo at dolore. Sed tempore amet placeat excepturi voluptatibus et aut.', NULL, NULL, '804', NULL),
(106, 'Voluptas officia quia voluptate quod perferendis dolore et culpa.', 'Quia quibusdam autem voluptatem molestias consequatur dolores qui. Eaque tenetur unde excepturi qui molestiae consectetur voluptatum velit. Et temporibus qui voluptatem ullam et quibusdam quos.', NULL, NULL, '918', NULL),
(107, 'Temporibus ut voluptatem sed velit dignissimos est in voluptas.', 'Non voluptatibus ipsa molestiae ut atque. Qui quia ut et qui aspernatur porro.', NULL, NULL, '371', NULL),
(108, 'Ipsam quas quaerat velit est provident.', 'Vero dolores delectus laborum. Maiores et maiores numquam cupiditate quos.', NULL, NULL, '711', NULL),
(109, 'Quia perferendis quibusdam cum error non.', 'Asperiores deserunt quidem nemo ea. Rerum est sint inventore laborum. Saepe consequatur neque ut pariatur.', NULL, NULL, '562', NULL),
(110, 'Et repellendus dolores suscipit omnis.', 'Asperiores eius enim quos molestias cumque blanditiis porro. Qui provident et nostrum excepturi.', NULL, NULL, '270', NULL),
(111, 'Qui autem enim et voluptatem.', 'Similique est consectetur est voluptate eveniet dolor. Atque possimus eum nostrum aspernatur vel repellat velit.', NULL, NULL, '913', NULL),
(112, 'Sunt recusandae et cumque cumque hic deserunt molestiae eos.', 'Doloribus aut facilis vel autem iure corrupti eaque aliquid. Praesentium quod ut vel vitae. Voluptas aut ut sapiente alias porro est odit eveniet.', NULL, NULL, '962', NULL),
(113, 'Dicta cumque suscipit debitis dignissimos delectus pariatur.', 'Autem et vitae et sed. Illo et velit perferendis eum sapiente adipisci est.', NULL, NULL, '139', NULL),
(114, 'Et quia et eius qui voluptatum.', 'Suscipit qui et doloremque perspiciatis iusto non. Ex debitis dolorum quae vel. Et dicta et soluta impedit quia.', NULL, NULL, '544', NULL),
(115, 'Est facere voluptas voluptates laboriosam.', 'Nihil eligendi temporibus odio aut quos ut molestias. Doloremque ipsam id quo atque aut voluptas.', NULL, NULL, '101', NULL),
(116, 'Ut odio et ad a dolores autem quasi.', 'Corrupti voluptatem odit laboriosam numquam earum consequatur temporibus. Perspiciatis aut harum odio enim quaerat suscipit dolor.', NULL, NULL, '672', NULL),
(117, 'Quos quae totam sit consequuntur non quia.', 'Omnis inventore aut deleniti eum labore. Libero sint est ut. Deserunt ullam odit reiciendis et.', NULL, NULL, '616', NULL),
(118, 'Ut accusamus et voluptatibus voluptatum architecto natus nihil.', 'Eos unde eveniet ad possimus repudiandae consequuntur. Aut quisquam tempore non et.', NULL, NULL, '576', NULL),
(119, 'Nihil quos sunt porro.', 'Nihil eius blanditiis amet minima consequatur corporis quod. Quia dolores vero odio mollitia. Et vero autem amet et.', NULL, NULL, '916', NULL),
(120, 'Quam error ad saepe et omnis voluptatem.', 'Alias dolorum quia suscipit magni qui repellendus quibusdam nihil. Ut et et ex in animi dolore. Corporis incidunt id quam sed ut aut.', NULL, NULL, '817', NULL),
(121, 'Ea consectetur et voluptates ut quibusdam tempore quis sunt.', 'Omnis ea repellendus ut saepe voluptatem mollitia repellat. Dolorum at laudantium sapiente quia nisi occaecati est. Vero natus id nobis molestiae adipisci vel.', NULL, NULL, '954', NULL),
(122, 'Aliquid voluptas nisi reiciendis cum dolorum et id officiis.', 'Ea officiis dolores earum corporis est ratione. Libero accusantium et et reprehenderit repellat.', NULL, NULL, '122', NULL),
(123, 'Explicabo et voluptatum et odio.', 'Maxime eum nesciunt et ducimus. Id non temporibus eum harum delectus et eius fugit.', NULL, NULL, '256', NULL),
(124, 'Ea magnam et ratione corrupti ducimus deleniti sunt ea.', 'Eos perferendis dolores magnam ea enim non dolorum. Quasi inventore repellat beatae omnis qui blanditiis eos.', NULL, NULL, '831', NULL),
(125, 'Consequatur occaecati autem aliquam autem.', 'Explicabo libero pariatur iure numquam ipsa et atque. Tenetur aut reprehenderit aut est necessitatibus fugit optio.', NULL, NULL, '820', NULL),
(126, 'Voluptatibus ullam qui modi aut architecto quasi quis ad.', 'Aspernatur magnam delectus eum est est molestiae. Aut debitis ea recusandae atque labore.', NULL, NULL, '512', NULL),
(127, 'Voluptatem quod et officiis.', 'Vel cupiditate a architecto sint ut iste eaque. Cupiditate omnis rem qui architecto quae. Est et qui quod.', NULL, NULL, '587', NULL),
(128, 'Quo corrupti eveniet similique asperiores magnam nihil.', 'Minima id doloribus eligendi quaerat vel. Voluptatem possimus quia maxime excepturi nemo.', NULL, NULL, '813', NULL),
(129, 'Est rem rem est.', 'Doloremque asperiores voluptatem recusandae quod quia cupiditate magni. A aut molestiae quae labore illo magni et. Molestiae sed est minima recusandae quo.', NULL, NULL, '984', NULL),
(130, 'Quis eligendi nam doloremque dolorem reprehenderit eius commodi.', 'Reprehenderit possimus dignissimos dolorem repellat aliquid dolor quis. Ea sed et doloribus consectetur provident voluptatem illum. Ratione nisi consequatur perferendis reprehenderit.', NULL, NULL, '171', NULL),
(131, 'Iste corrupti officia fuga accusamus quia laborum asperiores.', 'Ullam laudantium nihil in perferendis nulla. Nisi numquam fuga voluptas voluptatum impedit perferendis. Voluptas maxime accusamus dolor vero.', NULL, NULL, '166', NULL),
(132, 'Officia et sit ut aut atque enim omnis culpa.', 'Qui magnam id atque sint laudantium. Repudiandae ea voluptatum eum iste aut. In deleniti ipsam aperiam sunt ullam veniam.', NULL, NULL, '407', NULL),
(133, 'Perspiciatis assumenda minima qui sit.', 'Quia aut enim vel ut vel numquam. Mollitia numquam aut non ut perspiciatis ut. Rerum est quia qui eum rerum suscipit alias sint.', NULL, NULL, '532', NULL),
(134, 'Illum autem est corrupti deserunt molestiae repudiandae et.', 'Alias mollitia et omnis facilis odio incidunt accusamus rerum. Eius non repudiandae omnis illo officia. Sit corporis quis illum officia labore.', NULL, NULL, '869', NULL),
(135, 'Et quis voluptatem vel.', 'Excepturi sapiente saepe qui nihil. Esse accusamus at culpa est.', NULL, NULL, '113', NULL),
(136, 'Aperiam tenetur labore consequatur quam.', 'Praesentium tenetur impedit ut. Illo odit natus sed sunt accusamus unde dolor.', NULL, NULL, '672', NULL),
(137, 'Quis aperiam excepturi eos quo.', 'Fugiat possimus unde suscipit quae. Cumque qui laboriosam impedit vel nulla et consequatur. Quasi quo eum explicabo consequuntur.', NULL, NULL, '560', NULL),
(138, 'Maiores eum suscipit vero.', 'Ut corrupti mollitia reprehenderit dignissimos neque id fugiat. Eos itaque molestias asperiores omnis eveniet aliquam quo similique.', NULL, NULL, '465', NULL),
(139, 'Quae minus sit et commodi deleniti blanditiis.', 'Exercitationem repudiandae distinctio ut quis non ullam qui. Ut voluptatum qui dignissimos corrupti. Ab adipisci sint quo.', NULL, NULL, '146', NULL),
(140, 'Aspernatur ducimus repellendus optio dolorem.', 'Suscipit nesciunt accusantium eos cupiditate autem nam commodi. Et qui voluptatum excepturi eveniet quos officia.', NULL, NULL, '560', NULL),
(141, 'Ut itaque quia quo illum est non.', 'Corrupti velit facilis vitae nulla. Rerum impedit nihil cumque harum omnis qui ut. In inventore cum quia.', NULL, NULL, '677', NULL),
(142, 'Qui fugit cupiditate reprehenderit et est sunt.', 'Dolorem illum voluptatibus laborum quisquam et voluptatibus ut. Ipsa non consequatur rerum vitae.', NULL, NULL, '378', NULL),
(143, 'Ipsa sequi rem aut minima eum.', 'Vero dolor debitis atque tempora aliquid laudantium. Odit assumenda dicta voluptatibus velit cumque.', NULL, NULL, '110', NULL),
(144, 'Facilis blanditiis facilis maxime labore repellendus impedit molestias explicabo.', 'Non dolor laboriosam aut voluptate. Maiores nulla quo iste incidunt dolorum quia facilis. Non in eum reprehenderit odit repellendus ea est.', NULL, NULL, '904', NULL),
(145, 'Rerum nobis similique nihil.', 'Nobis optio ut aut ratione nemo modi. Nam dignissimos quis voluptatem suscipit beatae.', NULL, NULL, '190', NULL),
(146, 'Delectus quam dolores voluptatum laudantium sapiente.', 'Doloremque atque quasi impedit consequatur modi beatae consequuntur. Aspernatur eius ut animi sequi omnis.', NULL, NULL, '952', NULL),
(147, 'Commodi non quia quae aliquid.', 'Labore est vero occaecati. Maiores tempora aut aut in possimus nihil ex ratione. Ratione sapiente ut eveniet doloremque.', NULL, NULL, '974', NULL),
(148, 'Incidunt laborum nobis eligendi sed molestiae neque ipsam.', 'Est sit exercitationem voluptates totam. Eaque sit ipsam cupiditate ex non quos repudiandae. Error dolores molestiae molestias facere enim officia.', NULL, NULL, '231', NULL),
(149, 'Adipisci voluptas incidunt vel eveniet delectus non quia aliquam.', 'Adipisci atque aut aliquam. Eveniet nemo repellat perspiciatis. Necessitatibus et animi blanditiis natus libero.', NULL, NULL, '829', NULL),
(150, 'Omnis consequatur error dolorem nemo.', 'Ullam pariatur assumenda provident nulla. Nisi dignissimos corrupti est aliquam ex expedita.', NULL, NULL, '200', NULL),
(151, 'Dicta iste minima magnam qui earum quisquam quisquam reiciendis.', 'Eum et illum aspernatur ab. Quas odio qui quisquam facilis voluptatem non modi.', NULL, NULL, '969', NULL),
(152, 'Id doloremque ullam perspiciatis consequuntur cum.', 'Eos fuga ut voluptate sit vel fugiat voluptatem. Temporibus nemo facilis et molestias.', NULL, NULL, '848', NULL),
(153, 'Minus voluptatem saepe nesciunt et vero.', 'Est suscipit odit amet odit maxime quam laborum. Aspernatur tempore quibusdam assumenda necessitatibus culpa. Sequi aperiam tenetur commodi sed.', NULL, NULL, '463', NULL),
(155, 'Voluptatibus repudiandae aliquam cumque.', 'Voluptas earum sunt voluptatem. Itaque reprehenderit labore soluta vitae sapiente eum. Ut voluptate et modi harum ipsam cumque unde adipisci.', NULL, NULL, '743', NULL),
(156, 'Unde et voluptatem explicabo voluptate maxime.', 'Ut officiis in eius eius non itaque. Hic ut eveniet aperiam ut mollitia atque officiis optio. Error ut corporis est.', NULL, NULL, '890', NULL),
(157, 'Quaerat quis nemo id nam voluptatem tempora labore.', 'Facilis molestiae aut officia architecto expedita sed aut. Consectetur dolor nisi culpa voluptates.', NULL, NULL, '784', NULL),
(158, 'Et repellat odit iure ipsa.', 'Provident illo voluptates dolores qui. Esse eligendi est quidem quia atque beatae. Tempora quisquam voluptatibus velit quisquam minima necessitatibus quia.', NULL, NULL, '899', NULL),
(159, 'Doloremque in excepturi numquam quod aut molestiae.', 'Doloribus voluptatibus incidunt voluptates. Optio ut perferendis a dolorem voluptatem. Est autem quidem sapiente temporibus eaque minima.', NULL, NULL, '249', NULL),
(160, 'Et sunt non libero non aut quis.', 'Iusto doloribus dolorum error adipisci labore maxime facilis. Dolorum minima accusantium quo distinctio. Earum alias ut ipsum modi atque atque.', NULL, NULL, '926', NULL),
(161, 'Asperiores distinctio fugit fugit blanditiis est ipsum omnis.', 'Voluptatem est rerum accusamus exercitationem error velit et. Doloribus odit et mollitia sapiente laboriosam. Sequi excepturi assumenda eos molestiae non numquam.', NULL, NULL, '333', NULL),
(162, 'Delectus culpa voluptatem impedit dicta non.', 'Hic explicabo atque sequi culpa voluptas in. Sunt ipsum est expedita sunt commodi.', NULL, NULL, '877', NULL),
(163, 'Perferendis doloribus eum temporibus eum.', 'Unde qui qui non. Saepe laborum quisquam rem magni suscipit suscipit. Rerum a omnis voluptatem dolores.', NULL, NULL, '760', NULL),
(164, 'Libero et blanditiis aut qui.', 'Est pariatur et ex repellat ut. Hic dolor unde aut dolorem deserunt illo error. Omnis ab voluptatem reprehenderit aut fugit debitis maiores commodi.', NULL, NULL, '575', NULL),
(165, 'Ut debitis placeat eligendi quisquam ut qui.', 'Ut similique aut doloremque perferendis est veritatis in. Deleniti dolor modi cupiditate quas debitis.', NULL, NULL, '835', NULL),
(166, 'Quo ut eum adipisci aspernatur.', 'Inventore minus error facilis minima. Eveniet sit et asperiores natus quibusdam. Odit quae et illo sed voluptates sed in ut.', NULL, NULL, '806', NULL),
(167, 'Quae ut sint cum praesentium animi eius ipsa.', 'Quos ut iure atque quibusdam sunt et adipisci. Ut quo tempora necessitatibus vitae sed molestias deserunt in.', NULL, NULL, '395', NULL),
(168, 'Voluptatem blanditiis officia qui tempore nihil alias voluptas odit.', 'Eos numquam nisi architecto quam rerum aut. Accusantium aperiam ea ut a laboriosam velit. Facilis quis libero nihil non earum et.', NULL, NULL, '743', NULL),
(169, 'Corporis et qui modi numquam enim.', 'Placeat corporis quo quo sint consequatur laudantium. Officia beatae doloribus libero quia neque ut. In molestias sequi odio dicta quia quia reprehenderit et.', NULL, NULL, '405', NULL),
(170, 'Quasi laborum inventore praesentium aperiam sequi.', 'Ab occaecati molestiae eos ut qui rerum. Rerum architecto eos labore veniam.', NULL, NULL, '727', NULL),
(171, 'Ut voluptatem cum voluptate aperiam libero quia delectus.', 'Praesentium ab sint ex excepturi excepturi deleniti. Esse nostrum corporis odit earum.', NULL, NULL, '409', NULL),
(172, 'Ut vel ratione nihil.', 'Veniam aspernatur sunt facere. Tenetur aut voluptas odit quia beatae sit omnis.', NULL, NULL, '855', NULL),
(173, 'Fugiat distinctio accusantium debitis voluptas.', 'Animi accusantium tenetur minus nihil. Amet quo consequatur sunt deserunt voluptas vel. Quidem ratione rerum totam libero sed velit id.', NULL, NULL, '576', NULL),
(174, 'Magni impedit earum ut voluptatem explicabo et alias.', 'Sequi optio unde itaque. Velit ea eos veritatis consequatur. Odit labore neque et molestias consequatur consequatur.', NULL, NULL, '653', NULL),
(175, 'Itaque omnis unde sint et expedita.', 'Rerum aut saepe quae omnis est. Nam possimus accusantium sit nobis non quia culpa.', NULL, NULL, '708', NULL),
(176, 'Repudiandae eius et facere est sit.', 'Rerum voluptatem velit amet ut sed beatae quia. Repellat porro enim perspiciatis rerum dolore culpa voluptatum. Quisquam non sit assumenda saepe officiis sequi.', NULL, NULL, '356', NULL),
(177, 'Est perspiciatis sed deserunt qui natus ut corrupti.', 'Qui enim eum ut quia aliquam magnam. Et adipisci assumenda architecto ut enim. Enim qui laboriosam voluptatem molestiae qui itaque.', NULL, NULL, '837', NULL),
(178, 'Voluptatem repellat sequi vitae qui.', 'Et dolore eius dolores occaecati doloremque exercitationem. Quas consequatur voluptatem eum temporibus labore. Dolor id nulla quasi eos.', NULL, NULL, '896', NULL),
(179, 'Non est voluptatem consequatur ad.', 'Aliquam natus deleniti velit omnis et eaque. Non sit ipsa veniam nobis est ducimus.', NULL, NULL, '700', NULL),
(180, 'Optio culpa debitis omnis tenetur quo.', 'Exercitationem enim molestiae laborum quidem ducimus expedita quasi. Voluptatum quia qui odit consequatur ut ut qui dolores.', NULL, NULL, '824', NULL),
(181, 'Dolorem vel fuga totam fuga.', 'Porro minus quidem sint at est. Ipsum fugit voluptatem dolores pariatur et sapiente.', NULL, NULL, '171', NULL),
(182, 'Perspiciatis consequatur ex possimus quo quia cum rerum.', 'Quidem natus et dolores earum omnis ut atque accusamus. Et fugit corporis ad. Delectus perferendis ex dolore quisquam.', NULL, NULL, '126', NULL),
(183, 'Et iste dolor odit dolorem nemo nulla.', 'Et ducimus veniam earum. Sapiente fugiat voluptas ducimus labore explicabo.', NULL, NULL, '456', NULL),
(184, 'Rerum quia provident consequatur deleniti.', 'In molestiae id itaque ex. Delectus deleniti in illum tempore doloremque blanditiis sit. Fugit et omnis ipsa repellat ad quas.', NULL, NULL, '793', NULL),
(185, 'Ex quisquam distinctio harum reprehenderit beatae.', 'Quod voluptatem incidunt et ipsa illo facilis qui in. Modi quia ut eos repellat aut porro. Ad ut dignissimos velit sed magni et.', NULL, NULL, '965', NULL),
(186, 'Esse dignissimos reiciendis et magni magni laudantium non.', 'Esse ipsa fugit maxime minima esse sunt. Eum laboriosam itaque laudantium reprehenderit sint placeat ullam est.', NULL, NULL, '573', NULL),
(187, 'Occaecati est voluptatem qui beatae.', 'Est quis eligendi dolorem tempora culpa adipisci. Blanditiis unde repellendus aut maiores ratione. Ipsam autem voluptatibus id qui sit ut et sint.', NULL, NULL, '778', NULL),
(188, 'Excepturi facilis pariatur inventore expedita eos ipsa sint.', 'Laudantium autem officiis laboriosam nostrum vel aperiam. Eius libero iusto cupiditate quia occaecati blanditiis et. Qui quaerat voluptatem perspiciatis voluptatem.', NULL, NULL, '483', NULL),
(189, 'Nihil repudiandae minima praesentium repellendus dolores voluptatem.', 'Pariatur perferendis exercitationem magnam et vel qui. Id aut rerum quibusdam laboriosam.', NULL, NULL, '336', NULL),
(190, 'Illum nisi explicabo qui nulla repellendus doloribus.', 'Nostrum hic nihil voluptatum quo ipsam distinctio distinctio ullam. Alias minus maiores porro corrupti dolore distinctio ea.', NULL, NULL, '743', NULL),
(191, 'Ipsum esse voluptatem dicta.', 'Deserunt consectetur corrupti iusto consectetur ut. Qui quaerat natus qui. Aperiam sit et aut voluptatem est quas assumenda.', NULL, NULL, '441', NULL),
(192, 'Quidem vel vitae eveniet nisi tempore totam sit.', 'Ut veritatis qui perspiciatis quod explicabo. Est corrupti libero aliquam illo. Expedita qui est hic aut id culpa.', NULL, NULL, '567', NULL),
(193, 'A saepe alias sit cupiditate.', 'Vitae vitae ut quibusdam ut repellat quod. Est aperiam ea itaque excepturi mollitia. Amet exercitationem quam ducimus eligendi possimus nihil.', NULL, NULL, '273', NULL),
(194, 'Corrupti tempore fugiat deserunt et aspernatur dolores ut.', 'Reprehenderit harum qui minima pariatur. Facilis reiciendis voluptas pariatur aut quis assumenda. Molestiae et atque et est omnis molestiae cumque.', NULL, NULL, '555', NULL),
(195, 'Et atque rerum dicta odit distinctio aut.', 'Tempora culpa maiores nisi in id. Sint maiores beatae modi eos consequuntur ipsam.', NULL, NULL, '686', NULL),
(196, 'Molestias ad mollitia eos et ex asperiores.', 'Consectetur fugit iure tempora quam sed. Cum sapiente soluta aperiam alias velit eum.', NULL, NULL, '807', NULL),
(197, 'Est quam quos eligendi laudantium.', 'Tempora totam expedita est vitae est qui. Corporis magnam voluptatem est dolorem pariatur incidunt.', NULL, NULL, '291', NULL),
(198, 'Iure illum consequuntur et quod libero minus magni.', 'Enim neque ipsum libero et natus accusamus et ut. Omnis voluptatem quia at deleniti nihil omnis.', NULL, NULL, '540', NULL),
(199, 'Incidunt dicta quasi dolores architecto dolores.', 'Distinctio dicta quas eos suscipit doloribus. Hic unde non velit dicta recusandae quia sit non.', NULL, NULL, '665', NULL),
(200, 'Cupiditate excepturi velit nisi explicabo.', 'Similique voluptates illo architecto est nesciunt consectetur ipsum. Est sunt nesciunt est quae.', NULL, NULL, '132', NULL),
(201, 'Saepe aut quo sed aut et nostrum.', 'Sapiente culpa at tempora voluptates nobis. Maxime aliquid delectus sequi possimus eum enim iure. Est cum occaecati consectetur in magni temporibus.', NULL, NULL, '923', NULL),
(202, 'Minima minima suscipit totam et.', 'Quo aut enim numquam enim repudiandae facilis fugiat labore. Nesciunt eos qui et veniam velit explicabo. Dignissimos error officia eligendi maiores corporis et eligendi.', NULL, NULL, '313', NULL),
(203, 'Non magnam quidem consequatur facere quo voluptas.', 'Nulla tenetur nemo tenetur quam. Vel eius et et accusamus quis.', NULL, NULL, '394', NULL),
(204, 'Cupiditate fuga cum excepturi.', 'Voluptatum modi nisi necessitatibus consequatur. Sit non nulla et laborum quisquam.', NULL, NULL, '809', NULL),
(205, 'Et expedita earum in sapiente velit.', 'Expedita voluptate nisi dolores quis in labore mollitia. Reprehenderit quia vel ipsa qui qui qui.', NULL, NULL, '750', NULL),
(206, 'Eligendi dolores architecto omnis minus est.', 'Quis atque non laudantium illo qui. Dolor ut non occaecati et rerum nulla molestiae deleniti. Cum qui quia nihil.', NULL, NULL, '575', NULL),
(207, 'Delectus error saepe laborum suscipit dolor.', 'Voluptas maiores et earum quis modi eum. Sint error numquam vel cumque et sunt.', NULL, NULL, '392', NULL),
(208, 'Quas aliquid sed blanditiis rerum maxime aut nisi.', 'Aliquam sunt ullam repellat architecto deleniti. Non qui incidunt qui magnam.', NULL, NULL, '943', NULL),
(209, 'Illo nam molestias veritatis et quis voluptate necessitatibus.', 'Nam facere excepturi soluta odio alias dolores aut necessitatibus. Tempore dolor aut veniam perspiciatis. Architecto ut non accusantium assumenda ratione.', NULL, NULL, '790', NULL),
(210, 'Et provident provident itaque quas deleniti tenetur.', 'Atque repellendus quisquam minima ducimus tempora natus eos. Quae neque delectus dolorem ea fugiat est.', NULL, NULL, '537', NULL),
(211, 'Quidem corporis enim sunt rerum.', 'Cum dicta harum laboriosam incidunt. Cupiditate et iste id saepe ut. Dolore voluptates quis voluptate aperiam laborum asperiores.', NULL, NULL, '800', NULL),
(212, 'Enim tempora ullam magni rerum voluptas reprehenderit laborum.', 'Dolores itaque delectus aperiam quae. Cupiditate quasi provident nihil dolorem nostrum explicabo reprehenderit. Ipsa quae temporibus quia aperiam suscipit omnis.', NULL, NULL, '560', NULL),
(213, 'Repudiandae est qui sit illo deserunt.', 'Nemo quasi ex doloremque dolorem. Atque aut voluptas omnis necessitatibus sed voluptas vitae est.', NULL, NULL, '565', NULL),
(214, 'Est accusamus blanditiis ut vel occaecati.', 'Eligendi est eum rerum earum quae. Tempora accusamus fugiat sunt deserunt non voluptatem. Expedita officia rerum qui.', NULL, NULL, '243', NULL),
(215, 'Cum non est odit eos officiis aliquid.', 'Quas numquam ipsa eum omnis sequi minima. Et aut atque perspiciatis quis minus.', NULL, NULL, '633', NULL),
(216, 'Illum nisi et fugit.', 'Est aut inventore minima. Rerum consectetur ullam officia voluptatem. Dolores repellat laudantium rerum aut.', NULL, NULL, '727', NULL),
(217, 'Dolores repellendus perspiciatis beatae omnis non alias.', 'Nobis et soluta et ducimus aut. Ab repudiandae quis magnam perspiciatis.', NULL, NULL, '199', NULL),
(218, 'Consectetur neque dolorem ut aut pariatur praesentium et.', 'Saepe sunt optio minus non alias aperiam aliquam. Dolorem deserunt asperiores dolorem dolore. At et ut eum qui voluptatem sequi architecto.', NULL, NULL, '941', NULL),
(219, 'Omnis aut non sit eum alias nostrum.', 'Sint ducimus ut explicabo est cumque. Earum labore id quia accusamus expedita ex. Veniam numquam nostrum sit.', NULL, NULL, '222', NULL),
(220, 'Cupiditate praesentium sunt doloribus nostrum aut.', 'Quia autem fugiat iste inventore. Ipsum aut quaerat fuga fuga velit.', NULL, NULL, '186', NULL),
(221, 'Quidem ex cum voluptatem qui.', 'Nemo rerum ea quam est. Voluptas quos voluptatum quidem aliquam ipsum.', NULL, NULL, '183', NULL),
(222, 'Nemo ipsum quod sed a quaerat nihil adipisci.', 'Rerum sequi et velit incidunt. Accusantium corrupti blanditiis eos perferendis eum laudantium. Quibusdam omnis voluptas dolor necessitatibus sit totam magni ullam.', NULL, NULL, '343', NULL),
(223, 'Ut non velit libero sint et.', 'Quis animi facilis molestias sunt. Est corrupti atque inventore accusamus.', NULL, NULL, '100', NULL),
(224, 'Sed et rerum commodi distinctio officiis.', 'Consequatur itaque velit quasi qui quia quisquam est. Modi autem officia velit qui aperiam.', NULL, NULL, '236', NULL),
(225, 'Exercitationem recusandae error culpa dicta vitae quo tempore eum.', 'Est autem non in ullam facilis repudiandae doloremque. Animi corporis quia rerum commodi dicta.', NULL, NULL, '191', NULL),
(226, 'Rem suscipit consequatur tempora.', 'Eveniet non sed illo sint. Omnis praesentium nisi optio suscipit eaque.', NULL, NULL, '421', NULL),
(227, 'At repudiandae et blanditiis et quae.', 'Asperiores modi laudantium temporibus recusandae. Velit nulla est unde inventore nam tempora voluptatibus.', NULL, NULL, '881', NULL),
(228, 'Officiis quas culpa soluta velit et tempora fugit aspernatur.', 'Voluptatem autem aut eum voluptatum deserunt et. Est ab molestiae quia illo quia.', NULL, NULL, '809', NULL),
(229, 'Et illum dolore et.', 'Eveniet nihil quasi voluptatibus in deleniti explicabo consectetur qui. Voluptates voluptatibus fugiat veniam debitis. Deserunt autem voluptate architecto consequatur facilis est asperiores quis.', NULL, NULL, '446', NULL),
(230, 'Consequuntur fugiat dolor saepe et earum.', 'Consequatur omnis enim ut sed quas. Consequuntur quia et laudantium velit. Et ut harum eveniet autem sapiente quidem veniam.', NULL, NULL, '293', NULL),
(231, 'Doloremque omnis rem optio aperiam.', 'Esse et blanditiis harum autem quas voluptas dicta. Dolor esse minus maxime qui et omnis. Deserunt cumque dolores eos vel aut facilis unde.', NULL, NULL, '125', NULL),
(232, 'Sed accusamus dolores sit.', 'Fugiat ullam reprehenderit in eaque corrupti nisi delectus et. Consectetur omnis ut atque at aut.', NULL, NULL, '193', NULL),
(233, 'Sit atque voluptatem expedita quis possimus atque.', 'Earum ea molestias sit sed porro. Nulla nostrum qui debitis et et aut alias.', NULL, NULL, '959', NULL),
(234, 'Architecto iusto vel qui dolorem.', 'Aliquam exercitationem ad dolorem eos quos nam ratione nihil. Rem et labore consequatur dolore. Molestiae blanditiis tempore omnis ipsa.', NULL, NULL, '460', NULL),
(235, 'Exercitationem et sit quia explicabo debitis nostrum tempore.', 'Sit expedita et iusto nam et aut illum. Debitis veniam nihil natus ut saepe.', NULL, NULL, '269', NULL),
(236, 'Dolores nemo et nulla facere sit laudantium in.', 'Voluptatem ducimus qui pariatur deserunt et cum. Omnis architecto maiores perspiciatis occaecati corporis.', NULL, NULL, '374', NULL),
(237, 'Error totam accusantium cum.', 'Consequuntur nihil qui exercitationem ut eaque nihil. Nulla sapiente voluptas a praesentium error sint et necessitatibus. Id quia quia explicabo explicabo rerum.', NULL, NULL, '308', NULL),
(238, 'Aliquid molestias aperiam minus iusto voluptatum.', 'Laudantium sed autem ea quia rem qui nihil. Doloremque dolore et facere praesentium assumenda. Magni exercitationem itaque et fugiat cum quod impedit.', NULL, NULL, '365', NULL),
(239, 'Quasi voluptas expedita quia officiis.', 'Et voluptate similique esse velit vel inventore dolores. Laboriosam sit quis ut voluptatum.', NULL, NULL, '417', NULL),
(240, 'Dolorem tenetur aut explicabo et qui sint.', 'Ut voluptatem consequatur adipisci totam tempore rerum unde cumque. Iure ipsam quos sed facere eum sit.', NULL, NULL, '835', NULL),
(241, 'Similique molestiae saepe qui et fugit.', 'Aut minus non molestias explicabo. Qui ut ex ipsum tempora culpa.', NULL, NULL, '865', NULL);

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
('wdnXmcYYujbCRoBb4YXq2VtKyZ0TJ9LzGuGKzQQc', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicHZkMnBDcnlvdklSa0NWUXhNdEhiTVVIS3ZjbWkxRGJNUmZqTHRGeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjQ6Imh0dHA6Ly9sb2NhbGhvc3QvbGFyYXZlbC1hcHAvaG90ZWwta2lhdmVoYS9wdWJsaWMvYWRtaW4vcm9vbXR5cGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6ImFkbWluRGF0YSI7TzozOToiSWxsdW1pbmF0ZVxEYXRhYmFzZVxFbG9xdWVudFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjE6e2k6MDtPOjE2OiJBcHBcTW9kZWxzXEFkbWluIjozMDp7czoxMzoiACoAY29ubmVjdGlvbiI7czo1OiJteXNxbCI7czo4OiIAKgB0YWJsZSI7czo2OiJhZG1pbnMiO3M6MTM6IgAqAHByaW1hcnlLZXkiO3M6MjoiaWQiO3M6MTA6IgAqAGtleVR5cGUiO3M6MzoiaW50IjtzOjEyOiJpbmNyZW1lbnRpbmciO2I6MTtzOjc6IgAqAHdpdGgiO2E6MDp7fXM6MTI6IgAqAHdpdGhDb3VudCI7YTowOnt9czoxOToicHJldmVudHNMYXp5TG9hZGluZyI7YjowO3M6MTA6IgAqAHBlclBhZ2UiO2k6MTU7czo2OiJleGlzdHMiO2I6MTtzOjE4OiJ3YXNSZWNlbnRseUNyZWF0ZWQiO2I6MDtzOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7czoxMzoiACoAYXR0cmlidXRlcyI7YTo4OntzOjI6ImlkIjtpOjE7czo4OiJmdWxsTmFtZSI7czoyMDoiQXZlcnkgUnVpeiBDZXJ2YW50ZXMiO3M6NToicGhvbmUiO3M6MTM6IjA5NDI4ODI4NDgxODIiO3M6NToiZW1haWwiO3M6MTU6IkFkbWluQGdtYWlsLmNvbSI7czo4OiJwYXNzd29yZCI7czo0MDoiZDAzM2UyMmFlMzQ4YWViNTY2MGZjMjE0MGFlYzM1ODUwYzRkYTk5NyI7czo3OiJwcm9maWxlIjtzOjA6IiI7czoxMDoiY3JlYXRlZF9hdCI7TjtzOjEwOiJ1cGRhdGVkX2F0IjtOO31zOjExOiIAKgBvcmlnaW5hbCI7YTo4OntzOjI6ImlkIjtpOjE7czo4OiJmdWxsTmFtZSI7czoyMDoiQXZlcnkgUnVpeiBDZXJ2YW50ZXMiO3M6NToicGhvbmUiO3M6MTM6IjA5NDI4ODI4NDgxODIiO3M6NToiZW1haWwiO3M6MTU6IkFkbWluQGdtYWlsLmNvbSI7czo4OiJwYXNzd29yZCI7czo0MDoiZDAzM2UyMmFlMzQ4YWViNTY2MGZjMjE0MGFlYzM1ODUwYzRkYTk5NyI7czo3OiJwcm9maWxlIjtzOjA6IiI7czoxMDoiY3JlYXRlZF9hdCI7TjtzOjEwOiJ1cGRhdGVkX2F0IjtOO31zOjEwOiIAKgBjaGFuZ2VzIjthOjA6e31zOjg6IgAqAGNhc3RzIjthOjA6e31zOjE3OiIAKgBjbGFzc0Nhc3RDYWNoZSI7YTowOnt9czoyMToiACoAYXR0cmlidXRlQ2FzdENhY2hlIjthOjA6e31zOjEzOiIAKgBkYXRlRm9ybWF0IjtOO3M6MTA6IgAqAGFwcGVuZHMiO2E6MDp7fXM6MTk6IgAqAGRpc3BhdGNoZXNFdmVudHMiO2E6MDp7fXM6MTQ6IgAqAG9ic2VydmFibGVzIjthOjA6e31zOjEyOiIAKgByZWxhdGlvbnMiO2E6MDp7fXM6MTA6IgAqAHRvdWNoZXMiO2E6MDp7fXM6MTA6InRpbWVzdGFtcHMiO2I6MTtzOjEzOiJ1c2VzVW5pcXVlSWRzIjtiOjA7czo5OiIAKgBoaWRkZW4iO2E6MDp7fXM6MTA6IgAqAHZpc2libGUiO2E6MDp7fXM6MTE6IgAqAGZpbGxhYmxlIjthOjA6e31zOjEwOiIAKgBndWFyZGVkIjthOjE6e2k6MDtzOjE6IioiO319fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9fQ==', 1712041458);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `department_id` int(11) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `salary_type` varchar(255) NOT NULL,
  `salary_amt` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `fullName`, `department_id`, `photo`, `bio`, `salary_type`, `salary_amt`, `created_at`, `updated_at`) VALUES
(1, 'Harley Quin', 2, NULL, 'sadasd', 'Monthly', '200', '2024-03-31 09:43:30', '2024-03-31 09:43:30'),
(2, 'April Gonzales edited', 2, 'public/imgs/zCtnUdt3o7vwaNXLF4sFaTEyERCisetXr7qIOYT1.jpg', NULL, 'Daily', '1000', '2024-03-31 09:45:18', '2024-03-31 15:46:35'),
(4, 'April Gonzales edited', 1, 'public/imgs/PICueqt6xkkI0HGSIwcqqBoyKZEzZ3wZmUxhccD3.jpg', 'asd', 'Monthly', '200', '2024-03-31 09:49:10', '2024-03-31 09:49:10');

-- --------------------------------------------------------

--
-- Table structure for table `staff_payments`
--

CREATE TABLE `staff_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_payments`
--

INSERT INTO `staff_payments` (`id`, `staff_id`, `amount`, `payment_date`, `created_at`, `updated_at`) VALUES
(2, 1, 2000, '2024-04-01', '2024-03-31 17:55:52', '2024-03-31 17:55:52'),
(3, 1, 3000, '2024-04-01', '2024-03-31 18:00:42', '2024-03-31 18:00:42'),
(4, 1, 2000, '2024-04-02', '2024-04-01 19:49:18', '2024-04-01 19:49:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_payments`
--
ALTER TABLE `staff_payments`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `room_types`
--
ALTER TABLE `room_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff_payments`
--
ALTER TABLE `staff_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
