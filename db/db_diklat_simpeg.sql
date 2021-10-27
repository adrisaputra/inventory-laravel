-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 10.4.19-MariaDB - mariadb.org binary distribution
-- OS Server:                    Win64
-- HeidiSQL Versi:               10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- membuang struktur untuk table db_diklat_simpeg.arsip_digital_tbl
CREATE TABLE IF NOT EXISTS `arsip_digital_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pegawai_id` int(11) DEFAULT NULL,
  `nama_arsip` varchar(100) DEFAULT NULL,
  `arsip_digital` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Membuang data untuk tabel db_diklat_simpeg.arsip_digital_tbl: ~2 rows (lebih kurang)
/*!40000 ALTER TABLE `arsip_digital_tbl` DISABLE KEYS */;
INSERT INTO `arsip_digital_tbl` (`id`, `pegawai_id`, `nama_arsip`, `arsip_digital`, `user_id`, `created_at`, `updated_at`) VALUES
	(2, 1, 'Kartu dsdsds', '1624780074.pdf', 3, '2021-06-27 07:47:54', '2021-06-27 08:12:26'),
	(3, 1, 'keluarga', '1624780085.jpg', 1, '2021-06-27 07:48:05', '2021-06-27 07:48:05');
/*!40000 ALTER TABLE `arsip_digital_tbl` ENABLE KEYS */;

-- membuang struktur untuk table db_diklat_simpeg.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel db_diklat_simpeg.failed_jobs: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- membuang struktur untuk table db_diklat_simpeg.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel db_diklat_simpeg.migrations: ~6 rows (lebih kurang)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2),
	(5, '2019_12_14_000001_create_personal_access_tokens_table', 2),
	(6, '2021_06_27_012758_create_sessions_table', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- membuang struktur untuk table db_diklat_simpeg.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel db_diklat_simpeg.password_resets: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- membuang struktur untuk table db_diklat_simpeg.pegawai_tbl
CREATE TABLE IF NOT EXISTS `pegawai_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(18) DEFAULT NULL,
  `nama_pegawai` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(50) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `agama` varchar(300) DEFAULT NULL,
  `gol_darah` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telp` varchar(50) DEFAULT NULL,
  `no_ktp` varchar(50) DEFAULT NULL,
  `no_bpjs` varchar(50) DEFAULT NULL,
  `no_npwp` varchar(50) DEFAULT NULL,
  `no_karpeg` varchar(50) DEFAULT NULL,
  `no_karsu` varchar(50) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `tmt_cpns` date DEFAULT NULL,
  `tmt_pns` date DEFAULT NULL,
  `status_hapus` int(11) DEFAULT 0,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Membuang data untuk tabel db_diklat_simpeg.pegawai_tbl: ~2 rows (lebih kurang)
/*!40000 ALTER TABLE `pegawai_tbl` DISABLE KEYS */;
INSERT INTO `pegawai_tbl` (`id`, `nip`, `nama_pegawai`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `agama`, `gol_darah`, `email`, `telp`, `no_ktp`, `no_bpjs`, `no_npwp`, `no_karpeg`, `no_karsu`, `foto`, `tmt_cpns`, `tmt_pns`, `status_hapus`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, '199501082020121002', 'ADRI SAPUTRA IBRAHIM', 'Kendari', '1991-10-16', 'Pria', 'BTN Permata Anawai', 'Islam', 'A', 'adri.saputra.ibrahim@gmail.com', '082259504093', '7471091610910001', 'sasasa', 'sasasa', '3edwe', 'saqew', '1624771285.jpg', '2021-06-08', '2021-06-16', 0, 1, '2021-06-27 05:12:36', '2021-06-27 07:12:34'),
	(2, '199501082020121001', 'EIS NURHILIYA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2021-06-27 07:50:42', '2021-06-27 10:45:49');
/*!40000 ALTER TABLE `pegawai_tbl` ENABLE KEYS */;

-- membuang struktur untuk table db_diklat_simpeg.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel db_diklat_simpeg.personal_access_tokens: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- membuang struktur untuk table db_diklat_simpeg.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel db_diklat_simpeg.sessions: ~3 rows (lebih kurang)
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('CDtfCNK8KRxbbf590rZiBpK0EUaghJErU2nd28xb', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'YTo2OntzOjM6InVybCI7YToxOntzOjg6ImludGVuZGVkIjtzOjQwOiJodHRwOi8vbG9jYWxob3N0L2Rpa2xhdC1zaW1wZWcvZGFzaGJvYXJkIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly9sb2NhbGhvc3QvZGlrbGF0LXNpbXBlZy9wZWdhd2FpL2NyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NjoiX3Rva2VuIjtzOjQwOiJ2TkJlR1FQWndPZENDdWt1UFJ3Y3dNZlc5UUVNMmx6ZkJkb1FGZVhlIjtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkbmptaFNXSUVjeTFRNC9GNWNiTk9zdWx2ZTExeDNNbFByRGFNa043WFg1WWtTVVQ5aElIbzYiO30=', 1624793649),
	('iJbvwKup48iqyQVfFwsTudv4BkqGR8V9in56sjAm', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVktXV1RNcFgwM2lGRU9HNHlXbGFmQkxXZjd3MjRMZW9OVm9wZEtSZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3QvZGlrbGF0LXNpbXBlZyI7fX0=', 1624791824),
	('v03FuZxvnDa1LD7N39mcH25TslbpFaSVGwR70zMk', 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiM1d5R1k1UzhZTEE0NG8xZ09kOWVnaFVidTNhZ1l1UW1ZYXpYdVVmcyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly9sb2NhbGhvc3QvZGlrbGF0LXNpbXBlZy9hcnNpcF9kaWdpdGFsL2VkaXQvNS8zIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJHhZay81TG5ScGtPeHVZWnNIb0FlZ09IV20ubmdVYW8wVFBMNXpQdnZCSzk4TEhJYnJ2NVptIjt9', 1624795998);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- membuang struktur untuk table db_diklat_simpeg.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel db_diklat_simpeg.users: ~4 rows (lebih kurang)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `foto`, `group`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'administrator', 'administrator@gmail.com', NULL, '$2y$10$njmhSWIEcy1Q4/F5cbNOsulve11x3MlPrDaMkN7XX5YkSUT9hIHo6', NULL, NULL, NULL, '1624780783.jpg', 1, 0, '2021-06-27 02:19:17', '2021-06-27 07:59:43'),
	(2, '199501082020121002', '199501082020121002@gmail.com', NULL, '$2y$10$xYk/5LnRpkOxuYZsHoAegOHWm.ngUao0TPL5zPvvBK98LHIbrv5Zm', NULL, NULL, NULL, NULL, 2, 0, '2021-06-27 05:12:36', '2021-06-27 10:52:10'),
	(3, '199501082020121001', '199501082020121001@gmail.com', NULL, '$2y$10$Gc02mYxX.A8vcblQWP12FeB5ax1txyhym21l3alwtiISF8jpTCJYW', NULL, NULL, NULL, NULL, 2, 1, '2021-06-27 07:50:43', '2021-06-27 10:45:49');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
