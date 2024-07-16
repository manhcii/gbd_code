-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 14, 2024 lúc 08:04 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `gbd`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_contacts`
--

CREATE TABLE `tb_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_type` varchar(255) DEFAULT 'contact',
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `git_repo` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `admin_note` text DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_contacts`
--

INSERT INTO `tb_contacts` (`id`, `is_type`, `name`, `email`, `phone`, `domain`, `git_repo`, `content`, `admin_note`, `json_params`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(95, 'call_request', 'manh', 'mc@gmail.com', '0987063002', 'manhzz', 'https://github.com/manhcii/gbd_code.git', '123', NULL, '{\"template\":\"https:\\/\\/github.com\\/manhcii\\/gbd_code.git\"}', NULL, 'new', NULL, NULL, '2024-07-14 17:58:26', '2024-07-14 17:58:26'),
(96, 'call_request', 'manhzz', 'mcit@gmail.com', '0987456123', 'manhzz1', 'https://github.com/manhcii/gbd_code.git', 'hn', NULL, '{\"template\":\"https:\\/\\/github.com\\/manhcii\\/gbd_code.git\"}', NULL, 'new', NULL, NULL, '2024-07-14 18:00:21', '2024-07-14 18:00:21');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tb_contacts`
--
ALTER TABLE `tb_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_contacts_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_contacts_admin_updated_id_foreign` (`admin_updated_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tb_contacts`
--
ALTER TABLE `tb_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tb_contacts`
--
ALTER TABLE `tb_contacts`
  ADD CONSTRAINT `tb_contacts_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_contacts_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
