-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2023 at 06:58 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auth_api`
--

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
(66, '2014_10_12_000000_create_users_table', 1),
(67, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(68, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(69, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(70, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(71, '2016_06_01_000004_create_oauth_clients_table', 1),
(72, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(73, '2019_08_19_000000_create_failed_jobs_table', 1),
(74, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(75, '2023_07_19_084820_add_role_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0a83e2a633736dea4869b0e0d42f070d47f977e42693281e27b2e30ef5408544344cf905d132f4d4', 1, 1, 'authToken', '[]', 0, '2023-07-19 04:54:01', '2023-07-19 04:54:01', '2024-07-19 10:54:01'),
('1b6030991b13e9a2794ddeba94d1f8f42aad3e55c6ed069224dcbcc76b78828a56ab117ad6ed4b32', 3, 1, 'authToken', '[]', 0, '2023-07-19 05:04:54', '2023-07-19 05:04:54', '2024-07-19 11:04:54'),
('2b8a1907d29735018313d952b161a5de746e575394288c1cf6dfb93a70b42487ea7b8a8c7019bcd6', 7, 1, 'authToken', '[]', 1, '2023-07-22 21:12:06', '2023-07-22 21:12:31', '2024-07-23 03:12:06'),
('49eeddfe3efb0827ba2335df21fedec8ffb535cf2d43040a54300d0ebd8ecf6046f8e4e93d4411f4', 7, 1, 'authToken', '[]', 0, '2023-07-22 21:07:55', '2023-07-22 21:07:55', '2024-07-23 03:07:55'),
('6abc1c6324b36ca2f87e80e73cd4b893de20154aabfd58b05530ce2ef05f7665c2a907468241158a', 7, 1, 'authToken', '[]', 1, '2023-07-22 21:09:43', '2023-07-22 21:10:21', '2024-07-23 03:09:43'),
('7e90df04cc89834642d2c7251bf85b5a59602a07d140dda57b4c78fed827419781dfee374db8a6dd', 6, 1, 'authToken', '[]', 1, '2023-07-22 05:57:57', '2023-07-22 05:58:55', '2024-07-22 11:57:57'),
('8276412750b8d4c2623fe95f75a5a708cb3f14236bbbbd69fc43c2c8a90de157ed9f5db5f2c0e8d0', 1, 1, 'authToken', '[]', 0, '2023-07-19 05:10:41', '2023-07-19 05:10:41', '2024-07-19 11:10:41'),
('9280e37a4a14d4f35a1744a7f86e18b3c04ab96cd18ff8e4e81a7d6ba0035eb8f483d69354023d85', 1, 1, 'authToken', '[]', 0, '2023-07-19 05:10:52', '2023-07-19 05:10:52', '2024-07-19 11:10:52'),
('e470103ef15bda17dd3e6ecbc1c5a37034ef78706574208248860894050c50c241c41ef0515ad265', 2, 1, 'authToken', '[]', 0, '2023-07-19 05:03:09', '2023-07-19 05:03:09', '2024-07-19 11:03:09'),
('e86cbcc00bf7e6f9f159e6babb3dc51df79bdff425145e24a6713cd6d475cd7b5792fc429c521c9c', 5, 1, 'authToken', '[]', 1, '2023-07-20 05:36:38', '2023-07-22 05:57:34', '2024-07-20 11:36:38'),
('f398a666a5f4179e743d08acf435f17d3bb14a44cc7247e021cbdc77e8ae8468a8ebb0efeb4affa5', 4, 1, 'authToken', '[]', 0, '2023-07-19 05:06:11', '2023-07-19 05:06:11', '2024-07-19 11:06:11');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'wrGS1JU6lQdeapmPpgAMxXLHXSyRNkFpepdjF3qp', NULL, 'http://localhost', 1, 0, 0, '2023-07-19 04:29:59', '2023-07-19 04:29:59'),
(2, NULL, 'Laravel Password Grant Client', 'IODq5wNG9C9rJcudi7204Dx0CYHI5fJQdgKSPWLf', 'users', 'http://localhost', 0, 1, 0, '2023-07-19 04:29:59', '2023-07-19 04:29:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-07-19 04:29:59', '2023-07-19 04:29:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `role` varchar(255) NOT NULL DEFAULT 'employee',
  `otp` varchar(255) DEFAULT NULL,
  `otp_expires_at` timestamp NULL DEFAULT NULL,
  `otp_verified` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `otp`, `otp_expires_at`, `otp_verified`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'karima', 'moon2@gmail.com', NULL, '$2y$10$1cct8AqI1wVPRh/sy5XaT.4RYUzHLkONJB19kTsXdkmQ4URIIbXg6', 'employee', NULL, NULL, 1, NULL, NULL, '2023-07-19 04:54:00', '2023-07-19 04:54:00'),
(2, 'karima', 'moon23@gmail.com', NULL, '$2y$10$hXE2TReJ9thPfPCwQihqMevINfEpdXx2jui2JdcBWEcoL9NIhUcVa', 'employee', '$2y$10$eCEIEzYiDSWP/Vy1PSJiYukyRDPOePZwrnB9gu7o3nk7g9jrobrGG', '2023-07-19 05:08:09', 0, NULL, NULL, '2023-07-19 05:03:09', '2023-07-19 05:03:09'),
(3, 'karima', 'moon232@gmail.com', NULL, '$2y$10$rHmKHfmETb3FqemBDgJAsu7f7XHDiCZjVYbg/XfKfF7w4K4xbA/8a', 'employee', '$2y$10$gd2.oePlerR6UJ0huC44f.mas2xiyOLQ2t7CYKXf4I6MPVALe8ORK', '2023-07-19 05:09:54', 0, NULL, NULL, '2023-07-19 05:04:54', '2023-07-19 05:04:54'),
(4, 'karima', 'moon232a@gmail.com', NULL, '$2y$10$x5wy8bFGUm9yi4sSsWGiougHOSZ63x.IgkhP692HHuOPPNL0ZBApC', 'employee', '$2y$10$KvazFtL.CX5nHtpSQKOAQe3rygUfWuBCn2LAFiGlR01hF2Qzx3IL2', '2023-07-19 05:11:11', 0, NULL, NULL, '2023-07-19 05:06:11', '2023-07-19 05:06:11'),
(5, 'karima', 'moon9@gmail.com', NULL, '$2y$10$a4.kRsvzcxbFJJsrTVcIS.zPow3KqINP9dOl9es0nb/YLxhiRMymy', 'employee', '$2y$10$TzJQRJoKvSad0wXvpbsO0OmFb0Z7s5wW82cYw3DpFNt6.TYGqOx.G', '2023-07-20 05:41:38', 0, NULL, NULL, '2023-07-20 05:36:38', '2023-07-20 05:36:38'),
(6, 'karima', 'moon8999@gmail.com', NULL, '$2y$10$BU6IPXspNyMxEoj9PGj6e.C97yrK0VkrMZC855SdOcTkPhahPWiNa', 'employee', '$2y$10$B36vUVKhP0ubGs5h/S5zH.fFkgyDZV/Qt7wR0w4wiNkOEspMfXz5S', '2023-07-22 06:02:57', 0, NULL, NULL, '2023-07-22 05:57:57', '2023-07-22 05:57:57'),
(7, 'karima', 'moon10@gmail.com', NULL, '$2y$10$G85pWgw6GsaekB0Gr.7D.ObfVpv7i3zMKE/aroMPwEsPTNAqcNm7m', 'employee', NULL, NULL, 1, NULL, NULL, '2023-07-22 21:07:55', '2023-07-22 21:09:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
