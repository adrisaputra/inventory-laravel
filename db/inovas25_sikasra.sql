-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 13 Agu 2021 pada 21.18
-- Versi server: 8.0.26
-- Versi PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inovas25_sikasra`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `arsip_digital_tbl`
--

CREATE TABLE `arsip_digital_tbl` (
  `id` int NOT NULL,
  `pegawai_id` int DEFAULT NULL,
  `nama_arsip` varchar(100) DEFAULT NULL,
  `arsip_digital` varchar(100) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `arsip_digital_tbl`
--

INSERT INTO `arsip_digital_tbl` (`id`, `pegawai_id`, `nama_arsip`, `arsip_digital`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 1, 'Kartu dsdsds', '1624780074.pdf', 3, '2021-06-27 00:47:54', '2021-06-27 01:12:26'),
(3, 1, 'keluarga', '1624780085.jpg', 1, '2021-06-27 00:48:05', '2021-06-27 00:48:05'),
(4, 3, 'xx', '1625810725.jpg', 1, '2021-07-08 23:01:04', '2021-07-08 23:05:25'),
(5, 3, 'rian', '1626225906.pdf', 5, '2021-07-13 18:25:06', '2021-07-13 18:25:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `litigasi_tbl`
--

CREATE TABLE `litigasi_tbl` (
  `id` int NOT NULL,
  `kategori` int DEFAULT NULL,
  `judul` varchar(200) DEFAULT NULL,
  `deskripsi` text,
  `tahun` double DEFAULT NULL,
  `arsip_litigasi` varchar(50) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `litigasi_tbl`
--

INSERT INTO `litigasi_tbl` (`id`, `kategori`, `judul`, `deskripsi`, `tahun`, `arsip_litigasi`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 2, 'xsa', 'sasa', 2021, '1625794579.jpeg', 1, '2021-07-08 18:36:19', '2021-07-08 18:36:19'),
(4, 1, 'contoh', 'contohhh', 2021, '1626404383.pdf', 1, '2021-07-15 19:59:43', '2021-07-15 19:59:43'),
(5, 3, 'Perkara Desa Waonu No 34/G/2019.PTUN KDI', 'Perkara pemilihan Kepala Desa Waonu No 34/G/2019.PTUN KDI', 2019, '1628823231.pdf', 1, '2021-08-12 19:53:51', '2021-08-12 19:54:26'),
(6, 3, 'Perkara Desa Waonu No 34/G/2019.PTUN KDI', 'Perkara Pemilihan Kepala Desa Waonu No 34/G/2019.PTUN KDI', 2019, '1628823530.pdf', 1, '2021-08-12 19:58:50', '2021-08-12 19:58:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(6, '2021_06_27_012758_create_sessions_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `non_litigasi_tbl`
--

CREATE TABLE `non_litigasi_tbl` (
  `id` int NOT NULL,
  `kategori` int DEFAULT NULL,
  `judul` varchar(200) DEFAULT NULL,
  `deskripsi` text,
  `tahun` double DEFAULT NULL,
  `arsip_non_litigasi` varchar(50) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `non_litigasi_tbl`
--

INSERT INTO `non_litigasi_tbl` (`id`, `kategori`, `judul`, `deskripsi`, `tahun`, `arsip_non_litigasi`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'ytttttttttttttttt', 'yttttttttttttttt', 2019, '1625795500.pdf', 1, '2021-07-08 18:48:54', '2021-07-08 18:51:40'),
(2, 2, 'Konsultasi Hukum', 'sasasasa', 2021, '1625795753.jpg', 1, '2021-07-08 18:55:53', '2021-07-08 18:55:53'),
(3, 3, 'wqwq', 'ewew', 2020, '1625798083.pdf', 1, '2021-07-08 19:34:43', '2021-07-08 19:34:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai_tbl`
--

CREATE TABLE `pegawai_tbl` (
  `id` int NOT NULL,
  `nip` varchar(18) DEFAULT NULL,
  `nama_pegawai` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(50) DEFAULT NULL,
  `alamat` text,
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
  `status_hapus` int DEFAULT '0',
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `pegawai_tbl`
--

INSERT INTO `pegawai_tbl` (`id`, `nip`, `nama_pegawai`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `agama`, `gol_darah`, `email`, `telp`, `no_ktp`, `no_bpjs`, `no_npwp`, `no_karpeg`, `no_karsu`, `foto`, `tmt_cpns`, `tmt_pns`, `status_hapus`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '199501082020121002', 'ADRI SAPUTRA IBRAHIM', 'Kendari', '1991-10-16', 'Pria', 'BTN Permata Anawai', 'Islam', 'A', 'adri.saputra.ibrahim@gmail.com', '082259504093', '7471091610910001', 'sasasa', 'sasasa', '3edwe', 'saqew', '1624771285.jpg', '2021-06-08', '2021-06-16', 1, 1, '2021-06-26 22:12:36', '2021-07-08 08:15:53'),
(2, '199501082020121001', 'EIS NURHILIYA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2021-06-27 00:50:42', '2021-06-27 03:45:49'),
(3, '199501082020121004', 'EIS NURHILIYA', 'KENDARI', '1994-09-09', 'Wanita', 'BTN PERMATA ANAWAI', 'Islam', 'O', 'euis.nurhiliya@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '1625809278.jpg', '2021-07-08', '2021-07-08', 1, 1, '2021-07-08 07:35:26', '2021-07-27 00:53:08'),
(4, '198405242010011019', 'SUMARLIN LA MILI, SH', 'BAUBAU', '1984-05-24', 'Pria', 'Jl. Lingk. Sambali Kel. Baadia Kota Baubau', 'Islam', 'A', 'marlinbones@gmail.com', '085394468559', NULL, NULL, NULL, NULL, NULL, NULL, '2010-01-01', '2011-02-01', 0, 1, '2021-07-27 00:54:10', '2021-07-27 00:57:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0EVwEPoDCdQMkJjJruBz3yFWh0YWNq7QpkVb4IFf', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMDU2Z3loOXQzc3l1NWFUS3hESTJSMENSYzF6bzNVT3dHM2pUVDZGRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628730067),
('0SPAqrOu170inoWIESKsIKguB3NhusJbZ8Xk3nVI', NULL, '125.162.212.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZTl0TDAwNHVJem9jSUVubVBJODlXeGFEbEJyeEttaDA5d3pLUmU5SSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vc2lrYXNyYS5pbm92YXNpLXNpc3RlbS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628777589),
('2etMMBrLpeOm7OZ2rndMQ7tBp9Kz1DJVrOYx7ABU', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicVRDRkJGMG1qRjMwRXdIOFJkUUltNUY5VUVkVkp1Z1V0MGdhbU1CdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628755287),
('2K72BybNvsVOTcp9QEWBEpKODP4EqAOCWa6HonWR', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibEFrejhsYjhKbmV5cENmbjZPUFphWVNSNTlQb2lqVXlsczVueUwzVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628827338),
('2rlFqY3rzNT42oo3FKWZ6blvgYXkiIHl45lyD5MC', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYlVJUE1BVEdKeThyVTVIYk9iZGY4cXBjVTJJTE02Z043S0s4cWQydiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628739074),
('6bu3mKmMYH1oHgK9vsibfFTGbJAnI4Lh9lUPT5Bp', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkhkdkFkTDFDV28zVk5vbHc2WVczalcxajlGVUlIZVB0NTFLNXFrTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628775134),
('6jU9tEqke4Xu6129szho7M1cfaRR88lKnFc4wEwU', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY2xXeW91Y0xFQmVCR3NwN1h5QjdKRjNndXp2dzhjdkhKTGdQVDRkTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628697675),
('7JaRbt3VExSF3YptvfTHqtohLWcYFOeKv7Y35oVq', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWHk4RU9RaEIxV0dZSjgzMUFGNkwzRDVqcHVpczdIT2hneEV3ZXdSOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628735459),
('9COalqSBdbWImx7zb9XihkWiFRGWExBZktVYhfRr', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicnJRdmZ5V1MySmFQWVREcmVFWXhEZ1g2cFRnaUxmbVllMDBiMWNNViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628740866),
('APmCdKE1AXRyQ5wXZmeopnnjwgYsFfRB8NxKogBq', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDg4N0Vjd3RncXpxNFlFOGIwcXE4eEJndDAzenJUUW42dkk3R0NmaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628764347),
('c9SihZMn1431JYC3O2FOtQqhG0D04e1n9FYr3wNS', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQTNiUjRES25zSkxJS0pkUmFTc1RRaENLWXBRcElZcXRWc2FCTmYxaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628861487),
('CkPhQ8wrIItUhXvx3jEq1UnWg8cIHnA4Ixu2S5l6', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVTJCaWhiSTdoWmR5STAxMjJOdU8zeHYycTFzZE53R3NKQmNYcTY4MCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628742674),
('DHyw0OvS32L1tDKPjv0AFjKqJVH92P6PkctUgef8', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSGd2dXRKYVRqeDBWbHRqVUVpb01WRXZUOTh0WTM5ck5EdkxEN0ZSNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628751660),
('dWR2XTVOJr84RHEP8A3ZlvVBE0sUAsGSe3F9Qvdx', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiem0zQ3dFck5tRGJRNThDY2JRWWhjbDZjMDFjbVNaMUdyQmszUFFQNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628721113),
('EKcENtqLa6vWJt2ixPAi3UzeZejrzasYsuPgk3Yc', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVzZ4TFpITGFkQ2dLVGhJbEF4Q2E2NHhDV0dRU0IzeWE3cVh4bnlGbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628838125),
('Enw76PJz8DuZipjyYAdGuxK3sS0JRn3IbHKYN47h', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibWltdmp0WDhydXhDVXZXSFk0WkJGcTdmUExYdTZBdWFESXl6OW40cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628726487),
('F1REGadkjG8i59ANx8Ovnx0bSsRDqHVNN3XLZaeS', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid2NTYTVhS1Z3WEF5OWJnNVFBcFVQVUpMelFib08wdHVhYVpLd3NsayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628834528),
('f9gNZLlRXbmW3RcJDQVXsnFaOh5q5X9yuDCr02rc', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSDh4cHkzaWw2WFJrcVdiV3RJc282aWdpaEVnOTRkODV0aUdKWDhETyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628746273),
('fjHgz6JBRoc67RRHyk62ZFAubSQrxzSpoyaDrjfK', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTjNRWWdwVzROaEt6YVRDWDdHV01pSzhPcUd0cTZMRTdNQXRzWlNqNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628780507),
('fMl2Rqkw9GmfYhQd0FOF1gFUtHxGIT7ZB1L4x2RA', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidXlvVzB3SHl1dzVQYUlSUzQ3UWhwdXVYbm12cFZDcnNKQ0U1U2doWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628789485),
('fRE2xVvyIZtnFBU73BvtMkAtCCQP0ZHvq4d4dlhU', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ3ZCaXhGVzMwRWxnY0lQOVdYblVrVlVXTmJDc3pXYk01d0ptMzRjTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628767933),
('FY0KcbrLzwPkOWcz6BQbhXd8ZKqQwRwI0tRKCJ6y', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOXpNUXBjSXlma1FZQWlhTjFYajROSWxmMlJySVVBUEhCMjlweVZ5UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628712056),
('GKcF24CUNxQVE4QQpwJ5bGPvWLjbmDszlQIkoowK', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMnlpNklqRk5TU1VYOXRmQzJpbkd3Q2JCd0RDUFFNNzJzUTVPb2plTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628771489),
('hcAjvBSAYeSWg7SZR0zKRGtknloMmnGOrGTUhWFK', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMUZRRVd2a1A5OXUxOTl0cUJZeGtidmlIaWhHOWVrSWlLMElFNk1kaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628757094),
('htFQwvg3MQiu6HLhlaVSKRsXjWSMg6kRLRNL5VHk', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0FBdWVuTUFzOTJOM2xqdzkwVjFoMkdYYTVGS1lBUUswa2k2YVB4VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628825536),
('iEVMQaPHW1txkyAmV5AMhDbXCilwazgY2KBXbE4F', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieWJqZ1lacVQ3UWgyUmR2SmRHOG4zaGdNeGY2T1lGREw5bWFTeE9ISCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628793082),
('IuXuiBSy0kb4aVqi9DnSClt7ubAW21K86jjqWBhN', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZXFQVEFkb0JKMG1KajRVQlY3TEx2aUVNM2NyaVUzY0xaM3k0Z1NzMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628829118),
('JM6WGWafPgLkM9O8TJpGgfp8o83jqOc5b5tfMDa1', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibVdMM1FqcTBZUFd0QlhGb3RYNWxRd2JQR1F5WlBCUUlnQXFKYTRQciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628784098),
('jP1GCYa33GohHDHxgcSgp0yvPcqroYDft1MeeEYU', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMnlhQVlGcFhGeUlyQ1EyeDZwQ2NXR25OMHVHMUJkNlVyZUQxd1VVWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628749887),
('lbJr1W4OzH7lh23VdCGpCc8dpcg6ks1mwkdhlL7q', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUHlXM1YwWFh0Sjg4QU9MWWE3enRjSmZvejZGNXBHdjdPZ0tXZk56TSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628708456),
('LE7drFIi15c5NmIQzWPZwAbWjpkm8LQErjYkMQ8R', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQUdJTXNEU2h3YWJTWDRKTkhkeHU0QjF3M1FBZjdxWklaY2I5R2FhRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628706664),
('LR8aOI6S3PiXi9ULAbQDWyAJZpkZ4BSe7cnGLqSY', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSTVXa3JOZEhldUdFOXBYTXlBdVNzQXRpUFVBdXdXYWpkSFlXYmw2cyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628719265),
('mo32TkUbThZVlVR4COEryCHU02XXTyqASetoT0of', NULL, '36.90.149.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaXJSQ2FycTR1M0dnTmVoMml2ZmpjaWVMTWZsTzUwdkE2VW10NkpOQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vc2lrYXNyYS5pbm92YXNpLXNpc3RlbS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628860818),
('N4LkFclN8EKniZ2907fwjNbpAMtCMHJ6w5blNwZp', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTnR1MlVOQ3VtS256WkZlblEyNlZpTzQzaGJNQjhvRWZkUklmak9TYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628766088),
('naibumDXyb8VvdGJ8rTLcUNjfhkO9O67cVpR8rMR', 1, '180.252.202.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiVFc0ZUNtWTJ4YkJtdmRUN3F4ZE1EYUdCSzhDUG9WZzN4djFtN2REcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHBzOi8vc2lrYXNyYS5pbm92YXNpLXNpc3RlbS5jb20vcGVya2FyYV90YXRhX3VzYWhhX25lZ2FyYS9jcmVhdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkL3JTV0NXOVNSaXpjLmpjYmE3aGdhdS5NMlJjQUlsMXZxU0FvdHlPVHNrYmZQVHk0ZUltUm0iO30=', 1628826282),
('O1WRbLvWlw3nc4OE01ihqDOpWFAKcBtCQ6WhqfDq', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid0QxMVBRa09DdWdOUG5pRW5kQ2JENjhaR3BXYWtIZFFlZE5YdkV5TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628728258),
('o4gOJBUHvfInvu5p1ZmarljTx2K9d7u0lTDxh4Ij', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSGN4MGFCbFlRS2c4REZYQkJlSXVveGRnaFp1eW1QNUNJRTc4UmhQYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628713861),
('pdbzduQdnHXhB2biNeIPyB0DsD5xCXyATeM5Fmsz', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid2NMdmdsNVJHOXZjWldlWkcwVGtLR1ByOXAwN2g0SXpUVUNDZEloSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628773278),
('PJZZIDDS5EM1OxVK2UqgURZyOona7YeOQFKGryQs', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ3p5OVZUWkJDbE12dUpvWEl1WnZiTWRtY1NDMnRRRkdOVkJkMDJzOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628787723),
('Pp3OTgy2eBrGgtU4LzSPlmmAZfvsqlXGrYWOnij2', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibWYxSjJabzJtN2ZxdzY4b1ZneXBqdFFZWmhQbGtMV0Q2MmhyOXlxZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628791301),
('QixwpvBUBiUT8ckatHPPllCJcNyieM51OLd508RR', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3drbmZ1UkRJeE5YRnJXUk1FVjhld2M4UFVCMHpLaENZeEZkZEVJZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628748073),
('QkCGM8QshsOpyRLSIVSRJGBd5hMNWKImWJVPlwba', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUXFPdGJscUdDaGVhM21BZlNWSXR1UkpyNTg0MTk5TWlPdkZXQ2U4QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628769714),
('QPXFUr24V6I9lS5eHQ4KSfUQlCyR5TDuYAIWkOdA', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNkNDZDJwbHNXUGdZdDhJT1ZqcG8zYUVFOEx6VnJiYzNwSDRjTnhZTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628717492),
('qYbuyXBPtU5HCoDxzjr1YlrlGGIhmypPBxI0B2Lt', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMlhTTVk3YUQyQmFGTURTY3FNRzZqaTkxT2N0OWxmTXA2eHFSN3pLZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628704875),
('swvQ5OTjRnVCOaqr7qefpSTgHzLTRbvgxEcV5h5H', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSGh3R2N4Y0NyeE92MnIyN0EzZG13cnZyN29wOE5zU1o4VHBMRWdLOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628744474),
('uCxbohXUxm8VQED6FESmcdWBB4dEpZeV3dDgTeYD', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiem5MWFhrd0hwb29HZ3lGSFluSlBiRE9EaXZncjM3SzlvTVV0c2lrYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628776902),
('uhn9WNDmzxoiwQ3KZrPv5WOhhZR4q1A7ilVTOJE9', 1, '180.252.202.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiUFNXYzVmeGJKckJTMDIzQUNIeENrQlRmMm5BUXdNaGRTNjI5NWN0USI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo2MDoiaHR0cHM6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbS9wZXJrYXJhX3RhdGFfdXNhaGFfbmVnYXJhIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vc2lrYXNyYS5pbm92YXNpLXNpc3RlbS5jb20vZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJC9yU1dDVzlTUml6Yy5qY2JhN2hnYXUuTTJSY0FJbDF2cVNBb3R5T1Rza2JmUFR5NGVJbVJtIjt9', 1628837316),
('vZndPgM5Wck5R3xl7H5KQNiQZhgLQoyLyLsQvKfx', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSEoxTDl0bEJ5RXZuUGtNdHRCM1NmR1owbnhrWEFPS25FQm5XMVhhYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628715666),
('w4YIuvPq2KlT5gMWmHIeK2naTncXgKHnX36ct9Y1', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUpUdHNGYm9rdVZ0bVNlYkt1Zm9jNEM4b0F0YWVUTHhWalU5Sk9oYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628785900),
('wf1WgEJrbkhrAdIUq3IQ4xOYDw8mRSO7RE5UEIq5', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0c4dElrSER3ZEd5NlJGSVNWQTZXMkw2cUt6bzZrMEpvZXZPNWphTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628782305),
('WIT7ZfH0vv7AhuF3faOoc6Qp5Oe1WmqqNhI22bUj', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRFE1QllIaVdydE1tZGFqNk9KNTVLWlR5b25PNkRsQWtrRDhJWTJ4USI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628794898),
('WwKFD5hCK93o0AQ36WHl1ePWkTL4uQrmlCHHrCxq', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiczRPeURDdFJIejliVHBTRmRySWpva1NWMHpZUWx4bVhDZ2p2Z2czaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628840099),
('Wxzjini05O2WQvjmsuPToIOBXzzJsAAGDgbD1AYS', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVnlqY1BsT0c1NlU1YkppT3JYcUR4QkU4eTNFaXd5bEFoMkFXY0c1WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628778729),
('xJijDFygQdD25LcYStUo2pYlNPXuw4v3jjI9PSwV', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic29tc0c2eXc4b0hJeUFlU1JNTjRWY3IyTEdMVm1Qb056UE5FVXRGUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628731858),
('Y0FsPnPceVnmRnKr3Tw0AsRsJSqHq1Qhm6fw8Qbi', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNzRHeFVWN0tuRVZwRzFoOEJYSlozS3Fob29TMVZ1bDdCUW1GWFEwcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628737286),
('ybPvdu11i3JyuulxSyWxcdVQ6sYjXTKthhiZTOZa', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGp2dGRhRmhGN2tsb2M0R20yc1E5dDc0WnVYVjlpVDVYWTY5TGkzdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628733670),
('YtAMCs8MC9cdfJPtkgoarxJxGq4oRhrgXqWD3IIq', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU3I4MWJvRWQ5eDBoNm5tb3IwdzNrSElvTTNTbXpsaG9meFdtVlZVWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628710266),
('z0GxROUsc8v8vbdA8xhgRHGMxUj2O8itMCMNeiL6', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRGdrRTBPZVVHQU5WWjl5cHRNN2tMeHR2eU5vSzRURUl0ZlI2VlpHOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628753528),
('zjglWhDVZGaVXuhjnsBbtnotpVvdP5nhVIXHc4Aa', NULL, '203.161.184.81', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib0JWSGY5bkM3c3A0akROTHNDa0x0c2VtTkVJaHNYakpRT3ZsU0N2MCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9zaWthc3JhLmlub3Zhc2ktc2lzdGVtLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628823752);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` int DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `foto`, `group`, `status`, `created_at`, `updated_at`) VALUES
(1, 'administrator', 'administrator@gmail.com', NULL, '$2y$10$/rSWCW9SRizc.jcba7hgau.M2RcAIl1vqSAotyOTskbfPTy4eImRm', NULL, NULL, NULL, '1627370428.jpg', 1, 0, '2021-06-26 19:19:17', '2021-07-27 00:20:28'),
(2, '199501082020121002', '199501082020121002@gmail.com', NULL, '$2y$10$xYk/5LnRpkOxuYZsHoAegOHWm.ngUao0TPL5zPvvBK98LHIbrv5Zm', NULL, NULL, NULL, NULL, 2, 1, '2021-06-26 22:12:36', '2021-07-08 08:15:53'),
(3, '199501082020121001', '199501082020121001@gmail.com', NULL, '$2y$10$Gc02mYxX.A8vcblQWP12FeB5ax1txyhym21l3alwtiISF8jpTCJYW', NULL, NULL, NULL, NULL, 2, 1, '2021-06-27 00:50:43', '2021-06-27 03:45:49'),
(5, '199501082020121004', '199501082020121004@gmail.com', NULL, '$2y$10$shz.X8Sa9sTg.AgWLgtstOZmQladIC6ZDoGR7Dr9gqNulwtgsjpre', NULL, NULL, NULL, NULL, 2, 1, '2021-07-08 07:35:26', '2021-07-27 00:53:08'),
(7, 'gusman', 'gusmanpaleka@gmail.com', NULL, '$2y$10$FSzU.rMVAkTciXOr3dW4vuB8JTrNHbQcXMmXACGDLLn64hnOMmuW2', NULL, NULL, NULL, NULL, 1, 0, '2021-07-15 20:01:09', '2021-07-27 18:37:13'),
(8, '198405242010011019', '198405242010011019@gmail.com', NULL, '$2y$10$Y.pKD2ujKO4bJCD4vVo97.vaDupx2YhSuS8yM6V7v96eJBfcQVoT6', NULL, NULL, NULL, NULL, 2, 0, '2021-07-27 00:54:10', '2021-07-27 00:54:10');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `arsip_digital_tbl`
--
ALTER TABLE `arsip_digital_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `litigasi_tbl`
--
ALTER TABLE `litigasi_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `non_litigasi_tbl`
--
ALTER TABLE `non_litigasi_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pegawai_tbl`
--
ALTER TABLE `pegawai_tbl`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT untuk tabel `arsip_digital_tbl`
--
ALTER TABLE `arsip_digital_tbl`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `litigasi_tbl`
--
ALTER TABLE `litigasi_tbl`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `non_litigasi_tbl`
--
ALTER TABLE `non_litigasi_tbl`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pegawai_tbl`
--
ALTER TABLE `pegawai_tbl`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
