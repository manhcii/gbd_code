-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 08, 2024 at 09:08 PM
-- Server version: 5.7.44-log
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `efb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL,
  `json_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `is_super_admin` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `role`, `json_information`, `is_super_admin`, `status`, `remember_token`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Manhzz', 'admin@gmail.com', '$2y$10$DzD4QVqu4rmlpgoneKmzsOBrBYK9CJWafz8z1oyiuKZ2B8I9L1mra', 2, NULL, 1, 'active', NULL, NULL, NULL, '2021-09-24 08:48:18', '2022-12-08 03:56:38'),
(3, 'Đăng Thuận', 'icity@gmail.com', '$2y$10$Wf9gDmf9BboJzXcc/.BpK.e0L4rPnyIChLBE6K/13whIKL9YnoLhW', 2, NULL, 0, 'active', NULL, NULL, NULL, '2022-12-31 04:55:34', '2024-01-27 03:05:11'),
(4, 'Nguyễn Văn Phấn', 'nvphan@hptglobal.com.vn', '$2y$10$wmK9H7fHCjZ1rD7t5ElynOWtVfztZNcFtClFoQ88j5EFTIWJn9eHm', 2, NULL, 0, 'active', NULL, NULL, NULL, '2024-06-19 07:15:49', '2024-06-19 07:15:49'),
(5, 'Lương Ngọc Hạnh Nhi', 'lnhnhi@gbd.vn', '$2y$10$u0GqsdBzg/UgKqLA48xlM.DdsQddjQ1ye7iAhkzejdWBmXEBj/Gni', 1, NULL, 0, 'active', NULL, NULL, NULL, '2024-06-19 07:17:07', '2024-06-19 07:17:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_09_21_090133_create_admins_table', 1),
(5, '2021_09_29_090019_create_tb_options_table', 1),
(6, '2021_09_29_090048_create_tb_logs_table', 1),
(7, '2021_09_29_090107_create_tb_admin_menus_table', 1),
(8, '2021_09_29_090214_create_tb_modules_table', 1),
(9, '2021_09_29_090233_create_tb_module_functions_table', 1),
(10, '2021_09_29_090301_create_tb_roles_table', 1),
(11, '2021_09_29_090402_create_tb_menus_table', 1),
(12, '2021_09_29_090455_create_tb_blocks_table', 1),
(13, '2021_09_29_090509_create_tb_block_contents_table', 1),
(14, '2021_09_29_090709_create_tb_cms_taxonomys_table', 1),
(15, '2021_09_29_090743_create_tb_cms_posts_table', 1),
(16, '2021_10_09_013236_create_tb_pages_table', 1),
(17, '2021_10_26_210129_change_tb_users_table', 1),
(24, '2022_04_25_163138_create_tb_widgets_table', 3),
(25, '2022_04_25_163922_create_tb_components_table', 3),
(26, '2022_04_26_155008_create_tb_widget_configs_table', 4),
(27, '2022_04_26_155035_create_tb_component_configs_table', 4),
(28, '2022_06_02_102255_create_tb_bookings_table', 5),
(29, '2022_02_14_165457_create_tb_contacts_table', 6),
(30, '2022_02_14_170033_create_tb_orders_table', 6),
(31, '2022_02_14_170056_create_tb_order_details_table', 6),
(32, '2022_06_27_162451_create_tb_popups_table', 7),
(33, '2022_06_29_095757_change_users_table', 8),
(35, '2022_07_07_144844_create_tb_affiliate_payments_table', 9),
(36, '2022_07_12_210520_create_tb_affiliate_historys_table', 10),
(37, '2022_12_02_162806_create_tb_branchs_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin_menus`
--

CREATE TABLE `tb_admin_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `toolbar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_admin_menus`
--

INSERT INTO `tb_admin_menus` (`id`, `parent_id`, `name`, `icon`, `url_link`, `iorder`, `status`, `toolbar`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(3, 10, 'Quản lý người dùng', 'fa fa-user-plus', 'admins', 3, 'active', 'deactive', 1, 1, '2021-09-30 07:38:46', '2022-03-02 19:25:15'),
(5, 10, 'Quản lý nhóm quyền', 'fa fa-users', 'roles', 4, 'active', 'active', 1, 1, '2021-09-30 09:57:11', '2022-03-02 19:25:00'),
(6, 10, 'Quản lý Menu Admin', 'fa fa-tasks', 'admin_menus', 5, 'active', 'deactive', 1, 1, '2021-09-30 21:41:45', '2022-03-02 19:26:32'),
(10, NULL, 'Quản lý hệ thống', 'fa fa-server', NULL, 99, 'active', 'deactive', 1, 1, '2021-10-01 17:10:06', '2022-03-02 19:35:52'),
(13, NULL, 'Quản lý cấu hình', 'fa fa-home', NULL, 98, 'active', 'deactive', 1, 1, '2021-10-02 10:26:41', '2022-03-02 19:35:45'),
(17, 71, 'Quản lý Khối nội dung', 'fa fa-object-group', 'block_contents', 999, 'active', 'deactive', 1, 1, '2021-10-07 09:08:48', '2022-08-06 08:30:21'),
(41, 71, 'Quản lý Pages - Trang', 'fa fa-clone', 'pages', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:15:57', '2022-08-06 08:30:18'),
(42, 71, 'Quản lý Menu Website', 'fa fa-bars', 'menus', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:19:53', '2022-08-06 08:30:15'),
(44, 70, 'Quản lý hình ảnh hệ thống', 'fa fa-picture-o', 'web_image', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:23:03', '2022-08-06 08:29:09'),
(45, 70, 'Quản lý thông tin Website', 'fa fa-globe', 'web_information', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:23:28', '2022-08-06 08:29:06'),
(46, 70, 'Quản lý liên kết MXH', 'fa fa-share-alt-square', 'web_social', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:23:43', '2022-08-06 08:29:03'),
(51, NULL, 'Quản lý nội dung', 'fa fa-folder', NULL, 2, 'active', NULL, 1, 1, '2022-05-30 08:46:23', '2022-08-06 08:32:52'),
(52, 51, 'Quản lý danh mục', NULL, 'cms_taxonomys', NULL, 'active', NULL, 1, 1, '2022-05-30 08:46:51', '2024-01-04 03:42:31'),
(53, 51, 'Quản lý dịch vụ', NULL, 'cms_products', 2, 'active', NULL, 1, 1, '2022-05-30 09:56:47', '2024-06-16 06:45:12'),
(58, 71, 'Quản lý mã nhúng CSS - JS', NULL, 'web_source', NULL, 'active', NULL, 1, 1, '2022-06-07 02:41:52', '2022-08-06 08:30:12'),
(59, 72, 'Quản lý liên hệ', NULL, 'contacts', 3, 'active', NULL, 1, 1, '2022-06-08 03:16:46', '2022-08-06 08:35:02'),
(62, 72, 'Quản lý Đăng ký template', NULL, 'call_request', 2, 'active', NULL, 1, 1, '2022-06-10 03:01:44', '2024-07-01 15:32:22'),
(70, 13, 'Cấu hình thông tin chung', 'fa fa-bars', '#', 1, 'active', NULL, 1, 1, '2022-08-06 08:28:32', '2022-08-06 08:31:29'),
(71, 13, 'Cấu hình Website', 'fa fa-object-group', '#', 2, 'active', NULL, 1, 1, '2022-08-06 08:29:55', '2022-08-06 08:31:10'),
(72, NULL, 'Quản lý khách hàng', 'fa fa-opencart', '#', 1, 'active', NULL, 1, 1, '2022-08-06 08:32:30', '2022-08-06 08:34:15'),
(73, 51, 'Quản lý dự án', NULL, 'cms_resources', 0, 'active', NULL, 1, 1, '2022-10-08 03:23:29', '2024-06-16 07:07:50'),
(75, 51, 'Quản lý nhân sự', NULL, 'branchs', 6, 'deactive', NULL, 1, 1, '2022-12-02 10:55:27', '2024-01-04 04:18:29'),
(76, NULL, 'For DEV', 'fa fa-setting', NULL, 1000, 'active', NULL, 1, 1, '2022-12-14 03:08:17', '2022-12-14 03:08:17'),
(77, 76, 'Khai báo Module Functions', NULL, 'module_functions', 1, 'active', NULL, 1, 1, '2022-12-14 03:09:23', '2022-12-14 03:11:18'),
(78, 76, 'Khai báo Modules', NULL, 'modules', 2, 'active', NULL, 1, 1, '2022-12-14 03:10:13', '2022-12-14 03:11:50'),
(79, 76, 'Khai báo Blocks', NULL, 'blocks', 3, 'active', NULL, 1, 1, '2022-12-14 03:12:28', '2022-12-14 03:12:54'),
(80, 76, 'Khai báo tham số', NULL, 'options', 4, 'active', NULL, 1, 1, '2022-12-14 03:13:35', '2022-12-14 03:13:35'),
(81, 72, 'Quản lý đặt hàng', NULL, 'order_products', NULL, 'active', NULL, 1, 1, '2022-12-28 06:41:55', '2024-01-06 10:01:04'),
(82, 72, 'Quản lý đánh giá', NULL, 'call_review', NULL, 'deactive', NULL, 1, 1, '2023-02-03 07:52:13', '2023-03-07 02:03:25'),
(83, 51, 'Quản lý Bài viết', NULL, 'cms_posts', 4, 'active', NULL, 1, 1, '2023-03-07 01:54:04', '2024-01-04 04:18:20');

-- --------------------------------------------------------

--
-- Table structure for table `tb_affiliate_historys`
--

CREATE TABLE `tb_affiliate_historys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `order_total_money` double(20,2) NOT NULL DEFAULT '0.00',
  `affiliate_percent` double(20,2) NOT NULL DEFAULT '0.00',
  `affiliate_point` double(20,2) DEFAULT NULL,
  `affiliate_money` double(20,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_affiliate_historys`
--

INSERT INTO `tb_affiliate_historys` (`id`, `is_type`, `user_id`, `order_id`, `order_total_money`, `affiliate_percent`, `affiliate_point`, `affiliate_money`, `description`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'product', 3, 9, 3500000000.00, 1.50, 52500000.00, 52500000.00, '', NULL, 'processed', NULL, NULL, '2022-07-12 17:51:21', '2022-07-12 18:52:58'),
(3, 'product', 2, 9, 3500000000.00, 1.50, 52500000.00, 52500000.00, '', NULL, 'processed', NULL, NULL, '2022-07-12 18:18:05', '2022-07-12 18:52:58'),
(4, 'service', 3, 14, 0.00, 3.00, 0.00, 0.00, '', NULL, 'processed', NULL, NULL, '2022-07-12 18:53:27', '2022-07-12 18:53:27'),
(5, 'service', 2, 14, 0.00, 2.50, 0.00, 0.00, '', NULL, 'processed', NULL, NULL, '2022-07-12 18:53:27', '2022-07-12 18:53:27'),
(6, 'product', 3, 11, 3500000000.00, 1.50, 52500000.00, 52500000.00, '', NULL, 'processed', NULL, NULL, '2022-07-13 08:11:45', '2022-07-13 08:11:54'),
(7, 'product', 2, 11, 3500000000.00, 1.50, 52500000.00, 52500000.00, '', NULL, 'processed', NULL, NULL, '2022-07-13 08:11:45', '2022-07-13 08:11:54'),
(8, 'product', 3, 16, 5350000.00, 1.50, 80250.00, 80250.00, '', NULL, 'processed', NULL, NULL, '2022-07-14 04:08:05', '2022-07-14 04:08:05'),
(9, 'product', 2, 16, 5350000.00, 1.50, 80250.00, 80250.00, '', NULL, 'processed', NULL, NULL, '2022-07-14 04:08:05', '2022-07-14 04:08:05'),
(10, 'service', 3, 15, 450000.00, 3.00, 13500.00, 13500.00, '', NULL, 'processed', NULL, NULL, '2022-07-14 04:28:17', '2022-07-14 04:28:17'),
(11, 'service', 2, 15, 450000.00, 2.50, 11250.00, 11250.00, '', NULL, 'processed', NULL, NULL, '2022-07-14 04:28:17', '2022-07-14 04:28:17');

-- --------------------------------------------------------

--
-- Table structure for table `tb_affiliate_payments`
--

CREATE TABLE `tb_affiliate_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `money` double(20,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_affiliate_payments`
--

INSERT INTO `tb_affiliate_payments` (`id`, `user_id`, `money`, `description`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 3, 5000000.00, 'Số tài khoản: 1122335789\r\nChủ tài khoản: Nguyễn Hữu Thắng\r\nTên ngân hàng: Vietcombank Hà Tây', NULL, 'new', NULL, NULL, '2022-07-13 08:29:49', '2022-07-13 08:29:49'),
(2, 3, 15000000.00, 'Số tài khoản: 1122335789\r\nChủ tài khoản: Nguyễn Hữu Thắng\r\nTên ngân hàng: MB Bank', '{\"admin_note\":\"ThangNH \\u0111ang x\\u1eed l\\u00fd \\u0111\\u1ec1 ngh\\u1ecb thanh to\\u00e1n n\\u00e0y\"}', 'processing', NULL, 1, '2022-07-13 08:33:09', '2022-07-13 10:40:49'),
(3, 3, 50000.00, NULL, NULL, 'new', NULL, NULL, '2022-07-13 09:01:39', '2022-07-13 09:01:39'),
(4, 3, 5350000.00, NULL, '{\"admin_note\":\"Payment for orders by affiliate wallet\",\"order_id\":16}', 'processed', NULL, NULL, '2022-07-14 04:08:05', '2022-07-14 04:08:05'),
(5, 3, 450000.00, NULL, '{\"admin_note\":\"Payment for orders by affiliate wallet\",\"order_id\":15}', 'processed', NULL, NULL, '2022-07-14 04:28:17', '2022-07-14 04:28:17');

-- --------------------------------------------------------

--
-- Table structure for table `tb_blocks`
--

CREATE TABLE `tb_blocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `block_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `is_config` tinyint(1) NOT NULL DEFAULT '1',
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_blocks`
--

INSERT INTO `tb_blocks` (`id`, `name`, `description`, `block_code`, `json_params`, `is_config`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Khối hình ảnh quảng cáo', 'Block used for displaying banner advertising images, with or without additional content', 'banner', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n                 \"page.default\"\r\n	],\r\n	\"layout\":[\r\n		\"slide\",\r\n                \"logo_partner\",\r\n\"hiring\"\r\n	]\r\n}', 1, 2, 'active', 1, 1, '2021-10-07 04:49:19', '2024-06-16 12:03:54'),
(11, 'Khối nội dung tùy chọn', 'Blocks are used for optional content and styled accordingly', 'custom', '{\r\n	\"template\":[\r\n		\"home.primary\"\r\n	],\r\n	\"layout\":[\r\n		\"about_us\",\r\n                 \"about_client\",\r\n\"about_customer\"\r\n	]\r\n}', 1, 3, 'active', 1, 1, '2021-10-11 16:44:15', '2024-06-16 07:15:32'),
(20, 'Khối nội dung đầu trang', NULL, 'header', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"post.detail\",\r\n		\"post.default\",\r\n		\"product.detail\",\r\n		\"product.default\",\r\n		\"service.detail\",\r\n		\"service.default\",\r\n		\"department.default\",\r\n		\"doctor.default\",\r\n		\"doctor.detail\",\r\n		\"resource.detail\",\r\n		\"resource.default\",\r\n		\"contact.default\",\r\n		\"cart.default\",\r\n		\"user.default\",\r\n		\"tags.default\",\r\n		\"search.default\",\r\n		\"branch.default\"\r\n	],\r\n	\"layout\":[\r\n		\"default\"\r\n	]\r\n}', 1, 1, 'active', 1, 1, '2022-05-30 03:05:17', '2022-12-05 09:11:16'),
(21, 'Khối nội dung chân trang', NULL, 'footer', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"post.detail\",\r\n		\"post.default\",\r\n		\"product.detail\",\r\n		\"product.default\",\r\n		\"service.detail\",\r\n		\"service.default\",\r\n		\"department.default\",\r\n		\"doctor.default\",\r\n		\"doctor.detail\",\r\n		\"resource.detail\",\r\n		\"resource.default\",\r\n		\"contact.default\",\r\n		\"cart.default\",\r\n		\"user.default\",\r\n		\"tags.default\",\r\n		\"search.default\",\r\n		\"branch.default\"\r\n	]\r\n}', 1, 99, 'active', 1, 1, '2022-05-30 03:06:28', '2022-12-05 09:11:25'),
(22, 'Khối danh sách dịch vụ nổi bật', NULL, 'cms_service', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"page.default\"\r\n	]\r\n}', 1, 5, 'deactive', 1, 1, '2022-05-31 07:25:43', '2023-03-06 04:02:59'),
(23, 'Khối danh sách bài viết nổi bật', NULL, 'cms_post', '{\r\n	\"template\":[\r\n		\"home.primary\"\r\n	]\r\n}', 1, 7, 'active', 1, 1, '2022-05-31 09:53:32', '2024-01-04 09:34:16'),
(24, 'Khối dự án', NULL, 'cms_resource', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"page.default\"\r\n\r\n	],\r\n	\"layout\":[\r\n		\"video\"\r\n	]\r\n}', 1, 6, 'active', 1, 1, '2022-06-01 08:38:54', '2024-06-16 08:16:40'),
(27, 'Khối hiển thị nội dung chính', 'Khối hiển thị nội dung theo từng chức năng cụ thể', 'main', '{\r\n	\"template\":[\r\n		\"post.detail\",\r\n		\"post.default\",\r\n		\"product.detail\",\r\n		\"product.default\",\r\n		\"service.detail\",\r\n		\"service.default\",\r\n		\"department.default\",\r\n		\"doctor.default\",\r\n		\"doctor.detail\",\r\n		\"resource.detail\",\r\n		\"resource.default\",\r\n		\"contact.default\",\r\n                \"introduce.default\",\r\n		\"cart.default\",\r\n		\"user.default\",\r\n		\"tags.default\",\r\n		\"search.default\",\r\n		\"page.price\",\r\n		\"page.content\",\r\n		\"branch.default\",\r\n		\"page.default\"\r\n	]\r\n}', 1, 4, 'active', 1, 1, '2022-06-02 11:23:39', '2023-02-03 08:59:20'),
(35, 'Khối nội dung form đăng ký', NULL, 'form', '{\r\n	\"template\":[\r\n                \"home.primary\",\r\n		\"post.detail\",\r\n		\"post.default\",\r\n		\"product.detail\",\r\n		\"product.default\",\r\n		\"service.detail\",\r\n		\"service.default\",\r\n		\"department.default\",\r\n		\"doctor.default\",\r\n		\"doctor.detail\",\r\n		\"resource.detail\",\r\n		\"resource.default\",\r\n		\"contact.default\",\r\n                \"introduce.default\",\r\n		\"cart.default\",\r\n		\"user.default\",\r\n		\"tags.default\",\r\n		\"search.default\",\r\n		\"page.price\",\r\n		\"page.content\",\r\n		\"branch.default\",\r\n		\"page.default\"\r\n	],\r\n	\"layout\":[\r\n		\"booking\"\r\n	]\r\n}', 1, 8, 'active', 1, 1, '2022-09-13 09:23:28', '2024-06-16 10:35:45'),
(36, 'Khối danh sách sản phẩm nổi bật', NULL, 'cms_product', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"page.default\"\r\n	],\r\n        \"layout\":[\r\n                \"today\",\r\n                \"default\"\r\n	]\r\n}', 1, 4, 'active', 1, 1, '2022-10-08 03:22:14', '2024-01-04 09:36:35'),
(37, 'Khối danh sách câu hỏi thường gặp - FAQs', NULL, 'faq', '{\r\n	\"template\":[\r\n		\"home.primary\"\r\n	],\r\n	\"layout\":[\r\n		\"default\"\r\n	]\r\n}', 1, NULL, 'deactive', 1, 1, '2022-10-17 04:36:18', '2022-11-30 07:21:44'),
(38, 'Khối trong page giới thiệu', NULL, 'introduce', '{\r\n	\"template\":[\r\n                 \"page.default\"\r\n	],\r\n	\"layout\":[\r\n		\"banner\",\r\n                 \"story\",\r\n                 \"profile\",\r\n                 \"culture\",\r\n\"our_team\"\r\n	]\r\n}', 1, 4, 'active', 1, 1, '2024-06-16 08:24:59', '2024-06-16 08:43:37'),
(39, 'Khối trong page dịch vụ', NULL, 'service', '{\r\n	\"template\":[\r\n                 \"page.default\"\r\n	],\r\n	\"layout\":[\r\n		\"banner\",\r\n                 \"video\",\r\n                 \"service\",\r\n                 \"reason\",\r\n\"introduction\",\r\n\"projects\"\r\n	]\r\n}', 1, 4, 'active', 1, 1, '2024-06-16 09:34:01', '2024-06-16 09:34:36'),
(40, 'Khối trong page khách hàng', NULL, 'customer', '{\r\n	\"template\":[\r\n                 \"page.default\"\r\n	],\r\n	\"layout\":[\r\n		\"banner\",\r\n                 \"introduction\",\r\n                 \"partner\",\r\n                 \"talk\"\r\n	]\r\n}', 1, NULL, 'active', 1, 1, '2024-06-16 11:27:17', '2024-06-16 11:27:17');

-- --------------------------------------------------------

--
-- Table structure for table `tb_block_contents`
--

CREATE TABLE `tb_block_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `block_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_link_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `system_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_block_contents`
--

INSERT INTO `tb_block_contents` (`id`, `parent_id`, `title`, `brief`, `content`, `block_code`, `json_params`, `image`, `image_background`, `icon`, `url_link`, `url_link_title`, `position`, `system_code`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(19, NULL, 'Dịch vụ tại Global Brand Design', NULL, NULL, 'cms_product', '{\"layout\":\"default\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2021-10-12 10:29:41', '2024-06-16 06:31:43'),
(74, NULL, 'Khối hình ảnh banner đầu trang', NULL, NULL, 'banner', '{\"layout\":\"slide\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2022-03-18 17:50:28', '2024-01-04 02:52:01'),
(94, NULL, 'Khối hiển thị nội dung chính', NULL, NULL, 'main', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2022-06-02 11:24:21', '2022-12-19 09:33:10'),
(326, NULL, 'Khối banner tĩnh', NULL, NULL, 'banner', '{\"layout\":\"static\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'delete', 1, 1, '2022-12-29 03:03:07', '2023-03-06 08:05:59'),
(331, 74, 'GLOBAL', 'BRAND DESIGN', 'Công ty cổ phần Global Brand Design tiền thân là Ban Agency thuộc Công ty cổ phần HPT Global (thành lập năm 2018) và được tách ra thành công ty con  trực thuộc vào ngày 06/06/2024. Trải qua 06 năm xây dựng và phát triển, hiện Global Brand Design (GBD) là một trong những doanh nghiệp hàng đầu tại Việt Nam về dịch vụ thiết kế logo, nhận diện thương hiệu, thiết kế website, các dịch vụ media, hosting, tên miền, các hoạt động Agency tại Việt Nam.  GBD sở hữu các sản phẩm giải pháp công nghệ thông tin ưu việt được kiến tạo bởi những kỹ sư nhiệt huyết, sáng tạo, có chuyên môn và tay nghề cao.', 'header', '{\"layout\":null,\"style\":null}', '/data/cms-image/slider/slide.png', NULL, NULL, '#', 'Tìm hiểu thêm', NULL, NULL, NULL, 'active', 1, 1, '2023-02-01 04:59:40', '2024-06-19 08:00:07'),
(332, 74, '#2', NULL, NULL, 'header', '{\"layout\":null,\"style\":null}', 'https://haycafe.vn/wp-content/uploads/2022/01/Hinh-anh-cau-thang-gia-go-dep-800x533.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'delete', 1, 1, '2023-02-01 05:00:27', '2023-02-06 02:45:03'),
(333, NULL, 'Khối video', NULL, NULL, 'cms_resource', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'delete', 1, 1, '2023-02-01 06:45:55', '2023-03-06 08:06:04'),
(334, 333, 'Cầu thang kính 01', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, 'https://www.youtube.com/embed/Z5TeoXCGoMs', NULL, NULL, NULL, NULL, 'delete', 1, 1, '2023-02-01 06:52:00', '2023-02-04 01:43:24'),
(335, 333, 'Cầu thang kính 02', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, 'https://www.youtube.com/embed/wwJtVa_IaWs', NULL, NULL, NULL, NULL, 'delete', 1, 1, '2023-02-01 06:52:21', '2023-02-04 01:44:29'),
(336, 333, 'Câu thang 03', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'delete', 1, 1, '2023-02-01 06:54:47', '2023-02-01 06:55:01'),
(337, 326, 'ĐỘI NGŨ TƯ VẤN NHIỆT TÌNH', NULL, 'Với nhiều nhân viên có kinh nghiệm lâu năm trong công việc sẽ giúp khách hàng lựa chọn những mẫu cầu thang phù hợp nhất cho ngôi nhà.', 'banner', '{\"layout\":null,\"style\":null}', NULL, NULL, 'icon-users', NULL, NULL, NULL, NULL, 1, 'delete', 1, 1, '2023-02-01 08:19:55', '2023-02-28 08:32:27'),
(338, 326, 'TINH THẦN TRÁCH NHIỆM', NULL, 'Mỗi người thợ khi được giao công việc đều phải có tâm và có tầm để công trình đên tay khách hàng được hài lòng nhất', 'banner', '{\"layout\":null,\"style\":null}', NULL, NULL, 'icon-like', NULL, NULL, NULL, NULL, 3, 'delete', 1, 1, '2023-02-01 08:19:55', '2023-02-28 03:55:40'),
(339, 326, 'UY TÍN TẠO NÊN THƯƠNG HIỆU', NULL, 'Mục tiệu hàng đầu là giữ vững niềm tin của khách hàng để tạo nên 1 thương hiệu bền chắc và vững mạnh.', 'banner', '{\"layout\":null,\"style\":null}', NULL, NULL, 'icon-money', NULL, NULL, NULL, NULL, 4, 'delete', 1, 1, '2023-02-01 08:19:55', '2023-02-28 03:55:40'),
(340, 326, 'CÔNG NGHỆ MỚI HIỆN ĐẠI', 'fgs', 'Muốn làm ra những sản phẩm bền vững yếu tố máy móc quyết định rất quan trong trong việc hình thành sản phẩm đó', 'banner', '{\"layout\":null,\"style\":null}', NULL, NULL, 'icon-magnet', NULL, NULL, NULL, NULL, 2, 'delete', 1, 1, '2023-02-01 08:19:55', '2023-02-28 03:55:40'),
(341, 74, 'GLOBAL', 'BRAND DESIGN', 'Công ty cổ phần Global Brand Design tiền thân là Ban Agency thuộc Công ty cổ phần HPT Global (thành lập năm 2018) và được tách ra thành công ty con  trực thuộc vào ngày 06/06/2024. Trải qua 06 năm xây dựng và phát triển, hiện Global Brand Design (GBD) là một trong những doanh nghiệp hàng đầu tại Việt Nam về dịch vụ thiết kế logo, nhận diện thương hiệu, thiết kế website, các dịch vụ media, hosting, tên miền, các hoạt động Agency tại Việt Nam.  GBD sở hữu các sản phẩm giải pháp công nghệ thông tin ưu việt được kiến tạo bởi những kỹ sư nhiệt huyết, sáng tạo, có chuyên môn và tay nghề cao.\r\n \r\nVới mục tiêu mang đến những công nghệ tiên tiến, trải nghiệm mới mẻ và hệ sinh thái sản phẩm đa dạng, GBD luôn tiên phong hội nhập quốc tế, hợp tác với những hãng công nghệ thông tin hàng đầu trên thế giới.\r\n \r\nGBD tự tin khẳng định uy tín và sức mạnh hội tụ trở thành một doanh nghiệp công nghệ thông tin hàng đầu trong kỷ nguyên công nghệ số.', 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/0x0.jpeg', NULL, NULL, '#', 'Tìm hiểu thêm', NULL, NULL, 1, 'active', 1, 1, '2023-02-03 02:44:08', '2024-07-01 01:30:34'),
(342, 340, 'thanh an l', 'sdfgv', NULL, 'custom', '{\"layout\":\"about_client\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'delete', 1, 1, '2023-02-28 03:05:27', '2023-02-28 08:32:33'),
(343, NULL, 'ALL THE PIECES FALL INTO PLACE WITH BURST', NULL, NULL, 'custom', '{\"layout\":\"about_us\",\"style\":null}', '/data/cms-image/burst-collection.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2023-03-06 04:06:13', '2024-06-16 05:55:38'),
(344, NULL, 'Liên hệ với chúng tôi ngay bây giờ', NULL, NULL, 'custom', '{\"layout\":\"about_client\",\"style\":null}', NULL, NULL, NULL, '#', 'Bắt đầu', NULL, NULL, 1, 'active', 1, 1, '2023-03-06 08:44:57', '2024-06-16 06:01:58'),
(347, NULL, 'Chúng tôi cung cấp các dịch vụ thiết kế và phát triển tốt nhất!', 'CHÚNG TÔI LÀ AI', 'Chúng tôi GBD là đội ngũ chuyên nghiệp chuyên cung cấp các dịch vụ thiết kế và phát triển hàng đầu. Với sự tập trung vào sự sáng tạo và chất lượng, chúng tôi cam kết mang đến cho khách hàng những giải pháp tối ưu và đáp ứng mọi yêu cầu đặt ra. Dù bạn cần xây dựng một thương hiệu, phát triển ứng dụng di động hay tạo ra các giải pháp phần mềm tiên tiến, chúng tôi luôn sẵn sàng để hỗ trợ và đồng hành cùng bạn trên mọi bước đường. Hãy để chúng tôi giúp bạn biến những ý tưởng thành hiện thực!', 'cms_product', '{\"layout\":\"today\",\"style\":null}', '/data/cms-image/we_are.png', NULL, NULL, '#', NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-01-04 09:37:13', '2024-06-23 07:14:58'),
(348, NULL, 'Tin tức & Chia sẻ kiến thức', NULL, NULL, 'cms_post', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, '/tin-tuc', NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-01-04 09:45:29', '2024-06-16 07:32:48'),
(349, 344, '#1', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/banner/category1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-16 06:02:47', '2024-06-16 06:02:47'),
(350, 344, '#1', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/banner/category2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-16 06:02:47', '2024-06-16 06:02:47'),
(351, 344, '#1', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/banner/category3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-16 06:02:47', '2024-06-16 06:02:47'),
(352, 344, '#1', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/banner/category4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-16 06:02:47', '2024-06-16 06:02:47'),
(353, 344, '#1', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/banner/category5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-16 06:02:47', '2024-06-16 06:02:47'),
(354, 344, '#1', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/banner/category6.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-16 06:02:47', '2024-06-16 06:02:47'),
(355, 344, '#1', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/banner/category7.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-16 06:02:47', '2024-06-16 06:02:47'),
(356, 344, '#1', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/banner/category8.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-16 06:02:47', '2024-06-16 06:02:47'),
(357, 344, '#1', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/banner/category9.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-16 06:02:47', '2024-06-16 06:02:47'),
(358, 344, '#1', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/banner/category10.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-16 06:02:47', '2024-06-16 06:02:47'),
(359, 347, 'Cung cấp Thiết kế & Phát triển Web', NULL, NULL, 'header', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-16 06:27:29', '2024-06-23 07:18:20'),
(360, 347, 'Chúng tôi cung cấp thiết kế thương hiệu', NULL, NULL, 'header', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2024-06-16 06:27:57', '2024-06-23 07:20:59'),
(361, 347, 'Hỗ trợ và tư vấn trang web tốt nhất', NULL, NULL, 'header', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-16 06:28:14', '2024-06-23 07:17:04'),
(362, NULL, 'Dự án chứa đựng tâm huyết <br> Và sáng tạo', NULL, NULL, 'cms_resource', '{\"layout\":\"video\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-16 07:05:02', '2024-06-16 07:05:02'),
(363, NULL, 'Khách hàng nói gì về chúng tôi?', NULL, NULL, 'custom', '{\"layout\":\"about_customer\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 5, '2024-06-16 07:20:18', '2024-06-28 14:03:52'),
(364, 363, 'MR B NGUYEN', 'CEO & Founder', 'Lựa chọn tin cậy để triển khai các hạng mục thiết kế logo, website và profile doanh nghiệm. Cảm nhận được tâm huyết của team trong từng thiết kế. Trân trọng!', 'header', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 5, '2024-06-16 07:20:46', '2024-06-25 14:07:48'),
(365, 363, 'MS LINH', 'Founder', 'GBD đồng hành trong suốt thời gian lên ý tưởng, chỉnh sửa và hiện thực hoá logo chúng tôi mong muốn. Dịch vụ uy tín, chất lượng, tận tâm, vô cùng chuyên nghiệp.', 'header', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 5, '2024-06-16 07:20:46', '2024-06-28 13:50:59'),
(366, 363, 'MR QUÝ', 'CEO & Founder', 'Tôi cảm thấy rất vui và hài lòng với sự nhiệt tình, sáng tạo của GBD team. Các bạn rất chủ động, đưa ra những idea thú vị mà chính tôi cũng chưa nghĩ đến. Kết quả đạt được ngoài mong đợi, cám ơn GBD team!', 'header', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'active', 1, 5, '2024-06-16 07:20:46', '2024-06-28 13:53:45'),
(367, 363, 'MS LISA', 'CEO & Founder', 'Your team has helped us create a unique and effective website that meets our expectations perfectly. We are very pleased to have had the opportunity to collaborate with you.', 'header', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 'active', 1, 5, '2024-06-16 07:20:46', '2024-06-28 14:00:15'),
(368, 363, 'MS JENNIE', 'CEO & Co Founder', 'Thank you, GBD, for your wonderful partnership and exceptional services. Although our brand may be a small one, your team of employees has been incredibly enthusiastic, attentive, and dedicated. I am very satisfied.', 'header', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'active', 1, 5, '2024-06-16 07:20:46', '2024-06-28 13:58:28'),
(369, 363, 'MR HUNG', 'CEO & Founder', 'Từ ý tưởng ban đầu của mình, các bạn thiết kế tại GBD đã triển khai rất nhiều phương án và có sự phân tích kèm theo nên mình rất dễ dàng lựa chọn được option ưng ý. Cám ơn sự hỗ trợ tận tâm của các bạn.', 'header', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, -2, 'active', 1, 5, '2024-06-16 07:20:46', '2024-06-28 13:49:32'),
(370, NULL, 'Bạn đang quan tâm đến dịch vụ:', NULL, NULL, 'form', '{\"layout\":\"booking\",\"style\":null}', NULL, NULL, NULL, NULL, 'Hoặc chủ động liên hệ với Global Brand Design', NULL, NULL, NULL, 'active', 1, 1, '2024-06-16 07:35:04', '2024-06-16 07:35:04'),
(371, 370, '#1', NULL, NULL, 'introduce', '{\"layout\":null,\"style\":null}', '/data/cms-image/brand1.svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'delete', 1, 1, '2024-06-16 07:39:08', '2024-06-16 11:00:08'),
(372, 370, '#1', NULL, NULL, 'introduce', '{\"layout\":null,\"style\":null}', '/data/cms-image/brand2.svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'delete', 1, 1, '2024-06-16 07:39:08', '2024-06-16 11:00:04'),
(373, 370, '#1', NULL, NULL, 'introduce', '{\"layout\":null,\"style\":null}', '/data/cms-image/brand3.svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'delete', 1, 1, '2024-06-16 07:39:08', '2024-06-16 11:00:01'),
(374, 370, '#1', NULL, NULL, 'introduce', '{\"layout\":null,\"style\":null}', '/data/cms-image/brand4.svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'delete', 1, 1, '2024-06-16 07:39:08', '2024-06-16 10:59:58'),
(375, 370, '#1', NULL, NULL, 'cms_product', '{\"layout\":null,\"style\":null}', '/data/cms-image/brand5.svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'delete', 1, 1, '2024-06-16 07:39:08', '2024-06-16 10:59:54'),
(376, 370, '#1', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/brand3.svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'delete', 1, 1, '2024-06-16 07:39:08', '2024-06-16 10:59:50'),
(377, NULL, 'TỔNG QUAN', 'Global Brand Design', 'Với kinh nghiệm 6 năm trong việc cung cấp các dịch vụ và giải pháp quảng cáo cho hàng trăm doanh nghiệp, GBD cam kết mang đến các sản phẩm độc đáo, đa dạng, chất lượng cao, đáp ứng tiêu chuẩn chuyên nghiệp và tạo dựng uy tín cho thương hiệu. Quá trình hợp tác được thiết kế để đảm bảo sự hài lòng tối đa của khách hàng, từ khâu tư vấn, lên ý tưởng đến hoàn thiện sản phẩm cuối cùng.', 'introduce', '{\"layout\":\"banner\",\"style\":null}', NULL, NULL, NULL, '#', 'Đăng ký tư vấn', NULL, NULL, NULL, 'active', 1, 5, '2024-06-16 08:35:13', '2024-06-25 14:02:16'),
(378, NULL, 'Chúng tôi giải quyết các khía cạnh chuyên nghiệp', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim', 'Global Brand Design (GBD) mang đến những giải pháp chuyên nghiệp, giải quyết hiệu quả các vấn đề của doanh nghiệp. Chúng tôi cung cấp đa dạng các loại dịch vụ như: Logo branding, Website design, Media production,Digital marketing,... để đáp ứng mọi nhu cầu của bạn.', 'introduce', '{\"layout\":\"story\",\"style\":null}', '/data/cms-image/uy-tin.png', NULL, NULL, '#', 'Đọc tiếp', NULL, NULL, NULL, 'active', 1, 5, '2024-06-16 08:50:55', '2024-06-21 15:38:16'),
(379, 378, 'Đội ngũ giàu kinh nghiệm', NULL, 'Đội ngũ thiết kế, chuyên gia marketing tại Global Brand Design đều có nhiều năm kinh nghiệm, nhanh chóng nắm bắt yêu cầu của khách hàng để đưa ra các giải pháp phù hợp và hiệu quả.', 'introduce', '{\"layout\":null,\"style\":null}', '/data/cms-image/icon/store1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 5, '2024-06-16 08:56:02', '2024-06-25 13:44:51'),
(380, 378, 'Hỗ trợ nhanh chóng', NULL, 'Sẵn sàng hỗ trợ khách hàng mọi lúc, từ tư vấn ban đầu, thực hiện dự án đến cả những thay đổi, điều chỉnh trong quá trình làm việc, đem lại trải nghiệm dịch vụ tốt nhất.', 'introduce', '{\"layout\":null,\"style\":null}', '/data/cms-image/icon/store2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 5, '2024-06-16 08:56:40', '2024-06-25 13:51:23'),
(381, NULL, 'GLOBAL BRAND DESIGN', 'Hồ sơ năng lực', 'Global Brand Design (GBD) là một công ty chuyên sâu về hoạch định chiến lược, thiết kế và truyền thông thương hiệu. Chúng tôi cung cấp giải pháp toàn diện cho doanh nghiệp, giúp doanh nghiệp nâng cao năng lực cạnh tranh thông qua việc thương hiệu mạnh.\r\n\r\nGBD không chỉ là một đối tác, mà còn là người đồng hành trên con đường phát triển thương hiệu của bạn. Với đội ngũ chuyên gia giàu kinh nghiệm và đam mê, chúng tôi tự tin mang đến những giải pháp tối ưu, giúp thương hiệu của bạn chinh phục mọi thử thách và vươn tới đỉnh cao.', 'introduce', '{\"layout\":\"profile\",\"style\":null}', NULL, NULL, NULL, 'https://online.fliphtml5.com/setkb/uqgh/#p=1', 'DOWNLOAD PROFILE', NULL, NULL, NULL, 'active', 1, 1, '2024-06-16 09:10:04', '2024-06-23 08:02:42'),
(382, NULL, 'Văn hóa', 'Global Brand Design', 'Tại GBD, chúng tôi thấu hiểu và đặt yếu tố \"con người\" lên trên hết.                             Chúng tôi ưu tiên sự đổi mới, sáng tạo của mỗi cá nhân, khuyến khích sự độc lập phát triển của mỗi bộ phận để cùng nhau tạo nên một tập thể mang bản sắc riêng - đa dạng và độc đáo. \r\nChúng tôi luôn hoan nghênh chào đón mọi cá nhân, tổ chức có cùng lý tưởng, đam mê, nhiệt huyết để hợp tác, trao đổi kiến thức, kinh nghiệm nhằm mục đích cùng nhau phát triển một cách chuyên nghiệp và bền vững.', 'introduce', '{\"layout\":\"culture\",\"style\":null}', '/data/cms-image/van-hoa.png', NULL, NULL, '#', 'Đọc tiếp', NULL, NULL, NULL, 'active', 1, 5, '2024-06-16 09:15:03', '2024-06-21 15:56:23'),
(383, NULL, 'Our Team', 'Global Brand Design', 'GBD tự hào với đội ngũ nhân sự năng động, sáng tạo luôn dốc hết đam mê vào mọi công việc mình làm nhằm mang lại những giá trị tốt nhất cho khách hàng.', 'introduce', '{\"layout\":\"our_team\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 5, '2024-06-16 09:19:28', '2024-06-21 16:02:44'),
(384, 383, 'HR', NULL, NULL, 'introduce', '{\"layout\":null,\"style\":null}', '/data/cms-image/team1.png', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 5, '2024-06-16 09:19:57', '2024-06-21 16:03:30'),
(385, 383, '#1', NULL, NULL, 'introduce', '{\"layout\":null,\"style\":null}', '/data/cms-image/team2.png', NULL, NULL, NULL, NULL, NULL, NULL, 5, 'active', 1, 5, '2024-06-16 09:19:57', '2024-06-21 16:04:22'),
(386, 383, '#1', NULL, NULL, 'introduce', '{\"layout\":null,\"style\":null}', '/data/cms-image/team3.png', NULL, NULL, NULL, NULL, NULL, NULL, 5, 'active', 1, 5, '2024-06-16 09:19:57', '2024-06-21 16:04:10'),
(387, 383, '#1', NULL, NULL, 'introduce', '{\"layout\":null,\"style\":null}', '/data/cms-image/team4.png', NULL, NULL, NULL, NULL, NULL, NULL, 4, 'active', 1, 5, '2024-06-16 09:19:57', '2024-06-21 16:03:59'),
(388, 383, '#1', NULL, NULL, 'introduce', '{\"layout\":null,\"style\":null}', '/data/cms-image/team2.png', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 5, '2024-06-16 09:19:57', '2024-06-21 16:03:43'),
(389, 383, 'CEO', NULL, NULL, 'introduce', '{\"layout\":null,\"style\":null}', '/data/cms-image/team4.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 5, '2024-06-16 09:19:57', '2024-06-21 16:04:35'),
(390, NULL, 'Banner trang dịch vụ', NULL, NULL, 'service', '{\"layout\":\"banner\",\"style\":null}', '/data/cms-image/banner/service.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-16 09:36:20', '2024-06-16 09:36:20'),
(391, NULL, 'Video trang dịch vụ', NULL, NULL, 'service', '{\"layout\":\"video\",\"style\":null}', '/data/cms-image/img-video.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-16 09:44:48', '2024-06-16 09:45:11'),
(392, NULL, 'Khối dịch vụ trong trangdịch vụ', NULL, NULL, 'service', '{\"layout\":\"service\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-16 09:52:29', '2024-06-16 09:52:29'),
(393, NULL, 'LÝ DO LỰA CHỌN', NULL, '<p>GBD là một lựa chọn đáng tin cậy cho các doanh nghiệp muốn khẳng định vị thế và nâng tầm thương hiệu. Đến với GBD, bạn sẽ nhận được: \r\n                        </p>\r\n                        <ul>\r\n                            <li>Dịch vụ chuyên nghiệp và toàn diện</li>\r\n                            <li>Chất lượng sản phẩm vượt trội</li>\r\n                            <li>Quy trình làm việc hiệu quả</li>\r\n                            <li>Giá cả cạnh tranh và cam kết về tiến độ</li>\r\n                        </ul>\r\n                        <p>Hãy liên hệ ngay với GBD - Global Brand Design để được tư vấn và triển khai các dịch vụ toàn diện cho doanh nghiệp của bạn!\r\n                        </p>', 'service', '{\"layout\":\"reason\",\"style\":null}', NULL, NULL, NULL, '#', 'Đọc tiếp', NULL, NULL, NULL, 'active', 1, 5, '2024-06-16 10:03:42', '2024-06-21 15:46:19'),
(394, NULL, 'Khối video thứ 2 page dịch vụ', NULL, NULL, 'service', '{\"layout\":\"introduction\",\"style\":null}', '/data/cms-image/bg-service2.png', NULL, NULL, 'https://www.youtube.com/embed/NaQnFcDKFiM?si=eK5Ly0v6Xt-Fc4ma', NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-16 10:06:59', '2024-06-16 10:06:59'),
(395, NULL, 'DỰ ÁN TIÊU BIỂU', NULL, NULL, 'service', '{\"layout\":\"projects\",\"style\":null}', NULL, NULL, NULL, '#', 'ALL PROJECTS', NULL, NULL, NULL, 'active', 1, 1, '2024-06-16 10:16:13', '2024-06-16 10:22:00'),
(396, NULL, 'Khối banner page khách hàng', NULL, NULL, 'customer', '{\"layout\":\"banner\",\"style\":null}', '/data/cms-image/customer_banner.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-16 11:29:15', '2024-06-16 11:29:15'),
(397, NULL, 'KHÁCH HÀNG <br>NÓI GÌ VỀ CHÚNG TÔI', 'Dịch vụ chuyên nghiệp với đội ngũ nhân viên tận tâm, nhiệt tình, trách nhiệm là cơ sở để Global Brand Design nhận được sự tin tưởng và hài lòng từ rất nhiều khách hàng và đối tác.', NULL, 'customer', '{\"layout\":\"talk\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 5, '2024-06-16 11:33:47', '2024-06-21 15:51:54'),
(398, 397, 'Ms Linh Huong', 'CEO', 'GBD đồng hành trong suốt thời gian lên ý tưởng, chỉnh sửa và hiện thực hoá logo chúng tôi mong muốn. Dịch vụ uy tín, chất lượng, tận tâm, vô cùng chuyên nghiệp.', 'customer', '{\"layout\":null,\"style\":null}', '/data/cms-image/avatar_custome.png', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 5, '2024-06-16 11:35:29', '2024-06-25 14:04:17'),
(399, 397, 'Mr. B Nguyen', 'Marketing Manager', 'Lựa chọn tin cậy để triển khai các hạng mục thiết kế logo, website và profile doanh nghiệm. Cảm nhận được tâm huyết của team trong từng thiết kế. Trân trọng!', 'customer', '{\"layout\":null,\"style\":null}', '/data/cms-image/avatar_custome.png', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 5, '2024-06-16 11:35:29', '2024-06-25 14:04:32'),
(400, 397, 'Mr Hung', 'Founder', 'Từ ý tưởng ban đầu của mình, các bạn thiết kế tại GBD đã triển khai rất nhiều phương án và có sự phân tích kèm theo nên mình rất dễ dàng lựa chọn được option ưng ý. Cám ơn sự hỗ trợ tận tâm của các bạn.', 'customer', '{\"layout\":null,\"style\":null}', '/data/cms-image/avatar_custome.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 5, '2024-06-16 11:35:29', '2024-06-25 14:05:04'),
(401, 397, 'Mr. Nguyễn Văn A', 'CEO &Founder', 'Tôi cảm thấy rất vui và hài lòng với sự nhiệt tình, sáng tạo của GBD team. Các bạn rất chủ động, đưa ra những idea thú vị mà chính tôi cũng chưa nghĩ đến. Kết quả đạt được ngoài mong đợi, cám ơn GBD team!', 'customer', '{\"layout\":null,\"style\":null}', '/data/cms-image/avatar_custome.png', NULL, NULL, NULL, NULL, NULL, NULL, 4, 'active', 1, 5, '2024-06-16 11:35:29', '2024-06-25 14:04:45'),
(402, NULL, 'Đối tác', NULL, NULL, 'customer', '{\"layout\":\"partner\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-16 11:45:58', '2024-06-16 11:45:58'),
(403, 402, '#1', NULL, NULL, 'customer', '{\"layout\":null,\"style\":null}', '/data/cms-image/partner-cus-1.svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-16 11:46:52', '2024-06-16 11:47:03'),
(404, 402, '#1', NULL, NULL, 'customer', '{\"layout\":null,\"style\":null}', '/data/cms-image/partner-cus-2.svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-16 11:46:52', '2024-06-16 11:47:03'),
(405, 402, '#1', NULL, NULL, 'customer', '{\"layout\":null,\"style\":null}', '/data/cms-image/partner-cus-3.svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-16 11:46:52', '2024-06-16 11:47:03'),
(406, 402, '#1', NULL, NULL, 'customer', '{\"layout\":null,\"style\":null}', '/data/cms-image/partner-cus-4.svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-16 11:46:52', '2024-06-16 11:47:03'),
(407, 402, '#1', NULL, NULL, 'customer', '{\"layout\":null,\"style\":null}', '/data/cms-image/partner-cus-5.svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-16 11:46:52', '2024-06-16 11:47:03'),
(408, 402, '#1', NULL, NULL, 'customer', '{\"layout\":null,\"style\":null}', '/data/cms-image/partner-cus-6.svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-16 11:46:52', '2024-06-16 11:47:03'),
(409, 402, '#1', NULL, NULL, 'customer', '{\"layout\":null,\"style\":null}', '/data/cms-image/partner-cus-3.svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-16 11:46:52', '2024-06-16 11:47:03'),
(410, 402, '#1', NULL, NULL, 'customer', '{\"layout\":null,\"style\":null}', '/data/cms-image/partner-cus-4.svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-16 11:46:52', '2024-06-16 11:47:03'),
(411, NULL, 'TUYỂN DỤNG', 'Thử thách bản thân và học hỏi kinh nghiệm với hàng trăm dự án mỗi năm.', NULL, 'banner', '{\"layout\":\"logo_partner\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-16 11:54:54', '2024-06-16 12:02:06'),
(412, NULL, 'We are hiring', NULL, NULL, 'banner', '{\"layout\":\"hiring\",\"style\":null}', '/data/cms-image/we-are-hiring.svg', NULL, NULL, '#', 'Apply Now', NULL, NULL, NULL, 'active', 1, 1, '2024-06-16 12:04:39', '2024-06-16 12:04:57'),
(413, 381, '#1', NULL, NULL, 'introduce', '{\"layout\":null,\"style\":null}', '/data/cms-image/introduce1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-23 07:50:58', '2024-06-23 07:50:58'),
(414, 381, '#2', NULL, NULL, 'introduce', '{\"layout\":null,\"style\":null}', '/data/cms-image/introduce2.png', NULL, NULL, NULL, NULL, NULL, NULL, -1, 'active', 1, 1, '2024-06-23 07:51:26', '2024-06-23 07:51:26'),
(415, 381, '#3', NULL, NULL, 'introduce', '{\"layout\":null,\"style\":null}', '/data/cms-image/duan4.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2024-06-23 07:51:48', '2024-06-23 07:57:01'),
(416, 377, 'DESIGN AI', NULL, 'Ứng dụng AI trong quá trình sáng tạo ra các thiết kế, sản phẩm, dịch vụ, GBD luôn cập nhật những xu hướng mới nhất, đem đến sự độc đáo riêng có cho khách hàng.', 'introduce', '{\"layout\":null,\"style\":null}', '/data/cms-image/AI-Graphic-design-tools.webp', NULL, NULL, '#', 'Đăng ký tư vấn', NULL, NULL, NULL, 'active', 1, 5, '2024-06-23 08:15:20', '2024-06-25 14:01:43'),
(417, 377, 'Về GBD', NULL, 'GBD là đơn vị chuyên nghiệp, uy tín về thiết kế thương hiệu (brand design). Chúng tôi cam kết mang đến cho khách hàng những giải pháp sáng tạo và hiệu quả nhất để giúp thương hiệu nổi bật trong thị trường cạnh tranh ngày càng gay gắt.', 'introduce', '{\"layout\":null,\"style\":null}', '/data/cms-image/1695524296879.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 5, '2024-06-23 08:15:42', '2024-06-25 13:58:35'),
(418, 377, 'TỔNG QUAN', NULL, 'Với kinh nghiệm 6 năm trong việc cung cấp các dịch vụ và giải pháp quảng cáo cho hàng trăm doanh nghiệp, GBD cam kết mang đến các sản phẩm độc đáo, đa dạng, chất lượng cao, đáp ứng tiêu chuẩn chuyên nghiệp và tạo dựng uy tín cho thương hiệu. Quá trình hợp tác được thiết kế để đảm bảo sự hài lòng tối đa của khách hàng, từ khâu tư vấn, lên ý tưởng đến hoàn thiện sản phẩm cuối cùng.', 'introduce', '{\"layout\":null,\"style\":null}', '/data/cms-image/slider/slide-about.png', NULL, NULL, '#', 'Đăng ký tư vấn', NULL, NULL, NULL, 'active', 1, 1, '2024-06-23 08:16:07', '2024-06-23 08:24:19'),
(419, 370, '#1', NULL, NULL, 'form', '{\"layout\":null,\"style\":null}', '/data/cms-image/golf-01.svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-27 08:27:29', '2024-06-30 12:22:29'),
(420, 370, '#2', NULL, NULL, 'form', '{\"layout\":null,\"style\":null}', '/data/cms-image/Ngân hoa-01.svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-27 08:27:29', '2024-06-30 12:20:54'),
(421, 370, '#3', NULL, NULL, 'form', '{\"layout\":null,\"style\":null}', '/data/cms-image/tài chính-01.svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-27 08:27:29', '2024-06-30 12:19:54'),
(422, 370, '#4', NULL, NULL, 'form', '{\"layout\":null,\"style\":null}', '/data/cms-image/Fumo-01.svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-27 08:27:29', '2024-06-27 11:14:22'),
(423, 370, '#5', NULL, NULL, 'form', '{\"layout\":null,\"style\":null}', '/data/cms-image/SHOP noi dia-01.svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-06-27 08:27:29', '2024-06-27 11:13:38');

-- --------------------------------------------------------

--
-- Table structure for table `tb_bookings`
--

CREATE TABLE `tb_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_note` text COLLATE utf8mb4_unicode_ci,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `doctor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `booking_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_note` text COLLATE utf8mb4_unicode_ci,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_branchs`
--

CREATE TABLE `tb_branchs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) DEFAULT '0',
  `name` text COLLATE utf8mb4_unicode_ci,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map` text COLLATE utf8mb4_unicode_ci,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_branchs`
--

INSERT INTO `tb_branchs` (`id`, `is_type`, `is_featured`, `name`, `city`, `district`, `address`, `phone`, `fax`, `map`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(4, NULL, 0, 'Pham Nhất Nam', NULL, NULL, NULL, NULL, NULL, NULL, '{\"name\":{\"en\":\"Nam Nhat Pham\"},\"brief\":{\"vi\":null,\"en\":\"Leader\"},\"facebook\":null,\"instagram\":null,\"email\":null,\"image\":\"\\/data\\/cms-image\\/Nh\\u00e2n s\\u1ef1\\/3.jpg\"}', 'active', 1, 1, '2023-03-10 04:19:29', '2023-03-10 06:45:27'),
(5, NULL, 1, 'Pham Nhất Nam', NULL, NULL, NULL, NULL, NULL, NULL, '{\"name\":{\"en\":\"Nam Nhat Pham\"},\"image\":\"\\/data\\/cms-image\\/Nh\\u00e2n s\\u1ef1\\/3.jpg\",\"brief\":{\"vi\":\"Gi\\u00e1m \\u0111\\u1ed1c\",\"en\":\"Leader\"},\"facebook\":null,\"instagram\":null,\"email\":null}', 'active', 1, 1, '2023-03-10 04:19:29', '2023-03-10 06:45:40'),
(6, NULL, 1, 'Pham Thuy Chi', NULL, NULL, NULL, NULL, NULL, NULL, '{\"name\":{\"en\":\"Chi Thuy Pham\"},\"brief\":{\"vi\":\"Th\\u01b0 k\\u00fd\",\"en\":\"Secretary\"},\"facebook\":null,\"instagram\":null,\"email\":null,\"image\":\"\\/data\\/cms-image\\/Nh\\u00e2n s\\u1ef1\\/8.jpg\"}', 'active', 1, 1, '2023-03-10 04:19:29', '2023-03-10 06:50:14'),
(7, NULL, 1, 'Nhất Thành', NULL, NULL, NULL, NULL, NULL, NULL, '{\"name\":{\"en\":\"Thanh Nhat Nguyen\"},\"brief\":{\"vi\":\"Ph\\u00f3 Gi\\u00e1m \\u0110\\u1ed1c\",\"en\":\"manager\"},\"facebook\":null,\"instagram\":null,\"email\":null,\"image\":\"\\/data\\/cms-image\\/Nh\\u00e2n s\\u1ef1\\/3.jpg\"}', 'active', 1, 1, '2023-03-10 04:19:29', '2023-03-10 06:49:04'),
(8, NULL, 1, 'Ngọc Nhất', NULL, NULL, NULL, NULL, NULL, NULL, '{\"name\":{\"en\":\"Nhat Ngoc Do\"},\"brief\":{\"vi\":\"Ch\\u1ee7 t\\u1ecbch\",\"en\":\"president\"},\"facebook\":null,\"instagram\":null,\"email\":null,\"image\":\"\\/data\\/cms-image\\/Nh\\u00e2n s\\u1ef1\\/2.jpg\"}', 'active', 1, 1, '2023-03-10 04:19:29', '2023-03-10 06:50:03'),
(9, NULL, 0, 'Pham Nhất Nam', NULL, NULL, NULL, NULL, NULL, NULL, '{\"name\":{\"en\":\"Nam Nhat Pham\"},\"image\":\"\\/data\\/cms-image\\/Nh\\u00e2n s\\u1ef1\\/3.jpg\",\"brief\":{\"vi\":\"Gi\\u00e1m \\u0111\\u1ed1c\",\"en\":\"Leader\"},\"facebook\":null,\"instagram\":null,\"email\":null}', 'active', 1, 1, '2023-03-10 04:19:29', '2023-03-10 04:19:29'),
(10, NULL, 0, 'Pham Nhất Nam', NULL, NULL, NULL, NULL, NULL, NULL, '{\"name\":{\"en\":\"Nam Nhat Pham\"},\"image\":\"\\/data\\/cms-image\\/Nh\\u00e2n s\\u1ef1\\/3.jpg\",\"brief\":{\"vi\":\"Gi\\u00e1m \\u0111\\u1ed1c\",\"en\":\"Leader\"},\"facebook\":null,\"instagram\":null,\"email\":null}', 'active', 1, 1, '2023-03-10 04:19:29', '2023-03-10 04:19:29');

-- --------------------------------------------------------

--
-- Table structure for table `tb_cms_posts`
--

CREATE TABLE `tb_cms_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `taxonomy_id` bigint(20) UNSIGNED DEFAULT NULL,
  `resources_id` int(11) DEFAULT NULL,
  `is_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'post',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `count_visited` int(11) NOT NULL DEFAULT '0',
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_cms_posts`
--

INSERT INTO `tb_cms_posts` (`id`, `taxonomy_id`, `resources_id`, `is_type`, `title`, `json_params`, `image`, `image_thumb`, `is_featured`, `count_visited`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `alias`) VALUES
(391, 84, NULL, 'product', 'Photograp', '{\"price\":null,\"price_old\":null,\"brief\":{\"vi\":\"Ch\\u1ee5p s\\u1ea3n ph\\u1ea9m, profile doanh nghi\\u1ec7p\"},\"content\":{\"vi\":\"<p>Lorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolor<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/z5345566034985_c6a71be0bfbc5c326d94a888411b33e5.jpg', NULL, 1, 0, 6, 'active', 1, 1, '2024-06-16 06:48:54', '2024-06-27 11:00:37', 'lorem-ipsum-dolor'),
(392, 84, NULL, 'product', 'DIGITAL MARKETING', '{\"price\":null,\"price_old\":null,\"brief\":{\"vi\":\"<p>D\\u1ecbch v\\u1ee5 digital marketing hi\\u1ec7u qu\\u1ea3 cho doanh nghi\\u1ec7p<\\/p>\"},\"content\":{\"vi\":\"<h1><strong>D\\u1ecbch v\\u1ee5 digital marketing to\\u00e0n di\\u1ec7n t\\u1eeb GBD - Global Brand Design<\\/strong><\\/h1>\\r\\n\\r\\n<p>Trong th\\u1eddi \\u0111\\u1ea1i s\\u1ed1 h\\u00f3a hi\\u1ec7n nay, vi\\u1ec7c qu\\u1ea3ng b\\u00e1 doanh nghi\\u1ec7p tr\\u00ean c\\u00e1c n\\u1ec1n t\\u1ea3ng digital \\u0111\\u00f3ng vai tr\\u00f2 v\\u00f4 c\\u00f9ng quan tr\\u1ecdng. L\\u00e0 m\\u1ed9t trong nh\\u1eefng c\\u00f4ng ty h\\u00e0ng \\u0111\\u1ea7u v\\u1ec1 d\\u1ecbch v\\u1ee5 branding v\\u00e0 thi\\u1ebft k\\u1ebf, GBD - Global Brand Design \\u0111\\u00e3 m\\u1edf r\\u1ed9ng c\\u00e1c d\\u1ecbch v\\u1ee5 c\\u1ee7a m\\u00ecnh \\u0111\\u1ec3 \\u0111\\u00e1p \\u1ee9ng nhu c\\u1ea7u digital marketing ng\\u00e0y c\\u00e0ng gia t\\u0103ng c\\u1ee7a kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<h3><strong>D\\u1ecbch v\\u1ee5 digital marketing to\\u00e0n di\\u1ec7n t\\u1eeb GBD<\\/strong><\\/h3>\\r\\n\\r\\n<p>V\\u1edbi \\u0111\\u1ed9i ng\\u0169 chuy\\u00ean gia digital marketing c\\u00f3 nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m, GBD cung c\\u1ea5p m\\u1ed9t lo\\u1ea1t c\\u00e1c d\\u1ecbch v\\u1ee5 digital marketing nh\\u1eb1m gi\\u00fap doanh nghi\\u1ec7p gia t\\u0103ng s\\u1ef1 hi\\u1ec7n di\\u1ec7n, thu h\\u00fat kh\\u00e1ch h\\u00e0ng ti\\u1ec1m n\\u0103ng v\\u00e0 t\\u1ed1i \\u01b0u h\\u00f3a ho\\u1ea1t \\u0111\\u1ed9ng kinh doanh tr\\u00ean c\\u00e1c k\\u00eanh s\\u1ed1:<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>\\r\\n\\t<p><em>X\\u00e2y d\\u1ef1ng chi\\u1ebfn l\\u01b0\\u1ee3c digital marketing<\\/em>: \\u0110\\u1ed9i ng\\u0169 digital marketing c\\u1ee7a GBD s\\u1ebd ph\\u00e2n t\\u00edch nhu c\\u1ea7u, m\\u1ee5c ti\\u00eau v\\u00e0 ngu\\u1ed3n l\\u1ef1c c\\u1ee7a doanh nghi\\u1ec7p \\u0111\\u1ec3 thi\\u1ebft k\\u1ebf m\\u1ed9t chi\\u1ebfn l\\u01b0\\u1ee3c digital marketing to\\u00e0n di\\u1ec7n, bao g\\u1ed3m m\\u1ee5c ti\\u00eau, ng\\u00e2n s\\u00e1ch, c\\u00e1c k\\u00eanh digital, n\\u1ed9i dung v\\u00e0 k\\u1ebf ho\\u1ea1ch tri\\u1ec3n khai c\\u1ee5 th\\u1ec3.<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><em>Thi\\u1ebft k\\u1ebf website<\\/em>: GBD cung c\\u1ea5p d\\u1ecbch v\\u1ee5 thi\\u1ebft k\\u1ebf website chuy\\u00ean nghi\\u1ec7p, c\\u00f3 t\\u00ednh n\\u0103ng t\\u1ed1i \\u01b0u cho SEO v\\u00e0 tr\\u1ea3i nghi\\u1ec7m ng\\u01b0\\u1eddi d\\u00f9ng t\\u1ed1t. \\u0110\\u1ed9i ng\\u0169 thi\\u1ebft k\\u1ebf c\\u1ee7a ch\\u00fang t\\u00f4i s\\u1ebd t\\u1ea1o ra website \\u1ea5n t\\u01b0\\u1ee3ng, thu h\\u00fat kh\\u00e1ch h\\u00e0ng v\\u00e0 th\\u00fac \\u0111\\u1ea9y ho\\u1ea1t \\u0111\\u1ed9ng kinh doanh.<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><em>Qu\\u1ea3n l\\u00fd v\\u00e0 t\\u1ed1i \\u01b0u h\\u00f3a n\\u1ed9i dung<\\/em>: D\\u1ef1a tr\\u00ean chi\\u1ebfn l\\u01b0\\u1ee3c digital marketing, \\u0111\\u1ed9i ng\\u0169 n\\u1ed9i dung c\\u1ee7a GBD s\\u1ebd t\\u1ea1o ra c\\u00e1c n\\u1ed9i dung marketing h\\u1ea5p d\\u1eabn v\\u00e0 \\u0111\\u0103ng t\\u1ea3i m\\u1ed9t c\\u00e1ch c\\u00f3 h\\u1ec7 th\\u1ed1ng tr\\u00ean website, blog, m\\u1ea1ng x\\u00e3 h\\u1ed9i... Ch\\u00fang t\\u00f4i c\\u0169ng s\\u1ebd th\\u01b0\\u1eddng xuy\\u00ean theo d\\u00f5i v\\u00e0 t\\u1ed1i \\u01b0u h\\u00f3a n\\u1ed9i dung \\u0111\\u1ec3 \\u0111\\u1ea1t hi\\u1ec7u qu\\u1ea3 t\\u1ed1i \\u01b0u.<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><em>Qu\\u1ea3ng c\\u00e1o k\\u1ef9 thu\\u1eadt s\\u1ed1<\\/em>: GBD cung c\\u1ea5p d\\u1ecbch v\\u1ee5 qu\\u1ea3ng c\\u00e1o tr\\u00ean c\\u00e1c n\\u1ec1n t\\u1ea3ng digital nh\\u01b0 Google Ads, Facebook Ads, LinkedIn Ads... Ch\\u00fang t\\u00f4i s\\u1ebd ph\\u00e2n t\\u00edch \\u0111\\u1ed1i t\\u01b0\\u1ee3ng m\\u1ee5c ti\\u00eau, thi\\u1ebft l\\u1eadp chi\\u1ebfn d\\u1ecbch qu\\u1ea3ng c\\u00e1o hi\\u1ec7u qu\\u1ea3 v\\u00e0 qu\\u1ea3n l\\u00fd t\\u1ed1i \\u01b0u chi ph\\u00ed qu\\u1ea3ng c\\u00e1o.<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><em>X\\u00e2y d\\u1ef1ng v\\u00e0 qu\\u1ea3n l\\u00fd m\\u1ea1ng x\\u00e3 h\\u1ed9i<\\/em>: \\u0110\\u1ec3 gia t\\u0103ng s\\u1ef1 t\\u01b0\\u01a1ng t\\u00e1c v\\u00e0 t\\u0103ng tr\\u01b0\\u1edfng c\\u1ed9ng \\u0111\\u1ed3ng, GBD s\\u1ebd l\\u00ean k\\u1ebf ho\\u1ea1ch v\\u00e0 qu\\u1ea3n l\\u00fd c\\u00e1c trang m\\u1ea1ng x\\u00e3 h\\u1ed9i nh\\u01b0 Facebook, Instagram, LinkedIn... c\\u1ee7a doanh nghi\\u1ec7p m\\u1ed9t c\\u00e1ch chuy\\u00ean nghi\\u1ec7p.<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><em>Ph\\u00e2n t\\u00edch v\\u00e0 b\\u00e1o c\\u00e1o<\\/em>: Trong su\\u1ed1t qu\\u00e1 tr\\u00ecnh tri\\u1ec3n khai c\\u00e1c d\\u1ecbch v\\u1ee5 digital marketing, \\u0111\\u1ed9i ng\\u0169 c\\u1ee7a GBD s\\u1ebd th\\u01b0\\u1eddng xuy\\u00ean theo d\\u00f5i, ph\\u00e2n t\\u00edch hi\\u1ec7u qu\\u1ea3 c\\u00e1c ho\\u1ea1t \\u0111\\u1ed9ng v\\u00e0 \\u0111\\u01b0a ra c\\u00e1c b\\u00e1o c\\u00e1o chi ti\\u1ebft, cung c\\u1ea5p c\\u00e1c g\\u1ee3i \\u00fd c\\u1ea3i thi\\u1ec7n.<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<h3><strong>T\\u1ea1i sao n\\u00ean l\\u1ef1a ch\\u1ecdn d\\u1ecbch v\\u1ee5 digital marketing c\\u1ee7a GBD?<\\/strong><\\/h3>\\r\\n\\r\\n<p>V\\u1edbi h\\u01a1n 6 n\\u0103m kinh nghi\\u1ec7m trong l\\u0129nh v\\u1ef1c branding, thi\\u1ebft k\\u1ebf v\\u00e0 digital marketing, GBD - Global Brand Design \\u0111\\u00e3 gi\\u00fap h\\u00e0ng tr\\u0103m doanh nghi\\u1ec7p t\\u1eeb c\\u00e1c ng\\u00e0nh kh\\u00e1c nhau gia t\\u0103ng hi\\u1ec7u qu\\u1ea3 digital marketing v\\u00e0 \\u0111\\u1ea1t \\u0111\\u01b0\\u1ee3c c\\u00e1c m\\u1ee5c ti\\u00eau kinh doanh. C\\u00e1c l\\u00fd do n\\u00ean l\\u1ef1a ch\\u1ecdn GBD:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\u0110\\u1ed9i ng\\u0169 chuy\\u00ean gia digital marketing gi\\u00e0u kinh nghi\\u1ec7m, am hi\\u1ec3u s\\u00e2u s\\u1eafc v\\u1ec1 xu h\\u01b0\\u1edbng v\\u00e0 c\\u00f4ng ngh\\u1ec7 digital.<\\/li>\\r\\n\\t<li>Quy tr\\u00ecnh l\\u00e0m vi\\u1ec7c chuy\\u00ean nghi\\u1ec7p, hi\\u1ec7u qu\\u1ea3, cam k\\u1ebft ho\\u00e0n th\\u00e0nh d\\u1ef1 \\u00e1n \\u0111\\u00fang ti\\u1ebfn \\u0111\\u1ed9.<\\/li>\\r\\n\\t<li>Chi ph\\u00ed d\\u1ecbch v\\u1ee5 minh b\\u1ea1ch, c\\u1ea1nh tranh so v\\u1edbi th\\u1ecb tr\\u01b0\\u1eddng.<\\/li>\\r\\n\\t<li>\\u0110\\u1ea3m b\\u1ea3o k\\u1ebft qu\\u1ea3, \\u0111\\u01b0\\u1ee3c theo d\\u00f5i v\\u00e0 b\\u00e1o c\\u00e1o th\\u01b0\\u1eddng xuy\\u00ean.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>H\\u00e3y li\\u00ean h\\u1ec7 ngay v\\u1edbi GBD - Global Brand Design \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c t\\u01b0 v\\u1ea5n v\\u00e0 tri\\u1ec3n khai c\\u00e1c d\\u1ecbch v\\u1ee5 digital marketing to\\u00e0n di\\u1ec7n cho doanh nghi\\u1ec7p c\\u1ee7a b\\u1ea1n!<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/0x0.jpg', NULL, 1, 0, 4, 'active', 1, 1, '2024-06-16 06:48:54', '2024-06-27 08:11:31', 'lorem-ipsum-dolor'),
(393, 84, NULL, 'product', 'MEDIA PRODUCTION', '{\"price\":null,\"price_old\":null,\"brief\":{\"vi\":\"S\\u1ea3n xu\\u1ea5t h\\u00ecnh \\u1ea3nh, video theo d\\u1ef1 \\u00e1n\\/y\\u00eau c\\u1ea7u kh\\u00e1ch h\\u00e0ng\"},\"content\":{\"vi\":\"<h1>T\\u0103ng T\\u1ea7m \\u1ea2nh H\\u01b0\\u1edfng Th\\u01b0\\u01a1ng Hi\\u1ec7u V\\u1edbi D\\u1ecbch V\\u1ee5 Media Production Chuy\\u00ean Nghi\\u1ec7p T\\u1eeb GBD<\\/h1>\\r\\n\\r\\n<p>Trong th\\u1ecb tr\\u01b0\\u1eddng c\\u1ea1nh tranh gay g\\u1eaft nh\\u01b0 hi\\u1ec7n nay, vi\\u1ec7c x\\u00e2y d\\u1ef1ng v\\u00e0 n\\u00e2ng cao h\\u00ecnh \\u1ea3nh th\\u01b0\\u01a1ng hi\\u1ec7u tr\\u1edf n\\u00ean v\\u00f4 c\\u00f9ng quan tr\\u1ecdng \\u0111\\u1ed1i v\\u1edbi doanh nghi\\u1ec7p. V\\u00e0 \\\"nh\\u00e2n t\\u1ed1\\\" then ch\\u1ed1t \\u0111\\u1ec3 th\\u1ef1c hi\\u1ec7n \\u0111i\\u1ec1u n\\u00e0y ch\\u00ednh l\\u00e0 c\\u00e1c s\\u1ea3n ph\\u1ea9m content media ch\\u1ea5t l\\u01b0\\u1ee3ng cao.<\\/p>\\r\\n\\r\\n<p>Nh\\u1eadn th\\u1ea5y nhu c\\u1ea7u ng\\u00e0y c\\u00e0ng gia t\\u0103ng c\\u1ee7a kh\\u00e1ch h\\u00e0ng v\\u1ec1 c\\u00e1c d\\u1ecbch v\\u1ee5 media production, GBD - Global Brand Design,\\u0111\\u00e3 ph\\u00e1t tri\\u1ec3n b\\u1ed9 ph\\u1eadn chuy\\u00ean bi\\u1ec7t \\u0111\\u1ec3 \\u0111\\u00e1p \\u1ee9ng nhu c\\u1ea7u n\\u00e0y m\\u1ed9t c\\u00e1ch t\\u1ed1i \\u01b0u.<\\/p>\\r\\n\\r\\n<h3><strong>D\\u1ecbch V\\u1ee5 Media Production Chuy\\u00ean Nghi\\u1ec7p T\\u1eeb GBD<\\/strong><\\/h3>\\r\\n\\r\\n<p>V\\u1edbi \\u0111\\u1ed9i ng\\u0169 nhi\\u1ebfp \\u1ea3nh gia, nh\\u00e0 s\\u1ea3n xu\\u1ea5t video, v\\u00e0 c\\u00e1c chuy\\u00ean gia thi\\u1ebft k\\u1ebf \\u0111\\u1ed3 h\\u1ecda, \\u00e2m nh\\u1ea1c t\\u00e0i n\\u0103ng, GBD cung c\\u1ea5p \\u0111\\u1ea7y \\u0111\\u1ee7 c\\u00e1c d\\u1ecbch v\\u1ee5 media production chuy\\u00ean nghi\\u1ec7p, bao g\\u1ed3m:<\\/p>\\r\\n\\r\\n<p><em>Ch\\u1ee5p \\u1ea3nh s\\u1ea3n ph\\u1ea9m, doanh nghi\\u1ec7p, s\\u1ef1 ki\\u1ec7n:<\\/em>&nbsp;C\\u00e1c b\\u1ed9 \\u1ea3nh chuy\\u00ean nghi\\u1ec7p s\\u1ebd g\\u00f3p ph\\u1ea7n t\\u0103ng t\\u00ednh h\\u1ea5p d\\u1eabn, thu h\\u00fat kh\\u00e1ch h\\u00e0ng ti\\u1ec1m n\\u0103ng \\u0111\\u1ebfn v\\u1edbi th\\u01b0\\u01a1ng hi\\u1ec7u c\\u1ee7a doanh nghi\\u1ec7p.<\\/p>\\r\\n\\r\\n<p><em>Quay v\\u00e0 bi\\u00ean t\\u1eadp video:<\\/em>&nbsp;C\\u00e1c s\\u1ea3n ph\\u1ea9m video chuy\\u00ean nghi\\u1ec7p, t\\u1eeb gi\\u1edbi thi\\u1ec7u s\\u1ea3n ph\\u1ea9m, qu\\u1ea3ng c\\u00e1o th\\u01b0\\u01a1ng hi\\u1ec7u \\u0111\\u1ebfn ghi l\\u1ea1i c\\u00e1c s\\u1ef1 ki\\u1ec7n quan tr\\u1ecdng, s\\u1ebd gi\\u00fap t\\u0103ng kh\\u1ea3 n\\u0103ng t\\u01b0\\u01a1ng t\\u00e1c v\\u00e0 lan t\\u1ecfa th\\u00f4ng \\u0111i\\u1ec7p c\\u1ee7a doanh nghi\\u1ec7p tr\\u00ean c\\u00e1c n\\u1ec1n t\\u1ea3ng tr\\u1ef1c tuy\\u1ebfn.<\\/p>\\r\\n\\r\\n<p><em>Thi\\u1ebft k\\u1ebf h\\u00ecnh \\u1ea3nh, infographic v\\u00e0 motion graphic:<\\/em>&nbsp;C\\u00e1c s\\u1ea3n ph\\u1ea9m \\u0111\\u1ed3 h\\u1ecda chuy\\u00ean nghi\\u1ec7p s\\u1ebd t\\u1ea1o \\u0111i\\u1ec3m nh\\u1ea5n, n\\u00e2ng cao t\\u00ednh th\\u1ea9m m\\u1ef9 v\\u00e0 truy\\u1ec1n t\\u1ea3i th\\u00f4ng tin m\\u1ed9t c\\u00e1ch hi\\u1ec7u qu\\u1ea3.<\\/p>\\r\\n\\r\\n<p><em>D\\u1ef1ng phim, animation v\\u00e0 VFX:<\\/em>&nbsp;C\\u00e1c s\\u1ea3n ph\\u1ea9m phim ng\\u1eafn, ho\\u1ea1t h\\u00ecnh v\\u00e0 hi\\u1ec7u \\u1ee9ng h\\u00ecnh \\u1ea3nh chuy\\u00ean nghi\\u1ec7p s\\u1ebd gi\\u00fap th\\u01b0\\u01a1ng hi\\u1ec7u c\\u1ee7a doanh nghi\\u1ec7p tr\\u1edf n\\u00ean s\\u1ed1ng \\u0111\\u1ed9ng, thu h\\u00fat h\\u01a1n.<\\/p>\\r\\n\\r\\n<h3><strong>Quy Tr\\u00ecnh S\\u1ea3n Xu\\u1ea5t Chuy\\u00ean Nghi\\u1ec7p, \\u0110\\u1ea1t Chu\\u1ea9n Qu\\u1ed1c T\\u1ebf<\\/strong><\\/h3>\\r\\n\\r\\n<p>M\\u1ed7i d\\u1ef1 \\u00e1n media production t\\u1ea1i GBD \\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c th\\u1ef1c hi\\u1ec7n theo quy tr\\u00ecnh kh\\u00e9p k\\u00edn, b\\u1eaft \\u0111\\u1ea7u t\\u1eeb kh\\u00e2u l\\u00ean \\u00fd t\\u01b0\\u1edfng, l\\u00ean k\\u1ebf ho\\u1ea1ch, th\\u1ef1c hi\\u1ec7n c\\u00e1c b\\u01b0\\u1edbc s\\u1ea3n xu\\u1ea5t cho \\u0111\\u1ebfn ho\\u00e0n thi\\u1ec7n s\\u1ea3n ph\\u1ea9m cu\\u1ed1i c\\u00f9ng. \\u0110\\u1ed9i ng\\u0169 chuy\\u00ean gia c\\u1ee7a GBD s\\u1ebd l\\u00e0m vi\\u1ec7c ch\\u1eb7t ch\\u1ebd v\\u1edbi kh\\u00e1ch h\\u00e0ng \\u0111\\u1ec3 hi\\u1ec3u r\\u00f5 nhu c\\u1ea7u, m\\u1ee5c ti\\u00eau truy\\u1ec1n th\\u00f4ng, t\\u1eeb \\u0111\\u00f3 \\u0111\\u1ec1 xu\\u1ea5t ph\\u01b0\\u01a1ng \\u00e1n s\\u00e1ng t\\u1ea1o v\\u00e0 tri\\u1ec3n khai th\\u1ef1c hi\\u1ec7n hi\\u1ec7u qu\\u1ea3.<\\/p>\\r\\n\\r\\n<p>T\\u1ea5t c\\u1ea3 c\\u00e1c s\\u1ea3n ph\\u1ea9m media production c\\u1ee7a GBD \\u0111\\u1ec1u \\u0111\\u1ea3m b\\u1ea3o ch\\u1ea5t l\\u01b0\\u1ee3ng cao, ph\\u00f9 h\\u1ee3p v\\u1edbi ti\\u00eau chu\\u1ea9n qu\\u1ed1c t\\u1ebf, g\\u00f3p ph\\u1ea7n n\\u00e2ng t\\u1ea7m h\\u00ecnh \\u1ea3nh th\\u01b0\\u01a1ng hi\\u1ec7u c\\u1ee7a doanh nghi\\u1ec7p.<\\/p>\\r\\n\\r\\n<h3><strong>Gi\\u1ea3i Ph\\u00e1p Truy\\u1ec1n Th\\u00f4ng To\\u00e0n Di\\u1ec7n T\\u1eeb Chuy\\u00ean Gia Th\\u01b0\\u01a1ng Hi\\u1ec7u<\\/strong><\\/h3>\\r\\n\\r\\n<p>Kh\\u00f4ng ch\\u1ec9 cung c\\u1ea5p c\\u00e1c d\\u1ecbch v\\u1ee5 media production chuy\\u00ean nghi\\u1ec7p, GBD c\\u00f2n l\\u00e0 \\u0111\\u01a1n v\\u1ecb t\\u01b0 v\\u1ea5n, thi\\u1ebft k\\u1ebf v\\u00e0 ph\\u00e1t tri\\u1ec3n th\\u01b0\\u01a1ng hi\\u1ec7u h\\u00e0ng \\u0111\\u1ea7u Vi\\u1ec7t Nam. V\\u00ec v\\u1eady, kh\\u00e1ch h\\u00e0ng s\\u1ebd \\u0111\\u01b0\\u1ee3c t\\u1eadn h\\u01b0\\u1edfng gi\\u1ea3i ph\\u00e1p truy\\u1ec1n th\\u00f4ng to\\u00e0n di\\u1ec7n, t\\u1eeb x\\u00e2y d\\u1ef1ng chi\\u1ebfn l\\u01b0\\u1ee3c th\\u01b0\\u01a1ng hi\\u1ec7u, thi\\u1ebft k\\u1ebf b\\u1ed9 nh\\u1eadn di\\u1ec7n, \\u0111\\u1ebfn s\\u1ea3n xu\\u1ea5t c\\u00e1c s\\u1ea3n ph\\u1ea9m content media \\u1ea5n t\\u01b0\\u1ee3ng.<\\/p>\\r\\n\\r\\n<p>H\\u00e3y li\\u00ean h\\u1ec7 v\\u1edbi GBD ngay h\\u00f4m nay \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c t\\u01b0 v\\u1ea5n mi\\u1ec5n ph\\u00ed v\\u00e0 nh\\u1eadn b\\u00e1o gi\\u00e1 d\\u1ecbch v\\u1ee5 media production ph\\u00f9 h\\u1ee3p v\\u1edbi nhu c\\u1ea7u c\\u1ee7a doanh nghi\\u1ec7p b\\u1ea1n. C\\u00f9ng GBD, ch\\u00fang ta s\\u1ebd n\\u00e2ng t\\u1ea7m h\\u00ecnh \\u1ea3nh th\\u01b0\\u01a1ng hi\\u1ec7u, t\\u0103ng t\\u01b0\\u01a1ng t\\u00e1c v\\u00e0 lan t\\u1ecfa th\\u00f4ng \\u0111i\\u1ec7p \\u0111\\u1ebfn v\\u1edbi kh\\u00e1ch h\\u00e0ng m\\u1ed9t c\\u00e1ch hi\\u1ec7u qu\\u1ea3 nh\\u1ea5t.<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/multiethnic-team-people-meeting-broadcast-q3podcast-recording-video-discussion-camera-influencer-guest-talking-online-livestream-create-social-media-channel-content.jpg', NULL, 1, 0, 3, 'active', 1, 1, '2024-06-16 06:48:54', '2024-06-27 08:05:28', 'lorem-ipsum-dolor'),
(394, 84, NULL, 'product', 'HOSTING, TÊN MIỀN', '{\"price\":null,\"price_old\":null,\"brief\":{\"vi\":\"<p>D\\u1ecbch v\\u1ee5 hosting v\\u00e0 \\u0111\\u0103ng k\\u00fd t\\u00ean mi\\u1ec1n cho c\\u00e1c website v\\u00e0 \\u1ee9ng d\\u1ee5ng.<\\/p>\"},\"content\":{\"vi\":\"<h1><strong>T\\u0103ng T\\u1ed1c Ho\\u1ea1t \\u0110\\u1ed9ng Tr\\u1ef1c Tuy\\u1ebfn V\\u1edbi D\\u1ecbch V\\u1ee5 Hosting v\\u00e0 T\\u00ean Mi\\u1ec1n Chuy\\u00ean Nghi\\u1ec7p t\\u1eeb GBD<\\/strong><\\/h1>\\r\\n\\r\\n<p>Trong th\\u1eddi \\u0111\\u1ea1i s\\u1ed1 h\\u00f3a nh\\u01b0 hi\\u1ec7n nay, s\\u1ef1 hi\\u1ec7n di\\u1ec7n tr\\u1ef1c tuy\\u1ebfn l\\u00e0 y\\u1ebfu t\\u1ed1 then ch\\u1ed1t gi\\u00fap doanh nghi\\u1ec7p ti\\u1ebfp c\\u1eadn v\\u00e0 t\\u01b0\\u01a1ng t\\u00e1c v\\u1edbi kh\\u00e1ch h\\u00e0ng hi\\u1ec7u qu\\u1ea3 h\\u01a1n. M\\u1ed9t website chuy\\u00ean nghi\\u1ec7p, \\u0111\\u01b0\\u1ee3c v\\u1eadn h\\u00e0nh tr\\u00ean n\\u1ec1n t\\u1ea3ng hosting \\u1ed5n \\u0111\\u1ecbnh c\\u00f9ng t\\u00ean mi\\u1ec1n ri\\u00eang s\\u1ebd l\\u00e0 \\\"c\\u1eeda ng\\u00f5\\\" \\u0111\\u1ec3 doanh nghi\\u1ec7p kh\\u1eb3ng \\u0111\\u1ecbnh v\\u1ecb th\\u1ebf, t\\u0103ng t\\u00ednh c\\u1ea1nh tranh v\\u00e0 m\\u1edf r\\u1ed9ng th\\u1ecb tr\\u01b0\\u1eddng.<\\/p>\\r\\n\\r\\n<p>Ch\\u00ednh v\\u00ec v\\u1eady, nhi\\u1ec1u doanh nghi\\u1ec7p \\u0111ang t\\u00ecm ki\\u1ebfm c\\u00e1c d\\u1ecbch v\\u1ee5 hosting v\\u00e0 t\\u00ean mi\\u1ec1n ch\\u1ea5t l\\u01b0\\u1ee3ng cao. V\\u00e0 GBD - Global Brand Design, c\\u00f4ng ty h\\u00e0ng \\u0111\\u1ea7u v\\u1ec1 thi\\u1ebft k\\u1ebf v\\u00e0 ph\\u00e1t tri\\u1ec3n th\\u01b0\\u01a1ng hi\\u1ec7u t\\u1ea1i Vi\\u1ec7t Nam, s\\u1ebd l\\u00e0 l\\u1ef1a ch\\u1ecdn ho\\u00e0n h\\u1ea3o d\\u00e0nh cho doanh nghi\\u1ec7p c\\u1ee7a b\\u1ea1n.<\\/p>\\r\\n\\r\\n<h3><strong>Hosting \\u1ed4n \\u0110\\u1ecbnh, T\\u0103ng T\\u1ed1c Tr\\u1ea3i Nghi\\u1ec7m Tr\\u1ef1c Tuy\\u1ebfn<\\/strong><\\/h3>\\r\\n\\r\\n<p>D\\u1ecbch v\\u1ee5 hosting c\\u1ee7a GBD \\u0111\\u01b0\\u1ee3c v\\u1eadn h\\u00e0nh tr\\u00ean c\\u01a1 s\\u1edf h\\u1ea1 t\\u1ea7ng c\\u00f4ng ngh\\u1ec7 hi\\u1ec7n \\u0111\\u1ea1i, \\u0111\\u01b0\\u1ee3c b\\u1ea3o m\\u1eadt v\\u00e0 qu\\u1ea3n l\\u00fd ch\\u1eb7t ch\\u1ebd b\\u1edfi \\u0111\\u1ed9i ng\\u0169 chuy\\u00ean gia CNTT. V\\u1edbi t\\u1ed1c \\u0111\\u1ed9 t\\u1ea3i trang nhanh, kh\\u1ea3 n\\u0103ng ch\\u1ecbu t\\u1ea3i l\\u1edbn v\\u00e0 \\u0111\\u1ed9 an to\\u00e0n cao, website c\\u1ee7a doanh nghi\\u1ec7p s\\u1ebd lu\\u00f4n ho\\u1ea1t \\u0111\\u1ed9ng \\u1ed5n \\u0111\\u1ecbnh, mang l\\u1ea1i tr\\u1ea3i nghi\\u1ec7m tuy\\u1ec7t v\\u1eddi cho kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<h3><strong>T\\u00ean Mi\\u1ec1n Ri\\u00eang, T\\u0103ng T\\u00ednh Chuy\\u00ean Nghi\\u1ec7p v\\u00e0 Uy T\\u00edn<\\/strong><\\/h3>\\r\\n\\r\\n<p>B\\u00ean c\\u1ea1nh d\\u1ecbch v\\u1ee5 hosting, GBD c\\u0169ng cung c\\u1ea5p c\\u00e1c g\\u00f3i t\\u00ean mi\\u1ec1n ri\\u00eang v\\u1edbi nhi\\u1ec1u l\\u1ef1a ch\\u1ecdn v\\u1ec1 h\\u1eadu t\\u1ed1 (.com, .net, .vn, v.v.) ph\\u00f9 h\\u1ee3p v\\u1edbi nhu c\\u1ea7u c\\u1ee7a doanh nghi\\u1ec7p. S\\u1edf h\\u1eefu t\\u00ean mi\\u1ec1n ri\\u00eang kh\\u00f4ng ch\\u1ec9 gi\\u00fap website tr\\u1edf n\\u00ean chuy\\u00ean nghi\\u1ec7p h\\u01a1n m\\u00e0 c\\u00f2n t\\u0103ng \\u0111\\u1ed9 tin c\\u1eady, uy t\\u00edn trong m\\u1eaft kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<h3><strong>H\\u1ed7 Tr\\u1ee3 Chuy\\u00ean Nghi\\u1ec7p, Ti\\u1ebft Ki\\u1ec7m Th\\u1eddi Gian v\\u00e0 Chi Ph\\u00ed<\\/strong><\\/h3>\\r\\n\\r\\n<p>\\u0110\\u1ed9i ng\\u0169 k\\u1ef9 thu\\u1eadt vi\\u00ean c\\u1ee7a GBD lu\\u00f4n s\\u1eb5n s\\u00e0ng h\\u1ed7 tr\\u1ee3 kh\\u00e1ch h\\u00e0ng 24\\/7 trong qu\\u00e1 tr\\u00ecnh tri\\u1ec3n khai v\\u00e0 v\\u1eadn h\\u00e0nh d\\u1ecbch v\\u1ee5 hosting v\\u00e0 t\\u00ean mi\\u1ec1n. T\\u1eeb vi\\u1ec7c t\\u01b0 v\\u1ea5n l\\u1ef1a ch\\u1ecdn g\\u00f3i hosting\\/t\\u00ean mi\\u1ec1n ph\\u00f9 h\\u1ee3p, \\u0111\\u1ebfn h\\u01b0\\u1edbng d\\u1eabn c\\u00e0i \\u0111\\u1eb7t v\\u00e0 qu\\u1ea3n tr\\u1ecb website, kh\\u00e1ch h\\u00e0ng s\\u1ebd \\u0111\\u01b0\\u1ee3c h\\u1ed7 tr\\u1ee3 m\\u1ed9t c\\u00e1ch chuy\\u00ean nghi\\u1ec7p v\\u00e0 t\\u1eadn t\\u00ecnh.<\\/p>\\r\\n\\r\\n<p>Ngo\\u00e0i ra, d\\u1ecbch v\\u1ee5 hosting v\\u00e0 t\\u00ean mi\\u1ec1n t\\u1ea1i GBD c\\u00f2n \\u0111\\u01b0\\u1ee3c cung c\\u1ea5p v\\u1edbi m\\u1ee9c gi\\u00e1 c\\u1ea1nh tranh, gi\\u00fap doanh nghi\\u1ec7p ti\\u1ebft ki\\u1ec7m \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u chi ph\\u00ed so v\\u1edbi vi\\u1ec7c t\\u1ef1 thi\\u1ebft l\\u1eadp v\\u00e0 v\\u1eadn h\\u00e0nh h\\u1ea1 t\\u1ea7ng c\\u00f4ng ngh\\u1ec7.<\\/p>\\r\\n\\r\\n<p>N\\u1ebfu b\\u1ea1n \\u0111ang t\\u00ecm ki\\u1ebfm d\\u1ecbch v\\u1ee5 hosting v\\u00e0 t\\u00ean mi\\u1ec1n chuy\\u00ean nghi\\u1ec7p, h\\u00e3y li\\u00ean h\\u1ec7 ngay v\\u1edbi GBD. Ch\\u00fang t\\u00f4i s\\u1ebd t\\u01b0 v\\u1ea5n mi\\u1ec5n ph\\u00ed v\\u00e0 cung c\\u1ea5p b\\u00e1o gi\\u00e1 ph\\u00f9 h\\u1ee3p v\\u1edbi nhu c\\u1ea7u c\\u1ee7a doanh nghi\\u1ec7p b\\u1ea1n. H\\u00e3y \\u0111\\u1ec3 GBD - c\\u00f4ng ty thi\\u1ebft k\\u1ebf v\\u00e0 ph\\u00e1t tri\\u1ec3n th\\u01b0\\u01a1ng hi\\u1ec7u h\\u00e0ng \\u0111\\u1ea7u Vi\\u1ec7t Nam, gi\\u00fap b\\u1ea1n t\\u0103ng t\\u1ed1c ho\\u1ea1t \\u0111\\u1ed9ng tr\\u1ef1c tuy\\u1ebfn v\\u00e0 chinh ph\\u1ee5c kh\\u00e1ch h\\u00e0ng.<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/best-web-hosting-domain-hosting-services-for-your-websites-1280x720-1.jpg', NULL, 1, 0, 5, 'active', 1, 1, '2024-06-16 06:48:54', '2024-06-27 10:55:58', 'lorem-ipsum-dolor'),
(395, 84, NULL, 'product', 'LOGO BRANDING', '{\"price\":null,\"price_old\":null,\"brief\":{\"vi\":\"<p>D\\u1ecbch v\\u1ee5 thi\\u1ebft k\\u1ebf logo v\\u00e0 nh\\u1eadn di\\u1ec7n th\\u01b0\\u01a1ng hi\\u1ec7u chuy\\u00ean nghi\\u1ec7p, ch\\u1ea5t l\\u01b0\\u1ee3ng, \\u0111\\u1ed9c \\u0111\\u00e1o<\\/p>\"},\"content\":{\"vi\":\"<h1><strong>N\\u00e2ng T\\u1ea7m Th\\u01b0\\u01a1ng Hi\\u1ec7u V\\u1edbi D\\u1ecbch V\\u1ee5 Thi\\u1ebft K\\u1ebf Logo v\\u00e0 Nh\\u1eadn Di\\u1ec7n Th\\u01b0\\u01a1ng Hi\\u1ec7u c\\u1ee7a GBD<\\/strong><\\/h1>\\r\\n\\r\\n<p>Trong th\\u1eddi \\u0111\\u1ea1i k\\u1ef9 thu\\u1eadt s\\u1ed1 hi\\u1ec7n nay, h\\u00ecnh \\u1ea3nh v\\u00e0 nh\\u1eadn di\\u1ec7n th\\u01b0\\u01a1ng hi\\u1ec7u \\u0111\\u00f3ng vai tr\\u00f2 then ch\\u1ed1t trong vi\\u1ec7c thu h\\u00fat v\\u00e0 gi\\u1eef ch\\u00e2n kh\\u00e1ch h\\u00e0ng. M\\u1ed9t thi\\u1ebft k\\u1ebf logo \\u1ea5n t\\u01b0\\u1ee3ng c\\u00f9ng v\\u1edbi h\\u1ec7 th\\u1ed1ng nh\\u1eadn di\\u1ec7n th\\u01b0\\u01a1ng hi\\u1ec7u chuy\\u00ean nghi\\u1ec7p c\\u00f3 th\\u1ec3 tr\\u1edf th\\u00e0nh \\\"v\\u0169 kh\\u00ed\\\" s\\u1eafc b\\u00e9n gi\\u00fap doanh nghi\\u1ec7p kh\\u1eb3ng \\u0111\\u1ecbnh v\\u1ecb th\\u1ebf, t\\u0103ng t\\u00ednh c\\u1ea1nh tranh v\\u00e0 m\\u1edf r\\u1ed9ng th\\u1ecb ph\\u1ea7n.<\\/p>\\r\\n\\r\\n<p>Ch\\u00ednh v\\u00ec v\\u1eady, nhi\\u1ec1u doanh nghi\\u1ec7p \\u0111ang t\\u00ecm ki\\u1ebfm c\\u00e1c d\\u1ecbch v\\u1ee5 thi\\u1ebft k\\u1ebf logo v\\u00e0 x\\u00e2y d\\u1ef1ng nh\\u1eadn di\\u1ec7n th\\u01b0\\u01a1ng hi\\u1ec7u chuy\\u00ean nghi\\u1ec7p. V\\u00e0 GBD - Global Brand Design, c\\u00f4ng ty h\\u00e0ng \\u0111\\u1ea7u v\\u1ec1 thi\\u1ebft k\\u1ebf th\\u01b0\\u01a1ng hi\\u1ec7u t\\u1ea1i Vi\\u1ec7t Nam, s\\u1ebd l\\u00e0 l\\u1ef1a ch\\u1ecdn ho\\u00e0n h\\u1ea3o d\\u00e0nh cho doanh nghi\\u1ec7p c\\u1ee7a b\\u1ea1n.<\\/p>\\r\\n\\r\\n<h3><strong>Thi\\u1ebft K\\u1ebf Logo \\u1ea4n T\\u01b0\\u1ee3ng, T\\u1ea1o D\\u1ea5u \\u1ea4n Th\\u01b0\\u01a1ng Hi\\u1ec7u<\\/strong><\\/h3>\\r\\n\\r\\n<p>\\u0110\\u1ed9i ng\\u0169 s\\u00e1ng t\\u1ea1o t\\u1ea1i GBD lu\\u00f4n n\\u1eafm b\\u1eaft xu h\\u01b0\\u1edbng thi\\u1ebft k\\u1ebf logo m\\u1edbi nh\\u1ea5t, c\\u0169ng nh\\u01b0 hi\\u1ec3u r\\u00f5 v\\u1ec1 t\\u00e2m l\\u00fd, th\\u1ecb hi\\u1ebfu v\\u00e0 h\\u00e0nh vi c\\u1ee7a kh\\u00e1ch h\\u00e0ng m\\u1ee5c ti\\u00eau. H\\u1ecd s\\u1ebd thi\\u1ebft k\\u1ebf cho b\\u1ea1n m\\u1ed9t logo \\u1ea5n t\\u01b0\\u1ee3ng, mang \\u0111\\u1eadm d\\u1ea5u \\u1ea5n ri\\u00eang c\\u1ee7a th\\u01b0\\u01a1ng hi\\u1ec7u, \\u0111\\u1ed3ng th\\u1eddi g\\u00e2y \\u0111\\u01b0\\u1ee3c s\\u1ef1 ch\\u00fa \\u00fd v\\u00e0 thu h\\u00fat kh\\u00e1ch h\\u00e0ng ti\\u1ec1m n\\u0103ng.<\\/p>\\r\\n\\r\\n<h3><strong>X\\u00e2y D\\u1ef1ng H\\u1ec7 Th\\u1ed1ng Nh\\u1eadn Di\\u1ec7n Th\\u01b0\\u01a1ng Hi\\u1ec7u Chuy\\u00ean Nghi\\u1ec7p<\\/strong><\\/h3>\\r\\n\\r\\n<p>B\\u00ean c\\u1ea1nh thi\\u1ebft k\\u1ebf logo, GBD c\\u00f2n cung c\\u1ea5p d\\u1ecbch v\\u1ee5 x\\u00e2y d\\u1ef1ng h\\u1ec7 th\\u1ed1ng nh\\u1eadn di\\u1ec7n th\\u01b0\\u01a1ng hi\\u1ec7u chuy\\u00ean nghi\\u1ec7p. T\\u1eeb b\\u1ed9 nh\\u1eadn di\\u1ec7n v\\u1edbi c\\u00e1c y\\u1ebfu t\\u1ed1 nh\\u01b0 m\\u00e0u s\\u1eafc, typography, h\\u00ecnh \\u1ea3nh, cho \\u0111\\u1ebfn c\\u00e1c \\u1ee9ng d\\u1ee5ng nh\\u01b0 card visit, v\\u0103n ph\\u00f2ng ph\\u1ea9m, website, social media, v.v. T\\u1ea5t c\\u1ea3 \\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf m\\u1ed9t c\\u00e1ch th\\u1ed1ng nh\\u1ea5t, t\\u1ea1o n\\u00ean s\\u1ef1 \\u0111\\u1ed3ng b\\u1ed9, chuy\\u00ean nghi\\u1ec7p v\\u00e0 d\\u1ec5 nh\\u1eadn di\\u1ec7n.<\\/p>\\r\\n\\r\\n<h3><strong>T\\u0103ng Gi\\u00e1 Tr\\u1ecb Th\\u01b0\\u01a1ng Hi\\u1ec7u, N\\u00e2ng T\\u1ea7m V\\u1ecb Th\\u1ebf<\\/strong><\\/h3>\\r\\n\\r\\n<p>M\\u1ed9t thi\\u1ebft k\\u1ebf logo \\u1ea5n t\\u01b0\\u1ee3ng v\\u00e0 h\\u1ec7 th\\u1ed1ng nh\\u1eadn di\\u1ec7n th\\u01b0\\u01a1ng hi\\u1ec7u chuy\\u00ean nghi\\u1ec7p kh\\u00f4ng ch\\u1ec9 gi\\u00fap doanh nghi\\u1ec7p t\\u0103ng t\\u00ednh c\\u1ea1nh tranh tr\\u00ean th\\u1ecb tr\\u01b0\\u1eddng m\\u00e0 c\\u00f2n g\\u00f3p ph\\u1ea7n n\\u00e2ng cao gi\\u00e1 tr\\u1ecb th\\u01b0\\u01a1ng hi\\u1ec7u, kh\\u1eb3ng \\u0111\\u1ecbnh v\\u1ecb th\\u1ebf v\\u00e0 uy t\\u00edn c\\u1ee7a doanh nghi\\u1ec7p trong m\\u1eaft kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<p>N\\u1ebfu b\\u1ea1n \\u0111ang t\\u00ecm ki\\u1ebfm d\\u1ecbch v\\u1ee5 thi\\u1ebft k\\u1ebf logo v\\u00e0 x\\u00e2y d\\u1ef1ng nh\\u1eadn di\\u1ec7n th\\u01b0\\u01a1ng hi\\u1ec7u chuy\\u00ean nghi\\u1ec7p, h\\u00e3y li\\u00ean h\\u1ec7 ngay v\\u1edbi GBD. Ch\\u00fang t\\u00f4i s\\u1ebd t\\u01b0 v\\u1ea5n mi\\u1ec5n ph\\u00ed v\\u00e0 cung c\\u1ea5p b\\u00e1o gi\\u00e1 ph\\u00f9 h\\u1ee3p v\\u1edbi nhu c\\u1ea7u c\\u1ee7a doanh nghi\\u1ec7p b\\u1ea1n. H\\u00e3y \\u0111\\u1ec3 GBD - c\\u00f4ng ty thi\\u1ebft k\\u1ebf th\\u01b0\\u01a1ng hi\\u1ec7u h\\u00e0ng \\u0111\\u1ea7u Vi\\u1ec7t Nam, gi\\u00fap b\\u1ea1n n\\u00e2ng t\\u1ea7m th\\u01b0\\u01a1ng hi\\u1ec7u v\\u00e0 chinh ph\\u1ee5c kh\\u00e1ch h\\u00e0ng.<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/poup-slide.png', NULL, 1, 0, 2, 'active', 1, 5, '2024-06-16 06:48:54', '2024-06-21 13:23:04', 'lorem-ipsum-dolor'),
(396, 84, NULL, 'product', 'WEBSITE DESIGN', '{\"price\":null,\"price_old\":null,\"brief\":{\"vi\":\"<p>D\\u1ecbch v\\u1ee5 thi\\u1ebft k\\u1ebf website uy t\\u00edn, t\\u1eadn t\\u00e2m, chuy\\u00ean nghi\\u1ec7p v\\u00e0 hi\\u1ec7u qu\\u1ea3&nbsp;<\\/p>\"},\"content\":{\"vi\":\"<p><strong>Thi\\u1ebft k\\u1ebf Website Chu\\u1ea9n SEO v\\u1edbi GBD - Gi\\u1ea3i Ph\\u00e1p S\\u1ed1 1 cho Doanh Nghi\\u1ec7p<\\/strong><\\/p>\\r\\n\\r\\n<p>Trong k\\u1ef7 nguy\\u00ean s\\u1ed1 hi\\u1ec7n \\u0111\\u1ea1i, s\\u1ef1 hi\\u1ec7n di\\u1ec7n tr\\u1ef1c tuy\\u1ebfn c\\u1ee7a doanh nghi\\u1ec7p l\\u00e0 v\\u00f4 c\\u00f9ng quan tr\\u1ecdng. Vi\\u1ec7c s\\u1edf h\\u1eefu m\\u1ed9t website chuy\\u00ean nghi\\u1ec7p, hi\\u1ec7n \\u0111\\u1ea1i v\\u00e0 \\u0111\\u01b0\\u1ee3c t\\u1ed1i \\u01b0u h\\u00f3a SEO c\\u00f3 th\\u1ec3 l\\u00e0 ch\\u00eca kh\\u00f3a \\u0111\\u1ec3 th\\u00e0nh c\\u00f4ng trong cu\\u1ed9c c\\u1ea1nh tranh kh\\u1ed1c li\\u1ec7t tr\\u00ean m\\u1ea1ng internet. Ch\\u00ednh v\\u00ec v\\u1eady, nhi\\u1ec1u doanh nghi\\u1ec7p \\u0111ang t\\u00ecm ki\\u1ebfm c\\u00e1c d\\u1ecbch v\\u1ee5 thi\\u1ebft k\\u1ebf website uy t\\u00edn v\\u00e0 ch\\u1ea5t l\\u01b0\\u1ee3ng.<\\/p>\\r\\n\\r\\n<p>N\\u1ebfu b\\u1ea1n \\u0111ang t\\u00ecm ki\\u1ebfm gi\\u1ea3i ph\\u00e1p thi\\u1ebft k\\u1ebf website chuy\\u00ean nghi\\u1ec7p, GBD - c\\u00f4ng ty thi\\u1ebft k\\u1ebf web h\\u00e0ng \\u0111\\u1ea7u Vi\\u1ec7t Nam, s\\u1ebd l\\u00e0 l\\u1ef1a ch\\u1ecdn tuy\\u1ec7t v\\u1eddi d\\u00e0nh cho doanh nghi\\u1ec7p c\\u1ee7a b\\u1ea1n.<\\/p>\\r\\n\\r\\n<p><strong>Thi\\u1ebft K\\u1ebf Website D\\u1ef1a Tr\\u00ean Xu H\\u01b0\\u1edbng v\\u00e0 Nhu C\\u1ea7u Kh\\u00e1ch H\\u00e0ng<\\/strong><\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ed9i ng\\u0169 thi\\u1ebft k\\u1ebf s\\u00e1ng t\\u1ea1o c\\u1ee7a GBD lu\\u00f4n n\\u1eafm b\\u1eaft c\\u00e1c xu h\\u01b0\\u1edbng thi\\u1ebft k\\u1ebf website m\\u1edbi nh\\u1ea5t, c\\u0169ng nh\\u01b0 hi\\u1ec3u r\\u00f5 nhu c\\u1ea7u v\\u00e0 h\\u00e0nh vi c\\u1ee7a kh\\u00e1ch h\\u00e0ng m\\u1ee5c ti\\u00eau. \\u0110i\\u1ec1u n\\u00e0y gi\\u00fap h\\u1ecd x\\u00e2y d\\u1ef1ng nh\\u1eefng website kh\\u00f4ng ch\\u1ec9 \\u0111\\u1eb9p m\\u1eaft, d\\u1ec5 s\\u1eed d\\u1ee5ng m\\u00e0 c\\u00f2n ph\\u00f9 h\\u1ee3p v\\u1edbi \\u0111\\u1ecbnh v\\u1ecb th\\u01b0\\u01a1ng hi\\u1ec7u v\\u00e0 m\\u1ee5c ti\\u00eau kinh doanh c\\u1ee7a doanh nghi\\u1ec7p.<\\/p>\\r\\n\\r\\n<p><strong>T\\u1ed1i \\u01afu H\\u00f3a Hi\\u1ec7u Su\\u1ea5t v\\u00e0 Tr\\u1ea3i Nghi\\u1ec7m Ng\\u01b0\\u1eddi D\\u00f9ng<\\/strong><\\/p>\\r\\n\\r\\n<p>Ngo\\u00e0i thi\\u1ebft k\\u1ebf, GBD c\\u0169ng ch\\u00fa tr\\u1ecdng v\\u00e0o vi\\u1ec7c t\\u1ed1i \\u01b0u h\\u00f3a hi\\u1ec7u su\\u1ea5t v\\u00e0 tr\\u1ea3i nghi\\u1ec7m ng\\u01b0\\u1eddi d\\u00f9ng tr\\u00ean website. \\u0110i\\u1ec1u n\\u00e0y kh\\u00f4ng ch\\u1ec9 gi\\u00fap ng\\u01b0\\u1eddi d\\u00f9ng d\\u1ec5 d\\u00e0ng t\\u00ecm ki\\u1ebfm, truy c\\u1eadp v\\u00e0 t\\u01b0\\u01a1ng t\\u00e1c v\\u1edbi website m\\u00e0 c\\u00f2n g\\u00f3p ph\\u1ea7n t\\u0103ng th\\u1eddi gian l\\u01b0u l\\u1ea1i v\\u00e0 t\\u1ef7 l\\u1ec7 chuy\\u1ec3n \\u0111\\u1ed5i.<\\/p>\\r\\n\\r\\n<p><strong>\\u0110\\u1ea1t Chu\\u1ea9n SEO, T\\u0103ng Kh\\u1ea3 N\\u0103ng Hi\\u1ec3n Th\\u1ecb Tr\\u00ean SERP<\\/strong><\\/p>\\r\\n\\r\\n<p>B\\u00ean c\\u1ea1nh thi\\u1ebft k\\u1ebf, GBD c\\u00f2n ch\\u00fa tr\\u1ecdng \\u0111\\u1ebfn vi\\u1ec7c t\\u1ed1i \\u01b0u h\\u00f3a website theo chu\\u1ea9n SEO. C\\u00e1c k\\u1ef9 thu\\u1eadt SEO nh\\u01b0 t\\u1ed1i \\u01b0u n\\u1ed9i dung, c\\u1ea5u tr\\u00fac website, t\\u1ed1c \\u0111\\u1ed9 t\\u1ea3i trang, v.v. \\u0111\\u01b0\\u1ee3c \\u00e1p d\\u1ee5ng nh\\u1eb1m gi\\u00fap website c\\u1ee7a b\\u1ea1n n\\u00e2ng cao th\\u1ee9 h\\u1ea1ng v\\u00e0 t\\u0103ng kh\\u1ea3 n\\u0103ng hi\\u1ec3n th\\u1ecb tr\\u00ean trang k\\u1ebft qu\\u1ea3 t\\u00ecm ki\\u1ebfm (SERP).<\\/p>\\r\\n\\r\\n<p><strong>Mang L\\u1ea1i Gi\\u00e1 Tr\\u1ecb Th\\u01b0\\u01a1ng Hi\\u1ec7u v\\u00e0 H\\u00ecnh \\u1ea2nh Chuy\\u00ean Nghi\\u1ec7p<\\/strong><\\/p>\\r\\n\\r\\n<p>M\\u1ed9t website chuy\\u00ean nghi\\u1ec7p, hi\\u1ec7n \\u0111\\u1ea1i v\\u00e0 \\u0111\\u01b0\\u1ee3c t\\u1ed1i \\u01b0u h\\u00f3a SEO kh\\u00f4ng ch\\u1ec9 gi\\u00fap thu h\\u00fat v\\u00e0 gi\\u1eef ch\\u00e2n kh\\u00e1ch h\\u00e0ng m\\u00e0 c\\u00f2n g\\u00f3p ph\\u1ea7n t\\u0103ng c\\u01b0\\u1eddng gi\\u00e1 tr\\u1ecb th\\u01b0\\u01a1ng hi\\u1ec7u v\\u00e0 h\\u00ecnh \\u1ea3nh chuy\\u00ean nghi\\u1ec7p c\\u1ee7a doanh nghi\\u1ec7p.<\\/p>\\r\\n\\r\\n<p>N\\u1ebfu b\\u1ea1n \\u0111ang t\\u00ecm ki\\u1ebfm d\\u1ecbch v\\u1ee5 thi\\u1ebft k\\u1ebf website uy t\\u00edn v\\u00e0 ch\\u1ea5t l\\u01b0\\u1ee3ng, h\\u00e3y li\\u00ean h\\u1ec7 ngay v\\u1edbi GBD. Ch\\u00fang t\\u00f4i s\\u1ebd t\\u01b0 v\\u1ea5n mi\\u1ec5n ph\\u00ed v\\u00e0 cung c\\u1ea5p b\\u00e1o gi\\u00e1 thi\\u1ebft k\\u1ebf website ph\\u00f9 h\\u1ee3p v\\u1edbi nhu c\\u1ea7u kinh doanh c\\u1ee7a b\\u1ea1n. H\\u00e3y \\u0111\\u1ec3 GBD - c\\u00f4ng ty thi\\u1ebft k\\u1ebf web h\\u00e0ng \\u0111\\u1ea7u Vi\\u1ec7t Nam, gi\\u00fap doanh nghi\\u1ec7p c\\u1ee7a b\\u1ea1n t\\u0103ng t\\u1ed1c tr\\u00ean h\\u00e0nh tr\\u00ecnh s\\u1ed1 h\\u00f3a.<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/website_08-39-54_1200x801.jpg', NULL, 1, 34, 1, 'active', 1, 1, '2024-06-16 06:48:54', '2024-07-07 18:25:19', 'lorem-ipsum-dolor'),
(397, 90, NULL, 'resource', 'CHY', '{\"price\":null,\"price_old\":null,\"link_demo\":\"http:\\/\\/furniture.efb.vn\\/\",\"brief\":{\"vi\":\"BRANDING LOGO\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/banner/category6.png', NULL, 1, 0, 4, 'active', 1, 1, '2024-06-16 07:09:25', '2024-07-01 14:03:05', 'chy'),
(398, 90, NULL, 'resource', 'LOOKBOOK', '{\"price\":null,\"price_old\":null,\"link_demo\":\"http:\\/\\/furniture.efb.vn\\/\",\"brief\":{\"vi\":\"LOOKBOOK TH\\u1edcI TRANG\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/Bài viết/Untitled-3-01.jpg', '/data/cms-image/Bài viết/Untitled-3-02.jpg', 1, 0, NULL, 'active', 1, 1, '2024-06-16 07:09:25', '2024-07-01 14:02:54', 'lookbook'),
(399, 90, NULL, 'resource', 'HARUMI', '{\"price\":null,\"price_old\":null,\"link_demo\":\"http:\\/\\/furniture.efb.vn\\/\",\"brief\":{\"vi\":\"BRANDING LOGO\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/Bài viết/HARUMY-02.jpg', '/data/cms-image/Bài viết/HARUMY-04.jpg', 1, 7, NULL, 'active', 1, 1, '2024-06-16 07:09:25', '2024-07-08 00:31:31', 'harumi'),
(400, 90, NULL, 'resource', 'LA Food & Drink', '{\"price\":null,\"price_old\":null,\"link_demo\":\"http:\\/\\/furniture.efb.vn\\/\",\"brief\":{\"vi\":\"BRANDING LOGO\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"gallery_image\":{\"1719331898617\":\"\\/data\\/cms-image\\/B\\u00e0i vi\\u1ebft\\/355444494_191859847180067_5703348876978035535_n.jpg\",\"1719331898895\":\"\\/data\\/cms-image\\/B\\u00e0i vi\\u1ebft\\/355450005_191859670513418_3218119173922916164_n.jpg\",\"1719331899117\":\"\\/data\\/cms-image\\/B\\u00e0i vi\\u1ebft\\/z5498803599034_e1fd85f4eebd4e7b66f158fea35be8a2.jpg\"}}', '/data/cms-image/Bài viết/355450005_191859670513418_3218119173922916164_n.jpg', '/data/cms-image/Bài viết/355467128_191859723846746_3950273897575452102_n.jpg', 1, 7, NULL, 'active', 1, 1, '2024-06-16 07:09:25', '2024-07-07 17:07:32', 'la-food-drink'),
(401, 90, NULL, 'resource', 'Golf Fastee Club', '{\"price\":null,\"price_old\":null,\"link_demo\":\"http:\\/\\/furniture.efb.vn\\/\",\"brief\":{\"vi\":\"PROFILE\"},\"content\":{\"vi\":\"<p>Kh\\u00e1ch h\\u00e0ng: Golf Fastee Club<\\/p>\\r\\n\\r\\n<p>Thi\\u1ebft k\\u1ebf: Profile<\\/p>\\r\\n\\r\\n<p>N\\u0103m: 2024<\\/p>\\r\\n\\r\\n<p>Design by #GBD GLOBAL BRAND DESIGN<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>M\\u00e0u xanh m\\u00e1t m\\u1eaft c\\u1ee7a s\\u00e2n c\\u1ecf l\\u00e0 l\\u1ef1a ch\\u1ecdn ho\\u00e0n h\\u1ea3o \\u0111\\u1ec3 t\\u1ea1o n\\u00ean profile cho Ph\\u00f2ng t\\u1eadp Golf Fastee Club. S\\u1ef1 k\\u1ebft h\\u1ee3p gi\\u1eefa h\\u00ecnh \\u1ea3nh v\\u00e0 b\\u1ed1 c\\u1ee5c h\\u1ee3p l\\u00fd t\\u1ea1o n\\u00ean t\\u1ed5ng th\\u1ec3 h\\u00e0i ho\\u00e0, tr\\u1ef1c quan, d\\u1ec5 d\\u00e0ng ghi d\\u1ea5u trong l\\u00f2ng kh\\u00e1ch h\\u00e0ng m\\u1ed7i khi nh\\u1edb v\\u1ec1 th\\u01b0\\u01a1ng hi\\u1ec7u.<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"gallery_image\":{\"1719331813997\":\"\\/data\\/cms-image\\/B\\u00e0i vi\\u1ebft\\/341527033_911073413444510_8482655964650346942_n.jpg\",\"1719331814337\":\"\\/data\\/cms-image\\/B\\u00e0i vi\\u1ebft\\/341540482_1338840423330423_3229055143872403379_n.jpg\",\"1719331814598\":\"\\/data\\/cms-image\\/B\\u00e0i vi\\u1ebft\\/341891816_106888785719696_5496069086420320950_n.jpg\",\"1719331814813\":\"\\/data\\/cms-image\\/B\\u00e0i vi\\u1ebft\\/341856929_237987905446563_5847714884404541486_n.jpg\",\"1719331815096\":\"\\/data\\/cms-image\\/B\\u00e0i vi\\u1ebft\\/341622210_612325164081093_1867437879987229817_n.jpg\"}}', '/data/cms-image/Bài viết/341891816_106888785719696_5496069086420320950_n.jpg', '/data/cms-image/Bài viết/341537409_2124137857976718_6759020919413794000_n.jpg', 1, 6, NULL, 'active', 1, 1, '2024-06-16 07:09:25', '2024-07-08 01:13:41', 'golf-fastee-club'),
(402, 90, NULL, 'resource', 'VIETERA ACADEMY', '{\"price\":null,\"price_old\":null,\"link_demo\":\"http:\\/\\/furniture.efb.vn\\/\",\"brief\":{\"vi\":\"BRANDING LOGO\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"gallery_image\":{\"1719587621400\":\"\\/data\\/cms-image\\/B\\u00e0i vi\\u1ebft\\/65f3953e7a74d82a8165.jpg\",\"1719587639553\":\"\\/data\\/cms-image\\/B\\u00e0i vi\\u1ebft\\/17316c428c082e567719.jpg\",\"1719587640001\":\"\\/data\\/cms-image\\/B\\u00e0i vi\\u1ebft\\/06acc13e2f748d2ad465.jpg\"}}', '/data/cms-image/Bài viết/17316c428c082e567719.jpg', '/data/cms-image/Bài viết/d5d56851871b25457c0a.jpg', 1, 10, NULL, 'active', 1, 1, '2024-06-16 07:09:25', '2024-07-07 18:32:06', 'vietera-academy'),
(403, 90, NULL, 'resource', 'Cô Văn', '{\"price\":null,\"price_old\":null,\"link_demo\":\"http:\\/\\/furniture.efb.vn\\/\",\"brief\":{\"vi\":\"BRANDING LOGO\"},\"content\":{\"vi\":\"<p>Kh\\u00e1ch h\\u00e0ng: C\\u00f4 V\\u0103n<\\/p>\\r\\n\\r\\n<p>Ng\\u00e0nh h\\u00e0ng: D\\u1ecbch v\\u1ee5 \\u0103n u\\u1ed1ng<\\/p>\\r\\n\\r\\n<p>Thi\\u1ebft k\\u1ebf: Logo &amp; Brand Identity<\\/p>\\r\\n\\r\\n<p>N\\u0103m: 2024<\\/p>\\r\\n\\r\\n<p>Design by #GBD GLOBAL BRAND DESIGN<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Thi\\u1ebft k\\u1ebf logo t\\u00ean ri\\u00eang kh\\u00f4ng bao gi\\u1edd l\\u00e0 d\\u1ec5 d\\u00e0ng, b\\u1edfi v\\u00ec \\u0111\\u00f3 l\\u00e0 m\\u1ed9t qu\\u00e1 tr\\u00ecnh s\\u00e1ng t\\u1ea1o ph\\u1ee9c t\\u1ea1p c\\u1ea7n s\\u1ef1 k\\u1ebft h\\u1ee3p ho\\u00e0n h\\u1ea3o gi\\u1eefa h\\u00ecnh \\u1ea3nh v\\u00e0 v\\u0103n b\\u1ea3n. V\\u1edbi y\\u00eau c\\u1ea7u v\\u1ec1 m\\u1ed9t logo \\\"\\u0111\\u1eb9p, \\u0111\\u1ed9c \\u0111\\u00e1o nh\\u01b0ng c\\u0169ng c\\u1ea7n g\\u1ea7n g\\u0169i, d\\u1ec5 nh\\u1edb\\\", qua qu\\u00e1 tr\\u00ecnh nghi\\u00ean c\\u1ee9u k\\u0129 l\\u01b0\\u1ee1ng v\\u1ec1 th\\u01b0\\u01a1ng hi\\u1ec7u, logo \\\"C\\u00f4 V\\u0103n\\\" \\u0111\\u00e3 ra \\u0111\\u1eddi.<\\/p>\\r\\n\\r\\n<p>\\\"C\\u00f4 V\\u0103n\\\" l\\u00e0 \\u0111\\u01a1n v\\u1ecb chuy\\u00ean cung c\\u1ea5p d\\u1ecbch v\\u1ee5 n\\u1ea5u c\\u1ed7 uy t\\u00edn, v\\u1edbi \\u0111\\u1ed9i ng\\u0169 \\u0111\\u1ea7u b\\u1ebfp chuy\\u00ean nghi\\u1ec7p v\\u00e0 nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m trong l\\u0129nh v\\u1ef1c n\\u00e0y, mang \\u0111\\u1ebfn tr\\u1ea3i nghi\\u1ec7m \\u1ea9m th\\u1ef1c \\u0111\\u1ed9c \\u0111\\u00e1o v\\u00e0 tinh t\\u1ebf.<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"gallery_image\":{\"1719331627396\":\"\\/data\\/cms-image\\/B\\u00e0i vi\\u1ebft\\/LOGO CO VA\\u0306N-02.jpg\",\"1719331627847\":\"\\/data\\/cms-image\\/B\\u00e0i vi\\u1ebft\\/LOGO CO VA\\u0306N-03.jpg\",\"1719331628240\":\"\\/data\\/cms-image\\/B\\u00e0i vi\\u1ebft\\/LOGO CO VA\\u0306N-04.jpg\"}}', '/data/cms-image/Bài viết/LOGO CO VĂN-03.jpg', '/data/cms-image/Bài viết/LOGO CO VĂN-01.jpg', 1, 8, NULL, 'active', 1, 1, '2024-06-16 07:09:25', '2024-07-07 23:01:04', 'co-van'),
(404, 90, NULL, 'resource', 'Đại Dương Land', '{\"price\":null,\"price_old\":null,\"link_demo\":\"http:\\/\\/furniture.efb.vn\\/\",\"brief\":{\"vi\":\"BRANDING LOGO\"},\"content\":{\"vi\":\"<p>Kh\\u00e1ch h\\u00e0ng: \\u0110\\u1ea1i D\\u01b0\\u01a1ng Land<\\/p>\\r\\n\\r\\n<p>Ng\\u00e0nh h\\u00e0ng: B\\u0110S<\\/p>\\r\\n\\r\\n<p>Thi\\u1ebft k\\u1ebf: Logo &amp; Brand Identity<\\/p>\\r\\n\\r\\n<p>N\\u0103m: 2024<\\/p>\\r\\n\\r\\n<p>Design by #GBD GLOBAL BRAND DESIGN<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>\\\"Em \\u01a1i, anh mu\\u1ed1n m\\u00e0u ph\\u1ea3i n\\u1ed5i b\\u1eadt, nh\\u01b0ng c\\u0169ng ph\\u1ea3i th\\u1eadt sang!\\\"<\\/p>\\r\\n\\r\\n<p>S\\u1eed d\\u1ee5ng m\\u00e0u \\u0111\\u1ecf l\\u00e0m m\\u00e0u ch\\u1ee7 \\u0111\\u1ea1o, GBD team cho ra \\u0111\\u1eddi b\\u1ed9 nh\\u1eadn di\\u1ec7n \\\"\\u0110\\u1ea1i D\\u01b0\\u01a1ng\\\". Kh\\u00f4ng ch\\u1ec9 n\\u1ed5i b\\u1eadt, ph\\u1ea7n n\\u1ec1n m\\u00e0u \\u0111\\u1ecf c\\u00f2n gi\\u00fap t\\u00f4n l\\u00ean logo th\\u01b0\\u01a1ng hi\\u1ec7u v\\u00f4 c\\u00f9ng sang tr\\u1ecdng v\\u00e0 tinh t\\u1ebf, gi\\u1ea3i quy\\u1ebft b\\u00e0i to\\u00e1n c\\u1ee7a kh\\u00e1ch h\\u00e0ng m\\u1ed9t c\\u00e1ch \\u0111\\u1ea7y ngh\\u1ec7 thu\\u1eadt!<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"gallery_image\":{\"1719331540533\":\"\\/data\\/cms-image\\/B\\u00e0i vi\\u1ebft\\/DONG DUONg-01.jpg\",\"1719331560039\":\"\\/data\\/cms-image\\/B\\u00e0i vi\\u1ebft\\/DONG DUONg-02.jpg\",\"1719331561505\":\"\\/data\\/cms-image\\/B\\u00e0i vi\\u1ebft\\/DONG DUONg-04.jpg\"}}', '/data/cms-image/Bài viết/DONG DUONg-02.jpg', '/data/cms-image/Bài viết/DONG DUONg-03.jpg', 1, 25, NULL, 'active', 1, 1, '2024-06-16 07:09:25', '2024-07-07 18:33:46', 'dai-duong-land'),
(405, 91, NULL, 'post', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit', '{\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/news/hotnews-1.png', NULL, 1, 0, 7, 'active', 1, 5, '2024-06-16 07:28:49', '2024-06-21 13:48:21', 'lorem-ipsum-dolor-sit-amet-consectetuer-adipiscing-elit');
INSERT INTO `tb_cms_posts` (`id`, `taxonomy_id`, `resources_id`, `is_type`, `title`, `json_params`, `image`, `image_thumb`, `is_featured`, `count_visited`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `alias`) VALUES
(406, 91, NULL, 'post', 'Top 10 công cụ thiết kế đồ họa hỗ trợ bằng AI hàng đầu hiện nay', '{\"brief\":{\"vi\":\"L\\u0129nh v\\u1ef1c thi\\u1ebft k\\u1ebf k\\u1ef9 thu\\u1eadt s\\u1ed1 \\u0111ang ch\\u1ee9ng ki\\u1ebfn m\\u1ed9t s\\u1ef1 bi\\u1ebfn \\u0111\\u1ed9ng l\\u1edbn do s\\u1ee9c \\u1ea3nh h\\u01b0\\u1edfng ch\\u01b0a t\\u1eebng c\\u00f3 c\\u1ee7a\\u00a0tr\\u00ed tu\\u1ec7 nh\\u00e2n t\\u1ea1o\\u00a0(AI). C\\u00e1c c\\u00f4ng c\\u1ee5 thi\\u1ebft k\\u1ebf \\u0111\\u1ed3 h\\u1ecda AI \\u0111ang l\\u00e0m thay \\u0111\\u1ed5i c\\u00e1ch c\\u00e1c ngh\\u1ec7 s\\u0129 v\\u00e0 nh\\u00e0 thi\\u1ebft k\\u1ebf th\\u1ec3 hi\\u1ec7n s\\u1ef1 s\\u00e1ng t\\u1ea1o c\\u1ee7a h\\u1ecd, cho ph\\u00e9p h\\u1ecd t\\u1ea1o ra c\\u00e1c thi\\u1ebft k\\u1ebf \\u0111\\u1ed9c \\u0111\\u00e1o h\\u01a1n trong th\\u1eddi gian ng\\u1eafn h\\u01a1n \\u0111\\u00e1ng k\\u1ec3. H\\u00e3y c\\u00f9ng kh\\u00e1m ph\\u00e1 10 c\\u00f4ng c\\u1ee5 thi\\u1ebft k\\u1ebf \\u0111\\u1ed3 h\\u1ecda AI h\\u00e0ng \\u0111\\u1ea7u \\u0111ang th\\u00fac \\u0111\\u1ea9y ranh gi\\u1edbi ti\\u1ec1m n\\u0103ng s\\u00e1ng t\\u1ea1o c\\u1ee7a b\\u1ea1n.\"},\"content\":{\"vi\":\"<header>\\r\\n<h1>Top 10 c\\u00f4ng c\\u1ee5 thi\\u1ebft k\\u1ebf \\u0111\\u1ed3 h\\u1ecda h\\u1ed7 tr\\u1ee3 b\\u1eb1ng AI h\\u00e0ng \\u0111\\u1ea7u hi\\u1ec7n nay<\\/h1>\\r\\n<\\/header>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>L\\u0129nh v\\u1ef1c thi\\u1ebft k\\u1ebf k\\u1ef9 thu\\u1eadt s\\u1ed1 \\u0111ang ch\\u1ee9ng ki\\u1ebfn m\\u1ed9t s\\u1ef1 bi\\u1ebfn \\u0111\\u1ed9ng l\\u1edbn do s\\u1ee9c \\u1ea3nh h\\u01b0\\u1edfng ch\\u01b0a t\\u1eebng c\\u00f3 c\\u1ee7a tr\\u00ed tu\\u1ec7 nh\\u00e2n t\\u1ea1o (AI). C\\u00e1c c\\u00f4ng c\\u1ee5 thi\\u1ebft k\\u1ebf \\u0111\\u1ed3 h\\u1ecda AI \\u0111ang l\\u00e0m thay \\u0111\\u1ed5i c\\u00e1ch c\\u00e1c ngh\\u1ec7 s\\u0129 v\\u00e0 nh\\u00e0 thi\\u1ebft k\\u1ebf th\\u1ec3 hi\\u1ec7n s\\u1ef1 s\\u00e1ng t\\u1ea1o c\\u1ee7a h\\u1ecd, cho ph\\u00e9p h\\u1ecd t\\u1ea1o ra c\\u00e1c thi\\u1ebft k\\u1ebf \\u0111\\u1ed9c \\u0111\\u00e1o h\\u01a1n trong th\\u1eddi gian ng\\u1eafn h\\u01a1n \\u0111\\u00e1ng k\\u1ec3. H\\u00e3y c\\u00f9ng kh\\u00e1m ph\\u00e1 10 c\\u00f4ng c\\u1ee5 thi\\u1ebft k\\u1ebf \\u0111\\u1ed3 h\\u1ecda AI h\\u00e0ng \\u0111\\u1ea7u \\u0111ang th\\u00fac \\u0111\\u1ea9y ranh gi\\u1edbi ti\\u1ec1m n\\u0103ng s\\u00e1ng t\\u1ea1o c\\u1ee7a b\\u1ea1n.<\\/p>\\r\\n\\r\\n<h2>1. Uizard<\\/h2>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/B\\u00e0i vi\\u1ebft\\/uizard.png\\\" style=\\\"width: 800px; height: 500px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Uizard, g\\u00f3i g\\u1ecdn ti\\u1ec1m n\\u0103ng c\\u1ee7a AI trong vi\\u1ec7c h\\u1ee3p l\\u00fd h\\u00f3a quy tr\\u00ecnh thi\\u1ebft k\\u1ebf, l\\u00e0 m\\u1ed9t c\\u00f4ng c\\u1ee5 \\u0111\\u00e1ng ch\\u00fa \\u00fd. N\\u00f3 s\\u1ed1 h\\u00f3a c\\u00e1c \\u00fd t\\u01b0\\u1edfng v\\u1ebd tay th\\u00e0nh c\\u00e1c file thi\\u1ebft k\\u1ebf k\\u1ef9 thu\\u1eadt s\\u1ed1 c\\u00f3 th\\u1ec3 s\\u1eed d\\u1ee5ng \\u0111\\u01b0\\u1ee3c, ho\\u1ea1t \\u0111\\u1ed9ng nh\\u01b0 m\\u1ed9t l\\u1ed9 tr\\u00ecnh hi\\u1ec7u qu\\u1ea3 cho c\\u00e1c nh\\u00e0 thi\\u1ebft k\\u1ebf v\\u00e0 nh\\u00e0 ph\\u00e1t tri\\u1ec3n \\u1ee9ng d\\u1ee5ng.<\\/p>\\r\\n\\r\\n<p>Uizard kh\\u00f4ng ch\\u1ec9 t\\u0103ng t\\u1ed1c qu\\u00e1 tr\\u00ecnh t\\u1ea1o nguy\\u00ean m\\u1eabu (prototype) m\\u00e0 c\\u00f2n gi\\u1eef l\\u1ea1i d\\u1ea5u \\u1ea5n c\\u00e1 nh\\u00e2n c\\u1ee7a c\\u00e1c thi\\u1ebft k\\u1ebf v\\u1ebd tay. B\\u1eb1ng c\\u00e1ch s\\u1ed1 h\\u00f3a c\\u00e1c b\\u1ea3n ph\\u00e1c th\\u1ea3o, n\\u00f3 cho ph\\u00e9p c\\u00e1c kh\\u00e1i ni\\u1ec7m s\\u00e1ng t\\u1ea1o chuy\\u1ec3n \\u0111\\u1ed5i nhanh ch\\u00f3ng t\\u1eeb s\\u1ed5 ph\\u00e1c th\\u1ea3o sang m\\u00e0n h\\u00ecnh k\\u1ef9 thu\\u1eadt s\\u1ed1, ch\\u1ee9ng t\\u1ecf \\u0111\\u00e2y l\\u00e0 m\\u1ed9t ngu\\u1ed3n t\\u00e0i nguy\\u00ean m\\u1ea1nh m\\u1ebd.<\\/p>\\r\\n\\r\\n<p>C\\u00e1c t\\u00ednh n\\u0103ng n\\u1ed5i b\\u1eadt c\\u1ee7a Uizard:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Chuy\\u1ec3n \\u0111\\u1ed5i b\\u1ea3n ph\\u00e1c th\\u1ea3o th\\u00e0nh thi\\u1ebft k\\u1ebf giao di\\u1ec7n ng\\u01b0\\u1eddi d\\u00f9ng k\\u1ef9 thu\\u1eadt s\\u1ed1.<\\/li>\\r\\n\\t<li>T\\u0103ng t\\u1ed1c t\\u1ea1o m\\u1eabu v\\u00e0 l\\u1eb7p l\\u1ea1i.<\\/li>\\r\\n\\t<li>Cung c\\u1ea5p c\\u00e1c thi\\u1ebft k\\u1ebf c\\u00f3 th\\u1ec3 xu\\u1ea5t \\u1edf nhi\\u1ec1u \\u0111\\u1ecbnh d\\u1ea1ng.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h2>2. Designs.ai&nbsp;<\\/h2>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/B\\u00e0i vi\\u1ebft\\/designai.jpg\\\" style=\\\"width: 800px; height: 500px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Designs.ai l\\u00e0 m\\u1ed9t b\\u1ed9 c\\u00f4ng c\\u1ee5 thi\\u1ebft k\\u1ebf ho\\u00e0n ch\\u1ec9nh \\u0111\\u01b0\\u1ee3c h\\u1ed7 tr\\u1ee3 b\\u1edfi AI gi\\u00fap thay \\u0111\\u1ed5i nh\\u1eadn th\\u1ee9c v\\u1ec1 nh\\u1eefng g\\u00ec m\\u1ed9t c\\u00f4ng c\\u1ee5 thi\\u1ebft k\\u1ebf \\u0111\\u1ed3 h\\u1ecda AI c\\u00f3 th\\u1ec3 th\\u1ef1c hi\\u1ec7n. T\\u1eeb m\\u1ed9t logo n\\u1ed5i b\\u1eadt, m\\u1ed9t video thuy\\u1ebft ph\\u1ee5c, \\u0111\\u1ebfn m\\u1ed9t qu\\u1ea3ng c\\u00e1o hi\\u1ec7u qu\\u1ea3 tr\\u00ean m\\u1ea1ng x\\u00e3 h\\u1ed9i, Designs.ai cung c\\u1ea5p cho b\\u1ea1n m\\u1ecdi c\\u00f4ng c\\u1ee5 m\\u00e0 b\\u1ea1n c\\u00f3 th\\u1ec3 c\\u1ea7n. S\\u1ee9c m\\u1ea1nh \\u0111\\u1ed9c \\u0111\\u00e1o c\\u1ee7a n\\u00f3 n\\u1eb1m \\u1edf kh\\u1ea3 n\\u0103ng&nbsp;<a href=\\\"https:\\/\\/thegioimaychu.vn\\/blog\\/thuat-ngu\\/machine-learning\\/?utm_source=tmblog&amp;utm_medium=inlinekwd\\\">h\\u1ecdc m\\u00e1y<\\/a>, gi\\u00fap t\\u1ed1i \\u01b0u h\\u00f3a quy tr\\u00ecnh thi\\u1ebft k\\u1ebf b\\u1eb1ng c\\u00e1ch nghi\\u00ean c\\u1ee9u s\\u1edf th\\u00edch c\\u1ee7a b\\u1ea1n v\\u00e0 \\u0111\\u01b0a ra m\\u1ed9t lo\\u1ea1t gi\\u1ea3i ph\\u00e1p thi\\u1ebft k\\u1ebf ph\\u00f9 h\\u1ee3p.<\\/p>\\r\\n\\r\\n<p>Designs.ai cung c\\u1ea5p nhi\\u1ec1u h\\u01a1n m\\u1ed9t b\\u1ed9 c\\u00f4ng c\\u1ee5 \\u0111a d\\u1ea1ng; n\\u00f3 \\u0111\\u1ea3m b\\u1ea3o m\\u1ed9t h\\u00e0nh tr\\u00ecnh thi\\u1ebft k\\u1ebf hi\\u1ec7u qu\\u1ea3 v\\u00e0 \\u0111\\u01b0\\u1ee3c c\\u00e1 nh\\u00e2n h\\u00f3a. Cho d\\u00f9 d\\u1ef1 \\u00e1n c\\u1ee7a b\\u1ea1n li\\u00ean quan \\u0111\\u1ebfn x\\u00e2y d\\u1ef1ng th\\u01b0\\u01a1ng hi\\u1ec7u hay s\\u1ea3n xu\\u1ea5t video, b\\u1ed9 c\\u00f4ng c\\u1ee5 \\u0111a d\\u1ea1ng c\\u1ee7a n\\u00f3 c\\u00f3 th\\u1ec3 \\u0111\\u00e1p \\u1ee9ng m\\u1ecdi y\\u00eau c\\u1ea7u s\\u00e1ng t\\u1ea1o. V\\u1edbi m\\u1ed9t n\\u1ec1n t\\u1ea3ng d\\u1ec5 s\\u1eed d\\u1ee5ng, Designs.ai khuy\\u1ebfn kh\\u00edch s\\u1ef1 s\\u00e1ng t\\u1ea1o v\\u00e0 \\u0111\\u1ed9c \\u0111\\u00e1o b\\u1ea5t k\\u1ec3 n\\u1ec1n t\\u1ea3ng thi\\u1ebft k\\u1ebf c\\u1ee7a b\\u1ea1n l\\u00e0 g\\u00ec.<\\/p>\\r\\n\\r\\n<p>C\\u00e1c t\\u00ednh n\\u0103ng h\\u00e0ng \\u0111\\u1ea7u c\\u1ee7a Designs.ai:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>B\\u1ed9 c\\u00f4ng c\\u1ee5 m\\u1edf r\\u1ed9ng cho c\\u00e1c y\\u00eau c\\u1ea7u thi\\u1ebft k\\u1ebf \\u0111a d\\u1ea1ng.<\\/li>\\r\\n\\t<li>C\\u00e1c thu\\u1eadt to\\u00e1n&nbsp;<a href=\\\"https:\\/\\/thegioimaychu.vn\\/blog\\/thuat-ngu\\/machine-learning\\/?utm_source=tmblog&amp;utm_medium=inlinekwd\\\">h\\u1ecdc m\\u00e1y<\\/a>&nbsp;\\u0111i\\u1ec1u ch\\u1ec9nh theo s\\u1edf th\\u00edch thi\\u1ebft k\\u1ebf c\\u00e1 nh\\u00e2n.<\\/li>\\r\\n\\t<li>M\\u1ed9t b\\u1ed9 s\\u01b0u t\\u1eadp l\\u1edbn c\\u00e1c ph\\u00f4ng ch\\u1eef, m\\u00e0u s\\u1eafc v\\u00e0 \\u0111\\u1ed3 h\\u1ecda.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h2>3. Adobe Sensei&nbsp;<\\/h2>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/B\\u00e0i vi\\u1ebft\\/adobe-sensei.jpg\\\" style=\\\"width: 800px; height: 500px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Adobe Sensei minh h\\u1ecda c\\u00e1ch AI c\\u00f3 th\\u1ec3 n\\u00e2ng cao hi\\u1ec7u qu\\u1ea3 trong thi\\u1ebft k\\u1ebf. B\\u1eb1ng c\\u00e1ch t\\u1eadn d\\u1ee5ng AI v\\u00e0 h\\u1ecdc m\\u00e1y, Sensei t\\u1ef1 \\u0111\\u1ed9ng h\\u00f3a c\\u00e1c t\\u00e1c v\\u1ee5 th\\u00f4ng th\\u01b0\\u1eddng v\\u00e0 khuy\\u1ebfn kh\\u00edch c\\u00e1c gi\\u1ea3i ph\\u00e1p thi\\u1ebft k\\u1ebf s\\u00e1ng t\\u1ea1o. Tr\\u00ecnh tr\\u1ee3 gi\\u00fap AI n\\u00e0y, \\u0111\\u01b0\\u1ee3c t\\u00edch h\\u1ee3p d\\u1ec5 d\\u00e0ng trong b\\u1ed9 c\\u00f4ng c\\u1ee5 thi\\u1ebft k\\u1ebf c\\u1ee7a Adobe, l\\u00e0 ngu\\u1ed3n t\\u00e0i nguy\\u00ean v\\u00f4 gi\\u00e1 d\\u00e0nh cho c\\u00e1c nh\\u00e0 thi\\u1ebft k\\u1ebf \\u0111\\u1ed3 h\\u1ecda v\\u00e0 nh\\u00e0 s\\u00e1ng t\\u1ea1o chuy\\u00ean nghi\\u1ec7p.<\\/p>\\r\\n\\r\\n<p>Sensei th\\u00fac \\u0111\\u1ea9y s\\u1ef1 s\\u00e1ng t\\u1ea1o b\\u1eb1ng c\\u00e1ch \\u0111\\u1ea3m nh\\u1eadn c\\u00e1c nhi\\u1ec7m v\\u1ee5 \\u0111\\u01a1n gi\\u1ea3n, do \\u0111\\u00f3 cho ph\\u00e9p c\\u00e1c nh\\u00e0 thi\\u1ebft k\\u1ebf t\\u1eadp trung v\\u00e0o \\u00fd t\\u01b0\\u1edfng ngh\\u1ec7 thu\\u1eadt c\\u1ee7a h\\u1ecd. \\u0110\\u01b0\\u1ee3c t\\u00edch h\\u1ee3p v\\u00e0o b\\u1ed9 Adobe n\\u1ed5i ti\\u1ebfng, Sensei k\\u1ebft h\\u1ee3p c\\u00e1c kh\\u1ea3 n\\u0103ng AI m\\u1ea1nh m\\u1ebd v\\u1edbi c\\u00e1c c\\u00f4ng c\\u1ee5 thi\\u1ebft k\\u1ebf quen thu\\u1ed9c, t\\u1ea1o th\\u00e0nh m\\u1ed9t g\\u00f3i to\\u00e0n di\\u1ec7n cho b\\u1ea5t k\\u1ef3 nh\\u00e0 thi\\u1ebft k\\u1ebf n\\u00e0o.<\\/p>\\r\\n\\r\\n<p>C\\u00e1c t\\u00ednh n\\u0103ng n\\u1ed5i b\\u1eadt c\\u1ee7a Adobe Sensei:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>AI t\\u1ef1 \\u0111\\u1ed9ng h\\u00f3a c\\u00e1c nhi\\u1ec7m v\\u1ee5 \\u0111\\u1ecbnh k\\u1ef3.<\\/li>\\r\\n\\t<li>M\\u1ed9t lo\\u1ea1t c\\u00e1c ch\\u1ee9c n\\u0103ng \\u0111\\u1ec3 th\\u00fac \\u0111\\u1ea9y s\\u1ef1 s\\u00e1ng t\\u1ea1o.<\\/li>\\r\\n\\t<li>T\\u00edch h\\u1ee3p m\\u01b0\\u1ee3t m\\u00e0 v\\u1edbi b\\u1ed9 c\\u00f4ng c\\u1ee5 thi\\u1ebft k\\u1ebf c\\u1ee7a Adobe.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h2>4. Fronty&nbsp;<\\/h2>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/B\\u00e0i vi\\u1ebft\\/Fronty.png\\\" style=\\\"width: 800px; height: 500px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Fronty \\u0111\\u1ee9ng \\u1edf giao \\u0111i\\u1ec3m c\\u1ee7a thi\\u1ebft k\\u1ebf v\\u00e0 ph\\u00e1t tri\\u1ec3n, t\\u01b0\\u1ee3ng tr\\u01b0ng cho ti\\u1ec1m n\\u0103ng c\\u1ee7a AI trong c\\u1ea3 hai l\\u0129nh v\\u1ef1c. C\\u00f4ng c\\u1ee5 thi\\u1ebft k\\u1ebf \\u0111\\u1ed3 h\\u1ecda AI n\\u00e0y \\u0111\\u01a1n gi\\u1ea3n h\\u00f3a quy tr\\u00ecnh thi\\u1ebft k\\u1ebf web b\\u1eb1ng c\\u00e1ch bi\\u1ebfn c\\u00e1c thi\\u1ebft k\\u1ebf h\\u00ecnh \\u1ea3nh th\\u00e0nh m\\u00e3 l\\u1eadp tr\\u00ecnh, bi\\u1ebfn m\\u1ed9t b\\u1ee9c tranh \\u0111\\u01a1n gi\\u1ea3n th\\u00e0nh m\\u1ed9t trang web ch\\u1ee9c n\\u0103ng ch\\u1ec9 b\\u1eb1ng m\\u1ed9t v\\u00e0i c\\u00fa nh\\u1ea5p chu\\u1ed9t.<\\/p>\\r\\n\\r\\n<p>Ti\\u1ec7n \\u00edch c\\u1ee7a Fronty v\\u01b0\\u1ee3t xa vi\\u1ec7c chuy\\u1ec3n \\u0111\\u1ed5i c\\u00e1c thi\\u1ebft k\\u1ebf th\\u00e0nh m\\u00e3. B\\u1eb1ng c\\u00e1ch t\\u1ea1o m\\u00e3 HTML, CSS v\\u00e0 React t\\u00f9y ch\\u1ec9nh, Fronty mang \\u0111\\u1ebfn t\\u00ednh linh ho\\u1ea1t cho c\\u1ea3 nh\\u00e0 thi\\u1ebft k\\u1ebf v\\u00e0 nh\\u00e0 ph\\u00e1t tri\\u1ec3n web. H\\u01a1n n\\u1eefa, n\\u00f3 l\\u00e0m gi\\u1ea3m \\u0111\\u00e1ng k\\u1ec3 th\\u1eddi gian t\\u1eeb \\u00fd t\\u01b0\\u1edfng \\u0111\\u1ebfn trang web tr\\u1ef1c ti\\u1ebfp, l\\u00e0m cho n\\u00f3 tr\\u1edf th\\u00e0nh m\\u1ed9t c\\u00f4ng c\\u1ee5 thi\\u1ebft y\\u1ebfu \\u0111\\u1ec3 ph\\u00e1t tri\\u1ec3n web.<\\/p>\\r\\n\\r\\n<p>C\\u00e1c t\\u00ednh n\\u0103ng n\\u1ed5i b\\u1eadt c\\u1ee7a Fronty:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Chuy\\u1ec3n \\u0111\\u1ed5i c\\u00e1c thi\\u1ebft k\\u1ebf h\\u00ecnh \\u1ea3nh th\\u00e0nh c\\u00e1c trang web ho\\u1ea1t \\u0111\\u1ed9ng.<\\/li>\\r\\n\\t<li>T\\u1ea1o m\\u00e3 HTML, CSS v\\u00e0 React t\\u00f9y ch\\u1ec9nh.<\\/li>\\r\\n\\t<li>T\\u0103ng t\\u1ed1c qu\\u00e1 tr\\u00ecnh ph\\u00e1t tri\\u1ec3n web.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h2>5. AutoDraw&nbsp;<\\/h2>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/B\\u00e0i vi\\u1ebft\\/auto draw.jpg\\\" style=\\\"width: 800px; height: 500px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>AutoDraw, do Google t\\u1ea1o ra, cho th\\u1ea5y c\\u00e1c c\\u00f4ng c\\u1ee5 thi\\u1ebft k\\u1ebf AI c\\u00f3 th\\u1ec3 truy c\\u1eadp \\u0111\\u01b0\\u1ee3c nh\\u01b0 th\\u1ebf n\\u00e0o. N\\u00f3 d\\u1ec5 d\\u00e0ng chuy\\u1ec3n \\u0111\\u1ed5i c\\u00e1c b\\u1ea3n ph\\u00e1c th\\u1ea3o th\\u00f4 c\\u1ee7a b\\u1ea1n th\\u00e0nh c\\u00e1c h\\u00ecnh minh h\\u1ecda tinh t\\u1ebf. Thu\\u1eadt to\\u00e1n h\\u1ecdc m\\u00e1y c\\u1ee7a n\\u00f3 d\\u1ef1 \\u0111o\\u00e1n nh\\u1eefng g\\u00ec b\\u1ea1n \\u0111ang c\\u1ed1 g\\u1eafng v\\u1ebd v\\u00e0 \\u0111\\u01b0a ra m\\u1ed9t lo\\u1ea1t c\\u00e1c b\\u1ea3n ph\\u00e1c th\\u1ea3o b\\u00f3ng b\\u1ea9y \\u0111\\u1ec3 l\\u1ef1a ch\\u1ecdn.<\\/p>\\r\\n\\r\\n<p>AutoDraw c\\u00e1ch m\\u1ea1ng h\\u00f3a vi\\u1ec7c ph\\u00e1c th\\u1ea3o v\\u00e0 l\\u00ean \\u00fd t\\u01b0\\u1edfng nhanh ch\\u00f3ng b\\u1eb1ng c\\u00e1ch t\\u00edch h\\u1ee3p AI. Giao di\\u1ec7n tr\\u1ef1c quan c\\u1ee7a n\\u00f3 k\\u1ebft h\\u1ee3p v\\u1edbi h\\u1ecdc m\\u00e1y l\\u00e0m cho n\\u00f3 tr\\u1edf th\\u00e0nh m\\u1ed9t c\\u00f4ng c\\u1ee5 ph\\u00f9 h\\u1ee3p cho m\\u1ecdi ng\\u01b0\\u1eddi, t\\u1eeb nh\\u1eefng ng\\u01b0\\u1eddi \\u0111am m\\u00ea v\\u1ebd ngu\\u1ec7ch ngo\\u1ea1c \\u0111\\u1ebfn c\\u00e1c nh\\u00e0 thi\\u1ebft k\\u1ebf chuy\\u00ean nghi\\u1ec7p. Cho d\\u00f9 b\\u1ea1n \\u0111ang th\\u1ef1c hi\\u1ec7n m\\u1ed9t d\\u1ef1 \\u00e1n thi\\u1ebft k\\u1ebf ph\\u1ee9c t\\u1ea1p hay ch\\u1ec9 ph\\u00e1c th\\u1ea3o cho vui, c\\u00e1c b\\u1ea3n v\\u1ebd ti\\u00ean \\u0111o\\u00e1n c\\u1ee7a AutoDraw s\\u1ebd n\\u00e2ng cao h\\u00e0nh tr\\u00ecnh s\\u00e1ng t\\u1ea1o c\\u1ee7a b\\u1ea1n.<\\/p>\\r\\n\\r\\n<p>C\\u00e1c t\\u00ednh n\\u0103ng ch\\u00ednh c\\u1ee7a AutoDraw:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Chuy\\u1ec3n \\u0111\\u1ed5i c\\u00e1c b\\u1ea3n ph\\u00e1c th\\u1ea3o th\\u00f4 th\\u00e0nh h\\u00ecnh minh h\\u1ecda b\\u00f3ng b\\u1ea9y.<\\/li>\\r\\n\\t<li>S\\u1eed d\\u1ee5ng m\\u00e1y h\\u1ecdc \\u0111\\u1ec3 d\\u1ef1 \\u0111o\\u00e1n v\\u00e0 c\\u1ea3i thi\\u1ec7n b\\u1ea3n v\\u1ebd.<\\/li>\\r\\n\\t<li>Ho\\u00e0n h\\u1ea3o cho vi\\u1ec7c ph\\u00e1c th\\u1ea3o v\\u00e0 l\\u00ean \\u00fd t\\u01b0\\u1edfng nhanh ch\\u00f3ng.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h2>6. Khroma&nbsp;<\\/h2>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/B\\u00e0i vi\\u1ebft\\/khroma.png\\\" style=\\\"width: 800px; height: 500px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Khroma l\\u00e0 m\\u1ed9t c\\u00f4ng c\\u1ee5 m\\u00e0u AI \\u0111\\u00f3ng m\\u1ed9t vai tr\\u00f2 quan tr\\u1ecdng trong qu\\u00e1 tr\\u00ecnh thi\\u1ebft k\\u1ebf, \\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 khi l\\u1ef1a ch\\u1ecdn m\\u00e0u s\\u1eafc v\\u00e0 t\\u00ednh nh\\u1ea5t qu\\u00e1n. D\\u1ef1a tr\\u00ean s\\u1edf th\\u00edch th\\u1ea9m m\\u1ef9 c\\u1ee7a b\\u1ea1n, Khroma t\\u1ea1o c\\u00e1c b\\u1ea3ng m\\u00e0u \\u0111\\u01b0\\u1ee3c c\\u00e1 nh\\u00e2n h\\u00f3a, cung c\\u1ea5p cho b\\u1ea1n v\\u00f4 s\\u1ed1 t\\u00f9y ch\\u1ecdn ph\\u00f9 h\\u1ee3p v\\u1edbi phong c\\u00e1ch c\\u1ee7a b\\u1ea1n.<\\/p>\\r\\n\\r\\n<p>Khroma v\\u01b0\\u1ee3t qua vai tr\\u00f2 c\\u1ee7a m\\u1ed9t c\\u00f4ng c\\u1ee5 ch\\u1ec9nh m\\u00e0u c\\u01a1 b\\u1ea3n b\\u1eb1ng c\\u00e1ch hi\\u1ec3u s\\u1edf th\\u00edch m\\u00e0u c\\u1ee7a b\\u1ea1n v\\u00e0 cung c\\u1ea5p c\\u00e1c b\\u1ea3ng m\\u00e0u t\\u00f9y ch\\u1ec9nh. N\\u00f3 l\\u00e0m cho vi\\u1ec7c t\\u00ecm ki\\u1ebfm s\\u1ef1 k\\u1ebft h\\u1ee3p m\\u00e0u s\\u1eafc ph\\u00f9 h\\u1ee3p tr\\u1edf n\\u00ean d\\u1ec5 d\\u00e0ng h\\u01a1n v\\u00e0 \\u0111\\u1ea3m b\\u1ea3o t\\u00ednh nh\\u1ea5t qu\\u00e1n trong thi\\u1ebft k\\u1ebf c\\u1ee7a b\\u1ea1n. Cho d\\u00f9 b\\u1ea1n \\u0111ang t\\u00ecm ki\\u1ebfm ngu\\u1ed3n c\\u1ea3m h\\u1ee9ng v\\u1ec1 m\\u00e0u s\\u1eafc hay h\\u01b0\\u1edbng \\u0111\\u1ebfn s\\u1ef1 \\u0111\\u1ed3ng nh\\u1ea5t trong c\\u00e1c d\\u1ef1 \\u00e1n c\\u1ee7a m\\u00ecnh, Khroma l\\u00e0 m\\u1ed9t l\\u1ef1a ch\\u1ecdn tuy\\u1ec7t v\\u1eddi.<\\/p>\\r\\n\\r\\n<p>C\\u00e1c t\\u00ednh n\\u0103ng h\\u00e0ng \\u0111\\u1ea7u c\\u1ee7a Khroma:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>T\\u1ea1o s\\u1ef1 k\\u1ebft h\\u1ee3p m\\u00e0u s\\u1eafc d\\u1ef1a tr\\u00ean s\\u1edf th\\u00edch c\\u1ee7a ng\\u01b0\\u1eddi d\\u00f9ng.<\\/li>\\r\\n\\t<li>L\\u00fd t\\u01b0\\u1edfng \\u0111\\u1ec3 duy tr\\u00ec t\\u00ednh nh\\u1ea5t qu\\u00e1n m\\u00e0u s\\u1eafc tr\\u00ean c\\u00e1c thi\\u1ebft k\\u1ebf.<\\/li>\\r\\n\\t<li>C\\u00f4ng c\\u1ee5 tuy\\u1ec7t v\\u1eddi cho c\\u1ea3m h\\u1ee9ng m\\u00e0u s\\u1eafc.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h2>7. Let\'s Enhance&nbsp;<\\/h2>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/B\\u00e0i vi\\u1ebft\\/lets.jpg\\\" style=\\\"width: 800px; height: 500px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Let\\u2019s Enhance l\\u00e0 m\\u1ed9t c\\u00f4ng c\\u1ee5 thi\\u1ebft k\\u1ebf \\u0111\\u1ed3 h\\u1ecda d\\u1ef1a tr\\u00ean AI gi\\u00fap c\\u1ea3i thi\\u1ec7n ch\\u1ea5t l\\u01b0\\u1ee3ng h\\u00ecnh \\u1ea3nh c\\u1ee7a b\\u1ea1n m\\u00e0 kh\\u00f4ng l\\u00e0m m\\u1ea5t chi ti\\u1ebft. N\\u00f3 \\u0111\\u1eb7c bi\\u1ec7t h\\u1eefu \\u00edch \\u0111\\u1ec3 ph\\u00f3ng to h\\u00ecnh \\u1ea3nh c\\u00f3 \\u0111\\u1ed9 ph\\u00e2n gi\\u1ea3i th\\u1ea5p ho\\u1eb7c kh\\u00f4i ph\\u1ee5c ch\\u1ea5t l\\u01b0\\u1ee3ng c\\u1ee7a \\u1ea3nh c\\u0169. B\\u1eb1ng c\\u00e1ch s\\u1eed d\\u1ee5ng m\\u1ea1ng th\\u1ea7n kinh (Neural Networks), n\\u00f3 c\\u00f3 th\\u1ec3 th\\u00eam v\\u00e0o c\\u00e1c chi ti\\u1ebft ban \\u0111\\u1ea7u kh\\u00f4ng c\\u00f3, mang l\\u1ea1i h\\u00ecnh \\u1ea3nh ch\\u1ea5t l\\u01b0\\u1ee3ng cao ngay c\\u1ea3 t\\u1eeb nh\\u1eefng ngu\\u1ed3n c\\u00f3 s\\u1ed1 \\u0111i\\u1ec3m \\u1ea3nh th\\u1ea5p nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<p>Let\\u2019s Enhance l\\u00e0 minh ch\\u1ee9ng cho s\\u1ee9c m\\u1ea1nh c\\u1ee7a AI trong ch\\u1ec9nh s\\u1eeda v\\u00e0 ph\\u1ee5c h\\u1ed3i h\\u00ecnh \\u1ea3nh. N\\u00f3 ph\\u1ee5c h\\u1ed3i h\\u00ecnh \\u1ea3nh ch\\u1ea5t l\\u01b0\\u1ee3ng th\\u1ea5p v\\u00e0 \\u0111\\u1ea3m b\\u1ea3o ch\\u00fang \\u0111\\u00e1p \\u1ee9ng c\\u00e1c y\\u00eau c\\u1ea7u v\\u1ec1 \\u0111\\u1ed9 ph\\u00e2n gi\\u1ea3i cao nh\\u1ea5t. Cho d\\u00f9 b\\u1ea1n \\u0111ang t\\u00ecm c\\u00e1ch n\\u00e2ng cao ch\\u1ea5t l\\u01b0\\u1ee3ng h\\u00ecnh \\u1ea3nh cho ph\\u01b0\\u01a1ng ti\\u1ec7n in \\u1ea5n hay k\\u1ef9 thu\\u1eadt s\\u1ed1, Let\\u2019s Enhance \\u0111\\u1ec1u cung c\\u1ea5p m\\u1ed9t gi\\u1ea3i ph\\u00e1p hi\\u1ec7u qu\\u1ea3.<\\/p>\\r\\n\\r\\n<p>C\\u00e1c t\\u00ednh n\\u0103ng ch\\u00ednh c\\u1ee7a Let\\u2019s Enhance:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>N\\u00e2ng c\\u1ea5p h\\u00ecnh \\u1ea3nh m\\u00e0 kh\\u00f4ng l\\u00e0m gi\\u1ea3m ch\\u1ea5t l\\u01b0\\u1ee3ng.<\\/li>\\r\\n\\t<li>S\\u1eed d\\u1ee5ng m\\u1ea1ng th\\u1ea7n kinh \\u0111\\u1ec3 \\u0111i\\u1ec1n v\\u00e0o c\\u00e1c chi ti\\u1ebft c\\u00f2n thi\\u1ebfu.<\\/li>\\r\\n\\t<li>L\\u00fd t\\u01b0\\u1edfng \\u0111\\u1ec3 chu\\u1ea9n b\\u1ecb h\\u00ecnh \\u1ea3nh \\u0111\\u1ed9 ph\\u00e2n gi\\u1ea3i th\\u1ea5p cho vi\\u1ec7c in \\u1ea5n.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h2>8. Jasper.ai&nbsp;<\\/h2>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/B\\u00e0i vi\\u1ebft\\/Jasper copy.jpg\\\" style=\\\"width: 800px; height: 500px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Jasper.ai, m\\u1ed9t tr\\u1ee3 l\\u00fd vi\\u1ebft AI, \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf \\u0111\\u1ec3 t\\u1ea1o v\\u0103n b\\u1ea3n h\\u1ea5p d\\u1eabn nh\\u1eb1m b\\u1ed5 sung cho thi\\u1ebft k\\u1ebf c\\u1ee7a b\\u1ea1n. Cho d\\u00f9 b\\u1ea1n c\\u1ea7n m\\u00f4 t\\u1ea3 s\\u1ea3n ph\\u1ea9m, m\\u1eabu qu\\u1ea3ng c\\u00e1o hay b\\u00e0i \\u0111\\u0103ng tr\\u00ean blog, Jasper.ai c\\u00f3 th\\u1ec3 t\\u1ea1o n\\u1ed9i dung h\\u1ea5p d\\u1eabn nh\\u1eafm \\u0111\\u00fang \\u0111\\u1ebfn kh\\u00e1n gi\\u1ea3 c\\u1ee7a b\\u1ea1n.<\\/p>\\r\\n\\r\\n<p>M\\u1eb7c d\\u00f9 Jasper.ai kh\\u00f4ng ph\\u1ea3i l\\u00e0 m\\u1ed9t c\\u00f4ng c\\u1ee5 thi\\u1ebft k\\u1ebf \\u0111\\u1ed3 h\\u1ecda truy\\u1ec1n th\\u1ed1ng, nh\\u01b0ng n\\u00f3 r\\u1ea5t quan tr\\u1ecdng \\u0111\\u1ed1i v\\u1edbi c\\u00e1c nh\\u00e0 thi\\u1ebft k\\u1ebf mu\\u1ed1n d\\u1ec7t n\\u00ean nh\\u1eefng c\\u00e2u chuy\\u1ec7n h\\u1ea5p d\\u1eabn xung quanh h\\u00ecnh \\u1ea3nh c\\u1ee7a h\\u1ecd. N\\u00f3 \\u0111\\u01a1n gi\\u1ea3n h\\u00f3a vi\\u1ec7c t\\u1ea1o n\\u1ed9i dung v\\u00e0 \\u0111\\u1ea3m b\\u1ea3o r\\u1eb1ng th\\u00f4ng \\u0111i\\u1ec7p thi\\u1ebft k\\u1ebf c\\u1ee7a b\\u1ea1n c\\u0169ng m\\u1ea1nh m\\u1ebd nh\\u01b0 ch\\u00ednh thi\\u1ebft k\\u1ebf \\u0111\\u00f3. \\u0110\\u1ed1i v\\u1edbi c\\u00e1c chuy\\u00ean gia s\\u00e1ng t\\u1ea1o, nh\\u1eefng ng\\u01b0\\u1eddi nh\\u1eadn ra t\\u00e1c \\u0111\\u1ed9ng c\\u1ee7a nh\\u1eefng t\\u1eeb \\u0111\\u01b0\\u1ee3c vi\\u1ebft t\\u1ed1t, Jasper.ai l\\u00e0 m\\u1ed9t c\\u00f4ng c\\u1ee5 thi\\u1ebft y\\u1ebfu.<\\/p>\\r\\n\\r\\n<p>C\\u00e1c t\\u00ednh n\\u0103ng h\\u00e0ng \\u0111\\u1ea7u c\\u1ee7a Jasper.ai:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>T\\u1ea1o v\\u0103n b\\u1ea3n h\\u1ea5p d\\u1eabn cho c\\u00e1c m\\u1ee5c \\u0111\\u00edch kh\\u00e1c nhau.<\\/li>\\r\\n\\t<li>H\\u1ee3p l\\u00fd h\\u00f3a qu\\u00e1 tr\\u00ecnh t\\u1ea1o n\\u1ed9i dung.<\\/li>\\r\\n\\t<li>Ho\\u00e0n h\\u1ea3o \\u0111\\u1ec3 t\\u1ea1o c\\u00e1c c\\u00e2u chuy\\u1ec7n b\\u1ed5 sung cho c\\u00e1c thi\\u1ebft k\\u1ebf.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h2>9. Alpaca&nbsp;<\\/h2>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/B\\u00e0i vi\\u1ebft\\/b93cbee28b78e2290764483a7e2fac31b133f684-1680x876.png\\\" style=\\\"width: 800px; height: 500px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Alpaca l\\u00e0 m\\u1ed9t c\\u00f4ng c\\u1ee5 s\\u00e1ng t\\u1ea1o th\\u1ec3 hi\\u1ec7n ti\\u1ec1m n\\u0103ng c\\u1ee7a AI trong m\\u00f4 h\\u00ecnh 3D. N\\u00f3 l\\u1ea5y thi\\u1ebft k\\u1ebf 2D c\\u1ee7a b\\u1ea1n v\\u00e0 v\\u1edbi s\\u1ee9c m\\u1ea1nh c\\u1ee7a h\\u1ecdc m\\u00e1y, bi\\u1ebfn n\\u00f3 th\\u00e0nh m\\u00f4 h\\u00ecnh 3D. Alpaca di\\u1ec5n gi\\u1ea3i chi\\u1ec1u s\\u00e2u v\\u00e0 ph\\u1ed1i c\\u1ea3nh thi\\u1ebft k\\u1ebf c\\u1ee7a b\\u1ea1n, hi\\u1ec3n th\\u1ecb m\\u00f4 h\\u00ecnh ba chi\\u1ec1u mang \\u0111\\u1ebfn c\\u00e1i nh\\u00ecn ch\\u00e2n th\\u1ef1c h\\u01a1n v\\u1ec1 d\\u1ef1 \\u00e1n c\\u1ee7a b\\u1ea1n.<\\/p>\\r\\n\\r\\n<p>Alpaca cho ph\\u00e9p c\\u00e1c nh\\u00e0 thi\\u1ebft k\\u1ebf s\\u1ea3n ph\\u1ea9m v\\u00e0 ki\\u1ebfn tr\\u00fac s\\u01b0 t\\u1ea1o ho\\u1ea1t \\u1ea3nh cho c\\u00e1c b\\u1ea3n ph\\u00e1c th\\u1ea3o 2D c\\u1ee7a h\\u1ecd. B\\u1eb1ng c\\u00e1ch hi\\u1ec3n th\\u1ecb c\\u00e1c m\\u00f4 h\\u00ecnh ba chi\\u1ec1u t\\u1eeb c\\u00e1c thi\\u1ebft k\\u1ebf ph\\u1eb3ng, n\\u00f3 cung c\\u1ea5p m\\u1ed9t h\\u00ecnh \\u1ea3nh tr\\u1ef1c quan to\\u00e0n di\\u1ec7n h\\u01a1n v\\u1ec1 d\\u1ef1 \\u00e1n. Alpaca l\\u00e0 m\\u1ed9t c\\u00f4ng c\\u1ee5 l\\u00fd t\\u01b0\\u1edfng cho nh\\u1eefng ai mu\\u1ed1n tr\\u1ef1c quan h\\u00f3a thi\\u1ebft k\\u1ebf c\\u1ee7a m\\u00ecnh \\u1edf d\\u1ea1ng 3D.<\\/p>\\r\\n\\r\\n<p>C\\u00e1c t\\u00ednh n\\u0103ng \\u0111\\u00e1ng ch\\u00fa \\u00fd c\\u1ee7a Alpaca:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Chuy\\u1ec3n \\u0111\\u1ed5i thi\\u1ebft k\\u1ebf 2D th\\u00e0nh m\\u00f4 h\\u00ecnh 3D.<\\/li>\\r\\n\\t<li>Di\\u1ec5n gi\\u1ea3i \\u0111\\u1ed9 s\\u00e2u v\\u00e0 ph\\u1ed1i c\\u1ea3nh \\u0111\\u1ec3 hi\\u1ec3n th\\u1ecb 3D ch\\u00ednh x\\u00e1c.<\\/li>\\r\\n\\t<li>Th\\u00edch h\\u1ee3p cho c\\u00e1c nh\\u00e0 thi\\u1ebft k\\u1ebf s\\u1ea3n ph\\u1ea9m v\\u00e0 ki\\u1ebfn tr\\u00fac s\\u01b0.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h2>10. Nvidia Canvas&nbsp;<\\/h2>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/B\\u00e0i vi\\u1ebft\\/tai-nvidia-canvas-8.jpg\\\" style=\\\"width: 800px; height: 500px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Nvidia Canvas gi\\u1edbi thi\\u1ec7u s\\u1ee9c m\\u1ea1nh c\\u1ee7a AI \\u0111\\u1ec3 bi\\u1ebfn nh\\u1eefng n\\u00e9t c\\u1ecd \\u0111\\u01a1n gi\\u1ea3n th\\u00e0nh h\\u00ecnh \\u1ea3nh ch\\u00e2n th\\u1ef1c. S\\u1eed d\\u1ee5ng m\\u1ed9t k\\u1ef9 thu\\u1eadt g\\u1ecdi l\\u00e0 GAN (Generative Adversarial Network), Nvidia Canvas chuy\\u1ec3n c\\u00e1c b\\u1ea3n ph\\u00e1c th\\u1ea3o c\\u1ee7a b\\u1ea1n th\\u00e0nh nh\\u1eefng c\\u1ea3nh quan tuy\\u1ec7t \\u0111\\u1eb9p v\\u00e0 ph\\u1ee9c t\\u1ea1p.<\\/p>\\r\\n\\r\\n<p>Nvidia Canvas cho ph\\u00e9p b\\u1ea5t k\\u1ef3 ai c\\u0169ng c\\u00f3 th\\u1ec3 t\\u1ea1o ra nh\\u1eefng h\\u00ecnh \\u1ea3nh ch\\u00e2n th\\u1ef1c, tuy\\u1ec7t \\u0111\\u1eb9p. Cho d\\u00f9 b\\u1ea1n l\\u00e0 m\\u1ed9t ngh\\u1ec7 s\\u0129 k\\u1ef9 thu\\u1eadt s\\u1ed1 hay ch\\u1ec9 m\\u1edbi b\\u1eaft \\u0111\\u1ea7u thi\\u1ebft k\\u1ebf, c\\u00f4ng c\\u1ee5 n\\u00e0y c\\u00f3 th\\u1ec3 bi\\u1ebfn nh\\u1eefng b\\u1ea3n ph\\u00e1c th\\u1ea3o \\u0111\\u01a1n gi\\u1ea3n c\\u1ee7a b\\u1ea1n th\\u00e0nh nh\\u1eefng ki\\u1ec7t t\\u00e1c. \\u0110\\u00f3 l\\u00e0 m\\u1ed9t v\\u00ed d\\u1ee5 ho\\u00e0n h\\u1ea3o v\\u1ec1 c\\u00e1ch AI c\\u00f3 th\\u1ec3 \\u0111\\u01a1n gi\\u1ea3n h\\u00f3a qu\\u00e1 tr\\u00ecnh s\\u00e1ng t\\u1ea1o.<\\/p>\\r\\n\\r\\n<p>C\\u00e1c t\\u00ednh n\\u0103ng ch\\u00ednh c\\u1ee7a Nvidia Canvas:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Chuy\\u1ec3n \\u0111\\u1ed5i c\\u00e1c n\\u00e9t v\\u1ebd th\\u00e0nh h\\u00ecnh \\u1ea3nh ch\\u00e2n th\\u1ef1c.<\\/li>\\r\\n\\t<li>S\\u1eed d\\u1ee5ng GAN \\u0111\\u1ec3 di\\u1ec5n gi\\u1ea3i v\\u00e0 c\\u1ea3i thi\\u1ec7n b\\u1ea3n ph\\u00e1c th\\u1ea3o.<\\/li>\\r\\n\\t<li>Ho\\u00e0n h\\u1ea3o \\u0111\\u1ec3 t\\u1ea1o ra c\\u00e1c thi\\u1ebft k\\u1ebf chi ti\\u1ebft, tuy\\u1ec7t \\u0111\\u1eb9p.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>Danh s\\u00e1ch n\\u00e0y cho th\\u1ea5y s\\u1ef1 ph\\u1ed5 bi\\u1ebfn ng\\u00e0y c\\u00e0ng t\\u0103ng c\\u1ee7a AI trong th\\u1ebf gi\\u1edbi thi\\u1ebft k\\u1ebf \\u0111\\u1ed3 h\\u1ecda. C\\u00e1c c\\u00f4ng c\\u1ee5 \\u0111\\u01b0\\u1ee3c t\\u00edch h\\u1ee3p&nbsp;<a href=\\\"https:\\/\\/thegioimaychu.vn\\/blog\\/tag\\/ai\\/?utm_source=tmblog&amp;utm_medium=inlinekwd\\\">tr\\u00ed tu\\u1ec7 nh\\u00e2n t\\u1ea1o<\\/a>&nbsp;n\\u00e0y n\\u00e2ng cao kh\\u1ea3 n\\u0103ng s\\u00e1ng t\\u1ea1o, h\\u1ee3p l\\u00fd h\\u00f3a c\\u00e1c quy tr\\u00ecnh thi\\u1ebft k\\u1ebf v\\u00e0 cho ph\\u00e9p ng\\u01b0\\u1eddi d\\u00f9ng t\\u1ea1o ra c\\u00e1c thi\\u1ebft k\\u1ebf \\u0111\\u1ed9c \\u0111\\u00e1o h\\u01a1n trong th\\u1eddi gian ng\\u1eafn h\\u01a1n \\u0111\\u00e1ng k\\u1ec3. Cho d\\u00f9 b\\u1ea1n l\\u00e0 m\\u1ed9t chuy\\u00ean gia d\\u00e0y d\\u1ea1n kinh nghi\\u1ec7m hay m\\u1ed9t ng\\u01b0\\u1eddi \\u0111am m\\u00ea thi\\u1ebft k\\u1ebf, nh\\u1eefng c\\u00f4ng c\\u1ee5 n\\u00e0y c\\u00f3 th\\u1ec3 h\\u1ed7 tr\\u1ee3 b\\u1ea1n nh\\u1eadn ra ti\\u1ec1m n\\u0103ng s\\u00e1ng t\\u1ea1o c\\u1ee7a m\\u00ecnh.<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/Bài viết/Bài web.png', NULL, 1, 0, 6, 'active', 1, 5, '2024-06-16 07:28:49', '2024-06-25 15:29:23', 'lorem-ipsum-dolor-sit-amet-consectetuer-adipiscing-elit'),
(407, 91, NULL, 'post', 'Profile doanh nghiệp (hồ sơ năng lực) là gì?', '{\"brief\":{\"vi\":\"H\\u1ed3 s\\u01a1 n\\u0103ng l\\u1ef1c (Profile doanh nghi\\u1ec7p) \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng trong nh\\u1eefng v\\u1ea5n \\u0111\\u1ec1 quan tr\\u1ecdng \\u1edf c\\u00f4ng ty nh\\u01b0 tham gia th\\u1ea9m \\u0111\\u1ecbnh, \\u0111\\u1ea5u th\\u1ea7u,... n\\u00ean s\\u1ebd \\u1ea3nh h\\u01b0\\u1edfng nh\\u1ea5t \\u0111\\u1ecbnh t\\u1edbi th\\u00e0nh c\\u00f4ng c\\u1ee7a c\\u00f4ng ty trong nh\\u1eefng d\\u1ef1 \\u00e1n l\\u1edbn. V\\u1eady h\\u1ed3 s\\u01a1 n\\u0103ng l\\u1ef1c l\\u00e0 g\\u00ec? B\\u1ed9 h\\u1ed3 s\\u01a1 n\\u0103ng l\\u1ef1c c\\u00f4ng ty g\\u1ed3m nh\\u1eefng g\\u00ec? M\\u1eddi b\\u1ea1n c\\u00f9ng Global Brand Design t\\u00ecm hi\\u1ec3u trong b\\u00e0i vi\\u1ebft sau!\"},\"content\":{\"vi\":\"<h1>H\\u1ed3 s\\u01a1 n\\u0103ng l\\u1ef1c (Profile doanh nghi\\u1ec7p) l\\u00e0 g\\u00ec?<\\/h1>\\r\\n\\r\\n<p>H\\u1ed3 s\\u01a1 n\\u0103ng l\\u1ef1c \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng trong nh\\u1eefng v\\u1ea5n \\u0111\\u1ec1 quan tr\\u1ecdng \\u1edf c\\u00f4ng ty nh\\u01b0 tham gia th\\u1ea9m \\u0111\\u1ecbnh, \\u0111\\u1ea5u th\\u1ea7u,... n\\u00ean s\\u1ebd \\u1ea3nh h\\u01b0\\u1edfng nh\\u1ea5t \\u0111\\u1ecbnh t\\u1edbi th\\u00e0nh c\\u00f4ng c\\u1ee7a c\\u00f4ng ty trong nh\\u1eefng d\\u1ef1 \\u00e1n l\\u1edbn. V\\u1eady h\\u1ed3 s\\u01a1 n\\u0103ng l\\u1ef1c l\\u00e0 g\\u00ec? B\\u1ed9 h\\u1ed3 s\\u01a1 n\\u0103ng l\\u1ef1c c\\u00f4ng ty g\\u1ed3m nh\\u1eefng g\\u00ec? M\\u1eddi b\\u1ea1n c\\u00f9ng t\\u00ecm hi\\u1ec3u trong b\\u00e0i vi\\u1ebft sau!<\\/p>\\r\\n\\r\\n<h2 id=\\\"hmenuid1\\\">H\\u1ed3 s\\u01a1 n\\u0103ng l\\u1ef1c (Profile c\\u00f4ng ty) l\\u00e0 g\\u00ec?<\\/h2>\\r\\n\\r\\n<p><a href=\\\"https:\\/\\/vi.wikipedia.org\\/wiki\\/H%E1%BB%93_s%C6%A1_n%C4%83ng_l%E1%BB%B1c\\\" rel=\\\"noopener nofollow\\\" target=\\\"_blank\\\" title=\\\"H\\u1ed3 s\\u01a1 n\\u0103ng l\\u1ef1c\\\">H\\u1ed3 s\\u01a1 n\\u0103ng l\\u1ef1c<\\/a>&nbsp;(hay th\\u01b0\\u1eddng \\u0111\\u01b0\\u1ee3c bi\\u1ebft \\u0111\\u1ebfn v\\u1edbi t\\u00ean g\\u1ecdi profile c\\u00f4ng ty) l\\u00e0 t\\u00e0i li\\u1ec7u th\\u01b0\\u1eddng \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng trong nh\\u1eefng th\\u01b0\\u01a1ng v\\u1ee5 h\\u1ee3p t\\u00e1c gi\\u1eefa doanh nghi\\u1ec7p c\\u1ee7a b\\u1ea1n v\\u1edbi \\u0111\\u1ed1i t\\u00e1c v\\u00e0 kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<p>B\\u1ed9 h\\u1ed3 s\\u01a1 n\\u0103ng l\\u1ef1c gi\\u00fap&nbsp;<strong>truy\\u1ec1n t\\u1ea3i th\\u00f4ng tin<\\/strong>&nbsp;t\\u1eeb bao qu\\u00e1t \\u0111\\u1ebfn c\\u1ee5 th\\u1ec3 v\\u1ec1 doanh nghi\\u1ec7p c\\u1ee7a b\\u1ea1n. C\\u1ee5 th\\u1ec3 nh\\u01b0 th\\u00f4ng tin v\\u1ec1 th\\u01b0\\u01a1ng hi\\u1ec7u (<a href=\\\"https:\\/\\/vi.wikipedia.org\\/wiki\\/Bi%E1%BB%83u_tr%C6%B0ng\\\" rel=\\\"noopener nofollow\\\" target=\\\"_blank\\\" title=\\\"logo\\\">logo<\\/a>,&nbsp;<a href=\\\"https:\\/\\/vi.wikipedia.org\\/wiki\\/Kh%E1%BA%A9u_hi%E1%BB%87u\\\" rel=\\\"noopener nofollow\\\" target=\\\"_blank\\\" title=\\\"slogan\\\">slogan<\\/a>, s\\u1ea3n ph\\u1ea9m doanh nghi\\u1ec7p), t\\u1ea7m nh\\u00ecn, gi\\u00e1 tr\\u1ecb c\\u1ed1t l\\u00f5i, kinh nghi\\u1ec7m trong l\\u0129nh v\\u1ef1c ho\\u1ea1t \\u0111\\u1ed9ng. V\\u00e0 t\\u1ea5t nhi\\u00ean, kh\\u00f4ng th\\u1ec3 thi\\u1ebfu l\\u00e0 ti\\u1ec1m n\\u0103ng ph\\u00e1t tri\\u1ec3n khi h\\u1ee3p t\\u00e1c gi\\u1eefa \\u0111\\u1ed1i t\\u00e1c v\\u00e0 doanh nghi\\u1ec7p c\\u1ee7a b\\u1ea1n.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/B\\u00e0i vi\\u1ebft\\/341537409_2124137857976718_6759020919413794000_n.jpg\\\" style=\\\"width: 800px; height: 500px;\\\" \\/><\\/p>\\r\\n\\r\\n<h2 id=\\\"hmenuid2\\\">Vai tr\\u00f2 c\\u1ee7a b\\u1ed9 h\\u1ed3 s\\u01a1 n\\u0103ng l\\u1ef1c \\u0111\\u1ed1i v\\u1edbi c\\u00f4ng ty<\\/h2>\\r\\n\\r\\n<p>H\\u1ed3 s\\u01a1 n\\u0103ng l\\u1ef1c c\\u00f3 m\\u1ed9t s\\u1ed1 c\\u00f4ng d\\u1ee5ng sau:<\\/p>\\r\\n\\r\\n<p><strong>- G\\u00e2y \\u1ea5n t\\u01b0\\u1ee3ng v\\u1edbi kh\\u00e1ch h\\u00e0ng<\\/strong>: H\\u1ed3 s\\u01a1 n\\u0103ng l\\u1ef1c \\u0111\\u01b0\\u1ee3c xem nh\\u01b0 l\\u00e0 h\\u00ecnh \\u1ea3nh kh\\u00e1i qu\\u00e1t thu nh\\u1ecf c\\u1ee7a b\\u1ea5t k\\u1ef3 doanh nghi\\u1ec7p n\\u00e0o. Th\\u00f4ng qua b\\u1ed9 h\\u1ed3 s\\u01a1 n\\u00e0y, \\u0111\\u1ed1i t\\u00e1c v\\u00e0 kh\\u00e1ch h\\u00e0ng c\\u00f3 th\\u1ec3 d\\u1ec5 d\\u00e0ng \\u0111\\u00e1nh gi\\u00e1 \\u0111\\u01b0\\u1ee3c s\\u1ef1 chuy\\u00ean nghi\\u1ec7p v\\u00e0 ti\\u1ec1m n\\u0103ng ph\\u00e1t tri\\u1ec3n c\\u1ee7a c\\u00f4ng ty.<\\/p>\\r\\n\\r\\n<p>M\\u1ed9t profile \\u0111\\u1ea7y \\u1ea5n t\\u01b0\\u1ee3ng, c\\u00f3 \\u0111i\\u1ec3m nh\\u1ea5n c\\u1ee7a ri\\u00eang b\\u1ea1n s\\u1ebd t\\u1ea1o \\u0111\\u01b0\\u1ee3c thi\\u1ec7n c\\u1ea3m trong m\\u1eaft \\u0111\\u1ed1i t\\u00e1c r\\u1ea5t nhi\\u1ec1u; t\\u1eeb \\u0111\\u00f3 t\\u0103ng th\\u00eam ph\\u1ea7n h\\u1ee9ng th\\u00fa c\\u0169ng nh\\u01b0 s\\u1ef1 tin t\\u01b0\\u1edfng c\\u1ee7a \\u0111\\u1ed1i ph\\u01b0\\u01a1ng khi h\\u1ee3p t\\u00e1c v\\u1edbi b\\u1ea1n.<\\/p>\\r\\n\\r\\n<p><strong>- Tham gia th\\u1ea7u m\\u1ed9t d\\u1ef1 \\u00e1n<\\/strong>: Khi tham gia b\\u1ea5t k\\u1ef3 m\\u1ed9t th\\u01b0\\u01a1ng v\\u1ee5 h\\u1ee3p t\\u00e1c d\\u1ef1 \\u00e1n n\\u00e0o th\\u00ec profile c\\u00f4ng ty l\\u00e0 \\\"v\\u0169 kh\\u00ed chi\\u1ebfn \\u0111\\u1ea5u\\\" c\\u1ee7a m\\u1ed7i doanh nghi\\u1ec7p, l\\u00e0 \\u201cv\\u1eadt b\\u1ea5t ly th\\u00e2n\\u201d c\\u1ee7a ng\\u01b0\\u1eddi \\u0111\\u1ea1i di\\u1ec7n \\u0111\\u1ea5u th\\u1ea7u. N\\u00f3 \\u0111\\u00f3ng vai tr\\u00f2 l\\u00e0&nbsp;<em>nh\\u00e2n vi\\u00ean kinh doanh<\\/em>&nbsp;\\u0111\\u01b0\\u1ee3c g\\u1eedi \\u0111i v\\u1edbi nhi\\u1ec7m v\\u1ee5 giao ti\\u1ebfp v\\u00e0 thuy\\u1ebft ph\\u1ee5c kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"Tham gia th\\u1ea7u d\\u1ef1 \\u00e1n\\\" data-src=\\\"https:\\/\\/cdn.tgdd.vn\\/Files\\/2021\\/03\\/11\\/1334270\\/ho-so-nang-luc-la-gi-co-tac-dung-gi-bo-ho-so-nan-8.jpg\\\" src=\\\"https:\\/\\/cdn.tgdd.vn\\/Files\\/2021\\/03\\/11\\/1334270\\/ho-so-nang-luc-la-gi-co-tac-dung-gi-bo-ho-so-nan-8.jpg\\\" title=\\\"Tham gia th\\u1ea7u d\\u1ef1 \\u00e1n\\\" \\/><\\/p>\\r\\n\\r\\n<p><strong>- X\\u00e2y d\\u1ef1ng h\\u00ecnh \\u1ea3nh th\\u01b0\\u01a1ng hi\\u1ec7u<\\/strong>: H\\u1ed3 s\\u01a1 n\\u0103ng l\\u1ef1c l\\u00e0 t\\u00e0i li\\u1ec7u m\\u00e0 c\\u00f4ng ty t\\u1ef1 gi\\u1edbi thi\\u1ec7u v\\u1ec1 b\\u1ea3n th\\u00e2n v\\u00e0 \\u0111\\u01b0\\u1ee3c gi\\u1edbi thi\\u1ec7u theo c\\u00e1ch nghi\\u1ec7p nghi\\u1ec7p nh\\u1ea5t. Do v\\u1eady h\\u1ed3 s\\u01a1 n\\u0103ng l\\u1ef1c gi\\u00fap ng\\u01b0\\u1eddi \\u0111\\u1ecdc nhanh ch\\u00f3ng n\\u1eafm b\\u1eaft \\u0111\\u01b0\\u1ee3c th\\u00f4ng tin, h\\u00ecnh th\\u00e0nh s\\u1ef1 quan t\\u00e2m, ni\\u1ec1m tin v\\u00e0 th\\u00f4i th\\u00fac h\\u1ecd ti\\u1ebfn t\\u1edbi h\\u1ee3p t\\u00e1c.<\\/p>\\r\\n\\r\\n<p><strong>- Tham gia d\\u1ef1 \\u00e1n l\\u1edbn h\\u01a1n<\\/strong>: \\u0110\\u1ec3 tham gia m\\u1ed9t d\\u1ef1 \\u00e1n l\\u1edbn, b\\u1ea1n c\\u1ea7n c\\u00f3 m\\u1ed9t b\\u1ed9 h\\u1ed3 s\\u01a1 n\\u0103ng l\\u1ef1c chuy\\u00ean nghi\\u1ec7p h\\u01a1n ho\\u1eb7c \\u00edt nh\\u1ea5t \\u0111\\u00e1p \\u1ee9ng ti\\u00eau chu\\u1ea9n d\\u1ef1 \\u00e1n ho\\u1eb7c \\u0111\\u1ed1i t\\u00e1c \\u0111\\u1ec1 ra.<\\/p>\\r\\n\\r\\n<h2 id=\\\"hmenuid3\\\">B\\u1ed9 h\\u1ed3 s\\u01a1 n\\u0103ng l\\u1ef1c g\\u1ed3m nh\\u1eefng th\\u00e0nh ph\\u1ea7n n\\u00e0o?<\\/h2>\\r\\n\\r\\n<p>Nh\\u1eefng th\\u00e0nh ph\\u1ea7n kh\\u00f4ng th\\u1ec3 thi\\u1ebfu c\\u1ee7a m\\u1ed9t profile bao g\\u1ed3m:<\\/p>\\r\\n\\r\\n<h4 id=\\\"hmenuid4\\\"><strong>Th\\u01b0 ng\\u1ecf<\\/strong><\\/h4>\\r\\n\\r\\n<p>\\u0110\\u00f4i l\\u1eddi ch\\u00e0o h\\u1ecfi thay m\\u1eb7t cho ng\\u01b0\\u1eddi ch\\u1ecbu tr\\u00e1ch nhi\\u1ec7m cao nh\\u1ea5t trong c\\u00f4ng ty (th\\u01b0\\u1eddng l\\u00e0 gi\\u00e1m \\u0111\\u1ed1c) l\\u00e0 th\\u1ee9 \\u0111\\u1ea7u ti\\u00ean m\\u00e0 ng\\u01b0\\u1eddi nh\\u1eadn \\u0111\\u01b0\\u1ee3c profile s\\u1ebd xem. V\\u1edbi gi\\u1ecdng v\\u0103n trang tr\\u1ecdng, th\\u00e2n t\\u00ecnh, kh\\u00f4ng k\\u00e9m ph\\u1ea7n h\\u00e3nh di\\u1ec7n t\\u1ef1 tin, th\\u01b0 ng\\u1ecf s\\u1ebd ph\\u1ea7n n\\u00e0o n\\u00eau l\\u00ean \\u0111\\u01b0\\u1ee3c n\\u0103ng l\\u1ef1c l\\u0129nh v\\u1ef1c c\\u0169ng nh\\u01b0 t\\u1ea7m v\\u00f3c c\\u1ee7a m\\u00ecnh.<\\/p>\\r\\n\\r\\n<h4 id=\\\"hmenuid5\\\"><strong>Gi\\u1edbi thi\\u1ec7u c\\u00f4ng ty<\\/strong><\\/h4>\\r\\n\\r\\n<p>Ti\\u1ebfp \\u0111\\u1ebfn s\\u1ebd l\\u00e0 nh\\u1eefng th\\u00f4ng tin c\\u01a1 b\\u1ea3n v\\u1ec1 c\\u00f4ng ty nh\\u01b0 l\\u00e0:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>T\\u00ean c\\u00f4ng ty<\\/li>\\r\\n\\t<li>Gi\\u1ea5y ph\\u00e9p kinh doanh<\\/li>\\r\\n\\t<li>L\\u0129nh v\\u1ef1c ho\\u1ea1t \\u0111\\u1ed9ng<\\/li>\\r\\n\\t<li>L\\u1ecbch s\\u1eed h\\u00ecnh th\\u00e0nh v\\u00e0 ph\\u00e1t tri\\u1ec3n<\\/li>\\r\\n\\t<li>Th\\u00f4ng tin li\\u00ean h\\u1ec7 (email, website, \\u0111\\u1ecba ch\\u1ec9, s\\u1ed1 \\u0111i\\u1ec7n tho\\u1ea1i, fax).<\\/li>\\r\\n\\t<li>Ph\\u01b0\\u01a1ng ch\\u00e2m ho\\u1ea1t \\u0111\\u1ed9ng<\\/li>\\r\\n\\t<li>T\\u1ea7m nh\\u00ecn<\\/li>\\r\\n\\t<li>S\\u1ee9 m\\u1ec7nh<\\/li>\\r\\n\\t<li>Gi\\u00e1 tr\\u1ecb c\\u1ed1t l\\u00f5i<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h4 id=\\\"hmenuid6\\\"><strong>N\\u0103ng l\\u1ef1c c\\u00f4ng ty<\\/strong><\\/h4>\\r\\n\\r\\n<ul>\\r\\n\\t<li><strong>N\\u0103ng l\\u1ef1c nh\\u00e2n s\\u1ef1<\\/strong>: S\\u01a1 \\u0111\\u1ed3 t\\u1ed5 ch\\u1ee9c, ban l\\u00e3nh \\u0111\\u1ea1o v\\u00e0 nh\\u00e2n s\\u1ef1 ch\\u1ee7 ch\\u1ed1t v\\u00e0 quy m\\u00f4 nh\\u00e2n s\\u1ef1.<\\/li>\\r\\n\\t<li><strong>N\\u0103ng l\\u1ef1c s\\u1ea3n xu\\u1ea5t, thi c\\u00f4ng<\\/strong>: \\u0110\\u1ec3 th\\u1ec3 hi\\u1ec7n nh\\u00f3m n\\u0103ng l\\u1ef1c n\\u00e0y, b\\u1ea1n c\\u1ea7n \\u0111\\u01b0a ra nh\\u1eefng h\\u00ecnh \\u1ea3nh minh h\\u1ecda c\\u1ee5 th\\u1ec3 v\\u1ec1 quy tr\\u00ecnh s\\u1ea3n xu\\u1ea5t, d\\u00e2y chuy\\u1ec1n c\\u00f4ng ngh\\u1ec7, m\\u00e1y m\\u00f3c thi\\u1ebft b\\u1ecb v\\u00e0 nh\\u00e0 x\\u01b0\\u1edfng.<\\/li>\\r\\n\\t<li><strong>N\\u0103ng l\\u1ef1c t\\u00e0i ch\\u00ednh<\\/strong>: \\u0110\\u01b0\\u1ee3c coi l\\u00e0 c\\u01a1 s\\u1edf \\u0111\\u1ec3 nh\\u00e0 \\u0111\\u1ea7u t\\u01b0 c\\u00f3 c\\u0103n c\\u1ee9 \\u0111\\u1ec3 \\u0111\\u01b0a ra quy\\u1ebft \\u0111\\u1ecbnh c\\u00f3 \\u0111\\u1ea7u t\\u01b0 hay kh\\u00f4ng.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h4 id=\\\"hmenuid7\\\"><strong>Th\\u00e0nh t\\u00edch \\u0111\\u1ea1t \\u0111\\u01b0\\u1ee3c<\\/strong><\\/h4>\\r\\n\\r\\n<p>Nh\\u1eefng th\\u00f4ng tin v\\u1ec1 d\\u1ef1 \\u00e1n, b\\u1eb1ng khen, gi\\u1ea5y khen m\\u00e0 doanh nghi\\u1ec7p \\u0111\\u00e3 \\u0111\\u1ea1t \\u0111\\u01b0\\u1ee3c s\\u1ebd th\\u00eam ph\\u1ea7n t\\u1ea1o s\\u1ef1 tin t\\u01b0\\u1edfng n\\u01a1i \\u0111\\u1ed1i t\\u00e1c v\\u00e0 kh\\u00e1ch h\\u00e0ng. \\u0110i\\u1ec1u n\\u00e0y gi\\u00fap b\\u1ed9 h\\u1ed3 s\\u01a1 \\u0111\\u1ea1t hi\\u1ec7u qu\\u1ea3 qu\\u1ea3ng b\\u00e1 th\\u01b0\\u01a1ng hi\\u1ec7u t\\u1ed1t h\\u01a1n cho doanh nghi\\u1ec7p.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/B\\u00e0i vi\\u1ebft\\/341891816_106888785719696_5496069086420320950_n.jpg\\\" style=\\\"width: 800px; height: 500px;\\\" \\/><\\/p>\\r\\n\\r\\n<h2 id=\\\"hmenuid8\\\">Thi\\u1ebft k\\u1ebf profile c\\u00f4ng ty \\u1edf \\u0111\\u00e2u?<\\/h2>\\r\\n\\r\\n<p>\\u0110\\u1ec3 thi\\u1ebft k\\u1ebf profile c\\u00f4ng ty \\u0111\\u1eb9p trong \\u0111i\\u1ec1u ki\\u1ec7n c\\u00f4ng ty b\\u1ea1n ch\\u01b0a c\\u00f3 m\\u1ed9t \\u0111\\u00f4i ng\\u0169 thi\\u1ebft k\\u1ebf tay ngh\\u1ec1 cao th\\u00ec b\\u1ea1n c\\u00f3 th\\u1ec3 thu\\u00ea c\\u00e1c \\u0111\\u1ed1i t\\u00e1c b\\u00ean ngo\\u00e0i \\u0111\\u1ec3 th\\u1ef1c hi\\u1ec7n profile cho chuy\\u00ean nghi\\u1ec7p, th\\u00f4ng th\\u01b0\\u1eddng c\\u00e1c c\\u00f4ng ty thi\\u1ebft k\\u1ebf hay in \\u1ea5n s\\u1ebd cung c\\u1ea5p c\\u00e1c d\\u1ecbch v\\u1ee5 n\\u00e0y.<\\/p>\\r\\n\\r\\n<p>B\\u00ean c\\u1ea1nh \\u0111\\u00f3, b\\u1ea1n c\\u0169ng c\\u00f3 th\\u1ec3 t\\u00ecm \\u0111\\u1ebfn m\\u1ed9t s\\u1ed1 website h\\u1ed7 tr\\u1ee3 thi\\u1ebft k\\u1ebf profile \\u0111\\u1ec3 l\\u00e0m h\\u1ed3 s\\u01a1 n\\u0103ng l\\u1ef1c tr\\u00ean c\\u00e1c m\\u1eabu \\u0111\\u00e3 c\\u00f3 s\\u1eb5n. M\\u1ed9t s\\u1ed1 website m\\u00e0 b\\u1ea1n c\\u00f3 th\\u1ec3 tham kh\\u1ea3o nh\\u01b0&nbsp;<a href=\\\"https:\\/\\/www.canva.com\\/vi_vn\\/thiet-ke\\/brochure\\/\\\" rel=\\\"noopener nofollow\\\" target=\\\"_blank\\\">canva.com<\\/a>,&nbsp;<a href=\\\"https:\\/\\/rubicmarketing.com\\/mau-profile.html\\\" rel=\\\"noopener nofollow\\\" target=\\\"_blank\\\" title=\\\"rubicmarketing.com\\\">rubicmarketing.com<\\/a>,...<\\/p>\\r\\n\\r\\n<h2 id=\\\"hmenuid9\\\">L\\u00e0m th\\u1ebf n\\u00e0o \\u0111\\u1ec3 thi\\u1ebft k\\u1ebf profile c\\u00f4ng ty chuy\\u00ean nghi\\u1ec7p<\\/h2>\\r\\n\\r\\n<p>Sau \\u0111\\u00e2y l\\u00e0 m\\u1ed9t s\\u1ed1 b\\u00ed quy\\u1ebft gi\\u00fap b\\u1ea1n t\\u1ea1o m\\u1ed9t profile chuy\\u00ean nghi\\u1ec7p:<\\/p>\\r\\n\\r\\n<h4 id=\\\"hmenuid10\\\"><strong>N\\u00ean b\\u1eaft \\u0111\\u1ea7u v\\u1edbi nh\\u1eefng \\u0111i\\u1ec1u c\\u01a1 b\\u1ea3n<\\/strong><\\/h4>\\r\\n\\r\\n<p>Ph\\u1ea7n m\\u1edf \\u0111\\u1ea7u cu\\u1ed1n profile c\\u1ea7n g\\u1ea7n g\\u0169i v\\u00e0 thu h\\u00fat s\\u1ef1 ch\\u00fa \\u00fd c\\u1ee7a ng\\u01b0\\u1eddi \\u0111\\u1ecdc. Th\\u00f4ng th\\u01b0\\u1eddng cu\\u1ed1n profile s\\u1ebd b\\u1eaft \\u0111\\u1ea7u b\\u1eb1ng l\\u1eddi ng\\u1ecf, th\\u1ec3 hi\\u1ec7n thi\\u1ec7n ch\\u00ed k\\u00eau g\\u1ecdi h\\u1ee3p t\\u00e1c t\\u1eeb doanh nghi\\u1ec7p.<\\/p>\\r\\n\\r\\n<p>Ngo\\u00e0i ra, n\\u1ed9i dung v\\u1ec1 l\\u1ecbch s\\u1eed h\\u00ecnh th\\u00e0nh v\\u00e0 con \\u0111\\u01b0\\u1eddng ph\\u00e1t tri\\u1ec3n c\\u00f4ng ty c\\u0169ng c\\u1ea7n \\u0111\\u01b0\\u1ee3c ch\\u1ecdn l\\u1ecdc. Ng\\u01b0\\u1eddi \\u0111\\u1ecdc kh\\u00f4ng c\\u1ea7n bi\\u1ebft t\\u1ea5t c\\u1ea3 m\\u1ecdi th\\u00f4ng tin v\\u1ec1 ch\\u1eb7ng \\u0111\\u01b0\\u1eddng x\\u00e2y d\\u1ef1ng v\\u00e0 ph\\u00e1t tri\\u1ec3n c\\u1ee7a c\\u00f4ng ty b\\u1ea1n n\\u00ean ph\\u1ea7n n\\u00e0y c\\u00f3 th\\u1ec3 linh ho\\u1ea1t l\\u01b0\\u1ee3c b\\u1edbt nh\\u1eefng chi ti\\u1ebft quan tr\\u1ecdng.<\\/p>\\r\\n\\r\\n<p>Nh\\u1eefng th\\u00e0nh t\\u00edch n\\u1ed5i b\\u1eadt, b\\u1eb1ng khen ch\\u1ee9ng ch\\u1eadn t\\u1eeb c\\u00e1c t\\u1ed5 ch\\u1ee9c danh gi\\u00e1 s\\u1ebd l\\u00e0 nh\\u1eefng \\u0111i\\u1ec3m nh\\u1ea5n quan tr\\u1ecdng, b\\u1ea1n n\\u00ean \\u0111\\u01b0a v\\u00e0o profile. Tuy nhi\\u00ean, b\\u1ea1n ch\\u1ec9 n\\u00ean ch\\u1ecdn nh\\u1eefng th\\u00e0nh t\\u00edch n\\u1ed5i b\\u1eadt n\\u1ebfu c\\u00f4ng ty b\\u1ea1n c\\u00f3 nhi\\u1ec1u khen th\\u01b0\\u1edfng, v\\u00ec n\\u1ebfu \\u0111\\u01b0a v\\u00e0o qu\\u00e1 nhi\\u1ec1u s\\u1ebd g\\u00e2y r\\u1ed1i m\\u1eaft, m\\u1ea5t th\\u1ea9m m\\u1ef9.<\\/p>\\r\\n\\r\\n<h4 id=\\\"hmenuid11\\\"><strong>Gi\\u1ea3i th\\u00edch r\\u00f5 l\\u0129nh v\\u1ef1c ho\\u1ea1t \\u0111\\u1ed9ng c\\u1ee7a doanh nghi\\u1ec7p<\\/strong><\\/h4>\\r\\n\\r\\n<p>Profile c\\u1ea7n m\\u00f4 t\\u1ea3 c\\u1ee5 th\\u1ec3 m\\u00f4 h\\u00ecnh kinh doanh, nh\\u1eefng s\\u1ea3n ph\\u1ea9m, d\\u1ecbch v\\u1ee5 th\\u1ebf m\\u1ea1nh m\\u00e0 doanh nghi\\u1ec7p b\\u1ea1n cung c\\u1ea5p. B\\u1ea1n c\\u1ea7n ch\\u1ec9 ra nh\\u1eefng l\\u1ee3i \\u00edch v\\u00e0 gi\\u00e1 tr\\u1ecb m\\u00e0 kh\\u00e1ch h\\u00e0ng m\\u1ee5c ti\\u00eau s\\u1ebd nh\\u1eadn \\u0111\\u01b0\\u1ee3c th\\u00f4ng qua c\\u00e1c s\\u1ea3n ph\\u1ea9m v\\u00e0 d\\u1ecbch v\\u1ee5 c\\u1ee7a c\\u00f4ng ty b\\u1ea1n. T\\u1ea7m nh\\u00ecn \\u2013 S\\u1ee9 m\\u1ec7nh \\u2013 Gi\\u00e1 tr\\u1ecb c\\u1ed1t l\\u00f5i c\\u0169ng nh\\u1eb1m nh\\u1ea5n m\\u1ea1nh cho \\u0111i\\u1ec1u n\\u00e0y.<\\/p>\\r\\n\\r\\n<h4 id=\\\"hmenuid12\\\"><strong>N\\u00ean minh h\\u1ecda b\\u1eb1ng nh\\u1eefng con s\\u1ed1<\\/strong><\\/h4>\\r\\n\\r\\n<p>Nh\\u1eefng con s\\u1ed1 c\\u1ee5 th\\u1ec3 mang l\\u1ea1i h\\u00ecnh dung r\\u00f5 r\\u00e0ng h\\u01a1n t\\u1eeb ph\\u00eda kh\\u00e1ch h\\u00e0ng. B\\u1ea1n n\\u00ean ch\\u1ec9 ra c\\u00e1c s\\u1ed1 li\\u1ec7u v\\u1ec1 c\\u00f4ng su\\u1ea5t, s\\u1ea3n l\\u01b0\\u1ee3ng, doanh s\\u1ed1 m\\u00e0 c\\u00f4ng ty \\u0111\\u1ea1t \\u0111\\u01b0\\u1ee3c, c\\u1ea3 nh\\u1eefng d\\u1ef1 \\u0111o\\u00e1n trong t\\u01b0\\u01a1ng lai, l\\u1ee3i nhu\\u1eadn, s\\u1ed1 l\\u01b0\\u1ee3ng nh\\u00e2n vi\\u00ean v\\u00e0 nh\\u1eefng th\\u00f4ng tin t\\u00e0i ch\\u00ednh kh\\u00e1c c\\u00f3 \\u00edch cho ng\\u01b0\\u1eddi \\u0111\\u1ecdc. \\u0110i\\u1ec1u n\\u00e0y s\\u1ebd \\u0111\\u1eb7c bi\\u1ec7t quan tr\\u1ecdng n\\u1ebfu m\\u1ee5c \\u0111\\u00edch c\\u1ee7a cu\\u1ed1n profile l\\u00e0 k\\u00eau g\\u1ecdi \\u0111\\u1ea7u t\\u01b0 v\\u00e0 t\\u00ecm \\u0111\\u1ed1i t\\u00e1c kinh doanh.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"\\/data\\/cms-image\\/B\\u00e0i vi\\u1ebft\\/Airbus.jpeg\\\" style=\\\"width: 800px; height: 500px;\\\" \\/><\\/p>\\r\\n\\r\\n<h4 id=\\\"hmenuid13\\\"><strong>N\\u00ean minh h\\u1ecda b\\u1eb1ng bi\\u1ec3u \\u0111\\u1ed3, h\\u00ecnh \\u1ea3nh<\\/strong><\\/h4>\\r\\n\\r\\n<p>H\\u00ecnh \\u1ea3nh c\\u00f3 s\\u1ee9c m\\u1ea1nh g\\u1ea5p tr\\u0103m l\\u1ea7n l\\u1eddi n\\u00f3i. Nh\\u1eefng \\u0111\\u1ed3 th\\u1ecb, bi\\u1ec3u \\u0111\\u1ed3 v\\u00e0 nh\\u1eefng d\\u1eef li\\u1ec7u kh\\u00e1c \\u0111i k\\u00e8m s\\u1ebd gi\\u00fap cung c\\u1ea5p nhi\\u1ec1u th\\u00f4ng tin h\\u01a1n cho kh\\u00e1ch h\\u00e0ng m\\u1ed9t c\\u00e1ch tr\\u1ef1c quan nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<p>B\\u1eb1ng c\\u00e1ch tr\\u00ecnh b\\u00e0y n\\u00e0y, th\\u00f4ng tin trong profile tr\\u1edf n\\u00ean \\u0111\\u00e1ng tin c\\u1eady h\\u01a1n v\\u1edbi nh\\u1eefng d\\u1eef li\\u1ec7u ch\\u00ednh x\\u00e1c \\u0111\\u01b0\\u1ee3c hi\\u1ec3n th\\u1ecb \\u0111a chi\\u1ec1u. C\\u00e1c \\u0111\\u1ed1i t\\u00e1c kinh doanh v\\u00e0 c\\u00e1c nh\\u00e0 \\u0111\\u1ea7u t\\u01b0 s\\u1ebd hi\\u1ec3u c\\u00e1c b\\u00e1o c\\u00e1o t\\u00e0i ch\\u00ednh c\\u1ee7a doanh nghi\\u1ec7p t\\u1ed1t h\\u01a1n.<\\/p>\\r\\n\\r\\n<h4 id=\\\"hmenuid14\\\"><strong>N\\u00ean t\\u1ed5 ch\\u1ee9c th\\u00f4ng tin m\\u1ed9t c\\u00e1ch d\\u1ec5 hi\\u1ec3u<\\/strong><\\/h4>\\r\\n\\r\\n<p>B\\u1ea1n n\\u00ean t\\u1ed5 ch\\u1ee9c th\\u00f4ng tin c\\u00e0ng d\\u1ec5 hi\\u1ec3u c\\u00e0ng t\\u1ed1t. C\\u00e1c y\\u1ebfu t\\u1ed1 c\\u1ea7n \\u0111\\u1ea1t \\u0111\\u01b0\\u1ee3c: th\\u00f4ng tin ng\\u1eafn g\\u1ecdn, s\\u00fac t\\u00edch, tr\\u1ecdng t\\u00e2m, c\\u1ee5 th\\u1ec3 v\\u00e0 m\\u1ed9t k\\u1ebft c\\u1ea5u m\\u1ea1ch l\\u1ea1c d\\u1ec5 hi\\u1ec3u.<\\/p>\\r\\n\\r\\n<p>\\u0110\\u00e2y l\\u00e0 l\\u00fd do v\\u00ec sao c\\u00e1c cu\\u1ed1n profile doanh nghi\\u1ec7p th\\u01b0\\u1eddng theo m\\u1ed9t m\\u1eabu d\\u00e0n trang c\\u01a1 b\\u1ea3n v\\u00e0 ch\\u1ec9 bao g\\u1ed3m nh\\u1eefng th\\u00f4ng tin thi\\u1ebft y\\u1ebfu, h\\u1eefu \\u00edch.<\\/p>\\r\\n\\r\\n<p><em>Tr\\u00ean \\u0111\\u00e2y l\\u00e0 b\\u00e0i vi\\u1ebft gi\\u1edbi thi\\u1ec7u \\u0111\\u1ebfn b\\u1ea1n v\\u1ec1 h\\u1ed3 s\\u01a1 n\\u0103ng l\\u1ef1c v\\u00e0 c\\u00e1c y\\u1ebfu t\\u1ed1 c\\u1ea7n c\\u00f3 c\\u1ee7a m\\u1ed9t b\\u1ed9 h\\u1ed3 s\\u01a1 n\\u0103ng l\\u1ef1c chuy\\u00ean nghi\\u1ec7p. Mong r\\u1eb1ng v\\u1edbi nh\\u1eefng th\\u00f4ng tin tr\\u00ean, b\\u1ea1n s\\u1ebd th\\u1ef1c hi\\u1ec7n h\\u1ed3 s\\u01a1 n\\u0103ng l\\u1ef1c \\u1ea5n t\\u01b0\\u1ee3ng v\\u00e0 thuy\\u1ebft ph\\u1ee5c c\\u00e1c nh\\u00e0 \\u0111\\u1ea7u t\\u01b0 h\\u01a1n nh\\u00e9!<\\/em><\\/p>\\r\\n\\r\\n<p>Global Brand Design - GBD cung c\\u1ea5p d\\u1ecbch v\\u1ee5 thi\\u1ebft k\\u1ebf profile chuy\\u00ean nghi\\u1ec7p, \\u0111\\u1ea3m b\\u1ea3o \\u0111em \\u0111\\u1ebfn cho doanh nghi\\u1ec7p c\\u1ee7a b\\u1ea1n m\\u1ed9t profile \\u1ea5n t\\u01b0\\u1ee3ng, \\u0111\\u1ed9c \\u0111\\u00e1o v\\u00e0 thu h\\u00fat. Ch\\u00fang t\\u00f4i lu\\u00f4n s\\u1eb5n l\\u00f2ng \\u0111\\u00e1p \\u1ee9ng m\\u1ecdi nhu c\\u1ea7u c\\u1ee7a b\\u1ea1n!<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/Bài viết/PR.png', NULL, 1, 0, 4, 'active', 1, 5, '2024-06-16 07:28:49', '2024-06-21 15:12:51', 'lorem-ipsum-dolor-sit-amet-consectetuer-adipiscing-elit');
INSERT INTO `tb_cms_posts` (`id`, `taxonomy_id`, `resources_id`, `is_type`, `title`, `json_params`, `image`, `image_thumb`, `is_featured`, `count_visited`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `alias`) VALUES
(408, 91, NULL, 'post', 'Yếu tố phong thuỷ trong thiết kế logo doanh nghiệp', '{\"brief\":{\"vi\":\"Phong th\\u1ee7y l\\u00e0 m\\u1ed9t l\\u0129nh v\\u1ef1c kh\\u00f3 nh\\u01b0ng n\\u00f3 c\\u0169ng l\\u00e0 m\\u1ed9t trong nh\\u1eefng y\\u1ebfu t\\u1ed1 \\u0111\\u01b0\\u1ee3c coi l\\u00e0 c\\u00f3 \\u1ea3nh h\\u01b0\\u1edfng l\\u1edbn \\u0111\\u1ebfn s\\u1ef1 ph\\u00e1t tri\\u1ec3n c\\u1ee7a m\\u1ed9t ng\\u01b0\\u1eddi, m\\u1ed9t doanh nghi\\u1ec7p. Do \\u0111\\u00f3, trong b\\u00e0i vi\\u1ebft n\\u00e0y, GBD\\u00a0s\\u1ebd \\u0111em \\u0111\\u1ebfn m\\u1ed9t s\\u1ed1 ki\\u1ebfn th\\u1ee9c v\\u00e0 g\\u1ee3i \\u00fd v\\u1ec1 vi\\u1ec7c \\u00e1p d\\u1ee5ng c\\u00e1c y\\u1ebfu t\\u1ed1 phong th\\u1ee7y v\\u00e0o thi\\u1ebft k\\u1ebf logo.\"},\"content\":{\"vi\":\"<h1>Y\\u1ebfu t\\u1ed1 phong thu\\u1ef7 trong thi\\u1ebft k\\u1ebf logo doanh nghi\\u1ec7p<\\/h1>\\r\\n\\r\\n<p>Phong th\\u1ee7y l\\u00e0 m\\u1ed9t l\\u0129nh v\\u1ef1c kh\\u00f3 nh\\u01b0ng n\\u00f3 c\\u0169ng l\\u00e0 m\\u1ed9t trong nh\\u1eefng y\\u1ebfu t\\u1ed1 \\u0111\\u01b0\\u1ee3c coi l\\u00e0 c\\u00f3 \\u1ea3nh h\\u01b0\\u1edfng l\\u1edbn \\u0111\\u1ebfn s\\u1ef1 ph\\u00e1t tri\\u1ec3n c\\u1ee7a m\\u1ed9t ng\\u01b0\\u1eddi, m\\u1ed9t doanh nghi\\u1ec7p. Do \\u0111\\u00f3, trong b\\u00e0i vi\\u1ebft n\\u00e0y, GBD&nbsp; xin \\u0111\\u01b0a ra m\\u1ed9t v\\u00e0i g\\u1ee3i \\u00fd v\\u1ec1 vi\\u1ec7c \\u00e1p d\\u1ee5ng c\\u00e1c y\\u1ebfu t\\u1ed1 phong th\\u1ee7y v\\u00e0o thi\\u1ebft k\\u1ebf logo c\\u00f4ng ty.<\\/p>\\r\\n\\r\\n<p>Hi v\\u1ecdng nh\\u1eefng th\\u00f4ng tin sau \\u0111\\u00e2y c\\u00f3 th\\u1ec3 gi\\u00fap b\\u1ea1n hi\\u1ec3u \\u0111\\u01b0\\u1ee3c ph\\u1ea7n n\\u00e0o v\\u1ec1 phong thu\\u1ef7 c\\u00e1ch t\\u1ea1o ra m\\u1ed9t m\\u1eabu logo h\\u1ee3p phong th\\u1ee7y.<\\/p>\\r\\n\\r\\n<h2>Phong Th\\u1ee7y L\\u00e0 G\\u00ec?<\\/h2>\\r\\n\\r\\n<p>Phong thu\\u1ef7 l\\u00e0 m\\u1ed9t trong 5 ngh\\u1ec7 thu\\u1eadt si\\u00eau h\\u00ecnh h\\u1ecdc c\\u1ee7a Trung Qu\\u1ed1c chuy\\u00ean nghi\\u00ean c\\u1ee9u v\\u1ec1 s\\u1ef1 \\u1ea3nh h\\u01b0\\u1edfng c\\u1ee7a h\\u01b0\\u1edbng kh\\u00ed, h\\u01b0\\u1edbng gi\\u00f3, m\\u1ea1ch n\\u01b0\\u1edbc, m\\u00e0u s\\u1eafc, h\\u00ecnh kh\\u1ed1i,\\u2026 \\u0111\\u1ebfn h\\u1ecda ph\\u00fac v\\u00e0 \\u0111\\u1eddi s\\u1ed1ng c\\u1ee7a con ng\\u01b0\\u1eddi. Phong th\\u1ee7y li\\u00ean quan \\u0111\\u1ebfn c\\u00e1t hung, th\\u1ecd y\\u1ec3u, h\\u1ecda ph\\u00fac, s\\u1ef1 c\\u00f9ng th\\u00f4ng c\\u1ee7a nh\\u00e2n s\\u1ef1.<\\/p>\\r\\n\\r\\n<p>L\\u00fd thuy\\u1ebft v\\u1ec1 phong th\\u1ee7y r\\u1ea5t r\\u1ed9ng, n\\u00f3 \\u0111\\u1ec1 c\\u1eadp \\u0111\\u1ebfn h\\u00e0ng lo\\u1ea1t c\\u00e1c v\\u1ea5n \\u0111\\u1ec1 nh\\u01b0 \\u0111\\u1ecba h\\u00ecnh, \\u0111\\u1ecba th\\u1ebf, h\\u01b0\\u1edbng \\u0111\\u1ea5t, h\\u01b0\\u1edbng gi\\u00f3, d\\u00f2ng n\\u01b0\\u1edbc, h\\u00ecnh d\\u1ea1ng, b\\u1ed1 c\\u1ee5c, c\\u00e1ch ch\\u1ecdn m\\u00e0u s\\u1eafc thi\\u1ebft k\\u1ebf logo,\\u2026.<\\/p>\\r\\n\\r\\n<p>Trong b\\u00e0i vi\\u1ebft n\\u00e0y, GBD ch\\u1ec9 xin \\u0111\\u1ec1 c\\u1eadp \\u0111\\u1ebfn c\\u00e1c v\\u1ea5n \\u0111\\u1ec1 phong th\\u1ee7y trong thi\\u1ebft k\\u1ebf logo v\\u00e0 nh\\u1eadn di\\u1ec7n th\\u01b0\\u01a1ng hi\\u1ec7u.<\\/p>\\r\\n\\r\\n<h2>T\\u1ea1i Sao Ph\\u1ea3i Quan T\\u00e2m \\u0110\\u1ebfn Phong Th\\u1ee7y Khi Thi\\u1ebft K\\u1ebf Logo?<\\/h2>\\r\\n\\r\\n<p>\\u0110\\u1ebfn t\\u1eadn ng\\u00e0y nay, v\\u1eabn ch\\u01b0a c\\u00f3 b\\u1ea5t k\\u1ef3 b\\u1eb1ng ch\\u1ee9ng khoa h\\u1ecdc n\\u00e0o ch\\u1ee9ng minh \\u0111\\u01b0\\u1ee3c phong th\\u1ee7y c\\u00f3 th\\u1eadt v\\u00e0 phong th\\u1ee7y v\\u1eabn lu\\u00f4n b\\u1ecb c\\u1ed9ng \\u0111\\u1ed3ng c\\u00e1c nh\\u00e0 khoa h\\u1ecdc coi l\\u00e0 gi\\u1ea3.<\\/p>\\r\\n\\r\\n<p>D\\u1eabu c\\u00f3 ho\\u00e0i nghi, nh\\u01b0ng x\\u01b0a nay phong th\\u1ee7y v\\u1eabn \\u0111\\u00f3ng m\\u1ed9t vai tr\\u00f2 h\\u1ebft s\\u1ee9c quan tr\\u1ecdng trong x\\u00e2y d\\u1ef1ng, kinh doanh. Ng\\u01b0\\u1eddi ta cho r\\u1eb1ng, phong th\\u1ee7y c\\u00f3 \\u1ea3nh h\\u01b0\\u1edfng l\\u1edbn t\\u1edbi v\\u1eadn m\\u1ec7nh c\\u0169ng nh\\u01b0 s\\u1ef1 th\\u00e0nh c\\u00f4ng c\\u1ee7a doanh nghi\\u1ec7p, c\\u1ee7a ng\\u01b0\\u1eddi \\u0111\\u1ea1i di\\u1ec7n doanh nghi\\u1ec7p.<\\/p>\\r\\n\\r\\n<p>Tr\\u01b0\\u1edbc \\u0111\\u00e2y, thu\\u1eadt phong th\\u1ee7y ch\\u1ee7 y\\u1ebfu \\u0111\\u01b0\\u1ee3c \\u1ee9ng d\\u1ee5ng trong l\\u0129nh v\\u1ef1c x\\u00e2y d\\u1ef1ng (nh\\u00e0 c\\u1eeda, m\\u1ed3 m\\u1ea3, l\\u1ef1a ch\\u1ecdn v\\u1ecb tr\\u00ed,\\u2026), nh\\u01b0ng \\u0111\\u1ebfn nay nh\\u1eefng ng\\u01b0\\u1eddi l\\u00e0m trong l\\u0129nh v\\u1ef1c thi\\u1ebft k\\u1ebf logo c\\u0169ng ng\\u00e0y c\\u00e0ng quan t\\u00e2m \\u0111\\u1ebfn y\\u1ebfu t\\u1ed1 phong th\\u1ee7y h\\u01a1n.<\\/p>\\r\\n\\r\\n<p>Theo h\\u1ecd, logo l\\u00e0 m\\u1ed9t y\\u1ebfu t\\u1ed1 c\\u1ef1c k\\u1ef3 quan tr\\u1ecdng c\\u1ee7a doanh nghi\\u1ec7p, n\\u00f3 g\\u1ea7n nh\\u01b0 g\\u1eafn li\\u1ec1n v\\u1edbi ho\\u1ea1t \\u0111\\u1ed9ng c\\u1ee7a m\\u1ed9t c\\u00f4ng ty. V\\u00ec th\\u1ebf, gi\\u1ed1ng nh\\u01b0 x\\u00e2y d\\u1ef1ng nh\\u00e0 c\\u1eeda, logo kh\\u00f4ng nh\\u1eefng ph\\u1ea3i \\u1ea5n t\\u01b0\\u1ee3ng \\u0111\\u1ec3 thu h\\u00fat s\\u1ef1 ch\\u00fa \\u00fd c\\u1ee7a kh\\u00e1ch h\\u00e0ng m\\u00e0 n\\u00f3 c\\u00f2n c\\u1ea7n h\\u1ee3p m\\u1ec7nh v\\u1edbi ng\\u01b0\\u1eddi ch\\u1ee7 doanh nghi\\u1ec7p \\u0111\\u1ec3 ho\\u1ea1t \\u0111\\u1ed9ng c\\u1ee7a c\\u1ea3 c\\u00f4ng ty thu\\u1eadn bu\\u1ed3m, xu\\u00f4i gi\\u00f3, kh\\u00f4ng g\\u1eb7p kh\\u00f3 kh\\u0103n, tr\\u1eafc tr\\u1edf.<\\/p>\\r\\n\\r\\n<h2>Th\\u1ebf N\\u00e0o L\\u00e0 Phong Th\\u1ee7y Trong Thi\\u1ebft K\\u1ebf Logo?<\\/h2>\\r\\n\\r\\n<p>Thi\\u1ebft k\\u1ebf logo th\\u00f4ng th\\u01b0\\u1eddng \\u0111\\u00e3 kh\\u00f3, thi\\u1ebft k\\u1ebf logo h\\u1ee3p phong th\\u1ee7y l\\u1ea1i c\\u00e0ng kh\\u00f3 h\\u01a1n g\\u1ea5p nhi\\u1ec1u l\\u1ea7n. M\\u1ed9t logo h\\u1ee3p phong th\\u1ee7y ph\\u1ea3i c\\u00f3 h\\u00ecnh kh\\u1ed1i, \\u0111\\u01b0\\u1eddng n\\u00e9t, m\\u00e0u s\\u1eafc ph\\u00f9 h\\u1ee3p v\\u1edbi c\\u00e1c thuy\\u1ebft \\u00c2m D\\u01b0\\u01a1ng, Ng\\u0169 H\\u00e0nh.<\\/p>\\r\\n\\r\\n<h3>C\\u00e1ch Thi\\u1ebft K\\u1ebf Logo H\\u1ee3p Phong Th\\u1ee7y<\\/h3>\\r\\n\\r\\n<p><em>Thi\\u1ebft k\\u1ebf logo h\\u1ee3p phong th\\u1ee7y<\\/em><\\/p>\\r\\n\\r\\n<p>&nbsp;M\\u1ed9t logo \\u0111\\u01b0\\u1ee3c coi l\\u00e0 h\\u1ee3p phong th\\u1ee7y ph\\u1ea3i \\u0111\\u00e1p \\u1ee9ng \\u0111\\u01b0\\u1ee3c c\\u00e1c y\\u1ebfu t\\u1ed1 nh\\u01b0 sau:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\u0110\\u01b0\\u1eddng n\\u00e9t tr\\u00ean logo ph\\u1ea3i h\\u00e0i h\\u00f2a, c\\u00f3 s\\u1ef1 ti\\u1ebfp n\\u1ed1i, h\\u1ea1n ch\\u1ebf t\\u1ea1o ra c\\u00e1c g\\u00f3c nh\\u1ecdn g\\u00e2y c\\u1ea3m gi\\u00e1c b\\u1ea5t an cho ng\\u01b0\\u1eddi nh\\u00ecn. \\u0110\\u1eb7c bi\\u1ec7t ph\\u1ea3i tr\\u00e1nh thi\\u1ebft k\\u1ebf c\\u00e1c g\\u00f3c nh\\u1ecdn ch\\u0129a th\\u1eb3ng v\\u00e0o t\\u00ean c\\u00f4ng ty, t\\u00ean ng\\u01b0\\u1eddi ho\\u1eb7c c\\u00e1c v\\u0103n b\\u1ea3n li\\u00ean quan,\\u2026<\\/li>\\r\\n\\t<li>M\\u00e0u s\\u1eafc c\\u1ee7a logo ph\\u1ea3i ph\\u00f9 h\\u1ee3p v\\u1edbi thuy\\u1ebft \\u00c2m D\\u01b0\\u01a1ng - Ng\\u0169 H\\u00e0nh.&nbsp;<\\/li>\\r\\n\\t<li>\\u0110\\u1eb7c t\\u00ednh \\u00e2m d\\u01b0\\u01a1ng c\\u1ee7a Logo c\\u1ea7n c\\u00f3 t\\u00e1c d\\u1ee5ng c\\u00e2n b\\u1eb1ng \\u00e2m d\\u01b0\\u01a1ng h\\u00ecnh th\\u00e1i c\\u1ee7a ch\\u1ee7 doanh nghi\\u1ec7p. Ch\\u1eb3ng h\\u1ea1n ch\\u1ee7 doanh nghi\\u1ec7p m\\u1ec7nh \\u00c2m th\\u00ec logo n\\u00ean m\\u1ec7nh D\\u01b0\\u01a1ng v\\u00e0 ng\\u01b0\\u1ee3c l\\u1ea1i, ch\\u1ee7 doanh nghi\\u1ec7p m\\u1ec7nh D\\u01b0\\u01a1ng th\\u00ec logo n\\u00ean m\\u1ec7nh \\u00c2m.<\\/li>\\r\\n\\t<li>Ng\\u0169 H\\u00e0nh c\\u1ee7a logo c\\u1ea7n ph\\u1ea3i v\\u1eeba b\\u1ed5 tr\\u1ee3 cho Ni\\u00ean M\\u1ec7nh v\\u1eeba c\\u00e2n b\\u1eb1ng T\\u1ee9 Tr\\u1ee5 M\\u1ec7nh c\\u1ee7a ch\\u1ee7 doanh nghi\\u1ec7p. Kh\\u00f4ng s\\u1eed d\\u1ee5ng c\\u00e1c h\\u00e0nh kh\\u1eafc ch\\u1ebf v\\u1edbi ni\\u00ean m\\u1ec7nh c\\u1ee7a ch\\u1ee7 doanh nghi\\u1ec7p ho\\u1eb7c c\\u00e1c h\\u00e0nh qu\\u00e1 d\\u01b0 th\\u1eeba trong T\\u1ee9 Tr\\u1ee5 M\\u1ec7nh.<\\/li>\\r\\n\\t<li>Logo ph\\u1ea3i r\\u00f5 r\\u00e0ng, m\\u1ea1ch l\\u1ea1c t\\u1ea1o ra lu\\u1ed3ng kh\\u00ed l\\u01b0u th\\u00f4ng thu\\u1eadn l\\u1ee3i, tr\\u00e1nh t\\u1ea1o ra c\\u00e1c h\\u00ecnh \\u1ea3nh mang c\\u1ea3m gi\\u00e1c b\\u00ed b\\u00e1ch.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h3>Thi\\u1ebft K\\u1ebf Logo Ph\\u00f9 H\\u1ee3p V\\u1edbi Nguy\\u00ean L\\u00fd T\\u01b0\\u01a1ng Sinh, T\\u01b0\\u01a1ng Kh\\u1eafc Trong Phong Th\\u1ee7y<\\/h3>\\r\\n\\r\\n<p><strong>Ng\\u0169 h\\u00e0nh v\\u00e0 m\\u1ed1i quan h\\u1ec7 T\\u01b0\\u01a1ng Sinh, T\\u01b0\\u01a1ng Kh\\u1eafc<\\/strong><\\/p>\\r\\n\\r\\n<p>H\\u1ecdc thuy\\u1ebft Ng\\u0169 h\\u00e0nh di\\u1ec5n gi\\u1ea3i sinh h\\u1ecdc c\\u1ee7a v\\u1ea1n v\\u1eadt qua hai nguy\\u00ean l\\u00fd c\\u01a1 b\\u1ea3n T\\u01b0\\u01a1ng sinh (Sinh) v\\u00e0 T\\u01b0\\u01a1ng kh\\u1eafc (kh\\u1eafc). T\\u01b0\\u01a1ng sinh c\\u00f3 ngh\\u0129a l\\u00e0 gi\\u00fap \\u0111\\u1ee1 nhau \\u0111\\u1ec3 c\\u00f9ng ph\\u00e1t tri\\u1ec3n, T\\u01b0\\u01a1ng kh\\u1eafc c\\u00f3 ngh\\u0129a l\\u00e0 \\u00e1p ch\\u1ebf nhau.<\\/p>\\r\\n\\r\\n<p>Trong m\\u1ed1i quan h\\u1ec7 Sinh th\\u00ec Th\\u1ed5 sinh Kim, Kim sinh Th\\u1ee7y, Th\\u1ee7y sinh M\\u1ed9c, M\\u1ed9c sinh H\\u1ecfa, H\\u1ecfa sinh Th\\u1ed5 (<a href=\\\"https:\\/\\/baomoi.com\\/hieu-ve-ngu-hanh-tuong-sinh-tuong-khac-nhu-the-nao-moi-la-dung\\/c\\/21678461.epi\\\" rel=\\\"nofollow noopener noreferrer\\\" target=\\\"_blank\\\"><em>baomoi.com<\\/em><\\/a>)<\\/p>\\r\\n\\r\\n<p>Trong m\\u1ed1i quan h\\u1ec7 Kh\\u1eafc th\\u00ec Th\\u1ed5 kh\\u1eafc Th\\u1ee7y, Th\\u1ee7y kh\\u1eafc H\\u1ecfa, H\\u1ecfa kh\\u1eafc Kim, Kim kh\\u1eafc M\\u1ed9c v\\u00e0 M\\u1ed9c kh\\u1eafc Th\\u1ed5.<\\/p>\\r\\n\\r\\n<p>Khi \\u1ee9ng d\\u1ee5ng c\\u00e1c y\\u1ebfu t\\u1ed1 Phong th\\u1ee7y, \\u00c2m D\\u01b0\\u01a1ng, Ng\\u0169 h\\u00e0nh v\\u00e0o thi\\u1ebft k\\u1ebf logo, ng\\u01b0\\u1eddi ta th\\u01b0\\u1eddng l\\u1ef1a ch\\u1ecdn nh\\u1eefng m\\u00e0u s\\u1eafc \\u0111\\u1ea1i di\\u1ec7n ho\\u1eb7c nh\\u1eefng m\\u00e0u s\\u1eafc \\u0111\\u1ea1i di\\u1ec7n cho m\\u1ec7nh T\\u01b0\\u01a1ng sinh (tr\\u00e1nh c\\u00e1c m\\u00e0u \\u0111\\u1ea1i di\\u1ec7n cho m\\u1ec7nh t\\u01b0\\u01a1ng kh\\u1eafc) v\\u1edbi m\\u1ec7nh c\\u1ee7a ch\\u1ee7 doanh nghi\\u1ec7p v\\u1edbi mong mu\\u1ed1n ph\\u00e1t tri\\u1ec3n v\\u00e0 \\u0111\\u1ea1t \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u th\\u00e0nh c\\u00f4ng h\\u01a1n.<\\/p>\\r\\n\\r\\n<h3>M\\u00e0u S\\u1eafc H\\u1ee3p Phong Th\\u1ee7y Trong Thi\\u1ebft K\\u1ebf Logo<\\/h3>\\r\\n\\r\\n<p><strong><em>M\\u00e0u s\\u1eafc theo phong th\\u1ee7y<\\/em><\\/strong><\\/p>\\r\\n\\r\\n<p>Thi\\u1ebft k\\u1ebf logo ph\\u00f9 h\\u1ee3p v\\u1edbi m\\u00e0u s\\u1eafc trong phong th\\u1ee7y s\\u1ebd t\\u1ea1o ra s\\u1ef1 h\\u00e0i h\\u00f2a v\\u1ec1 \\u00e2m d\\u01b0\\u01a1ng. \\u00c2m trong Phong th\\u1ee7y l\\u00e0 s\\u1eafc t\\u1ed1i (h\\u1ea5p th\\u1ee5 m\\u00e0u); D\\u01b0\\u01a1ng trong Phong th\\u1ee7y l\\u00e0 s\\u1eafc s\\u00e1ng (ph\\u1ea3n m\\u00e0u). Ch\\u00ednh v\\u00ec th\\u1ebf, c\\u00e1ch ch\\u1ecdn m\\u00e0u s\\u1eafc logo&nbsp;\\u0111\\u01b0\\u1ee3c coi l\\u00e0 m\\u1ed9t y\\u1ebfu t\\u1ed1 c\\u1ef1c k\\u1ef3 quan tr\\u1ecdng trong l\\u0129nh v\\u1ef1c ki\\u1ebfn tr\\u00fac, thi\\u1ebft k\\u1ebf (bao g\\u1ed3m thi\\u1ebft k\\u1ebf logo), n\\u00f3 c\\u00f3 t\\u00e1c d\\u1ee5ng t\\u0103ng c\\u01b0\\u1eddng nh\\u1eefng y\\u1ebfu t\\u1ed1 thu\\u1eadn l\\u1ee3i v\\u00e0 h\\u1ea1n ch\\u1ebf \\u0111i\\u1ec1u b\\u1ea5t l\\u1ee3i.<\\/p>\\r\\n\\r\\n<p>Theo h\\u1ecdc thuy\\u1ebft Ng\\u0169 h\\u00e0nh, m\\u00f4i tr\\u01b0\\u1eddng \\u0111\\u01b0\\u1ee3c c\\u1ea5u th\\u00e0nh t\\u1eeb 5 nguy\\u00ean t\\u1ed1 c\\u01a1 b\\u1ea3n: Th\\u1ed5 (\\u0111\\u1ea5t); Kim (kim lo\\u1ea1i); Th\\u1ee7y (n\\u01b0\\u1edbc); M\\u1ed9c (c\\u00e2y c\\u1ed1i) v\\u00e0 H\\u1ecfa (l\\u1eeda). M\\u1ed7i nguy\\u00ean t\\u1ed1 n\\u00e0y \\u0111\\u01b0\\u1ee3c \\u0111\\u1eb7c tr\\u01b0ng b\\u1edfi c\\u00e1c s\\u1eafc th\\u00e1i m\\u00e0u kh\\u00e1c nhau, c\\u1ee5 th\\u1ec3 nh\\u01b0 sau:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Th\\u1ed5: N\\u00e2u, v\\u00e0ng, cam<\\/li>\\r\\n\\t<li>Kim: Tr\\u1eafng, b\\u1ea1c<\\/li>\\r\\n\\t<li>Th\\u1ee7y: Xanh bi\\u1ec3n th\\u1eabm, \\u0111en<\\/li>\\r\\n\\t<li>M\\u1ed9c: Xanh, l\\u1ee5c<\\/li>\\r\\n\\t<li>H\\u1ecfa: \\u0110\\u1ecf, t\\u00edm (<a href=\\\"https:\\/\\/dantri.com.vn\\/doi-song\\/lua-chon-mau-sac-theo-phong-thuy-cho-biet-thu-20170428065423476.htm\\\" rel=\\\"nofollow noopener noreferrer\\\" target=\\\"_blank\\\">dantri.com.vn<\\/a>)<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h2>\\u00c1p D\\u1ee5ng C\\u00e1c Y\\u1ebfu T\\u1ed1 Phong Th\\u1ee7y Trong Thi\\u1ebft K\\u1ebf Logo<\\/h2>\\r\\n\\r\\n<p>T\\u1eeb nh\\u1eefng th\\u00f4ng tin c\\u01a1 b\\u1ea3n v\\u1ec1 thu\\u1eadt phong th\\u1ee7y m\\u00e0 t\\u00f4i t\\u00ecm \\u0111\\u01b0\\u1ee3c, t\\u00f4i xin \\u0111\\u01b0a ra m\\u1ed9t s\\u1ed1 g\\u1ee3i \\u00fd gi\\u00fap c\\u00e1c b\\u1ea1n c\\u00f3 th\\u1ec3 c\\u00f3 \\u0111\\u01b0\\u1ee3c nh\\u1eefng m\\u1eabu thi\\u1ebft k\\u1ebf logo h\\u1ee3p v\\u1edbi m\\u1ec7nh c\\u1ee7a m\\u00ecnh \\u0111\\u1ec3 c\\u00f4ng vi\\u1ec7c l\\u00e0m \\u0103n lu\\u00f4n su\\u00f4n s\\u1ebb.<\\/p>\\r\\n\\r\\n<h3>Thi\\u1ebft K\\u1ebf Logo C\\u00f4ng Ty Cho Ch\\u1ee7 Doanh Nghi\\u1ec7p M\\u1ec7nh Kim<\\/h3>\\r\\n\\r\\n<p><img alt=\\\"c\\u00e1ch thi\\u1ebft k\\u1ebf logo theo phong th\\u1ee7y\\\" data-orig-sizes=\\\"(max-width: 850px) 100vw, 850px\\\" data-orig-src=\\\"https:\\/\\/logoaz.net\\/wp-content\\/uploads\\/2019\\/01\\/thiet-ke-logo-cho-chu-doanh-nghiep-menh-kim-1.png\\\" data-sizes=\\\"auto\\\" data-srcset=\\\"https:\\/\\/logoaz.net\\/wp-content\\/uploads\\/2019\\/01\\/thiet-ke-logo-cho-chu-doanh-nghiep-menh-kim-1-200x137.png 200w, https:\\/\\/logoaz.net\\/wp-content\\/uploads\\/2019\\/01\\/thiet-ke-logo-cho-chu-doanh-nghiep-menh-kim-1-300x206.png 300w, https:\\/\\/logoaz.net\\/wp-content\\/uploads\\/2019\\/01\\/thiet-ke-logo-cho-chu-doanh-nghiep-menh-kim-1-400x275.png 400w, https:\\/\\/logoaz.net\\/wp-content\\/uploads\\/2019\\/01\\/thiet-ke-logo-cho-chu-doanh-nghiep-menh-kim-1-600x412.png 600w, https:\\/\\/logoaz.net\\/wp-content\\/uploads\\/2019\\/01\\/thiet-ke-logo-cho-chu-doanh-nghiep-menh-kim-1-768x528.png 768w, https:\\/\\/logoaz.net\\/wp-content\\/uploads\\/2019\\/01\\/thiet-ke-logo-cho-chu-doanh-nghiep-menh-kim-1-800x550.png 800w, https:\\/\\/logoaz.net\\/wp-content\\/uploads\\/2019\\/01\\/thiet-ke-logo-cho-chu-doanh-nghiep-menh-kim-1.png 1010w\\\" height=\\\"584\\\" loading=\\\"lazy\\\" sizes=\\\"809px\\\" src=\\\"https:\\/\\/logoaz.net\\/wp-content\\/uploads\\/2019\\/01\\/thiet-ke-logo-cho-chu-doanh-nghiep-menh-kim-1.png\\\" srcset=\\\"https:\\/\\/logoaz.net\\/wp-content\\/uploads\\/2019\\/01\\/thiet-ke-logo-cho-chu-doanh-nghiep-menh-kim-1-200x137.png 200w, https:\\/\\/logoaz.net\\/wp-content\\/uploads\\/2019\\/01\\/thiet-ke-logo-cho-chu-doanh-nghiep-menh-kim-1-300x206.png 300w, https:\\/\\/logoaz.net\\/wp-content\\/uploads\\/2019\\/01\\/thiet-ke-logo-cho-chu-doanh-nghiep-menh-kim-1-400x275.png 400w, https:\\/\\/logoaz.net\\/wp-content\\/uploads\\/2019\\/01\\/thiet-ke-logo-cho-chu-doanh-nghiep-menh-kim-1-600x412.png 600w, https:\\/\\/logoaz.net\\/wp-content\\/uploads\\/2019\\/01\\/thiet-ke-logo-cho-chu-doanh-nghiep-menh-kim-1-768x528.png 768w, https:\\/\\/logoaz.net\\/wp-content\\/uploads\\/2019\\/01\\/thiet-ke-logo-cho-chu-doanh-nghiep-menh-kim-1-800x550.png 800w, https:\\/\\/logoaz.net\\/wp-content\\/uploads\\/2019\\/01\\/thiet-ke-logo-cho-chu-doanh-nghiep-menh-kim-1.png 1010w\\\" width=\\\"850\\\" \\/><\\/p>\\r\\n\\r\\n<p><em>Logo h\\u1ee3p ch\\u1ee7 doanh nghi\\u1ec7p m\\u1ec7nh Kim<\\/em><\\/p>\\r\\n\\r\\n<p><strong><em>H\\u00ecnh kh\\u1ed1i:<\\/em><\\/strong>&nbsp;M\\u1eabu logo c\\u1ee7a ng\\u01b0\\u1eddi m\\u1ec7nh Kim n\\u00ean \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf v\\u1edbi h\\u00ecnh \\u0111\\u1ea1i di\\u1ec7n m\\u1ec7nh Kim nh\\u01b0 h\\u00ecnh tr\\u00f2n, cong, b\\u00e1n nguy\\u1ec7t; b\\u1ea1n c\\u0169ng c\\u00f3 th\\u1ec3 ch\\u1ecdn thi\\u1ebft k\\u1ebf v\\u1edbi h\\u00ecnh \\u0111\\u1ea1i di\\u1ec7n cho m\\u1ec7nh Th\\u1ed5 (m\\u1ec7nh t\\u01b0\\u01a1ng sinh v\\u1edbi m\\u1ec7nh Kim) nh\\u01b0 h\\u00ecnh vu\\u00f4ng, h\\u00ecnh thoi.<\\/p>\\r\\n\\r\\n<p><strong><em>M\\u00e0u s\\u1eafc:<\\/em><\\/strong>&nbsp;N\\u00ean ch\\u1ecdn m\\u00e0u \\u0111\\u1ea1i di\\u1ec7n (tr\\u1eafng, b\\u1ea1c) ho\\u1eb7c m\\u00e0u t\\u01b0\\u01a1ng sinh nh\\u01b0 v\\u00e0ng \\u0111\\u1ea5t, cam \\u1ea5m ho\\u1eb7c n\\u00e2u tr\\u1ea7m (m\\u00e0u \\u0111\\u1ea1i di\\u1ec7n th\\u1ed5).<\\/p>\\r\\n\\r\\n<h3>Thi\\u1ebft K\\u1ebf Logo C\\u00f4ng Ty Cho Ch\\u1ee7 Doanh Nghi\\u1ec7p M\\u1ec7nh Th\\u1ee7y<\\/h3>\\r\\n\\r\\n<p><em>Logo h\\u1ee3p ch\\u1ee7 doanh nghi\\u1ec7p m\\u1ec7nh Th\\u1ee7y<\\/em><\\/p>\\r\\n\\r\\n<p><strong><em>H\\u00ecnh kh\\u1ed1i:<\\/em><\\/strong>&nbsp;N\\u00ean ch\\u1ecdn h\\u00ecnh \\u0111\\u1ea1i di\\u1ec7n m\\u1ec7nh Th\\u1ee7y nh\\u01b0 h\\u00ecnh s\\u00f3ng n\\u01b0\\u1edbc, h\\u00ecnh b\\u1ea5t \\u0111\\u1ecbnh; ho\\u1eb7c h\\u00ecnh \\u0111\\u1ea1i di\\u1ec7n m\\u1ec7nh Kim- m\\u1ec7nh t\\u01b0\\u01a1ng sinh nh\\u01b0 h\\u00ecnh tr\\u00f2n, h\\u00ecnh cong, h\\u00ecnh oval v\\u00e0 h\\u00ecnh b\\u00e1n nguy\\u1ec7t.<\\/p>\\r\\n\\r\\n<p><strong><em>M\\u00e0u s\\u1eafc:<\\/em><\\/strong>&nbsp;N\\u00ean ch\\u1ecdn m\\u00e0u \\u0111\\u1ea1i di\\u1ec7n m\\u1ec7nh Th\\u1ee7y l\\u00e0 xanh n\\u01b0\\u1edbc bi\\u1ec3n, xanh \\u0111\\u1eadm v\\u00e0 \\u0111en; ho\\u1eb7c m\\u00e0u \\u0111\\u1ea1i di\\u1ec7n m\\u1ec7nh Kim nh\\u01b0 tr\\u1eafng, b\\u1ea1c.<\\/p>\\r\\n\\r\\n<h3>Thi\\u1ebft K\\u1ebf Logo C\\u00f4ng Ty Cho Ch\\u1ee7 Doanh Nghi\\u1ec7p M\\u1ec7nh M\\u1ed9c<\\/h3>\\r\\n\\r\\n<p><strong><em>Logo h\\u1ee3p ch\\u1ee7 doanh nghi\\u1ec7p m\\u1ec7nh M\\u1ed9c<\\/em><\\/strong><\\/p>\\r\\n\\r\\n<p><strong><em>H\\u00ecnh kh\\u1ed1i:<\\/em><\\/strong>&nbsp;N\\u00ean ch\\u1ecdn h\\u00ecnh \\u0111\\u1ea1i di\\u1ec7n m\\u1ec7nh M\\u1ed9c nh\\u01b0 h\\u00ecnh tr\\u1ee5, h\\u00ecnh c\\u00e2y xanh v\\u00e0 h\\u00ecnh ch\\u1eef nh\\u1eadt; ho\\u1eb7c h\\u00ecnh \\u0111\\u1ea1i di\\u1ec7n m\\u1ec7nh Th\\u1ee7y (m\\u1ec7nh t\\u01b0\\u01a1ng sinh) nh\\u01b0 h\\u00ecnh s\\u00f3ng n\\u01b0\\u1edbc, h\\u00ecnh b\\u1ea5t \\u0111\\u1ecbnh.<\\/p>\\r\\n\\r\\n<p><strong><em>M\\u00e0u s\\u1eafc:<\\/em><\\/strong>&nbsp;N\\u00ean ch\\u1ecdn m\\u00e0u \\u0111\\u1ea1i di\\u1ec7n m\\u1ec7nh M\\u1ed9c nh\\u01b0 xanh l\\u00e1 c\\u00e2y, m\\u00e0u l\\u1ee5c; h\\u1ecdc m\\u00e0u \\u0111\\u1ea1i di\\u1ec7n m\\u1ec7nh Th\\u1ee7y nh\\u01b0 m\\u00e0u xanh n\\u01b0\\u1edbc bi\\u1ec3n, m\\u00e0u \\u0111en v\\u00e0 m\\u00e0u xanh \\u0111\\u1eadm.<\\/p>\\r\\n\\r\\n<h3>Thi\\u1ebft K\\u1ebf Logo C\\u00f4ng Ty Cho Ch\\u1ee7 Doanh Nghi\\u1ec7p M\\u1ec7nh H\\u1ecfa<\\/h3>\\r\\n\\r\\n<p><img alt=\\\"phong th\\u1ee7y trong thi\\u1ebft k\\u1ebf logo\\\" data-orig-sizes=\\\"(max-width: 850px) 100vw, 850px\\\" data-orig-src=\\\"https:\\/\\/logoaz.net\\/wp-content\\/uploads\\/2019\\/01\\/thiet-ke-logo-cho-chu-doanh-nghiep-menh-hoa.png\\\" data-sizes=\\\"auto\\\" data-srcset=\\\"https:\\/\\/logoaz.net\\/wp-content\\/uploads\\/2019\\/01\\/thiet-ke-logo-cho-chu-doanh-nghiep-menh-hoa-200x133.png 200w, https:\\/\\/logoaz.net\\/wp-content\\/uploads\\/2019\\/01\\/thiet-ke-logo-cho-chu-doanh-nghiep-menh-hoa-300x200.png 300w, https:\\/\\/logoaz.net\\/wp-content\\/uploads\\/2019\\/01\\/thiet-ke-logo-cho-chu-doanh-nghiep-menh-hoa-400x266.png 400w, https:\\/\\/logoaz.net\\/wp-content\\/uploads\\/2019\\/01\\/thiet-ke-logo-cho-chu-doanh-nghiep-menh-hoa-600x400.png 600w, https:\\/\\/logoaz.net\\/wp-content\\/uploads\\/2019\\/01\\/thiet-ke-logo-cho-chu-doanh-nghiep-menh-hoa-768x511.png 768w, https:\\/\\/logoaz.net\\/wp-content\\/uploads\\/2019\\/01\\/thiet-ke-logo-cho-chu-doanh-nghiep-menh-hoa-800x533.png 800w, https:\\/\\/logoaz.net\\/wp-content\\/uploads\\/2019\\/01\\/thiet-ke-logo-cho-chu-doanh-nghiep-menh-hoa.png 1015w\\\" height=\\\"566\\\" loading=\\\"lazy\\\" sizes=\\\"809px\\\" src=\\\"https:\\/\\/logoaz.net\\/wp-content\\/uploads\\/2019\\/01\\/thiet-ke-logo-cho-chu-doanh-nghiep-menh-hoa.png\\\" srcset=\\\"https:\\/\\/logoaz.net\\/wp-content\\/uploads\\/2019\\/01\\/thiet-ke-logo-cho-chu-doanh-nghiep-menh-hoa-200x133.png 200w, https:\\/\\/logoaz.net\\/wp-content\\/uploads\\/2019\\/01\\/thiet-ke-logo-cho-chu-doanh-nghiep-menh-hoa-300x200.png 300w, https:\\/\\/logoaz.net\\/wp-content\\/uploads\\/2019\\/01\\/thiet-ke-logo-cho-chu-doanh-nghiep-menh-hoa-400x266.png 400w, https:\\/\\/logoaz.net\\/wp-content\\/uploads\\/2019\\/01\\/thiet-ke-logo-cho-chu-doanh-nghiep-menh-hoa-600x400.png 600w, https:\\/\\/logoaz.net\\/wp-content\\/uploads\\/2019\\/01\\/thiet-ke-logo-cho-chu-doanh-nghiep-menh-hoa-768x511.png 768w, https:\\/\\/logoaz.net\\/wp-content\\/uploads\\/2019\\/01\\/thiet-ke-logo-cho-chu-doanh-nghiep-menh-hoa-800x533.png 800w, https:\\/\\/logoaz.net\\/wp-content\\/uploads\\/2019\\/01\\/thiet-ke-logo-cho-chu-doanh-nghiep-menh-hoa.png 1015w\\\" width=\\\"850\\\" \\/><\\/p>\\r\\n\\r\\n<p><em>Logo h\\u1ee3p ch\\u1ee7 doanh nghi\\u1ec7p m\\u1ec7nh H\\u1ecfa<\\/em><\\/p>\\r\\n\\r\\n<p><strong><em>H\\u00ecnh kh\\u1ed1i:<\\/em><\\/strong>&nbsp;N\\u00ean thi\\u1ebft k\\u1ebf logo cho ng\\u01b0\\u1eddi m\\u1ec7nh H\\u1ecfa v\\u1edbi h\\u00ecnh kh\\u1ed1i \\u0111\\u1ea1i di\\u1ec7n m\\u1ec7nh H\\u1ecfa nh\\u01b0 h\\u00ecnh tam gi\\u00e1c, h\\u00ecnh th\\u00e1p, h\\u00ecnh c\\u00e1nh bu\\u1ed3m, h\\u00ecnh m\\u0169i t\\u00ean, h\\u00ecnh ng\\u1ecdn l\\u1eeda (\\u0111\\u1eebng qu\\u00ean h\\u1ea1n ch\\u1ebf \\u0111\\u1ec3 c\\u00e1c g\\u00f3c nh\\u1ecdn ch\\u0129a th\\u1eb3ng v\\u00e0o t\\u00ean c\\u00f4ng ty, t\\u00ean ng\\u01b0\\u1eddi \\u0111\\u1ea1i di\\u1ec7n,..) ho\\u1eb7c h\\u00ecnh \\u0111\\u1ea1i di\\u1ec7n cho m\\u1ec7nh M\\u1ed9c (m\\u1ec7nh t\\u01b0\\u01a1ng sinh) nh\\u01b0 h\\u00ecnh tr\\u1ee5, h\\u00ecnh c\\u00e2y xanh v\\u00e0 h\\u00ecnh ch\\u1eef nh\\u1eadt theo chi\\u1ec1u \\u0111\\u1ee9ng.<\\/p>\\r\\n\\r\\n<p><strong><em>M\\u00e0u s\\u1eafc:<\\/em><\\/strong>&nbsp;N\\u00ean ch\\u1ecdn m\\u00e0u \\u0111\\u1ea1i di\\u1ec7n m\\u1ec7nh H\\u1ecfa g\\u1ed3m m\\u00e0u \\u0111\\u1ecf, m\\u00e0u t\\u00edm, m\\u00e0u h\\u1ed3ng ho\\u1eb7c ch\\u1ecdn m\\u00e0u t\\u01b0\\u01a1ng sinh v\\u1edbi m\\u1ec7nh H\\u1ecfa (m\\u1ec7nh M\\u1ed9c) nh\\u01b0 m\\u00e0u xanh l\\u1ee5c, xanh l\\u00e1.<\\/p>\\r\\n\\r\\n<h3>Thi\\u1ebft K\\u1ebf Logo C\\u00f4ng Ty Cho Ch\\u1ee7 Doanh Nghi\\u1ec7p M\\u1ec7nh Th\\u1ed5<\\/h3>\\r\\n\\r\\n<p><em>Logo h\\u1ee3p ch\\u1ee7 doanh nghi\\u1ec7p m\\u1ec7nh Th\\u1ed5<\\/em><\\/p>\\r\\n\\r\\n<p><strong><em>H\\u00ecnh kh\\u1ed1i:<\\/em><\\/strong>&nbsp;Logo n\\u00ean \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf theo ki\\u1ec3u h\\u00ecnh vu\\u00f4ng, h\\u00ecnh thoi l\\u00e0m ch\\u1ee7 \\u0111\\u1ea1o (h\\u00ecnh \\u0111\\u1ea1i di\\u1ec7n cho m\\u1ec7nh Th\\u1ed5) ho\\u1eb7c thi\\u1ebft k\\u1ebf theo ki\\u1ec3u h\\u00ecnh tam gi\\u00e1c, h\\u00ecnh m\\u0169i t\\u00ean, h\\u00ecnh th\\u00e1p, h\\u00ecnh ng\\u1ecdn l\\u1eeda (h\\u00ecnh \\u0111\\u1ea1i di\\u1ec7n m\\u1ec7nh H\\u1ecfa- t\\u01b0\\u01a1ng sinh v\\u1edbi m\\u1ec7nh Th\\u1ed5).<\\/p>\\r\\n\\r\\n<p><strong><em>M\\u00e0u s\\u1eafc:<\\/em><\\/strong>&nbsp;N\\u00ean thi\\u1ebft k\\u1ebf logo cho ng\\u01b0\\u1eddi m\\u1ec7nh Th\\u1ed5 v\\u1edbi m\\u00e0u \\u0111\\u1ea1i di\\u1ec7n l\\u00e0 m\\u00e0u v\\u00e0ng \\u0111\\u1ea5t, v\\u00e0ng cam ho\\u1eb7c n\\u00e2u tr\\u1ea7m; c\\u0169ng c\\u00f3 th\\u1ec3 l\\u1ef1a ch\\u1ecdn m\\u00e0u s\\u1eafc \\u0111\\u1ea1i di\\u1ec7n cho m\\u1ec7nh H\\u1ecfa nh\\u01b0 m\\u00e0u \\u0111\\u1ecf, m\\u00e0u t\\u00edm.<\\/p>\\r\\n\\r\\n<p>T\\u1eeb nh\\u1eefng ki\\u1ebfn th\\u1ee9c \\u00edt \\u1ecfi v\\u1ec1 y\\u1ebfu t\\u1ed1 phong th\\u1ee7y m\\u00e0 m\\u00ecnh c\\u00f3 \\u0111\\u01b0\\u1ee3c, t\\u00f4i hi v\\u1ecdng nh\\u1eefng g\\u1ee3i \\u00fd v\\u1ec1 c\\u00e1c thi\\u1ebft k\\u1ebf logo h\\u1ee3p phong th\\u1ee7y m\\u00e0 t\\u00f4i gi\\u1edbi thi\\u1ec7u trong b\\u00e0i s\\u1ebd h\\u1eefu \\u00edch v\\u1edbi b\\u1ea1n.<\\/p>\\r\\n\\r\\n<p>N\\u1ebfu b\\u1ea1n \\u0111ang c\\u1ea7n thi\\u1ebft k\\u1ebf logo \\u0111\\u1eb9p, \\u0111\\u1ed9c \\u0111\\u00e1o \\u0111\\u00e1p \\u1ee9ng \\u0111\\u01b0\\u1ee3c c\\u00e1c y\\u00eau c\\u1ea7u nghi\\u00eam kh\\u1eafc v\\u1ec1 m\\u1ef9 thu\\u1eadt c\\u0169ng nh\\u01b0 phong th\\u1ee7y, \\u0111\\u1eebng ng\\u1ea7n ng\\u1ea1i li\\u00ean h\\u1ec7 v\\u1edbi Global Brand Design - GBD. Ch\\u00fang t\\u00f4i lu\\u00f4n s\\u1eb5n l\\u00f2ng \\u0111\\u00e1p \\u1ee9ng m\\u1ecdi nhu c\\u1ea7u c\\u1ee7a b\\u1ea1n!<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/news/hotnews-1.png', NULL, 1, 0, 5, 'active', 1, 5, '2024-06-16 07:28:49', '2024-06-21 15:13:18', 'lorem-ipsum-dolor-sit-amet-consectetuer-adipiscing-elit'),
(409, 91, NULL, 'post', 'Xu hướng thiết kế đồ họa 2024 với \"cơn sốt\" AI', '{\"brief\":{\"vi\":\"V\\u1edbi s\\u1ef1 b\\u00f9ng n\\u1ed5 m\\u1ea1nh m\\u1ebd c\\u1ee7a c\\u00e1c c\\u00f4ng c\\u1ee5 AI, c\\u00e1c xu h\\u01b0\\u1edbng thi\\u1ebft k\\u1ebf trong n\\u0103m 2024 ho\\u1eb7c xa h\\u01a1n s\\u1ebd thay \\u0111\\u1ed5i nh\\u01b0 th\\u1ebf n\\u00e0o? H\\u00e3y c\\u00f9ng GBD \\u0111i\\u1ec3m qua 6 xu h\\u01b0\\u1edbng thi\\u1ebft k\\u1ebf n\\u1ed5i b\\u1eadt trong b\\u00e0i vi\\u1ebft d\\u01b0\\u1edbi \\u0111\\u00e2y.\"},\"content\":{\"vi\":\"<h1>Xu h\\u01b0\\u1edbng thi\\u1ebft k\\u1ebf \\u0111\\u1ed3 h\\u1ecda 2024 v\\u1edbi \\\"c\\u01a1n s\\u1ed1t\\\" AI<\\/h1>\\r\\n\\r\\n<div>Sau c\\u01a1n s\\u1ed1t ChatGPT, c\\u00e1c c\\u00f4ng c\\u1ee5 AI d\\u1ea7n tr\\u1edf n\\u00ean ph\\u1ed5 bi\\u1ebfn v\\u00e0 tr\\u1edf th\\u00e0nh m\\u1ed9t trong nh\\u1eefng xu th\\u1ebf c\\u00f4ng ngh\\u1ec7 b\\u00f9ng n\\u1ed5 nh\\u1ea5t trong n\\u0103m 2023.&nbsp;X\\u00e3 h\\u1ed9i nhanh ch\\u00f3ng chia th\\u00e0nh hai nh\\u00f3m: nh\\u1eefng ng\\u01b0\\u1eddi lo s\\u1ee3 m\\u1ea5t vi\\u1ec7c do AI v\\u00e0 nh\\u1eefng ng\\u01b0\\u1eddi \\u0111\\u01b0\\u1ee3c h\\u01b0\\u1edfng l\\u1ee3i t\\u1eeb AI \\u0111\\u1ec3 h\\u1ee3p l\\u00fd h\\u00f3a quy tr\\u00ecnh l\\u00e0m vi\\u1ec7c ho\\u1eb7c n\\u00e2ng cao n\\u0103ng su\\u1ea5t.<\\/div>\\r\\n\\r\\n<p>Th\\u1ef1c t\\u1ebf, \\u0111\\u00e3 c\\u00f3 nhi\\u1ec1u v\\u1ecb tr\\u00ed c\\u00f4ng vi\\u1ec7c b\\u1ecb thay th\\u1ebf b\\u1edfi AI, nh\\u01b0ng m\\u1ecdi ng\\u01b0\\u1eddi kh\\u00f4ng n\\u00ean qu\\u00e1 lo l\\u1eafng, \\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 \\u0111\\u1ed1i v\\u1edbi c\\u00e1c v\\u1ecb tr\\u00ed y\\u00eau c\\u1ea7u s\\u00e1ng t\\u1ea1o cao nh\\u01b0 thi\\u1ebft k\\u1ebf \\u0111\\u1ed3 h\\u1ecda. B\\u1edfi c\\u00e1c c\\u00f4ng c\\u1ee5 AI v\\u1eabn ph\\u1ee5 thu\\u1ed9c nhi\\u1ec1u v\\u00e0o s\\u1ef1 s\\u00e1ng t\\u1ea1o c\\u1ee7a con ng\\u01b0\\u1eddi \\u0111\\u1ec3 bi\\u1ebfn \\u00fd t\\u01b0\\u1edfng th\\u00e0nh hi\\u1ec7n th\\u1ef1c.<\\/p>\\r\\n\\r\\n<p>V\\u1edbi s\\u1ef1 b\\u00f9ng n\\u1ed5 m\\u1ea1nh m\\u1ebd c\\u1ee7a c\\u00e1c c\\u00f4ng c\\u1ee5 AI, c\\u00e1c xu h\\u01b0\\u1edbng thi\\u1ebft k\\u1ebf trong n\\u0103m 2024 ho\\u1eb7c xa h\\u01a1n s\\u1ebd thay \\u0111\\u1ed5i nh\\u01b0 th\\u1ebf n\\u00e0o? C\\u00f9ng GBD \\u0111i\\u1ec3m qua 6 xu h\\u01b0\\u1edbng thi\\u1ebft k\\u1ebf n\\u1ed5i b\\u1eadt trong b\\u00e0i vi\\u1ebft d\\u01b0\\u1edbi \\u0111\\u00e2y nh\\u00e9.<\\/p>\\r\\n\\r\\n<h3><strong>1.&nbsp;AI Graphic - Thi\\u1ebft k\\u1ebf k\\u1ebft h\\u1ee3p h\\u00ecnh \\u1ea3nh do AI t\\u1ea1o<\\/strong><\\/h3>\\r\\n\\r\\n<p>Xu h\\u01b0\\u1edbng d\\u00f9ng AI \\u0111\\u1ec3 thi\\u1ebft k\\u1ebf \\u1ea3nh \\u0111\\u00e3 xu\\u1ea5t hi\\u1ec7n t\\u1eeb l\\u00e2u, nh\\u01b0ng ch\\u1ec9 m\\u1edbi \\u0111\\u01b0\\u1ee3c th\\u1ea3o lu\\u1eadn trong m\\u1ed9t s\\u1ed1 h\\u1ed9i nh\\u00f3m \\u0111am m\\u00ea c\\u00f4ng ngh\\u1ec7. Tuy nhi\\u00ean, s\\u1ef1 b\\u00f9ng n\\u1ed5 c\\u1ee7a ChatGPT \\u0111\\u00e3 m\\u1edf \\u0111\\u01b0\\u1eddng cho s\\u1ef1 ph\\u1ed5 bi\\u1ebfn r\\u1ed9ng r\\u00e3i c\\u1ee7a c\\u00e1c c\\u00f4ng c\\u1ee5 thi\\u1ebft k\\u1ebf \\u0111\\u1ed3 h\\u1ecda AI nh\\u01b0 Midjourney, Dall-E, Canva, Khroma... thu h\\u00fat h\\u00e0ng ng\\u00e0n ng\\u01b0\\u1eddi d\\u00f9ng m\\u1edbi trong n\\u0103m 2023.<\\/p>\\r\\n\\r\\n<p>S\\u1ef1 ph\\u1ea5n kh\\u00edch xung quanh c\\u00e1c AI thi\\u1ebft k\\u1ebf n\\u00e0y \\u0111\\u01b0\\u1ee3c th\\u00fac \\u0111\\u1ea9y b\\u1edfi nh\\u1eefng ti\\u1ebfn b\\u1ed9 trong vi\\u1ec7c bi\\u1ebfn m\\u1ed9t c\\u00f4ng ngh\\u1ec7 t\\u01b0\\u1edfng ch\\u1eebng ph\\u1ee9c t\\u1ea1p, kh\\u00f4 khan th\\u00e0nh m\\u1ed9t c\\u00f4ng c\\u1ee5 d\\u1ec5 s\\u1eed d\\u1ee5ng v\\u00e0 d\\u1ec5 ti\\u1ebfp c\\u1eadn h\\u01a1n. Ch\\u1eb3ng h\\u1ea1n, ch\\u1ec9 c\\u1ea7n g\\u00f5 m\\u1ed9t c\\u00e2u l\\u1ec7nh (prompt) d\\u01b0\\u1edbi d\\u1ea1ng v\\u0103n b\\u1ea3n, c\\u00e1c c\\u00f4ng c\\u1ee5 thi\\u1ebft k\\u1ebf AI nh\\u01b0 Dall-E c\\u00f3 th\\u1ec3 tr\\u1ea3 cho b\\u1ea1n m\\u1ed9t ho\\u1eb7c r\\u1ea5t nhi\\u1ec1u h\\u00ecnh \\u1ea3nh ngay l\\u1eadp t\\u1ee9c.<\\/p>\\r\\n\\r\\n<p>Kh\\u00f4ng ch\\u1ec9 t\\u1ed1i \\u01b0u v\\u1edbi ng\\u01b0\\u1eddi d\\u00f9ng \\\"kh\\u00f4ng chuy\\u00ean\\\", AI c\\u0169ng \\u0111ang t\\u0103ng c\\u01b0\\u1eddng vai tr\\u00f2 c\\u1ee7a m\\u00ecnh \\u0111\\u1ed1i v\\u1edbi c\\u00e1c nh\\u00e0 thi\\u1ebft k\\u1ebf chuy\\u00ean nghi\\u1ec7p. V\\u1edbi AI, c\\u00e1c nh\\u00e0 thi\\u1ebft k\\u1ebf c\\u00f3 th\\u1ec3 ti\\u1ebft ki\\u1ec7m th\\u1eddi gian v\\u00e0 c\\u00f4ng s\\u1ee9c, \\u0111\\u1ec3 t\\u1eadp trung h\\u01a1n v\\u00e0o thi\\u1ebft k\\u1ebf s\\u1ea3n ph\\u1ea9m t\\u1ed5ng th\\u1ec3, ho\\u1eb7c c\\u00e1c c\\u00f4ng vi\\u1ec7c kh\\u00e1c c\\u1ea7n \\u0111\\u1ea7u t\\u01b0 nhi\\u1ec1u \\\"ch\\u1ea5t x\\u00e1m\\\" h\\u01a1n.<\\/p>\\r\\n\\r\\n<p>Theo nghi\\u00ean c\\u1ee9u c\\u1ee7a Adobe v\\u1ec1 GenAI (AI t\\u1ea1o sinh):<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>H\\u01a1n 55% chuy\\u00ean gia s\\u00e1ng t\\u1ea1o cho bi\\u1ebft, s\\u1eed d\\u1ee5ng c\\u00e1c c\\u00f4ng c\\u1ee5 GenAI gi\\u00fap h\\u1ecd ti\\u1ebft ki\\u1ec7m \\u0111\\u01b0\\u1ee3c kho\\u1ea3ng 20% th\\u1eddi gian l\\u00e0m vi\\u1ec7c<\\/li>\\r\\n\\t<li>78% nh\\u00e0 thi\\u1ebft k\\u1ebf cho bi\\u1ebft AI gi\\u00fap t\\u0103ng s\\u1ed1 l\\u01b0\\u1ee3ng s\\u1ea3n ph\\u1ea9m thi\\u1ebft k\\u1ebf, \\u0111\\u1ed3ng th\\u1eddi cung c\\u1ea5p cho h\\u1ecd th\\u00eam nhi\\u1ec1u c\\u1ea3m h\\u1ee9ng s\\u00e1ng t\\u1ea1o, c\\u00e1c ph\\u01b0\\u01a1ng ti\\u1ec7n c\\u0169ng nh\\u01b0 phong c\\u00e1ch m\\u1edbi.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>Trong t\\u01b0\\u01a1ng lai, xu h\\u01b0\\u1edbng thi\\u1ebft k\\u1ebf k\\u1ebft h\\u1ee3p h\\u00ecnh \\u1ea3nh do AI t\\u1ea1o d\\u1ef1 ki\\u1ebfn s\\u1ebd ti\\u1ebfp t\\u1ee5c ph\\u00e1t tri\\u1ec3n v\\u00e0 tr\\u1edf n\\u00ean ph\\u1ed5 bi\\u1ebfn h\\u01a1n n\\u1eefa. V\\u1edbi s\\u1ef1 ph\\u00e1t tri\\u1ec3n c\\u1ee7a c\\u00f4ng ngh\\u1ec7 AI, c\\u00e1c nh\\u00e0 thi\\u1ebft k\\u1ebf v\\u00e0 AI c\\u00f3 th\\u1ec3 c\\u00f9ng nhau t\\u1ea1o ra nh\\u1eefng h\\u00ecnh \\u1ea3nh v\\u1edbi ch\\u1ea5t l\\u01b0\\u1ee3ng cao v\\u00e0 mang t\\u00ednh ngh\\u1ec7 thu\\u1eadt cao h\\u01a1n. \\u0110\\u1ed3ng th\\u1eddi gi\\u00fap ti\\u1ebft ki\\u1ec7m th\\u1eddi gian v\\u00e0 chi ph\\u00ed cho c\\u00e1c nh\\u00e0 thi\\u1ebft k\\u1ebf \\u0111\\u1ec3 t\\u1ea1o ra nh\\u1eefng h\\u00ecnh \\u1ea3nh \\u0111\\u1ed9c \\u0111\\u00e1o, m\\u1edbi l\\u1ea1 v\\u00e0 s\\u00e1ng t\\u1ea1o nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<p>Tuy nhi\\u00ean, c\\u00f3 nh\\u1eefng th\\u00e1ch th\\u1ee9c v\\u00e0 c\\u00e2n nh\\u1eafc v\\u1ec1 m\\u1eb7t \\u0111\\u1ea1o \\u0111\\u1ee9c m\\u00e0 c\\u00e1c nh\\u00e0 thi\\u1ebft k\\u1ebf c\\u1ea7n l\\u01b0u \\u00fd khi s\\u1eed d\\u1ee5ng AI: s\\u1edf h\\u1eefu tr\\u00ed tu\\u1ec7, quy\\u1ec1n ri\\u00eang t\\u01b0 d\\u1eef li\\u1ec7u, kh\\u1ea3 n\\u0103ng x\\u1ea3y ra l\\u1ed7i do AI t\\u1ea1o ra...<\\/p>\\r\\n\\r\\n<h3><strong>2. 3D Design<\\/strong><\\/h3>\\r\\n\\r\\n<p>Nh\\u1eefng ti\\u1ebfn b\\u1ed9 trong c\\u00f4ng ngh\\u1ec7 v\\u00e0 ph\\u1ea7n m\\u1ec1m gi\\u00fap c\\u00e1c nh\\u00e0 thi\\u1ebft k\\u1ebf t\\u1ea1o ra h\\u00ecnh \\u1ea3nh 3D \\u0111\\u1eb9p m\\u1eaft, t\\u0103ng th\\u00eam chi\\u1ec1u s\\u00e2u v\\u00e0 t\\u00ednh ch\\u00e2n th\\u1ef1c cho thi\\u1ebft k\\u1ebf. \\u0110i\\u1ec1u n\\u00e0y s\\u1ebd th\\u00fac \\u0111\\u1ea9y h\\u01a1n n\\u1eefa s\\u1ef1 ph\\u00e1t tri\\u1ec3n c\\u1ee7a l\\u0129nh v\\u1ef1c thi\\u1ebft k\\u1ebf 3D trong n\\u0103m 2024. S\\u1ef1 thay \\u0111\\u1ed5i n\\u00e0y kh\\u00f4ng ch\\u1ec9 n\\u00e2ng cao ch\\u1ea5t l\\u01b0\\u1ee3ng thi\\u1ebft k\\u1ebf m\\u00e0 c\\u00f2n m\\u1edf ra c\\u01a1 h\\u1ed9i cho c\\u00e1c nh\\u00e0 thi\\u1ebft k\\u1ebf t\\u1ea1o ra nh\\u1eefng tr\\u1ea3i nghi\\u1ec7m t\\u01b0\\u01a1ng t\\u00e1c v\\u00e0 s\\u1ed1ng \\u0111\\u1ed9ng h\\u01a1n.<\\/p>\\r\\n\\r\\n<p>Tr\\u01b0\\u1edbc \\u0111\\u00e2y, thi\\u1ebft k\\u1ebf 3D t\\u1eadp trung v\\u00e0o vi\\u1ec7c th\\u00eam k\\u1ebft c\\u1ea5u b\\u1ec1 ngo\\u00e0i v\\u00e0 t\\u1ea1o b\\u00f3ng c\\u01a1 b\\u1ea3n \\u0111\\u1ec3 l\\u00e0m cho c\\u00e1c nh\\u00e2n v\\u1eadt ho\\u1eb7c h\\u00ecnh minh h\\u1ecda tr\\u1edf n\\u00ean s\\u1ed1ng \\u0111\\u1ed9ng. Nh\\u01b0ng nh\\u1edd s\\u1ef1 ph\\u00e1t tri\\u1ec3n nhanh ch\\u00f3ng c\\u1ee7a c\\u00f4ng ngh\\u1ec7, t\\u00ednh \\u0111\\u1ebfn n\\u0103m 2022, nh\\u1eefng tr\\u1ea3i nghi\\u1ec7m n\\u00e0y \\u0111\\u01b0\\u1ee3c th\\u00fac \\u0111\\u1ea9y m\\u1ea1nh m\\u1ebd h\\u01a1n th\\u00f4ng qua th\\u1ef1c t\\u1ebf \\u1ea3o (VR) v\\u00e0 th\\u1ef1c t\\u1ebf t\\u0103ng c\\u01b0\\u1eddng (AR), gi\\u00fap bi\\u1ebfn t\\u00e1c ph\\u1ea9m 2D truy\\u1ec1n th\\u1ed1ng th\\u00e0nh tr\\u1ea3i nghi\\u1ec7m 3D s\\u1ed1ng \\u0111\\u1ed9ng v\\u00e0 l\\u00e0m cho thi\\u1ebft k\\u1ebf tr\\u1edf n\\u00ean t\\u01b0\\u01a1ng t\\u00e1c v\\u00e0 d\\u1ec5 ti\\u1ebfp c\\u1eadn h\\u01a1n.<\\/p>\\r\\n\\r\\n<h4><strong>M\\u1ed9t s\\u1ed1 xu h\\u01b0\\u1edbng thi\\u1ebft k\\u1ebf 3D n\\u1ed5i b\\u1eadt trong n\\u0103m 2024<\\/strong><\\/h4>\\r\\n\\r\\n<p>DOOH (Digital Out-of-Home) l\\u00e0 h\\u00ecnh th\\u1ee9c qu\\u1ea3ng c\\u00e1o OOH \\u0111\\u01b0\\u1ee3c \\u00e1p d\\u1ee5ng th\\u00eam c\\u00e1c y\\u1ebfu t\\u1ed1 k\\u1ef9 thu\\u1eadt s\\u1ed1 (Digital) \\u0111\\u1ec3 hi\\u1ec3n th\\u1ecb c\\u00e1c th\\u00f4ng \\u0111i\\u1ec7p qu\\u1ea3ng c\\u00e1o \\\"\\u0111\\u1ed9ng\\\" h\\u01a1n so v\\u1edbi c\\u00e1c h\\u00ecnh th\\u1ee9c qu\\u1ea3ng c\\u00e1o ngo\\u00e0i tr\\u1eddi truy\\u1ec1n th\\u00f4ng kh\\u00f4ng hi\\u1ec7u \\u1ee9ng, kh\\u00f4ng chuy\\u1ec3n \\u0111\\u1ed9ng. Th\\u00f4ng qua DOOH, th\\u01b0\\u01a1ng hi\\u1ec7u c\\u00f3 th\\u1ec3 tr\\u00ecnh chi\\u1ebfu qu\\u1ea3ng c\\u00e1o m\\u1ed9t c\\u00e1ch s\\u1ed1ng \\u0111\\u1ed9ng, theo d\\u00f5i v\\u00e0 t\\u1ea1o ra s\\u1ef1 t\\u01b0\\u01a1ng t\\u00e1c tr\\u1ef1c ti\\u1ebfp v\\u1edbi kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<p>T\\u1ea1i Vi\\u1ec7t Nam, xu h\\u01b0\\u1edbng DOOH \\u0111ang ng\\u00e0y c\\u00e0ng ph\\u00e1t tri\\u1ec3n v\\u1edbi \\u0111a d\\u1ea1ng k\\u00edch th\\u01b0\\u1edbc, h\\u00ecnh th\\u1ee9c v\\u00e0 v\\u1ecb tr\\u00ed hi\\u1ec3n th\\u1ecb. Theo b\\u00e1o c\\u00e1o Statista, doanh thu d\\u1ef1 ki\\u1ebfn c\\u1ee7a m\\u1ea3ng qu\\u1ea3ng c\\u00e1o DOOH t\\u1ea1i Vi\\u1ec7t Nam d\\u1ef1 ki\\u1ebfn s\\u1ebd \\u0111\\u1ea1t 29.82 tri\\u1ec7u USD v\\u00e0o n\\u0103m 2023, cao h\\u01a1n 9.2% so v\\u1edbi n\\u0103m 2022. Trong \\u0111\\u00f3, m\\u1ed9t trong nh\\u1eefng h\\u00ecnh th\\u1ee9c DOOH n\\u1ed5i b\\u1eadt v\\u00e0 \\u0111\\u01b0\\u1ee3c d\\u1ef1 b\\u00e1o s\\u1ebd \\\"n\\u1edf r\\u1ed9\\\" trong nh\\u1eefng n\\u0103m t\\u1edbi l\\u00e0 <strong>m\\u00e0n h\\u00ecnh qu\\u1ea3ng c\\u00e1o LED 3D<\\/strong>. Nh\\u1edd \\u1ee9ng d\\u1ee5ng c\\u00f4ng ngh\\u1ec7 3D, m\\u00e0n LED 3D gi\\u00fap t\\u1ea1o n\\u00ean hi\\u1ec7u \\u1ee9ng h\\u00ecnh \\u1ea3nh s\\u1ed1ng \\u0111\\u1ed9ng, ch\\u00e2n th\\u1ef1c v\\u00e0 c\\u00f3 chi\\u1ec1u s\\u00e2u h\\u01a1n cho qu\\u1ea3ng c\\u00e1o.<\\/p>\\r\\n\\r\\n<p>M\\u00e0n LED 3D \\u0111\\u1ea7u ti\\u00ean t\\u1ea1i Vi\\u1ec7t Nam \\u0111\\u00e3 b\\u1eaft \\u0111\\u1ea7u \\u0111\\u01b0\\u1ee3c tri\\u1ec3n khai v\\u00e0o n\\u0103m 2023, t\\u1ea1i trung t\\u00e2m th\\u01b0\\u01a1ng m\\u1ea1i Vincom Mega Mall Th\\u1ea3o \\u0110i\\u1ec1n, Th\\u00e0nh ph\\u1ed1 H\\u1ed3 Ch\\u00ed Minh. M\\u00e0n h\\u00ecnh n\\u00e0y c\\u00f3 k\\u00edch th\\u01b0\\u1edbc 200m2, s\\u1eed d\\u1ee5ng c\\u00f4ng ngh\\u1ec7 3D naked eye (xem 3D kh\\u00f4ng c\\u1ea7n k\\u00ednh) \\u0111\\u1ec3 t\\u1ea1o ra hi\\u1ec7u \\u1ee9ng h\\u00ecnh \\u1ea3nh s\\u1ed1ng \\u0111\\u1ed9ng, ch\\u00e2n th\\u1ef1c.<\\/p>\\r\\n\\r\\n<p>L\\u1ea5y c\\u1ea3m h\\u1ee9ng t\\u1eeb phong c\\u00e1ch thi\\u1ebft k\\u1ebf 3D si\\u00eau th\\u1ef1c, xu h\\u01b0\\u1edbng thi\\u1ebft k\\u1ebf <strong>Texture 3D<\\/strong> \\u0111\\u01b0\\u1ee3c d\\u1ef1 \\u0111o\\u00e1n s\\u1ebd tr\\u1edf n\\u00ean ph\\u1ed5 bi\\u1ebfn h\\u01a1n n\\u1eefa trong l\\u0129nh v\\u1ef1c digital art n\\u0103m 2024. Thi\\u1ebft k\\u1ebf Texture 3D l\\u00e0 h\\u00ecnh th\\u1ee9c thi\\u1ebft k\\u1ebf 3D trong \\u0111\\u00f3 k\\u1ebft c\\u1ea5u si\\u00eau th\\u1ef1c (Hyperrealism) \\u0111\\u01b0\\u1ee3c \\u00e1p d\\u1ee5ng cho v\\u0103n b\\u1ea3n v\\u00e0 \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng l\\u00e0m trung t\\u00e2m c\\u1ee7a thi\\u1ebft k\\u1ebf \\u0111\\u1ec3 thu h\\u00fat s\\u1ef1 ch\\u00fa \\u00fd c\\u1ee7a ng\\u01b0\\u1eddi xem v\\u00e0o v\\u0103n b\\u1ea3n.<\\/p>\\r\\n\\r\\n<h3><strong>3. Quirky Character - Nh\\u00e2n v\\u1eadt k\\u1ef3 qu\\u1eb7c<\\/strong><\\/h3>\\r\\n\\r\\n<p>Quirky Character l\\u00e0 m\\u1ed9t phong c\\u00e1ch minh h\\u1ecda nh\\u00e2n v\\u1eadt \\u0111\\u1ed9c \\u0111\\u00e1o v\\u1edbi nh\\u1eefng \\u0111\\u1eb7c \\u0111i\\u1ec3m kh\\u00e1c bi\\u1ec7t, kh\\u00f4ng gi\\u1ed1ng ai: h\\u00ecnh d\\u00e1ng c\\u01a1 th\\u1ec3 l\\u1ea1 m\\u1eaft, m\\u00e0u s\\u1eafc n\\u1ed5i b\\u1eadt v\\u00e0 bi\\u1ec3u c\\u1ea3m ng\\u1ed9 ngh\\u0129nh.&nbsp;<\\/p>\\r\\n\\r\\n<p>C\\u00e1c nh\\u00e2n v\\u1eadt n\\u00e0y th\\u01b0\\u1eddng \\u0111\\u01b0\\u1ee3c l\\u1ea5y c\\u1ea3m h\\u1ee9ng t\\u1eeb c\\u00e1c h\\u00ecnh d\\u1ea1ng tr\\u1eebu t\\u01b0\\u1ee3ng ho\\u1eb7c trong t\\u1ef1 nhi\\u00ean, v\\u00ec v\\u1eady ng\\u01b0\\u1eddi xem s\\u1ebd c\\u00f3 c\\u1ea3m gi\\u00e1c v\\u1eeba quen thu\\u1ed9c v\\u1eeba xa l\\u1ea1 khi nh\\u00ecn nh\\u1eefng nh\\u00e2n v\\u1eadt n\\u00e0y. S\\u1ef1 k\\u1ebft h\\u1ee3p \\u0111\\u00f3 t\\u1ea1o n\\u00ean nh\\u1eefng nh\\u00e2n v\\u1eadt c\\u00f3 v\\u1ebb ngo\\u00e0i k\\u1ef3 l\\u1ea1 v\\u00e0 th\\u00fa v\\u1ecb, thu h\\u00fat s\\u1ef1 ch\\u00fa \\u00fd c\\u1ee7a ng\\u01b0\\u1eddi xem.<\\/p>\\r\\n\\r\\n<p>Nh\\u00e2n v\\u1eadt k\\u1ef3 qu\\u1eb7c n\\u00e0y th\\u01b0\\u1eddng \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng trong c\\u00e1c thi\\u1ebft k\\u1ebf \\u0111\\u1ed3 h\\u1ecda mang t\\u00ednh s\\u00e1ng t\\u1ea1o cao nh\\u01b0 t\\u00e1c ph\\u1ea9m ngh\\u1ec7 thu\\u1eadt, qu\\u1ea3ng c\\u00e1o, ho\\u1eb7c th\\u1eadm ch\\u00ed l\\u00e0 c\\u00e1c tr\\u00f2 ch\\u01a1i \\u0111i\\u1ec7n t\\u1eed. Nh\\u1eefng nh\\u00e2n v\\u1eadt n\\u00e0y mang l\\u1ea1i s\\u1ef1 th\\u00fa v\\u1ecb, m\\u1edbi m\\u1ebb v\\u00e0 \\u1ea5n t\\u01b0\\u1ee3ng h\\u01a1n cho c\\u00e1c \\u1ea5n ph\\u1ea9m thi\\u1ebft k\\u1ebf. \\u0110\\u1ed3ng th\\u1eddi, m\\u1edf ra c\\u00e1nh c\\u1eeda m\\u1edbi cho nh\\u1eefng kh\\u1ea3 n\\u0103ng s\\u00e1ng t\\u1ea1o v\\u00f4 t\\u1eadn trong vi\\u1ec7c thi\\u1ebft k\\u1ebf h\\u00ecnh \\u1ea3nh cho poster, bao b\\u00ec, \\u0111\\u1ed3 h\\u1ecda tr\\u00ean m\\u1ea1ng x\\u00e3 h\\u1ed9i v\\u00e0 c\\u00e1c t\\u00e0i li\\u1ec7u th\\u01b0\\u01a1ng hi\\u1ec7u kh\\u00e1c.<\\/p>\\r\\n\\r\\n<p>Th\\u01b0\\u01a1ng hi\\u1ec7u c\\u00f3 th\\u1ec3 t\\u1eadn d\\u1ee5ng xu h\\u01b0\\u1edbng n\\u00e0y \\u0111\\u1ec3 t\\u1ea1o n\\u00ean m\\u1ed9t b\\u1ed9 brand character \\u0111\\u1ed9c \\u0111\\u00e1o c\\u1ee7a ri\\u00eang m\\u00ecnh v\\u00e0 s\\u1eed d\\u1ee5ng ch\\u00fang trong c\\u00e1c ho\\u1ea1t \\u0111\\u1ed9ng truy\\u1ec1n th\\u00f4ng th\\u01b0\\u1eddng ng\\u00e0y \\u0111\\u1ec3 t\\u0103ng nh\\u1eadn di\\u1ec7n th\\u01b0\\u01a1ng hi\\u1ec7u.<\\/p>\\r\\n\\r\\n<p><em>B\\u1ed9 nh\\u00e2n v\\u1eadt th\\u01b0\\u01a1ng hi\\u1ec7u c\\u1ee7a Rubyk Agency v\\u1edbi bi\\u1ec3u c\\u1ea3m \\u0111a d\\u1ea1ng, m\\u00e0u s\\u1eafc thu h\\u00fat v\\u00e0 h\\u00ecnh d\\u00e1ng th\\u00fa v\\u1ecb gi\\u00fap t\\u1ea1o \\u1ea5n t\\u01b0\\u1ee3ng v\\u00e0 ghi d\\u1ea5u th\\u01b0\\u01a1ng hi\\u1ec7u trong t\\u00e2m tr\\u00ed ng\\u01b0\\u1eddi xem. \\u1ea2nh: Rubyk Agency<\\/em><\\/p>\\r\\n\\r\\n<h3><strong>4. Hand Drawn Doodles - H\\u00ecnh v\\u1ebd ngu\\u1ec7ch ngo\\u1ea1c<\\/strong><\\/h3>\\r\\n\\r\\n<p>Doodle l\\u00e0 m\\u1ed9t phong c\\u00e1ch thi\\u1ebft k\\u1ebf \\u0111\\u1ed3 h\\u1ecda s\\u1eed d\\u1ee5ng nh\\u1eefng n\\u00e9t v\\u1ebd ng\\u1eabu h\\u1ee9ng, kh\\u00f4ng theo m\\u1ed9t quy t\\u1eafc n\\u00e0o nh\\u01b0ng c\\u00e1c y\\u1ebfu t\\u1ed1 thi\\u1ebft k\\u1ebf v\\u1eabn \\u0111\\u01b0\\u1ee3c th\\u1ec3 hi\\u1ec7n trong t\\u1eebng n\\u00e9t v\\u1ebd. Phong c\\u00e1ch n\\u00e0y mang \\u0111\\u1ebfn c\\u1ea3m gi\\u00e1c g\\u1ea7n g\\u0169i, th\\u00e2n thi\\u1ec7n v\\u00e0 \\\"con ng\\u01b0\\u1eddi\\\" h\\u01a1n cho thi\\u1ebft k\\u1ebf.<\\/p>\\r\\n\\r\\n<p><em>V\\u1edbi n\\u00e9t v\\u1ebd m\\u1ea3nh, \\u0111\\u01a1n gi\\u1ea3n, h\\u00ecnh minh h\\u1ecda cho m\\u1ed7i h\\u01b0\\u01a1ng v\\u1ecb d\\u01b0\\u1eddng s\\u1eefa h\\u1ea1t LAVEGA nh\\u01b0 tr\\u1edf n\\u00ean th\\u00e2n thi\\u1ec7n, d\\u1ec5 m\\u1ebfn h\\u01a1n, \\u0111\\u1ed3ng th\\u1eddi t\\u1ea1o n\\u00ean n\\u00e9t n\\u1ed5i b\\u1eadt kh\\u00e1c bi\\u1ec7t so v\\u1edbi c\\u00e1c lo\\u1ea1i s\\u1eefa h\\u1ea1t kh\\u00e1c tr\\u00ean th\\u1ecb tr\\u01b0\\u1eddng. Ngu\\u1ed3n: D\\u1ef1 \\u00e1n LAVEGA c\\u1ee7a Rubyk Agency<\\/em><\\/p>\\r\\n\\r\\n<p>Phong c\\u00e1ch n\\u00e0y xu\\u1ea5t ph\\u00e1t t\\u1eeb \\u00fd t\\u01b0\\u1edfng r\\u1eb1ng nh\\u1eefng y\\u1ebfu t\\u1ed1 th\\u1ee7 c\\u00f4ng mang l\\u1ea1i c\\u1ea3m gi\\u00e1c d\\u1ec5 g\\u1ea7n h\\u01a1n. V\\u00ec v\\u1eady, nhi\\u1ec1u th\\u01b0\\u01a1ng hi\\u1ec7u \\u0111\\u00e3 b\\u1eaft \\u0111\\u1ea7u \\u1ee9ng d\\u1ee5ng phong c\\u00e1ch n\\u00e0y trong c\\u00e1c \\u1ea5n ph\\u1ea9m thi\\u1ebft k\\u1ebf: b\\u00e0i \\u0111\\u0103ng social, banner, poster, OOH... nh\\u1eb1m x\\u00e2y d\\u1ef1ng h\\u00ecnh \\u1ea3nh th\\u01b0\\u01a1ng hi\\u1ec7u th\\u00e2n thi\\u1ec7n v\\u00e0 \\u0111\\u00e1ng y\\u00eau h\\u01a1n v\\u1edbi kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<h3><strong>5. Metallic Typography<\\/strong><\\/h3>\\r\\n\\r\\n<p>Metallic Typography l\\u00e0 m\\u1ed9t k\\u1ef9 thu\\u1eadt \\u0111\\u1eb7c bi\\u1ec7t, t\\u1ea1o hi\\u1ec7u \\u1ee9ng 3D cho ch\\u1eef b\\u1eb1ng hi\\u1ec7u \\u1ee9ng tan ch\\u1ea3y \\u0111\\u1ec3 t\\u1ea1o n\\u00ean m\\u1ed9t ki\\u1ec3u ch\\u1eef kim lo\\u1ea1i l\\u1ea5p l\\u00e1nh gi\\u00fap thu h\\u00fat s\\u1ef1 ch\\u00fa \\u00fd c\\u1ee7a ng\\u01b0\\u1eddi nh\\u00ecn ngay l\\u1eadp t\\u1ee9c.<\\/p>\\r\\n\\r\\n<p>Ki\\u1ec3u ch\\u1eef kim lo\\u1ea1i n\\u00e0y th\\u01b0\\u1eddng \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng trong thi\\u1ebft k\\u1ebf b\\u00eca album v\\u00e0 phim \\u1ea3nh. Nhi\\u1ec1u ngh\\u1ec7 s\\u0129 v\\u00e0 nh\\u00e0 thi\\u1ebft k\\u1ebf \\u0111\\u1ed3 h\\u1ecda \\u0111\\u00e3 th\\u00eam \\u00e1nh b\\u1ea1c l\\u1ea5p l\\u00e1nh v\\u00e0 c\\u1ea3m gi\\u00e1c \\\"rock band\\\" v\\u00e0o font Liquid Chrome \\u0111\\u1ec3 mang \\u0111\\u1ebfn di\\u1ec7n m\\u1ea1o m\\u1edbi m\\u1ebb v\\u00e0 kh\\u00e1c bi\\u1ec7t. Phong c\\u00e1ch n\\u00e0y \\u0111\\u01b0\\u1ee3c d\\u1ef1 \\u0111o\\u00e1n s\\u1ebd ti\\u1ebfp t\\u1ee5c \\\"t\\u1ecfa s\\u00e1ng\\\" v\\u00e0o n\\u0103m 2024, \\u0111\\u1eb7c bi\\u1ec7t trong ng\\u00e0nh th\\u1eddi trang (v\\u1edbi s\\u1ef1 tr\\u1edf l\\u1ea1i c\\u1ee7a \\u00e1o ph\\u00f4ng in ch\\u1eef l\\u1edbn c\\u1ed5 \\u0111i\\u1ec3n) v\\u00e0 \\u00e2m nh\\u1ea1c.<\\/p>\\r\\n\\r\\n<p><em>Thi\\u1ebft k\\u1ebf b\\u00eca 1st mini album Savage c\\u1ee7a aespa s\\u1eed d\\u1ee5ng ki\\u1ec3u ch\\u1eef Metallic&nbsp;<\\/em><\\/p>\\r\\n\\r\\n<h3><strong>6. Bold-pastel Duotone colors - K\\u1ebft h\\u1ee3p hai m\\u00e0u s\\u1eafc t\\u01b0\\u01a1ng ph\\u1ea3n<\\/strong><\\/h3>\\r\\n\\r\\n<p>Phong c\\u00e1ch Duotone l\\u00e0 vi\\u1ec7c s\\u1eed d\\u1ee5ng hai m\\u00e0u s\\u1eafc t\\u01b0\\u01a1ng ph\\u1ea3n \\u0111\\u1ec3 t\\u1ea1o hi\\u1ec7u \\u1ee9ng cho thi\\u1ebft k\\u1ebf v\\u00e0 \\u0111\\u00e3 xu\\u1ea5t hi\\u1ec7n t\\u1eeb th\\u1ebf k\\u1ef7 XIX. Tuy nhi\\u00ean, phong c\\u00e1ch n\\u00e0y ch\\u1ec9 th\\u1ef1c s\\u1ef1 tr\\u1edf n\\u00ean \\\"viral\\\" trong thi\\u1ebft k\\u1ebf k\\u1ef9 thu\\u1eadt s\\u1ed1 v\\u00e0o n\\u0103m 2015, khi c\\u00e1c th\\u01b0\\u01a1ng hi\\u1ec7u n\\u1ed5i ti\\u1ebfng nh\\u01b0 Spotify s\\u1eed d\\u1ee5ng hi\\u1ec7u \\u1ee9ng duotone trong c\\u00e1c b\\u00e0i t\\u1ed5ng k\\u1ebft \\\"Year in Music\\\" c\\u1ee7a h\\u1ecd.<\\/p>\\r\\n\\r\\n<p><em>S\\u1ef1 ki\\u1ec7n Year in Music n\\u0103m 2015 c\\u1ee7a Spotify \\u201cm\\u1edf \\u0111\\u01b0\\u1eddng\\u201d cho tr\\u00e0o l\\u01b0u duotone tr\\u1edf n\\u00ean viral<\\/em><\\/p>\\r\\n\\r\\n<p>Sau \\u0111\\u00f3, r\\u1ea5t nhi\\u1ec1u c\\u00f4ng c\\u1ee5 t\\u1ea1o \\u1ea3nh duotone ra \\u0111\\u1eddi, gi\\u00fap ng\\u01b0\\u1eddi d\\u00f9ng d\\u1ec5 d\\u00e0ng \\u00e1p d\\u1ee5ng hi\\u1ec7u \\u1ee9ng n\\u00e0y cho h\\u00ecnh \\u1ea3nh c\\u1ee7a h\\u1ecd. M\\u1eb7c d\\u00f9 xu h\\u01b0\\u1edbng n\\u00e0y \\u0111\\u00e3 qua th\\u1eddi k\\u1ef3 \\u0111\\u1ec9nh cao, duotone v\\u1eabn c\\u00f3 ch\\u1ed7 \\u0111\\u1ee9ng nh\\u1ea5t \\u0111\\u1ecbnh trong gi\\u1edbi thi\\u1ebft k\\u1ebf, nh\\u01b0ng b\\u1ea3ng m\\u00e0u \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c bi\\u1ebfn \\u0111\\u1ed5i \\u0111a d\\u1ea1ng v\\u1edbi nhi\\u1ec1u m\\u00e0u s\\u1eafc h\\u01a1n.<\\/p>\\r\\n\\r\\n<p>Trong n\\u0103m 2023, nhi\\u1ec1u th\\u01b0\\u01a1ng hi\\u1ec7u \\u0111\\u00e3 s\\u1eed d\\u1ee5ng c\\u00e1c m\\u00e0u duotone t\\u01b0\\u01a1ng ph\\u1ea3n gi\\u1eefa nh\\u1eefng gam m\\u00e0u Pastel d\\u1ecbu nh\\u1eb9 v\\u00e0 nh\\u1eefng gam m\\u00e0u T\\u00e1o b\\u1ea1o trong thi\\u1ebft k\\u1ebf c\\u1ee7a h\\u1ecd, \\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 thi\\u1ebft k\\u1ebf bao b\\u00ec.<\\/p>\\r\\n\\r\\n<p><em>B\\u1ed9 bao b\\u00ec \\u0111\\u1ea7y m\\u00e0u s\\u1eafc t\\u01b0\\u01a1i s\\u00e1ng v\\u00e0 t\\u00e1o b\\u1ea1o c\\u1ee7a Vinamilk \\u0111\\u00e3 t\\u1ea1o n\\u00ean m\\u1ed9t di\\u1ec7n m\\u1ea1o ho\\u00e0n to\\u00e0n m\\u1edbi cho th\\u01b0\\u01a1ng hi\\u1ec7u s\\u1eefa n\\u00e0y<\\/em><\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ec3 c\\u00f3 m\\u1ed9t thi\\u1ebft k\\u1ebf duotone h\\u1ee3p xu h\\u01b0\\u1edbng, c\\u00e1c nh\\u00e0 thi\\u1ebft k\\u1ebf n\\u00ean k\\u1ebft h\\u1ee3p v\\u1edbi c\\u00e1c m\\u00e0u s\\u1eafc \\u0111\\u01b0\\u1ee3c c\\u00e1c c\\u00f4ng ty d\\u1ef1 \\u0111o\\u00e1n m\\u00e0u s\\u1eafc uy t\\u00edn nh\\u01b0 Pantone, WGSN &amp; Coloro.<\\/p>\\r\\n\\r\\n<h3><b>L\\u1eddi k\\u1ebft<\\/b><\\/h3>\\r\\n\\r\\n<p>Xu h\\u01b0\\u1edbng \\u0111\\u1ed3 h\\u1ecda kh\\u00f4ng ng\\u1eebng thay \\u0111\\u1ed5i v\\u00e0 ph\\u00e1t tri\\u1ec3n, vi\\u1ec7c nhanh ch\\u00f3ng c\\u1eadp nh\\u1eadt c\\u00e1c xu h\\u01b0\\u1edbng m\\u1edbi trong thi\\u1ebft k\\u1ebf \\u0111\\u1ed3 h\\u1ecda s\\u1ebd c\\u1ef1c k\\u1ef3 h\\u1eefu \\u00edch, \\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 trong th\\u1eddi \\u0111\\u1ea1i AI s\\u00e1ng t\\u1ea1o ph\\u00e1t tri\\u1ec3n nh\\u01b0 hi\\u1ec7n nay. Rubyk hy v\\u1ecdng n\\u1ed9i dung n\\u00e0y c\\u00f3 th\\u1ec3 mang l\\u1ea1i ngu\\u1ed3n c\\u1ea3m h\\u1ee9ng cho c\\u00e1c d\\u1ef1 \\u00e1n ti\\u1ebfp theo c\\u1ee7a th\\u01b0\\u01a1ng hi\\u1ec7u.<\\/p>\\r\\n\\r\\n<p>Ngu\\u1ed3n b\\u00e0i vi\\u1ebft: <strong>Rubyk Agency<\\/strong><\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/Bài viết/AI2.png', NULL, 1, 0, 3, 'active', 1, 5, '2024-06-16 07:28:49', '2024-06-21 15:01:25', 'lorem-ipsum-dolor-sit-amet-consectetuer-adipiscing-elit');
INSERT INTO `tb_cms_posts` (`id`, `taxonomy_id`, `resources_id`, `is_type`, `title`, `json_params`, `image`, `image_thumb`, `is_featured`, `count_visited`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `alias`) VALUES
(410, 91, NULL, 'post', 'Ứng dụng AI vào Marketing - Giải pháp hữu hiệu trong thời đại số', '{\"brief\":{\"vi\":\"AI ng\\u00e0y c\\u00e0ng ph\\u00e1t tri\\u1ec3n v\\u00e0 \\u0111\\u01b0\\u1ee3c \\u1ee9ng d\\u1ee5ng trong nhi\\u1ec1u l\\u0129nh v\\u1ef1c nh\\u01b0 y t\\u1ebf, gi\\u00e1o d\\u1ee5c, gi\\u1ea3i tr\\u1ec9,... Hi\\u1ec7n nay, vi\\u1ec7c \\u1ee9ng d\\u1ee5ng AI v\\u00e0o marketing \\u0111ang tr\\u1edf n\\u00ean ph\\u1ed5 bi\\u1ebfn v\\u00e0 mang \\u0111\\u1ebfn nhi\\u1ec1u l\\u1ee3i \\u00edch cho doanh nghi\\u1ec7p.\"},\"content\":{\"vi\":\"<h3>Trong th\\u1eddi \\u0111\\u1ea1i c\\u00f4ng ngh\\u1ec7 4.0, tr\\u00ed tu\\u1ec7 nh\\u00e2n t\\u1ea1o (AI) \\u0111ang \\u0111\\u01b0\\u1ee3c \\u1ee9ng d\\u1ee5ng r\\u1ed9ng r\\u00e3i trong nhi\\u1ec1u l\\u0129nh v\\u1ef1c, trong \\u0111\\u00f3 c\\u00f3 marketing. \\u1ee8ng d\\u1ee5ng AI v\\u00e0o marketing mang l\\u1ea1i nhi\\u1ec1u l\\u1ee3i \\u00edch cho doanh nghi\\u1ec7p, gi\\u00fap t\\u1ed1i \\u01b0u h\\u00f3a c\\u00e1c ho\\u1ea1t \\u0111\\u1ed9ng marketing, ti\\u1ebfp c\\u1eadn kh\\u00e1ch h\\u00e0ng hi\\u1ec7u qu\\u1ea3 h\\u01a1n, t\\u0103ng doanh thu v\\u00e0 ti\\u1ebft ki\\u1ec7m chi ph\\u00ed.<\\/h3>\\r\\n\\r\\n<h3><strong>L\\u1ee3i \\u00edch c\\u1ee7a \\u1ee9ng d\\u1ee5ng AI v\\u00e0o marketing<\\/strong><\\/h3>\\r\\n\\r\\n<p>AI mang \\u0111\\u1ebfn nhi\\u1ec1u l\\u1ee3i \\u00edch cho doanh nghi\\u1ec7p trong marketing, bao g\\u1ed3m:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\r\\n\\t<p><strong>T\\u1ed1i \\u01b0u h\\u00f3a hi\\u1ec7u qu\\u1ea3 marketing:<\\/strong>&nbsp;AI gi\\u00fap doanh nghi\\u1ec7p hi\\u1ec3u r\\u00f5 h\\u01a1n v\\u1ec1 kh\\u00e1ch h\\u00e0ng, t\\u1eeb \\u0111\\u00f3 \\u0111\\u01b0a ra c\\u00e1c chi\\u1ebfn l\\u01b0\\u1ee3c marketing ph\\u00f9 h\\u1ee3p h\\u01a1n, nh\\u1eafm m\\u1ee5c ti\\u00eau qu\\u1ea3ng c\\u00e1o ch\\u00ednh x\\u00e1c h\\u01a1n, t\\u1ea1o ra c\\u00e1c n\\u1ed9i dung s\\u00e1ng t\\u1ea1o v\\u00e0 h\\u1ea5p d\\u1eabn h\\u01a1n,\\u2026 T\\u1eeb \\u0111\\u00f3, h\\u1ecd c\\u00f3 th\\u1ec3 t\\u0103ng hi\\u1ec7u qu\\u1ea3 marketing v\\u00e0 \\u0111\\u1ea1t \\u0111\\u01b0\\u1ee3c c\\u00e1c m\\u1ee5c ti\\u00eau \\u0111\\u1ec1 ra<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>Ti\\u1ebft ki\\u1ec7m chi ph\\u00ed:&nbsp;<\\/strong>AI gi\\u00fap c\\u00e1c doanh nghi\\u1ec7p t\\u1ed1i \\u01b0u chi ph\\u00ed marketing b\\u1eb1ng c\\u00e1ch t\\u1ef1 \\u0111\\u1ed9ng h\\u00f3a c\\u00e1c quy tr\\u00ecnh, gi\\u1ea3m thi\\u1ec3u c\\u00e1c chi ph\\u00ed kh\\u00f4ng c\\u1ea7n thi\\u1ebft nh\\u01b0 chi ph\\u00ed nh\\u00e2n l\\u1ef1c, th\\u1eed nghi\\u1ec7m, chi ph\\u00ed qu\\u1ea3ng c\\u00e1o,\\u2026<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>T\\u0103ng tr\\u1ea3i nghi\\u1ec7m kh\\u00e1ch h\\u00e0ng:&nbsp;<\\/strong>AI s\\u1ebd lu\\u00f4n t\\u1ef1 h\\u1ecdc v\\u1ec1 h\\u00e0nh vi, s\\u1edf th\\u00edch c\\u1ee7a kh\\u00e1ch h\\u00e0ng, t\\u1eeb \\u0111\\u00f3 s\\u1ebd t\\u1ea1o ra c\\u00e1c n\\u1ed9i dung k\\u1ecbch b\\u1ea3n chatbot \\u0111\\u1ec3 t\\u01b0\\u01a1ng t\\u00e1c v\\u1edbi kh\\u00e1ch h\\u00e0ng cho tr\\u1ea3i nghi\\u1ec7m kh\\u00e1ch h\\u00e0ng t\\u1ed1t h\\u01a1n, t\\u1eeb \\u0111\\u00f3 t\\u0103ng l\\u00f2ng trung th\\u00e0nh c\\u1ee7a kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h3><strong>C\\u00e1c \\u1ee9ng d\\u1ee5ng AI v\\u00e0o marketing<\\/strong><\\/h3>\\r\\n\\r\\n<p>AI c\\u00f3 th\\u1ec3 \\u0111\\u01b0\\u1ee3c \\u1ee9ng d\\u1ee5ng trong nhi\\u1ec1u l\\u0129nh v\\u1ef1c marketing nh\\u01b0:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\r\\n\\t<p><strong>T\\u00ecm ki\\u1ebfm th\\u00f4ng tin:<\\/strong>&nbsp;AI s\\u1ebd t\\u1ef1 thu th\\u1eadp v\\u00e0 ph\\u00e2n t\\u00edch d\\u1eef li\\u1ec7u kh\\u00e1ch h\\u00e0ng nh\\u01b0 s\\u1edf th\\u00edch, h\\u00e0nh vi mua s\\u1eafm,\\u2026 nhanh ch\\u00f3ng v\\u00e0 ch\\u00ednh x\\u00e1c. \\u0110i\\u1ec1u n\\u00e0y gi\\u00fap doanh nghi\\u1ec7p hi\\u1ec3u r\\u00f5 h\\u01a1n v\\u1ec1 nhu c\\u1ea7u v\\u00e0 h\\u00e0nh vi c\\u1ee7a kh\\u00e1ch h\\u00e0ng, t\\u1eeb \\u0111\\u00f3 \\u0111\\u01b0a ra c\\u00e1c chi\\u1ebfn l\\u01b0\\u1ee3c marketing ph\\u00f9 h\\u1ee3p.<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>S\\u00e1ng t\\u1ea1o n\\u1ed9i dung:&nbsp;<\\/strong>AI c\\u00f3 th\\u1ec3 gi\\u00fap doanh nghi\\u1ec7p t\\u1ea1o ra nh\\u1eefng n\\u1ed9i dung marketing h\\u1ea5p d\\u1eabn v\\u00e0 thu h\\u00fat kh\\u00e1ch h\\u00e0ng. V\\u00ed d\\u1ee5: Vi\\u1ebft content qu\\u1ea3ng c\\u00e1o, t\\u1ea1o b\\u00e0i blog, email marketing, x\\u00e2y d\\u1ef1ng video qu\\u1ea3ng c\\u00e1o, thi\\u1ebft k\\u1ebf h\\u00ecnh \\u1ea3nh,\\u2026 ph\\u00f9 h\\u1ee3p v\\u1edbi t\\u1eebng \\u0111\\u1ed1i t\\u01b0\\u1ee3ng kh\\u00e1ch h\\u00e0ng theo c\\u00e1c d\\u1eef li\\u1ec7u m\\u00e0 n\\u00f3 \\u0111\\u00e3 h\\u1ecdc \\u0111\\u01b0\\u1ee3c.<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>X\\u00e1c \\u0111\\u1ecbnh kh\\u00e1ch h\\u00e0ng m\\u1ee5c ti\\u00eau:&nbsp;<\\/strong>AI s\\u1ebd ph\\u00e2n t\\u00edch v\\u00e0 x\\u00e1c \\u0111\\u1ecbnh kh\\u00e1ch h\\u00e0ng m\\u1ee5c ti\\u00eau m\\u1ed9t c\\u00e1ch ch\\u00ednh x\\u00e1c h\\u01a1n. T\\u1eeb \\u0111\\u00f3, doanh nghi\\u1ec7p c\\u00f3 th\\u1ec3 t\\u1eadp trung ngu\\u1ed3n l\\u1ef1c v\\u00e0o c\\u00e1c kh\\u00e1ch h\\u00e0ng ti\\u1ec1m n\\u0103ng, gi\\u00fap t\\u0103ng hi\\u1ec7u qu\\u1ea3 marketing.<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>\\u1ee8ng d\\u1ee5ng trong b\\u00e1n h\\u00e0ng:<\\/strong>&nbsp;AI c\\u00f3 th\\u1ec3 gi\\u00fap doanh nghi\\u1ec7p t\\u1ed1i \\u01b0u h\\u00f3a quy tr\\u00ecnh b\\u00e1n h\\u00e0ng, t\\u1eeb \\u0111\\u00f3 n\\u00e2ng cao hi\\u1ec7u qu\\u1ea3 b\\u00e1n h\\u00e0ng. V\\u00ed d\\u1ee5: \\u1ee8ng d\\u1ee5ng AI \\u0111\\u1ec3 t\\u1ef1 \\u0111\\u1ed9ng h\\u00f3a c\\u00e1c v\\u1ecb tr\\u00ed nh\\u01b0: telesale, ch\\u0103m s\\u00f3c kh\\u00e1ch h\\u00e0ng, t\\u01b0 v\\u1ea5n b\\u00e1n h\\u00e0ng tr\\u00ean c\\u00e1c n\\u00ean t\\u1ea3ng online, g\\u1eedi email marketing,\\u2026 ngo\\u00e0i ra n\\u00f3 c\\u00f2n c\\u00f3 th\\u1ec3 ph\\u00e2n t\\u00edch d\\u1eef li\\u1ec7u b\\u00e1n h\\u00e0ng, b\\u00e1o c\\u00e1o b\\u00e1n h\\u00e0ng t\\u1eeb \\u0111\\u00f3 \\u0111\\u01b0a ra nh\\u1eefng \\u0111\\u1ec1 xu\\u1ea5t nh\\u1eb1m n\\u00e2ng cao doanh s\\u1ed1 b\\u00e1n h\\u00e0ng.<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>\\u1ee8ng d\\u1ee5ng trong qu\\u1ea3ng c\\u00e1o:&nbsp;<\\/strong>AI t\\u1ef1 ph\\u00e2n t\\u00edch d\\u1eef li\\u1ec7u kh\\u00e1ch h\\u00e0ng t\\u1eeb \\u0111\\u00f3 \\u0111\\u1ec1 xu\\u1ea5t k\\u00eanh qu\\u1ea3ng c\\u00e1o ph\\u00f9 h\\u1ee3p, nh\\u1eafm m\\u1ee5c ti\\u00eau&nbsp;qu\\u1ea3ng c\\u00e1o \\u0111\\u00fang \\u0111\\u1ed1i t\\u01b0\\u1ee3ng&nbsp;kh\\u00e1ch h\\u00e0ng ti\\u1ec1m n\\u0103ng, gi\\u00fap t\\u0103ng hi\\u1ec7u qu\\u1ea3 v\\u00e0 gi\\u1ea3m chi ph\\u00ed.<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h3><strong>Nh\\u1eefng AI \\u0111\\u01b0\\u1ee3c \\u1ee9ng d\\u1ee5ng trong Marketing<\\/strong><\\/h3>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\r\\n\\t<p><strong>Machine learning:&nbsp;<\\/strong>\\u0110\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng \\u0111\\u1ec3 ph\\u00e2n t\\u00edch d\\u1eef li\\u1ec7u kh\\u00e1ch h\\u00e0ng v\\u00e0 d\\u1ef1 \\u0111o\\u00e1n h\\u00e0nh vi c\\u1ee7a h\\u1ecd. \\u0110i\\u1ec1u n\\u00e0y c\\u00f3 th\\u1ec3 gi\\u00fap c\\u00e1c doanh nghi\\u1ec7p t\\u1ea1o ra c\\u00e1c chi\\u1ebfn l\\u01b0\\u1ee3c ti\\u1ebfp th\\u1ecb \\u0111\\u01b0\\u1ee3c c\\u00e1 nh\\u00e2n h\\u00f3a h\\u01a1n, hi\\u1ec7u qu\\u1ea3 h\\u01a1n.<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>Natural language processing:&nbsp;<\\/strong>\\u0110\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng \\u0111\\u1ec3 hi\\u1ec3u v\\u00e0 ph\\u1ea3n h\\u1ed3i ng\\u00f4n ng\\u1eef c\\u1ee7a con ng\\u01b0\\u1eddi. N\\u00f3 \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng \\u0111\\u1ec3 t\\u1ea1o ra c\\u00e1c chatbot kh\\u00e1ch h\\u00e0ng, d\\u1ecbch ng\\u00f4n ng\\u1eef v\\u00e0 t\\u1ea1o n\\u1ed9i dung s\\u00e1ng t\\u1ea1o.<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>Computer vision:&nbsp;<\\/strong>\\u0110\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng \\u0111\\u1ec3 ph\\u00e2n t\\u00edch h\\u00ecnh \\u1ea3nh v\\u00e0 video \\u0111\\u1ec3 t\\u1ea1o ra c\\u00e1c qu\\u1ea3ng c\\u00e1o \\u0111\\u01b0\\u1ee3c nh\\u1eafm m\\u1ee5c ti\\u00eau d\\u1ef1a tr\\u00ean s\\u1edf th\\u00edch c\\u1ee7a ng\\u01b0\\u1eddi d\\u00f9ng ho\\u1eb7c \\u0111\\u1ec3 ph\\u00e2n t\\u00edch hi\\u1ec7u qu\\u1ea3 c\\u1ee7a c\\u00e1c chi\\u1ebfn d\\u1ecbch ti\\u1ebfp th\\u1ecb.<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>Chat GPT, Google Bard:<\\/strong>&nbsp;\\u0110\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng \\u0111\\u1ec3 x\\u00e2y d\\u1ef1ng k\\u1ebf ho\\u1ea1ch marketing, s\\u00e1ng t\\u1ea1o n\\u1ed9i dung, x\\u00e2y d\\u1ef1ng k\\u1ecbch b\\u1ea3n video qu\\u1ea3ng c\\u00e1o, x\\u00e2y d\\u1ef1ng n\\u1ed9i dung qu\\u1ea3ng c\\u00e1o, truy\\u1ec1n th\\u00f4ng,\\u2026<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>Chatbots:&nbsp;<\\/strong>\\u0110\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng \\u0111\\u1ec3 ph\\u1ea3n h\\u1ed3i c\\u00e1c c\\u00e2u h\\u1ecfi c\\u1ee7a kh\\u00e1ch h\\u00e0ng, t\\u01b0 v\\u1ea5n b\\u00e1n h\\u00e0ng, ch\\u0103m s\\u00f3c kh\\u00e1ch h\\u00e0ng tr\\u00ean c\\u00e1c n\\u00ean t\\u1ea3ng online,\\u2026<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h3><strong>M\\u1ed9t s\\u1ed1 l\\u01b0u \\u00fd \\u0111\\u1ec3 \\u1ee9ng d\\u1ee5ng AI v\\u00e0o marketing hi\\u1ec7u qu\\u1ea3<\\/strong><\\/h3>\\r\\n\\r\\n<p>\\u0110\\u1ec3 \\u1ee9ng d\\u1ee5ng AI v\\u00e0o marketing hi\\u1ec7u qu\\u1ea3, doanh nghi\\u1ec7p c\\u1ea7n l\\u01b0u \\u00fd m\\u1ed9t s\\u1ed1 v\\u1ea5n \\u0111\\u1ec1 sau:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>\\r\\n\\t<p><strong>X\\u00e1c \\u0111\\u1ecbnh m\\u1ee5c ti\\u00eau:&nbsp;<\\/strong>Doanh nghi\\u1ec7p c\\u1ea7n x\\u00e1c \\u0111\\u1ecbnh r\\u00f5 m\\u1ee5c ti\\u00eau c\\u1ee7a m\\u00ecnh l\\u00e0 g\\u00ec? mu\\u1ed1n t\\u0103ng doanh thu, t\\u0103ng nh\\u1eadn th\\u1ee9c v\\u1ec1 th\\u01b0\\u01a1ng hi\\u1ec7u hay c\\u1ea3i thi\\u1ec7n tr\\u1ea3i nghi\\u1ec7m kh\\u00e1ch h\\u00e0ng tr\\u01b0\\u1edbc khi tri\\u1ec3n khai \\u1ee9ng d\\u1ee5ng AI v\\u00e0o Marketing.<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>T\\u00ecm hi\\u1ec3u v\\u1ec1 AI:<\\/strong>&nbsp;C\\u00f3 nhi\\u1ec1u c\\u00f4ng c\\u1ee5&nbsp;AI Marketing&nbsp;kh\\u00e1c nhau tr\\u00ean th\\u1ecb tr\\u01b0\\u1eddng. Doanh nghi\\u1ec7p c\\u1ea7n t\\u00ecm hi\\u1ec3u k\\u1ef9 v\\u1ec1 c\\u00e1c c\\u00f4ng c\\u1ee5 n\\u00e0y \\u0111\\u1ec3 l\\u1ef1a ch\\u1ecdn \\u0111\\u01b0\\u1ee3c AI ph\\u00f9 h\\u1ee3p v\\u1edbi nhu c\\u1ea7u v\\u00e0 kh\\u1ea3 n\\u0103ng c\\u1ee7a m\\u00ecnh.<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>X\\u00e2y d\\u1ef1ng d\\u1eef li\\u1ec7u:<\\/strong>&nbsp;Doanh nghi\\u1ec7p c\\u1ea7n thu th\\u1eadp v\\u00e0 ph\\u00e2n t\\u00edch d\\u1eef li\\u1ec7u marketing m\\u1ed9t c\\u00e1ch hi\\u1ec7u qu\\u1ea3 \\u0111\\u1ec3 AI c\\u00f3 th\\u1ec3 \\u0111\\u01b0a ra c\\u00e1c quy\\u1ebft \\u0111\\u1ecbnh ch\\u00ednh x\\u00e1c.<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>Th\\u1eed nghi\\u1ec7m v\\u00e0 \\u0111\\u00e1nh gi\\u00e1:<\\/strong>&nbsp;Doanh nghi\\u1ec7p n\\u00ean th\\u1eed nghi\\u1ec7m c\\u00e1c gi\\u1ea3i ph\\u00e1p AI tr\\u01b0\\u1edbc khi tri\\u1ec3n khai tr\\u00ean quy m\\u00f4 l\\u1edbn. \\u0110i\\u1ec1u n\\u00e0y s\\u1ebd gi\\u00fap doanh nghi\\u1ec7p \\u0111\\u00e1nh gi\\u00e1 hi\\u1ec7u qu\\u1ea3 c\\u1ee7a c\\u00e1c gi\\u1ea3i ph\\u00e1p tr\\u01b0\\u1edbc khi \\u0111\\u01b0a ra quy\\u1ebft \\u0111\\u1ecbnh tri\\u1ec3n khai tr\\u00ean quy m\\u00f4 l\\u1edbn.<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h3><strong>K\\u1ebft lu\\u1eadn<\\/strong><\\/h3>\\r\\n\\r\\n<p>V\\u1edbi s\\u1ef1 ph\\u00e1t tri\\u1ec3n c\\u1ee7a c\\u00f4ng ngh\\u1ec7 AI, vi\\u1ec7c \\u1ee9ng d\\u1ee5ng AI v\\u00e0o marketing ng\\u00e0y c\\u00e0ng tr\\u1edf n\\u00ean ph\\u1ed5 bi\\u1ebfn. Vi\\u1ec7c \\u1ee9ng d\\u1ee5ng AI v\\u00e0o marketing mang \\u0111\\u1ebfn nhi\\u1ec1u l\\u1ee3i \\u00edch cho doanh nghi\\u1ec7p, gi\\u00fap t\\u1ed1i \\u01b0u h\\u00f3a ngu\\u1ed3n l\\u1ef1c marketing, ti\\u1ebft ki\\u1ec7m chi ph\\u00ed v\\u00e0 t\\u0103ng hi\\u1ec7u qu\\u1ea3 kinh doanh.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Ngu\\u1ed3n: <a href=\\\"https:\\/\\/performancemarketing.asia\\/ung-dung-ai-vao-marketing-giai-phap-toi-uu-cho-doanh-nghiep\\/\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\"><em>performancemarketing.asia<\\/em><\\/a><\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/Bài viết/AI1.png', NULL, 1, 37, 1, 'active', 1, 5, '2024-06-16 07:28:49', '2024-07-07 17:15:13', 'lorem-ipsum-dolor-sit-amet-consectetuer-adipiscing-elit'),
(411, 91, NULL, 'post', 'NGÀY 21/06/2024 - NGÀY ĐẶC BIỆT NHẤT TRONG VÒNG 228 NĂM QUA', '{\"brief\":{\"vi\":\"C\\u00f9ng GBD t\\u00ecm hi\\u1ec3u nh\\u1eefng th\\u00f4ng tin th\\u00fa v\\u1ecb v\\u1ec1 ng\\u00e0y H\\u1ea0 CH\\u00cd 21\\/06\\/2024 nh\\u00e9!\"},\"content\":{\"vi\":\"<p>B\\u1ea1n \\u0111\\u00e3 bao gi\\u1edd th\\u1eafc m\\u1eafc t\\u1ea1i sao m\\u1ed7i n\\u0103m \\u0111\\u1ec1u c\\u00f3 m\\u1ed9t ng\\u00e0y m\\u1eb7t tr\\u1eddi m\\u1ecdc s\\u1edbm h\\u01a1n v\\u00e0 l\\u1eb7n mu\\u1ed9n h\\u01a1n h\\u1eb3n so v\\u1edbi nh\\u1eefng ng\\u00e0y kh\\u00e1c? B\\u00ed \\u1ea9n \\u0111\\u1eb1ng sau hi\\u1ec7n t\\u01b0\\u1ee3ng ng\\u00e0y d\\u00e0i nh\\u1ea5t n\\u0103m n\\u00e0y ch\\u00ednh l\\u00e0 \\u0111i\\u1ec3m H\\u1ea1 ch\\u00ed - th\\u1eddi \\u0111i\\u1ec3m v\\u00f4 c\\u00f9ng \\u0111\\u1eb7c bi\\u1ec7t trong chu k\\u1ef3 Tr\\u00e1i \\u0110\\u1ea5t quay quanh M\\u1eb7t Tr\\u1eddi. H\\u00e3y c\\u00f9ng kh\\u00e1m ph\\u00e1 nh\\u1eefng \\u0111i\\u1ec1u th\\u00fa v\\u1ecb v\\u1ec1 ng\\u00e0y H\\u1ea1 ch\\u00ed n\\u0103m nay - ng\\u00e0y 21\\/06\\/2024 c\\u00f9ng GBD nh\\u00e9!&nbsp;<\\/p>\\r\\n\\r\\n<p><strong>Ng\\u00e0y H\\u1ea1 ch\\u00ed l\\u00e0 ng\\u00e0y g\\u00ec?<\\/strong><\\/p>\\r\\n\\r\\n<p>Ng\\u00e0y H\\u1ea1 ch\\u00ed \\u0111\\u00e1nh d\\u1ea5u \\u0111i\\u1ec3m gi\\u1eefa m\\u00f9a h\\u00e8 v\\u00e0 th\\u01b0\\u1eddng r\\u01a1i v\\u00e0o gi\\u1eefa n\\u0103m (th\\u00e1ng 6). \\u0110\\u00e2y l\\u00e0 th\\u1eddi \\u0111i\\u1ec3m b\\u1eaft \\u0111\\u1ea7u m\\u00f9a h\\u00e8 \\u1edf B\\u1eafc b\\u00e1n c\\u1ea7u v\\u00e0 kh\\u1edfi \\u0111\\u1ea7u m\\u00f9a \\u0111\\u00f4ng \\u1edf Nam b\\u00e1n c\\u1ea7u. Theo c\\u00e1c nghi\\u00ean c\\u1ee9u thi\\u00ean v\\u0103n, v\\u00e0o ng\\u00e0y n\\u00e0y, B\\u1eafc b\\u00e1n c\\u1ea7u nghi\\u00eang v\\u1ec1 ph\\u00eda M\\u1eb7t tr\\u1eddi nhi\\u1ec1u h\\u01a1n so v\\u1edbi Nam b\\u00e1n c\\u1ea7u m\\u1ed9t g\\u00f3c 23,5 \\u0111\\u1ed9.<\\/p>\\r\\n\\r\\n<p>Theo th\\u00f4ng l\\u1ec7, ti\\u1ebft H\\u1ea1 ch\\u00ed b\\u1eaft \\u0111\\u1ea7u t\\u1eeb ng\\u00e0y 21 ho\\u1eb7c 22 th\\u00e1ng 6 d\\u01b0\\u01a1ng l\\u1ecbch (sau khi k\\u1ebft th\\u00fac ti\\u1ebft Mang ch\\u1ee7ng) v\\u00e0 k\\u00e9o d\\u00e0i \\u0111\\u1ebfn kho\\u1ea3ng ng\\u00e0y 6 \\u0111\\u1ebfn 8 th\\u00e1ng 7 d\\u01b0\\u01a1ng l\\u1ecbch (khi ti\\u1ebft Ti\\u1ec3u th\\u1eed b\\u1eaft \\u0111\\u1ea7u). N\\u0103m 2024, ng\\u00e0y H\\u1ea1 ch\\u00ed s\\u1ebd r\\u01a1i v\\u00e0o th\\u1ee9 S\\u00e1u ng\\u00e0y 21\\/6.&nbsp;<\\/p>\\r\\n\\r\\n<p><strong>T\\u1ea1i sao ng\\u00e0y 21\\/06\\/2024 l\\u1ea1i l\\u00e0 ng\\u00e0y \\u0111\\u1eb7c bi\\u1ec7t nh\\u1ea5t trong v\\u00f2ng 228 n\\u0103m qua?<\\/strong><\\/p>\\r\\n\\r\\n<p><em><strong>1. Ng\\u00e0y h\\u1ea1 ch\\u00ed d\\u00e0i nh\\u1ea5t v\\u00e0 \\u0111\\u1ebfn s\\u1edbm nh\\u1ea5t trong v\\u00f2ng 228 n\\u0103m&nbsp;<\\/strong><\\/em><\\/p>\\r\\n\\r\\n<p>V\\u00e0o ng\\u00e0y H\\u1ea1 ch\\u00ed, c\\u1ef1c B\\u1eafc c\\u1ee7a Tr\\u00e1i \\u0110\\u1ea5t \\u0111\\u1ea1t \\u0111\\u1ed9 nghi\\u00eang t\\u1ed1i \\u0111a v\\u1ec1 ph\\u00eda M\\u1eb7t Tr\\u1eddi. M\\u1eb7t Tr\\u1eddi s\\u1ebd xu\\u1ea5t hi\\u1ec7n \\u1edf \\u0111i\\u1ec3m c\\u1ef1c B\\u1eafc ngay tr\\u00ean ch\\u00ed tuy\\u1ebfn B\\u1eafc. V\\u00e0o ng\\u00e0y n\\u00e0y, \\u1edf b\\u00e1n c\\u1ea7u B\\u1eafc, M\\u1eb7t Tr\\u1eddi s\\u1ebd \\u0111i theo \\u0111\\u01b0\\u1eddng d\\u00e0i nh\\u1ea5t v\\u00e0 cao nh\\u1ea5t tr\\u00ean b\\u1ea7u tr\\u1eddi, \\u0111\\u00f3 l\\u00e0 l\\u00fd do t\\u1ea1i sao ng\\u00e0y H\\u1ea1 ch\\u00ed c\\u00f3 ban ng\\u00e0y d\\u00e0i nh\\u1ea5t v\\u00e0 ban \\u0111\\u00eam ng\\u1eafn nh\\u1ea5t trong n\\u0103m.<\\/p>\\r\\n\\r\\n<p>Trong h\\u1ea7u h\\u1ebft c\\u00e1c n\\u0103m, ng\\u00e0y h\\u1ea1 ch\\u00ed th\\u01b0\\u1eddng x\\u1ea3y ra v\\u00e0o ng\\u00e0y 21\\/6 (ng\\u00e0y 22\\/6 theo gi\\u1edd Vi\\u1ec7t Nam), nh\\u01b0ng n\\u0103m 2024, ng\\u00e0y h\\u1ea1 ch\\u00ed b\\u1eaft \\u0111\\u1ea7u t\\u1eeb chi\\u1ec1u 20\\/6.<\\/p>\\r\\n\\r\\n<p>\\u0110i\\u1ec1u n\\u00e0y \\u0111\\u1ed3ng ngh\\u0129a v\\u1edbi vi\\u1ec7c 2024 l\\u00e0 n\\u0103m c\\u00f3 ng\\u00e0y h\\u1ea1 ch\\u00ed \\u0111\\u1ebfn s\\u1edbm nh\\u1ea5t k\\u1ec3 t\\u1eeb n\\u0103m 1796 cho \\u0111\\u1ebfn nay. Tr\\u01b0\\u1edbc \\u0111\\u00f3, ng\\u00e0y h\\u1ea1 ch\\u00ed trong n\\u0103m 1796 b\\u1eaft \\u0111\\u1ea7u t\\u1eeb l\\u00fac 5h45 chi\\u1ec1u 20\\/6 (theo gi\\u1edd UTC). Nh\\u01b0 v\\u1eady, ng\\u00e0y 21\\/6\\/2024 s\\u1ebd l\\u00e0 ng\\u00e0y \\u0111\\u1eb7c bi\\u1ec7t di\\u1ec5n ra trong v\\u00f2ng 228 n\\u0103m qua, khi ng\\u00e0y H\\u1ea1 ch\\u00ed \\u0111\\u1ebfn s\\u1edbm v\\u00e0 \\u0111\\u00e1nh d\\u1ea5u th\\u1eddi \\u0111i\\u1ec3m m\\u00f9a h\\u00e8 ch\\u00ednh th\\u1ee9c b\\u1eaft \\u0111\\u1ea7u s\\u1edbm h\\u01a1n.&nbsp;<\\/p>\\r\\n\\r\\n<p><em><strong>2. V\\u00ec sao ng\\u00e0y H\\u1ea1 ch\\u00ed n\\u0103m 2024 l\\u1ea1i \\u0111\\u1ebfn s\\u1edbm h\\u01a1n?&nbsp;<\\/strong><\\/em><\\/p>\\r\\n\\r\\n<p>Ng\\u00e0y H\\u1ea1 ch\\u00ed n\\u0103m nay \\u0111\\u1ebfn s\\u1edbm ch\\u1ec9 \\u0111\\u01a1n gi\\u1ea3n l\\u00e0 do l\\u1ecbch ch\\u00fang ta \\u0111ang s\\u1eed d\\u1ee5ng kh\\u00f4ng th\\u1ef1c s\\u1ef1 ho\\u00e0n h\\u1ea3o.&nbsp;<\\/p>\\r\\n\\r\\n<p>Ch\\u00fang ta th\\u01b0\\u1eddng t\\u00ednh m\\u1ed9t n\\u0103m b\\u00ecnh th\\u01b0\\u1eddng (n\\u0103m kh\\u00f4ng nhu\\u1eadn) c\\u00f3 365 ng\\u00e0y, nh\\u01b0ng th\\u1ef1c t\\u1ebf Tr\\u00e1i \\u0110\\u1ea5t m\\u1ea5t nhi\\u1ec1u th\\u1eddi gian h\\u01a1n \\u0111\\u1ec3 th\\u1ef1c hi\\u1ec7n m\\u1ed9t v\\u00f2ng quay quanh M\\u1eb7t Tr\\u1eddi. Trung b\\u00ecnh, Tr\\u00e1i \\u0110\\u1ea5t m\\u1ea5t 365 ng\\u00e0y, 5 gi\\u1edd v\\u00e0 49 ph\\u00fat \\u0111\\u1ec3 ho\\u00e0n th\\u00e0nh m\\u1ed9t v\\u00f2ng quay quanh M\\u1eb7t Tr\\u1eddi. \\u0110\\u00f3 l\\u00e0 l\\u00fd do t\\u1ea1i sao c\\u1ee9 4 n\\u0103m, ch\\u00fang ta c\\u00f3 m\\u1ed9t n\\u0103m nhu\\u1eadn v\\u1edbi m\\u1ed9t ng\\u00e0y \\u0111\\u01b0\\u1ee3c c\\u1ed9ng th\\u00eam \\u0111\\u1ec3 b\\u00f9 v\\u00e0o kho\\u1ea3ng th\\u1eddi gian 1\\/4 ng\\u00e0y d\\u01b0 ra \\u0111\\u00f3.&nbsp;<\\/p>\\r\\n\\r\\n<p>Trong nh\\u1eefng n\\u0103m nhu\\u1eadn, nh\\u01b0 n\\u0103m 2024, c\\u00e1c ng\\u00e0y ch\\u00ed (h\\u1ea1 ch\\u00ed, \\u0111\\u00f4ng ch\\u00ed) v\\u00e0 ng\\u00e0y ph\\u00e2n (xu\\u00e2n ph\\u00e2n, thu ph\\u00e2n) th\\u01b0\\u1eddng x\\u1ea3y ra s\\u1edbm h\\u01a1n 18 gi\\u1edd 11 ph\\u00fat so v\\u1edbi n\\u0103m tr\\u01b0\\u1edbc \\u0111\\u00f3. Sau \\u0111\\u00f3, trong nh\\u1eefng n\\u0103m kh\\u00f4ng nhu\\u1eadn li\\u00ean ti\\u1ebfp, nh\\u1eefng ng\\u00e0y n\\u00e0y l\\u1ea1i l\\u1ea1i b\\u1eaft \\u0111\\u1ea7u mu\\u1ed9n h\\u01a1n kho\\u1ea3ng 5 gi\\u1edd 49 ph\\u00fat so v\\u1edbi nh\\u1eefng n\\u0103m tr\\u01b0\\u1edbc \\u0111\\u00f3.<\\/p>\\r\\n\\r\\n<p>Theo th\\u1eddi gian, c\\u00e1c \\u0111i\\u1ec3m ch\\u00ed v\\u00e0 \\u0111i\\u1ec3m ph\\u00e2n s\\u1ebd di\\u1ec5n ra s\\u1edbm h\\u01a1n kho\\u1ea3ng 45 ph\\u00fat sau m\\u1ed7i 4 n\\u0103m ho\\u1eb7c s\\u1edbm h\\u01a1n 3\\/4 ng\\u00e0y sau m\\u1ed7i th\\u1ebf k\\u1ef7. Ngh\\u0129a l\\u00e0 trong th\\u1ebf k\\u1ef7 n\\u00e0y, ph\\u1ea3i \\u0111\\u1ebfn n\\u0103m 2096, ng\\u00e0y H\\u1ea1 ch\\u00ed m\\u1edbi l\\u1ea1i m\\u1ed9t l\\u1ea7n n\\u1eefa di\\u1ec5n ra s\\u1edbm h\\u01a1n so v\\u1edbi n\\u0103m 2024.<\\/p>\\r\\n\\r\\n<p><strong>3. Hi\\u1ec7n t\\u01b0\\u1ee3ng thi\\u00ean v\\u0103n \\u0111\\u1eb7c bi\\u1ec7t x\\u1ea3y ra v\\u00e0o ng\\u00e0y 21\\/6\\/2024<\\/strong><\\/p>\\r\\n\\r\\n<p>Ng\\u00e0y 21\\/6\\/2024 kh\\u00f4ng ch\\u1ec9 \\u0111\\u00e1nh d\\u1ea5u vi\\u1ec7c ng\\u00e0y H\\u1ea1 ch\\u00ed b\\u1eaft \\u0111\\u1ea7u s\\u1edbm nh\\u1ea5t trong v\\u00f2ng 228 n\\u0103m qua, m\\u00e0 c\\u00f2n l\\u00e0 ng\\u00e0y c\\u00f3 m\\u1ed9t hi\\u1ec7n t\\u01b0\\u1ee3ng thi\\u00ean v\\u0103n \\u0111\\u1eb7c bi\\u1ec7t, \\u0111\\u00f3 l\\u00e0 hi\\u1ec7n t\\u01b0\\u1ee3ng M\\u1eb7t Tr\\u0103ng t\\u0129nh c\\u1ef1c \\u0111\\u1ea1i (hay c\\u00f2n g\\u1ecdi l\\u00e0 hi\\u1ec7n t\\u01b0\\u1ee3ng M\\u1eb7t Tr\\u0103ng di chuy\\u1ec3n theo chi\\u1ec1u ngang tr\\u00ean b\\u1ea7u tr\\u1eddi).<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>\\u0110\\u00e2y l\\u00e0 hi\\u1ec7n t\\u01b0\\u1ee3ng x\\u1ea3y ra v\\u1edbi chu k\\u1ef3 18,6 n\\u0103m m\\u1ed9t l\\u1ea7n, khi M\\u1eb7t Tr\\u0103ng \\u0111\\u1ea1t \\u0111\\u1ed9 cao t\\u1ed1i \\u0111a tr\\u00ean b\\u1ea7u tr\\u1eddi trong kho\\u1ea3ng th\\u1eddi gian d\\u00e0i. Kh\\u00e1i ni\\u1ec7m \\\"t\\u0129nh\\\" \\u1edf \\u0111\\u00e2y ngh\\u0129a l\\u00e0 M\\u1eb7t Tr\\u0103ng s\\u1ebd ng\\u1eebng bi\\u1ebfn thi\\u00ean t\\u1ee9c th\\u1eddi tr\\u00ean b\\u1ea7u tr\\u1eddi. \\u0110i\\u1ec1u n\\u00e0y d\\u1eabn \\u0111\\u1ebfn vi\\u1ec7c M\\u1eb7t Tr\\u0103ng&nbsp;s\\u1ebd xu\\u1ea5t hi\\u1ec7n tr\\u00ean b\\u1ea7u tr\\u1eddi \\u0111\\u00eam l\\u00e2u h\\u01a1n, v\\u00e0 di chuy\\u1ec3n g\\u1ea7n nh\\u01b0 theo m\\u1ed9t \\u0111\\u01b0\\u1eddng ngang.<\\/p>\\r\\n\\r\\n<p>L\\u1ea7n g\\u1ea7n nh\\u1ea5t x\\u1ea3y ra hi\\u1ec7n t\\u01b0\\u1ee3ng M\\u1eb7t Tr\\u0103ng t\\u0129nh c\\u1ef1c \\u0111\\u1ea1i l\\u00e0 v\\u00e0o ng\\u00e0y 15\\/9\\/2006.<\\/p>\\r\\n\\r\\n<p>3. Nhi\\u1ec7t \\u0111\\u1ed9 cao k\\u1ec9 l\\u1ee5c t\\u1ea1i Vi\\u1ec7t Nam<\\/p>\\r\\n\\r\\n<p>Theo Trung t\\u00e2m D\\u1ef1 b\\u00e1o Kh\\u00ed t\\u01b0\\u1ee3ng Th\\u1ee7y v\\u0103n Qu\\u1ed1c gia, ng\\u00e0y 21\\/06\\/2024 nhi\\u1ec7t \\u0111\\u1ed9 c\\u00f3 th\\u1ec3 l\\u00ean \\u0111\\u1ebfn tr\\u00ean 39 \\u0111\\u1ed9 C t\\u1ea1i nhi\\u1ec1u v\\u00f9ng tr\\u00ean c\\u1ea3 n\\u01b0\\u1edbc. Th\\u1eddi ti\\u1ebft s\\u1ebd r\\u1ea5t oi b\\u1ee9c, t\\u1ea1o \\u0111i\\u1ec1u ki\\u1ec7n cho c\\u00e1c b\\u1ec7nh nh\\u01b0 c\\u1ea3m c\\u00fam v\\u00e0 say n\\u1eafng d\\u1ec5 d\\u00e0ng ph\\u00e1t sinh, \\u1ea3nh h\\u01b0\\u1edfng \\u0111\\u1ebfn s\\u1ee9c kh\\u1ecfe con ng\\u01b0\\u1eddi. Do \\u0111\\u00f3, vi\\u1ec7c chu\\u1ea9n b\\u1ecb k\\u1ef9 l\\u01b0\\u1ee1ng tr\\u01b0\\u1edbc khi ra \\u0111\\u01b0\\u1eddng trong ng\\u00e0y n\\u00e0y l\\u00e0 v\\u00f4 c\\u00f9ng c\\u1ea7n thi\\u1ebft.&nbsp;<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/Bài viết/Untitled-2-01.jpg', NULL, 1, 23, 2, 'active', 5, 5, '2024-06-20 09:20:30', '2024-07-08 01:38:40', 'ngay-21062024-ngay-dac-biet-nhat-trong-vong-228-nam-qua');

-- --------------------------------------------------------

--
-- Table structure for table `tb_cms_taxonomys`
--

CREATE TABLE `tb_cms_taxonomys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `taxonomy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_show_home` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_cms_taxonomys`
--

INSERT INTO `tb_cms_taxonomys` (`id`, `taxonomy`, `parent_id`, `title`, `json_params`, `is_featured`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `alias`, `is_show_home`) VALUES
(84, 'product', NULL, 'Dịch vụ', '{\"image\":null,\"image_background\":null,\"brief\":{\"vi\":\"Lorem ipsum dolor\"},\"content\":{\"vi\":null},\"seo_title\":\"d\\u1ecbch v\\u1ee5\",\"seo_keyword\":\"d\\u1ecbch v\\u1ee5\",\"seo_description\":\"d\\u1ecbch v\\u1ee5\"}', 1, NULL, 'active', 1, 1, '2024-06-16 06:39:18', '2024-06-16 06:49:17', 'dich-vu', 0),
(90, 'resource', NULL, 'Dự án', '{\"image\":null,\"image_background\":null,\"brief\":{\"vi\":\"Kh\\u00e1m ph\\u00e1 t\\u01b0 duy thi\\u1ebft k\\u1ebf v\\u00e0 tri\\u1ebft l\\u00fd s\\u00e1ng t\\u1ea1o \\u0111\\u01b0\\u1ee3c ch\\u00fang t\\u00f4i g\\u1eedi g\\u1eafm trong <\\/br> t\\u1eebng d\\u1ef1 \\u00e1n.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, NULL, 'active', 1, 1, '2024-06-16 07:02:03', '2024-06-16 10:43:30', 'du-an', 0),
(91, 'post', NULL, 'Bài viết', '{\"image\":\"\\/data\\/cms-image\\/background_duan.png\",\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, NULL, 'active', 1, 1, '2024-06-16 07:27:32', '2024-06-16 12:13:10', 'blog', 0),
(92, 'post', NULL, 'BLOG', '{\"image\":null,\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, NULL, 'delete', 1, 1, '2024-06-16 12:09:57', '2024-06-16 12:12:28', 'blog', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_components`
--

CREATE TABLE `tb_components` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `component_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_components`
--

INSERT INTO `tb_components` (`id`, `component_code`, `parent_id`, `title`, `brief`, `content`, `json_params`, `image`, `image_background`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'menu', NULL, 'Main menu', NULL, NULL, '{\"menu_id\":\"24\"}', NULL, NULL, 1, 'active', 1, 1, '2022-05-04 08:23:05', '2022-05-20 01:38:02'),
(2, 'banner_image', NULL, 'Adv banner', NULL, NULL, NULL, '/data/cms-image/banner/no-banner.jpg', NULL, 2, 'active', 1, 1, '2022-05-04 10:25:30', '2022-05-04 10:25:30'),
(3, 'menu', NULL, 'Primary sidebar', 'Primary sidebar section', NULL, '{\"menu_id\":\"33\"}', NULL, NULL, 3, 'active', 1, 1, '2022-05-19 07:24:44', '2022-05-20 01:38:15'),
(4, 'custom', NULL, 'Footer content', NULL, NULL, NULL, NULL, NULL, 4, 'active', 1, 1, '2022-05-19 15:21:27', '2022-05-19 15:21:27'),
(5, NULL, 2, 'Right banner 1', 'Description to this banner', NULL, '{\"url_link\":\"#\",\"url_link_title\":\"Show now\",\"target\":\"_self\"}', '/data/cms-image/meta-logo-favicon.png', NULL, 5, 'delete', 1, 1, '2022-05-20 04:24:40', '2022-05-20 06:23:36'),
(6, NULL, 2, 'Right banner 1', 'Description to this banner', NULL, '{\"url_link\":\"#\",\"url_link_title\":\"Show now\",\"target\":\"_self\"}', '/data/cms-image/meta-logo-favicon.png', NULL, 1, 'active', 1, 1, '2022-05-20 04:27:07', '2022-05-20 04:27:07'),
(7, NULL, 2, 'Right banner 2', NULL, NULL, '{\"url_link\":\"#\",\"url_link_title\":\"View more\",\"target\":\"_self\"}', '/data/banner/architektura-5.jpg', NULL, 2, 'active', 1, 1, '2022-05-20 06:25:03', '2022-05-20 06:25:03'),
(8, NULL, 2, 'Right banner 3', NULL, NULL, '{\"url_link\":null,\"url_link_title\":null,\"target\":\"_self\"}', '/data/banner/ewx_cslxkaio8su.jpg', NULL, 3, 'active', 1, 1, '2022-05-20 06:27:24', '2022-05-20 06:27:24');

-- --------------------------------------------------------

--
-- Table structure for table `tb_component_configs`
--

CREATE TABLE `tb_component_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `component_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `is_config` tinyint(1) NOT NULL DEFAULT '1',
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_component_configs`
--

INSERT INTO `tb_component_configs` (`id`, `name`, `description`, `component_code`, `json_params`, `is_config`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Menu', NULL, 'menu', NULL, 1, 1, 'active', 1, 1, '2022-04-26 09:53:00', '2022-04-26 09:53:00'),
(2, 'Custom', NULL, 'custom', NULL, 1, 2, 'active', 1, 1, '2022-04-26 09:53:17', '2022-04-26 09:53:17'),
(3, 'Banner / Image', NULL, 'banner_image', NULL, 1, 3, 'active', 1, 1, '2022-04-26 09:53:50', '2022-04-26 09:53:50');

-- --------------------------------------------------------

--
-- Table structure for table `tb_contacts`
--

CREATE TABLE `tb_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'contact',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `admin_note` text COLLATE utf8mb4_unicode_ci,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_contacts`
--

INSERT INTO `tb_contacts` (`id`, `is_type`, `name`, `email`, `phone`, `subject`, `content`, `admin_note`, `json_params`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'newsletter', NULL, 'huuthangb2k50@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, '2022-06-02 08:02:36', '2022-06-02 08:02:36'),
(16, 'newsletter', NULL, 'thangnh.edu@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, '2022-09-13 09:54:38', '2022-09-13 09:54:38'),
(19, 'call_request', 'Thắng Nguyễn 2', 'thangnh.edu@gmail.com', '0912 568 999', NULL, 'Thử chức năng trên fhm', NULL, NULL, NULL, 'new', NULL, NULL, '2022-10-08 07:14:54', '2022-10-08 07:14:54'),
(53, 'newsletter', NULL, 'manh@fmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, '2023-02-20 07:44:54', '2023-02-20 07:44:54'),
(54, 'newsletter', NULL, 'fsd@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, '2023-02-20 08:19:02', '2023-02-20 08:19:02'),
(56, 'call_request', 'BrandonMug', 'no.reply.Miple@gmail.com', '89175535951', NULL, 'Hi!  cauthangductung.com \r\n \r\nDid yоu knоw thаt it is pоssiblе tо sеnd mеssаgе аbsоlutеly lеgаlly? \r\nWе prеsеntаtiоn а nеw mеthоd оf sеnding аppеаl thrоugh fееdbасk fоrms. Suсh fоrms аrе lосаtеd оn mаny sitеs. \r\nWhеn suсh prоpоsаls аrе sеnt, nо pеrsоnаl dаtа is usеd, аnd mеssаgеs аrе sеnt tо fоrms spесifiсаlly dеsignеd tо rесеivе mеssаgеs аnd аppеаls. \r\nаlsо, mеssаgеs sеnt thrоugh fееdbасk Fоrms dо nоt gеt intо spаm bесаusе suсh mеssаgеs аrе соnsidеrеd impоrtаnt. \r\nWе оffеr yоu tо tеst оur sеrviсе fоr frее. Wе will sеnd up tо 50,000 mеssаgеs fоr yоu. \r\nThе соst оf sеnding оnе milliоn mеssаgеs is 59 USD. \r\n \r\nThis lеttеr is сrеаtеd аutоmаtiсаlly. Plеаsе usе thе соntасt dеtаils bеlоw tо соntасt us. \r\n \r\nContact us. \r\nTelegram - @FeedbackMessages \r\nSkype  live:contactform_18 \r\nWhatsApp - +375259112693 \r\nWe only use chat.', NULL, NULL, NULL, 'new', NULL, NULL, '2023-02-21 09:35:04', '2023-02-21 09:35:04'),
(57, 'contact', 'Đăng ký mới', 'tuannguyenduy0111@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'new', NULL, NULL, '2024-01-12 02:09:07', '2024-01-12 02:09:07'),
(58, 'contact', 'Đăng ký mới', 'dfsgf', NULL, NULL, NULL, NULL, NULL, NULL, 'new', NULL, NULL, '2024-06-16 07:52:55', '2024-06-16 07:52:55'),
(59, 'contact', 'Đăng ký mới', 'support@gbd.vn', NULL, NULL, NULL, NULL, NULL, NULL, 'new', NULL, NULL, '2024-06-19 08:01:54', '2024-06-19 08:01:54'),
(60, 'call_request', 'Mạnh', 'haha@gmail.com', '0987063008', NULL, 'hà nội', NULL, '{\"template\":\"http:\\/\\/furniture.efb.vn\\/\"}', NULL, 'new', NULL, NULL, '2024-07-01 15:31:45', '2024-07-01 15:31:45'),
(61, 'call_request', 'Manh test 2', 'msnbbm@gmail.com', '0123456789', NULL, NULL, NULL, '{\"template\":\"http:\\/\\/furniture.efb.vn\\/\"}', NULL, 'new', NULL, NULL, '2024-07-01 15:34:38', '2024-07-01 15:34:38'),
(62, 'call_request', 'đà', 'info@efb.vn', 'fdsfds', NULL, NULL, NULL, '{\"template\":\"http:\\/\\/furniture.efb.vn\\/\"}', NULL, 'new', NULL, NULL, '2024-07-01 15:36:35', '2024-07-01 15:36:35'),
(63, 'call_request', 'Mạnh', 'mail@fha', '0987456123', NULL, 'dsv', NULL, '{\"template\":\"http:\\/\\/furniture.efb.vn\\/\"}', NULL, 'new', NULL, NULL, '2024-07-01 15:55:35', '2024-07-01 15:55:35'),
(64, 'call_request', 'Nguyen thi ha', 'phannv66@gmail.com', '0983762233', NULL, 'Hà nội', NULL, '{\"template\":\"http:\\/\\/furniture.efb.vn\\/\"}', NULL, 'new', NULL, NULL, '2024-07-01 15:59:42', '2024-07-01 15:59:42'),
(65, 'call_request', 'Nguyen thi ha', 'phannv66@gmail.com', '0983762233', NULL, 'Hà nội', NULL, '{\"template\":\"http:\\/\\/furniture.efb.vn\\/\"}', NULL, 'new', NULL, NULL, '2024-07-01 15:59:45', '2024-07-01 15:59:45'),
(66, 'call_request', 'manh test', '1@gmail.com', '1', NULL, '1', NULL, '{\"template\":\"http:\\/\\/furniture.efb.vn\\/\"}', NULL, 'new', NULL, NULL, '2024-07-01 16:50:10', '2024-07-01 16:50:10'),
(67, 'call_request', 'Quý Bùi Ngọc', 'buingocquy26293@gmail.com', '0392462454', NULL, '163 đại mỗ - nam từ liêm - hà nội', NULL, '{\"template\":\"http:\\/\\/furniture.efb.vn\\/\"}', NULL, 'new', NULL, NULL, '2024-07-02 03:29:20', '2024-07-02 03:29:20'),
(68, 'call_request', 'test', 'test@gmail.com', 'test', NULL, 'test', NULL, '{\"template\":\"http:\\/\\/furniture.efb.vn\\/\"}', NULL, 'new', NULL, NULL, '2024-07-02 15:11:42', '2024-07-02 15:11:42'),
(69, 'call_request', 'Nguyễn Văn A', 'phan.nguyen1408@gmail.com', '0909090909', NULL, 'Hà Nội', NULL, '{\"template\":\"http:\\/\\/furniture.efb.vn\\/\"}', NULL, 'new', NULL, NULL, '2024-07-02 15:12:35', '2024-07-02 15:12:35'),
(70, 'call_request', 'Nguyễn Văn A', 'phan.nguyen1408@gmail.com', '0909090909', NULL, 'Hà Nội', NULL, '{\"template\":\"http:\\/\\/furniture.efb.vn\\/\"}', NULL, 'new', NULL, NULL, '2024-07-03 16:48:54', '2024-07-03 16:48:54'),
(71, 'call_request', 'Mạnh', 'mcitwind@gmail.com', '0987063008', NULL, 'Hà Nội', NULL, '{\"template\":\"http:\\/\\/furniture.efb.vn\\/\"}', NULL, 'new', NULL, NULL, '2024-07-04 14:35:49', '2024-07-04 14:35:49'),
(72, 'call_request', 'Manh', 'mcitwind@gmail.com', '0987063008', NULL, 'xsc', NULL, '{\"template\":\"http:\\/\\/furniture.efb.vn\\/\"}', NULL, 'new', NULL, NULL, '2024-07-04 14:55:22', '2024-07-04 14:55:22'),
(73, 'call_request', 'manh test gửi mail', 'mcitwind@gmail.com', 'df', NULL, '12', NULL, '{\"template\":\"http:\\/\\/furniture.efb.vn\\/\"}', NULL, 'new', NULL, NULL, '2024-07-04 15:28:55', '2024-07-04 15:28:55'),
(74, 'call_request', 'Nguyen thi ha', 'phannv66@gmail.com', '0983762233', NULL, 'hà nội', NULL, '{\"template\":\"http:\\/\\/furniture.efb.vn\\/\"}', NULL, 'new', NULL, NULL, '2024-07-06 15:44:33', '2024-07-06 15:44:33'),
(75, 'call_request', 'nguyễn văn phấn', 'phannv66@gmail.com', '0983762233', NULL, 'hà nội', NULL, '{\"template\":\"http:\\/\\/furniture.efb.vn\\/\"}', NULL, 'new', NULL, NULL, '2024-07-06 15:48:51', '2024-07-06 15:48:51'),
(76, 'call_request', 'Nguyễn Văn A', 'phan.nguyen1408@gmail.com', '0909090909', NULL, 'Hà Nội', NULL, '{\"template\":\"http:\\/\\/furniture.efb.vn\\/\"}', NULL, 'new', NULL, NULL, '2024-07-08 03:48:14', '2024-07-08 03:48:14');

-- --------------------------------------------------------

--
-- Table structure for table `tb_logs`
--

CREATE TABLE `tb_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `url_referer` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `params` text COLLATE utf8mb4_unicode_ci,
  `logged_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_menus`
--

CREATE TABLE `tb_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `url_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `system_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_menus`
--

INSERT INTO `tb_menus` (`id`, `parent_id`, `name`, `description`, `url_link`, `menu_type`, `system_code`, `json_params`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(24, NULL, 'Menu đầu trang', 'Menu link for main navbar', NULL, 'header', NULL, NULL, 1, 'active', 1, 1, '2022-05-10 10:29:01', '2022-12-14 04:18:48'),
(26, 26, 'Tin tức', NULL, '/tin-tuc', 'main', 'public', '{\"target\":\"_self\"}', 4, 'active', 1, 1, '2021-12-08 02:51:06', '2022-12-14 04:23:22'),
(34, 33, 'SHOP', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-05-18 18:49:06', '2022-12-29 09:14:44'),
(35, 33, 'SINGLE', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 2, 'active', 1, 1, '2022-05-18 18:49:24', '2022-12-29 09:14:51'),
(37, 36, 'Chính sách bảo mật thông tin', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-06-02 07:25:33', '2022-06-02 07:25:33'),
(38, 36, 'Hướng dẫn tra cứu', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 2, 'active', 1, 1, '2022-06-02 07:25:44', '2022-06-02 07:25:44'),
(46, 33, 'WHO ARE WE', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 3, 'active', 1, 1, '2022-08-05 10:15:12', '2022-12-29 09:15:03'),
(58, 24, 'GIỚI THIỆU', NULL, '/gioi-thieu', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-08-17 09:34:50', '2024-06-19 07:57:58'),
(64, NULL, 'Về chúng tôi', NULL, NULL, 'footer', NULL, '{\"name\":{\"en\":\"About Us\"}}', 2, 'delete', 1, 1, '2022-10-17 07:19:46', '2024-01-06 04:21:16'),
(86, 65, 'yh', NULL, '/i', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-12-19 10:43:57', '2022-12-19 10:43:57'),
(93, 92, 'NICHE DEMOS', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-12-29 09:15:56', '2022-12-29 09:15:56'),
(118, 64, 'Nhân sự', NULL, '/#teammate', NULL, NULL, '{\"name\":{\"en\":\"People\"},\"target\":\"_self\"}', 3, 'active', 1, 1, '2023-03-06 09:32:12', '2023-03-09 03:33:02'),
(119, 64, 'Về chúng tôi', NULL, '/#introduce', NULL, NULL, '{\"name\":{\"en\":\"About Us\"},\"target\":\"_self\"}', 2, 'active', 1, 1, '2023-03-06 09:32:25', '2023-03-09 03:35:18'),
(121, NULL, 'Dự án', NULL, NULL, 'footer', NULL, '{\"name\":{\"en\":\"Project\"}}', 3, 'delete', 1, 1, '2023-03-06 09:40:52', '2024-01-06 04:21:18'),
(122, 121, 'Quy hoạch', NULL, 'quy-hoach', NULL, NULL, '{\"name\":{\"en\":\"Planning\"},\"target\":\"_self\"}', 3, 'active', 1, 1, '2023-03-06 09:41:06', '2023-03-09 03:28:37'),
(123, 121, 'Cảnh quan', NULL, 'thiet-ke-canh-quan', NULL, NULL, '{\"name\":{\"en\":\"Landscape\"},\"target\":\"_self\"}', 2, 'active', 1, 1, '2023-03-06 09:41:06', '2023-03-09 03:29:12'),
(124, 121, 'Công trình', NULL, 'kien-truc-cong-trinh', NULL, NULL, '{\"name\":{\"en\":\"Architecture\"},\"target\":\"_self\"}', 1, 'active', 1, 1, '2023-03-06 09:41:06', '2023-03-09 03:28:55'),
(125, NULL, 'Hoạt động', NULL, NULL, 'footer', NULL, NULL, 4, 'delete', 1, 1, '2023-03-06 09:41:27', '2023-03-06 09:42:37'),
(126, NULL, 'Hoạt động', NULL, NULL, 'footer', NULL, '{\"name\":{\"en\":\"SOCIAL\"}}', 5, 'delete', 1, 1, '2023-03-06 09:41:27', '2024-01-06 04:21:21'),
(127, 126, 'Liên hệ', NULL, '/lien-he', NULL, NULL, '{\"name\":{\"en\":\"Contact\"},\"target\":\"_self\"}', 1, 'active', 1, 1, '2023-03-06 09:41:41', '2023-03-09 03:30:41'),
(128, 24, 'TUYỂN DỤNG', NULL, '/tuyen-dung', NULL, NULL, '{\"target\":\"_self\"}', 6, 'active', 1, 1, '2023-03-07 04:14:06', '2024-06-16 10:39:56'),
(136, NULL, 'Máy Tính PC', NULL, NULL, 'header', NULL, NULL, 2, 'delete', 1, 1, '2024-01-12 03:17:01', '2024-01-12 03:17:19'),
(138, 24, 'DỊCH VỤ', NULL, '/dich-vu', NULL, NULL, '{\"target\":\"_self\"}', 2, 'active', 1, 1, '2024-01-12 09:21:15', '2024-06-16 10:38:50'),
(139, 24, 'KHÁCH HÀNG', NULL, '/khach-hang', NULL, NULL, '{\"target\":\"_self\"}', 4, 'active', 1, 1, '2024-01-12 09:21:23', '2024-06-16 10:39:15'),
(141, 24, 'BLOG', NULL, '/blog', NULL, NULL, '{\"target\":\"_self\"}', 5, 'active', 1, 1, '2024-01-12 09:21:47', '2024-06-16 12:10:16'),
(142, 24, 'DỰ ÁN', NULL, '/du-an', NULL, NULL, '{\"target\":\"_self\"}', 3, 'active', 1, 1, '2024-01-12 09:21:58', '2024-06-16 10:39:03'),
(143, NULL, 'Menu cuối trang', NULL, NULL, 'footer', NULL, NULL, 2, 'active', 1, 1, '2024-06-16 08:00:09', '2024-06-16 08:00:09'),
(144, 143, 'Thiết kế thương hiệu', NULL, '/#', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2024-06-16 08:01:46', '2024-06-23 07:32:27'),
(145, 143, 'Thiết kế website', NULL, '/#', NULL, NULL, '{\"target\":\"_self\"}', 2, 'active', 1, 1, '2024-06-16 08:01:52', '2024-06-23 07:32:43'),
(146, 143, 'Lên chiến dịch truyền thông', NULL, '/#', NULL, NULL, '{\"target\":\"_self\"}', 3, 'active', 1, 1, '2024-06-16 08:02:00', '2024-06-23 07:33:01'),
(147, 24, 'LIÊN HỆ', NULL, '/lien-he', NULL, NULL, '{\"target\":\"_self\"}', 7, 'active', 1, 1, '2024-06-19 08:55:31', '2024-06-30 13:12:20'),
(148, 143, 'Chụp sản phẩm', NULL, '/', NULL, NULL, '{\"target\":\"_self\"}', 4, 'active', 1, 1, '2024-06-23 07:39:47', '2024-06-23 07:39:47');

-- --------------------------------------------------------

--
-- Table structure for table `tb_modules`
--

CREATE TABLE `tb_modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_modules`
--

INSERT INTO `tb_modules` (`id`, `module_code`, `name`, `description`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'admins', 'Quản lý người dùng', 'Chức năng quản lý người dùng hệ thống', 100, 'active', 1, 1, '2021-10-01 12:35:15', '2022-08-08 06:47:54'),
(5, 'admin_menus', 'Quản lý Menu Admin', NULL, 102, 'active', 1, 1, '2022-03-04 05:19:37', '2022-08-08 06:47:53'),
(6, 'roles', 'Quản lý nhóm quyền', NULL, 101, 'active', 1, 1, '2022-03-04 05:20:18', '2022-08-08 06:47:54'),
(7, 'menus', 'Quản lý Menu Website Public', NULL, 94, 'active', 1, 1, '2022-03-04 05:20:46', '2022-08-08 06:49:15'),
(8, 'block_contents', 'Quản lý Khối nội dung', NULL, 96, 'active', 1, 1, '2022-03-04 05:21:07', '2022-08-08 06:49:14'),
(9, 'pages', 'Quản lý Pages - Trang', NULL, 95, 'active', 1, 1, '2022-03-04 05:21:19', '2022-08-08 06:49:15'),
(10, 'cms_taxonomys', 'Quản lý danh mục - thể loại', NULL, 3, 'active', 1, 1, '2022-03-04 05:21:40', '2022-03-04 05:29:06'),
(11, 'cms_posts', 'Quản lý bài viết', NULL, 4, 'active', 1, 1, '2022-03-04 05:22:17', '2022-03-04 05:29:11'),
(12, 'cms_services', 'Quản lý dịch vụ', NULL, 5, 'active', 1, 1, '2022-03-04 05:22:40', '2024-06-25 00:53:58'),
(13, 'cms_products', 'Quản lý sản phẩm', NULL, 6, 'active', 1, 1, '2022-03-04 05:22:52', '2022-11-06 09:15:07'),
(16, 'web_information', 'Quản lý thông tin website', NULL, 91, 'active', 1, 1, '2022-03-04 05:24:37', '2022-08-08 06:49:17'),
(17, 'web_image', 'Quản lý hình ảnh hệ thống', NULL, 92, 'active', 1, 1, '2022-03-04 05:25:38', '2022-08-08 06:49:17'),
(18, 'web_social', 'Quản lý liên kết MXH', NULL, 90, 'active', 1, 1, '2022-03-04 05:25:53', '2022-08-08 06:49:18'),
(19, 'contacts', 'Quản lý liên hệ', NULL, 1, 'active', 1, 1, '2022-03-04 05:26:39', '2022-08-08 06:44:47'),
(20, 'call_request', 'Quản lý đăng ký tư vấn', NULL, NULL, 'active', 1, 1, '2022-08-08 06:42:19', '2022-08-08 06:42:34'),
(21, 'web_source', 'Quản lý mã nhúng CSS - JS', NULL, 93, 'active', 1, 1, '2022-08-08 06:46:02', '2022-08-08 06:49:16'),
(22, 'order_services', 'Quản lý đăng ký dịch vụ', NULL, NULL, 'deactive', 1, 1, '2022-08-08 06:50:09', '2022-12-07 02:40:37'),
(25, 'call_review', 'Quản lý đánh giá', NULL, NULL, 'active', 1, 1, '2023-02-04 03:00:25', '2023-02-04 03:00:53'),
(26, 'order_products', 'Quản lý đặt hàng', NULL, NULL, 'active', 1, 1, '2023-02-04 03:01:12', '2023-02-04 03:01:12'),
(27, 'cms_resources', 'Quản lý dự án', NULL, NULL, 'active', 1, 1, '2024-06-25 00:59:35', '2024-06-25 00:59:35');

-- --------------------------------------------------------

--
-- Table structure for table `tb_module_functions`
--

CREATE TABLE `tb_module_functions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `function_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_module_functions`
--

INSERT INTO `tb_module_functions` (`id`, `module_id`, `function_code`, `name`, `description`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(7, 19, 'contacts.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 05:32:15', '2022-03-04 05:35:40'),
(8, 19, 'contacts.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 05:35:45', '2022-03-04 05:35:45'),
(9, 19, 'contacts.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 05:35:48', '2022-03-04 05:35:48'),
(10, 19, 'contacts.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 05:35:51', '2022-03-04 05:35:51'),
(11, 19, 'contacts.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 05:35:55', '2022-03-04 05:35:55'),
(12, 19, 'contacts.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 05:35:58', '2022-03-04 05:35:58'),
(27, 1, 'admins.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(28, 1, 'admins.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(29, 1, 'admins.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(30, 1, 'admins.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(31, 1, 'admins.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(32, 1, 'admins.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(39, 5, 'admin_menus.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(40, 5, 'admin_menus.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(41, 5, 'admin_menus.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(42, 5, 'admin_menus.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(43, 5, 'admin_menus.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(44, 5, 'admin_menus.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(45, 6, 'roles.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(46, 6, 'roles.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(47, 6, 'roles.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(48, 6, 'roles.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(49, 6, 'roles.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(50, 6, 'roles.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(51, 7, 'menus.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(52, 7, 'menus.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(53, 7, 'menus.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(54, 7, 'menus.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(55, 7, 'menus.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(56, 7, 'menus.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(57, 8, 'block_contents.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(58, 8, 'block_contents.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(59, 8, 'block_contents.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(60, 8, 'block_contents.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(61, 8, 'block_contents.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(62, 8, 'block_contents.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(63, 9, 'pages.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(64, 9, 'pages.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(65, 9, 'pages.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(66, 9, 'pages.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(67, 9, 'pages.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(68, 9, 'pages.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(75, 10, 'cms_taxonomys.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(76, 10, 'cms_taxonomys.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(77, 10, 'cms_taxonomys.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(78, 10, 'cms_taxonomys.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(79, 10, 'cms_taxonomys.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(80, 10, 'cms_taxonomys.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(81, 11, 'cms_posts.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(82, 11, 'cms_posts.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(83, 11, 'cms_posts.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(84, 11, 'cms_posts.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(85, 11, 'cms_posts.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(86, 11, 'cms_posts.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(87, 12, 'cms_services.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(88, 12, 'cms_services.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(89, 12, 'cms_services.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(90, 12, 'cms_services.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(91, 12, 'cms_services.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(92, 12, 'cms_services.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(93, 13, 'cms_products.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-11-06 09:15:42'),
(94, 13, 'cms_products.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-11-06 09:15:42'),
(95, 13, 'cms_products.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-11-06 09:15:41'),
(96, 13, 'cms_products.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-11-06 09:15:41'),
(97, 13, 'cms_products.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-11-06 09:15:40'),
(98, 13, 'cms_products.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-11-06 09:15:40'),
(117, 16, 'web.information', 'Xem thông tin website', NULL, 1, 'active', 1, 1, '2022-03-04 07:24:06', '2022-03-04 07:24:06'),
(118, 16, 'web.information.update', 'Cập nhật thông tin website', NULL, 2, 'active', 1, 1, '2022-03-04 07:24:24', '2022-03-04 07:24:24'),
(119, 17, 'web.image', 'Xem hình ảnh hệ thống', NULL, 1, 'active', 1, 1, '2022-03-04 07:25:11', '2022-03-04 07:25:11'),
(120, 17, 'web.image.update', 'Cập nhật hình ảnh hệ thống', NULL, 2, 'active', 1, 1, '2022-03-04 07:25:34', '2022-03-04 07:25:34'),
(121, 18, 'web.social', 'Xem liên kết MXH', NULL, 1, 'active', 1, 1, '2022-03-04 07:26:03', '2022-03-04 07:26:03'),
(122, 18, 'web.social.update', 'Cập nhật liên kết MXH', NULL, 2, 'active', 1, 1, '2022-03-04 07:26:23', '2022-03-04 07:26:23'),
(123, 20, 'call_request.destroy', 'Xóa', NULL, NULL, 'active', 1, 1, '2022-08-08 06:44:30', '2022-08-08 06:44:30'),
(124, 20, 'call_request.update', 'Sửa thông tin (Lưu thông tin)', NULL, NULL, 'active', 1, 1, '2022-08-08 06:44:30', '2022-08-08 06:44:30'),
(125, 20, 'call_request.show', 'Sửa thông tin (Form nhập)', NULL, NULL, 'active', 1, 1, '2022-08-08 06:44:31', '2022-08-08 06:44:31'),
(126, 20, 'call_request.index', 'Xem danh sách', NULL, NULL, 'active', 1, 1, '2022-08-08 06:44:31', '2022-08-08 06:44:31'),
(127, 21, 'web.source.update', 'Cập nhật mã', NULL, NULL, 'active', 1, 1, '2022-08-08 06:46:40', '2022-08-08 06:46:40'),
(128, 21, 'web.source', 'Xem chi tiết mã', NULL, NULL, 'active', 1, 1, '2022-08-08 06:46:40', '2022-08-08 06:46:40'),
(129, 22, 'order_services.destroy', 'Xóa', NULL, NULL, 'active', 1, 1, '2022-08-08 06:51:30', '2022-08-08 06:51:30'),
(130, 22, 'order_services.update', 'Sửa thông tin (Lưu thông tin)', NULL, NULL, 'active', 1, 1, '2022-08-08 06:51:30', '2022-08-08 06:51:30'),
(131, 22, 'order_services.edit', 'Sửa thông tin (Form nhập)', NULL, NULL, 'active', 1, 1, '2022-08-08 06:51:31', '2022-08-08 06:51:31'),
(132, 22, 'order_services.index', 'Xem danh sách', NULL, NULL, 'active', 1, 1, '2022-08-08 06:51:31', '2022-08-08 06:51:31'),
(133, 26, 'order_products.index', 'Xem danh sách', NULL, NULL, 'active', 1, 1, '2023-02-06 07:35:39', '2023-02-06 07:35:50'),
(134, 26, 'order_products.show', 'Xem chi tiết đơn hàng', NULL, NULL, 'active', 1, 1, '2023-02-06 07:44:12', '2023-02-06 07:44:12'),
(135, 26, 'order_products.update', 'Chỉnh sửa đơn hàng', NULL, NULL, 'active', 1, 1, '2023-02-06 07:45:55', '2023-02-06 07:45:55'),
(136, 26, 'order_details.update', 'Chỉnh sửa chi tiết đơn hàng', NULL, NULL, 'active', 1, 1, '2023-02-06 07:46:47', '2023-02-06 07:46:47'),
(137, 26, 'order_products.destroy', 'Xóa đơn hàng', NULL, NULL, 'active', 1, 1, '2023-02-06 07:48:10', '2023-03-10 07:48:04'),
(138, 25, 'call_review.index', 'Xem danh sách', NULL, NULL, 'active', 1, 1, '2023-02-06 07:50:51', '2023-02-06 07:50:51'),
(139, 25, 'call_review.show', 'Xem chi tiết đánh giá', NULL, NULL, 'active', 1, 1, '2023-02-06 07:51:10', '2023-02-06 07:51:10'),
(140, 25, 'call_review.update', 'Cập nhật đánh giá', NULL, NULL, 'active', 1, 1, '2023-02-06 07:51:38', '2023-02-06 07:51:38'),
(141, 25, 'call_review.destroy', 'Xóa đánh giá', NULL, NULL, 'active', 1, 1, '2023-02-06 07:52:00', '2023-02-06 07:52:00'),
(142, 27, 'cms_resources.index', 'Xem danh sách', NULL, NULL, 'active', 1, 1, '2024-06-25 01:00:39', '2024-06-25 01:00:39'),
(143, 27, 'cms_resources.create', 'Thêm mới (Form nhập)', NULL, NULL, 'active', 1, 1, '2024-06-25 01:01:30', '2024-06-25 01:01:30'),
(144, 27, 'cms_resources.store', 'Thêm mới (Lưu thông tin)', NULL, NULL, 'active', 1, 1, '2024-06-25 01:01:54', '2024-06-25 01:02:08'),
(145, 27, 'cms_resources.edit', 'Sửa thông tin (Form nhập)', NULL, NULL, 'active', 1, 1, '2024-06-25 01:02:36', '2024-06-25 01:02:36'),
(146, 27, 'cms_resources.update', 'Sửa thông tin (Lưu thông tin)', NULL, NULL, 'active', 1, 1, '2024-06-25 01:02:59', '2024-06-25 01:02:59'),
(147, 27, 'cms_resources.destroy', 'Xóa', NULL, NULL, 'active', 1, 1, '2024-06-25 01:03:19', '2024-06-25 01:03:19');

-- --------------------------------------------------------

--
-- Table structure for table `tb_options`
--

CREATE TABLE `tb_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_system_param` tinyint(1) DEFAULT '1',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_options`
--

INSERT INTO `tb_options` (`id`, `option_name`, `option_value`, `description`, `is_system_param`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(2, 'information', '{\"site_name\":\"C\\u00f4ng ty c\\u1ed5 ph\\u1ea7n Global Brand Design\",\"phone\":\"(+84) 876.59.2882\",\"hotline\":\"(+84) 876.59.2882\",\"email\":\"info@efb.vn\",\"address\":\"T\\u1ea7ng 8, to\\u00e0 nh\\u00e0 Sannam, s\\u1ed1 78 ph\\u1ed1 Duy T\\u00e2n, P D\\u1ecbch V\\u1ecdng H\\u1eadu, Q c\\u1ea7u Gi\\u1ea5y, Tp H\\u00e0 N\\u1ed9i\",\"seo_title\":\"GBD\",\"seo_keyword\":\"GBD\",\"seo_description\":\"GBD\"}', 'Các dữ liệu cấu trúc liên quan đến thông tin liên hệ của hệ thống website', 0, 1, 1, '2021-10-02 05:06:00', '2024-07-01 16:02:14'),
(5, 'image', '{\"logo_header\":\"\\/data\\/cms-image\\/header-logo.svg\",\"logo_footer\":\"\\/data\\/cms-image\\/footer_home.svg\",\"favicon\":\"\\/data\\/cms-image\\/header-logo.svg\",\"background_breadcrumbs\":\"\\/data\\/cms-image\\/header-logo.svg\",\"seo_og_image\":\"\\/data\\/cms-image\\/header-logo.svg\",\"Image_home_sidebar\":\"\\/data\\/cms-image\\/header-logo.svg\"}', 'Danh sách các hình ảnh cấu hình trên hệ thống tại các vị trí', 0, 1, 1, '2021-10-11 09:22:56', '2024-06-12 16:53:33'),
(6, 'social', '{\"facebook\":\"https:\\/\\/www.facebook.com\\/Gbd.vn1\",\"telegram\":\"#\",\"instagram\":\"#\",\"youtube\":\"#\",\"gmail\":\"support@gbd.vn\",\"twitter\":\"#\",\"tiktok\":null,\"zalo\":\"https:\\/\\/zalo.me\\/157397930979501501\",\"call_now\":\"+84 876592882\"}', 'Danh sách các Social network của hệ thống', 0, 1, 1, '2022-02-14 10:35:40', '2024-06-19 07:28:23'),
(7, 'page', '{\r\n\"frontend.home\":  1\r\n}', NULL, 0, 1, 1, '2022-05-26 11:03:52', '2022-06-09 04:03:39'),
(8, 'source_code', '{\"header\":null,\"footer\":null,\"map\":\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3724.0349105566534!2d105.783171!3d21.0312891!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab92b21e3beb%3A0x4c9549d1df6c5d0b!2zNzggUC4gRHV5IFTDom4sIEThu4tjaCBW4buNbmcgSOG6rXUsIEPhuqd1IEdp4bqleSwgSMOgIE7hu5lp!5e0!3m2!1svi!2s!4v1719131906051!5m2!1svi!2s\"}', NULL, 0, 1, 1, '2022-06-07 02:24:11', '2024-06-23 07:49:12');

-- --------------------------------------------------------

--
-- Table structure for table `tb_orders`
--

CREATE TABLE `tb_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'product',
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_cv` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_note` text COLLATE utf8mb4_unicode_ci,
  `admin_note` text COLLATE utf8mb4_unicode_ci,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_orders`
--

INSERT INTO `tb_orders` (`id`, `is_type`, `customer_id`, `name`, `email`, `phone`, `address`, `image_cv`, `customer_note`, `admin_note`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'service', NULL, 'Quản lý đăng ký sự kiện', 'thangnh.edu@gmail.com', '0912 568 999', NULL, NULL, NULL, NULL, NULL, 'new', NULL, NULL, '2022-10-31 09:46:37', '2022-10-31 09:46:37');

-- --------------------------------------------------------

--
-- Table structure for table `tb_order_details`
--

CREATE TABLE `tb_order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` double(20,2) DEFAULT NULL,
  `discount` double(20,2) DEFAULT NULL,
  `customer_note` text COLLATE utf8mb4_unicode_ci,
  `admin_note` text COLLATE utf8mb4_unicode_ci,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_order_details`
--

INSERT INTO `tb_order_details` (`id`, `order_id`, `item_id`, `quantity`, `price`, `discount`, `customer_note`, `admin_note`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 1, 44, 1, 5000000.00, NULL, NULL, NULL, '{\"post_type\":\"product\",\"post_link\":\"http:\\/\\/fhmvn.test\\/kho-giao-dien\\/ban-hang\\/mau-website-ban-hang-01-44.html\"}', NULL, NULL, NULL, '2022-10-31 09:46:38', '2022-10-31 09:46:38'),
(2, 2, 44, 1, 5000000.00, NULL, NULL, NULL, '{\"post_type\":\"product\",\"post_link\":\"http:\\/\\/fhmvn.test\\/kho-giao-dien\\/ban-hang\\/mau-website-ban-hang-01-44.html\"}', NULL, NULL, NULL, '2022-10-31 10:02:12', '2022-10-31 10:02:12'),
(9, 8, 52, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 22, 53, 1, 500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 25, 53, 4, 270000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 26, 53, 1, 270000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 27, 193, 5, 5.00, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '2023-02-06 07:47:21'),
(29, 28, 153, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 36, 361, 1, 52990001.00, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2024-01-06 10:04:30');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pages`
--

CREATE TABLE `tb_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `route_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_page` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_pages`
--

INSERT INTO `tb_pages` (`id`, `name`, `title`, `keyword`, `description`, `content`, `route_name`, `alias`, `json_params`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `is_page`) VALUES
(1, 'Trang chủ', NULL, NULL, NULL, NULL, 'frontend.home', 'trang-chu', '{\"og_image\":null,\"template\":\"home.primary\",\"block_content\":[74,343,344,347,19,362,363,348,370]}', 1, 'active', 1, 1, '2022-03-23 09:35:33', '2024-06-20 15:49:53', 1),
(3, 'Danh mục', 'Danh mục', NULL, NULL, NULL, 'frontend.cms.taxonomy', 'danh-muc', '{\"og_image\":null,\"template\":\"post.default\",\"block_content\":[94,370]}', 2, 'active', 1, 1, '2022-06-02 11:20:50', '2024-06-16 10:36:09', 0),
(4, 'Chi tiết nội dung', NULL, NULL, NULL, NULL, 'frontend.cms.detail', 'chi-tiet-bai-viet', '{\"og_image\":null,\"template\":\"post.detail\",\"block_content\":[\"112\",\"94\",\"93\"]}', 3, 'active', 1, 1, '2022-06-03 02:52:10', '2023-03-10 04:45:33', 0),
(13, 'Liên hệ', 'Liên hệ với chúng tôi', NULL, NULL, NULL, 'frontend.contact', 'lien-he', '{\"og_image\":null,\"template\":\"contact.default\",\"block_content\":[\"112\",\"94\",\"243\",\"93\"]}', 11, 'delete', 1, 1, '2022-06-07 07:35:49', '2024-01-04 10:21:54', 1),
(19, 'Tìm kiếm', NULL, NULL, NULL, NULL, 'frontend.search', 'tim-kiem', '{\"og_image\":null,\"template\":\"search.default\",\"block_content\":[94]}', 17, 'active', 1, 1, '2022-07-18 08:36:34', '2024-01-09 09:34:03', 1),
(31, 'Giỏ hàng', NULL, NULL, NULL, NULL, 'frontend.order.cart', 'gio-hang', '{\"og_image\":null,\"template\":\"cart.default\",\"block_content\":[\"94\"]}', NULL, 'delete', 1, 1, '2022-12-27 10:01:57', '2023-03-10 04:45:18', 1),
(33, 'Đại lý', 'Danh sách đại lý', NULL, NULL, NULL, 'frontend.branch', 'dai-ly', '{\"og_image\":null,\"template\":\"branch.default\",\"block_content\":[\"94\"]}', NULL, 'delete', 1, 1, '2022-12-05 09:09:28', '2024-01-04 10:21:44', 1),
(34, 'Giỏ Hàng', 'Giở hàng', NULL, NULL, NULL, 'frontend.order.cart', 'gio-hang', '{\"og_image\":null,\"template\":\"cart.default\",\"block_content\":[94]}', NULL, 'delete', 1, 1, '2024-01-06 07:43:49', '2024-06-16 08:09:35', 1),
(35, 'Thanh toán', 'Thanh toán', NULL, NULL, NULL, 'frontend.branch', 'thanh-toan', '{\"og_image\":null,\"template\":\"branch.default\",\"block_content\":[94]}', NULL, 'delete', 1, 1, '2024-01-06 09:13:38', '2024-06-16 08:09:49', 1),
(36, 'Liên Hệ', NULL, NULL, NULL, NULL, 'frontend.contact', 'lien-he', '{\"og_image\":null,\"template\":\"contact.default\",\"block_content\":[94]}', NULL, 'delete', 1, 1, '2024-01-09 09:31:15', '2024-06-16 08:09:55', 1),
(37, 'Page giới thiệu', 'Giới thiệu', NULL, NULL, NULL, 'frontend.page', 'gioi-thieu', '{\"og_image\":null,\"template\":\"page.default\",\"block_content\":[94,377,378,381,382,383,370]}', NULL, 'active', 1, 1, '2024-06-16 08:18:13', '2024-06-16 10:51:26', 1),
(38, 'Page dịch vụ', 'Dịch vụ', NULL, NULL, NULL, 'frontend.page', 'dich-vu', '{\"og_image\":null,\"template\":\"page.default\",\"block_content\":[94,390,391,392,393,394,395,370]}', NULL, 'active', 1, 1, '2024-06-16 09:28:04', '2024-06-16 10:52:08', 1),
(39, 'Page khách hàng', NULL, NULL, NULL, NULL, 'frontend.page', 'khach-hang', '{\"og_image\":null,\"template\":\"page.default\",\"block_content\":[396,397,394,402,370]}', NULL, 'active', 1, 1, '2024-06-16 11:29:42', '2024-06-16 11:46:09', 1),
(40, 'Page Tuyển dụng', 'Tuyển dụng', NULL, NULL, NULL, 'frontend.page', 'tuyen-dung', '{\"og_image\":null,\"template\":\"page.default\",\"block_content\":[411,412,370]}', NULL, 'active', 1, 1, '2024-06-16 11:54:00', '2024-06-16 12:06:35', 1),
(41, 'Trang liên hệ', 'Liên Hệ', NULL, NULL, NULL, 'frontend.contact', 'trang-lien-he', '{\"og_image\":null,\"template\":\"contact.default\",\"block_content\":[94,370]}', NULL, 'active', 1, 1, '2024-06-30 12:10:28', '2024-06-30 12:10:28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_popups`
--

CREATE TABLE `tb_popups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_popups`
--

INSERT INTO `tb_popups` (`id`, `title`, `content`, `image`, `json_params`, `start_time`, `end_time`, `duration`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Home Popup', '<p>Nullam mollis ultrices est. Nulla in justo lacinia, scelerisque purus et, semper tortor. Donec bibendum leo vitae commodo porttitor. Proin tempus sollicitudin odio in feugiat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ultrices vitae nisl tristique commodo. Phasellus porttitor metus at mattis ultricies. In imperdiet nec nunc in tincidunt.</p>\r\n\r\n<p>Curabitur faucibus dolor at dui lobortis, eget dictum nisi mattis. Fusce risus dui, fringilla non elit sit amet, lobortis interdum eros. Donec mattis lectus quis elit fermentum lacinia. Nullam at ligula semper ante mollis pretium. Nam euismod velit ut quam accumsan vestibulum. Etiam diam augue, dapibus ac placerat nec, accumsan eget nibh. Cras sodales, leo ut volutpat laoreet, velit enim pharetra magna, at dapibus lacus elit vel mi. Nullam a massa ac ligula scelerisque maximus. Quisque dictum quis lorem ut sodales. Duis at semper odio. Morbi in sapien vel lacus posuere mattis ac eget ante. Etiam viverra accumsan rhoncus. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>', '/data/cms-image/banner/no-banner.jpg', '{\"page\":[\"1\",\"3\",\"4\"]}', '2022-06-27 00:00:00', '2022-06-28 00:00:00', 5, 'active', 1, 1, '2022-06-27 15:22:00', '2022-06-27 18:01:38'),
(2, 'Thông báo bảo trì hệ thống', NULL, '/data/cms-image/banner/1.jpg', '{\"page\":[\"1\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"13\",\"14\",\"15\",\"16\"]}', '2022-06-28 00:00:00', '2022-06-28 00:00:00', NULL, 'deactive', 1, 1, '2022-06-27 15:42:38', '2022-06-27 18:10:59');

-- --------------------------------------------------------

--
-- Table structure for table `tb_reviews`
--

CREATE TABLE `tb_reviews` (
  `id` bigint(20) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `comment` longtext,
  `rating` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_roles`
--

CREATE TABLE `tb_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `json_access` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_roles`
--

INSERT INTO `tb_roles` (`id`, `name`, `description`, `json_access`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Quyền quản trị nội dung', 'Dành cho nhân viên thiết kế và cập nhật nội dung', '{\"menu_id\":[\"72\",\"81\",\"59\",\"51\",\"52\",\"73\",\"53\",\"83\",\"13\",\"46\",\"45\",\"44\",\"41\",\"17\"],\"function_code\":[\"cms_resources.destroy\",\"cms_resources.update\",\"cms_resources.edit\",\"cms_resources.store\",\"cms_resources.create\",\"cms_resources.index\",\"order_details.update\",\"order_products.update\",\"order_products.show\",\"order_products.index\",\"call_review.update\",\"call_review.show\",\"call_review.index\",\"call_request.index\",\"call_request.show\",\"call_request.update\",\"contacts.index\",\"contacts.create\",\"contacts.store\",\"contacts.edit\",\"contacts.update\",\"cms_taxonomys.index\",\"cms_taxonomys.create\",\"cms_taxonomys.store\",\"cms_taxonomys.edit\",\"cms_taxonomys.update\",\"cms_posts.index\",\"cms_posts.create\",\"cms_posts.store\",\"cms_posts.edit\",\"cms_posts.update\",\"cms_services.index\",\"cms_services.create\",\"cms_services.store\",\"cms_services.edit\",\"cms_services.update\",\"cms_services.destroy\",\"cms_products.index\",\"cms_products.create\",\"cms_products.store\",\"cms_products.edit\",\"cms_products.update\",\"web.social\",\"web.social.update\",\"web.information\",\"web.information.update\",\"web.image\",\"web.image.update\",\"web.source\",\"web.source.update\",\"menus.index\",\"menus.create\",\"menus.store\",\"menus.edit\",\"menus.update\",\"pages.index\",\"pages.create\",\"pages.store\",\"pages.edit\",\"pages.update\",\"block_contents.index\",\"block_contents.create\",\"block_contents.store\",\"block_contents.edit\",\"block_contents.update\",\"admins.index\",\"admins.create\",\"admins.store\",\"admins.edit\",\"admins.update\",\"roles.index\",\"roles.create\",\"roles.store\",\"roles.edit\",\"roles.update\",\"admin_menus.index\",\"admin_menus.create\",\"admin_menus.store\",\"admin_menus.edit\",\"admin_menus.update\"]}', 1, 'active', 1, 1, '2021-10-02 10:59:48', '2024-06-25 01:04:13'),
(2, 'Quản trị hệ thống', 'Quyền dành cho người quản trị hệ thống', '{\"menu_id\":[\"72\",\"81\",\"59\",\"51\",\"52\",\"73\",\"53\",\"83\",\"75\",\"13\",\"70\",\"46\",\"45\",\"44\",\"71\",\"58\",\"42\",\"41\",\"17\"],\"function_code\":[\"order_products.destroy\",\"order_details.update\",\"order_products.update\",\"order_products.show\",\"order_products.index\",\"call_review.destroy\",\"call_review.update\",\"call_review.show\",\"call_review.index\",\"call_request.index\",\"call_request.show\",\"call_request.update\",\"call_request.destroy\",\"contacts.index\",\"contacts.create\",\"contacts.store\",\"contacts.edit\",\"contacts.update\",\"contacts.destroy\",\"cms_taxonomys.index\",\"cms_taxonomys.create\",\"cms_taxonomys.store\",\"cms_taxonomys.edit\",\"cms_taxonomys.update\",\"cms_taxonomys.destroy\",\"cms_posts.index\",\"cms_posts.create\",\"cms_posts.store\",\"cms_posts.edit\",\"cms_posts.update\",\"cms_posts.destroy\",\"cms_products.index\",\"cms_products.create\",\"cms_products.store\",\"cms_products.edit\",\"cms_products.update\",\"cms_products.destroy\",\"web.social\",\"web.social.update\",\"web.information\",\"web.information.update\",\"web.image\",\"web.image.update\",\"web.source\",\"web.source.update\",\"menus.index\",\"menus.create\",\"menus.store\",\"menus.edit\",\"menus.update\",\"menus.destroy\",\"pages.index\",\"pages.create\",\"pages.store\",\"pages.edit\",\"pages.update\",\"pages.destroy\",\"block_contents.index\",\"block_contents.create\",\"block_contents.store\",\"block_contents.edit\",\"block_contents.update\",\"block_contents.destroy\"]}', 2, 'active', 1, 1, '2021-10-02 11:28:09', '2023-03-10 07:48:32');

-- --------------------------------------------------------

--
-- Table structure for table `tb_widgets`
--

CREATE TABLE `tb_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_widgets`
--

INSERT INTO `tb_widgets` (`id`, `widget_code`, `title`, `brief`, `json_params`, `image`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'header', 'Header Style 1', 'Header 1 brief content', '{\"layout\":null,\"style\":null,\"component\":[\"1\",\"2\"]}', NULL, 10, 'active', 1, 1, '2022-05-04 14:59:07', '2022-05-10 07:29:20'),
(2, 'footer', 'Footer Style 1', NULL, '{\"layout\":null,\"style\":null,\"component\":[\"2\",\"1\"]}', NULL, 20, 'active', 1, 1, '2022-05-10 07:29:03', '2022-05-10 07:29:03');

-- --------------------------------------------------------

--
-- Table structure for table `tb_widget_configs`
--

CREATE TABLE `tb_widget_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `widget_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `is_config` tinyint(1) NOT NULL DEFAULT '1',
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_widget_configs`
--

INSERT INTO `tb_widget_configs` (`id`, `name`, `description`, `widget_code`, `json_params`, `is_config`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Header', NULL, 'header', NULL, 1, 1, 'active', 1, 1, '2022-04-26 09:40:39', '2022-04-26 09:40:39'),
(2, 'Footer', NULL, 'footer', NULL, 1, 2, 'active', 1, 1, '2022-04-26 09:42:09', '2022-04-26 09:42:09'),
(3, 'Left Sidebar', NULL, 'left_sidebar', NULL, 1, 3, 'active', 1, 1, '2022-04-26 09:42:46', '2022-04-26 09:42:46'),
(4, 'Right Sidebar', NULL, 'right_sidebar', NULL, 1, 4, 'active', 1, 1, '2022-04-26 09:43:02', '2022-04-26 09:43:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `affiliate_id` int(11) DEFAULT NULL,
  `affiliate_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_score` double NOT NULL DEFAULT '0',
  `total_money` double NOT NULL DEFAULT '0',
  `total_payment` double NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` tinyint(1) NOT NULL DEFAULT '0',
  `email_verification_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `is_super_user` tinyint(1) NOT NULL DEFAULT '0',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_view_info` int(11) NOT NULL DEFAULT '0',
  `country_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `json_profiles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `affiliate_id`, `affiliate_code`, `total_score`, `total_money`, `total_payment`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `user_type`, `email_verified`, `email_verification_code`, `status`, `is_super_user`, `avatar`, `birthday`, `sex`, `phone`, `count_view_info`, `country_id`, `city_id`, `district_id`, `json_params`, `json_profiles`, `admin_updated_id`) VALUES
(2, NULL, '2', 105091500, 105091500, 0, 'Thắng Nguyễn', 'meta_thangnh', NULL, '$2y$10$V78sbM3Ny/Tvd/bWOLjCLeDDSgLmwlds8tWQh/nhXWCcQheYbtcQy', NULL, '2022-07-11 02:33:03', '2022-07-14 04:28:17', NULL, 0, NULL, 'active', 0, NULL, NULL, 'male', '098 226 9600', 0, NULL, NULL, NULL, NULL, NULL, 1),
(3, 2, 'mRpdEly6Bx3', 79243750, 79243750, 25850000, 'Thắng Nguyễn EDU', 'huuthangb2k50@gmail.com', NULL, '$2y$10$FLuZlM/WTtFZPKJW4PyC0efVJeTFeWSzichj1d/55v7Qe0aoEKVJu', NULL, '2022-07-11 03:04:45', '2022-07-14 04:28:17', NULL, 0, NULL, 'active', 0, NULL, NULL, 'male', '096 220 92 11', 0, NULL, NULL, NULL, NULL, NULL, 1),
(4, 3, 'qBmtRsfkwH4', 0, 0, 0, 'Thắng Nguyễn 2', 'meta_test', NULL, '$2y$10$SGOy7paQ82Pt8lbIg1Z0nuAhCR04yxYTIhXbqbK.3HoSSO/FIrumy', NULL, '2022-07-11 03:20:37', '2022-07-11 03:20:37', NULL, 0, NULL, 'active', 0, NULL, NULL, 'female', '1900 1570', 0, NULL, NULL, NULL, NULL, NULL, 1),
(5, 4, 'U7fj3GtOb95', 0, 0, 0, 'Nguyễn Hữu Thắng', 'meta_thangnguyen', NULL, '$2y$10$qb4Y74yT4dQhwk3ER8Cyq.qZBbif//5SLb3JK7PWysraIQ43Gnu/y', NULL, '2022-07-11 03:53:11', '2022-07-11 03:53:11', NULL, 0, NULL, 'active', 0, NULL, NULL, 'male', '0936.267.568', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 3, 'lM2Z3vEmFM6', 0, 0, 0, 'Bắc Hà AFL', 'meta_bacha', NULL, '$2y$10$36l5V8DsEp7rWar78gGaZe2XvrtKfg6qD/XvB/n/DFj7cg8iwF18y', NULL, '2022-07-11 18:08:34', '2022-07-11 18:08:34', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '0936.267.568', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, 'ajXYJMQwtg7', 0, 0, 0, 'Lịch sử Apply', 'test_lai', NULL, '$2y$10$GpNMSXWwC4fHsRciLRCabOIZFakxt1KUh.HkD/mAAaBQYw.C03nd.', NULL, '2022-07-11 18:11:04', '2022-07-11 18:11:04', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '0912 568 999', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, '1mQVhkwtR38', 0, 0, 0, 'Đặt lại mật khẩu', 'huuthangb2k250@gmail.com', NULL, '$2y$10$h2VUcj4EumZJHqG/ERzGDex59lR0qff6gkqD/9G4k8NlgE0ASaBEC', NULL, '2022-07-11 18:13:20', '2022-07-11 18:13:20', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '098 226 9600', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 4, 'mLu1qHUYPF9', 0, 0, 0, 'Tags', 'test2@gmail.com', NULL, '$2y$10$g5hcIFbN9zr37wiikne1CuEmLMUC9JMUDfjvyu1URsUGCTLV5h5FK', NULL, '2022-07-11 18:25:50', '2022-07-11 18:30:37', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '1900 1570', 0, NULL, NULL, NULL, NULL, NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD KEY `admins_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `admins_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tb_admin_menus`
--
ALTER TABLE `tb_admin_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_admin_menus_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_admin_menus_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_affiliate_historys`
--
ALTER TABLE `tb_affiliate_historys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_affiliate_historys_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_affiliate_historys_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_affiliate_payments`
--
ALTER TABLE `tb_affiliate_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_affiliate_payments_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_affiliate_payments_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_blocks`
--
ALTER TABLE `tb_blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_blocks_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_blocks_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_block_contents`
--
ALTER TABLE `tb_block_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_block_contents_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_block_contents_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_bookings`
--
ALTER TABLE `tb_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_bookings_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_bookings_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_branchs`
--
ALTER TABLE `tb_branchs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_branchs_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_branchs_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_cms_posts`
--
ALTER TABLE `tb_cms_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_cms_posts_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_cms_posts_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_cms_taxonomys`
--
ALTER TABLE `tb_cms_taxonomys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_cms_taxonomys_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_cms_taxonomys_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_components`
--
ALTER TABLE `tb_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_components_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_components_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_component_configs`
--
ALTER TABLE `tb_component_configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_component_configs_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_component_configs_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_contacts`
--
ALTER TABLE `tb_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_contacts_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_contacts_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_logs`
--
ALTER TABLE `tb_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_menus`
--
ALTER TABLE `tb_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_menus_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_menus_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_modules`
--
ALTER TABLE `tb_modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tb_modules_module_code_unique` (`module_code`),
  ADD KEY `tb_modules_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_modules_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_module_functions`
--
ALTER TABLE `tb_module_functions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tb_module_functions_function_code_unique` (`function_code`),
  ADD KEY `tb_module_functions_module_id_foreign` (`module_id`),
  ADD KEY `tb_module_functions_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_module_functions_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_options`
--
ALTER TABLE `tb_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tb_options_option_name_unique` (`option_name`),
  ADD KEY `tb_options_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_options_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_orders`
--
ALTER TABLE `tb_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_orders_customer_id_foreign` (`customer_id`),
  ADD KEY `tb_orders_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_orders_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_order_details`
--
ALTER TABLE `tb_order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_order_details_order_id_foreign` (`order_id`),
  ADD KEY `tb_order_details_item_id_foreign` (`item_id`),
  ADD KEY `tb_order_details_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_order_details_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_pages`
--
ALTER TABLE `tb_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_pages_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_pages_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_popups`
--
ALTER TABLE `tb_popups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_popups_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_popups_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_reviews`
--
ALTER TABLE `tb_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_roles`
--
ALTER TABLE `tb_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_roles_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_roles_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_widgets`
--
ALTER TABLE `tb_widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_widgets_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_widgets_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `tb_widget_configs`
--
ALTER TABLE `tb_widget_configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_widget_configs_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_widget_configs_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_admin_updated_id_foreign` (`admin_updated_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tb_admin_menus`
--
ALTER TABLE `tb_admin_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `tb_affiliate_historys`
--
ALTER TABLE `tb_affiliate_historys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_affiliate_payments`
--
ALTER TABLE `tb_affiliate_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_blocks`
--
ALTER TABLE `tb_blocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tb_block_contents`
--
ALTER TABLE `tb_block_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=424;

--
-- AUTO_INCREMENT for table `tb_bookings`
--
ALTER TABLE `tb_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_branchs`
--
ALTER TABLE `tb_branchs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_cms_posts`
--
ALTER TABLE `tb_cms_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;

--
-- AUTO_INCREMENT for table `tb_cms_taxonomys`
--
ALTER TABLE `tb_cms_taxonomys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `tb_components`
--
ALTER TABLE `tb_components`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_component_configs`
--
ALTER TABLE `tb_component_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_contacts`
--
ALTER TABLE `tb_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `tb_logs`
--
ALTER TABLE `tb_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_menus`
--
ALTER TABLE `tb_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `tb_modules`
--
ALTER TABLE `tb_modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tb_module_functions`
--
ALTER TABLE `tb_module_functions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `tb_options`
--
ALTER TABLE `tb_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_orders`
--
ALTER TABLE `tb_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_order_details`
--
ALTER TABLE `tb_order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tb_pages`
--
ALTER TABLE `tb_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tb_popups`
--
ALTER TABLE `tb_popups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_reviews`
--
ALTER TABLE `tb_reviews`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_roles`
--
ALTER TABLE `tb_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_widgets`
--
ALTER TABLE `tb_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_widget_configs`
--
ALTER TABLE `tb_widget_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `admins_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_admin_menus`
--
ALTER TABLE `tb_admin_menus`
  ADD CONSTRAINT `tb_admin_menus_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_admin_menus_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_affiliate_historys`
--
ALTER TABLE `tb_affiliate_historys`
  ADD CONSTRAINT `tb_affiliate_historys_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_affiliate_historys_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_affiliate_payments`
--
ALTER TABLE `tb_affiliate_payments`
  ADD CONSTRAINT `tb_affiliate_payments_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_affiliate_payments_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_blocks`
--
ALTER TABLE `tb_blocks`
  ADD CONSTRAINT `tb_blocks_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_blocks_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_block_contents`
--
ALTER TABLE `tb_block_contents`
  ADD CONSTRAINT `tb_block_contents_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_block_contents_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_bookings`
--
ALTER TABLE `tb_bookings`
  ADD CONSTRAINT `tb_bookings_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_bookings_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_branchs`
--
ALTER TABLE `tb_branchs`
  ADD CONSTRAINT `tb_branchs_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_branchs_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_cms_posts`
--
ALTER TABLE `tb_cms_posts`
  ADD CONSTRAINT `tb_cms_posts_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_cms_posts_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_cms_taxonomys`
--
ALTER TABLE `tb_cms_taxonomys`
  ADD CONSTRAINT `tb_cms_taxonomys_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_cms_taxonomys_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_components`
--
ALTER TABLE `tb_components`
  ADD CONSTRAINT `tb_components_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_components_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_component_configs`
--
ALTER TABLE `tb_component_configs`
  ADD CONSTRAINT `tb_component_configs_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_component_configs_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_contacts`
--
ALTER TABLE `tb_contacts`
  ADD CONSTRAINT `tb_contacts_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_contacts_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_menus`
--
ALTER TABLE `tb_menus`
  ADD CONSTRAINT `tb_menus_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_menus_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_modules`
--
ALTER TABLE `tb_modules`
  ADD CONSTRAINT `tb_modules_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_modules_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_module_functions`
--
ALTER TABLE `tb_module_functions`
  ADD CONSTRAINT `tb_module_functions_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_module_functions_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_options`
--
ALTER TABLE `tb_options`
  ADD CONSTRAINT `tb_options_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_options_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_orders`
--
ALTER TABLE `tb_orders`
  ADD CONSTRAINT `tb_orders_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_orders_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_order_details`
--
ALTER TABLE `tb_order_details`
  ADD CONSTRAINT `tb_order_details_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_order_details_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_pages`
--
ALTER TABLE `tb_pages`
  ADD CONSTRAINT `tb_pages_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_pages_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_popups`
--
ALTER TABLE `tb_popups`
  ADD CONSTRAINT `tb_popups_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_popups_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_roles`
--
ALTER TABLE `tb_roles`
  ADD CONSTRAINT `tb_roles_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_roles_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_widgets`
--
ALTER TABLE `tb_widgets`
  ADD CONSTRAINT `tb_widgets_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_widgets_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tb_widget_configs`
--
ALTER TABLE `tb_widget_configs`
  ADD CONSTRAINT `tb_widget_configs_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_widget_configs_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
