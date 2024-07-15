-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 15, 2024 at 02:58 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_dinhtung`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `pty` int NOT NULL,
  `price` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `customer_id`, `product_id`, `pty`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 1, 300000, NULL, NULL),
(2, 1, 12, 1, 150000, NULL, NULL),
(3, 2, 10, 1, 120000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `address`, `email`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Tùng', '0123456789', 'ABC', 'tungmarines@gmail.com', 'Đơn 1', '2024-07-12 07:55:07', '2024-07-12 07:55:07'),
(2, 'Tùng 2', '0123456789', 'ABCD', 'tungmarines@gmail.com', 'Đơn 2', '2024-07-12 07:55:42', '2024-07-12 07:55:42');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"b5feaf48-9474-4215-9cba-65ad40debaab\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:21:\\\"tungmarines@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-07-12 14:55:09.849091\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1720796109, 1720796108),
(2, 'default', '{\"uuid\":\"b80b50b9-215b-4231-8774-c65d2fd5bd13\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:21:\\\"tungmarines@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-07-12 14:55:44.431606\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1720796144, 1720796142);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `description`, `content`, `thumb`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Thời Trang Nữ', 0, '', '', '/storage/uploads/2024_07_12/banner-01.jpg', 1, '2024-07-12 02:59:41', '2024-07-12 02:59:41'),
(2, 'Thời Trang Nam', 0, '', '', '/storage/uploads/2024_07_12/banner-02.jpg', 1, '2024-07-12 02:59:54', '2024-07-12 02:59:54'),
(3, 'Phụ Kiện', 0, '', '', '/storage/uploads/2024_07_12/banner-03.jpg', 1, '2024-07-12 03:00:47', '2024-07-12 03:17:01');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(72, '2014_10_12_000000_create_users_table', 1),
(73, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(74, '2019_08_19_000000_create_failed_jobs_table', 1),
(75, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(76, '2024_06_24_095017_create_menus_table', 1),
(77, '2024_06_25_104008_create_products_table', 1),
(78, '2024_06_29_171255_create_sliders_table', 1),
(79, '2024_07_09_101124_create_customers_table', 1),
(80, '2024_07_09_101141_create_carts_table', 1),
(81, '2024_07_10_145544_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` int NOT NULL,
  `price` int DEFAULT NULL,
  `price_sale` int DEFAULT NULL,
  `active` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `menu_id`, `price`, `price_sale`, `active`, `created_at`, `updated_at`, `thumb`) VALUES
(1, 'Áo Thun Nữ Classic', 'Áo Thun Nữ Classic', '<p>&Aacute;o Thun Nữ&nbsp;Classic</p>', 1, 120000, NULL, 1, '2024-07-12 03:25:55', '2024-07-12 03:35:52', '/storage/uploads/2024_07_12/product-01.jpg'),
(2, 'Áo Sơ Mi Nữ Classic', 'Áo Sơ Mi Nữ Classic', '<p>&Aacute;o Sơ Mi Nữ Classic</p>', 1, 160000, 150000, 1, '2024-07-12 03:29:32', '2024-07-12 03:29:32', '/storage/uploads/2024_07_12/product-02.jpg'),
(3, 'Áo Sơ Mi Nam Dáng Cộc', 'Áo Sơ Mi Nam Dáng Cộc Kẻ Xanh', '<p>&Aacute;o Sơ Mi Nam D&aacute;ng Cộc Kẻ Xanh</p>', 2, 160000, NULL, 1, '2024-07-12 03:30:48', '2024-07-12 03:30:48', '/storage/uploads/2024_07_12/product-03.jpg'),
(4, 'Áo Khoác Dạ Nữ', 'Áo Khoác Dạ Nữ', '<p>&Aacute;o Kho&aacute;c Dạ Nữ</p>', 1, 320000, 300000, 1, '2024-07-12 03:31:36', '2024-07-12 03:31:36', '/storage/uploads/2024_07_12/product-04.jpg'),
(5, 'Áo Sơ Mi Nữ Hot Trend', 'Áo Sơ Mi Nữ Hot Trend', '<p>&Aacute;o Sơ Mi Nữ Hot Trend</p>', 1, 200000, 180000, 1, '2024-07-12 03:33:16', '2024-07-12 03:33:16', '/storage/uploads/2024_07_12/product-05.jpg'),
(6, 'Đồng Hồ Thuỵ Sĩ', 'Đồng Hồ Thuỵ Sĩ', '<p>Đồng Hồ Thuỵ Sĩ</p>', 3, NULL, NULL, 1, '2024-07-12 03:34:57', '2024-07-12 03:34:57', '/storage/uploads/2024_07_12/product-06.jpg'),
(7, 'Áo Blazer Nữ', 'Áo Blazer Nữ', '<p>&Aacute;o Blazer Nữ&nbsp;</p>', 1, 220000, NULL, 1, '2024-07-12 03:37:21', '2024-07-12 03:37:21', '/storage/uploads/2024_07_12/product-07.jpg'),
(8, 'Áo Thun Nữ Cây Xương Rồng', 'Áo Thun Nữ Cây Xương Rồng', '<p>&Aacute;o Thun Nữ C&acirc;y Xương Rồng</p>', 1, 120000, NULL, 1, '2024-07-12 03:38:25', '2024-07-12 03:38:25', '/storage/uploads/2024_07_12/product-08.jpg'),
(9, 'Giày Converse All Star', 'Giày Converse All Star', '<p>Gi&agrave;y Converse All Star</p>', 3, 320000, 310000, 1, '2024-07-12 07:19:48', '2024-07-12 07:19:48', '/storage/uploads/2024_07_12/product-09.jpg'),
(10, 'Áo Thun Nữ Ôm Đen', 'Áo Thun Nữ Ôm Đen', '<p>&Aacute;o Thun Nữ &Ocirc;m Đen</p>', 1, 130000, 120000, 1, '2024-07-12 07:22:02', '2024-07-12 07:22:02', '/storage/uploads/2024_07_12/product-10.jpg'),
(11, 'Áo Sơ Mi Nam Dài Tay', 'Áo Sơ Mi Nam Dài Tay', '<p>&Aacute;o Sơ Mi Nam D&agrave;i Tay</p>', 2, 180000, NULL, 1, '2024-07-12 07:22:55', '2024-07-12 07:22:55', '/storage/uploads/2024_07_12/product-11.jpg'),
(12, 'Thắt Lưng Da', 'Thắt Lưng Da', '<p>Thắt Lưng Da</p>', 3, 150000, NULL, 1, '2024-07-12 07:24:10', '2024-07-12 07:30:23', '/storage/uploads/2024_07_12/product-12.jpg'),
(13, 'Áo Croptop Nữ', 'Áo Croptop Nữ', '<p>&Aacute;o Croptop Nữ</p>', 1, NULL, NULL, 1, '2024-07-12 07:25:38', '2024-07-12 07:25:38', '/storage/uploads/2024_07_12/product-14.jpg'),
(14, 'Áo Thun Nữ Trắng Trơn Classic', 'Áo Thun Nữ Trắng Trơn Classic', '<p>&Aacute;o Thun Nữ Trắng Trơn Classic</p>', 1, 120000, NULL, 1, '2024-07-12 07:27:25', '2024-07-12 07:27:25', '/storage/uploads/2024_07_12/product-13.jpg'),
(15, 'Đồng Hồ Thuỵ Sĩ 2', 'Đồng Hồ Thuỵ Sĩ 2', '<p>Đồng Hồ Thuỵ Sĩ 2</p>', 3, NULL, NULL, 1, '2024-07-12 07:28:24', '2024-07-12 07:28:24', '/storage/uploads/2024_07_12/product-15.jpg'),
(16, 'Áo Thun Nữ Classic 2', 'Áo Thun Nữ Classic 2', '<p>&Aacute;o Thun Nữ Classic 2</p>', 1, 120000, NULL, 1, '2024-07-12 07:29:37', '2024-07-12 07:29:37', '/storage/uploads/2024_07_12/product-16.jpg'),
(17, 'Áo Thun Nữ Classic', 'Áo Thun Nữ Classic', '<p>&Aacute;o Thun Nữ&nbsp;Classic</p>', 1, 120000, NULL, 1, '2024-07-11 20:25:55', '2024-07-11 20:35:52', '/storage/uploads/2024_07_12/product-01.jpg'),
(18, 'Áo Sơ Mi Nữ Classic', 'Áo Sơ Mi Nữ Classic', '<p>&Aacute;o Sơ Mi Nữ Classic</p>', 1, 160000, 150000, 1, '2024-07-11 20:29:32', '2024-07-11 20:29:32', '/storage/uploads/2024_07_12/product-02.jpg'),
(19, 'Áo Sơ Mi Nam Dáng Cộc', 'Áo Sơ Mi Nam Dáng Cộc Kẻ Xanh', '<p>&Aacute;o Sơ Mi Nam D&aacute;ng Cộc Kẻ Xanh</p>', 2, 160000, NULL, 1, '2024-07-11 20:30:48', '2024-07-11 20:30:48', '/storage/uploads/2024_07_12/product-03.jpg'),
(20, 'Áo Khoác Dạ Nữ', 'Áo Khoác Dạ Nữ', '<p>&Aacute;o Kho&aacute;c Dạ Nữ</p>', 1, 320000, 300000, 1, '2024-07-11 20:31:36', '2024-07-11 20:31:36', '/storage/uploads/2024_07_12/product-04.jpg'),
(21, 'Áo Sơ Mi Nữ Hot Trend', 'Áo Sơ Mi Nữ Hot Trend', '<p>&Aacute;o Sơ Mi Nữ Hot Trend</p>', 1, 200000, 180000, 1, '2024-07-11 20:33:16', '2024-07-11 20:33:16', '/storage/uploads/2024_07_12/product-05.jpg'),
(22, 'Đồng Hồ Thuỵ Sĩ', 'Đồng Hồ Thuỵ Sĩ', '<p>Đồng Hồ Thuỵ Sĩ</p>', 3, NULL, NULL, 1, '2024-07-11 20:34:57', '2024-07-11 20:34:57', '/storage/uploads/2024_07_12/product-06.jpg'),
(23, 'Áo Blazer Nữ', 'Áo Blazer Nữ', '<p>&Aacute;o Blazer Nữ&nbsp;</p>', 1, 220000, NULL, 1, '2024-07-11 20:37:21', '2024-07-11 20:37:21', '/storage/uploads/2024_07_12/product-07.jpg'),
(24, 'Áo Thun Nữ Cây Xương Rồng', 'Áo Thun Nữ Cây Xương Rồng', '<p>&Aacute;o Thun Nữ C&acirc;y Xương Rồng</p>', 1, 120000, NULL, 1, '2024-07-11 20:38:25', '2024-07-11 20:38:25', '/storage/uploads/2024_07_12/product-08.jpg'),
(25, 'Giày Converse All Star', 'Giày Converse All Star', '<p>Gi&agrave;y Converse All Star</p>', 3, 320000, 310000, 1, '2024-07-12 00:19:48', '2024-07-12 00:19:48', '/storage/uploads/2024_07_12/product-09.jpg'),
(26, 'Áo Thun Nữ Ôm Đen', 'Áo Thun Nữ Ôm Đen', '<p>&Aacute;o Thun Nữ &Ocirc;m Đen</p>', 1, 130000, 120000, 1, '2024-07-12 00:22:02', '2024-07-12 00:22:02', '/storage/uploads/2024_07_12/product-10.jpg'),
(27, 'Áo Sơ Mi Nam Dài Tay', 'Áo Sơ Mi Nam Dài Tay', '<p>&Aacute;o Sơ Mi Nam D&agrave;i Tay</p>', 2, 180000, NULL, 1, '2024-07-12 00:22:55', '2024-07-12 00:22:55', '/storage/uploads/2024_07_12/product-11.jpg'),
(28, 'Thắt Lưng Da', 'Thắt Lưng Da', '<p>Thắt Lưng Da</p>', 3, 150000, NULL, 1, '2024-07-12 00:24:10', '2024-07-12 00:30:23', '/storage/uploads/2024_07_12/product-12.jpg'),
(29, 'Áo Croptop Nữ', 'Áo Croptop Nữ', '<p>&Aacute;o Croptop Nữ</p>', 1, NULL, NULL, 1, '2024-07-12 00:25:38', '2024-07-12 00:25:38', '/storage/uploads/2024_07_12/product-14.jpg'),
(30, 'Áo Thun Nữ Trắng Trơn Classic', 'Áo Thun Nữ Trắng Trơn Classic', '<p>&Aacute;o Thun Nữ Trắng Trơn Classic</p>', 1, 120000, NULL, 1, '2024-07-12 00:27:25', '2024-07-12 00:27:25', '/storage/uploads/2024_07_12/product-13.jpg'),
(31, 'Đồng Hồ Thuỵ Sĩ 2', 'Đồng Hồ Thuỵ Sĩ 2', '<p>Đồng Hồ Thuỵ Sĩ 2</p>', 3, NULL, NULL, 1, '2024-07-12 00:28:24', '2024-07-12 00:28:24', '/storage/uploads/2024_07_12/product-15.jpg'),
(32, 'Áo Thun Nữ Classic 2', 'Áo Thun Nữ Classic 2', '<p>&Aacute;o Thun Nữ Classic 2</p>', 1, 120000, NULL, 1, '2024-07-12 00:29:37', '2024-07-12 00:29:37', '/storage/uploads/2024_07_12/product-16.jpg'),
(33, 'Áo Thun Nữ Classic', 'Áo Thun Nữ Classic', '<p>&Aacute;o Thun Nữ&nbsp;Classic</p>', 1, 120000, NULL, 1, '2024-07-11 20:25:55', '2024-07-11 20:35:52', '/storage/uploads/2024_07_12/product-01.jpg'),
(34, 'Áo Sơ Mi Nữ Classic', 'Áo Sơ Mi Nữ Classic', '<p>&Aacute;o Sơ Mi Nữ Classic</p>', 1, 160000, 150000, 1, '2024-07-11 20:29:32', '2024-07-11 20:29:32', '/storage/uploads/2024_07_12/product-02.jpg'),
(35, 'Áo Sơ Mi Nam Dáng Cộc', 'Áo Sơ Mi Nam Dáng Cộc Kẻ Xanh', '<p>&Aacute;o Sơ Mi Nam D&aacute;ng Cộc Kẻ Xanh</p>', 2, 160000, NULL, 1, '2024-07-11 20:30:48', '2024-07-11 20:30:48', '/storage/uploads/2024_07_12/product-03.jpg'),
(36, 'Áo Khoác Dạ Nữ', 'Áo Khoác Dạ Nữ', '<p>&Aacute;o Kho&aacute;c Dạ Nữ</p>', 1, 320000, 300000, 1, '2024-07-11 20:31:36', '2024-07-11 20:31:36', '/storage/uploads/2024_07_12/product-04.jpg'),
(37, 'Áo Sơ Mi Nữ Hot Trend', 'Áo Sơ Mi Nữ Hot Trend', '<p>&Aacute;o Sơ Mi Nữ Hot Trend</p>', 1, 200000, 180000, 1, '2024-07-11 20:33:16', '2024-07-11 20:33:16', '/storage/uploads/2024_07_12/product-05.jpg'),
(38, 'Đồng Hồ Thuỵ Sĩ', 'Đồng Hồ Thuỵ Sĩ', '<p>Đồng Hồ Thuỵ Sĩ</p>', 3, NULL, NULL, 1, '2024-07-11 20:34:57', '2024-07-11 20:34:57', '/storage/uploads/2024_07_12/product-06.jpg'),
(39, 'Áo Blazer Nữ', 'Áo Blazer Nữ', '<p>&Aacute;o Blazer Nữ&nbsp;</p>', 1, 220000, NULL, 1, '2024-07-11 20:37:21', '2024-07-11 20:37:21', '/storage/uploads/2024_07_12/product-07.jpg'),
(40, 'Áo Thun Nữ Cây Xương Rồng', 'Áo Thun Nữ Cây Xương Rồng', '<p>&Aacute;o Thun Nữ C&acirc;y Xương Rồng</p>', 1, 120000, NULL, 1, '2024-07-11 20:38:25', '2024-07-11 20:38:25', '/storage/uploads/2024_07_12/product-08.jpg'),
(41, 'Giày Converse All Star', 'Giày Converse All Star', '<p>Gi&agrave;y Converse All Star</p>', 3, 320000, 310000, 1, '2024-07-12 00:19:48', '2024-07-12 00:19:48', '/storage/uploads/2024_07_12/product-09.jpg'),
(42, 'Áo Thun Nữ Ôm Đen', 'Áo Thun Nữ Ôm Đen', '<p>&Aacute;o Thun Nữ &Ocirc;m Đen</p>', 1, 130000, 120000, 1, '2024-07-12 00:22:02', '2024-07-12 00:22:02', '/storage/uploads/2024_07_12/product-10.jpg'),
(43, 'Áo Sơ Mi Nam Dài Tay', 'Áo Sơ Mi Nam Dài Tay', '<p>&Aacute;o Sơ Mi Nam D&agrave;i Tay</p>', 2, 180000, NULL, 1, '2024-07-12 00:22:55', '2024-07-12 00:22:55', '/storage/uploads/2024_07_12/product-11.jpg'),
(44, 'Thắt Lưng Da', 'Thắt Lưng Da', '<p>Thắt Lưng Da</p>', 3, 150000, NULL, 1, '2024-07-12 00:24:10', '2024-07-12 00:30:23', '/storage/uploads/2024_07_12/product-12.jpg'),
(45, 'Áo Croptop Nữ', 'Áo Croptop Nữ', '<p>&Aacute;o Croptop Nữ</p>', 1, NULL, NULL, 1, '2024-07-12 00:25:38', '2024-07-12 00:25:38', '/storage/uploads/2024_07_12/product-14.jpg'),
(46, 'Áo Thun Nữ Trắng Trơn Classic', 'Áo Thun Nữ Trắng Trơn Classic', '<p>&Aacute;o Thun Nữ Trắng Trơn Classic</p>', 1, 120000, NULL, 1, '2024-07-12 00:27:25', '2024-07-12 00:27:25', '/storage/uploads/2024_07_12/product-13.jpg'),
(47, 'Đồng Hồ Thuỵ Sĩ 2', 'Đồng Hồ Thuỵ Sĩ 2', '<p>Đồng Hồ Thuỵ Sĩ 2</p>', 3, NULL, NULL, 1, '2024-07-12 00:28:24', '2024-07-12 00:28:24', '/storage/uploads/2024_07_12/product-15.jpg'),
(48, 'Áo Thun Nữ Classic 2', 'Áo Thun Nữ Classic 2', '<p>&Aacute;o Thun Nữ Classic 2</p>', 1, 120000, NULL, 1, '2024-07-12 00:29:37', '2024-07-12 00:29:37', '/storage/uploads/2024_07_12/product-16.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_by` int NOT NULL,
  `active` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `url`, `thumb`, `sort_by`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Bộ Sưu Tập Hè Thu', '#', '/storage/uploads/2024_07_12/slide-04.jpg', 1, 1, '2024-07-12 03:02:23', '2024-07-12 03:02:52'),
(2, 'Hàng Mới Về', '#', '/storage/uploads/2024_07_12/slide-03.jpg', 1, 1, '2024-07-12 03:18:00', '2024-07-12 03:19:16'),
(3, 'Bộ Sưu Tập Mùa Đông', '#', '/storage/uploads/2024_07_12/slide-01.jpg', 1, 1, '2024-07-12 03:19:49', '2024-07-12 03:19:49'),
(4, 'Áo Khoác Nam', '#', '/storage/uploads/2024_07_12/slide-02.jpg', 1, 1, '2024-07-12 03:20:22', '2024-07-12 03:20:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@localhost.com', NULL, '$2y$12$pM9co.OOq5t6QxpkuopYZefqOQ.MvPDInpeTa8pc6M.W6/xfgxffG', NULL, '2024-07-12 09:57:31', '2024-07-12 09:57:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
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
-- Indexes for table `menus`
--
ALTER TABLE `menus`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
