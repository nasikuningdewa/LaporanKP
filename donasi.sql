-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Jan 2022 pada 08.57
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `donasi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` bigint(20) NOT NULL DEFAULT 0,
  `collected` bigint(20) NOT NULL DEFAULT 0,
  `donors` int(11) NOT NULL DEFAULT 0,
  `views` bigint(20) NOT NULL,
  `last_donation` datetime DEFAULT NULL,
  `location` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `campaigns`
--

INSERT INTO `campaigns` (`id`, `user_id`, `title`, `code`, `thumbnail`, `status`, `description`, `target`, `collected`, `donors`, `views`, `last_donation`, `location`, `target_date`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dirikan Masjid Pertama untuk Mualaf Manado', 'dirikan-masjid-pertama-untuk-mualaf-manado', 'dirikan-masjid-pertama-untuk-mualaf-manado-1632890884.jpg', 'ACTIVE', '\nDi Kampung Pandu Lahendong Kel. Bengkol Kec. Mapangget Kota Manado terdapat satu-satunya mushola yang seringkali digunakan oleh masyarakat setempat yang sebagian besar adalah mualaf.\r\n\nDari luar mushola ini tidak tertupi dinding dan atapnya sudah bolong dan lapuk. Disisi lain masyarakat yang beribadah di mushola tersebut sangtlah banyak. Sedangkan untuk pergi ke masjid layak terdekat, mereka harus menempuh waktu perjalanan selama 2 jam dengan berjalan kaki dengan medan yang terjal dan sulit.\r\n\nMayoritas masyarakat di kampung tersebut adalah buruh petik kelapa dan petani sehingga biaya patungan untuk renovasi mushola menjadi masjid sangatlah sulit tercapai. Kondisi mushola sangat memprihatinkan. Tiang kayu sudah lapuk, tak berdinding, dan beratap seng, itupun sudah banyak yang lepas. Jika musim hujan atau angin kencang, tiang-tiang mushola harus diikat agar tidak roboh.\r\n\nPadahal mushola berukuran 7x7 ini dipakai shalat berjamaah. Rutinnya ada 2 saf, tapi saat shalat Jumat, jamaah bisa luber ke luar hingga 3 saf. Perluasan mushola menjadi masjid sudah diinisiasi sejak 20 tahun lalu, namun hanya berhasil mengumpulkan 10 sak semen. Bisa dimengerti jika pengumpulan dana secara swadaya hasilnya minim, karena masyarakat sekitar mayoritas bermata-pencaharian sebagai petani kopra, jagung, dan singkong.\r\n\nSebagai gambaran kondisi ekonomi di sana, pemetik kelapa diupahi Rp 4.000 per pohon. Per tahunnya, musim kelapa biasanya 3-4 kali saja.', 100000000, 0, 0, 9, NULL, 'Karawang', '2023-10-23', NULL, '2021-09-28 21:48:04', '2022-01-25 00:17:31'),
(2, 11, 'Bantu Bayi Arjuna Sembuh Hadapi Leukimia', 'bantu-bayi-arjuna-sembuh-hadapi-leukimia', 'bantu-bayi-arjuna-sembuh-hadapi-leukimia-1643095203.jpg', 'ACTIVE', '\nMuhammad Arjuna Isam Arjuna (3 bulan) harus menerima suntikan tranfusi darah berkali-kali di kedua tangan dan kakinya untuk menjaga daya tahan tubuh. Saat baru menginjak umur 5 minggu, di tubuhnya sering muncul lebam dan bintik-bintik merah, serta demam tinggi. Setelah melakukan cek darah di laboratorium dan Rumah Sakit, Arjuna didiagnosis menderita penyakit ALL (Acute Lympoblastic Leukimia).\r\n\n\r\n\nPekerjaan Ayah Arjuna sebagai supir ojek online tidak mampu membayar biaya pengobatan Arjuna. Beliau bahkan sampai harus menjual barang-barang di rumahnya. Pekerjaannya itu pula sering ditinggalkan karena mengantar dan menemani Arjuna berobat dan tranfusi darah seminggu sekali. Mari ikut bantu ringankan beban keluarga Arjuna dengan cara: 1. Klik tombol “DONASI SEKARANG” 2. Masukkan nominal donasi 3. Pilih metode pembayaran GO-PAY, Dompet Kebaikan, BCA Virtual Account, atau transfer Bank (transfer bank BNI, Mandiri, BCA, BRI, BNI Syariah, atau kartu kredit) dan transfer ke no. rekening yang tertera.', 300000000, 0, 0, 1, NULL, 'Bekasi', '2026-06-25', NULL, '2022-01-25 00:20:04', '2022-01-25 00:23:20'),
(3, 11, 'Rumah Segera Ambruk, Kakek ini Menanti Peduli', 'rumah-segera-ambruk-kakek-ini-menanti-peduli', 'rumah-segera-ambruk-kakek-ini-menanti-peduli-1643095315.jpg', 'ACTIVE', '\nNamanya Kakek Dolla, kakek asal Parepare berusia 76 tahun yang tinggal di rumah nyaris ambruk di Jalan Drs. H. Syamsul Alam Bulu RT 003 RW 008, Kelurahan Lompoe, Kecamatan Bacukiki, Kota Parepare, Provinsi Sulawesi Selatan.\r\n\n\r\n\nSetelah berpisah dengan sang istri, Kakek Dolla hanya tinggal bersama seorang anaknya yang juga hidup dalam keterbatasan. Belum lagi beberapa waktu lalu, Kakek Dolla harus menjalani operasi akibat susah buang air kecil yang memakan biaya cukup besar. Sehari-harinya, Kakek Dolla bertahan hidup dari hasil berkebun di samping rumahnya. Sayangnya hasil tidak seberapa. Kadangkala tanaman yang ditanam tidak dapat tumbuh dengan baik karena kondisi tanah tempatnya berkebun tidak mendukung. Beliau juga memelihara beberapa ekor ayam di kolong rumahnya yang dalam keadaan terdesak, ia jual ke pasar agar bisa membeli beras dan lauk pauk.', 200000000, 0, 0, 0, NULL, 'Bandung', '2027-06-25', NULL, '2022-01-25 00:21:55', '2022-01-25 00:21:55'),
(4, 11, 'Bantu Ema Operasi Katup Jantung', 'bantu-ema-operasi-katup-jantung', 'bantu-ema-operasi-katup-jantung-1643095390.jpg', 'ACTIVE', '\nHai, perkenalkan nama saya Ayu Lestari, saya ingin menggalang dana untuk pengobatan adik saya, Ema Humairo. Penyakit yang diderita adalah Kebocoran Katup Jantung dan saat ini sedang menjalani pengobatan di RS Umum Daerah Sekayu, Musi Banyuasin, Sumatera Selatan.\r\n\n\r\n\nSaat ini biaya yang dibutuhkan senilai Rp 80.000.000 dan dana tersebut akan digunakan untuk Dana, untuk biaya rawat inap, operasi katup jantung, dan membeli obat-obatan untuk Ema.\r\n\n\r\n\nJika teman-teman ingin membantu silakan berdonasi dengan cara:\r\n\n1. Klik tombol “DONASI SEKARANG”\r\n\n2. Masukkan nominal donasi\r\n\n3. Pilih metode pembayaran GO-PAY, BCA Virtual Account, atau transfer Bank (transfer bank BNI, Mandiri, BCA, BRI, BNI Syariah, atau kartu kredit) dan transfer ke no. rekening yang tertera.', 80000000, 0, 0, 0, NULL, 'Cianjur', '2026-07-16', NULL, '2022-01-25 00:23:10', '2022-01-25 00:23:10'),
(5, 11, 'Bantu Ibu Tukang Ojek Berjuang Hidupi Keluarga', 'bantu-ibu-tukang-ojek-berjuang-hidupi-keluarga', 'bantu-ibu-tukang-ojek-berjuang-hidupi-keluarga-1643095498.jpg', 'ACTIVE', '\nIbu Surati (39) sudah sejak lama menjadi Single parent. kini ia adalah satu-satunya tulang punggung keluarga. dengan berprofesi sebagai Tukang Ojek Pangkalan ia berjuang menghidupi keluarganya. \"Menjadi tukang ojek disini ia untung-untungan pak kadang ada kadang tidak bahkan sering dalam hari-hari itu tidak ada yang ngojek pak, ia tentu saya tidak dapat uang\" curhat buk Surati', 150000000, 0, 0, 0, NULL, 'Cirebon', '2028-06-25', NULL, '2022-01-25 00:24:58', '2022-01-25 00:24:58'),
(6, 11, 'DARURAT! Bantu Korban Gempa Ambon', 'darurat-bantu-korban-gempa-ambon', 'darurat-bantu-korban-gempa-ambon-1643095560.jpg', 'ACTIVE', '\nGempa berkekuatan 6,8 SR mengguncang Ambon Kamis (26/9) pukul 08.46 WIT. Meskipun tidak berpotensi tsunami, sampai saat ini ratusan gempa susulan terus datang dan membuat warga yang mengungsi takut.\r\n\nHingga kini 23 orang meninggal dunia dan lebih dari 15 ribu warga harus mengungsi. Selain korban jiwa, gempa yang terjadi juga mengakibatkan rumah warga serta sarana infrastruktur yang ada rusak. Badan Meteorologi Klimatologi dan Geofisika mencatat, hingga Jumat (27/09) pukul 06:00, setidaknya telah terjadi 239 gempa susulan.', 200000000, 0, 0, 0, NULL, 'Ambon', '2026-02-25', NULL, '2022-01-25 00:26:00', '2022-01-25 00:26:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `donors`
--

CREATE TABLE `donors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `campaign_id` bigint(20) UNSIGNED DEFAULT NULL,
  `anonymous` tinyint(1) NOT NULL DEFAULT 0,
  `amount` bigint(20) NOT NULL,
  `fee` bigint(20) NOT NULL DEFAULT 0,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `uuid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_json` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expired_at` datetime NOT NULL,
  `paid_at` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(4, '2021_07_05_151054_create_campaigns_table', 1),
(5, '2021_07_05_153148_create_donors_table', 1),
(6, '2021_07_16_125855_add_more_column_to_campaigns', 1),
(7, '2021_07_23_125009_add_code_to_campaigns', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `profile`, `phone_number`, `birth_date`, `verified`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@example.com', '2021-09-28 21:27:50', '$2a$12$hqm1fTdPdHblVGWTFBxrk.LElgmpJsbF5JX.ym0exABXn01W2fCGO', NULL, NULL, NULL, 0, 1, 'qzEVUZQ1RxPstihljjij2E8eAbLexE96n6IH7fmMoGSM5Hh63h9r0O2q93yn', '2021-09-28 21:27:50', '2021-09-28 21:27:50'),
(11, 'Melodi Laksani', 'user1@donasi.com', '2022-01-25 06:59:49', '$2y$10$jxnE19SJw7TLK9pzRJ0VR.wkgIpKbNcxFTUBbJMmEYCEKi4YLizyS', NULL, NULL, NULL, 1, 0, NULL, '2022-01-24 23:57:52', '2022-01-24 23:57:52');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaigns_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `donors_uuid_unique` (`uuid`),
  ADD KEY `donors_user_id_foreign` (`user_id`),
  ADD KEY `donors_campaign_id_foreign` (`campaign_id`);

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
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `donors`
--
ALTER TABLE `donors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `campaigns`
--
ALTER TABLE `campaigns`
  ADD CONSTRAINT `campaigns_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `donors`
--
ALTER TABLE `donors`
  ADD CONSTRAINT `donors_campaign_id_foreign` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `donors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
