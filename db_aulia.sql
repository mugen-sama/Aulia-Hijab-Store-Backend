-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Sep 2021 pada 09.17
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_aulia`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_23_070823_create_products_table', 1),
(5, '2021_06_23_071912_create_product_galleries_table', 2),
(6, '2021_06_23_072339_create_transactions_tabl', 3),
(7, '2021_06_23_074407_create_transactions_table', 4),
(8, '2021_06_23_074836_create_transaction_details_table', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `type`, `description`, `price`, `quantity`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Zara Hijab Segiempat', 'zara-hijab-segiempat', 'Hijab', 'Hijab segiempat dengan ukuran standar. Berbahan halus dan tidak panas dipakai ', 50000, 100, '2021-06-24 21:09:05', '2021-06-24 04:18:11', '2021-06-24 21:09:05'),
(2, 'Gamis Muslimah Aulia Series', 'gamis-muslimah-aulia-series', 'Gamis', '<p><strong>Gamis Muslimah Aulia Series</strong> adalah product terbaru dari Aulia Hijab Store <i>limited edition</i>. Gamis ini dibuat dengan bahan katun berkualitas sehingga membuat gamis ini nyaman ketika dipakai, tidak kaku, lembut dan tidak panas.&nbsp;</p>', 225000, 50, '2021-08-11 19:53:28', '2021-06-23 23:23:15', '2021-08-11 19:53:28'),
(3, 'tes', 'tes', 'tes', '<p>tes</p>', 10000, 1, '2021-06-24 00:50:43', '2021-06-24 00:50:40', '2021-06-24 00:50:43'),
(4, 'tes1', 'tes1', 'tes1', '<p>tes1</p>', 10100, 1, '2021-06-24 23:42:39', '2021-06-24 21:23:02', '2021-06-24 23:42:39'),
(5, 'Hijab Segiempat Zara', 'hijab-segiempat-zara', 'Hijab  Terbaru', '<p>Hijab Segiempat Zara dibuat dengan bahan katun berkualitas yang halus dan lembut. Sehingga nyaman dan &nbsp;tidak panas ketika digunakan.</p>', 100000, 75, NULL, '2021-06-24 23:42:30', '2021-08-11 20:00:57'),
(6, 'tes barang', 'tes-barang', 'tes', '<p>tes tambah barang</p>', 20000, 20, '2021-06-25 01:53:45', '2021-06-25 01:53:22', '2021-06-25 01:53:45'),
(7, 'Tas Muslimah', 'tas-muslimah', 'Tas', '<p>Tas Branded&nbsp;</p>', 200000, 20, NULL, '2021-07-06 21:57:05', '2021-07-06 21:57:05'),
(8, 'Hijab Pashmina', 'hijab-pashmina', 'Hijab', '<p>Hijab Pashmina Premium&nbsp;</p>', 80000, 20, NULL, '2021-07-06 22:02:59', '2021-07-06 22:02:59'),
(9, 'Gamis Muslimah Aulia Series Renda', 'gamis-muslimah-aulia-series-renda', 'Gamis', '<p>Gamis Muslimah Aulia Series Renda premium</p>', 250000, 10, NULL, '2021-07-06 22:04:05', '2021-07-06 22:04:05'),
(10, 'Pashmina Aulia Premium', 'pashmina-aulia-premium', 'Hijab', '<p>Pashmina Aulia Premium dibuat dari bahan berkualitas dan hanya terdapat 50 series terbatas.</p>', 150000, 50, NULL, '2021-09-10 22:23:28', '2021-09-10 22:23:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_galleries`
--

CREATE TABLE `product_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_galleries`
--

INSERT INTO `product_galleries` (`id`, `products_id`, `photo`, `is_default`, `deleted_at`, `created_at`, `updated_at`) VALUES
(15, 2, 'assets/product/YxUxqyszGURnJo6kSDGoxz3lc1pfoXICMADuLszC.jpg', 1, '2021-08-11 19:53:28', '2021-07-01 02:07:35', '2021-08-11 19:53:28'),
(16, 5, 'assets/product/fYLNtjFnRc811B27dYqVh9J3FWboTTji4QzwEH3l.png', 1, '2021-07-01 02:47:29', '2021-07-01 02:07:54', '2021-07-01 02:47:29'),
(17, 5, 'assets/product/qwY5glANEthsdHzGWwbWihtLvXmn9Hs0Zd8Tr7YZ.jpg', 1, '2021-09-10 22:20:16', '2021-07-01 02:47:47', '2021-09-10 22:20:16'),
(18, 7, 'assets/product/ZK4vAfje8CKSZj2VeraQ4Pogd9j6YqQoilYyk8bb.png', 1, '2021-07-06 22:02:07', '2021-07-06 21:57:31', '2021-07-06 22:02:07'),
(19, 7, 'assets/product/mxcrhmVdmrgZsthyAis2T0DLiotERS9jtzL7elnO.jpg', 1, NULL, '2021-07-06 22:02:20', '2021-07-06 22:02:20'),
(20, 8, 'assets/product/NeGEBYCQkWRTBBYJbZdsbhnQYgCSPlEyX70CNncs.jpg', 1, NULL, '2021-07-06 22:03:17', '2021-07-06 22:03:17'),
(21, 9, 'assets/product/VxfhSiV7KTrw3Is42SEFoTijgp2yJd7VoT6WwATL.jpg', 1, NULL, '2021-07-06 22:04:18', '2021-07-06 22:04:18'),
(22, 10, 'assets/product/Htjwm7xeq1lU8FEZqEb3KDbr7t0T8gyJYnrmmBng.jpg', 1, NULL, '2021-09-10 22:27:45', '2021-09-10 22:27:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `uuid`, `name`, `email`, `number`, `address`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'TRX12345678', 'Sulton Daud Ul Mukarobin', 'sulton.mukarobin@gmail.com', '087812345678', 'Yogyakarta DIY', 100000, 'SUCCESS', '2021-06-28 07:12:51', '2021-06-25 10:34:12', '2021-06-28 07:12:51'),
(2, 'TRX12345679', 'robins', 'sulton.mukarobin@gmail.com', '087812345678', 'Yogyakarta DIY', 100000, 'SUCCESS', '2021-06-25 06:02:52', '2021-06-25 10:34:12', '2021-06-25 06:02:52'),
(3, 'TRX67037852', 'Sulton Daud Ul Mukarobin', 'sulton@gmail.com', '087887578067', 'Yogyakarta', 100000, NULL, '2021-06-28 07:12:43', '2021-06-28 06:51:24', '2021-06-28 07:12:43'),
(4, 'TRX95460941', 'Sulton Daud Ul Mukarobin', 'sulton@gmail.com', '087887578067', 'Yogyakarta', 100000, NULL, '2021-06-28 07:12:55', '2021-06-28 06:52:52', '2021-06-28 07:12:55'),
(28, 'TRX79736671', 'robin', 'robin@gmail.com', '087887578067', 'Yogyakarta', 100000, NULL, '2021-07-01 02:14:58', '2021-06-28 08:21:22', '2021-07-01 02:14:58'),
(29, 'TRX89096461', 'robin', 'robin@gmail.com', '087887578067', 'Yogyakarta', 100000, NULL, '2021-07-01 02:15:00', '2021-06-28 08:22:55', '2021-07-01 02:15:00'),
(30, 'TRX40217745', 'robin', 'robin@gmail.com', '087887578067', 'Yogyakarta', 100000, NULL, '2021-07-01 02:15:02', '2021-06-28 08:24:17', '2021-07-01 02:15:02'),
(31, 'TRX66620191', 'robin', 'robin@gmail.com', '087887578067', 'Yogyakarta', 100000, NULL, '2021-07-01 02:15:03', '2021-06-28 08:24:28', '2021-07-01 02:15:03'),
(32, 'TRX21929391', 'robin', 'robin@gmail.com', '087887578067', 'Yogyakarta', 100000, NULL, '2021-07-01 02:15:12', '2021-06-28 08:24:43', '2021-07-01 02:15:12'),
(33, 'TRX30234551', 'robin', 'robin@gmail.com', '087887578067', 'Yogyakarta', 100000, NULL, '2021-07-01 02:15:14', '2021-06-28 08:24:52', '2021-07-01 02:15:14'),
(34, 'TRX56887769', 'robin', 'robin@gmail.com', '087887578067', 'Yogyakarta', 100000, NULL, '2021-07-01 02:15:16', '2021-06-28 08:25:00', '2021-07-01 02:15:16'),
(35, 'TRX41880205', 'robin', 'robin@gmail.com', '087887578067', 'Yogyakarta', 100000, NULL, '2021-07-01 02:15:22', '2021-06-28 08:25:10', '2021-07-01 02:15:22'),
(36, 'TRX87454379', 'robin', 'robin@gmail.com', '087887578067', 'Yogyakarta', 100000, NULL, '2021-07-01 02:15:28', '2021-06-28 21:01:48', '2021-07-01 02:15:28'),
(37, 'TRX37093460', 'robin', 'robin@gmail.com', '087887578067', 'Yogyakarta', 100000, NULL, '2021-07-01 02:15:23', '2021-06-28 21:02:38', '2021-07-01 02:15:23'),
(38, 'TRX51261895', 'Sulton Daud Ul Mukarobin', 'sulton.mukarobin@gmail.com', '087887578076', 'Yogyakarta', 100000, NULL, '2021-07-01 02:15:30', '2021-06-29 22:46:08', '2021-07-01 02:15:30'),
(39, 'TRX75715988', 'Sulton Daud Ul Mukarobin', 'sulton.mukarobin@gmail.com', '087887578076', 'Yogyakarta', 225000, NULL, '2021-07-01 02:15:26', '2021-06-29 22:47:59', '2021-07-01 02:15:26'),
(40, 'TRX39920864', 'Sulton Daud Ul Mukarobin', 'sulton.mukarobin@gmail.com', '087887578076', 'Yogyakarta', 225000, NULL, '2021-07-01 02:14:55', '2021-06-29 22:51:49', '2021-07-01 02:14:55'),
(41, '', 'Sulton Daud Ul Mukarobin', 'sulton.mukarobin@gmail.com', '087812345678', 'Yogyakarta', 225000, 'SUCCESS', NULL, '2021-07-01 09:13:29', '2021-07-01 09:13:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `products_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, '2021-06-25 10:38:05', '2021-06-25 10:38:05'),
(2, 2, 2, NULL, '2021-06-25 10:38:05', '2021-06-25 10:38:05'),
(3, 6, 1, NULL, '2021-06-28 07:06:00', '2021-06-28 07:06:00'),
(4, 6, 1, NULL, '2021-06-28 07:06:01', '2021-06-28 07:06:01'),
(5, 6, 2, NULL, '2021-06-28 07:06:01', '2021-06-28 07:06:01'),
(6, 7, 1, NULL, '2021-06-28 07:07:22', '2021-06-28 07:07:22'),
(7, 7, 1, NULL, '2021-06-28 07:07:22', '2021-06-28 07:07:22'),
(8, 7, 2, NULL, '2021-06-28 07:07:22', '2021-06-28 07:07:22'),
(9, 12, 2, NULL, '2021-06-28 14:50:44', '2021-06-28 14:50:44'),
(10, 37, 1, NULL, '2021-06-28 21:02:38', '2021-06-28 21:02:38'),
(11, 37, 2, NULL, '2021-06-28 21:02:38', '2021-06-28 21:02:38'),
(12, 37, 1, NULL, '2021-06-28 21:02:38', '2021-06-28 21:02:38'),
(13, 38, 1, NULL, '2021-06-29 22:46:08', '2021-06-29 22:46:08'),
(14, 38, 1, NULL, '2021-06-29 22:46:08', '2021-06-29 22:46:08'),
(15, 38, 2, NULL, '2021-06-29 22:46:08', '2021-06-29 22:46:08'),
(16, 39, 1, NULL, '2021-06-29 22:47:59', '2021-06-29 22:47:59'),
(17, 39, 1, NULL, '2021-06-29 22:47:59', '2021-06-29 22:47:59'),
(18, 39, 2, NULL, '2021-06-29 22:47:59', '2021-06-29 22:47:59'),
(19, 40, 2, NULL, '2021-06-29 22:51:49', '2021-06-29 22:51:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'SultonDaud Ul Mukarobin', 'sulton.mukarobin@gmail.com', NULL, '$2y$10$TF2/KudiB1xsKNStf4K7We/R4ByOT9svIG1oW9MD71usnDHU1N0F6', NULL, '2021-06-23 20:06:36', '2021-06-23 20:06:36'),
(3, 'robin', 'robin@gmail.com', NULL, '$2y$10$1eUW8Bl154c4XRjHai0BH.4JT2Dudei8/BoG.KfIgYUn40JxDTI62', NULL, '2021-06-29 03:16:52', '2021-06-29 03:16:52'),
(4, 'aulia', 'aulia@gmail.com', NULL, '$2y$10$/8CVXgTSk2cRsXzZ.CzUbe.rxKNPO/J/pfIdC0e8Q/HuuIz4DZI16', NULL, '2021-09-10 22:19:16', '2021-09-10 22:19:16');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
