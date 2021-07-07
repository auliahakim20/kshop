-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2021 at 04:07 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(4, '2021_07_02_053843_penyesuaian_table_users', 2);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `username`, `roles`, `address`, `phone`, `avatar`, `status`) VALUES
(1, 'Site Administrator', 'administrator@kshop.test', NULL, '$2y$10$rJnyVdcMAZk4Xo8bON7Jhe1ae5Rh1.kUZTUwx5rQXNF2IgJqK8R72', NULL, '2021-07-01 22:58:22', '2021-07-01 22:58:22', 'administrator', '[\"ADMIN\"]', 'Semarang, Jawa Tengah', NULL, 'saat-ini-tidak-ada-file.png', 'ACTIVE'),
(2, 'Fiony Alveria Tantri', 'fionyalveria@gmail.com', NULL, '$2y$10$afupokAg6bkT9e1My9pyWejx.GuHwzCblbdo5HKVduj.hMWq0uHFK', NULL, '2021-07-06 03:19:53', '2021-07-06 03:19:53', 'fionyalveria', '[\"ADMIN\"]', 'Jakarta', '081', 'avatars/eZn94IU00DaKyWS3Tmr1ADjfoNdyQ6YZMch0h9Ao.jpg', 'ACTIVE'),
(3, 'Jessica Chandra', 'jessica@gmail.com', NULL, '$2y$10$UCuL7x8ekbVVCZpfG/g9g.50o4Yby6g6.rKDbR9CsAgGc7/b9XsHi', NULL, '2021-07-06 03:20:51', '2021-07-06 03:20:51', 'jessi', '[\"ADMIN\"]', 'Jakarta', '082', NULL, 'ACTIVE'),
(6, 'Hanagaki Takemichi', 'hanagaki@gmail.com', NULL, '$2y$10$YR9iczsGfxNdzCy8XKaCE.XKdzZPM22I3eQ6M0RaBxHjIxT2zGOrG', NULL, '2021-07-06 03:23:27', '2021-07-06 03:23:27', 'hanagaki', '[\"ADMIN\"]', 'Tokyo', '2', 'avatars/Aqb7DHZ9WiZHvhIGd1JYX9mhjOK8Edrpiv8l8N6n.png', 'ACTIVE'),
(7, 'Ryuuguji Ken', 'draken@gmail.com', NULL, '$2y$10$K0068./VfmCKbU4mQPv.CulHZ0OoevWt9z1MQA210kUn.Dy0su.xi', NULL, '2021-07-06 03:24:05', '2021-07-06 03:24:05', 'draken', '[\"CUSTOMER\"]', 'Tokyo', '3', NULL, 'ACTIVE'),
(8, 'Sano Manjirou', 'mikey@gmail.com', NULL, '$2y$10$Y1LWaE8627cW18LPgvOdQOP9T2ZyxaM8v4gAtVnVrPrM8mF8QLN2K', NULL, '2021-07-06 03:24:39', '2021-07-06 18:36:23', 'mikey', '[\"ADMIN\"]', 'Kantou', '4', 'avatars/kDk2CiTYYglcF9v7ItPcfPvV5RCdidpVye7APq6n.png', 'ACTIVE'),
(9, 'Chiyufu Matsuno', 'chifuyu@gmail.com', NULL, '$2y$10$pIgtUkTmLu6tw4N4Hvmf/OPiqMDl57lV7y42k13dlgTyFEezyu9tm', NULL, '2021-07-06 03:25:09', '2021-07-06 03:25:09', 'chifuyu', '[\"CUSTOMER\"]', 'Tokyo', '5', NULL, 'ACTIVE'),
(10, 'Mitsuya Takashi', 'mitsuya@gmail.com', NULL, '$2y$10$8tmgtrY7JYUXw5NIsrQIX.wmGjNd5yiHf.QAK1ckPThxpzwL4.qGW', NULL, '2021-07-06 03:25:41', '2021-07-06 18:32:10', 'mitsuya', '[\"CUSTOMER\"]', 'Yokohama', '6', 'avatars/CGMNqallsHrx6JJCCIHwnOqph31zcbKo3rzHuEmq.jpg', 'ACTIVE'),
(11, 'Baji', 'baji@gmail.com', NULL, '$2y$10$ssBLh33KCaS9omfrWIlMyOIjyGPVJizPHp/UFppBMCjQyPhWhxFyK', NULL, '2021-07-06 03:26:54', '2021-07-06 03:26:54', 'baji', '[\"STAFF\",\"CUSTOMER\"]', 'Tokyo', '7', NULL, 'ACTIVE'),
(12, 'Kazutora', 'kazutora', NULL, '$2y$10$mJSP5/KLUzRCxzAyeA0WWeRlgCSfLxoJPEIuRwFYBN1QRvVPChao2', NULL, '2021-07-06 03:27:26', '2021-07-06 03:27:26', 'kazutora', '[\"STAFF\"]', 'Kyoto', '8', NULL, 'ACTIVE');

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
