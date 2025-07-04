-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Nov 2024 pada 03.02
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelklinikku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokters`
--

CREATE TABLE `dokters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` enum('Laki-laki','Perempuan') NOT NULL,
  `age` int(11) NOT NULL,
  `spesialis` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `dokters`
--

INSERT INTO `dokters` (`id`, `user_id`, `name`, `gender`, `age`, `spesialis`, `phone`, `image`, `created_at`, `updated_at`) VALUES
(1, 16, 'Miss Shanie Kihn', 'Perempuan', 67, 'Punching Machine Setters', '786.394.3391', 'https://via.placeholder.com/600x600.png/0077ff?text=sunt', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(2, 15, 'Cecile Batz', 'Laki-laki', 63, 'Interviewer', '(458) 410-8464', 'https://via.placeholder.com/600x600.png/009999?text=aut', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(3, 12, 'Prof. Dayton Torp II', 'Laki-laki', 53, 'Forest Fire Inspector', '307.443.5724', 'https://via.placeholder.com/600x600.png/0022ff?text=modi', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(4, 11, 'Casey Ebert', 'Laki-laki', 51, 'Health Services Manager', '720-335-3958', 'https://via.placeholder.com/600x600.png/003388?text=natus', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(5, 14, 'Tamara Volkman', 'Perempuan', 29, 'Precision Dyer', '1-747-886-0290', 'https://via.placeholder.com/600x600.png/0099ee?text=quas', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(6, 18, 'Henriette Stamm Jr.', 'Perempuan', 72, 'Radio Operator', '276.368.0130', 'https://via.placeholder.com/600x600.png/00ffee?text=explicabo', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(7, 13, 'Piper Kilback', 'Perempuan', 25, 'Welding Machine Setter', '+1 (575) 202-1026', 'https://via.placeholder.com/600x600.png/00bbaa?text=consequatur', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(8, 17, 'Prof. Alysha Waelchi', 'Laki-laki', 37, 'Electronics Engineering Technician', '+1 (380) 615-8668', 'https://via.placeholder.com/600x600.png/008866?text=odio', '2024-11-17 18:51:56', '2024-11-17 18:51:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `jadwal_dokters`
--

CREATE TABLE `jadwal_dokters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dokter_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `status` enum('Available','Unavailable') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jadwal_dokters`
--

INSERT INTO `jadwal_dokters` (`id`, `dokter_id`, `date`, `start_time`, `end_time`, `status`) VALUES
(1, 4, '2024-11-18', '03:16:00', '16:48:00', 'Unavailable'),
(2, 4, '2024-11-20', '16:08:00', '20:45:00', 'Unavailable'),
(3, 4, '2024-11-20', '19:05:00', '10:42:00', 'Unavailable'),
(4, 3, '2024-11-19', '22:07:00', '21:27:00', 'Unavailable'),
(5, 7, '2024-11-20', '08:44:00', '09:02:00', 'Available'),
(6, 6, '2024-11-19', '11:46:00', '10:37:00', 'Unavailable'),
(7, 7, '2024-11-21', '03:08:00', '21:38:00', 'Available'),
(8, 1, '2024-11-18', '19:11:00', '11:33:00', 'Unavailable'),
(9, 2, '2024-11-19', '19:33:00', '14:05:00', 'Available'),
(10, 4, '2024-11-20', '04:59:00', '07:37:00', 'Available'),
(11, 7, '2024-11-19', '12:51:00', '02:04:00', 'Unavailable'),
(12, 5, '2024-11-20', '20:07:00', '02:39:00', 'Available'),
(13, 7, '2024-11-19', '13:29:00', '05:28:00', 'Available'),
(14, 7, '2024-11-19', '17:11:00', '16:54:00', 'Available'),
(15, 8, '2024-11-18', '11:15:00', '02:39:00', 'Unavailable'),
(16, 4, '2024-11-19', '15:49:00', '02:51:00', 'Unavailable'),
(17, 4, '2024-11-20', '10:33:00', '13:21:00', 'Unavailable'),
(18, 2, '2024-11-20', '07:30:00', '16:44:00', 'Unavailable'),
(19, 3, '2024-11-20', '16:46:00', '13:51:00', 'Unavailable'),
(20, 5, '2024-11-20', '19:10:00', '05:55:00', 'Available'),
(21, 1, '2024-11-19', '01:15:00', '14:57:00', 'Unavailable'),
(22, 6, '2024-11-20', '12:46:00', '14:25:00', 'Unavailable'),
(23, 8, '2024-11-19', '00:10:00', '10:04:00', 'Unavailable'),
(24, 6, '2024-11-20', '19:37:00', '07:06:00', 'Available'),
(25, 5, '2024-11-18', '22:35:00', '08:20:00', 'Unavailable'),
(26, 6, '2024-11-19', '10:31:00', '16:35:00', 'Unavailable'),
(27, 1, '2024-11-19', '02:47:00', '23:52:00', 'Available'),
(28, 2, '2024-11-18', '14:11:00', '08:44:00', 'Unavailable'),
(29, 7, '2024-11-19', '05:24:00', '20:47:00', 'Unavailable'),
(30, 8, '2024-11-21', '19:47:00', '02:32:00', 'Unavailable'),
(31, 1, '2024-11-18', '20:19:00', '03:18:00', 'Available'),
(32, 6, '2024-11-19', '18:07:00', '22:25:00', 'Unavailable'),
(33, 4, '2024-11-21', '10:41:00', '07:49:00', 'Unavailable'),
(34, 5, '2024-11-18', '20:13:00', '14:04:00', 'Available'),
(35, 6, '2024-11-18', '03:45:00', '08:14:00', 'Unavailable'),
(36, 4, '2024-11-20', '14:40:00', '14:22:00', 'Available'),
(37, 8, '2024-11-20', '18:36:00', '12:50:00', 'Available'),
(38, 3, '2024-11-19', '15:54:00', '04:13:00', 'Unavailable'),
(39, 5, '2024-11-20', '04:21:00', '00:03:00', 'Unavailable'),
(40, 3, '2024-11-19', '12:40:00', '05:41:00', 'Unavailable');

-- --------------------------------------------------------

--
-- Struktur dari tabel `janji_temus`
--

CREATE TABLE `janji_temus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dokter_id` bigint(20) UNSIGNED NOT NULL,
  `pasien_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `status` enum('Scheduled','Completed') NOT NULL DEFAULT 'Scheduled',
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `janji_temus`
--

INSERT INTO `janji_temus` (`id`, `dokter_id`, `pasien_id`, `date`, `start_time`, `end_time`, `status`, `note`, `created_at`, `updated_at`) VALUES
(1, 6, 4, '2024-11-20', '12:46:00', '14:25:00', 'Completed', 'Hic quasi error tempore quos.', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(2, 4, 7, '2024-11-18', '03:16:00', '16:48:00', 'Completed', 'Sit cum id id quo architecto accusamus dolor.', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(3, 8, 7, '2024-11-18', '11:15:00', '02:39:00', 'Scheduled', 'Ad ducimus veniam quisquam quia dicta.', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(4, 4, 7, '2024-11-19', '15:49:00', '02:51:00', 'Scheduled', 'Vel sed iusto quia voluptatem facilis explicabo nihil.', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(5, 6, 1, '2024-11-18', '03:45:00', '08:14:00', 'Scheduled', 'Et occaecati dicta cupiditate eius qui.', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(6, 4, 1, '2024-11-20', '19:05:00', '10:42:00', 'Scheduled', 'Aut rerum aut sed ea quasi et.', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(7, 2, 5, '2024-11-20', '07:30:00', '16:44:00', 'Completed', 'Error quia ducimus doloremque non.', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(8, 4, 3, '2024-11-20', '16:08:00', '20:45:00', 'Scheduled', 'Quia dolore dolores distinctio tenetur.', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(9, 4, 5, '2024-11-19', '15:49:00', '02:51:00', 'Scheduled', 'Id pariatur consequatur voluptatem nemo consectetur cumque reiciendis.', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(10, 6, 10, '2024-11-19', '11:46:00', '10:37:00', 'Completed', 'Incidunt consequatur fugit velit esse.', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(11, 6, 1, '2024-11-19', '18:07:00', '22:25:00', 'Scheduled', 'Animi ab cumque maxime.', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(12, 1, 6, '2024-11-19', '01:15:00', '14:57:00', 'Completed', 'Quo error quis molestiae vel.', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(13, 3, 8, '2024-11-19', '22:07:00', '21:27:00', 'Scheduled', 'In vero neque distinctio praesentium voluptatem consequatur quia quam.', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(14, 6, 3, '2024-11-19', '10:31:00', '16:35:00', 'Scheduled', 'Non adipisci rerum optio recusandae.', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(15, 7, 3, '2024-11-19', '05:24:00', '20:47:00', 'Scheduled', 'Tempora velit quasi dolores fugit ut.', '2024-11-17 18:51:56', '2024-11-17 18:51:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
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
-- Struktur dari tabel `job_batches`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_06_06_043646_create_pasiens_table', 1),
(5, '2024_06_06_043710_create_dokters_table', 1),
(6, '2024_06_06_043733_create_jadwal_dokters_table', 1),
(7, '2024_06_06_043747_create_janji_temus_table', 1),
(8, '2024_06_06_043819_create_rekam_medis_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasiens`
--

CREATE TABLE `pasiens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pasiens`
--

INSERT INTO `pasiens` (`id`, `user_id`, `name`, `birth_date`, `age`, `gender`, `address`, `phone`, `created_at`, `updated_at`) VALUES
(1, 7, 'Zaria Von', '2021-09-06', 26, 'Perempuan', '478 Laurel Dale Apt. 025\nSouth Thomasmouth, CA 53213-9235', '+1 (586) 437-5912', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(2, 6, 'Aisha Goodwin Jr.', '2002-03-19', 29, 'Laki-laki', '55529 Bogan Bridge\nSouth Darian, OR 36165-5346', '1-325-632-6888', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(3, 2, 'Dr. Bryce Rice', '1981-12-19', 44, 'Laki-laki', '411 Kozey Street Suite 942\nNorth Braxtonborough, GA 85364-4691', '(970) 577-0860', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(4, 3, 'Ms. Elissa Keebler', '2022-02-18', 46, 'Laki-laki', '69058 Sammy Mills Suite 451\nAuerton, CT 41170-4216', '765-528-6292', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(5, 8, 'Annabell Marquardt', '2017-10-04', 29, 'Perempuan', '466 Torp Flats Apt. 957\nBatzborough, LA 76976-8021', '279-929-7294', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(6, 4, 'Mayra Mayer', '1970-03-28', 28, 'Laki-laki', '39220 Goyette Ferry\nWestleychester, NH 45146', '+1-281-334-8367', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(7, 1, 'Lulu Breitenberg', '2001-09-04', 44, 'Perempuan', '719 Pfeffer Vista Suite 437\nHoegerfort, NC 81510', '956.562.3444', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(8, 5, 'Mr. Garett Stamm V', '2023-04-21', 48, 'Laki-laki', '82218 Thompson Lock Suite 524\nElenashire, MA 35713-0466', '(360) 704-0727', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(9, 9, 'Columbus Barrows', '1988-09-11', 46, 'Laki-laki', '2572 Ebony Springs Apt. 971\nEldredbury, AK 39162', '+1 (781) 257-8421', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(10, 10, 'Lou Collins I', '2003-12-05', 29, 'Laki-laki', '31094 Carlotta Circle\nNorth Modestomouth, NV 96744', '248-725-8694', '2024-11-17 18:51:56', '2024-11-17 18:51:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekam_medis`
--

CREATE TABLE `rekam_medis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `janji_temu_id` bigint(20) UNSIGNED NOT NULL,
  `pasien_id` bigint(20) UNSIGNED NOT NULL,
  `diagnosis` text NOT NULL,
  `obat` text NOT NULL,
  `tindakan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rekam_medis`
--

INSERT INTO `rekam_medis` (`id`, `janji_temu_id`, `pasien_id`, `diagnosis`, `obat`, `tindakan`, `created_at`, `updated_at`) VALUES
(1, 2, 7, 'Suscipit asperiores alias totam rerum ea.', 'Necessitatibus quis molestias in expedita.', 'Rerum voluptas in hic quia est totam.', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(2, 1, 4, 'Velit sed libero repellat nisi.', 'Quo sunt aspernatur ex velit qui.', 'Mollitia et ea sit culpa qui magnam.', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(3, 12, 6, 'Vel dignissimos dolores voluptatem ipsa est doloremque.', 'Omnis voluptatum voluptatibus consequatur odit dolor.', 'Consequatur quis dignissimos est autem quasi.', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(4, 1, 4, 'Laudantium ut consequuntur natus qui repellendus.', 'Optio recusandae quia inventore.', 'Odio rerum aperiam laborum aliquam.', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(5, 10, 10, 'Beatae iure qui consequatur.', 'Voluptas vitae et earum harum recusandae placeat.', 'Tempore ratione omnis possimus temporibus odit enim eaque.', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(6, 12, 6, 'Vel perferendis est suscipit ab asperiores alias.', 'Aut odit ipsam molestiae perspiciatis dolor est possimus.', 'Dolorem similique ducimus consectetur veniam et iure.', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(7, 12, 6, 'Perferendis perferendis optio odit provident velit nisi aliquid.', 'Nesciunt aut quibusdam rerum architecto numquam.', 'Minima earum illum omnis sint nihil aliquam.', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(8, 1, 4, 'Minus iste possimus est harum velit quo et.', 'Harum et dolores unde repellendus inventore ea magnam.', 'Sed sunt autem sunt unde odit occaecati.', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(9, 7, 5, 'Doloribus ratione et magni et ut non illo.', 'Sint officia ullam dolorem et saepe voluptatem.', 'Accusamus maiores vero nobis eos ut velit.', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(10, 7, 5, 'Sit architecto ut a cumque non.', 'Qui beatae et tempore mollitia ea maiores fugiat aspernatur.', 'In dolor saepe fuga eum eum repudiandae fugiat.', '2024-11-17 18:51:56', '2024-11-17 18:51:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
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
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('FnviEQ0Xqnl6mPZpluoeq66Bh5b10ryTwMrGye3X', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoia3hGSFFjYUsxbGc4eTFvV0IyOW5Ka0c4aElWMVIwYVdwQnhhMmVNNyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1731894969),
('gpelqSfh206QLKUoKBiiyVEvmFRdspUu1ZBmFquj', 19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaVhBYWZKMkNMSDlQbm5Mem9NcmZZYTFxTmtNT3B4czB4WmtPQlVKYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxOTt9', 1731895003);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('admin','dokter','pasien') NOT NULL DEFAULT 'pasien',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'friedrich.rogahn', 'dhalvorson@example.net', 'pasien', '2024-11-17 18:51:56', '$2y$12$mkrHzyZRDkq/FCarRocpbOZXpM5Kz5u8pOQhEh32p2rsA.7y8gVke', 'd3iXq4fmHq', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(2, 'aniya38', 'erna58@example.net', 'pasien', '2024-11-17 18:51:56', '$2y$12$mkrHzyZRDkq/FCarRocpbOZXpM5Kz5u8pOQhEh32p2rsA.7y8gVke', 'QvLBta7mPq', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(3, 'urussel', 'connor.heller@example.net', 'pasien', '2024-11-17 18:51:56', '$2y$12$mkrHzyZRDkq/FCarRocpbOZXpM5Kz5u8pOQhEh32p2rsA.7y8gVke', 'rdfGF4yho3', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(4, 'vilma58', 'jweimann@example.com', 'pasien', '2024-11-17 18:51:56', '$2y$12$mkrHzyZRDkq/FCarRocpbOZXpM5Kz5u8pOQhEh32p2rsA.7y8gVke', 'JMbMSWOULb', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(5, 'asa19', 'madilyn86@example.org', 'pasien', '2024-11-17 18:51:56', '$2y$12$mkrHzyZRDkq/FCarRocpbOZXpM5Kz5u8pOQhEh32p2rsA.7y8gVke', 'XFQhSAeVVS', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(6, 'holden.mclaughlin', 'rkertzmann@example.net', 'pasien', '2024-11-17 18:51:56', '$2y$12$mkrHzyZRDkq/FCarRocpbOZXpM5Kz5u8pOQhEh32p2rsA.7y8gVke', 'WcCh6VKrQz', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(7, 'sebastian94', 'lenny24@example.net', 'pasien', '2024-11-17 18:51:56', '$2y$12$mkrHzyZRDkq/FCarRocpbOZXpM5Kz5u8pOQhEh32p2rsA.7y8gVke', 'aUPIpnqhCn', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(8, 'heidenreich.emmy', 'williamson.freeman@example.org', 'pasien', '2024-11-17 18:51:56', '$2y$12$mkrHzyZRDkq/FCarRocpbOZXpM5Kz5u8pOQhEh32p2rsA.7y8gVke', 'kTdmaS0auO', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(9, 'dashawn.strosin', 'koch.rebeka@example.org', 'pasien', '2024-11-17 18:51:56', '$2y$12$mkrHzyZRDkq/FCarRocpbOZXpM5Kz5u8pOQhEh32p2rsA.7y8gVke', 'qi6N0ovBhi', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(10, 'kole.carroll', 'bert94@example.net', 'pasien', '2024-11-17 18:51:56', '$2y$12$mkrHzyZRDkq/FCarRocpbOZXpM5Kz5u8pOQhEh32p2rsA.7y8gVke', 'XCxAWlsTcd', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(11, 'nels.hane', 'alejandrin.zemlak@example.com', 'dokter', '2024-11-17 18:51:56', '$2y$12$mkrHzyZRDkq/FCarRocpbOZXpM5Kz5u8pOQhEh32p2rsA.7y8gVke', 'hyvIQLlO1H', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(12, 'tromp.mack', 'wgerhold@example.net', 'dokter', '2024-11-17 18:51:56', '$2y$12$mkrHzyZRDkq/FCarRocpbOZXpM5Kz5u8pOQhEh32p2rsA.7y8gVke', 'd3zfn0cVer', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(13, 'ikihn', 'bogisich.kailey@example.net', 'dokter', '2024-11-17 18:51:56', '$2y$12$mkrHzyZRDkq/FCarRocpbOZXpM5Kz5u8pOQhEh32p2rsA.7y8gVke', 'FhG52cPV8Y', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(14, 'violet92', 'kaela.murazik@example.net', 'dokter', '2024-11-17 18:51:56', '$2y$12$mkrHzyZRDkq/FCarRocpbOZXpM5Kz5u8pOQhEh32p2rsA.7y8gVke', 'XAjAO54SDv', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(15, 'dalton61', 'lydia.will@example.org', 'dokter', '2024-11-17 18:51:56', '$2y$12$mkrHzyZRDkq/FCarRocpbOZXpM5Kz5u8pOQhEh32p2rsA.7y8gVke', 'YeRaJUgI1i', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(16, 'brock11', 'amber.rempel@example.org', 'dokter', '2024-11-17 18:51:56', '$2y$12$mkrHzyZRDkq/FCarRocpbOZXpM5Kz5u8pOQhEh32p2rsA.7y8gVke', 'JRMygy1lOM', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(17, 'jaron77', 'shanahan.emmett@example.net', 'dokter', '2024-11-17 18:51:56', '$2y$12$mkrHzyZRDkq/FCarRocpbOZXpM5Kz5u8pOQhEh32p2rsA.7y8gVke', '8qFI5wY99a', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(18, 'owisozk', 'nader.julio@example.org', 'dokter', '2024-11-17 18:51:56', '$2y$12$mkrHzyZRDkq/FCarRocpbOZXpM5Kz5u8pOQhEh32p2rsA.7y8gVke', '7XUfneRgCZ', '2024-11-17 18:51:56', '2024-11-17 18:51:56'),
(19, 'admin', 'test@example.com', 'admin', '2024-11-17 18:51:56', '$2y$12$.bZpNjE12UkmrlbDaZ6G2uoL5qV9c3o1pZHVUmV.Y0I4BvqjulcYy', 'Ft2WKhQvFF', '2024-11-17 18:51:56', '2024-11-17 18:51:56');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `dokters`
--
ALTER TABLE `dokters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dokters_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jadwal_dokters`
--
ALTER TABLE `jadwal_dokters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jadwal_dokters_dokter_id_foreign` (`dokter_id`);

--
-- Indeks untuk tabel `janji_temus`
--
ALTER TABLE `janji_temus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `janji_temus_dokter_id_foreign` (`dokter_id`),
  ADD KEY `janji_temus_pasien_id_foreign` (`pasien_id`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pasiens`
--
ALTER TABLE `pasiens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pasiens_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `rekam_medis`
--
ALTER TABLE `rekam_medis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rekam_medis_janji_temu_id_foreign` (`janji_temu_id`),
  ADD KEY `rekam_medis_pasien_id_foreign` (`pasien_id`);

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
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dokters`
--
ALTER TABLE `dokters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jadwal_dokters`
--
ALTER TABLE `jadwal_dokters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `janji_temus`
--
ALTER TABLE `janji_temus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pasiens`
--
ALTER TABLE `pasiens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `rekam_medis`
--
ALTER TABLE `rekam_medis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `dokters`
--
ALTER TABLE `dokters`
  ADD CONSTRAINT `dokters_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jadwal_dokters`
--
ALTER TABLE `jadwal_dokters`
  ADD CONSTRAINT `jadwal_dokters_dokter_id_foreign` FOREIGN KEY (`dokter_id`) REFERENCES `dokters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `janji_temus`
--
ALTER TABLE `janji_temus`
  ADD CONSTRAINT `janji_temus_dokter_id_foreign` FOREIGN KEY (`dokter_id`) REFERENCES `dokters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `janji_temus_pasien_id_foreign` FOREIGN KEY (`pasien_id`) REFERENCES `pasiens` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pasiens`
--
ALTER TABLE `pasiens`
  ADD CONSTRAINT `pasiens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rekam_medis`
--
ALTER TABLE `rekam_medis`
  ADD CONSTRAINT `rekam_medis_janji_temu_id_foreign` FOREIGN KEY (`janji_temu_id`) REFERENCES `janji_temus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rekam_medis_pasien_id_foreign` FOREIGN KEY (`pasien_id`) REFERENCES `pasiens` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
