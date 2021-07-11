-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 10, 2021 at 03:33 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nomads`
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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `travel_packages_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'assets/gallery/ytQAF9f22oi2ApSVNZe78XYHqA9gA28joggycjLU.jpg', '2021-07-08 18:20:04', '2021-06-13 20:33:13', '2021-07-08 18:20:04'),
(2, 1, 'asset/gallery/pmdOerCv6LFwAFoKLIiuryqdurwfs0ggbsy7fAoB.jpg', '2021-07-08 18:20:10', '2021-06-13 20:34:30', '2021-07-08 18:20:10'),
(3, 3, 'assets/gallery/CgvK590KC28CLqn8cY6deYZl6hJezZHAbIMq5bT0.jpg', '2021-07-08 18:20:20', '2021-06-15 22:04:56', '2021-07-08 18:20:20'),
(4, 4, 'assets/gallery/0QAlA7EPE4GNoWBKDYajZrSttL5MjMaI6aEMjQE1.jpg', '2021-07-08 18:20:34', '2021-06-15 22:05:11', '2021-07-08 18:20:34'),
(5, 1, 'assets/gallery/nC9L5ufoJ8BhNo66IWiFfnuiCN9YDkZZsmHXLEdS.jpg', NULL, '2021-07-08 18:20:54', '2021-07-08 18:20:54'),
(6, 2, 'assets/gallery/ah0UKkuxD7cXwTooBB1rN9YjMpbj55n32fR7GZJN.jpg', NULL, '2021-07-08 18:21:13', '2021-07-08 18:21:13'),
(7, 3, 'assets/gallery/hbW9rrMSsAYkwWef4QFt3aNWdTTGVrZCigPwhqu9.jpg', NULL, '2021-07-08 18:22:19', '2021-07-08 18:22:19'),
(8, 4, 'assets/gallery/fJHv6EhNs8jX2qzScTmJ5JmPAbi4aM6Z3WB468RQ.jpg', NULL, '2021-07-08 18:22:45', '2021-07-08 18:22:45'),
(9, 3, 'assets/gallery/nRVmlGTQ7aI7DIF6fgHxmMTktDmkhiV9N6fj9APz.jpg', NULL, '2021-07-08 18:36:38', '2021-07-08 18:36:38');

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
(4, '2021_06_09_204731_create_travel_packages_table', 1),
(5, '2021_06_09_214705_create_galleries_table', 2),
(6, '2021_06_09_215439_create_transactions_table', 3),
(7, '2021_06_10_032947_create_transaction_details_table', 3),
(8, '2021_06_10_043000_add_roles_field_to_users_table', 4),
(9, '2021_06_10_112556_add_username_field_to_users_table', 5);

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
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `additional_visa` int(11) NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `travel_packages_id`, `users_id`, `additional_visa`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 180, 300, 'SUCCESS', NULL, '2021-06-13 22:20:25', '2021-06-15 21:22:37'),
(2, 1, 2, 0, 200, 'IN_CART', NULL, '2021-06-18 05:43:47', '2021-06-18 05:43:47'),
(3, 1, 2, 0, 200, 'IN_CART', NULL, '2021-06-18 08:04:20', '2021-06-18 08:04:20'),
(4, 2, 2, 0, 100, 'IN_CART', NULL, '2021-06-18 08:12:33', '2021-06-18 08:12:33'),
(5, 1, 2, 0, 200, 'PENDING', NULL, '2021-06-18 08:25:43', '2021-06-18 09:10:42'),
(6, 1, 2, 0, 200, 'IN_CART', NULL, '2021-06-18 09:15:41', '2021-06-18 09:15:41'),
(7, 1, 2, 190, 590, 'PENDING', NULL, '2021-06-18 09:15:47', '2021-06-18 09:16:06'),
(8, 1, 2, 190, 590, 'PENDING', NULL, '2021-07-08 17:40:03', '2021-07-08 17:43:03'),
(9, 3, 2, 190, 790, 'PENDING', NULL, '2021-07-08 18:23:36', '2021-07-08 18:24:02');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_visa` tinyint(1) NOT NULL,
  `doe_passport` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `username`, `nationality`, `is_visa`, `doe_passport`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'dowan', 'ID', 1, '2021-07-01', NULL, '2021-06-14 02:00:00', '2021-06-14 02:00:00'),
(2, 1, 'roweuser', 'CN', 1, '2021-07-30', NULL, '2021-06-14 04:00:00', '2021-06-14 04:00:00'),
(3, 2, 'dowan', 'ID', 0, '2026-06-18', NULL, '2021-06-18 05:43:47', '2021-06-18 05:43:47'),
(4, 3, 'dowan', 'ID', 0, '2026-06-18', NULL, '2021-06-18 08:04:20', '2021-06-18 08:04:20'),
(5, 4, 'dowan', 'ID', 0, '2026-06-18', NULL, '2021-06-18 08:12:33', '2021-06-18 08:12:33'),
(6, 5, 'dowan', 'ID', 0, '2026-06-18', NULL, '2021-06-18 08:25:44', '2021-06-18 08:25:44'),
(7, 5, 'roweuser', 'CN', 1, '2021-07-10', '2021-06-18 09:08:36', '2021-06-18 09:06:31', '2021-06-18 09:08:36'),
(8, 6, 'dowan', 'ID', 0, '2026-06-18', NULL, '2021-06-18 09:15:41', '2021-06-18 09:15:41'),
(9, 7, 'dowan', 'ID', 0, '2026-06-18', NULL, '2021-06-18 09:15:47', '2021-06-18 09:15:47'),
(10, 7, 'roweuser', 'CN', 1, '2021-07-20', NULL, '2021-06-18 09:16:04', '2021-06-18 09:16:04'),
(11, 8, 'dowan', 'ID', 0, '2026-07-09', NULL, '2021-07-08 17:40:03', '2021-07-08 17:40:03'),
(12, 8, 'roweuser', 'CN', 1, '2021-07-17', NULL, '2021-07-08 17:42:41', '2021-07-08 17:42:41'),
(13, 9, 'dowan', 'ID', 0, '2026-07-09', NULL, '2021-07-08 18:23:36', '2021-07-08 18:23:36'),
(14, 9, 'roweuser', 'CN', 1, '2021-07-16', NULL, '2021-07-08 18:23:59', '2021-07-08 18:23:59');

-- --------------------------------------------------------

--
-- Table structure for table `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foods` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_date` date NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `title`, `slug`, `location`, `about`, `featured_event`, `language`, `foods`, `departure_date`, `duration`, `type`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Liburan Mantap', 'liburan-mantap', 'Bekasi, Jawa Barat', 'Liburan di Bekasi emang paling keren.', 'Bedug dan Dondang', 'Indonesia', 'Local Foods', '2021-06-20', '2D', 'Open Trip', 200, NULL, '2021-06-13 20:31:16', '2021-06-16 19:25:36'),
(2, 'Nusa Penida', 'nusa-penida', 'Bali', 'Bali adalah tempat destinasi wisata terbaik.', 'Tari Kecak', 'Indonesia', 'Makanan khas bali', '2021-06-25', '2D', 'Open Trip', 100, NULL, '2021-06-13 20:32:02', '2021-06-13 20:32:02'),
(3, 'Bali Nih Bos', 'bali-nih-bos', 'Bali, Indonesia', 'asyiiiikkkk', 'Tari Kecak', 'Indonesia', 'Makanan khas bali', '2021-06-25', '2D', 'Open Trip', 300, NULL, '2021-06-15 22:03:47', '2021-06-15 22:03:47'),
(4, 'Yuk Mampir', 'yuk-mampir', 'Somewhere', 'hahahhaha', 'Yang asik', 'Indonesia', 'yang enak', '2021-06-30', '2D', 'Open Trip', 200, NULL, '2021-06-15 22:04:40', '2021-06-15 22:04:40');

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
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`, `username`) VALUES
(1, 'Aldy', 'aldy@gmail.com', '2021-06-10 01:01:23', '$2y$10$Jl.bRSJGAUX9REvQHlDowOydmjAn5IFBbzL5r61cCjHEaSxeAwiDS', NULL, '2021-06-10 00:14:16', '2021-06-10 01:01:23', 'ADMIN', 'aldyckybw'),
(2, 'Dowan Rowe', 'dowan@gmail.com', '2021-06-10 00:20:21', '$2y$10$HUzz6WjvDdM.D6ALvTUZkOmwHf29ayIpqhezGLNgVbm4FVIw3HESq', NULL, '2021-06-10 00:16:31', '2021-06-10 00:20:21', 'USER', 'dowan'),
(3, 'Aldy User', 'aldyuser@gmail.com', NULL, '$2y$10$.Iy.was9.9bzPbeV1Om6Q.hKLLnhIX9LPQIyXbnE0HB0Zggfpa9mq', NULL, '2021-06-10 04:39:20', '2021-06-10 04:39:20', 'USER', 'aldyuser'),
(4, 'Rowe', 'roweuser@gmail.com', '2021-06-13 21:25:24', '$2y$10$Y2m77rNipPuYJn1OXu5rfOBJhILCyhNWdIEZLQvijwYJkO5MkC4PC', NULL, '2021-06-13 21:24:52', '2021-06-13 21:25:24', 'USER', 'roweuser');

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
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
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
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_packages`
--
ALTER TABLE `travel_packages`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
