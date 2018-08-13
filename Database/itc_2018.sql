-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 03, 2018 at 10:47 AM
-- Server version: 10.2.14-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itc_2018`
--

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

DROP TABLE IF EXISTS `divisions`;
CREATE TABLE IF NOT EXISTS `divisions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_closed` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `description`, `icon`, `is_closed`, `created_at`, `updated_at`) VALUES
(4, 'Office Administration', 'Di divisi ini, kamu akan dibimbing untuk diajarkan penggunaan Ms Word yang jauh lebih advance untuk dalam hal tata penulisan Proposal serta penggunaan untuk kebutuhan lain', 'clipboard', 0, '2018-03-20 15:35:37', '2018-07-27 15:13:43'),
(5, 'Database Management', 'Tertarik membuat aplikasi sederhana? Di divisi ini kamu akan diajarkan bagaimana membuat aplikasi sederhana yang mencakup database, table, pengolahan data, query, form dan report dengan menggunakan Ms Acces', 'soup-can-outline', 0, '2018-03-20 15:36:17', '2018-07-24 06:25:42'),
(6, 'Data Scientist', 'Di divisi ini kamu akan diajarkan mengolah data Scientist berupa kalkulasi data, peramalan data dan chart dengan menggunakan Ms Excel sehingga kamu akan lebih advance dalam penggunaan Ms Excel', 'arrow-graph-up-right', 0, '2018-03-20 15:36:50', '2018-04-01 09:24:00'),
(7, 'Digital Interactive Media', 'Kalau kamu tertarik bagaimana pembuatan media pembelajaran yang baik, di divisi ini kamu akan diajarkan bagaimana membuat media pembelajaran interaktif dan media presentasi yang menarik dengan hanya menggunakan Ms Power Point', 'android-arrow-dropright-circle', 0, '2018-03-20 15:37:21', '2018-07-15 08:36:59');

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

DROP TABLE IF EXISTS `instructors`;
CREATE TABLE IF NOT EXISTS `instructors` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `division_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `instructors_division_id_foreign` (`division_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id`, `name`, `photo`, `division_id`, `created_at`, `updated_at`) VALUES
(1, 'Ahmad Fauzi', '369c11050c912b78b0af25cf0997f454.jpeg', 4, '2018-04-05 14:26:04', '2018-06-04 16:04:12'),
(2, 'Ayu Sulistiya Ningrum', '32a90ec1f4092ab2f4daae7808a73859.jpeg', 4, '2018-04-05 14:26:25', '2018-06-04 16:04:54'),
(3, 'Fitrian David Ardianto', 'ee2037b9ba1cc4467c939ceb9c423d83.jpeg', 4, '2018-04-05 14:26:34', '2018-06-04 16:05:25'),
(4, 'Lucky Adhikrisna Wirasakti	', '0041a9a7fdabac93b9633a7ce7398081.jpeg', 4, '2018-04-05 14:26:44', '2018-06-09 21:12:08'),
(5, 'Abadi Arkam', 'a760f3a3179a3e15f4d2764850fa9063.jpeg', 5, '2018-04-05 14:27:14', '2018-07-25 03:46:23'),
(6, 'Ade Haris Asegaf', '065dac1c4703458e21cf0bf59abe7436.jpeg', 5, '2018-04-05 14:27:25', '2018-06-04 16:03:25'),
(7, 'Muhson Nawawi', 'd5f5cb695d8ea0d377c81fbe1c382b02.jpeg', 5, '2018-04-05 14:27:35', '2018-06-04 16:06:23'),
(8, 'Sri Wahyuni', '3b6b224cfdc3d102179be6b5493a0244.jpeg', 5, '2018-04-05 14:27:43', '2018-06-04 16:07:12'),
(9, 'Avista Rizky Septiningsih', '77f93f4641634fadb47abb0b1a9d40a3.png', 6, '2018-04-05 14:27:55', '2018-06-04 16:04:41'),
(10, 'Fita Dinasty', 'e3d4f1474305bc8b1f27a178c30238f2.jpeg', 6, '2018-04-05 14:28:11', '2018-06-04 16:05:10'),
(11, 'Misbachul Munir', '0eb0372b5d9508777d95c3e1eb1582b0.jpeg', 6, '2018-04-05 14:28:21', '2018-06-04 16:05:39'),
(12, 'Muhammad Rizky Bismar Saputra', '01772adfc0d731bde2428254f27aadd1.jpeg', 6, '2018-04-05 14:28:33', '2018-06-04 16:05:54'),
(13, 'Anggi Muhammad Rifa’i ', '7b962be56cc9066c06b348915c079dd9.jpeg', 7, '2018-04-05 14:28:45', '2018-06-04 16:04:30'),
(14, 'Muhammad Wildan Aizzaddin', '8ebbc7dfa276ce15a90eea8f0c204a10.jpeg', 7, '2018-04-05 14:28:55', '2018-06-04 16:06:06'),
(15, 'Nabilla Andhara', '0c7026e8d4099e01554c9e6542cdf0b8.jpeg', 7, '2018-04-05 14:29:03', '2018-06-04 16:06:37'),
(16, 'Riana Anggita Saputri', 'ae0c5b755d8a9a95ab64e990e773e40f.jpeg', 7, '2018-04-05 14:29:11', '2018-04-16 14:31:55');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_03_15_003449_create_teams_table', 1),
(4, '2017_03_15_003635_create_divisions_table', 1),
(5, '2017_03_15_003802_create_instructors_table', 1),
(6, '2017_03_15_004145_create_participants_table', 1),
(7, '2017_03_20_110913_update_participants_fields', 1),
(8, '2017_05_14_211026_update_users_table', 1),
(9, '2017_08_04_232616_update_divisions_table', 1),
(10, '2017_08_07_172737_create_sponsors_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

DROP TABLE IF EXISTS `participants`;
CREATE TABLE IF NOT EXISTS `participants` (
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `school` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `prodi` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nim` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `day` tinyint(4) NOT NULL,
  `division_id` int(10) UNSIGNED DEFAULT NULL,
  `secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`phone`),
  UNIQUE KEY `participants_nim_unique` (`nim`),
  KEY `participants_division_id_foreign` (`division_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`phone`, `email`, `name`, `school`, `prodi`, `nim`, `day`, `division_id`, `secret`, `created_at`, `updated_at`) VALUES
('081210704280', 'faniwells@gmail.com', 'Fania Ellysabeth', 'SMK Cyber Media', 'D3 - Teknik Informatika', '18.01.4144', 5, 7, '5bfff1ab703f0ad615b10a3cfcf11729', '2018-05-17 15:33:18', '2018-07-11 19:44:14'),
('081211742227', 'rezaazrielprasetyo10102000@gmail.com', 'Reza azriel prasetyo', 'SMK N 1 GIRITONTRO', 'D3 - Teknik Informatika', '18.01.4160', 6, 6, '0748e56d4329f41fa9502464bdb37b5c', '2018-07-23 13:19:22', '2018-07-23 13:19:22'),
('081212620846', 'roghayaindah053@gmail.com', 'Roghaya indah pratiwi', 'PKBM WIJAYA KUSUMA', 'Ilmu Komunikasi', '18.69.0413', 5, 7, '0a2ca59e2fa35807f8fad3dac0fb49ee', '2018-05-07 14:51:35', '2018-07-28 00:33:09'),
('081213130905', 'rafiq.ahmad1710@gmil.com', 'Rafiq ahmad hasibuan', 'Smk fadilah', 'Ilmu Komunikasi', NULL, 4, 4, '2eece95d96ca16907429cb1519b45fe5', '2018-05-05 17:23:16', '2018-05-05 17:23:16'),
('081214605328', 'shafilah.af@gmail.com', 'Shafilah Ahmad Fitriani', 'SMAN 1 PAKEM', 'Informatika', '18.11.2051', 2, 6, '24c456ab49a2a599e46010c9684daf54', '2018-07-22 08:10:07', '2018-07-22 08:10:07'),
('081215149198', 'destiawae12@gmail.com', 'Gilang destia rifai', 'Smk n 2 wonogiri', 'Sistem Informasi', '18.12.0729', 4, 4, 'ea94e1f59cf335bb7cc21a334160504e', '2018-07-09 01:24:10', '2018-07-29 04:40:59'),
('081215159788', 'salsabilasabila123@gmail.com', 'Salsabila', 'Smk Muhammadiyah 2 Klaten Utara', 'Informatika', '18.11.2107', 1, 5, 'dc247dcdc3ec04e7242e13e0cb80004a', '2018-07-22 02:18:11', '2018-07-22 03:03:31'),
('081215583476', 'zidnimuiz29@gmail.com', 'Zidni Ahyul Mu\'iz', 'SMK Ma\'arif NU 01 Limpung', 'Informatika', NULL, 4, 4, '929e2eb3d46972d075735849cfad0a55', '2018-07-29 07:03:30', '2018-07-29 07:03:30'),
('081216533977', 'Deshintarahma27@gmail.com', 'SITI RAHMAH', 'SMA', 'Ilmu Pemerintahan', '18.94.0047', 9, 7, '18ba0c947a0fc2391c768a6a62f2a3bd', '2018-05-23 11:08:11', '2018-06-08 13:17:03'),
('081220217322', 'muh.zulfikar3384@gmail.com', 'Muhammad Zulfikar', 'SMA NEGERI 1 JAYAPURA', 'Informatika', NULL, 9, 4, 'ebb727648a165310210c7a37e98214d7', '2018-06-09 18:17:08', '2018-06-09 18:17:08'),
('081222804713', 'sfahlevi11pw@gmail.com', 'Syahreza Fahlevi Putra Weri', 'Pondok Pesantren Husnul Khotimah', 'Ilmu Komunikasi', NULL, 6, 6, '009748ea21983083348ead7836af12ac', '2018-05-01 23:25:49', '2018-05-01 23:25:49'),
('081223008363', 'patriot.kusumasejati@gmail.com', 'Patriot Kusuma Sejati', 'SMA N 1 Bambanglipuro', 'Informatika', '18.11.1819', 1, 5, '4e092865d7ca7465bac3cf5bbef257fd', '2018-05-12 12:08:40', '2018-05-12 13:35:32'),
('081223532369', 'marlenguduru27@gmail.com', 'Marlen Guduru', 'SMA KRISTEN DIAN HALMAHERA', 'Ilmu Komunikasi', '18.96.0515', 6, 4, 'fe6b4c5ed698fa6b4b82815bc66d61b0', '2018-07-03 09:33:21', '2018-07-03 09:33:21'),
('081224244369', 'nisyaputri566@gmail.com', 'Annisya Mutiara Putri', 'Man 4 Sleman', 'Ilmu Komunikasi', '18.96.0449', 3, 6, 'a8d20509d9a5232d2e7e8a4b3ca39525', '2018-07-12 05:29:49', '2018-07-12 05:29:49'),
('081226190578', 'adnanrudis@gmail.com', 'Adnan Rudy Stevianto', 'SMK Muhammadiyah 3 Yogyakarta', 'Ilmu Komunikasi', '18.96.0523', 4, 6, '2e86513ea1368ed195a541dd0af9b77c', '2018-07-01 16:00:56', '2018-07-01 16:00:56'),
('081226393225', 'adhimukti1107@gmail.com', 'AdhiMukti nour sejati', 'Smks muhammadiyah 3 yogyakarta ', 'Informatika', '18.11.1812', 9, 5, 'acc932cc260cda077bef73f461382bfc', '2018-04-28 12:12:48', '2018-04-28 12:12:48'),
('081227024548', 'nabilaamalia702@gmail.com', 'Nabilah amalliyah', 'Man 2 sleman/maguwoharjo', 'D3 - Manajemen Informatika', NULL, 2, 4, '0f26176785c7c01741e4b4417f409177', '2018-07-11 06:01:41', '2018-07-11 06:01:41'),
('081227050595', 'dewimedialestari.jogja@gmail.com', 'Dwi Lestari', 'SMK N 1 Bantul', 'Kewirausahaan', '18.92.0067', 6, 6, '1ac7276e39df1107b770614680b4b554', '2018-07-26 06:25:58', '2018-07-27 12:01:02'),
('081227654544', 'ruthekaputri465@gmail.com', 'Ruth Ekaputri Priscilla', 'SMA Kristen Terpadu Krayan', 'Sistem Informasi', NULL, 4, 4, '51b23d8aa4651d4d1391c9eeb1dafb97', '2018-07-18 02:48:13', '2018-07-18 02:48:13'),
('081227788992', 'adhiputra825@gmail.com', 'Adhitya Laksana P', 'SMA', 'Informatika', '18.11.1949', 4, 4, 'f7b13235bab1a1782c6618e59e221569', '2018-07-03 01:32:21', '2018-07-03 01:32:21'),
('081227832001', 'athalla.zalfaa34@gmail.com', 'Athalla Zalfaa Albari ', 'SMA MUHAMMADIYAH 4 YOGYAKARTA ', 'Informatika', NULL, 1, 5, '1a01ee6c9a48e400f8afe66ee37bc94a', '2018-05-17 11:56:35', '2018-05-17 11:56:35'),
('081227892327', 'csppa97@gmail.com', 'C. Satrio Pinandhityo P ', 'SMA Pangudi Luhur Yk', 'Ilmu Komunikasi', NULL, 1, 7, '3552032af68d3cc48a2d11c20018b4d4', '2018-06-20 10:31:47', '2018-06-20 10:31:47'),
('081227918399', 'dimasfebrianilyasa@gmail.com', 'Dimas Febrian Ilyasa', 'SMA ANGKASA ADISUTJIPTO', 'Informatika', NULL, 4, 5, '3670388e6f6034f90985fd25979f4e45', '2018-07-25 14:16:13', '2018-07-25 14:16:13'),
('081228332550', 'ukthititin@gmail.com', 'Titin Rahayu', 'Smk Muhammadiyah 2 klaten utara', 'D3 - Manajemen Informatika', NULL, 1, 7, 'd6035f43a13d5fad6add29b5983d08ad', '2018-05-17 09:32:43', '2018-05-17 09:32:43'),
('081229550462', 'aisymaulida17@gmail.com', 'Wafaul Aisy Maulida', 'MAN 1 Hulu Sungai Tengah', 'Informatika', '18.11.2195', 5, 7, '7301bb2762beaac9bb99fd09c3b632a5', '2018-07-21 13:55:24', '2018-07-21 13:55:24'),
('081229744147', 'williamindra77@gmail.con', 'William Indra Kurniawan', 'SMA N 1 Maos', 'Sistem Informasi', '18.12.0559', 4, 5, '5720e69c27abc0f2c188d55ceedb270f', '2018-06-05 19:49:04', '2018-06-05 19:49:04'),
('081229973011', 'setiawanvicky194@gmail.com', 'Fiki Setiawan', 'SMA GADJAH MADA', 'D3 - Manajemen Informatika', NULL, 1, 6, '0712e68e406ecc8c2fc06f628bca43e4', '2018-07-24 03:58:10', '2018-07-24 03:58:10'),
('081230115855', 'aprilia.nurkasanah98@gmail.com', 'Aprilia Nurkasanah', 'SMK Negeri 2 Depok Sleman', 'Informatika', '18.11.1913', 8, 6, '562856ba3463083ca05aeac08599d593', '2018-06-06 01:18:46', '2018-06-06 01:18:46'),
('081232506851', 'aldioverdi@gmail.com', 'alief tresnaldi al-fitrah', 'SMA MUHAMMADIYAH BANTUL', 'Informatika', '18.11.2224', 9, 5, '7235ab3bfafd678304b6566fcb0d98f1', '2018-07-26 03:23:18', '2018-07-26 03:23:18'),
('081232632619', 'Hanifr951@gmail.com', 'Hanif Rahman', 'SMK N 3 YOGYAKARTA', 'Informatika', '18.11.1883', 5, 5, 'fdfc89d57b28b70d94075469cd5fe0ab', '2018-05-23 13:10:39', '2018-05-23 13:10:39'),
('081232704839', 'Pronineshift@gmail.com', 'Ega Mahendra', 'MA', 'Sistem Informasi', NULL, 7, 5, 'a5ce23aadf45b8e7ed444775aba432b1', '2018-04-21 13:08:22', '2018-04-21 13:08:22'),
('081233209590', 'gila.damarputra@gmail.com', 'Gilang damar putra', 'Sma1 balikpapan', 'Teknologi Informasi', '18.82.0267', 1, 6, 'f0d39a7d3d18e54b375e26acf7473ca4', '2018-05-30 06:31:56', '2018-05-30 06:31:56'),
('081238844944', 'adnanvazshola80@gmail.com', 'alvi adnan vazshola', 'smk negeri tembarak', 'D3 - Teknik Informatika', '18.01.4120', 2, 5, '4d0c2be49e1477c74ce4d9670370378e', '2018-05-17 10:41:53', '2018-05-17 10:41:53'),
('081239009596', 'daviriozr@gmail.com', 'Davirio Zoan Raynanda', 'SMA N 1 SANDEN', 'Sistem Informasi', '18.12.0549', 1, 5, 'e1e42a987f399bc8b1cf37523abc5196', '2018-04-02 09:10:37', '2018-04-02 09:10:37'),
('081239258543', 'ndolusuhartono@gmail.com', 'SUHARTONO HAJI NDOLU', 'SMK N.2 ENDE', 'Ilmu Komunikasi', '18.96.0644', 4, 6, '86e273ffd6835184524b8baf1d6789e0', '2018-07-09 04:19:25', '2018-07-26 06:48:14'),
('081239301858', 'idrismsuwety86@gmail.com', 'Mohamad Idris Suwety', 'SMK NEGERI 2 ENDE', 'Sistem Informasi', '18.12.0632', 6, 7, 'b88c03581f0ac0a6dbea0819cbbbbf08', '2018-05-17 10:45:53', '2018-06-10 02:35:46'),
('081240417117', 'windihardiknasss@gmai.com', 'Win Dihardiknas', 'MA', 'Arsitektur', '18.84.0103', 2, 5, '9e24951fe158b275c88ffd71b01f7793', '2018-07-24 06:31:05', '2018-07-24 06:31:05'),
('081240574158', 'sahrulyura@gmail.com', 'Muhammad nur syahrul', 'SMK YAPIS CAB TIMIKA PAPUA', 'Teknik Komputer', NULL, 1, 7, '589e29fd9e3f99032e041aff9162f453', '2018-05-17 13:46:43', '2018-05-17 13:46:43'),
('081241022277', 'pangestuagung.ap0205@gmail.com', 'Agung Pangestu', 'MA Negeri 2 Hulu Sungai Utara', 'Informatika', NULL, 1, 5, 'dd43503dc6ec3fe0290d3fbfe72cb658', '2018-05-17 06:04:46', '2018-05-17 06:04:46'),
('081241942898', 'melanocool21@gmail.com', 'MEILANO HABIB ALFAN SURI', 'SMA', 'Informatika', NULL, 6, 6, '172f01ea38655e9e46df1f9e6be31fa7', '2018-05-23 10:59:30', '2018-05-23 10:59:30'),
('081246170721', 'liusnabit@gmail.com', 'YULIUS WARA JUANINA NABIT', 'SMA KRISTEN ATAMBUA', 'Perencanaan Wilayah dan Kota', NULL, 2, 4, 'b3345ffb59a4fe7ca46917d6c0b7eee8', '2018-07-20 12:44:17', '2018-07-20 12:44:17'),
('081246216293', 'adyssulistyo88@gmail.com', 'Adi sulistyo', 'Smk dr sutomo', 'Sistem Informasi', '18.12.0739', 6, 6, '020042979a3fd8a0f2f9a6f1a9403ff3', '2018-07-12 12:17:50', '2018-07-20 04:34:46'),
('081247393266', 'aryarama217@gmail.com', 'I MADE DIARSA ARYA RAMANDA', 'SMA', 'Teknologi Informasi', NULL, 5, 4, '80decb2ff5460f5111e4b31dafd79941', '2018-04-20 13:11:38', '2018-04-20 13:11:38'),
('081248803947', 'alpiusrantetampang27@gmail.com', 'Alpius Ranis Rantetampang', 'SMA NEGERI 1 JAYAPURA', 'Teknik Komputer', NULL, 6, 5, 'f88f8bd2dc807ff9a79b3ae9a29d5624', '2018-07-18 23:04:42', '2018-07-18 23:04:42'),
('081250076540', 'jarifahafizatun120@gmail.com', 'Jarifa hafizatunnisa', 'SMAN 01 TAYAN HILIR', 'Informatika', '18.11.1844', 9, 5, '5abce1cffae38efd90a4024869f6c892', '2018-04-21 06:58:13', '2018-04-21 06:58:13'),
('081250147302', 'farizazhari51@gmail.com', 'Fariz Azhari Indrawan', 'MAN 2 Hulu Sungai Utara', 'Informatika', '18.11.1907', 1, 5, '847512908de7fc6d00f66681163acada', '2018-05-19 06:45:08', '2018-06-06 04:17:15'),
('081250520545', 'lailatulfahmi099@gmail.com', 'Afridho Syaifudin', 'Smk Muhammadiyah 1 wonosobo', 'Teknik Komputer', NULL, 7, 5, 'fab97f85df73bd8b3d012bacbc6e51a9', '2018-05-10 13:23:55', '2018-05-10 13:23:55'),
('081251192091', 'miamaulidsa@gmail.com', 'Maulidsa Islamiah', 'SMA Yayasan Pupuk Kaltim', 'Teknologi Informasi', '18.82.0298', 5, 7, '84cd53029db27944b4349814bd68be6e', '2018-05-25 04:32:26', '2018-05-29 13:47:04'),
('081253464710', 'sindymanda39128@gmail.com', 'Sindy Manda Lifah', 'SMKN 1 BUKIT SAWIT ', 'Teknologi Informasi', '18.82.0381', 2, 7, 'cd1123c7b1718405f279accfd3c689c1', '2018-07-25 02:52:18', '2018-07-25 02:52:18'),
('081256221826', 'nobialghoffari@gmail.com', 'Nobi al ghoffari', 'Sma pgri berau', 'Ilmu Komunikasi', '18.96.0532', 8, 7, '5c7d45c73ff80f7e6f4cb7837d5d72d0', '2018-07-19 05:21:15', '2018-07-19 05:21:15'),
('081257172862', 'tri.s080110@gmail.com', 'Tri Sugiyanto', 'SMK NEGERI 1 PANGKALAN BUN', 'Teknologi Informasi', NULL, 9, 7, '3a25f0c5d65d3b5792d6218ed874e566', '2018-05-14 06:37:39', '2018-05-14 06:37:39'),
('081259588702', 'aqua345678@gmail.com', 'Ekhsan lexstarnanto', 'SMA NEGERI 6 KOTA KEDIRI', 'Informatika', NULL, 1, 4, 'b967b34189b0e1c58633995b567244bc', '2018-07-23 07:59:36', '2018-07-23 07:59:36'),
('081266682379', 'afrizalrahmadani119@gmail.com', 'Afrizal Rahmadani', 'SMK NEGERI 1 RENGAT', 'Ilmu Komunikasi', '18.96.0476', 5, 4, '116c86e50347fd9857b5719b3eb1d7ee', '2018-07-18 11:17:04', '2018-07-18 11:17:04'),
('081268372149', 'pebythalia@gmail.com', 'AGNES PEBY THALIA', 'SMAN 1 Batang Cenaku, Inhu, Riau', 'Sistem Informasi', '18.12.0708', 9, 6, 'c6cd6166da0d6b03abd26f447a90fffc', '2018-07-06 04:34:44', '2018-07-08 02:39:02'),
('081270768151', 'igihcksn@gmail.com', 'Inggih WIcaksono', 'SMAN 1', 'Perencanaan Wilayah dan Kota', '18.11.0043', 8, 7, '453c7c229f5738f3383f9f83a3dc9183', '2018-07-28 08:54:07', '2018-07-28 08:54:07'),
('081271137606', 'anungfauzi2000@gmail.com', 'ANUNG RIFAN FAUZI', 'SMKN 1 KOTA BENGKULU', 'Ilmu Komunikasi', '18.96.0400', 3, 7, 'fc450914acadf5a77c2d0a246c1b544a', '2018-07-21 06:14:43', '2018-07-21 06:15:59'),
('081273980691', 'arifrahmansyah078@gmail.com', 'ARIF RAHMANSYAH', 'Madrasah Aliyah Negeri Merangin', 'Sistem Informasi', NULL, 2, 4, 'f9f847497d25e00229a88882c1bba4c2', '2018-07-08 16:04:04', '2018-07-08 16:04:04'),
('081276486888', 'farras.indra.lubis@gmail.com', 'Farras Indra Lubis', 'SMK NEGERI 1 PANGKALAN BUN', 'Teknologi Informasi', NULL, 6, 7, '4a26a192865662f443dab34b7675adda', '2018-05-13 04:57:07', '2018-05-13 04:57:07'),
('081278403175', 'Dimasyogaa40@gmail.com', 'Dhimas prayoga', 'Smkn1 muntok', 'Ilmu Komunikasi', NULL, 5, 7, '26da1aa1134cead34da1f9b505e4c34d', '2018-05-01 04:26:27', '2018-05-06 15:43:54'),
('081279762205', 'fauzankng69@gmail.com', 'Akhmad Fauzan Prayogi', 'SMA N 11 PURWOREJO', 'Informatika', NULL, 1, 7, '95ce24b376ad72e3200cb1b7919fe61c', '2018-07-24 03:04:10', '2018-07-24 03:04:10'),
('081279883237', 'liushuiming.smkn1sungailiat@gmail.com', 'Clarissa Aurellia Anjani', 'SMK N 1 Sungailiat', 'D3 - Manajemen Informatika', NULL, 5, 7, 'c1443e9b89ea4aff55444f62864e5b2c', '2018-07-26 05:00:11', '2018-07-26 05:00:11'),
('081280056035', 'muh.faje0211@gmail.com', 'MUHAMMAD FAJRI ABDILLAH RAHMAN', 'SMK MUHAMMADIYAH', 'Ilmu Komunikasi', '18.96.0650', 9, 4, '5b63cb91b853f3f577239624550578e5', '2018-07-28 07:17:08', '2018-07-28 07:17:08'),
('081280557546', 'irwansetyo109@gmail.com', 'Irwan Setyonugroho', 'SMK BAKTI IDHATA', 'Informatika', '18.11.2138', 2, 4, 'e919eedd37017033dfbf2cbcd6ba5b58', '2018-07-28 14:03:44', '2018-07-28 14:03:44'),
('081284128355', 'yantokabba98@gmail.com', 'Haryanto ledi kabba ', 'SMA N1 lamboya ', 'Ilmu Pemerintahan', NULL, 1, 5, 'afc0195bb813a49451b33ffe9ad46b6d', '2018-05-24 17:40:37', '2018-05-24 17:40:37'),
('081287073109', 'hendrawanyulianto0407@gmail.com', 'hendrawan yulianto', 'smk sandikta', 'Informatika', NULL, 8, 4, 'a1952f2f384bacf8d2d36b64f1274386', '2018-07-10 08:59:11', '2018-07-10 08:59:11'),
('081287493960', 'rezaaya0@gmail.com', 'REZA AYA MUDDA\'I', 'SMK WISUDHA KARYA KUDUS', 'Informatika', '18.11.1840', 2, 5, '89f34a3c177a16985be5872853b3567b', '2018-04-22 10:23:39', '2018-04-22 10:23:39'),
('081289537762', 'zane.227@gmail.com', 'Novian Andika', 'SMK Cyber Media Jakarta', 'D3 - Teknik Informatika', '18.01.4133', 3, 7, '97e92d935b3234eaea446444d3dc8ec0', '2018-05-19 02:26:31', '2018-05-29 02:36:55'),
('081290719087', 'perootami@gmail.com', 'Veronika Tri Budi Utami', 'SMK N 1 SUNGAILIAT ', 'Ilmu Komunikasi', NULL, 2, 7, '652aa851512572321227dfe20eb710a5', '2018-05-18 11:33:10', '2018-05-18 11:33:10'),
('081295171723', 'andripujilestari.20@gmail.com', 'Andri Puji Lestari ', 'SMAN 1 PUTUSSIBAU ', 'Akuntansi', NULL, 5, 5, '0acb77fa6f15155d9736914bb6d41abe', '2018-05-04 14:52:14', '2018-05-04 14:52:14'),
('081298060065', 'afifzeey1113@gmail.com', 'Muhammad Syafri Afif ', 'SMK 3 Perguruan Cikini ', 'Arsitektur', NULL, 7, 7, '301d7ae34f9cff657c9b98bb11117ae6', '2018-04-03 04:13:07', '2018-04-03 04:13:07'),
('081298152830', 'yolashelna67775@gmail.com', 'YOLA SUCI SHELNA SAPUTRI', 'SMK ISLAM TIARA AKSARA', 'Ilmu Komunikasi', '18.96.0517', 8, 7, '4beb1c1adb712c4187bfd29f2f7658b5', '2018-07-22 07:17:52', '2018-07-22 07:17:52'),
('081314489977', 'arifsuhendro34@gmail.com', 'Muhammad Arif Suhendro', 'SMA YADIKA 4', 'Sistem Informasi', NULL, 6, 4, '0a3cebcf4d7152a9edb01b504b1ec190', '2018-07-22 10:21:51', '2018-07-25 04:00:44'),
('081324887389', 'arlianiadita99@gmail.com', 'Arliani Adita', 'SMA al azhar 9 Yogyakarta ', 'Ilmu Komunikasi', '18.96.0392', 4, 7, '5efbeddc5e5469f5e2f5015a6785a77d', '2018-06-08 11:34:38', '2018-06-08 11:34:38'),
('081325360774', 'resacgr@gmail.com', 'Faresa Ferdiansyah Helmi', 'SMA N 1 BANGSRI', 'Informatika', '18.11.1985', 2, 6, '41bcb009cf1e9a67f8d481b487524c28', '2018-05-26 09:53:11', '2018-05-26 09:53:11'),
('081325422398', 'gilangbudi78@gmail.com', 'Gilang Budi Prayoga', 'SMA 1 SEMIN', 'D3 - Teknik Informatika', '18.01.4155', 6, 4, '8c148e6160a248d57d83be93ad4cb4af', '2018-07-08 01:48:54', '2018-07-08 01:48:54'),
('081325893997', 'luthfiaazka99@gmail.com', 'Azka lutfiyah', 'SMK NEGRI 5 YK', 'Ilmu Komunikasi', '18.96.0571', 9, 7, 'fe44abf2c9667d846ccf433682742fe1', '2018-07-23 02:41:59', '2018-07-23 02:41:59'),
('081326100473', 'honeyputriassyifa.hp@gmail.com', 'Honey Putri Assyifa', 'SMKN 7 Pekanbaru', 'Ilmu Komunikasi', NULL, 9, 5, 'd7f35acd00d8501157f26800c246b037', '2018-05-12 03:12:40', '2018-05-12 03:12:40'),
('081328420828', 'vianaqw123@gmail.com', 'Vian wahyu pratama', 'SMK N 4 SUKOHARJO', 'Sistem Informasi', NULL, 9, 6, '3ad3aa254348946a04ba06392acb40e3', '2018-05-25 04:25:55', '2018-05-25 04:25:55'),
('081328627310', 'vikaarya69@gmail.com', 'Vika Arya Prasetya', 'SMAN 1 BAMBANGLIPURO', 'Informatika', '18.11.1892', 3, 5, '4d1832bcc5a7670de5b05803dcbe51ba', '2018-05-12 12:55:21', '2018-05-12 12:55:21'),
('081328856527', 'putriayusabrina54@gmail.com', 'Putri Ayu Sabrina', 'SMK N 4 KLATEN', 'Ilmu Komunikasi', NULL, 1, 7, '2591dd3aa07bb0484e7963e921c03625', '2018-07-19 05:35:11', '2018-07-19 05:35:11'),
('081328983456', 'juanmiguelt17@gmail.com', 'Juan Miguel', 'SMA N 1 Purworejo', 'Teknologi Informasi', NULL, 5, 7, 'b915833e770b3350cc3bc69c26e980d9', '2018-06-09 15:11:48', '2018-06-09 15:11:48'),
('081329347719', 'niryasa77@gmail.com', 'Niryasa Luh Pramudia Sabililah', 'Muhammadiyah boarding school yogyakarta', 'Teknologi Informasi', '18.82.0251', 5, 6, 'a1faf68dded14624ca534db8530d8b67', '2018-05-23 06:26:18', '2018-05-23 06:26:18'),
('081329380289', 'firmanarif48@gmail.com', 'Firman Arif Wicakasono', 'SMAN 1 PIYUNGAN', 'Informatika', '18.11.2169', 3, 6, '029fb6223b1400325bb7122b3a87da1e', '2018-07-19 00:46:46', '2018-07-19 00:46:46'),
('081329462600', 'hilmibagastoro21@gmail.com', 'Hilmi Bagastoro', 'Sma ABU BAKAR', 'Teknologi Informasi', '18.82.0239', 4, 6, '529baf162782f85bafd9c54114b4ec5f', '2018-05-16 10:34:54', '2018-05-16 10:34:54'),
('081329536205', 'taufiqcurvasud123@gmail.com', 'Ahmad Taufiq Arif Rohmansyah', 'MAN 4 SLEMAN', 'Informatika', '18.11.1850', 1, 6, '3154fe00dec2b14913b51e11d9eed336', '2018-06-06 05:55:42', '2018-07-26 23:19:10'),
('081329678854', 'khabulsetyawan17@gmail.com', 'Khabul Setyawan', 'SMK Negeri 2 Wonogiri', 'Informatika', '18.11.1977', 4, 6, '30dd312a72e7f73264f484b4284ca5bf', '2018-05-19 04:12:56', '2018-05-22 01:19:23'),
('081329976716', 'wanharyandi907@gmail.com', 'Wan haryandi', 'SMK taman siswa Yogyakarta', 'Informatika', NULL, 1, 5, '3fe5f50632b23a43e2be8f97360bbd88', '2018-06-26 16:40:27', '2018-06-26 16:40:27'),
('081329983294', 'asadullohmubarok0511@gmail.com', 'Muhammad Asadulloh Al Mubarok', 'SMA Islam Ta\'allumul Huda Bumiayu', 'Informatika', '18.11.1944', 5, 5, '1405351eba34e07708062ae7d34c3ecc', '2018-05-16 15:56:38', '2018-05-24 03:23:42'),
('081330285171', 'danartejo@yahoo.com', 'Danar Tejo Waskitho', 'SMA N 1 KARANGDOWO', 'D3 - Teknik Informatika', NULL, 1, 4, '42e6459e5030cc237f531abce6a3c814', '2018-07-06 03:23:15', '2018-07-06 03:23:15'),
('081330491509', '7rizanelfikar@gmail.com', 'Moh. Izzatur Rizan Elfikar', 'SMA Negeri 1 Yosowilangun', 'Sistem Informasi', NULL, 9, 7, 'f700a719208dda9b0e5bbcbe54974e23', '2018-07-23 13:59:18', '2018-07-23 13:59:18'),
('081330913909', 'an04704@gmail.com', 'Agung Nugroho', 'SMK BINAWIYATA SRAGEN ', 'Teknologi Informasi', '18.82.0316', 5, 6, '47165a7eb5fc030130ec734c36cd1ec2', '2018-06-08 11:30:13', '2018-06-08 11:30:13'),
('081330949520', 'ifur1999@gmail.com', 'M.Syaifur Rohman', 'MA Raudlatul Ulum', 'Teknologi Informasi', NULL, 1, 7, '88ec846a2da3c32123d7db510d7c294a', '2018-05-06 12:43:56', '2018-05-06 12:43:56'),
('081331066962', 'hidayatrizky115@gmail.com', 'Maulana Rizky Hidayat', 'Smk Kristen 5 Klaten', 'Informatika', NULL, 8, 5, '861e63638054c2dc3336c163aec7eeca', '2018-05-15 03:08:42', '2018-05-15 03:08:42'),
('081331110342', 'mfadilla019@gmail.com', 'Miftahul Fadilla', '', 'Informatika', NULL, 3, 6, 'e980cdd0a7951cd09bd224b1de9d0d19', '2018-07-09 03:56:04', '2018-07-09 03:56:04'),
('081334500202', 'dominikusgangsta@gmail.com', 'Dominikus Yogent Savio', 'SMA N 1 Pontianak', 'Ilmu Komunikasi', '18.96.0475', 9, 7, '27c89e0a307ebe61efb04b0b72e2e937', '2018-06-12 04:53:23', '2018-07-24 04:45:41'),
('081335879567', 'nurarlisa2@gmail.com', 'Arliza Nur Hidayah', 'SMA PGRI ', 'Hubungan Internasional', '18.95.0049', 9, 7, 'd158efec0bd29fd0332271e1a5a2657b', '2018-07-22 01:54:23', '2018-07-22 01:54:23'),
('081336579562', 'niccola.valentino@gmail.com', 'Nicco laos valentino', 'SMAS Taruna Jaya', 'D3 - Manajemen Informatika', NULL, 3, 5, '811b7273d2e47816a1a0a5eb49fbc943', '2018-05-02 05:05:49', '2018-05-02 05:05:49'),
('081337311048', 'ardiwn110@gmail.com', 'Ardi Wahyu Nugroho', 'SMA N 1 KOTA MUNGKID', 'Sistem Informasi', NULL, 3, 5, '7672caace8b2ca9cd7039d75eb07dd0e', '2018-04-22 13:09:05', '2018-04-22 13:09:05'),
('081337398206', 'anggitgaul97@gmail.com', 'Anggit Rianansyah', 'SMK TUNAS HARAPAN PATI', 'Informatika', NULL, 5, 6, '218ffeab0dce269b8bfb9236de3cc785', '2018-05-26 14:42:32', '2018-05-26 14:42:32'),
('081337643383', 'aldione249@gmail.com', 'Aldi Setiawan', 'SMK N 2 WONOSARI', 'Teknik Komputer', '18.83.0179', 7, 5, '6ab878aa04c978947166134452d0c03b', '2018-07-16 03:06:31', '2018-07-16 03:06:31'),
('081337795424', 'ikhytakesan@gmail.com', 'NIKSON TAKESAN', 'SMA SWASTA KARYA SOE', 'D3 - Manajemen Informatika', '18.02.0230', 8, 4, 'd7697149795991fbe819dc838bb48b67', '2018-07-05 03:16:32', '2018-07-09 07:21:11'),
('081339028030', 'taripantur31@gmail.com', 'Maria mentari putri pantur', 'SMA Whidya Bhakti Ruteng', 'Ilmu Komunikasi', '18.96.0478', 6, 4, 'ba5a377bf8dca1025fcac79803466d61', '2018-06-26 15:24:39', '2018-06-26 15:24:39'),
('081339203470', 'djawariaaprillianus@gmail.com', 'Anselmus Aprilianus Djawaria', 'sMA St.klaus kuwu', 'Ilmu Komunikasi', '18.96.0498', 4, 5, '1f61d38911d6d44b39c868401c49842d', '2018-06-20 09:02:23', '2018-06-20 09:02:23'),
('081339770249', 'jefrilond@gmail.com', 'Sirilus Jefrianto Lon', 'SMA SUDIRMAN KUPANG', 'Perencanaan Wilayah dan Kota', '18.86.0050', 8, 7, '205404094a7dc8748c1631958837134f', '2018-07-16 00:35:31', '2018-07-16 00:35:31'),
('081339874563', 'harish.h.jkt48@wota.jp', 'Harish Setyo H', 'SMO Mana Saja Boleh', 'Arsitektur', '18.11.0000', 7, 6, 'daa22f8e4c1abbec04ec4ab544142bdc', '2018-07-12 12:33:17', '2018-07-12 12:33:17'),
('081343034380', 'auliaanas04@gmail.com', 'Aulia anas', 'Smk ypkp sentani', 'D3 - Manajemen Informatika', '18.02.0222', 5, 7, 'ad009ce73a57d39bc300773ad04fba0e', '2018-07-22 04:47:18', '2018-07-22 04:47:18'),
('081343110706', 'dedenkm8@gmail.com', 'Nur Alam Latif', 'SMK N 1 SORONG', 'Informatika', '18.11.2007', 3, 4, '97cc0d400299efd402cc1fce40289100', '2018-05-19 09:22:47', '2018-06-24 10:17:23'),
('081343621841', 'dorkasluwudara@yahoo.cm', 'DORKAS LUWUDARA', 'SAM TUNAS MUDA KAWASI', 'Arsitektur', NULL, 1, 5, '33e706b333f0dd1a235b1422c157462d', '2018-05-08 07:50:30', '2018-05-08 07:50:30'),
('081344068766', 'malibisuandi26@gmail.com', 'SUANDI MALIBI', 'SMA N 1 RAJA AMPAT', 'Akuntansi', '18.93.0062', 5, 6, '91c4790e489483a68b768b7d6740b6f9', '2018-07-25 13:55:51', '2018-07-25 13:55:51'),
('081347755607', 'denianto08@gmail.com', 'Denianto', 'SMK NEGERI 1 NABIRE', 'Teknik Komputer', '18.83.0187', 3, 7, '09b7add23803c271958ea36ffc437088', '2018-07-19 09:03:14', '2018-07-19 09:03:14'),
('081348270618', 'andika00728@gmail.com', 'Andika Faris Pratama', 'SMK Perkebunan MM 52 Yogyakarta', 'Informatika', '18.11.1809', 1, 5, '02d8dabfcb8288e0f52b3965cd50b802', '2018-04-22 08:39:37', '2018-04-22 08:39:37'),
('081349724949', 'jackypratama97@gmail.com', 'Jacky Pratama Marpaung ', 'SMA', 'D3 - Teknik Informatika', '18.01.4134', 5, 6, '1ca588b4195c344fd77da44d5df814c5', '2018-05-29 03:26:16', '2018-05-29 03:26:16'),
('081351419423', 'marufmarquez@gmail.com', 'Ma\'ruf', 'SMKN 1 SAMPIT', 'Ekonomi', NULL, 3, 4, '7e5f1a78bd0f0aa5c70f4daf1ccaa453', '2018-04-15 10:27:11', '2018-04-15 10:27:11'),
('081351587841', 'Wahyugusbiantoro322@gmail.com', 'Wahyu Gusbiantoro ', 'Smk', 'Sistem Informasi', NULL, 3, 5, '0c76859ea950297bd8072adc83b9bfc3', '2018-04-12 05:53:37', '2018-04-12 05:53:37'),
('081353241371', 'ahmadulil3571@gmail.com', 'Ahmad ulil albab', 'Man 1 magelang', 'D3 - Manajemen Informatika', NULL, 5, 7, 'e07ad47633775e37f09ca1627925daca', '2018-05-22 00:30:11', '2018-05-22 00:30:11'),
('081356616440', 'achmadfebryanto@gmail.com', 'Ahmad Febrianto', 'SMAN 1 ULAWENG', 'Teknik Komputer', '18.83.0195', 5, 6, 'aff485e97d9f53027dd646167e75edc2', '2018-07-28 05:30:44', '2018-07-28 05:30:44'),
('081358615119', 'kikiaryo4@gmail.com', 'KIKI ARYO KURNIAWAN', 'SMK BINAWIYATA', 'Ilmu Komunikasi', '18.96.0509', 4, 7, '2fe920d032e9de683fba1adf1d6667de', '2018-06-14 04:43:09', '2018-06-14 08:17:56'),
('081359112688', 'otakumoeh@gmail.com', 'Muhammad Alfi Maarif', 'MAN SALATIGA', 'Ilmu Komunikasi', '18.96.0493', 7, 4, '190208f998fa944636e84e8218743973', '2018-07-13 00:53:47', '2018-07-13 00:53:47'),
('081360163361', 'husna.ardhiani15@gmail.com', 'husnaardhiani', 'SMA ISLAM AL FALAH ABU LAM U', 'Ekonomi', NULL, 7, 4, 'ef7f1aaa54de5e9db2506c08a0ca5e37', '2018-05-17 07:28:18', '2018-05-17 07:28:18'),
('081362368631', 'junimaritoritonga03@gmail.com', 'JUNI MARITO', 'SMA S NURUL \'ILMI ', 'Ilmu Pemerintahan', NULL, 8, 5, '65d48ae41280d16b4be5ccb037219359', '2018-07-26 02:41:35', '2018-07-26 02:41:35'),
('081362613566', 'andrian_rian23@yahoo.co.id', 'Siti Andriani', 'SMA ISLAM AL FALAH ABU LAM U', 'Ilmu Komunikasi', NULL, 5, 6, '4be561c0aa41da0ecaade1b9c249c76d', '2018-05-17 03:20:18', '2018-05-17 03:20:18'),
('081364901952', 'rikiapriadi56@gmail.com', 'Riki Apriadi', 'SMK', 'Ilmu Komunikasi', NULL, 6, 5, 'f74570e5e82da46a3690fb7f08130378', '2018-04-02 16:42:24', '2018-04-02 16:42:24'),
('081365037383', 'noblesse0102@gmail.com', 'Ikhsan Ramadhan', 'SMAN 01 Kota Jambi', 'Informatika', '18.11.2184', 9, 7, '08f5fc20fa56ece10932963327b3a12f', '2018-07-20 02:58:44', '2018-07-22 07:38:01'),
('081365456111', 'annisahadelisari@gmail.com', 'Annisa Hadelisari', 'SMK N 1 Kec.Guguak', 'Teknologi Informasi', '18.82.0246', 4, 5, '093ca758a111ba81388a60d4a7f16132', '2018-04-24 00:47:22', '2018-04-24 00:47:22'),
('081367262191', 'trilestari6220@gmail.com', 'Tri lestari', 'Sma n 2 lais ', 'Ilmu Komunikasi', NULL, 5, 7, 'efd0c7ef94d29fb80f61faa6d37b868d', '2018-04-21 17:02:35', '2018-04-21 17:02:35'),
('081369162698', 'detanofrizal@gmail.com', 'Deta Nofrizal', 'SMA YKPP PENDOPO', 'Teknik Komputer', '18.83.0147', 8, 7, '73e6ec86c1e77b198ee7003ac6fcc06b', '2018-04-22 15:07:56', '2018-07-10 03:05:03'),
('081369318057', 'dimasyulendra2000@gmail.com', 'Dimas yulendra', 'SMA', 'Informatika', NULL, 2, 5, 'c1fe30f7e06c75bbba32c8fc1eaa347f', '2018-07-19 05:48:40', '2018-07-19 05:48:40'),
('081372906276', 'bima29rizky@gmail.com', 'Bima Rizky Fadlilah', 'SMA N 2 PAINAN', 'Informatika', '18.11.1998', 4, 7, 'dc47e42428694c0c5cf05a7f276eba1c', '2018-07-24 05:14:11', '2018-07-24 05:14:11'),
('081377715828', 'erinasofia31@gmail.com', 'Erina Sofia', 'SMA Negeri 1 SDU', 'Informatika', NULL, 6, 5, '2ac863278c70c5d3399cd42a0b98e182', '2018-05-13 08:38:19', '2018-05-13 08:38:19'),
('08137800145', 'oktavianto888au@gmail.com', 'Nur oktavianto ', 'Smk Muhammadiyah 3 Yogyakarta ', 'D3 - Manajemen Informatika', NULL, 7, 5, 'c817429022c060f99b411473922e5709', '2018-04-24 14:22:57', '2018-04-24 14:22:57'),
('081379811627', 'khirulirfan2@gmail.com', 'Khoirul irfan', 'SMA N1 GUNUNG AGUNG', 'Informatika', NULL, 4, 5, '426ef956c4be7a3ab54a2ccc55a747bd', '2018-05-19 13:10:07', '2018-05-19 13:10:07'),
('081381414992', 'theovedo89627@gmail.com', 'Theo vedo millano', 'SMA N 1 BATURETNO', 'Ilmu Komunikasi', '18.96.0561', 4, 4, '1cf7dfd5f34a5b324582b95bef8b25f5', '2018-07-27 05:15:59', '2018-07-27 05:15:59'),
('081384834141', 'luqmaannn24@gmail.com', 'Luqman Hakim', 'SMAN 1 Kota Serang', 'Teknik Komputer', '18.83.0227', 2, 4, '54606cf0da365f1b867d5cf8863f4bea', '2018-07-23 08:02:50', '2018-07-23 08:02:50'),
('081385767382', 'myahya606@gmail.com', 'Muhammad Yahya Ubaid', 'MAN 1 HULU SUNGAI TENGAH', 'Informatika', '18.11.2191', 9, 4, '3a56d271a3e09ee095f264cdb9719855', '2018-07-22 09:51:25', '2018-07-23 04:25:06'),
('081388135896', 'dimasadiprabowo9@gmail.com', 'dimas adi prabowo', 'sma daruul quran', 'Sistem Informasi', NULL, 1, 4, 'c8337a039926c9373ea8477f61fc999b', '2018-07-27 04:37:58', '2018-07-27 04:37:58'),
('081391529814', 'dianpangestutif09@gmail.com', ' Dian Pangestuti Fahmi', 'SMK N 1 SEDAYU', 'Akuntansi', '18.93.0054', 4, 6, 'a492c56d39d1f414ad26b9bc95b6cef5', '2018-07-14 05:40:20', '2018-07-14 05:40:20'),
('081391540344', 'natasyaindrivianti1@gmail.com', 'Natasya Alya Indrivianti', 'MAN 3 Sleman', 'Geografi', '18.85.0036', 3, 4, '84ac058660b9c38ce9202482e16786ad', '2018-07-29 06:19:10', '2018-07-29 06:19:10'),
('081392021546', 'renauldizanagi@gmail.com', 'MUHAMMAD RNAULDI', 'SMA PPMI ASSALAAM', 'Sistem Informasi', '18.12.0646', 3, 5, '4fa4a185d8acd2f32fd29cd0ac3152c6', '2018-06-27 18:41:55', '2018-06-27 18:41:55'),
('081392503913', 'rivaldobagyawan11@gmail.com', 'RIVALDO BAGYAWAN MILLENIANSYAH', 'SMA N 1 PRINGSURAT', 'Sistem Informasi', '18.12.0700', 9, 7, '00207a5a4fe11a129ffb04b33b200c68', '2018-07-05 03:20:45', '2018-07-21 17:23:44'),
('081392640846', 'nuraga.anindita@gmail.com', 'RADEN NURAGA ANINDITA', 'MAN 3 BANTUL', 'Teknologi Informasi', NULL, 3, 5, 'fc1bd76ac9623ebd6b1ce424097b73d1', '2018-05-25 04:34:27', '2018-05-25 04:34:27'),
('081392657692', 'byunjiji15@gmail.com', 'Intan Nitra Anggraeny', 'Smk N 3 Kasihan', 'Ilmu Komunikasi', '18.96.0489', 2, 7, '31e5346c7a5079631b20b054ed0ab23b', '2018-06-12 02:17:35', '2018-06-12 02:51:52'),
('081392964535', 'devileyes333@gmail.com', 'SYAQFA AFIRA', 'SMA MUHAMMADIYAH 7', 'Ekonomi', '18.91.0041', 9, 5, 'c7fb09e6134cd94162a4ed2d8924b5ab', '2018-07-17 02:27:17', '2018-07-17 02:27:17'),
('081393718901', 'hafizasidqiamini027@gmail.com', 'Hafiza Sidqi Amini', 'SMA IT Bina Umat', 'Informatika', NULL, 8, 5, '4201c67774915398e598f1627c818b6e', '2018-05-18 09:28:59', '2018-05-18 09:28:59'),
('081394880583', 'Afidzmusthafa3@gmail.com', 'Ichwan Afidz Mustofa ', 'MAN 3 BANTUL', 'Ilmu Komunikasi', NULL, 6, 4, 'b1fc1dc20ee83237d3049c7ca7317d6b', '2018-05-08 06:30:18', '2018-05-08 06:30:18'),
('081398250619', 'arisasmuri59@gmail.com', 'ARIS ASMURI', 'SMAN 1 PRAMBANAN', 'Informatika', '18.11.1822', 4, 5, 'c0313bad725bb46936f25bde56a98dec', '2018-05-23 11:33:48', '2018-06-22 14:44:36'),
('081519038521', 'adamgilangramadhan1900@gmail.com', 'Adam Gilang Ramadhan', 'MA Muhammaddiyah Majenang', 'Sistem Informasi', '18.12.0728', 2, 7, 'bee7a536ea6d0565ec02b279f9f62868', '2018-07-21 05:08:43', '2018-07-21 05:08:43'),
('081520305402', 'jsmm4422@gmail.com', 'Muhammad Jayadi Saputra', 'SMA N 1 BUNUT HILIR', 'Informatika', NULL, 5, 4, '9edd8f8e12478a7d9c619558458837c9', '2018-07-07 08:47:20', '2018-07-07 08:47:20'),
('081522836676', 'sapriantojrf@gmail.com', 'Saprianto', 'SMK N 01 Kendawangan', 'Arsitektur', '18.84.0100', 6, 6, 'd73c953bfa7a7548d2eab6e2ae85ebe6', '2018-07-14 12:15:11', '2018-07-14 12:15:11'),
('081522894449', 'ajisahputra34@gmail.com', 'Aji saputro', 'Smk', 'Informatika', NULL, 9, 5, '1a661ba960f499aaeb0b3721cbe6e7a5', '2018-06-09 18:40:22', '2018-06-09 18:40:22'),
('081532669068', 'amillilah14@gmail.com', 'Amililah', 'SMA N1 PLAKAT TINGGI', 'Informatika', '18.11.1956', 6, 4, 'defc23bd787c1fe4581804525480b2df', '2018-05-19 03:34:48', '2018-07-20 11:48:36'),
('081542041677', 'elsavirantika.ev@gmail.com', 'Elsa Virantika', 'SMA N 1 KOTA MUNGKID', 'Informatika', '18.11.2067', 6, 4, '1735ed0d6654e06de5dea9b1b7b3286c', '2018-07-22 05:17:44', '2018-07-23 04:31:19'),
('081545553568', 'sakuradea3112@gmail.com', 'desi aldah pratiwi ', 'smk negeri 2 ppu', 'Sistem Informasi', '18.12.0774', 6, 4, '7aff8ccc36790fab40559586d556eda1', '2018-07-23 05:33:52', '2018-07-23 05:33:52'),
('081547476747', 'farhanadityasetya@gmail.com', 'Farhan Setya Aditya', 'Smk Muhammadiyah 3 Yogyakarta', 'D3 - Manajemen Informatika', '18.02.0181', 6, 7, '16984069bd7337a5cb13ba03b136af37', '2018-07-20 02:59:58', '2018-07-20 02:59:58'),
('081554004445', 'atdreramadhan45@gmail.com', 'Atdre Ramadhan', 'MAN ngawi', 'Ilmu Komunikasi', NULL, 3, 4, 'dd6f1b887d58cc1e1efbfbcbabf63748', '2018-07-09 00:30:25', '2018-07-09 00:30:25'),
('081568476223', 'nnotho1@gmail.com', 'Annanda Notho Nugroho', 'SMK N 2 Pengasih', 'D3 - Teknik Informatika', '18.01.4166', 1, 5, 'a9d65a2e4513f031ce2dcd8d1f0cda18', '2018-07-26 05:06:48', '2018-07-26 05:06:48'),
('081575235981', 'abdulrahma316@gmail.com', 'Abdul Rahmanto', 'SMK KRISTEN 5 KLATEN', 'Informatika', '18.11.1935', 9, 7, 'dde99d603a06b6a5b64859ee630ecffe', '2018-05-17 11:05:37', '2018-05-17 11:05:37'),
('08157565343263', 'himawanyosia@gmail.com', 'Yosia Adeodatus Himawan', 'SMA MASEHI KUDUS', 'Teknologi Informasi', NULL, 8, 7, '33d110a4e2dc5c5e25b75cbb87cb1f01', '2018-06-11 21:50:34', '2018-06-11 21:50:34'),
('081575835091', 'sofiyanali275@gmail.com', 'Ali sofiyan ', 'Smk muhammadiyah 2 sragen ', 'Informatika', '18.11.1937', 3, 7, 'b0d3eed32a49dbf310c3579f4fb946d3', '2018-05-21 15:55:05', '2018-07-19 08:00:43'),
('081717427258', 'ahmadnuril150@gmail.com', 'Ahmad Nuril Aulia', 'SMA N 1 DLINGO', 'Teknologi Informasi', NULL, 7, 5, 'd437a5b7f58f0bf37801f1e34eed9b9e', '2018-05-13 15:14:54', '2018-05-13 15:14:54'),
('081802797285', 'candradewantoroa@gmail.com', 'Candra Dewantoro', 'SMA NEGERI 1 TURI', 'Teknologi Informasi', NULL, 9, 7, '8025b05d976dd6c659972358336941fa', '2018-04-25 02:39:30', '2018-04-25 02:39:30'),
('081804114521', 'atisatyaa@gmail.com', 'Ardhiny Sabikiara Atisatya', 'SMA Negeri 4 Yogyakarta', 'Arsitektur', '18.84.0081', 8, 4, '70b117c8eb1885c713f83a327c40971d', '2018-06-03 14:25:48', '2018-06-03 14:25:48'),
('081807089602', 'afifridhwanfauzi@gmail.com', 'Afif Ridhwan Fauzi', 'SMK Telekomunikasi Telesandi Bekasi', 'Teknologi Informasi', NULL, 2, 7, '35a81b395b9fce01e691e6832718b112', '2018-05-01 22:04:31', '2018-05-01 22:04:31'),
('081901506023', 'bayualif10@gmail.com', 'Bayu Alif Febrianta', 'SMK N 2 Depok', 'Informatika', NULL, 8, 6, 'e2268398a6fffbec9d3401f0a18fc6ab', '2018-05-28 01:45:22', '2018-05-28 01:45:22'),
('081903422253', 'rahmagusti890@gmail.com', 'Gusti rahma rossegar', 'SMKN 1 WANAREJA ', 'Informatika', '18.11.1889', 2, 5, '93877fdce8bfb0e20aa7dfbdc94879ff', '2018-05-25 02:39:02', '2018-06-07 02:16:14'),
('081903744978', 'erslaagung@gmail.com', 'ERSLA AGUNG WIDYA HARYONO', 'SMA NEGERI 1SELOMERTO', 'D3 - Manajemen Informatika', NULL, 3, 5, '0544400f8511428a81f77d23a461a973', '2018-05-16 12:18:03', '2018-05-16 12:18:03'),
('081903814027', 'anisahesti.00@gmail.com', 'Anisa Hesti Prameswari', 'SMAN 1 Magelang', 'Teknologi Informasi', '18.60.0024', 7, 7, 'ec73822138f62e828d92ebcd285be818', '2018-07-27 04:52:25', '2018-07-27 04:52:25'),
('081903922844', 'nurakhmad03@gmail.com', 'Nur Akhmad', 'SMAN 1 SALAMAN', 'D3 - Manajemen Informatika', '18.02.0221', 4, 5, 'a6c571528ca4dfb7ebf0bf8c38272c72', '2018-05-16 13:49:41', '2018-07-08 06:46:21'),
('081904714932', 'geelang.putra@gmail.com', 'GILANG PUTRA MAKRUF', 'SMK MUHAMMADIYAH  3 WATES', 'D3 - Manajemen Informatika', '18.02.0208', 1, 6, '5c79b7a7518b73a1e0bc2b9b8b534941', '2018-05-26 01:03:17', '2018-05-26 01:03:17'),
('081911584174', 'jonathanputra7007@gmail.com', 'JONATHAN BASKARA NUGRAHA PUTRA', 'SMA HANG TUAH 1 JAKARTA', 'Perencanaan Wilayah dan Kota', '18.86.0052', 1, 5, 'f6058c5030915832879f1d9792501654', '2018-07-26 14:42:53', '2018-07-26 14:42:53'),
('081915463512', 'irva.muriza@gmail.com', 'Irva Muriza', 'SMAN 1 Ngemplak', 'Informatika', '18.11.1978', 8, 6, 'ce57c171fbfeba49e1d59bf885ac7d46', '2018-07-03 09:55:49', '2018-07-03 09:55:49'),
('081915615213', 'bimasakti414@gmail.com', 'I Gede Bima Sakti Setia Divantara', 'SMK TI Bali Global Jimbaran', 'Sistem Informasi', NULL, 2, 6, '4e5e6e8012a2eedcade8a06497cf71fa', '2018-04-19 11:15:06', '2018-04-19 11:15:06'),
('081934638299', 'Dyanuar8326@gmail.con', 'Diky Yanuar Abrianto', 'SMK PU MALANG', 'Teknologi Informasi', NULL, 5, 7, 'ef93d694d0324f8dd26e27e65a7e07f9', '2018-06-28 05:13:01', '2018-06-28 05:13:01'),
('081936810303', 'dhikaaji.9@gmail.com', 'Dhika Aji Praditya', 'SMK PIRI 1 YOGYAKARTA', 'D3 - Teknik Informatika', '18.01.4131', 2, 6, 'b61624f5bdd95183a37bbe1c66c7d63a', '2018-07-12 05:29:49', '2018-07-22 08:14:59'),
('081999920703', 'gadinghidayat519@gmail.com', 'Muhamad Gading Hidayat Zarkasy ', 'SMA N 1 KERUAK', 'Informatika', '18.11.1873', 5, 4, '6ce2603653e5221891872f448d6acfd9', '2018-06-07 13:03:20', '2018-06-07 13:03:20'),
('082111733620', 'rahmadrivaldi18@gmail.com', 'Rahmad Rivaldi ', 'SMAN 1 LEBONG', 'Informatika', '18.11.2045', 9, 5, 'b95d144a3ae5f5443562a8bc516bcb19', '2018-06-07 06:18:02', '2018-06-07 06:18:02'),
('082116359757', 'Supriyanto.sch@gmail.com', 'Supriyanto', 'SMK MA\'ARIF SALAM Magelang', 'Informatika', '18.11.2225', 7, 5, '1b437585b4f44ff4ddc220f603d34e70', '2018-07-20 20:10:05', '2018-07-26 11:20:09'),
('082132492389', 'muktitio2000@gmail.com', 'Mukti Prasetyo', 'SMA N 3 MUARO JAMBI', 'Informatika', NULL, 2, 4, 'ca2136c10bcf4a747446e0785900171b', '2018-07-16 09:34:18', '2018-07-16 09:34:18'),
('082132588958', 'alhazir.akbar00@gmail.com', 'AL HAZIR AKBAR', 'SMK NEGERI 1 BENER MERIAH', 'Informatika', '18.11.1955', 8, 4, 'cd42f640da9991f23b206bc30f9ca26d', '2018-07-13 17:58:02', '2018-07-13 17:58:02'),
('082133156437', 'dwi.suryati21@gmail.com', 'Dwi Suryati', 'SMK Muhammadiyah 1 Salam', 'Arsitektur', '18.84.0083', 7, 7, 'd8b5a942ace02b47f87b3d85808900f9', '2018-05-09 01:41:19', '2018-06-26 14:14:08'),
('082133315705', 'Iqbalgabul168@gmail.com', 'Muchammad Iqbal Al-fikri', 'SMA', 'Kewirausahaan', '18.92.0053', 7, 5, 'cf2ffe1e4894a302cb59382ba9907c7e', '2018-05-21 15:04:23', '2018-05-21 15:04:23'),
('082133921308', 'yokanan121@gmail.com', 'Yokanan Prasetya Adi', 'SMK KRISTRN 5 KLATEN', 'D3 - Teknik Informatika', '18.01.4123', 6, 5, '410b6c60f010b427ff6ac82d0615c014', '2018-05-17 11:24:30', '2018-05-17 11:24:30'),
('082133956995', 'naziffapuspa2000@gmail.com', 'Naziffa Puspa Waskito', 'SMK N 1 SEDAYU', 'D3 - Manajemen Informatika', NULL, 8, 6, '9fc6d29835c1a546f18295fb729617fc', '2018-07-24 03:52:16', '2018-07-24 03:52:16'),
('082134126067', 'muhammadguruhmahendra33@gmail.com', 'Muhammad Guruh Mahendra', 'SMA N 1 Tawangsari', 'Informatika', '18.11.2134', 4, 6, '7a9195c453cf0067ddb6528e147492c4', '2018-07-25 05:29:57', '2018-07-25 05:29:57'),
('082134164979', 'fachrudineffendi83@gmail.com', 'Fachrudin Effendi', 'SMA N 3 SRAGEN', 'Informatika', '18.11.2087', 5, 6, '596f9be686508eaee0bfacea8ba0bf9d', '2018-07-05 10:20:55', '2018-07-24 04:39:31'),
('082134302121', 'fcb.taufik@gmail.com', 'Taufik Nurhidayat', 'SMK Informatika Wonosobo', 'Sistem Informasi', NULL, 8, 4, '19479a2cd3201802b8e098c8c917a470', '2018-04-23 04:15:06', '2018-04-23 04:15:06'),
('082134729198', 'fahrifarih@yahoo.com', 'Fahri Farih Kusuma', 'SMA Negeri 5 Yogyakarta', 'D3 - Manajemen Informatika', NULL, 3, 6, '8be892d4230dcc11e50907d600b33eae', '2018-06-03 09:05:25', '2018-06-03 09:05:25'),
('082135490033', 'rizalfebriawan87@gmail.com', 'Rizal Febriawan Handaru', 'Smk Negeri 1 Seyegan', 'Teknik Komputer', NULL, 3, 4, 'afabdf5b304b5ee98accf46c052e2b9e', '2018-07-26 03:23:43', '2018-07-26 03:23:43'),
('082135508512', 'kresnawan.dewanto1407@gmail.com', 'Kresnawan Dewanto', 'SMK BOPKRI 1 Yogyakarta', 'Teknologi Informasi', '18.82.0300', 5, 4, '5dc5b3e2bd240af07f9b9b4b2a961bde', '2018-05-28 03:21:06', '2018-05-28 03:21:06'),
('082135583910', 'bannareus0@gmail.com', 'Banna Rosyid Madani', 'MAN 1 YOGYAKARTA', 'Informatika', NULL, 5, 5, '97c8652468554420881d5115010f6265', '2018-07-18 15:08:00', '2018-07-18 15:08:00'),
('082135608791', 'abdullole@gmail.com', 'Muhammad Abdullah', 'SMKN 2 Bawang', 'Teknik Komputer', '18.83.0185', 3, 4, '8a98d30d3dcc50347688b49dee0993d6', '2018-07-21 02:17:45', '2018-07-21 02:17:45'),
('082135642918', 'hilwaamalia41@gmail.com', 'NURUL HILWA AMALIA', 'SMA NEGERI 3 SORONG', 'Hubungan Internasional', '18.95.0047', 2, 4, '434c508fb588a8459fd8b09c90b84b45', '2018-07-02 04:33:43', '2018-07-02 04:33:43'),
('082135954841', 'reysoultan81@gmail.com', 'Soultan Muhammad Syahrian', 'SMK MUHAMMADIYAH 1 YOGYAKARTA', 'Ilmu Komunikasi', NULL, 7, 4, 'c73ebb829d6256b0aed526cd9493e9f4', '2018-06-01 11:48:11', '2018-06-01 11:48:11'),
('082136750992', 'ihamnfaq@gmail.com', 'Ilham Nur Falaq', 'SMK', 'Kewirausahaan', NULL, 6, 4, '77574b1531ac5e9b8a7939b23d3d3b70', '2018-07-09 07:05:24', '2018-07-09 07:05:24'),
('082137363846', 'muh18557@gmail.com', 'Muhammad Iqbal Hamdani', 'SMA NEGERI 3 BOYOLALI', 'Sistem Informasi', NULL, 8, 5, 'ccf04d26c09581c1724587bcd069cbb9', '2018-05-11 11:51:00', '2018-05-11 11:51:00'),
('082137597705', 'bagusperdana.234@gmail.com', 'Bagus Perdana Putra Riharjanto', 'SMA UII BANGUNTAPAN', 'Hubungan Internasional', '18.95.0048', 9, 7, 'ccb8851eb77aad8d7be7ae99ae6d2730', '2018-07-16 04:05:11', '2018-07-18 23:37:21'),
('082137769675', 'achmadrahzanialfikra17@gmail.com', 'Achmad Rahzani Al-Fikra', 'SMA Muhammadiyah 5 YK', 'Ilmu Komunikasi', '18.96.0514', 2, 6, 'be225ba7ed3e659ef28a74bce48bcf26', '2018-07-09 00:30:35', '2018-07-09 06:23:53'),
('082137994490', 'aryabagas98@gmail.com', 'Bagas arya daniswara ', 'SMAN 11 YOGYAKARTA ', 'Informatika', '18.11.2125', 6, 4, 'd3c118aeb4f020ee6e6f53280b4f59c4', '2018-07-26 06:08:32', '2018-07-26 06:08:32'),
('082138001919', 'bazzkoro97@gmail.com', 'baskoro', 'SMK N 2 Yogyakarta', 'Informatika', '18.11.2165', 5, 6, 'b0efb164228fe77f7a916eb1d934a92b', '2018-07-19 11:56:54', '2018-07-19 11:56:54'),
('082138035788', 'hamdanihabib33@gmail.com', 'Hamdani chabibulloh', 'Smk muhammadiyah 3 yogyakarta', 'Sistem Informasi', NULL, 4, 5, '897148da572c635efaafb05ba8e4cf7c', '2018-05-10 03:48:57', '2018-05-10 03:48:57'),
('082138251283', 'aryalaksmana32@gmail.com', 'Nuringtyas Arya Laksmana', 'SMA 2 BANTUL', 'Informatika', '18.11.1864', 6, 5, 'd85e81647ac6d2da8397771f47a48940', '2018-05-18 01:21:46', '2018-05-18 01:21:46'),
('082138612131', 'iskandartaufik219@gmail.com', 'Taufik iskandar', 'SMAS Majapahit ', 'Sistem Informasi', NULL, 3, 5, 'bf57f56e256557f7b0a3fdbb439c166f', '2018-06-19 13:56:56', '2018-06-19 13:56:56'),
('082139519611', 'nurwidiatmoko444@gmail.com', 'Nur widiatmoko', 'SMAN 1 TANJUNGSARI', 'Teknologi Informasi', '18.82.0280', 2, 6, 'e2e00f4a679fc9599840f09c075b9564', '2018-07-25 03:01:17', '2018-07-25 03:01:17'),
('082139532363', 'anto.supri52@gmail.com', 'suprianto', 'smk negeri 2 turen', 'Teknologi Informasi', '18.82.0247', 5, 5, '26da230d15a60bed3a7f2dfa693e97f2', '2018-04-30 10:38:06', '2018-04-30 10:38:06'),
('082141690053', 'qorinaloisfadilla@gmail.com', 'Qorina Lois Fadilla', 'MAN 2 KULONPROGO ', 'Ilmu Komunikasi', '18.96.0542', 6, 7, '861b991e439ae73e3d71d770b032bf1d', '2018-07-22 05:32:32', '2018-07-22 05:32:32'),
('082145542563', 'noflisyukur128@gmail.com', 'Zakarias Nofli Keludung', 'SMKN 1 LABUAN BAJO', 'Informatika', '18.11.2054', 8, 4, '2d3eeeacc4cccf10d4efb17ba24cadd5', '2018-06-29 07:04:28', '2018-06-29 07:11:16'),
('082145804281', 'oijefry@gmail.com', 'Jefri davidson ama sabon', 'Smk negeri ile boleng', 'Ilmu Pemerintahan', '18.94.0046', 7, 4, 'd52a7f7440ba2b38e395a6e3f99ae8ad', '2018-06-28 12:20:18', '2018-06-28 12:20:18'),
('082146651151', 'yhukenhaar02@gmail.com', 'Yudi Hartono sirsobad', 'SMK N 1 KOTA TUAL', 'Informatika', NULL, 8, 5, 'd127673334991db67575a0a5123707ae', '2018-06-06 13:42:26', '2018-06-06 13:42:26'),
('082146740406', 'adhityaprayoga48@gmail.com', 'Adhitya Prayoga Permana', 'sma n 2 pati', 'Informatika', NULL, 5, 5, 'dcd27d671191eb7178bce3baf95481e8', '2018-04-28 07:42:28', '2018-04-28 07:42:28'),
('082147418674', 'ymustaqim19@gmail.com', 'Yulianto Mustaqim', 'SMK N 2 WONOSARI', 'Informatika', NULL, 7, 6, '09c0c5725ead6ebe8007bc61c0a1f932', '2018-07-24 00:06:07', '2018-07-24 00:06:07'),
('082147923383', 'marioryant19@gmail.com', 'Mario Petrus S. H. S. Watun', 'SMAK Fides Quaerens Intrllectum', 'Sistem Informasi', NULL, 9, 6, '3eeb28a610d0255d5cf3e6b8f2e98aa1', '2018-07-08 04:50:45', '2018-07-08 04:50:45'),
('082154595292', 'akmal.shaufi@gmail.com', 'Muhammad Akmal Shaufi', 'SMKN 1 Amuntai', 'Informatika', '18.11.1932', 8, 7, '084432942ae668e0b2c066824f8ab86d', '2018-05-17 04:58:58', '2018-05-17 04:58:58'),
('082156584849', 'indahtwulandari1234@gmail.com', 'Indah Tri Wulandari', 'SMK', 'Ilmu Pemerintahan', '18.94.0053', 3, 4, 'e06612e2dfc81680402586d0d347f331', '2018-07-22 08:40:45', '2018-07-22 08:40:45'),
('082165024183', 'nurekhwan99@gmail.com', 'NUR IKHWAN ADITYA UTAMA', 'SMA Sulthon Aulia Boarding School', 'Informatika', '18.11.2006', 9, 4, '64bef2ca59cda616d671486c862089e7', '2018-05-28 09:50:25', '2018-05-28 09:50:25'),
('082167450733', 'faizsitorus12@gmail.com', 'Muhammad Nur Faiz Sitorus', 'SMK', 'Sistem Informasi', NULL, 4, 5, 'c690d1cc5933813baa5894a65c8da219', '2018-04-17 06:11:39', '2018-04-17 06:11:39'),
('082175863769', 'oktamisrandi@gmail.com', 'okta misrandi', 'sma 7 bengkulu selatan', 'Sistem Informasi', NULL, 3, 4, 'b4a60377d3f73732282c30b7d4bbf9b5', '2018-05-30 04:07:33', '2018-05-30 04:07:33'),
('082176640968', 'irineagistia4083@gmail.com', 'irine agestia', 'SMK Muhammadiyah 1 Yogyakarta', 'Akuntansi', NULL, 3, 7, '2410dad54d1551e7527c2da7e226582d', '2018-07-22 03:08:23', '2018-07-22 03:08:23'),
('082180061109', 'aldanazhifah95@gmail.com', 'Alda Nazhifah', 'SMK', 'Informatika', '18.11.1940', 6, 5, '802afd6d46a6f166445ce7ee1f29bb29', '2018-05-21 15:01:17', '2018-05-21 15:01:17'),
('082184507934', '2000galih@gmail.com', 'GALIH WICAKSONO', 'SMK NEGERI TUGUMULYO', 'Teknologi Informasi', '18.82.0375', 3, 4, 'cfb60aa33adfb3d9edfa8500a0bcbd75', '2018-07-23 08:31:13', '2018-07-23 08:31:13'),
('082186916285', 'andreashutagaol67@gmail.com', 'andreas martua yerobeam hutagaol', 'sma unggul sakti', 'Teknologi Informasi', NULL, 6, 5, '57b67979f521e98a796495c57276fb72', '2018-07-19 13:52:51', '2018-07-19 13:52:51'),
('082186999148', 'janirizal84@gmail.com', 'Rahma Dani', 'Sma 1 argamakmur', 'Sistem Informasi', NULL, 1, 5, 'fd621c8d60610e355b61086c1290a325', '2018-05-22 03:35:13', '2018-05-22 03:35:13'),
('082188964580', 'Zahrabarcham1818@gmail.com', 'Zara almayda', 'SMA NEGERI 5 HALBAR', 'Ilmu Pemerintahan', '18.94.0043', 4, 6, '2e82774050095f82723f540bbf82a220', '2018-05-26 11:05:24', '2018-05-26 11:05:24'),
('082189748439', 'zulmizhizhi@gmail.com', 'Erlina Ekawati', 'SMA NEGERI 1 TIDORE KEPULAUAN', 'Teknik Komputer', '18.83.0230', 9, 4, 'a0838bcc976fe04d6ee707883739dcec', '2018-07-24 07:12:55', '2018-07-24 07:12:55'),
('082190516231', 'echaqueent28@gmail.com', 'Rezha Regita Fadli', 'SMA NEGERI 1 SARUDU', 'Hubungan Internasional', '18.95.0051', 6, 7, '637bb4617a1fd8d843c5030aa4f53023', '2018-07-26 05:09:19', '2018-07-26 05:09:19'),
('082193855519', 'mashanafi97@gmail.com', 'Muhamad Yusril mashanafi', 'Sma n 1 Kotamobagu ', 'Informatika', '18.11.2053', 2, 5, 'f5ff19e638b98965b75d2ddaa4fa7659', '2018-04-02 14:45:09', '2018-06-11 09:21:46'),
('082195633480', 'aldoal655@gmail.com', 'Aldo Nikodemus', 'SMA NEGERI 6 HALMAHERA SELATAN', 'Arsitektur', '18.84.0094', 4, 5, 'b5109a0c89e977c82a4822174e8b089a', '2018-07-27 11:57:28', '2018-07-27 11:57:28'),
('082198332024', 'wahyuunyil98@gmail.com', 'Afian gilang wahyu saputro', 'SMK YPK EFATA KAIMANA', 'Sistem Informasi', NULL, 9, 7, 'fa706a9016ef0eb7443e8303b30618b0', '2018-04-04 14:47:16', '2018-04-04 14:47:16'),
('082198349940', 'kevinefrat@gmail.com', 'KEVIN EFRAT MURDIYATNO', 'SMA KATOLIK SANTA MARIA ', 'Informatika', NULL, 2, 5, 'fd01da0a8693d3bf56d0050562c03a7e', '2018-06-27 06:34:14', '2018-06-27 06:34:14'),
('082198528870', 'syukur.sa34@gmail.com', 'Moh. Sesar Abdul Syukur', 'SMK N 2 MANOKWARI', 'Teknik Komputer', '18.83.0156', 5, 5, '17d6a65d9aee29d938ddae91d3add9bb', '2018-05-17 11:09:04', '2018-05-17 11:09:04'),
('082199255205', 'alfianogregorio@gmail.com', 'ALFIANO GREGORIO', 'SMA KATOLIK MAKALE', 'Teknologi Informasi', NULL, 7, 4, 'd93e765625247eb7ccc8aa94131bd820', '2018-07-05 03:13:26', '2018-07-23 05:31:49'),
('082199379211', 'fhajjarsidiq11@gmail.com', 'Fajar Muhammad Sidiq', 'SMA Negeri 1 Fakfak', 'Informatika', '18.11.1895', 8, 5, '081de11a7ae37f69fb9d0aad94e2ed45', '2018-05-17 11:28:40', '2018-05-17 11:28:40'),
('082199517763', 'adrhiandwrr01@gmail.com', 'Daniel Adrian Woriori', 'SMA N 1 SERUI', 'Teknik Komputer', '18.83.0203', 2, 5, 'a9368ce2d4f8a08f9fc3ac6945a9e35f', '2018-07-27 04:46:06', '2018-07-27 04:46:06'),
('082199673155', 'aliefdewana49@gmail.com', 'Alief Dewana Iriawan', 'SMKS YAPIS BIAK', 'Informatika', '18.11.2108', 7, 5, '97f98a04ad9f05d58d2b39c7327de78c', '2018-07-26 13:11:40', '2018-07-26 13:11:40'),
('082199953859', 'renzaw.zen@gmail.com', 'Muhammad Risky Ikhsanuddin Zen', 'Man 1 yogyakarta', 'Teknik Komputer', NULL, 6, 5, 'eefb4b01ecd07e38385a1ed230a7d68f', '2018-04-24 14:17:38', '2018-04-24 14:17:38'),
('082214939456', 'alif47325@gmail.com', 'wahyu alif nurrohmat', 'smk nurul ummah', 'Informatika', '18.11.1910', 2, 5, '077d922aa84f2de4ec7bdc2607b03641', '2018-05-16 10:11:10', '2018-05-16 10:11:10'),
('082215306866', 'madefirmansyah04@gmail.com', 'MUHAMMAD ADE FIRMANSYAH', 'MAN 2 MAJALENGKA', 'Arsitektur', NULL, 1, 4, '549ff268e479ad9d74d9a75e9ae10cf0', '2018-07-01 12:01:01', '2018-07-01 12:01:01'),
('082216233593', 'sultanbelanusa@gmail.com', 'Sultan Bela Nusa', 'SMA N 3 KLATEN', 'Ilmu Komunikasi', '18.96.0487', 3, 7, 'e5a41cf212204bb326853bfadd27a795', '2018-06-26 02:04:47', '2018-06-26 02:04:47'),
('082220028685', 'deliadwi.astika27@gmail.com', 'delia dwi astika', 'SMA N 1 RAWALO', 'Informatika', '18.11.2072', 8, 5, 'c37339cafc1c4ea46d26407f3f1d3c32', '2018-07-21 05:01:55', '2018-07-21 05:01:55'),
('082220048322', 'dafamumtaz123.dm@gmail.com', 'Dafa Muhammad Mumtaz', 'SMA N 1 PIYUNGAN', 'Informatika', '18.11.2213', 8, 4, '91efca1ee2011f99062d9de52625d9d9', '2018-07-24 07:01:19', '2018-07-24 07:01:19'),
('082220870642', 'seleniafelita.11@gmail.com', 'Selenia Felita Indryani', 'SMA N 3 WONOGIRI', 'Sistem Informasi', NULL, 1, 5, '32e7f0812828fdeee0d1ebd4210d9d53', '2018-06-13 05:22:45', '2018-06-13 05:22:45'),
('082221315976', 'miftahuda0702@gmail.com', 'Miftahul Huda', 'SMK', 'Sistem Informasi', NULL, 9, 7, '858b98a93de2be5d530d829c2349d319', '2018-06-20 09:04:42', '2018-06-20 09:04:42'),
('082221637060', 'rizkykurnia219@gmail.com', 'Rizky Kurnia Firmansyah', 'SMK Sakti Gemolong', 'Informatika', NULL, 8, 5, '1b8bb3941be4a26a569231a8ad6ba3a0', '2018-05-17 04:42:34', '2018-05-17 04:42:34'),
('082221782622', 'nendenranuma@gmail.com', 'Nenden Ranuma Ratri', 'SMKN 2 Yogyakarta', 'Teknik Komputer', '18.83.0151', 7, 6, '9b0293e890261f4a143241ab045b2c3d', '2018-07-29 07:11:26', '2018-07-29 07:11:26');
INSERT INTO `participants` (`phone`, `email`, `name`, `school`, `prodi`, `nim`, `day`, `division_id`, `secret`, `created_at`, `updated_at`) VALUES
('082221894413', 'rezawahyudi110@gmail.com', 'Reza wahyudi', 'SMA N 1 seyegan', 'Informatika', '18.11.2130', 6, 5, '3504047e51f696486b6d082fc780c8a7', '2018-07-27 12:20:49', '2018-07-27 12:20:49'),
('082224144739', 'dwahyu626@yahoo.com', 'WAHYU DEDY SETIAWAN', 'SMA negeri 1 danau sembuluh', 'Teknologi Informasi', NULL, 2, 6, 'a2735e415039bdc90513738daaf9ac26', '2018-06-06 06:48:02', '2018-06-06 06:48:02'),
('082225340116', 'vikaalfian18@gmail.com', 'Vika Alfian Yuniar', 'SMK Penerbangan Angkasa Madiun', 'Teknik Komputer', NULL, 6, 7, 'f55e5db21574e42d4300b08a5960f479', '2018-05-18 02:23:25', '2018-05-18 02:23:25'),
('082225378676', 'satriaivan991@gmail.com', 'Muhammad Reza Sahid', 'SMA N 1 IMOGIRI', 'D3 - Teknik Informatika', '18.01.4124', 1, 6, '1c4d332353909d366f2effb13873d591', '2018-05-28 07:16:18', '2018-05-28 07:16:18'),
('082225978580', 'diiankhalista@gmail.com', 'Dian Khalista', 'SMA N 1 Sentolo', 'Sistem Informasi', NULL, 2, 5, '2bbd0e75d3cb0f16b6de0f98692d9f5b', '2018-04-26 03:11:38', '2018-04-26 03:11:38'),
('082225983155', 'irentville@gmail.com', 'Indawan Cahyo adi', 'SMK 17 TEMANGGUNG', 'Informatika', NULL, 9, 4, '8972c36933352ffdf418a201a8233cf5', '2018-05-29 00:26:32', '2018-05-30 11:26:39'),
('082226055229', 'yogasarep@gmail.com', 'yoga nawassarief', 'smk smti yogyakarta', 'Informatika', '18.11.1806', 5, 5, '3503316449078e47670c11d4b99ec215', '2018-04-02 15:51:15', '2018-04-02 15:51:15'),
('082226060834', 'krissandy8@gmail.com', 'krissandi widjanarko', 'smk n 3 yogyakarta', 'Teknologi Informasi', '18.82.0265', 5, 4, 'cd7eefff7e0f6f5bb0ddb239a70801e5', '2018-07-26 04:57:52', '2018-07-26 04:57:52'),
('082226215265', 'trysa78@gmail.com', 'TRYSA ZUAMA ZAKIAH', 'SMK N 7 YOGYAKARTA', 'Sistem Informasi', '18.12.0748', 5, 7, 'fda76a47d49b66bde65f47d4eae5438d', '2018-07-27 15:18:19', '2018-07-27 15:18:19'),
('082226226560', 'isnawanmuftis@gmail.com', 'Isnawan mufti sufiyana', 'SMA N 1 Tempel', 'Informatika', '18.11.2129', 5, 5, '106108d2fbf9fac1118185dbeb8565da', '2018-07-27 12:20:30', '2018-07-27 12:21:57'),
('082226434639', 'muhammadrizaforce@gmail.com', 'Muhamad Riza Abdhi Purnama', 'SMK', 'Informatika', '18.11.2112', 5, 6, 'aacc618a9c0c3c433c856061d5452634', '2018-07-12 05:52:57', '2018-07-12 05:52:57'),
('082226661878', 'hat.majasatrio@gmail.com', 'Satria Budi Hatmaja', 'SMA', 'Informatika', '18.11.1828', 2, 6, '09d85b897ee8c226ee928fa2519db3ad', '2018-06-02 11:06:09', '2018-06-02 11:06:09'),
('082226822941', 'hlhlysg@gmail.com', 'Hosea Louis Yona Sola Gracia', 'SMK N 2 Yogyakarta', 'Ilmu Komunikasi', NULL, 4, 4, 'c9c0df5ce52dd34fe50428117f8ebda2', '2018-05-30 05:25:51', '2018-05-30 05:25:51'),
('082226989205', 'cahyarevanto@gmail.com', 'Cahya Revanto', 'SMK N 1 GANTIWARNO', 'Informatika', NULL, 3, 7, 'f79344aa3f40049ce7a3a3acc9d5eacd', '2018-05-01 22:55:49', '2018-05-01 22:55:49'),
('082227244916', 'muhriza66@gmail.com', 'MUHAMMAD RIZA NURENDRA PRATAMA', 'SMK N 2 YOGYAKARTA', 'Informatika', '18.11.1838', 6, 7, 'ca43e82212b5178df92e2dec73279cbb', '2018-04-22 10:13:05', '2018-04-22 10:13:05'),
('082227702470', 'widiyantoyusuf88@gmail.com', 'Muhammad Yusuf Widiyanto', 'SMK ASSALAAM', 'Informatika', NULL, 9, 5, 'cf4c6d3cb1ee425b15972affd745c709', '2018-07-28 02:23:13', '2018-07-28 02:23:13'),
('082227990366', 'cjeconiah.cj@gmail.com', 'Christian Jeconiah D Rinanto', 'SMA KRISTEN SATYA WACANA ', 'Sistem Informasi', NULL, 1, 6, '57efe9e40a5d7b03b67985da0e361c5f', '2018-04-02 11:24:08', '2018-04-02 11:24:08'),
('082229035754', 'felix_m37@yahoo.com', 'Felix Marsaptandhiyo', 'SMA Pangudi Luhur', 'Informatika', NULL, 2, 6, 'd3d583921e429260c6822226633f9e6f', '2018-07-18 11:48:46', '2018-07-18 11:48:46'),
('082229908618', 'edopearlyanto@gmail.com', 'Edo Pearlyanto', 'SMKN 1 BENDO', 'D3 - Teknik Informatika', '18.01.4121', 9, 6, '9a0e2990726e8d4ac6ebd4480294aa01', '2018-07-04 01:52:50', '2018-07-04 01:52:50'),
('082232048917', 'cahyanirafika039@gmail.com', 'rafika cahyani', 'SMA MUHAMMADIYAH 1 MUNTILAN', 'Akuntansi', NULL, 1, 6, '20ece738f2d6c9d5debcda4c0a081853', '2018-07-06 04:33:04', '2018-07-08 02:38:45'),
('082233214994', 'abiel.chen.as@gmail.com', 'Abiel resmanto zain', 'Sma cikarang selatan .Bekasi', 'Ilmu Komunikasi', NULL, 4, 7, '6655a916408be1cabe1a03a6bdb75980', '2018-04-21 13:01:29', '2018-04-21 13:01:29'),
('082233516091', 'ilhamnurrohman7@gmail.com', 'ILHAM NUR ROHMAN', 'SMKN 1 PACITAN', 'Teknik Komputer', NULL, 5, 4, '65f98b3298506580fb840d1100d90c95', '2018-05-08 03:09:11', '2018-05-08 03:09:11'),
('082234556508', 'fmukhorobin@gmail.com', 'Fariza Mukhorobin', 'SMAN 1 Jogorogo', 'Teknologi Informasi', '18.82.0321', 5, 6, '32c5177eeefc4ee021501014f83855f4', '2018-07-05 10:16:48', '2018-07-05 10:16:48'),
('082234709036', 'binawanc@gmail.com', 'Binawan Ciptama', 'Smk n 1 pacitan', 'Ilmu Komunikasi', '18.96.0566', 7, 7, '8da7ec7200ba5f2defff926ba1f57040', '2018-07-19 04:20:38', '2018-07-21 00:17:52'),
('082236857876', 'fodjuriyand@gmail.com', 'Yosef Mariano Foju', 'Smk Sanjaya Bajawa', 'Teknik Komputer', NULL, 3, 6, '2535ea1718adacccefdfeec1a5017fc7', '2018-05-18 22:15:01', '2018-05-18 22:15:01'),
('082236975667', 'alexandrokasiwali@gmail.com', 'alexandro pratama kasiwali', 'SMAN 1 maumere', 'Teknologi Informasi', '18.82.0293', 5, 5, 'a07f2721d31956fdf4a7ecb421e0e7d4', '2018-06-20 10:13:56', '2018-06-20 10:13:56'),
('082237167099', 'Mukarakat99@Gmail.com', 'RAIDERICHO JOY WOGA', 'SMA st. DON BOSCO Ruteng', 'Teknik Komputer', '18.83.0176', 5, 4, '77cb7cd4bca064c40cd14dbce3dbd61a', '2018-07-12 20:41:22', '2018-07-12 20:41:22'),
('082237727236', 'yusufmk90@gmail.com', 'Yusuf Muhaimin Kristanto', 'SMK N 3 Yk', 'Ilmu Komunikasi', '18.96.0524', 9, 4, '551a5c8f227c8f459db5217a0b4ee3f4', '2018-07-19 14:39:24', '2018-07-19 14:39:24'),
('082238179878', 'ilhamsyah120@gmail.com', 'FIRDAUS SIDIK ILHAMSAH ', 'SMA AL FALAH HMM MIMIKA ', 'Sistem Informasi', '18.12.0673', 4, 4, '588ec6086358cf3212998a14523438c7', '2018-06-25 01:47:34', '2018-06-25 01:47:34'),
('082238540184', 'tinayapon@gmail.com', 'Yustina Yapon', 'SMA Negeri 1 Tanah Merah', 'Ilmu Pemerintahan', '18.94.0054', 8, 4, '95516b51d7b87de644585206a0b761bf', '2018-07-28 06:50:04', '2018-07-28 06:50:04'),
('082238901369', 'artha.perdana@gmail.com', 'Artha Perdana Joga Putera', 'SMK Negeri 1 Jayapura', 'Informatika', NULL, 9, 5, 'f3540ef2ef14485b9a81ac421d96d7cc', '2018-05-23 13:57:05', '2018-07-18 16:49:08'),
('082241863874', 'fareladnann@gmail.com', 'Farel Adnan', 'SMK N 2 Sewon', 'Ilmu Komunikasi', '18.96.0505', 4, 6, 'd916245cb067fb75e85f6d1c1ac84fff', '2018-06-07 06:14:28', '2018-06-07 13:43:16'),
('082242007920', 'taufikadi683@gmail.com', 'TAUFIK ADI SETYO', 'SMAN 3 MERANGIN', 'Sistem Informasi', '18.12.0637', 6, 4, '0a5a57dadbfa789ae250d49aeaebb765', '2018-05-24 02:45:43', '2018-05-25 09:23:23'),
('082242022078', 'primary.hibban.nurcholis@gmail.com', 'HIBBAN NURCHOLIS', 'SMA Negeri 2 Ngaglik', 'Sistem Informasi', NULL, 3, 5, '5aafe50d6a84cd7135908c5740a93e93', '2018-05-09 19:53:31', '2018-05-09 19:53:31'),
('082242023130', 'chandrayoga.10@gmail.com', 'chandra putra adi prayoga', 'smk n 2 sewon', 'Ilmu Komunikasi', NULL, 7, 7, '85a303db3629ab4bed11b56415f32491', '2018-05-20 04:48:25', '2018-05-20 04:48:25'),
('082242743875', 'dominicusharry29@gmail.com', 'Dominicus Harry Kurnianto', 'SMA Pangudi Luhur Sedayu', 'Teknik Komputer', '18.83.0135', 5, 5, '14071de4ce91f2c21f0de54ed81d74f2', '2018-04-23 00:55:31', '2018-04-23 00:55:31'),
('082242757660', 'chandrapangestu666@gmail.com', 'Candra pangestu', 'SMK', 'Sistem Informasi', '18.12.0659', 6, 6, 'c0d0ce7ce04be7af8c3997e99401b78b', '2018-05-27 16:34:23', '2018-05-27 16:34:23'),
('082243129281', 'arvipramudyantoro@gmail.com', 'Arvi Pramudyantoro ', 'SMKN 1 SUNGAILIAT ', 'Informatika', NULL, 4, 7, 'bd7d1c17ab442babf5efac5ae20a2c56', '2018-05-19 09:35:28', '2018-05-19 09:35:28'),
('082243234304', 'bintang.yhy@gmail.com', 'Muh. Arif Budiman', 'SMA N 1 PAJO', 'Ilmu Komunikasi', '18.96.0438', 2, 6, '0796b204c056c7b0efedbc7a312b187d', '2018-05-27 16:56:09', '2018-07-21 06:27:28'),
('082243428617', 'dikta789@gmail.com', 'Muhammad Dikta Wahyu Pratama', 'SMK negeri 1 Pleret', 'D3 - Teknik Informatika', '18.01.4103', 1, 5, '7517a9c2d4e184b67996ed31e038a157', '2018-05-01 15:23:36', '2018-05-01 15:23:36'),
('082244047892', 'hirtapamungkass@gmail.com', 'Hirta Pamungkas', 'SMK Yosonegoro Magetan', 'Informatika', '18.11.1805', 3, 5, '516d97e6ad3f68256b526426c326d14c', '2018-04-02 15:10:12', '2018-04-02 15:10:12'),
('082246390355', 'ryzardsheva@gmail.com', 'ADAMAS RYZARD SHEVCHENKO', 'SMKN 6 BALIKPAPAN', 'Teknik Komputer', NULL, 6, 6, '62d7f1de66a33c4eaee5e6d350323201', '2018-07-02 01:24:31', '2018-07-02 01:24:31'),
('082247185085', 'nackermanca@gmail.com', 'HARYO DOMINGGO RIWU', 'SMAN 8 kupang', 'Sistem Informasi', '18.12.0727', 9, 5, '5fed4d195ad20b89a39d1fbcf96b798e', '2018-07-19 05:29:51', '2018-07-19 05:29:51'),
('082247221795', 'azisbethan02@gmaill.com', 'Abdul azis bethan', 'Sma negeri 1 nagawutung', 'Teknik Komputer', NULL, 1, 4, 'eafa5937f5214f01278be93a8aac04b2', '2018-07-08 10:41:57', '2018-07-08 10:41:57'),
('082247547303', 'triyono37482@gmail.com', 'Tri yono', 'Sma muhammadiyah singkut', 'Teknik Komputer', NULL, 8, 5, 'b9cdd2a8c5a766487c4e83467899ff3e', '2018-05-22 01:09:00', '2018-05-22 01:09:00'),
('082247710628', 'yandijangi2@gmail.com', 'YANDIANTO UMBU JANGI', 'SMA NEGERI 1 WAIKABUBAK', 'Sistem Informasi', '18.12.0612', 2, 6, 'aa262687d41c92d096d8676edf6dacbb', '2018-05-15 13:35:26', '2018-05-15 13:35:26'),
('082247723052', 'nostihitarihun18@gmail.com', 'Nosti Hitarihun ', 'SMAN 1 SOE', 'Perencanaan Wilayah dan Kota', '18.86.0044', 7, 7, 'aee78f8c9cb45a110f50f3623050d268', '2018-05-23 05:48:14', '2018-06-09 14:48:46'),
('082248106334', 'samuellumantouw@gmail.com', 'Samuel Aldi Lumantouw', 'SMK NEGERI 1 NABIRE', 'Informatika', '18.11.2050', 8, 6, '9461ee3308bfcbaafad4037fab76b486', '2018-07-08 02:47:53', '2018-07-08 02:47:53'),
('082248222402', 'kokoasajaril@gmail.com', 'KOKO ASTRIARA SAJARIL', 'SMA NEGERI 2 KABUPATEN SORONG', 'Informatika', NULL, 2, 7, '785e9dd9775cbdf224b23c3c5efca323', '2018-05-17 14:10:33', '2018-05-17 14:10:33'),
('082248275924', 'muhammadtakdir212@gmail.com', 'MUH.TAKDIR', 'SMKN 2 MAJENE', 'Informatika', NULL, 2, 4, 'c96c6a90433d8da279100d48e3b5f105', '2018-07-06 17:08:31', '2018-07-06 17:08:31'),
('082248287152', 'ahlulakbar2000@gmail.com', 'MUHAMMAD AHLUL AKBAR', 'SMA ', 'Teknologi Informasi', NULL, 8, 7, '30da6ec5b3dba9280216ec1776e70f02', '2018-05-13 23:24:53', '2018-05-13 23:24:53'),
('082249864612', 'gabrielnedved4@gmail.com', 'Gabriel Nedved Mangayuk', 'SMAN 2 Samarinda', 'Informatika', '18.11.1997', 4, 5, 'a18a5dc88a319ab2b98a60508e113593', '2018-07-15 08:41:40', '2018-07-15 08:41:40'),
('082250383115', 'ugaawi@gmail.com', 'Muh anugrah', 'Smkn1 tanjung selor', 'Teknologi Informasi', NULL, 2, 7, '87c40468750da06ab177ea1208b816a2', '2018-06-07 05:46:14', '2018-06-07 05:46:14'),
('082250745947', 'hizkiajr7@gmail.com', 'Hizkia Efrat Barselen', 'SMA', 'Sistem Informasi', NULL, 1, 5, '31057531206fb316b7ee52c926de48b1', '2018-05-16 08:18:58', '2018-05-16 08:18:58'),
('082251615187', 'Rexgieanara07@gmail.com', 'Rexgie Anara', 'SMA NEGERI 1 LINGGANG BIGUNG', 'Ilmu Komunikasi', NULL, 8, 7, 'd00b425c3550bc1cf07090c39d20256a', '2018-07-20 06:19:17', '2018-07-20 06:19:17'),
('082251960990', 'singgihadi42@gmail.com', 'Singgih Adi Nugroho', 'SMAN 1 Sewon', 'Informatika', NULL, 9, 5, '9929ee74036d89ed4812c89d52464ec6', '2018-05-24 08:43:58', '2018-05-24 08:43:58'),
('082252535854', 'ongkyarifwibowo97@gmail.com', 'Ongky Arif Wibowo', 'SMAN 2 BANJARBARU', 'D3 - Teknik Informatika', '18.01.4113', 6, 5, '58c9c4856706ac80b7efc0a88fc4d4c5', '2018-05-06 00:53:02', '2018-07-23 09:56:01'),
('082254366463', 'erdinaxnvac@gmail.com', 'Muhammad Erdianto', 'SMAN 3 CIBINONG', 'Sistem Informasi', '18.12.0636', 6, 7, 'ef1727eecaf6b2ca12bf150fc20540ee', '2018-05-17 03:15:22', '2018-06-05 05:37:17'),
('082254841164', 'elisatikasni@gmail.com', 'ELISA TIKASNI', 'SMKN 1 BUKIT SAWIT', 'Teknik Komputer', NULL, 4, 7, '5b0ec9dd8a1f3db31af44c505d5c3c7b', '2018-05-16 09:57:40', '2018-05-16 09:57:40'),
('082255117808', 'adityaadtheizher@gmail.com', 'Aditya Ramadhan', 'SMAN 2 PALANGKARAYA', 'Sistem Informasi', NULL, 4, 5, '6d3ced66408d3754dc8bf921d3211bcd', '2018-05-03 09:03:40', '2018-05-03 09:03:40'),
('082255120085', 'muhnadifarafi@gmail.com', 'Muhammad nadhif arrafii', 'Sma patra dharma balikpapan', 'Ilmu Komunikasi', '18.96.0416', 9, 7, 'a0810138a4b369c1ce08eeffd44f9c8e', '2018-07-27 05:49:14', '2018-07-27 05:49:14'),
('082255233277', 'rizkykinata2233@gmail.com', 'abwabarrizky kinatka', 'SMKN 1 simpang empat', 'Sistem Informasi', '18.12.0791', 7, 4, '3cad08fd9dc6b291b09d587eba8815ff', '2018-07-27 07:44:29', '2018-07-27 07:44:29'),
('082255728584', 'sabdan20112016@gmail.com', 'Abdan Syakuro', 'SMAN 2 TARAKAN', 'Sistem Informasi', '18.12.0603', 2, 6, '49d8917673f3712cf12cecda6a5f1714', '2018-05-18 04:36:35', '2018-05-23 23:57:20'),
('082256403607', 'lapamungkas246@gmail.com', 'Trio Laras Pamungkas', 'SMAN 1 TAMIANG LAYANG', 'Teknologi Informasi', NULL, 6, 6, 'a10f0f1f15b7bae19872180029873b7e', '2018-07-07 03:38:59', '2018-07-07 03:38:59'),
('082256878737', 'candramuki@outlook.com', 'Candra Muki', 'SMKN 2 Sendawar', 'Informatika', '18.11.2117', 8, 5, '089e0f49ffcdd1a66241e7b663367cdc', '2018-07-19 05:16:51', '2018-07-19 05:16:51'),
('082259165493', 'farazialgazaly77@gmail.com', 'Muh farazi', 'MAN MANSALEAN', 'Sistem Informasi', NULL, 7, 5, '1c1bff0c53186e69251e4a632eda39dd', '2018-04-29 08:06:07', '2018-07-24 08:08:47'),
('082259211005', 'abdulazizyusuf29052000@gmail.com', 'Abdul aziz yusuf', 'SMAN 1 TERNATE', 'Ilmu Pemerintahan', NULL, 1, 4, '8dfb5b0fffd13081c8c8a0ef5db38602', '2018-07-20 11:28:55', '2018-07-20 11:28:55'),
('082260861499', 'muhammadhafidh0928@gmail.com', 'Muhammad ihsanul hafidh', 'SMAN 3 muara bungo', 'Informatika', NULL, 4, 5, '1c70a1035bee2ecfc1ccbf47721de087', '2018-07-19 06:10:42', '2018-07-19 06:10:42'),
('082266237266', 'selestinocabreira22@gmail.com', 'Selestino Cabreira Do Rosario', 'SMK N 1 ATAMBUA', 'Perencanaan Wilayah dan Kota', '18.86.0055', 9, 6, '5d81f122202d40035ced869cab48455c', '2018-07-11 19:44:52', '2018-07-18 04:28:18'),
('082266355531', 'yudhaglk@gmail.com', 'Yudha Dwi Yulianto ', 'SMK NEGRI 2 ENDE', 'Informatika', '18.11.2154', 7, 5, 'b1114a3446b529afa31204cc03734557', '2018-07-27 14:12:01', '2018-07-27 14:12:01'),
('082269152440', 'rahmatdij31@gmail.com', 'RAHMAT SOBIRIN', 'SMKN 2 SAROLANGUN', 'Sistem Informasi', '18.12.0591', 3, 4, '06e815c9de529fc767ce3c44cf791ce6', '2018-07-02 09:41:08', '2018-07-02 09:41:08'),
('082269515233', 'mardalenarstam@gmail.com', 'Mardalena', 'SMA Negeri 04 OKU', 'Ilmu Komunikasi', NULL, 8, 7, '69c00f32c09fcb58d635e45b6d8980fa', '2018-07-22 01:47:58', '2018-07-22 01:47:58'),
('082274585406', 'audypayday2@gmail.com', 'Audy Akbar Panjaitan', 'SMK TRITECH INFORMATIKA MEDAN', 'Sistem Informasi', '18.96.0656', 4, 7, '643dea0a07e6e9ebe8dad186528c5570', '2018-07-27 08:43:56', '2018-07-27 08:43:56'),
('082275002985', 'muhammadfadilsiak57@gmail.com', 'Muhammad fadhil', 'SMA', 'Informatika', NULL, 9, 7, '0b2ee2bc83e982711a24752dccba5531', '2018-05-11 08:03:56', '2018-05-11 08:03:56'),
('082278272550', 'rianbae009@gmail.com', 'Tri yono', 'Sma muhammadiyah singkut', 'Teknik Komputer', NULL, 6, 6, 'ff3898a5f18e57ac8d1c1135c887fd5b', '2018-06-08 22:24:50', '2018-06-08 22:24:50'),
('082278501415', 'trianton13012000@gmail.com', 'Tri Anton', 'Sma muhammadiyah singkut', 'Informatika', NULL, 9, 4, '74fc9fbf0a556d1c8364a67aed9fc05b', '2018-06-05 14:28:23', '2018-06-07 13:44:18'),
('082279449504', 'Joevanda01@gmail.com', 'Joe vanda', 'Sman 1 merangin', 'Informatika', '18.11.1837', 4, 5, '975498f58d1e9111d2240cc0b4e9e0aa', '2018-04-21 10:14:15', '2018-04-21 10:14:15'),
('082279994733', 'alparizki28@gmail.com', 'Alfa rizky Wibowo', 'PKBM abdi bangsa', 'Teknologi Informasi', '18.82.0252', 2, 4, 'de6ae3541e5d79d442bc12714bfc0951', '2018-04-28 13:41:08', '2018-04-28 13:41:08'),
('082280584961', 'tarisa.elf02@gmail.com', 'Tarisa Nurma Novita', 'SMK Yaperbel 2', 'Ilmu Komunikasi', '18.96.0645', 7, 7, '8d0cadae8c642d7c2975376d30887c48', '2018-07-26 07:24:31', '2018-07-26 07:24:31'),
('082281394919', 'cahskup23@gmail.com', 'SATYO INDARLAKSONO ', 'SMA N 1 PUTRI HIJAU', 'Teknik Komputer', '18.83.0212', 5, 7, 'dc2f6c6f23fcac192684801658746395', '2018-07-19 01:07:52', '2018-07-19 01:07:52'),
('082281601274', 'margonovivo@gmail.com', 'Margono', 'SMA N1 GUNUNG AGUNG', 'Informatika', NULL, 3, 5, '43d6becc0a4f97dea249a527b4890767', '2018-05-19 13:07:14', '2018-05-19 13:07:14'),
('082281887883', 'purnamasariolvylidya@gmail.com', 'Olvy Lidya Purnama Sari', 'SMA PGRI PAGARALAM', 'Hubungan Internasional', NULL, 5, 5, '0f7db6541d8de4b399aa8ecf466d7d69', '2018-07-19 08:58:36', '2018-07-19 08:58:36'),
('082281910460', 'Musthofakamal5@gmail.com', 'MUSTOPA', 'SMK N 1 SEPULU', 'Teknik Komputer', NULL, 5, 5, 'bd4ae62d9846007ff58f9e7a15a5bb09', '2018-06-06 03:05:25', '2018-06-06 03:05:25'),
('082282539799', 'kalitrack354@gmail.com', 'jimi taufik nuraulia', 'SMK NEGERI 1 DOMPU', 'Informatika', '18.11.1808', 2, 5, '8b6dd256a0ec12857aa0d6e63ebd8bec', '2018-04-21 07:25:22', '2018-04-21 07:25:22'),
('082282875561', 'hendriprasetyo92@gmail.com', 'Hendri Prasetyo ', 'SMA PGRI 268 PKL KERSIK', 'Sistem Informasi', '18.12.0692', 9, 5, 'f2dcddcd5dce209b27257afb0ab881c9', '2018-06-08 08:50:40', '2018-07-20 11:56:06'),
('082283003226', 'adinatha28@gmail.com', 'Adinatha Dharma Putra', 'SMA', 'Teknologi Informasi', NULL, 3, 7, 'd20f8117ba6139af52c2398e0e6a611e', '2018-07-18 11:47:06', '2018-07-18 11:47:06'),
('082283303562', 'dedirahmadi731@gmail.com', 'Dedi Rahmadi', 'SMK NEGRI 1 TEBINGTINGGI', 'Akuntansi', NULL, 5, 4, '573f4a3edf413ae2af566f7fd662ea03', '2018-05-30 11:59:45', '2018-05-30 11:59:45'),
('082285014925', 'yellyisnainii@gmail.com', 'Yelly Isnaini Syam', 'SMKN 4 PEKANBARU', 'Informatika', '18.11.1824', 6, 5, 'ad39e092fbe6592674cfeea8eba79ba6', '2018-04-21 05:43:29', '2018-04-22 09:39:39'),
('082285428174', 'yettykus7@gmail.com', 'yeti kusmiati', 'Smk Negeri 2 Pelepat ilir', 'D3 - Manajemen Informatika', NULL, 6, 4, '724424b2209e60c553c85546c9a19bf6', '2018-05-28 08:26:49', '2018-05-28 08:26:49'),
('082285697153', 'meitritita@gmail.com', 'Tita meitri vidjayanti', 'SMA negeri 1 rengat', 'Sistem Informasi', '18.12.0675', 1, 4, 'ee0d2f4e786fced2135a198456acbae6', '2018-06-10 00:22:31', '2018-06-10 00:22:31'),
('082288909890', 'huangsteven8888.sh@gmail.com', 'Steven Huang', 'SMKS YPPI TUALANG', 'Sistem Informasi', '18.62.0116', 6, 5, 'aa7ed8ea815eff50cb172b28ed2315cf', '2018-07-26 05:34:23', '2018-07-26 05:35:53'),
('082289004225', 'Ndevy1700@gmail.com', 'Devy Novianti', 'SMK Negeri 1 Manggar', 'Informatika', NULL, 7, 5, 'c0a3a10b17c387023983fee7ee4d48d4', '2018-05-01 05:36:18', '2018-05-01 05:36:18'),
('082290103450', 'hendisinambela@gmail.com', 'Hendi Dwi Saputra Sinambela', 'SMK N 1 PONJONG', 'D3 - Teknik Informatika', '18.01.4135', 8, 7, '19ec7f397b9a437fa41372f5c62eb37a', '2018-07-23 07:13:59', '2018-07-23 07:13:59'),
('082290107461', 'irmaanisyah06@gmail.com', 'Irma anisyah kotta', 'Sma negeri 11 ambon', 'Sistem Informasi', NULL, 1, 4, '7699cdaefbd8a31a88a2e9dc35223101', '2018-07-22 08:03:55', '2018-07-22 08:03:55'),
('082290716881', 'Kadekray86@gmail.com', 'Ni Kadek Ray Yuliyastini', 'SMAN 1 Bonegunu', 'Akuntansi', '18.93.0066', 7, 5, 'e793bf49ad27bc6e59d53ef5d2f9a5f4', '2018-07-26 00:29:32', '2018-07-26 00:29:32'),
('082292275726', 'ayuira39@gmail.com', 'Akhmad Yudhistira', 'SMK NEGRI 1 TANJUNG', 'Sistem Informasi', '18.12.0652', 1, 7, '39d8e634bedc0570970bd81e0fb6a6be', '2018-05-21 03:27:10', '2018-07-25 07:12:32'),
('082292458877', 'aidaputri505@gmail.com', 'Aida Putri ', 'SMK 1 TONGKUNO ', 'Teknik Komputer', '18.83.0168', 1, 7, 'cf72c249fe82dab8a5a66cd36e37aa0e', '2018-04-05 09:17:11', '2018-05-22 04:58:25'),
('082292772898', 'fatihmubarak16@gmail.com', 'Muhammad Fatih Mubarak', 'MAN 2 KULONPROGO', 'Teknologi Informasi', '18.82.0330', 9, 6, '7f634004a675f54871a03fc1c93c486c', '2018-07-14 05:06:59', '2018-07-14 05:06:59'),
('082293016055', 'Ahmadfikri986@gmail.com', 'Ahmad Fikri Alfath', 'SMAN 1 BUNGKU TENGAH', 'Teknologi Informasi', NULL, 3, 6, '0e76f01b228b19914c5a2eb44d576bf2', '2018-07-06 07:24:41', '2018-07-06 07:24:41'),
('082293807813', 'yasrilkemas11@gmail.com', 'yasril kemas gonibala', 'sma n 2 kotamobagu', 'Teknik Komputer', '18.83.0238', 3, 5, '3f97f951ac43e58d69d2a287c41df599', '2018-07-27 07:39:46', '2018-07-27 07:39:46'),
('082293871862', 'agustuslam04@gmail.com', 'Agus tuslam', 'Smk negri 1 malili', 'Informatika', NULL, 9, 5, '3b6c02adc47d4436689de752707d1366', '2018-07-18 12:31:46', '2018-07-18 16:35:43'),
('082296669052', 'fardhaltaqwa@gmail.com', 'Fardhal Taqwa', 'SMAN 1 BONEGUNU', 'D3 - Teknik Informatika', '18.01.4150', 3, 7, 'ad5828ddc7d920ca19780ad1054522f7', '2018-06-08 00:34:05', '2018-07-20 01:19:12'),
('082314153463', 'sangrizkyrivaldo@gmail.com', 'Muhammad Rizky Rivaldo', 'SMK Muhammadiyah 1 Yogyakarta', 'Sistem Informasi', '18.12.0681', 7, 4, '32b33d964ee324ba74197ebd2a2be375', '2018-05-28 09:23:05', '2018-07-23 07:23:29'),
('082315218673', 'gzalih0@gmail.com', 'Galih Rizal Muhammad', 'SMK NEGERI 1 CIAMIS', 'Informatika', NULL, 8, 6, '397e9223eb0d07e2479379f0bac5192a', '2018-07-11 15:05:38', '2018-07-11 15:05:38'),
('082316028833', 'rizqidwilestari@gmail.com', 'Rizqi dwi lestari', 'MA As sakienah', 'Ekonomi', '18.91.0048', 9, 6, '2659ad06f219172c661a5b4883c86a39', '2018-07-16 12:18:24', '2018-07-17 14:09:30'),
('082322120943', 'rubylaksadana@gmail.com', 'Ruby Laksa Dana', 'SMK Penerbangan AAG Yogyakarta', 'D3 - Teknik Informatika', '18.01.4154', 9, 6, 'f91d34550f4181179a8eb4ba13412514', '2018-07-21 07:38:38', '2018-07-21 07:38:38'),
('082322501199', 'dionion112@gmail.com', 'Dionisius Marsel Happy Wastoto', 'Sma Tarakanita', 'D3 - Manajemen Informatika', NULL, 4, 5, 'c42f7dbad23cd455a87f9863e6ab7b17', '2018-05-17 15:18:43', '2018-05-17 15:18:43'),
('082323355459', 'karinaalysia12@gmail.com', 'Karina Alysia', 'Sma muh 7 yk', 'Ilmu Komunikasi', NULL, 2, 4, 'edbb82e0923b51641b3df88e73d721d7', '2018-07-26 03:02:43', '2018-07-26 03:02:43'),
('082323750797', 'istii084@gmail.com', 'Istiqomah', 'SMK Muhammadiyah 3 Giriwoyo', 'Ilmu Komunikasi', NULL, 8, 5, 'c9376d2c0126682f58ff44872e661007', '2018-07-26 13:35:00', '2018-07-26 13:35:00'),
('082324237797', 'iskandardeni442@gmail.com', 'Muhammad Deni Iskandar', 'SMK N 2 Yogyakarta', 'Arsitektur', '18.84.0101', 7, 7, '02d41be122e10561656893be8cbfa898', '2018-07-23 06:43:00', '2018-07-23 06:48:40'),
('082324640646', 'sumiyatiturnip@yahoo.com', 'Sumiyati', 'SMK Muhammadiyah Salaman', 'Informatika', '18.11.1810', 2, 7, 'da39a4e4267b4f86d36a48e5a63497ea', '2018-04-02 11:25:31', '2018-04-02 15:18:45'),
('082324979522', 'billasa655@gmail.com', 'Sal Sabila Wijayanti', 'SMA', 'Sistem Informasi', '18.12.0658', 8, 4, 'cdffb9e519073c7054eedfe6b6a904ab', '2018-06-09 13:12:06', '2018-06-09 13:12:06'),
('082331699004', 'kzofajar@gmail.com', 'Rohmad Fajarudin', 'SMK Negeri 1 Pedan', 'Informatika', '18.11.2035', 7, 6, '626f3ceb5155519e496233235175ef87', '2018-06-04 04:22:11', '2018-06-04 04:22:11'),
('082332783376', 'arshyeta99@gmail.com', 'DEWI ARSHIETA LAKSMI', 'SMK N 1 PACITAN', 'Informatika', '18.11.2123', 6, 4, '847308012ec9224fbfe82a864dfc79b2', '2018-07-22 03:32:39', '2018-07-22 03:32:39'),
('082334739518', 'hwiyata@gmail.com', 'Goran Nova Henrik Wiyata', 'SMKN 5 Yogyakarta', 'Sistem Informasi', NULL, 2, 7, '9625cddfa4a4d6ff2decbd655385f692', '2018-05-21 15:39:25', '2018-05-21 15:39:25'),
('082338158383', 'rohmatdhani56@gmail.com', 'Rohmat Dhani', 'SMA N 1 PURWOSARI', 'Informatika', '18.11.1852', 6, 5, '887ad431606242581f2dcb58cc964730', '2018-04-28 09:55:17', '2018-04-28 09:55:17'),
('082339508154', 'diniizma@gmail.com', 'Izmanul Hayat', 'SMA N 1 KOTA BIMA', 'Informatika', '18.11.2005', 1, 4, 'd5e436916aea374713ec877360e2cea3', '2018-07-14 10:13:19', '2018-07-14 10:13:19'),
('082340182538', 'imamsatrya52@gmail.com', 'Imam satria auwaluddin', 'Smkn 1 dompu', 'D3 - Teknik Informatika', NULL, 9, 7, '1faae7f9e9b06c0732b60a19a03f8e43', '2018-05-20 11:46:26', '2018-07-21 06:13:41'),
('082340213246', 'yohanesmau884@gmail.com', 'Yohanes Paulus Ericantana Mau', 'Smk Informatika Uyelindo Kupang , NTT', 'Informatika', NULL, 3, 4, '506c7c3265f8e2c0daa98f054250bd2e', '2018-07-16 13:09:31', '2018-07-16 13:09:31'),
('082347741100', 'amrildoumar07@gmail.com', 'Amril Dano Umar', 'SMA NEGERI 1 KOTA TERNATE', 'Sistem Informasi', NULL, 4, 6, '0e031f18e8717aaa18fd3da2257919bd', '2018-07-28 00:04:33', '2018-07-28 00:04:33'),
('082347845590', 'elsaelsianadeteti@gmail.com', 'Mathilda Elsiana Teti', 'SMK Negri 1 Berau', 'Ilmu Komunikasi', '18.96.0558', 7, 4, 'b2530712c29fb041907b9dad2539c93f', '2018-07-22 04:43:59', '2018-07-22 04:43:59'),
('082348886271', 'komangnissa@gmail.com', 'mang boga bagaskara', 'SMK N 1 palu', 'Teknik Komputer', NULL, 6, 7, '53b5238b9ac7eb5f2eab93d945ea8820', '2018-07-22 01:28:16', '2018-07-22 01:28:16'),
('082353100501', 'gamaexecel17@gmail.com', 'vianey paskalis derosari laka gama', 'sman 1 teluk batang', 'Informatika', NULL, 9, 7, 'b7ce976eec43678796a1ad5b4aade332', '2018-05-21 03:24:03', '2018-05-21 03:24:03'),
('082353242617', 'tasyafadila05@gmail.com', 'Tasya Fadila Serdin ', 'SMKN 1 BENGALON ', 'D3 - Teknik Informatika', NULL, 2, 6, '18292d5a67badad86085fb06c0c5b6ef', '2018-05-29 01:07:34', '2018-05-29 01:07:34'),
('082359148410', 'jhosuazambrud@gmail.com', 'Joshua Zambrud Ouw', 'Smak St. Yoseph Kalabahi', 'Informatika', NULL, 9, 5, '383968e5280443c0febbedd888d7eb84', '2018-07-26 14:27:22', '2018-07-26 14:27:22'),
('082372847671', 'didik200900@gmail.com', 'Didi kurniadi', 'SMK Negeri 3 Lubuklinggau', 'Sistem Informasi', NULL, 9, 6, '7e7e1a1bb434ec472cb1f445d4e08988', '2018-05-28 02:14:39', '2018-05-28 02:14:39'),
('082377751455', 'atikaagyo02@gmail.com', 'Atika suri', 'SMA', 'Sistem Informasi', NULL, 1, 7, '8469a44d9eac086d2f4ab848822a0414', '2018-07-21 09:38:04', '2018-07-23 07:29:35'),
('082386099513', 'safuanmuhammad1998@gmail.com', 'Muhammad Safuan ', 'SMK', 'Ilmu Komunikasi', '18.96.0427', 9, 7, 'd6d9fb55e554fb15bed52ceeb5ac09ee', '2018-05-22 00:22:02', '2018-05-22 09:18:19'),
('082387155310', 'bayuwijaya535@gmail.com', 'Bayu Wijaya Kusuma ', 'MA 1 lahat', 'Teknologi Informasi', '18.82.0258', 9, 7, 'b9cdf711c7d8727a9f27add9171c92a7', '2018-05-06 02:56:45', '2018-05-06 02:56:45'),
('082393568009', 'ardiprahadama@gmail.com', 'ARDI IBRAHIM', 'SMAN 1 SEGERI', 'Akuntansi', '18.93.0059', 3, 6, '8b8ed5d332de3236f041b930d0a6bb43', '2018-07-14 05:15:05', '2018-07-17 07:00:33'),
('082395401819', 'julia.momongan10@gmail.com', 'JULIA MARIA VELINCIA MOMONGAN', 'SMA KATOLIK STELLA MARIS SURABAYA', 'Informatika', '18.11.2156', 1, 5, 'f84eb55044e660399c6cbd5826f6c8ca', '2018-07-17 14:21:39', '2018-07-17 14:21:39'),
('082398708992', 'rahmhii06@gmail.com', 'Rahmi', 'SMAS Muhammadiyah Bintuni', 'Ilmu Komunikasi', '18.96.0496', 7, 7, '404f58fafbe7e3ff38b3dab9818ee224', '2018-06-11 06:43:36', '2018-06-11 06:43:36'),
('082398719050', 'sjihan671@gmail.com', 'shalsa jihan fahira', 'smk muhammadiyah 1 tempel', 'D3 - Manajemen Informatika', NULL, 4, 4, 'f02fc023c09e0a060132c21033d3a0d7', '2018-05-19 13:06:02', '2018-05-19 13:06:02'),
('082399523286', 'Rezaborut@gmail.com', 'Muhammad guntur borut', 'SMAN 3 TUAL', 'Akuntansi', NULL, 6, 4, 'aae4dc3fd657cfc77f8cdf592be9f07a', '2018-04-21 12:05:20', '2018-04-21 12:05:20'),
('08247065992', 'marioyfropa@gmail.com', 'Mario yosef f ropa', 'SMK SANJAYA BAJAWA', 'Informatika', NULL, 9, 4, '34b695f3b787d6563ce7e7874d4e7788', '2018-07-27 00:13:23', '2018-07-27 00:13:23'),
('083105231688', 'rahmayantitriutami19@gmail.com', 'rahmayanti tri utami', 'man 2 sleman', 'Ilmu Komunikasi', NULL, 4, 5, 'fd0abe46aa3262939d231ae5cf72ab8d', '2018-04-22 13:35:00', '2018-04-22 13:35:00'),
('083105477052', 'yusufagung.ps9999@gmail.com', 'Yusuf Agung Nugroho', 'SMKN 1 GIRISUBO', 'D3 - Teknik Informatika', NULL, 3, 7, '00bdfbc732bd77d21b26a0311e1b582e', '2018-07-23 03:19:41', '2018-07-24 04:36:04'),
('083115559355', 'ekakurniawan077@gmail.com', 'EKA KURNIAWAN ARISANDY', 'SMAN 1 MASBAGIK', 'Informatika', '18.11.2209', 3, 7, '07824ffb2a144c3d248632f520dcedfd', '2018-07-25 13:40:27', '2018-07-25 13:40:27'),
('083122660482', 'tria0301@gmail.com', 'Fitriana budhi permatasari', 'SMK N 1 GIRITONTRO', 'Teknik Komputer', '18.83.0210', 3, 6, '6c2d4e9b24433b5c7163c33068eb2605', '2018-07-23 00:38:36', '2018-07-23 00:38:36'),
('083126611139', 'deaarifana24@gmail.com', 'DEA ARIFANA PERMATASARI', 'MAN 2 KULON PROGO', 'D3 - Manajemen Informatika', NULL, 5, 7, '4e0811eac7003c60ac424958a1a72ed8', '2018-05-16 23:05:49', '2018-05-16 23:05:49'),
('083140965200', 'asameda10@gmail.com', 'Muhammad Taufik', 'SMk TI AIRLANGGA ', 'Ilmu Komunikasi', NULL, 7, 4, '77333d40e786f359328054eabe0fe3c4', '2018-05-25 04:31:34', '2018-05-25 04:31:34'),
('083168404553', 'muhammadalkhofiqi@gmail.com', 'Muhammad Alkho Fiqi', 'sman 1 negeri agung', 'Teknologi Informasi', NULL, 9, 7, 'a80c14f222f98ab78d0c478ed8ace7b2', '2018-05-17 05:03:01', '2018-05-17 05:03:01'),
('0833', 'primontarigan123@gmail.com', 'Primonta tarigan', 'Sma santa maria kaban jahe', 'Teknik Komputer', NULL, 5, 6, '20b3b850f00451c0487525317f5e7075', '2018-07-14 08:39:10', '2018-07-14 08:39:10'),
('083815155382', 'Herliandwi@gmail.com', 'Herlian Dwi Prianka', 'SMAN 1 Pamarayan', 'Informatika', NULL, 9, 4, '8754be3c22f0d681e02ddf51964f5a05', '2018-04-23 10:46:03', '2018-04-23 10:46:03'),
('083823911783', 'divanykoto297@gmail.com', 'Divany Arviora Koto ', 'SMKN 2 YK', 'Ilmu Komunikasi', NULL, 7, 4, '112cede943fd01c5081a271a7b6fcaf3', '2018-07-08 06:14:46', '2018-07-08 06:14:46'),
('083840302862', 'sabilillah.nur99@gmail.com', 'NUR SABILILLAH ', 'SMK MUHAMMADIYAH 1 MOYUDAN ', 'Informatika', NULL, 5, 5, '46d8e01edb251848f2d2daf47e887560', '2018-04-24 06:20:01', '2018-04-24 06:20:01'),
('083840444199', 'jaluatmaja1@gmail.com', 'Jalu Atmaja Wirangi', 'Smk muhammadiyah 1 moyudan', 'Informatika', NULL, 8, 5, '651f28c778c602115a31aea27ae60f1a', '2018-04-22 04:32:34', '2018-04-22 04:32:34'),
('083840511222', 'sevingendut@gmail.com', 'Sevin angga nuransyah pambudi', 'SMA N 1 DLINGO', 'Informatika', '18.11.1820', 1, 6, '090f7740154f8c03f378b8f3685cc568', '2018-05-14 03:53:00', '2018-05-22 02:31:20'),
('083842784862', 'rofikh1100@gmail.com', 'Rofik Hidayat', 'SMK 1 Bantul', 'Teknik Komputer', NULL, 9, 5, 'e7c4a18be9df3e85c438591e726a1f44', '2018-05-22 02:37:32', '2018-05-22 02:37:32'),
('083843663341', 'indrajati637@gmail.com', 'INDRAJATI', 'SMA N 1 KOKAP', 'Sistem Informasi', '18.12.0629', 2, 4, 'dbd455437f78f1f71952bc31e90e689c', '2018-06-15 06:56:13', '2018-06-15 06:56:13'),
('083845231208', 'deniagastya58@gmail.com', 'Denny Surya Agastya', 'SMK', 'Informatika', '18.11.1906', 1, 6, 'fc1bc38f89f6c339d8002d90fde9b7c8', '2018-07-08 05:23:29', '2018-07-08 05:23:29'),
('083846346384', 'anandamohammadpakece@gmail.com', 'AnandaMohammadPakece @gmail.com', 'MA DARUNNAJAH', 'Teknologi Informasi', NULL, 3, 7, '176d8baecddd3f6c37369b85a9e6379f', '2018-07-26 18:21:33', '2018-07-26 18:21:33'),
('083857591592', 'fahmiym13@gmail.com', 'Fahmi Yahya Mubarok', 'SMA Negeri 1 Imogiri', 'Informatika', '18.11.1945', 1, 7, 'acfa3fbc1f6d1b6105ec40494b37c363', '2018-05-23 11:53:23', '2018-05-23 11:53:23'),
('083862580326', 'afifahwns@gmail.com', 'Wahyu Nurafifah', 'SMA N 2 Grabag', 'Ilmu Komunikasi', '18.96.0654', 2, 7, '241ab71de173a5c8b4a95d98a12d7549', '2018-07-27 07:50:17', '2018-07-27 07:50:17'),
('083863035693', 'naniknurr875@gmail.com', 'Nanik nurhayati', 'Smk Muh. Cangkringan', 'D3 - Manajemen Informatika', NULL, 1, 5, '48a189335f73a37ae4faa95d42c56dff', '2018-07-28 12:30:58', '2018-07-28 12:30:58'),
('083865707810', 'rezaadriyanto12@gmail.com', 'Reza Adriyanto ', 'SMK N 1 SEYEGAN ', 'Teknik Komputer', NULL, 4, 4, '6993b655065b1ff7f68d298984765dc6', '2018-07-26 03:24:29', '2018-07-26 03:24:29'),
('083867252437', 'iqbalhanafi1722@gmail.com', 'Muhammad Iqbal Hanafi', 'SMA N 3 Bantul', 'Informatika', NULL, 8, 7, '2220ecc591dfe082f86bf7bc54d63ac5', '2018-05-17 11:01:47', '2018-05-17 11:01:47'),
('083867302133', 'nugijuan141@gmail.com', 'Nugi Juan Hendrawan', 'SMKN 1 WONOSARI', 'D3 - Teknik Informatika', '18.01.4127', 9, 5, 'b6d9650124e05b953c8867f99d9e6f1a', '2018-05-18 14:05:06', '2018-05-18 14:05:06'),
('083867677667', 'andremiko.012@gmail.com', 'ANDREMIKO DEDE BOY SANDI', 'SMA N 1 TURI', 'Ilmu Komunikasi', '18.96.0426', 8, 7, '07ba0f324f8ac86abb779cda1633da4b', '2018-06-20 09:02:16', '2018-06-20 09:02:16'),
('083869038025', 'bimbimsatrya@gmail.com', 'Kelvin bima satrya', 'SMKN 1 GIRISUBO', 'D3 - Teknik Informatika', NULL, 3, 7, '5f9bf307397547a1a4b15a9ec558a4f8', '2018-07-23 03:19:44', '2018-07-23 03:19:44'),
('083869367993', 'lianengsih25@gmail.com', 'LiaNengsih', 'SMK N 1 Girisubo', 'D3 - Manajemen Informatika', NULL, 1, 4, '7ca2810d92fb60b600a8a734f0a34acf', '2018-07-28 08:52:06', '2018-07-28 08:52:06'),
('083869393999', 'renny.yulliaty26@gmail.com', 'Renny Yulliaty', 'SMK NEGRI 5 YK', 'Ilmu Komunikasi', '18.96.0570', 1, 7, '95fe9d3d29d40b854978497e8d6aed55', '2018-07-23 02:44:28', '2018-07-23 02:44:28'),
('083869715623', 'widyasafitri474@gmail.com', 'Widiya Safitri', 'SMAN 1 Karangmojo', 'D3 - Manajemen Informatika', NULL, 8, 6, '3f8e331fbfd0c99b6b5a3177e32a1c1a', '2018-05-24 15:21:08', '2018-05-24 15:21:08'),
('083874271843', 'fzaki147@gmail.com', 'Fauzi Zaki', 'SMK Wisata Indonesia', 'Informatika', NULL, 1, 7, 'ec290d8ba33ff732c1058a6376d90cae', '2018-07-26 13:43:04', '2018-07-26 13:43:04'),
('083875976688', 'kikinur500@gmail.com', 'Nur Muhammad Rizki', 'SMK Yappi Wonosari ', 'D3 - Manajemen Informatika', NULL, 1, 7, '4e513b8384d92a4caf834df0eb0ba49b', '2018-04-02 03:35:20', '2018-04-02 03:35:20'),
('083877788692', 'shintaasmain@gmail.com', 'Shinta Asma\'in', 'SMA N 1 DLINGO', 'D3 - Manajemen Informatika', NULL, 6, 5, 'f0e6e30454b15181fcfc205f5db410fb', '2018-05-10 10:57:37', '2018-05-10 10:57:37'),
('083895492335', 'khoirul1577@gmail.com', 'ISKHOIRUL ANAM', 'SMKN 2 SURAKARTA', 'D3 - Teknik Informatika', NULL, 7, 6, 'e11cd22a0d9dfa89fa1b8b2ba099ca8d', '2018-07-11 13:09:30', '2018-07-11 13:09:30'),
('083896368500', 'nurrohmanhfz46@gmail.com', 'Nurrohman Hafidz Oktavianto Mahandaru', 'Sma n 2 playen', 'Sistem Informasi', '18.12.0578', 6, 7, '1213a15ea478633e87928ede0bf3a1a5', '2018-05-22 03:14:24', '2018-05-22 03:14:24'),
('085102133520', 'yunitasetya78@gmail.com', 'Yunita Setyaningrum ', 'MAN 3 Sleman', 'Sistem Informasi', NULL, 6, 4, '6ae95a480e2d1b97620f679943835dc7', '2018-07-27 05:51:55', '2018-07-27 05:51:55'),
('085139005273', 'asyifa@gmai.com', 'nurasyifa', 'smk 165 ambalawi', 'Teknologi Informasi', NULL, 1, 4, 'd742986223ed4a541e1bf67ac0764bf5', '2018-05-18 08:15:00', '2018-05-18 08:15:00'),
('085205435762', 'ulfayanti430@gmail.com', 'Ulfayanti', 'smk gunung rinaji lombok', 'Teknik Komputer', NULL, 2, 4, 'b8760f41747785549326d72bc29f8ffc', '2018-04-03 07:42:09', '2018-04-03 07:42:09'),
('085210473876', 'muhammadnasokha8@gmail.com', 'Muhamad nasoka', 'Sma negeri 01 gumay ulu', 'Informatika', NULL, 7, 6, 'ab675985cae71e0f9e9344eef6d47130', '2018-07-02 08:18:32', '2018-07-02 08:18:32'),
('085210703140', 'wawan.85gras@gmail.com', 'WAWAN FATUROHMAN', 'SMK N 1 GIRISUBO', 'D3 - Teknik Informatika', NULL, 1, 6, '61aa5d653b0d28ee9b54b0c76213217f', '2018-07-18 04:36:17', '2018-07-18 04:36:17'),
('085213866956', 'sigitardiy@gmail.com', 'Sigitardiyansah', 'Smk muhammadiyah 3 Yogyakarta ', 'Teknik Komputer', '18.83.0144', 8, 5, '7be29dc5f591f9e029d49ff4c788d7ca', '2018-04-28 12:10:58', '2018-04-28 12:10:58'),
('085225126217', 'brilianmaulana01@gmail.com', 'Ahmad Brilian Maulana', 'Smk Umar Fatah Rembang', 'Teknologi Informasi', NULL, 2, 5, 'a4b095773a3a06f82712e5a553e0273f', '2018-04-23 07:45:08', '2018-04-23 07:45:08'),
('085225621378', 'm.ilhamfdl@gmail.com', 'Muhammad Ilham Fadila', 'SMA N 1 Turi', 'Sistem Informasi', '18.12.0599', 1, 7, 'bcabc19ec050bfcb9a0edb3130304ab8', '2018-05-12 02:27:15', '2018-05-12 02:27:15'),
('085225701800', 'dropshipfan@gmail.com', 'FERDIAN ARJUTAMA NARWAN', 'SMK 1 PANGKALANBARU', 'Sistem Informasi', '18.12.0571', 1, 7, '23031c1a67c52db6bd1e82d724b99ff8', '2018-05-01 18:00:48', '2018-05-01 18:00:48'),
('085227027497', 'lanackcans27@gmail.com', 'maulana aminullah', 'smk muhammadiyah 1 blora', 'Teknologi Informasi', NULL, 2, 7, '4e1e7666191d6cc22fab7c938f5475a0', '2018-05-24 05:50:05', '2018-05-24 05:50:05'),
('085228000442', 'randiprabow01@gmail.com', 'Randhi Prabowo', 'SMA Negeri 1 Kaliwiro', 'Informatika', '18.11.2197', 3, 6, 'c79cc682eda8828bb1c0a42294b88aa1', '2018-07-27 11:14:44', '2018-07-27 11:23:50'),
('085228417388', 'rendipras29@gmail.com', 'Rendi Prasetyawan', 'SMK NEGERI 1 DONOROJO', 'Teknik Komputer', '18.83.0186', 2, 5, '3f025c5ea129c6f71f7ec5de5f5fb25f', '2018-07-26 05:14:55', '2018-07-26 05:14:55'),
('085237046775', 'muharif2903@gmail.com', 'Muh. Arif Budiman', 'SMA N 1 Pajo', 'Ilmu Komunikasi', NULL, 6, 7, 'ed61135d50e7e0f78768f3e652c51085', '2018-05-18 02:28:50', '2018-05-18 07:50:58'),
('085238830219', 'subagio863@gmail.com', 'subagio', 'SMAN 1 Bolo', 'Informatika', NULL, 3, 7, '3ce83ea12f16dbb944a86573a3b56046', '2018-05-17 10:16:08', '2018-05-17 10:16:08'),
('085243373192', 'muh.syahril06.05@gmail.com', 'M.syahril.M', 'SMAN.4.KOTA.SORONG', 'Arsitektur', NULL, 3, 7, 'e9cc4c5fb2ce8dbc917c0201bb3b738a', '2018-05-16 09:56:03', '2018-05-16 09:56:03'),
('085244049424', 'arifrayuan@gmail.com', 'Arif Ramdani Hamzah', 'SMA N 1 Nubatukan', 'Informatika', NULL, 4, 7, '208e95327dd1a8c590bdea3470a8209f', '2018-04-02 15:19:34', '2018-04-02 15:19:34'),
('085244522772', 'syahrifalhawinanto013@gmail.com', 'Syahrifal Hawinanto', 'SMK N 1 BURU', 'Informatika', NULL, 7, 5, 'f329f4cae2d0dc85d26620678e6fd1be', '2018-04-04 02:04:08', '2018-04-04 02:04:08'),
('085244926421', 'pison2101@gmail.com', 'Pison kambu', 'SMA YPPK TARUNA DHARMA', 'Arsitektur', NULL, 7, 4, '4b677a2d0b80a737deed1651bb7efd9d', '2018-07-09 07:15:58', '2018-07-09 07:15:58'),
('085251005110', 'muhammadyasiiiin@gmail.com', 'Muhammad Yasin', 'SMA NEGERI 1 BARABAI', 'Sistem Informasi', '18.12.0607', 5, 7, '4a6c562b83181fc10e5209f5c80fa884', '2018-05-19 14:14:28', '2018-05-30 14:34:57'),
('085252141441', 'kristinadessy3@gmail.com', 'Kristina Desy', 'Sma panca setya sintang', 'Sistem Informasi', NULL, 6, 7, '6ceebb7fa28d30f86967d82babe6e66c', '2018-05-05 08:34:53', '2018-05-05 08:34:53'),
('085254297952', 'zusanalasol@gmail.com', 'Zusana Lasol', 'SMK Petra Timika', 'Teknologi Informasi', '18.82.0312', 1, 6, 'aad33f6ac4444420b1812bfeab874fa8', '2018-07-04 14:54:06', '2018-07-04 14:54:06'),
('085267010210', 'farhanzulfikaryunus@gmail.com', 'Farhan Zulfikar Yunus', 'SMA Negeri 1 Sungai Lilin', 'Ilmu Komunikasi', '18.96.0447', 3, 7, '42e8a7f4b10eaddfc37dc92559bfe291', '2018-05-24 21:49:20', '2018-05-24 21:49:20'),
('085267522608', 'erlienafera@gmail.com', 'Feraerlina', 'SMAN 3 martapura', 'Informatika', NULL, 7, 4, 'd950358faca83d08f3313d0c2ec24c6d', '2018-07-26 13:17:21', '2018-07-26 13:17:21'),
('085290746707', 'luqman.hakimtheningrat@gmail.com', 'LUKMAN HAKIM', 'SMK N 1 AMPELGADING', 'Informatika', '18.11.2023', 9, 4, '5a5ccea3ee2aaac1969a7b698ffd4ef4', '2018-07-08 07:55:12', '2018-07-08 09:00:20'),
('085290761198', 'mirza372ab@gmail.com', 'Mirza Rivaldo Al-Fatah', 'SMK N 5 Yogyakarta', 'Teknologi Informasi', NULL, 7, 7, '0295aa76e761dea2ac7bd1c492b57d0a', '2018-04-22 13:30:02', '2018-04-22 13:30:02'),
('085290787079', 'primawulan0@gmail.com', 'Prima Wulan Sari', 'SMA N 1 Sedayu ', 'D3 - Manajemen Informatika', '18.02.0188', 7, 5, '40a9fd88a1dbcf6dcea4950b938ed863', '2018-04-28 10:02:03', '2018-05-15 06:33:08'),
('085293032277', 'handre2912@gmail.com', 'Rahadian Handre Irham Sougoro', 'SMA N 1 Gamping', 'Ilmu Komunikasi', '18.96.0436', 3, 6, 'de5e32fbbb3faafa377361cecea06650', '2018-05-16 09:23:26', '2018-05-16 09:23:26'),
('085311374458', 'triyaninopvi@gmail.com', 'Nopvi Triyani', 'SMK YPI seputih Mataram', 'Ilmu Komunikasi', NULL, 3, 6, '18c2fe61233a393bd0def6e47aa80b05', '2018-06-30 09:29:02', '2018-06-30 09:29:02'),
('085326471774', 'evangellinaa12@gmail.com', 'Evangellina Altaira', 'SMK N 7 Yogyakarta', 'Ilmu Komunikasi', '18.96.0591', 6, 7, '63068c9f73c02bf71a42d06b677dc356', '2018-07-19 03:54:56', '2018-07-19 05:10:05'),
('085328885525', 'agungyoga1399@gmail.com', 'Agung yoga prakasa', 'Sma muhammadiyah wonosobo', 'Teknologi Informasi', '18.82.0355', 3, 5, '25ff1d053c9070cdbe539e3fbe815c9d', '2018-07-19 06:07:11', '2018-07-19 06:07:11'),
('085329584736', 'cobaa@gmail.com', 'taufik yahya', 'sma pangudi luhur muntilan', 'Sistem Informasi', NULL, 1, 7, '7fad70826434d585e56ccb347c38ced5', '2018-04-25 16:46:59', '2018-04-25 16:46:59'),
('085333000351', 'icandangkut30@gmail.com', 'KRISANTUS MULIADI DANGKUT', 'SMA NEGRI 2 KECAMATAN LANGKE REMBONG', 'Teknologi Informasi', '18.82.0359', 8, 4, 'a8f4f76cb5186e8286de56491a967816', '2018-07-23 07:00:46', '2018-07-23 07:00:46'),
('085333258780', 'masdanang34@gmail.com', 'Danang putra alfin', 'Man 2 kota Bima', 'Teknologi Informasi', NULL, 4, 7, '83139f07f9a508978d862ae79c865c38', '2018-05-17 14:52:59', '2018-05-17 14:52:59'),
('085333453231', 'Habiebmuhammad45@gmail.com', 'Habib Muhammad Abdel Basieth', 'SMAN 1 BOLO', 'Informatika', '18.11.2232', 6, 7, 'a87abb4d250153fe1fde11ad472f9d6a', '2018-07-27 02:08:12', '2018-07-27 02:08:12'),
('085333453988', 'AdzrhielWalker@gmail.com', 'Mochammad Azriel Praja Utama S', 'SMAN 1 LAPE', 'D3 - Manajemen Informatika', '18.02.0214', 9, 4, '2c415cb8678fda25881197395a694b68', '2018-05-26 06:13:00', '2018-05-26 06:13:00'),
('085337858817', 'alkudriya@gmail.com', 'kudriya al hikmah', 'MA Sayyid Ahmad', 'Ilmu Komunikasi', NULL, 3, 7, '891e14b5eddf8b80ca09224f5a4fc823', '2018-05-17 14:30:58', '2018-05-17 14:30:58'),
('085337990214', 'ighasyafitrii02@gmail.com', 'Iga nursafitri', 'MAN', 'Informatika', NULL, 3, 4, 'e826da17e824126f19146c5e6becd68f', '2018-05-27 08:40:27', '2018-05-27 08:40:27'),
('085338508221', 'Atikurniati203@gmail.com', 'Ati kurniati', 'SMKN 3 KOTA BIMA', 'Ilmu Komunikasi', NULL, 7, 6, '42eac0fb5c0aaff4d8f96dd99b19cd6a', '2018-05-23 13:48:57', '2018-05-23 13:48:57'),
('085338601181', 'mariosara756@gmail.com', 'Mariano yosafat sara', 'SMKN 2 ENDE', 'Sistem Informasi', '18.12.0631', 7, 7, '18c9b7f226337f385c678e111fd75369', '2018-05-17 10:47:16', '2018-05-17 10:47:16'),
('085338786947', 'amdad862@gmail.com', 'Ahmad Amdad Bariro', 'SMKN 1 SELONG', 'Sistem Informasi', NULL, 8, 5, '9f8033b116a9c440c73e3ed15b23f970', '2018-05-07 01:43:35', '2018-05-07 01:43:35'),
('085341708472', 'muhammadtakdir010@gmail.com', 'Muh.Takdir', 'SMKN 2 MAJENE', 'Teknik Komputer', NULL, 3, 4, '6d043663a76441cac16933bcb5b32d12', '2018-07-06 17:30:42', '2018-07-06 17:30:42'),
('085342753024', 'andiginawana@gmail.com', 'Andi Ginawana Sari Unga Waru', 'MA PERGIS GANRA', 'Sistem Informasi', '18.12.0601', 4, 7, '2c5cea371c74c3a6522f5613383a9892', '2018-07-18 13:38:15', '2018-07-18 13:38:15'),
('085346937546', 'Agustinowidihandoko12@gmail.com', 'Agustino widi handoko', 'SMA Santo Petrus Ketapang', 'Sistem Informasi', NULL, 9, 6, 'ee44e50fde6fc69d326e8edd38154cc0', '2018-05-18 01:56:17', '2018-05-18 01:56:17'),
('085348279877', 'hasanahkharisma95@gmail.com', 'Kharisma Hasanah', 'SMKN 1 Bukit Sawit', 'Ilmu Komunikasi', '18.96.0626', 6, 7, '5e30d32365c5586d5100392d2d8ab0c4', '2018-07-24 07:45:19', '2018-07-24 07:45:19'),
('085348502700', 'adhamuhammad21@gmail.com', 'Muhammad', 'SMAN 1 AMUNTAI', 'Sistem Informasi', '18.12.0628', 4, 7, 'd3b249ac93f28c0f974a92eab4b292a9', '2018-05-17 10:16:40', '2018-05-17 10:16:40'),
('085350610599', 'agirigandi@gmail.com', 'RIGANDI RAMADHANI', 'Sma negeri 1 bulik', 'Teknologi Informasi', NULL, 2, 4, '2b5fa84cfee5d85a38ffc578d2affd1c', '2018-05-29 03:04:35', '2018-05-29 03:04:35'),
('085368752526', 'RHEZPECT007@GMAIL.COM', 'YUSRIL AMIN SHOLEKHAN', 'SMA N MEGANG SAKTI', 'Informatika', NULL, 5, 4, '032ce6ea2a4680f52fe2f222078782db', '2018-07-21 05:10:37', '2018-07-21 05:10:37'),
('085369322351', 'diwanaericha@gmail.com', 'Diwanna Ericha', 'SMA N 12 BANDAR LAMPUNG', 'Ilmu Komunikasi', NULL, 1, 7, 'cc0005fb30325f346914ca9425d4295e', '2018-07-27 06:47:01', '2018-07-27 06:47:01'),
('085385204306', 'lalangpraditya1971@gmail.com', 'Lalang Praditya', '', 'Ilmu Komunikasi', NULL, 7, 7, '85435d93fc6ae6540dd7fae0f6ad4f0e', '2018-07-20 03:39:10', '2018-07-20 03:39:10'),
('085389714016', 'inez_rules95@yahoo.com', 'Masrianes Febriani Kinam', 'SMKN 9, Samarinda', 'Ilmu Komunikasi', NULL, 7, 6, 'a1c2f6c196ceee9801aadb25caaa8d08', '2018-05-02 04:16:40', '2018-05-02 04:16:40'),
('085390343381', 'budunsarsono0@gmail.com', 'BUDUN SARSONO', 'SMKN 2 TAMIANG LAYANG', 'Teknik Komputer', NULL, 4, 7, '91f9edc4dacd09adabd4822b2257c5df', '2018-06-27 06:57:42', '2018-06-27 06:57:42'),
('085600126097', 'erzalanggara@gmail.com', 'Erzal Asdi Yulianggara', 'SMK N 1 KALASAN', 'D3 - Manajemen Informatika', NULL, 8, 6, 'd700b23804350f775153cc1102e5ed20', '2018-05-05 03:47:08', '2018-05-05 03:47:08'),
('085600358904', 'awall6661@gmail.com', 'Muhammad Awaludin', 'SMK N 2 Bawang', 'D3 - Teknik Informatika', '18.01.4182', 6, 7, 'f13533a6dd71293c7f630ec35c0cd601', '2018-07-28 07:28:03', '2018-07-28 07:28:03'),
('085600919761', 'terataiiblis@gmail.com', 'Sadhewa Galih Setiawan', 'SMK N 1 Bantul', 'Ilmu Komunikasi', NULL, 4, 7, '7bf8c29c94a06f3531cd72049a425d16', '2018-05-02 12:39:08', '2018-05-02 12:39:08'),
('085601315301', 'muh.alfiawalludin@gmail.com', 'Muhammad Alfi Awalludin', 'SMA Muhammadiyah 7 Yogyakarta', 'Teknologi Informasi', '18.82.0358', 4, 7, 'bd886ff47eb59abea45ddd51955d8821', '2018-07-22 03:22:07', '2018-07-22 03:22:07'),
('085602586918', 'rennymarfita2@gmail.com', 'Reni marfita sari', 'Smk muhammadiyah 3 klaten tengah', 'Informatika', '18.01.4101', 8, 5, 'f9790e3f4872a84c8547d4d39ba22984', '2018-04-04 02:18:07', '2018-04-04 02:18:07'),
('085607964914', 'fatyaputri04@gmail.com', 'Fatya Putri Berliana', 'SMA N 1 WONOSARI KLATEN', 'Informatika', '18.11.2185', 9, 5, '6f9e42f9697b8b2f3e89323786b00973', '2018-07-21 15:30:54', '2018-07-21 15:30:54'),
('08562539486', 'yustikamasya3@gmail.com', 'Yustikamasy Astica ', 'SMK N 2 YOGYAKARTA ', 'Sistem Informasi', '18.62.0114', 4, 6, '62a32c06269140c017fb98ac36ca6d42', '2018-05-29 01:41:27', '2018-07-17 14:39:57'),
('08562759924', 'amuhammadnuruddin@gmail.com', 'Muhammad Nuruddin Alfani', 'SMA Muhammadiyah Kedungtuban', 'Teknik Komputer', NULL, 7, 7, 'c36c3968201ee86b1aaca4e524fe01a5', '2018-06-28 07:54:28', '2018-06-28 07:54:28'),
('08562810821', 'Leo.leocanra@gmail.com', 'Leo Ramadi Canra', 'SMK N 3 YOGYAKARTA', 'D3 - Teknik Informatika', NULL, 6, 5, '11be7c681c995f7cf8c1676cf20c057e', '2018-05-23 13:16:35', '2018-05-23 13:16:35'),
('085640924277', 'bastianrahmad75@gmail.com', 'Bastian Rahmad Indrianto', 'SMA Negeri 11 Purworejo', 'Kewirausahaan', '18.92.0062', 1, 4, 'f87ae5dec72bb77fef285524a10594c0', '2018-07-25 00:50:58', '2018-07-25 00:50:58'),
('085640992233', 'ridhosetiyawann@gmail.com', 'Ridho Yusuf Setiyawan', 'SMA NEGERI 1 TEMANGGUNG', 'Informatika', NULL, 5, 5, 'e57c927e20241883108a67d5a62ec7c8', '2018-07-25 15:54:42', '2018-07-25 15:54:42'),
('085641052824', 'fitrifadli7210@gmail.com', 'FITRI HANIFAH FADLI', 'SMAN 1 KALASAN ', 'Sistem Informasi', '18.12.0698', 7, 6, '78b933507dae2fb76c98af6c8f78b432', '2018-07-05 16:20:59', '2018-07-05 16:20:59'),
('085641811937', 'dr6942437@gmail.com', 'DEWI RAHAYU', 'SMA N 1 KARANGDOWO ', 'D3 - Manajemen Informatika', '18.02.0185', 7, 5, 'a637a9fd701bc5dbb3f016d60f014d65', '2018-05-06 03:09:42', '2018-07-18 04:11:20'),
('085642686899', 'ts5382560@gmail.com', 'tri susilo', 'sma muhammamdiyah 1 yogyakarta', 'Informatika', NULL, 7, 6, '24339978a4289eb0e26cc47f44c37584', '2018-05-17 04:30:58', '2018-05-17 04:30:58'),
('085642759169', 'yohanesbreksmans@gmail.com', 'Yohanes Breksmans Raja Wangge', 'SMA Swasta Islam Mutmainah Ende', 'Ekonomi', '18.91.0046', 5, 4, '9d3ec3afa406dda176435d7ee875a897', '2018-07-09 04:23:02', '2018-07-21 15:44:25'),
('085643100747', 'alviandamarc8@gmail.com', 'Alvian damar mahardika', 'SMA N 1 Lendah ', 'Sistem Informasi', NULL, 3, 5, '775858c1da759ef99a103be3e7e4e5a2', '2018-05-17 10:53:15', '2018-05-17 10:53:15'),
('085643911853', 'bimokusumojati71@gmail.com', 'BIMO KUSUMO JATI', 'Smk Muhammadiyah 1 Klaten Utara', 'Informatika', NULL, 1, 5, '16ca30d943b814eefde273ce045a8dcc', '2018-04-23 04:51:01', '2018-04-23 04:51:01'),
('085647438727', 'denisetyawan777@gmail.com', 'Deni Setiawan', 'SMK Muhammadiyah Semin', 'Informatika', '18.11.1817', 6, 7, 'e3c8278eb062ac36f81527192db794a7', '2018-04-03 04:07:49', '2018-04-06 09:11:38'),
('085649879722', 'masrukanjunior@gmail.com', 'Ayub Masrukan', 'SMK', 'Informatika', '18.11.1849', 8, 5, 'e1510e716aa796a099bf34c74a51d786', '2018-04-24 15:24:12', '2018-04-24 15:24:12'),
('08565287708', 'camelchild13@gmail.com', 'Sugiyarto', 'SMK NEGERI 1 PANGKALAN BUN', 'Teknologi Informasi', NULL, 5, 7, 'f9e03ac2221b59fec1f2c0431a1dc135', '2018-05-13 04:47:37', '2018-05-13 04:47:37'),
('085656259131', 'gilanglpu@gmail.com', 'gilanglpu@gmail.com', 'MA PP Ibnul Qoyyim Putra', 'Sistem Informasi', NULL, 9, 4, 'add318caf5c5363b69c54e930d185f21', '2018-06-01 16:40:38', '2018-06-01 16:40:38'),
('085700272994', 'zhayghifary@gmail.com', 'Muhammad Fathy Islam', 'SMK', 'Sistem Informasi', NULL, 4, 6, 'ebc16ec133a717130e8b0fb83ef506a3', '2018-07-19 05:29:51', '2018-07-19 05:29:51'),
('085701408021', 'galuhsaputra148@gmail.com', 'VERI GALUH SAPUTRA', 'SMK TARUNA PULOKULON', 'Informatika', NULL, 5, 5, '0d9420807c2b499eb07b96ef4f4fa700', '2018-05-20 04:26:32', '2018-05-20 04:26:32'),
('085702442437', 'dinafadhilah32@gmail.com', 'Dina Fadhilah', 'SMA Muhammadiyah Purworejo', 'Sistem Informasi', NULL, 3, 7, '32cde24cae742fa551ef172824ba68d8', '2018-07-27 08:19:22', '2018-07-27 08:19:22'),
('085702500033', 'ersatrikurnia317@gmail.com', 'Ersa Tri Kurnia', 'SMK N 1 KLATEN', 'Geografi', '18.85.0040', 9, 7, '18427fb177632585b0aa0aed86942d2b', '2018-07-21 05:02:06', '2018-07-21 05:02:06'),
('085702552070', 'essakarel20@gmail.com', 'essa karel poborsky', 'Smk tekno-sa surakarta', 'D3 - Teknik Informatika', '18.01.4100', 2, 5, '42eac14e15f69c0839f4c9a64bc3ed8e', '2018-04-05 10:56:01', '2018-05-01 03:27:51');
INSERT INTO `participants` (`phone`, `email`, `name`, `school`, `prodi`, `nim`, `day`, `division_id`, `secret`, `created_at`, `updated_at`) VALUES
('085702811041', 'dpermana350@gmail.com', 'Dede Permana', 'SMK', 'Informatika', '18.11.1825', 8, 5, 'fa1b0a10e8e81df768d8756daa89ee0f', '2018-04-23 03:16:41', '2018-07-24 09:43:21'),
('085705505927', 'allex0972@gmail.com', 'ALLEX', 'SMA YAYASAN KEMALA BHAYANGKARI 1', 'Informatika', '18.11.2180', 2, 7, '39ff8aa2dccff6ca4411fea09510f628', '2018-07-28 12:00:49', '2018-07-28 12:05:00'),
('085709926355', 'mdennyprayoga17@gmail.com', 'Muhammad Denny Prayoga', 'SMA N 1 SEMENDAWAI SUKU III', 'Sistem Informasi', NULL, 8, 5, 'e67547a9b8a3a5574d7ddba75aed329c', '2018-07-16 11:04:01', '2018-07-16 11:04:01'),
('085710539647', 'tinaristiana115@gmail.com', 'Tina Ristiana', 'SMA N 1 Cepogo', 'Ilmu Komunikasi', '18.96.0442', 5, 4, 'c8fcbd931ab511eaba64a350f2d3c81e', '2018-07-03 08:22:42', '2018-07-03 08:22:42'),
('085712170846', 'hanafiadhi890@gmail.com', 'Hanafi Adhi Prasetyo', 'SMK TAMTAMA 2 SIDAREJA', 'D3 - Teknik Informatika', '18.01.4148', 9, 7, 'e003e331328bc3b042dcd3d2b81a39db', '2018-06-06 17:27:12', '2018-07-27 11:26:18'),
('085712744861', 'yanirisky65@gmail.com', 'Muhammad Riki efendi', 'Smk negeri 1 cangkringan', 'Sistem Informasi', '18.12.0605', 6, 4, '32133ffdbfa2f2fbd5ae4bc9722cf2f0', '2018-05-25 03:54:03', '2018-05-25 03:54:03'),
('085712760384', 'faisal.alghiffari36@gmail.com', 'FAISAL ABUDZAR AL-GHIFFARI', 'MA MUHAMMADIYAH KLATEN', 'Teknologi Informasi', NULL, 6, 6, 'db3656f439fbc3dcce560732e03ef0ca', '2018-06-04 01:48:20', '2018-06-04 01:48:20'),
('085713355805', 'nawank358@gmail.com', 'Kurniawan Dwi Waestaputra', 'SMA N 1 PENGASIH', 'Informatika', '18.11.1896', 3, 5, '81cfd41d7aeb040b554f213d8516df1c', '2018-04-21 08:03:55', '2018-05-22 02:16:05'),
('085713454335', 'arfandwiyanto1122@gmail.com', 'Arfan dwiyanto', 'SMK NEGERI 1 PLERET', 'Informatika', '18.11.2057', 5, 5, 'da398fc7471b4bda7beccc56c2fffd80', '2018-07-15 12:39:49', '2018-07-15 13:42:23'),
('085713737338', 'qhoirullhuda@gmail.com', 'Rifqi Qhoirul Huda', 'Smk Muhammadiyah Prambanan', 'Informatika', '18.11.1922', 6, 7, '8064cfbd2d35e839efff1cb2c9dd15ad', '2018-05-25 06:24:45', '2018-05-25 06:24:45'),
('085713935204', 'reklasfa@gmail.com', 'FAREKLAS', 'Smk N Jumo ', 'Informatika', '18.11.1845', 1, 4, '57f845dfcc4499d00c9bf4a09aa257e7', '2018-04-28 11:58:40', '2018-04-28 11:58:40'),
('085717362477', 'adindaardhyasha@gmail.com', 'Adinda Permata Ardhyasha', 'SMA N 1 Piyungan', 'Sistem Informasi', NULL, 5, 6, '1255efb01c2a980efd9a48722742e195', '2018-07-07 00:51:12', '2018-07-07 00:51:12'),
('085725009112', 'Rachmadditto@gmail.com', 'Rachmadditto Kurnia Manda', 'SMK Al-Islam Surakarta', 'Informatika', NULL, 3, 7, '9640f66d1aadae117db7823c05fc607b', '2018-04-12 18:48:49', '2018-04-12 18:48:49'),
('085725604541', 'aomineshine@gmail.com', 'MUHAMMAD RENAULDI', 'SMA PPMI ASSALAAM SUKOHARJO', 'Sistem Informasi', NULL, 9, 5, '96f22c91a138e5b10350b7bdc7b091e5', '2018-05-17 11:30:39', '2018-05-17 11:30:39'),
('085725696241', 'lthfhhhhh2@gmail.com', 'LATHIFAH NOOR SAKTIAJI', 'MAN 4 SLEMAN ', 'D3 - Manajemen Informatika', NULL, 7, 5, '22ab88ca9af04a71c888eadc339c06aa', '2018-05-18 04:52:58', '2018-05-18 04:52:58'),
('085725839179', 'tiogembelz98@gmail.com', 'Muhammad Dhuha Chrisantio', 'SMK Negeri 5 Yogyakarta', 'Sistem Informasi', NULL, 5, 5, '7c7731904ef5fb1e056c52b289dcb149', '2018-04-21 11:50:29', '2018-04-21 11:50:29'),
('085726999157', 'cyntiaerk@gmail.com', 'Cyntia Erika Pramusinta', 'Sma Bhinneka Karya2 Boyolali', 'Hubungan Internasional', '18.95.0055', 2, 4, 'd51f751f9474df6632a603a8ee9c6404', '2018-07-27 04:40:08', '2018-07-27 04:40:08'),
('085727044765', 'adithyaricky27@gmail.com', 'Muhammad Adithya Ricky Ichsan', 'SMA N 1 Grabag', 'Sistem Informasi', '18.12.0718', 7, 6, '421fbbcb54dd2df60c6e7368abb74e2a', '2018-07-15 05:13:55', '2018-07-15 05:13:55'),
('085727188220', 'buyungalf@gmail.com', 'Buyung Alfaini Fajrin', 'SMA Negeri 1 Kota Mungkid', 'Sistem Informasi', '18.12.0656', 9, 5, '3ad9dfa126e717c23dfd29fceb0d8d1a', '2018-04-23 04:35:13', '2018-07-09 00:58:16'),
('085727264231', 'ekobp1999@gmail.com', 'Eko budi prayitno', 'Sman 1 turi', 'Sistem Informasi', NULL, 7, 7, 'f722d1d23d2d9d5567cf0b3318141593', '2018-07-28 08:01:31', '2018-07-28 08:01:31'),
('085727617995', 'hauscorporations@gmail.com', 'Hammam Firdaus', 'SMA NEGERI 2 TEMANGGUNG', 'D3 - Teknik Informatika', NULL, 1, 5, '7d21979c60ac63eb80663b52eceefe12', '2018-04-28 22:28:52', '2018-04-28 22:28:52'),
('085727736314', 'alfiaramadhanny@gmail.com', 'Alfia Rama Danniati', 'SMK Ma\'arif 1 Kebumen', 'Ilmu Komunikasi', NULL, 9, 4, '15b556ea5e28990ac66a25d6dc2c5630', '2018-06-04 16:51:13', '2018-06-04 16:51:13'),
('085727755747', 'psim.jogja10@yahoo.com', 'MUHAMMAD NAUFAL FATHONI', 'SMA PIRI 1 YOGYAKARTA', 'Ilmu Komunikasi', '18.96.0396', 1, 7, '8a84c741d5def3666af6750dd98942c7', '2018-05-14 16:07:45', '2018-05-14 16:07:45'),
('085727926894', 'radenucok2000@gmail.com', 'RANGGA WIRA ADNANDI', 'SMAN 2 OKU SUMSEL', 'Sistem Informasi', NULL, 3, 7, '4a4448e723b16404d67d6dfe2deaa832', '2018-05-06 14:52:24', '2018-05-06 14:52:24'),
('085729276529', 'adnan0aditama@gmail.com', 'Adnan Aditama', 'SMA N 1 Jogonalan', 'D3 - Manajemen Informatika', NULL, 4, 7, 'eec632e6f237c03f5536f3a8e9a15325', '2018-07-26 19:51:15', '2018-07-26 19:51:15'),
('085730677732', 'alfinandika@outlook.com', 'Alfin Andika Pratama', 'SMK TJP TUBAN', 'Informatika', NULL, 8, 5, '54917752f9ad608095040216d3baeb35', '2018-05-01 09:23:30', '2018-05-01 09:23:30'),
('085731858886', 'bahrudin.manshur@gmail.com', 'bahrudin manshur arrosyid', 'ma darul ma\'arif', 'Ilmu Komunikasi', '18.96.0525', 1, 6, '4a4c35a184f687a1df2fb7e262087896', '2018-07-21 14:47:45', '2018-07-21 14:47:45'),
('085740042710', 'aku085740042710@gmail.com', 'Yekhonya Anangga Putra', 'SMK 17 TEMANGGUNG', 'Informatika', NULL, 8, 4, 'b297b8fd73912bf6d9035d401ac7c33b', '2018-05-28 09:34:08', '2018-05-28 09:34:08'),
('085740714782', 'yunyunita21@gmail.com', 'TRI YUNITA SARI', 'SMA N 2 CILACAP', 'Teknologi Informasi', '18.82.0262', 2, 5, 'a0696bc36b2819311cd8a04e7f356d6a', '2018-05-23 10:49:21', '2018-05-23 10:49:21'),
('085740716465', 'nendra100@gmail.com', 'Danendra An nur Rohiim', 'SMA Batik 2  SURAKARTA', 'Sistem Informasi', NULL, 7, 7, 'a66bb15c33dc370b0c2e0216aea983f3', '2018-05-17 04:46:57', '2018-05-17 04:46:57'),
('085741224707', 'Renifentikadewi47@gmail.com', 'Reni Fentika Dewi ', 'Universitas AMIKOM Yogyakarta', 'Teknologi Informasi', NULL, 6, 5, 'bb72b58e5e274e34aba3631ed3fb722e', '2018-05-17 03:48:04', '2018-05-17 03:48:04'),
('085742320947', 'irsyadramadhan66@gmail.com', 'Irsyad Ramadhan', 'SMK PEMBAHARUAN PURWOEJO', 'D3 - Teknik Informatika', '18.01.4151', 8, 6, '2f8de1e9a6dd38d7aab45be70bde7049', '2018-07-20 13:06:41', '2018-07-20 13:06:41'),
('085743913445', 'dpuspitasari3001@gmail.com', 'Dewi Puspitasari', 'SMA N 1 WEDI', 'D3 - Teknik Informatika', NULL, 1, 7, '98bca2ed1045d21c4c0c13289311f71f', '2018-07-28 08:54:23', '2018-07-28 08:54:23'),
('08574637464', 'john@example.com', 'john down', 'john down', 'Informatika', '18.01.0543', 8, 4, 'd4c74594d841139328695756648b6bd6', '2018-05-18 04:22:08', '2018-05-18 04:22:08'),
('085747234514', 'risayuli21@gmail.com', 'Risa Yuli Agustin', 'SMA N 1 WONOSARI Klaten', 'Informatika', '18.11.2028', 3, 5, '0757f9ec533b6cf74953c12a5510e5b0', '2018-05-17 13:43:36', '2018-07-18 23:25:56'),
('085752476062', 'zilmi232@gmail.com', 'Muhammad zainal ilmi', 'Smkn 1 amuntai', 'Informatika', '18.11.1958', 8, 4, '8eb4746008b9d95ced3620c07950d9c3', '2018-05-25 11:18:48', '2018-05-25 11:18:48'),
('085752544569', 'blackbour72@gmail.com', 'Imam Nurwahyudi', 'SMK NEGERI 1 TEBAS', 'Informatika', NULL, 5, 5, 'd08bbdff7301eca3947733d7465a46de', '2018-05-10 06:58:30', '2018-05-10 06:58:30'),
('085754685595', 'stendyricksenlim@gmail.com', 'Stendy Ricksen Lim', 'SMA', 'Informatika', NULL, 4, 7, 'edcd39c16e612a83ffda8aec3eec8ada', '2018-05-12 22:49:17', '2018-05-12 22:49:17'),
('085755602135', 'aryakusumawijaya123456@gmail.com', 'Arya Kusuma Wijaya', 'MAN 2 TULUNGAGUNG', 'Sistem Informasi', NULL, 6, 5, 'f1d64ce53e6fb4e5dae5d654ee5f3605', '2018-04-21 12:52:26', '2018-04-21 12:52:26'),
('085757040085', 'reswara77@gmail.com', 'Reswara Agusta', 'Sma BIAS Yogyakarta', 'Informatika', NULL, 6, 7, '13835f4235cf2e56d056c5ebe93cd7a5', '2018-06-10 22:58:31', '2018-06-10 22:58:31'),
('085770711458', 'aaldi4151@gmail.com', 'Apriawan aldi sugesto', 'Sma plus pgri cibinong', 'Ilmu Komunikasi', NULL, 6, 7, '7feb54d7ef7a0adffe4b8ab113cb55d6', '2018-05-08 08:22:04', '2018-05-08 08:22:04'),
('085777772964', 'arfikuper97@gmail.com', 'Arfi Nurhidayat', 'SMA NEGERI 1 REMBANG', 'Sistem Informasi', NULL, 6, 7, '86d1d31e2fadcb2758f3a50855c49470', '2018-06-15 14:13:05', '2018-06-15 14:13:05'),
('085783333926', 'pujirastha@gmail.com', 'Pujiono', 'SMKN 1 WAY TENONG', 'Informatika', '18.11.2089', 5, 7, 'e24749ab9fff350dd6b230cdb1fc58bf', '2018-04-02 18:59:11', '2018-07-24 06:27:59'),
('085786517751', 'rsprama54@gmail.com', 'Rahmadhan syahputra', 'Smk n 3 yogyakarta', 'Informatika', '18.11.1815', 3, 5, 'abc8f1a57e455b9947edd06364a8ff47', '2018-07-24 11:11:32', '2018-07-25 04:11:26'),
('085786961726', 'ronaldrezany@gmail.com', 'Ronal Dinho exca rezany', 'SMK TAMAN SISWA', 'Teknik Komputer', '18.83.0194', 9, 4, '56cf2c9b1cc80c557b4165c723c06761', '2018-07-10 10:52:07', '2018-07-10 10:55:32'),
('085787573405', 'benygustiadi10@gmail.com', 'Beny gustiadi', 'sma n 1 pangkalan banteng', 'Sistem Informasi', NULL, 2, 5, 'e4ab4c97d60a830c74957653fa3345b6', '2018-06-17 02:37:24', '2018-06-17 02:37:24'),
('085796526761', 'agussugian27@gmail.com', 'agus sugiantara', 'Smk Negeri 1 toili barat', 'Informatika', NULL, 7, 5, '9da50eda917e1149c8926df87073bcba', '2018-05-17 04:40:07', '2018-05-17 04:40:07'),
('085796727496', 'yirma1191@gmail.com', 'Irma Yanti', 'SMK', 'Sistem Informasi', NULL, 7, 5, '2ab237a62f056c4bacb70085bdd0e783', '2018-06-06 10:50:00', '2018-06-06 10:50:00'),
('085799122614', 'muhammadersad33@gmail.com', 'Muhammad ersad', 'Smk tunggal cipta', 'Sistem Informasi', '18.12.0588', 3, 7, '6586a298a8f74fa20354ccc48e355592', '2018-05-12 15:35:25', '2018-05-12 15:35:25'),
('085799173374', 'hanafidamai1234@gmail.com', 'HANAFI DAMAI CAHYONO PUTRA', 'SMA N 1 NGEMPLAK', 'Sistem Informasi', NULL, 7, 7, '84026a0af3f36fddbc4607de2263256f', '2018-05-13 22:31:33', '2018-05-13 22:31:33'),
('085799978007', 'rusdiyana.dewi@gmail.com', 'Rusdiyana Dewi Noor Sholikhah ', 'SMAN 1 KARANGDOWO', 'Informatika', '18.11.2077', 8, 7, '9410c01923da463692622001e4248a2a', '2018-07-27 05:43:27', '2018-07-27 05:43:27'),
('085800503082', 'marufdhimas@gmail.com', 'DHIMAS AVIANTHO MA\'RUF', 'SMK SATYA PERSADA', 'D3 - Teknik Informatika', '18.01.4129', 8, 6, 'e214fbb5557f13696cb5b4c6959b743f', '2018-05-17 08:25:47', '2018-05-29 02:47:55'),
('085800738735', 'yesicaasmr@gmail.com', 'Yesica Jacinda Asmara Devi', 'SMA Negeri 2 Wonogiri', 'Informatika', NULL, 6, 5, 'c71914c40ec781aa9ffe496f858672c8', '2018-04-23 02:48:17', '2018-04-23 02:48:17'),
('085801399528', 'ridho.milenova27@gmail.com', 'RIDHO AARFIADHAM', 'SMAN 1 SLEMAN', 'D3 - Manajemen Informatika', NULL, 4, 6, 'ad7a650250628484826f04c43a0b05a3', '2018-07-05 03:30:23', '2018-07-05 03:30:23'),
('085801841758', 'tisilara09@gmail.com', 'Tisih Lara Bangun Sasongko', 'SMK Muh. Cangkringan', 'D3 - Manajemen Informatika', NULL, 2, 5, 'b8697fe282492ef6bb178f36e1d0ae92', '2018-07-28 13:01:31', '2018-07-28 13:01:31'),
('085801905762', 'benny.wira17@gmail.com', 'Benny Wira Wicaksana', 'SMAN 2 Sleman', 'Informatika', '18.11.1881', 4, 4, '26ec7f1d3bc432c9ea217de20996d4be', '2018-05-28 02:28:48', '2018-05-28 02:28:48'),
('085802056577', 'latteniosriedy1010@gmail.com', 'Lattenio Sri Edy', 'SMA Muhammadiyah Wonosobo', 'Ilmu Komunikasi', NULL, 9, 6, 'b1dd77e6902ad044bfbb701fe9b79ce7', '2018-06-22 14:57:16', '2018-06-22 14:57:16'),
('085802623238', 'peaceforabadon@gmail.com', 'Fahrudin Yusuf Abadi ', 'SMK syubbanul wathon', 'D3 - Teknik Informatika', NULL, 1, 6, '7daee88cde736f6f779d8faad1298e15', '2018-07-12 01:28:06', '2018-07-12 01:28:06'),
('085821618401', 'sairindahestiwulandari@gmail.com', 'Sairinda Hesti Wulandari', 'SMK NEGERI 1 MARTAPURA', 'Ilmu Komunikasi', '18.96.0435', 7, 4, '4ced117800728832b0fb8613166b6a55', '2018-05-27 05:55:46', '2018-05-29 07:29:10'),
('085821998719', 'rikicandra0505@gmail.com', 'Ricky Chandra', 'SMK KELING KUMANG', 'Informatika', '18.11.2031', 5, 6, '31998911d4c254760b49907d25718b39', '2018-06-03 17:07:51', '2018-06-21 14:48:49'),
('085823631660', 'madeaditya38@gmail.com', 'I Made Aditya Pratama', 'SMA SWADHARMA WERDHI AGUNG', 'Informatika', '18.11.2062', 5, 6, '17b0f6981e05916abccb316236d6800f', '2018-07-01 16:50:49', '2018-07-01 16:50:49'),
('085830321385', 'widipangestuti587@gmail.com', 'Widi pangestuti', 'Sma negeri 1 kotagajah', 'Sistem Informasi', NULL, 4, 7, 'a56535c08d5fb82e4d61ac09aff8a2d9', '2018-05-01 13:03:56', '2018-05-01 13:03:56'),
('085840308801', 'huda711797@gmail.com', 'Muhammad Nurul Huda', 'SMA N 1 Depok', 'Informatika', NULL, 6, 5, 'd3d0ddf896668dbac9957ffebe08b278', '2018-06-06 09:26:26', '2018-06-06 09:26:26'),
('085840574103', 'kakjunaedisptr@gmail.com', 'Junaedi Saputra', 'SMA NEGERI 1 SEMENDAWAI SUKU III', 'Ilmu Komunikasi', NULL, 7, 7, 'f2c5c7329d8847a5fe3ead8e3187e5c8', '2018-05-06 14:16:50', '2018-07-15 02:41:49'),
('085842231953', 'amalianur280@gmail.com', 'Amalia Nur Anisa', 'SMA NEGERI 3 CILACAP', 'D3 - Teknik Informatika', '18.01.4177', 8, 7, '0ad53c1074220fd598078b7d5a2af56c', '2018-07-26 11:08:24', '2018-07-26 11:08:24'),
('085842232063', 'shafanurulf@gmail.com', 'Shafa Nurul Fadhillah', 'SMA NEGERI 1 CILACAP', 'D3 - Teknik Informatika', NULL, 9, 7, '45fba590d2436e5be71d9561a2b10695', '2018-07-26 11:38:29', '2018-07-26 11:38:29'),
('085842251014', 'gustajosua69@gmail.com', 'De Agusta Josua', 'SMKN 5 Yogyakarta', 'Teknologi Informasi', NULL, 8, 7, 'd084fa4163745cb0f095d40f8ddfbaa5', '2018-04-04 01:35:53', '2018-04-04 01:35:53'),
('085842798017', 'wiliemnaf@gmail.com', 'Muhammad Ahnaf Zalfa', 'SMAIT Ihsanul Fikri', 'Hubungan Internasional', '18.96.0623', 5, 7, '027cb60ae63e91b07484ae08092c23ab', '2018-07-24 06:34:58', '2018-07-24 06:34:58'),
('085851853252', 'azky455@gmail.com', 'Muhammad Azkal Azkiya', 'MA Muhammadiyah Baturetno', 'Ilmu Komunikasi', '18.96.0562', 3, 4, '840b33294027cf2be83d881e1db1dfb5', '2018-07-27 05:15:55', '2018-07-27 05:15:55'),
('085852568097', 'bagasmaulanaherdianto@gmail.com', 'Bagas Maulana Herdianto ', 'SMK', 'Informatika', NULL, 6, 7, '10acb44bc8977db841e0a37757e5fae5', '2018-06-28 05:19:25', '2018-06-28 05:19:25'),
('085853808637', 'Bagasafif2@gmail.com', 'Bagas Khoirul Afif', 'SMAN 3 MAGETAN', 'Informatika', NULL, 6, 7, 'b8c7206b79606dcb888bde15d8bd12fb', '2018-05-01 13:52:30', '2018-05-01 13:52:30'),
('085856266355', 'gempur450@gmail.com', 'M Gempur Ma\'ashi', 'MA DARUL HUDA MAYAK ', 'Informatika', '18.11.2176', 7, 5, 'c283efdf8faf7f4f13428891fc0b6c2c', '2018-07-19 03:50:50', '2018-07-19 03:53:14'),
('085859142038', 'fawaizur.rh@gmail.com', 'M. Fawaizur Rahman', 'MA  DARUL HUDA MAYAK PONOROGO', 'Informatika', '18.11.2177', 7, 4, 'f6ff5a591ece341acbe5ad1314204363', '2018-07-19 03:57:17', '2018-07-19 03:57:17'),
('085865328565', 'andikayk43@gmail.com', 'DIDIT ANDIKA FEBRIANSAH', 'SMA NEGERI 1 GIRIMULYO', 'Teknik Komputer', '18.83.0199', 7, 6, 'f918308e95ec1cad9d70801f9030a8e3', '2018-07-20 07:51:41', '2018-07-20 07:51:41'),
('085865778019', 'rico.angger14@gmail.com', 'ANGGER RICO PRASASTI', 'MA ASSALAAM', 'Sistem Informasi', NULL, 6, 4, '18bdcf1899ec460a8d76dace7802ca92', '2018-06-01 07:22:04', '2018-06-01 07:22:04'),
('085866679714', 's.plash606@gmail.com', 'afif ridlo widianto', 'SMA SCIENCE PLUS', 'D3 - Teknik Informatika', NULL, 1, 5, '431917cfe0ccee1fdf56c9626d8e9495', '2018-07-18 13:56:26', '2018-07-18 16:44:22'),
('085866875067', 'Fatah.faza@gmail.com', 'Muhammad fatah faza', 'Sma muhammadiah 1 bantul', 'Sistem Informasi', NULL, 7, 4, '3a97b8a8a819fb175ba66aea0f889509', '2018-06-02 13:47:41', '2018-06-03 14:14:18'),
('085867070686', 'daniwardana123@gmail.com', 'Dani Kusuma Wardana', 'Smk muhamadiyah prambanan', 'Sistem Informasi', '18.12.0587', 3, 7, '09b4ed58b1dd7e4dea10dc585ae6e185', '2018-05-12 15:35:13', '2018-05-15 13:55:50'),
('085867623069', 'tanyut48@gmail.com', 'Nisrina Chandra Sagita', 'MAN 2 Yogyakarta', 'Ilmu Komunikasi', '18.96.0419', 4, 7, '9c79123bd2db6810d12fe66cc684bf10', '2018-07-19 16:09:35', '2018-07-19 16:09:35'),
('085868649997', 'dwilaksitaw@gmail.com', 'Dwi Laksita Wulandari', 'SMK', 'Ekonomi', '18.91.0040', 2, 4, 'f5f36aff992698f9e336e40642f1695b', '2018-07-22 08:26:21', '2018-07-22 08:26:21'),
('085868810211', 'rizkyhanda2000@gmail.com', 'Rizky Handayani', 'SMA N 1 Jogonalan', 'Ekonomi', '18.91.0049', 1, 7, 'c827c3e1b53b6624ac40567f75bcc487', '2018-07-22 03:01:57', '2018-07-22 03:01:57'),
('085869145466', 'iqbal.firzal@gmail.com', 'Iqbal Firzal', 'SMKN 2 PEKALONGAN', 'Informatika', NULL, 9, 5, 'a786c2552e5f0779c46657a0cbb92de1', '2018-05-01 13:48:56', '2018-05-01 13:48:56'),
('085869851072', 'billaahakuntan02@gmail.com', 'Nur Billaah Endarwati', 'SMKN 7 Yogyakarta', 'Ilmu Komunikasi', '18.96.0444', 2, 6, '6fa847310524edd768688a7699984a83', '2018-07-04 15:54:33', '2018-07-04 15:54:33'),
('085870227548', 'uchihaloeqman@gmail.com', 'Lukman Haryanto', 'SMK N 2 Temanggung', 'Informatika', '18.11.1813', 4, 5, 'a0de0bf16b4e00cf3550e3b6879f17d7', '2018-04-02 15:25:10', '2018-04-02 15:25:10'),
('085875118399', 'ahmad.zain0612@gmail.com', 'Akhmad zain', 'SMK tamtama kroya', 'Teknik Komputer', NULL, 1, 6, '7d3e77b184160fa3a3ece43271364e21', '2018-05-18 04:34:29', '2018-05-18 04:34:29'),
('085875118830', 'fdirchania@gmail.com', 'fiona dirchania almaas', 'smk karya rini', 'Ilmu Komunikasi', '18.96.0621', 9, 4, '009a1f4fb3306334b36d8e3643ab075f', '2018-07-23 07:57:58', '2018-07-23 07:57:58'),
('085875344385', 'sahadewa933@gmail.com', 'Rakyan Rasyid SahaDewa', 'SMKN 1 GANTIWARNO', 'Teknik Komputer', '18.83.0140', 8, 4, '193c4b9d3398c1da20c9737c25a294f3', '2018-07-19 11:03:00', '2018-07-19 11:03:00'),
('085875815954', 'tsanimuharam11@gmail.com', 'Mohammad nurtsani muharam', 'Sma n 1 jatinom', 'Sistem Informasi', '18.12.0754', 8, 4, '45a9244fe0bdb392b9cad2b31613747d', '2018-07-22 05:04:17', '2018-07-22 05:04:17'),
('085875940894', 'muhammadasifurrohman@gmail.com', 'Muhammad Asifurrohman', 'SMK N 2 Yogyakarta', 'Informatika', '18.11.1829', 7, 4, '859fbaba6a5bb1c2ea7b93a05d978d46', '2018-04-21 15:43:00', '2018-04-21 15:43:00'),
('085876313935', 'rekarsifiasta@gmail.com', 'Refia Karsista', 'SMA 1 Kudus', 'Teknologi Informasi', '18.82.0271', 2, 5, '927cc0d53753f48fdd51c7ef11d6cf94', '2018-05-09 09:55:04', '2018-07-20 05:39:36'),
('085877677934', 'khoiruddinlk@gmail.com', 'Lukman Khoiruddin', 'SMA', 'Sistem Informasi', '18.12.0558', 7, 5, '65373e4ddb4603b3074e00d68527bcd3', '2018-04-23 03:16:29', '2018-04-23 03:16:29'),
('085878232396', 'ubdkho@gmail.com', 'Ubaid Khoiri', 'SMA Negeri 7 Yogyakarta', 'Sistem Informasi', NULL, 3, 7, 'c0c19851a3ff9630a5632a90751ddc3f', '2018-07-24 05:01:13', '2018-07-24 05:01:13'),
('085878920176', 'marsha139d@gmail.com', 'Marsha Recha Hapsari', 'MA ALI MAKSUM YOGYAKARTA', 'Informatika', NULL, 1, 5, '499c1c18f162e7117903d6dea9e2cc24', '2018-04-26 00:57:39', '2018-04-26 00:57:39'),
('085878940160', 'galangsetiabudi0906@gmail.com', 'Galang setia budi', 'Smk n 1 yogyakarta', 'D3 - Manajemen Informatika', NULL, 6, 6, '309eb8166b23d55498359910f5c824e2', '2018-07-26 05:40:12', '2018-07-26 05:40:12'),
('085879219995', 'maulana.abid.ma@gmail.com', 'Maulana Abid Alifuddin', 'SMA N 1 Tawangsari', 'Teknik Komputer', '18.83.0202', 3, 6, '7e4678998fe58b4451f43458281edae1', '2018-07-25 05:25:07', '2018-07-25 05:25:07'),
('085879260693', 'rahmat.prastanto62@gmail.com', 'Rahmat Dwi Prastanto', 'SMKN 1 Sewon', 'D3 - Teknik Informatika', '18.01.4107', 4, 5, '7e5415b6cef210b94d180f1ce204dd83', '2018-05-13 08:11:31', '2018-06-05 11:46:10'),
('085885911074', 'ferrypawpaw48@gmail.com', 'Ferry Hamam Maulana ', 'SMK AL-FATTAH', 'Sistem Informasi', NULL, 7, 4, 'ca5d957e5263665d9c4d237e32a6d871', '2018-07-24 02:36:58', '2018-07-24 04:26:33'),
('085927487100', 'yanuarakhid@gmail.com', 'Akhid Yanuar Al-Fikri', 'SMKN 2 WONOSARI', 'Informatika', '18.11.2065', 7, 4, 'd4aeb2610d5d9ecdc72f725e0544fbb5', '2018-07-13 14:38:23', '2018-07-13 14:47:58'),
('085934303277', 'mulan.nandhita@gmail.com', 'Mulan nandhita Aisya ', 'Smk Indonesia jurusan farmasi ', 'Teknologi Informasi', NULL, 3, 7, '6f4c18e39368062e3a86e45235976455', '2018-04-02 11:34:48', '2018-04-02 11:34:48'),
('087711504658', 'fathul04fahmi@gmail.com', 'fathul haque fahmi', 'SMAN 5 NEGERI PALEMBANG', 'Teknologi Informasi', '18.82.0389', 8, 6, '2174ce1514afdb243036d6c70da3632e', '2018-07-26 08:50:00', '2018-07-26 08:50:00'),
('087712379187', 'olzfikri1@gmail.com', 'Fikri Ivaldi Ihsan', 'SMK Negeri 1 Bantul', 'Informatika', '18.11.1947', 1, 7, 'ef9370c8d7fff3abb6c8f1faab5ef4e5', '2018-05-18 05:25:47', '2018-05-18 05:25:47'),
('087723419000', 'arifdeathangel99@gmail.com', 'Arif Eko Nur Prasetyo', 'SMK YAPPI Wonosari', 'Informatika', NULL, 2, 7, '2167d455c4a7598900a04a5be1397048', '2018-05-17 10:14:56', '2018-05-17 10:14:56'),
('087724848282', 'naufalafif0048@gmail.com', 'Naufal Afif Hidayat', 'SMK N 2 Kebumen', 'Informatika', NULL, 9, 4, '662be874e1dfa061b55eb741b43e204f', '2018-07-01 07:11:36', '2018-07-01 07:11:36'),
('087730701103', 'wahyuhartoyo7@gmail.com', 'Hartoyo Wahyu Setiadi', 'Man 2 Mataram', 'Teknik Komputer', NULL, 2, 5, 'b5b00bdebcf097958de7483c57dd1494', '2018-07-18 11:29:25', '2018-07-18 11:29:25'),
('087731376007', 'bimoaji79@gmail.com', 'Bimo Aji Yogiantoro', 'SMKN 3 YOGYAKARTA', 'Teknologi Informasi', NULL, 1, 6, 'abd5bce5096ce93715b33143bc165f67', '2018-05-29 13:19:34', '2018-05-30 05:58:19'),
('087733661435', 'anita.damayanti931@gmail.com', 'Anita Damayanti', 'SMA PGRI 1 PATI', 'Teknologi Informasi', '18.82.0264', 7, 7, '091671c24e65ab3e0f0ead6a43cef698', '2018-05-05 09:18:21', '2018-05-07 12:42:37'),
('087734547379', 'wahyupj560@gmail.com', 'Wahyu Purnomo Jati', 'SMK 2 Sewon', 'Informatika', '18.11.2145', 6, 4, '2ef4ee2c7075c4ac42992e800334839c', '2018-07-18 13:58:34', '2018-07-18 13:58:34'),
('087734936170', 'mahardikaellen0102@gmail.com', 'Fransiska Mahardika Ellen ', 'SMA N 1 PRAMBANAN ', 'Akuntansi', NULL, 6, 5, 'e3b1d436596a514c20c6506c8f3bdc9e', '2018-06-25 09:40:31', '2018-06-25 09:40:31'),
('087738087911', 'aisysh74@gmail.com', 'Aisyah Nur Pratiwi', 'SMK Muhammadiyah 1 Ponjong', 'Ilmu Komunikasi', NULL, 3, 5, 'd437159b8c9aea51198815e981950786', '2018-04-26 04:54:17', '2018-04-26 04:54:17'),
('087738387290', 'rezzhav@gmail.com', 'Muhammad Rezzha Riamrizal Arsya', 'Smk Muhammadiyah 3 Yogyakarta', 'D3 - Teknik Informatika', '18.01.4105', 3, 5, '3b93f86ad902f315407bdc0a26bb3962', '2018-04-23 14:26:06', '2018-04-23 14:26:06'),
('087739473192', 'dwicahyo380@gmail.com', 'Dwi Cahyo Nugroho', 'SMK N 2 Pengasih', 'D3 - Teknik Informatika', NULL, 6, 4, 'b8ae9524a56373dcb5e7cc2997cd0219', '2018-07-13 00:11:08', '2018-07-13 00:11:08'),
('087739618412', 'endikurniawan1405@gmail.com', 'Endi Kurniawan', 'SMKN 3 WONOSARI', 'Sistem Informasi', '18.12.0712', 6, 6, '158bc9ceda7c49d03517fcea9e058872', '2018-07-20 07:10:09', '2018-07-20 07:10:09'),
('087739750237', 'pitrahandanyanta67@gmail.com', 'Kukuh Putra Handayanta', 'SMA Muhammadiyah 4 Yogyakarta', 'Teknik Komputer', '18.83.0159', 2, 7, '0b6d2ef59d6e0966e00869e1e641a57a', '2018-07-24 03:16:58', '2018-07-24 03:16:58'),
('087758894494', 'nueg44@gmail.com', 'WAHYU NUGROHO', 'MAN PACITAN', 'Sistem Informasi', NULL, 3, 4, 'fe826da65ece98df31ea628cbe868d71', '2018-04-30 11:00:26', '2018-04-30 11:00:26'),
('087761761073', 'natakids69@gmail.com', 'Lalu ismangun hadinata ', 'SMKN 1 KOPANG ', 'Informatika', NULL, 2, 5, '78f08711f98c1bc0dacb9ffb28a24f54', '2018-04-21 07:22:01', '2018-04-21 07:22:01'),
('087764230141', 'manggalaconce21@gmail.com', 'Restu Manggala Adiputra', 'SMK Leonardo Klaten', 'Informatika', NULL, 5, 7, '46cd25c30d41a71ccea10c1911de8bbe', '2018-05-05 06:06:09', '2018-05-05 06:06:09'),
('087765789633', 'yaqdhanafrzl@gmail.com', 'Yaqdhan Afrizal Hamzah', 'SMAN 105 Jakarta', 'Teknologi Informasi', NULL, 1, 6, '3764cad2bc0f86b53458a250f87e34db', '2018-07-14 05:09:59', '2018-07-14 05:09:59'),
('087782588006', 'ashimfaris@gmail.com', 'FARIS ASHIM', 'SMAN 02 PEMALANG', 'Teknologi Informasi', '18.82.0331', 7, 6, 'f8afe1eda1706f46268bd231df657b13', '2018-07-08 02:27:48', '2018-07-08 02:27:48'),
('087788055464', 'anggarizki81@gmail.com', 'Angga Rizki Alfiyana', 'SMK Telekomunikasi Telesandi Bekasi', 'Informatika', NULL, 1, 5, '6c45267ee0f96f0d28df613bbe18af67', '2018-04-29 06:16:22', '2018-04-29 13:07:37'),
('087804847588', 'fauzan.okta10@gmail.com', 'Fauzan Oktavianto Nugroho', 'SMA IT ABU BAKAR', 'Informatika', '18.11.2024', 7, 6, 'ea931c82de5b7e041b3c679c12981c8d', '2018-06-12 02:30:47', '2018-06-12 02:30:47'),
('087812502470', 'ussyqoriah@gmail.com', 'Ussy qori safira', 'Sma negeri 2 tanjungpandan', 'Ilmu Komunikasi', '18.96.0445', 6, 7, 'e883d18b1bf812ebd7cd290b92328db0', '2018-05-22 06:12:30', '2018-05-22 08:37:31'),
('087824939780', 'Dindadewaani@gmail.com', 'Dinda Dewayani ', 'SMAN 5 Cimahi', 'D3 - Teknik Informatika', '18.01.4104', 5, 5, '9a68bf336cf78ead9d40260f122dd91d', '2018-04-21 05:42:39', '2018-07-26 16:30:15'),
('087830017068', 'nidaprilla14@gmail.com', 'Nida Prila Edijana ', 'SMK NU TEMANGGUNG', 'Informatika', NULL, 2, 7, 'ff7cc44f65cb3e915e3a65e65a51833b', '2018-06-25 05:19:31', '2018-06-25 05:19:31'),
('087834454887', 'ferdikaadhipradana88@gmail.com', 'Ferdika adhi pradana', 'SMA N 1 PRAMBANAN KLATEN', 'Kewirausahaan', '18.92.0054', 4, 5, 'e2388fd49c4e5f3b8b69625199c3881f', '2018-05-23 12:02:33', '2018-05-23 12:02:33'),
('087834927012', 'duwik99@gmail.com', 'Kus Duwi Nugroho', 'SMK Tunggal Cipta ', 'Informatika', '18.11.1858', 2, 5, '216da0b6131f8853f31531df96617dde', '2018-05-01 23:49:39', '2018-05-01 23:49:39'),
('087835767491', 'faisaloffc@gmail.com', 'Muchammad Faisal Ibrahim Al - Hasyih', 'SMKN 2 SEWON', 'Informatika', NULL, 4, 4, 'e74e22c1ab0539fb8b53cf8a3931af79', '2018-07-21 05:03:44', '2018-07-21 05:03:44'),
('087837568327', 'silpidwine27@gmail.com', 'Silpi Dwine Rahayu', 'SMK', 'Akuntansi', '18.93.0065', 6, 6, '86b35a0500eb07ff11d9baf4ff66e8e2', '2018-07-10 10:36:52', '2018-07-26 10:36:48'),
('087838110564', 'gilangwae30@gmail.com', 'ADI GILANG PANGESTU', 'SMK N3 YOGYAKARTA', 'Ilmu Komunikasi', NULL, 1, 6, 'd8f17d9b48684e2f31d3151e820cdd4a', '2018-06-23 03:28:22', '2018-06-23 03:28:22'),
('087838118015', 'hananolistyo@gmail.com', 'Hanan Listyo Wibowo', 'Smkn 2 Wonosari', 'Teknik Komputer', '18.83.0181', 6, 5, '884869354174ef011b8b5a9972863a39', '2018-07-16 03:05:13', '2018-07-16 03:05:13'),
('087838408363', 'dindalasm75@gmail.com', 'Zaky Ibrahim Yasin', 'SMAIT BINA UMAT', 'D3 - Teknik Informatika', NULL, 8, 7, 'ea0578f160a4d94ea387f0623074f7d7', '2018-05-11 02:46:55', '2018-05-11 02:46:55'),
('087838641526', 'raynaldi.rachmatwu@gmail.com', 'Raynaldi Rachmat Pratama', 'SMA N 1 SALAMAN', 'D3 - Manajemen Informatika', NULL, 9, 5, '6e1a36c0eb336503962f2e8d5efeb327', '2018-05-17 05:19:55', '2018-05-17 05:19:55'),
('087838693289', 'felixthecat13071993@gmail.com', 'Rayhan Arya Gunawan', 'SMAN 11 Yogyakarta', 'Teknologi Informasi', NULL, 9, 7, '26e00137a42b742aad42ceae910afe75', '2018-05-01 16:09:27', '2018-05-01 16:09:27'),
('087838760336', 'suryobaskoroa@gmail.com', 'SURYO BASKORO AJI', 'SMK N 1 BANTUL', 'Informatika', '18.11.2162', 1, 5, '693e505ef1691646d3a4510d412ad788', '2018-07-19 05:31:27', '2018-07-19 05:31:27'),
('087839135519', 'rajna.paramitha@gmail.com', 'Rajnaparamitha Kusumastuti', 'SMA Al Islam 1 Surakarta', 'Sistem Informasi', '18.12.0562', 2, 7, 'b7c433ff4c73182cf790c293a0300628', '2018-04-25 23:22:08', '2018-07-26 12:22:02'),
('087839481977', 'hilmy2512@gmail.com', 'Hilmu Rizky Ramadhan', 'SMA Muhammadiyah 2 Yogyakarta', 'Informatika', NULL, 8, 6, '053fb60759748dbda7382aa0f8a2f76f', '2018-05-30 03:06:18', '2018-05-30 03:06:18'),
('087839761813', 'rizcasalsabilla01@gmail.com', 'Rizca Salsabila Putri', 'SMKN 7 Yogyakarta', 'Ilmu Komunikasi', '18.96.0452', 3, 6, 'bdd1e87be43d5436fc87b4597e6cf4fd', '2018-07-04 16:34:46', '2018-07-04 16:34:46'),
('087845657258', 'theophilawidyayanti@gmail.com', 'Theophila Lusiana Widyayanti', 'SMK N 1 GODEAN', 'Ilmu Komunikasi', '18.96.0535', 7, 7, '432b64e935216f6d54c567550386996b', '2018-07-24 12:43:41', '2018-07-24 12:43:41'),
('087845891254', 'afghin@gmail.com', 'afgina', 'sma 1 bantul', 'Teknologi Informasi', '18.60.0006', 2, 7, '45a07809a58323d6f791dbd5e9987ffd', '2018-07-26 15:16:49', '2018-07-26 15:16:49'),
('087849272618', 'ahmadyani13728@gmail.com', 'AHMAD YANI', 'MA NAHDLATUL WHATHAN', 'Ilmu Komunikasi', NULL, 8, 4, '901266cbfae0ec37db0dee656c863e33', '2018-06-01 13:28:11', '2018-06-01 13:28:11'),
('087885330442', 'monahaddar99@gmail.com', 'Muna Fadilah', 'SMA', 'Kewirausahaan', NULL, 1, 7, '44db3c2741df15e7d2d04366ce228bfd', '2018-07-25 01:03:26', '2018-07-25 01:03:26'),
('087886447004', 'drgerry30@yahoo.com', 'Geri Satria Maga Permana', 'SMA Yadika 01', 'Informatika', '18.11.1893', 6, 4, 'e63d32f085d7ee4c712033df71a50ecf', '2018-06-07 13:32:44', '2018-06-07 13:32:44'),
('087886788463', 'nisariskika007@gmail.com', 'Annisa Rizqika Effendy Putri', 'SMK Al Fattah', 'Ilmu Komunikasi', '18.96.0507', 5, 7, 'f675f12e210a1a17f8391ad064cd01e5', '2018-07-26 22:48:49', '2018-07-27 12:11:40'),
('087888703008', 'rohmad.gk18@gmail.com', 'Rohmad budipangestu', 'SMKN 1 Girisubo', 'D3 - Teknik Informatika', '18.01.4168', 9, 6, '3a55c29cf6d305c217c52e27a47d327b', '2018-07-17 13:13:02', '2018-07-17 13:13:02'),
('08812472920', 'restuekofebrianto@gmail.com', 'Restu Eko Febrianto', 'SMA N 1 Sukorejo', 'Informatika', '18.11.1821', 4, 5, '8ef7077c04175a662885c2a5792d1eb9', '2018-04-28 00:35:16', '2018-05-08 03:28:56'),
('08812609226', 'yedidaharya@gmail.com', 'Yedida Harya Olivtian', 'SMK N 1 Bantul', 'Informatika', '18.11.2094', 5, 6, 'e7c06e65b085b3a2b7560179a6e15516', '2018-07-23 07:42:09', '2018-07-23 07:42:09'),
('088215028699', 'iamdamar@yahoo.co.id', 'Damar Djati Wahyu Kemala', 'SMA NEGERI 1 BLORA', 'Informatika', '18.11.1807', 3, 6, '36ef127518f77f93515946c7d0627e3b', '2018-04-23 04:23:21', '2018-04-23 04:23:21'),
('088268041290', 'bagusekoprasetyo552@gmail.com', 'Bagus Eko Prasetyo', 'SMAN 1 Sekampung Udik', 'Ilmu Komunikasi', NULL, 6, 4, 'b341d5945ca5824832c5e6c873f6f9c2', '2018-07-24 03:31:58', '2018-07-24 03:31:58'),
('088806104032', 'rezaapem2000@gmail.com', 'Reza Andika Putra', 'SMK', 'D3 - Teknik Informatika', NULL, 8, 6, '93fecacf0d7a40ca32680bb28bfbbdbd', '2018-06-19 04:07:03', '2018-06-19 04:07:03'),
('08886801065', 'ahmadsyaebani1@gmail.com', 'Ahmad Syaebani', 'SMK N 1 Sedayu', 'D3 - Manajemen Informatika', '18.02.0198', 9, 5, 'c0705d8d06fb4a4c5802ba3a08eafb26', '2018-05-15 23:34:51', '2018-06-24 23:44:45'),
('088983641518', 'hammam.afiq277@gmail.com', 'Hammam Afiq Murtadho', 'SMK TELKOM PURWOKERTO', 'Informatika', NULL, 4, 6, 'ec7c725c197a213b75f7dc68cbd95a0b', '2018-04-23 05:01:35', '2018-04-23 05:01:35'),
('089501780349', 'mrohman812@gmail.com', 'Muhammad Nur Rohman', 'Smkn 3 Yogyakarta ', 'Ilmu Komunikasi', '18.96.0462', 7, 7, 'a62009ebd0a2c41bb83405936fadb9f1', '2018-06-17 17:23:13', '2018-06-17 17:23:13'),
('089505975639', 'dickyarisya@yahoo.com', 'Dicky Arisya Rizaldi Ramadandi', 'SMKN 1 BANTUL', 'Informatika', '18.11.1833', 8, 5, 'a9e3731be3d4d6bec92f21b6a7c20901', '2018-04-21 06:49:50', '2018-04-21 06:49:50'),
('089507203209', 'melissaazhari220@gmail.com', 'Melissa Azhari ', 'SMA Lentera Harapan Way Pengubuan , Lampung Tengah', 'Informatika', '18.11.2097', 8, 4, 'e9028e1cb3001b54b7b550dafbd92443', '2018-07-26 14:43:23', '2018-07-26 14:43:23'),
('089513231271', 'hestysetya590@gmail.com', 'hesty Setyaningsih', 'SMK', 'Ilmu Komunikasi', NULL, 8, 7, '7e1e326abcad31a4ffee62ec602412eb', '2018-07-24 12:45:24', '2018-07-24 12:45:24'),
('089515939150', 'cndrayanu198@gmail.com', 'Chandra yanuri adi', 'SMK muhammadiyah 1 klaten utara', 'Teknik Komputer', NULL, 3, 5, 'dd2ce3fd99bfb5beb047923935d3c665', '2018-05-12 12:28:26', '2018-07-20 04:36:02'),
('089516586040', 'egiph76@gmail.com', 'Egi Pratama Hady', 'SMAN 2 kabupaten Tangerang', 'Teknologi Informasi', NULL, 8, 7, '29defa79637089f3365181028432e39b', '2018-05-05 16:28:20', '2018-05-05 16:28:20'),
('089519221557', 'wahidfatahilah404@gmail.com', 'Wahid Fattahillah', 'SMA N 1 CAWAS', 'Informatika', NULL, 5, 5, 'bc47870b1aa6cb28d0a36fa70b243444', '2018-05-17 16:09:57', '2018-05-17 16:09:57'),
('089521195132', 'theogeo20@gmail.com', 'Theofilus kharis asmara', 'Smk bopkri 1 yogyakarta', 'Sistem Informasi', NULL, 8, 7, 'dc4f3fba075dc49898a1ca3bf96bb103', '2018-05-18 03:25:28', '2018-05-18 03:25:28'),
('089525184087', 'febi.arum@yahoo.com', 'Febi Arum Rahmawati', 'SMK N 2 Yogyakarta', 'D3 - Manajemen Informatika', '18.02.0249', 1, 6, 'fc3fb64922c997d4dc1cd07133becbaf', '2018-07-27 02:37:08', '2018-07-27 02:37:08'),
('089527684700', 'indahwardani1818@gmail.com', 'Indah Putri Wardani', 'SMK N 1 JOGONALAN', 'Informatika', '18.11.2148', 1, 7, 'dd52e8eb755da15cd65a1eab29ff1346', '2018-07-21 05:04:14', '2018-07-21 05:04:14'),
('089528724604', 'faizilyasa21@gmail.com', 'Faiz Ilyasa', 'SMAN 1 KETAPANG', 'Sistem Informasi', NULL, 3, 4, '7eb3855332ab399a4853b7f5b13c8c9e', '2018-06-06 05:54:26', '2018-06-06 05:54:26'),
('089529124582', 'Caesarfaiz.m@gmail.com', 'Caesar faiz mulyawan', 'SMAN 4 PONTIANAK', 'Ilmu Komunikasi', '18.96.0410', 7, 7, '58ad00b0afd10bd7a878d17d30373986', '2018-06-06 05:54:13', '2018-06-06 05:54:13'),
('089530583111', 'djogjakarta15@gmail.com', 'Muhammad An Nashir', 'SMK Muhammadiyah 1 Yogyakarta', 'Ilmu Komunikasi', '18.96.0404', 4, 7, '11ad7996f53e43e840f274d3a229f640', '2018-05-07 05:23:36', '2018-05-07 05:23:36'),
('089530668256', 'kristaniaarf@gmail.com', 'KRISTANIA ARFIANTIN', 'SMK 1 SEDAYU', 'D3 - Manajemen Informatika', NULL, 9, 5, 'e1611c84e835185c06f55ca606545087', '2018-04-22 06:40:14', '2018-04-22 06:40:14'),
('0895322767980', 'alfairuzzulham@gmail.com', 'Farikh Alfairuz Zulham', 'SMA N 1 Sedayu', 'Informatika', NULL, 1, 4, 'f3201618583e24e242d3a5feeb59bca2', '2018-04-03 02:22:23', '2018-04-03 02:22:23'),
('0895323308393', 'mohamadfahmy013@gmail.com', 'mohamad fahmy', 'SMA N Rembang', 'Sistem Informasi', NULL, 2, 6, '13e23683782ee291af1a3e128d47218a', '2018-07-14 05:13:08', '2018-07-14 05:13:08'),
('0895333166115', 'septifridayanip@gmail.com', 'Septi Fridayani P', 'SMK Kesehatan Yarsi Medika', 'Ilmu Komunikasi', '18.96.0506', 1, 7, '9c61c4105fd8f39b522b2542b93231a1', '2018-07-18 05:41:27', '2018-07-24 04:24:42'),
('0895342852675', 'adityaagalih18@gmail.com', 'Aditya Galih F', 'SMA N 3 REMBANG', 'Informatika', NULL, 2, 4, '85e0ac51eb01abb3422ac12e35670c5c', '2018-06-08 07:23:19', '2018-06-22 14:46:10'),
('0895358659679', 'adnanrezaa12@gmail.com', 'Adnan Reza Abdillah', 'SMK FARMASI MAJENANG', 'Teknologi Informasi', NULL, 2, 7, '465e220a7dfbda45427aee57940f8a3f', '2018-04-08 03:13:31', '2018-04-08 03:13:31'),
('0895363506882', 'yudhagalih92@gmail.com', 'Yudha Galih Permana', 'SMA Muhammadiyah 4 Yogyakarta', 'Teknologi Informasi', NULL, 8, 7, '004dd89dce83aff9a31902d751cc129a', '2018-05-23 07:38:45', '2018-05-23 07:38:45'),
('0895364285945', 'ayundacesa@gmail.com', 'AYUNDA CESA SALSABILA', 'SMK NEGERI 7 YOGYAKARTA', 'Ilmu Komunikasi', '18.96.0458', 6, 7, 'f4d094edb9de80addb56e86d8622cd8f', '2018-05-20 04:26:07', '2018-05-20 04:26:07'),
('0895364842161', 'sigitnur1711999@gmail.com', 'Sigit Nur  Ramadhan Adiyansyah', 'SMK KI AGENG PEMANAHAN', 'Sistem Informasi', '18.12.0688', 5, 4, '3234055940a16866a817c0c0338c4101', '2018-06-26 14:21:14', '2018-06-26 14:49:26'),
('0895366140144', 'andrenovafadli@gmail.com', 'Andre Nova Fadli Wisnu Bayu Aji', 'SMK Muh 1 Imogiri', 'Teknik Komputer', NULL, 8, 5, '44ba14e8857238bc4a522fd7a2f65371', '2018-06-26 13:59:48', '2018-06-26 13:59:48'),
('0895366525163', 'febri.boomsex@gmail.com', 'Ahmad Febri Diqnsyah', 'SMA N 1 BANGSRI', 'Informatika', '18.11.1984', 3, 6, '8f0c42a382735062bc4195ca1d95cf30', '2018-05-26 10:31:20', '2018-05-26 10:31:20'),
('0895366621257', 'putradaasif@gmail.com', 'Muhammad Asif Putrada', 'SMK SATYA PERSADA', 'D3 - Teknik Informatika', '18.01.4153', 9, 6, '1eca1c47d5c725a9dc919d002338c2e7', '2018-07-26 10:51:54', '2018-07-26 10:51:54'),
('0895371738847', 'radendhimas1999@gmail.com', 'Raden Dhimas Winendra Pamungkas ', 'SMA', 'Sistem Informasi', '18.12.0625', 3, 6, '477c4adf23c61f972a08b13990a12fe3', '2018-05-29 01:40:37', '2018-05-29 01:40:37'),
('0895373506003', 'elfanzarl21@gmail.com', 'Elfandi Arizal Rifqi Alwanda', 'SMK N 3 YOGYAKARTA', 'D3 - Manajemen Informatika', '18.02.0197', 9, 6, '45cc1582269ceb6a30cba86748f1900b', '2018-05-30 03:08:56', '2018-05-30 03:08:56'),
('0895379816088', 'Dzaisal73@gmail.com', 'Dzaisal Helga Assegaf ', 'SMA N 1 WEDI ', 'D3 - Manajemen Informatika', '18.02.0242', 9, 7, '126805c4758d97e12e410bbf5408a05b', '2018-07-24 22:05:40', '2018-07-24 22:05:40'),
('0895380380841', 'Permanadmz@gmail.com', 'Dimas permana', 'Sma', 'Ilmu Komunikasi', NULL, 4, 4, '5dbbd2f89b33c90532b0f2df7c7b5ac7', '2018-07-07 01:09:52', '2018-07-07 01:09:52'),
('0895384312120', 'jaliusyoufee@gmail.com', 'Jalius You Fee Tree', 'SMK N 3 Yogyakarta', 'Informatika', '18.11.2068', 5, 6, '603bf2d032201c9d7a7c21ee87c7d062', '2018-07-09 19:30:12', '2018-07-09 19:30:12'),
('0895387234273', 'iguhpambudi50@gmail.com', 'Iguh Pambudi', 'SMK MUHAMMADIYAH 1 BANTUL', 'Informatika', NULL, 9, 4, '401d098a8e7bc63a7054ee142968cd4d', '2018-07-14 04:20:52', '2018-07-14 04:20:52'),
('0895391166362', 'dickysatria62@gmail.com', 'Riyan Dicky Satria', 'SMA N 1 PRAMBANAN KLATEN', 'Informatika', '18.11.2110', 8, 6, '2882769ec9c818a08a0c31c688957498', '2018-07-12 14:19:00', '2018-07-20 08:36:00'),
('0895391698499', 'kurniawann191@gmail.com', 'Adhitya damar prananta', 'MAN4 SLEMAN', 'D3 - Manajemen Informatika', '18.02.0209', 4, 6, 'dc1dbc52585f03a5f8046554b3406449', '2018-07-12 05:40:10', '2018-07-12 05:40:10'),
('0895392465888', 'dhityadhizt@gmail.com', 'Aditya Putera Prakosa', 'MA N 2 Bantul', 'Teknik Komputer', NULL, 9, 5, 'c258fefdba2c3b72fd26da5ef48a289b', '2018-06-26 13:59:49', '2018-06-26 13:59:49'),
('0895399221442', 'yodhaprastya@gmail.com', 'Yodha Prastya Aji', 'SMA NEGERI 2 SANGGAU', 'Geografi', '18.85.0037', 9, 7, '571a2cf0b66d0f7add83c0ab216865cd', '2018-05-18 04:20:46', '2018-05-18 04:20:46'),
('0895399403001', 'suluhwidigdo59@gmail.com', 'Suluh Widigdo', 'SMKN 1 REMBANG ', 'Teknologi Informasi', NULL, 5, 7, '41f5d178ffbddaa017d1e90ed3c82080', '2018-06-15 13:36:30', '2018-06-15 13:36:30'),
('0895609630860', 'aksa904@gmail.com', 'Eltansha Raksa Gama', 'SMA NEGERI 1 PANGKALPINANG', 'Sistem Informasi', NULL, 5, 4, '72997a109f7d3ff991295811ec255b7c', '2018-07-27 05:51:29', '2018-07-27 05:51:29'),
('0895615101993', 'aldigarmond12345@gmail.com', 'Kristiadi Tri Putra', 'SMA KARTINI', 'Ilmu Komunikasi', NULL, 1, 7, '00d51b5e034596fad2bc55c68a8d835c', '2018-07-18 04:59:25', '2018-07-18 04:59:25'),
('0895702816026', 'singkawang481@gmail.com', 'Azira Virandani', 'SMA 2 SINGKAWANG BARAT', 'Informatika', NULL, 6, 5, '2f89e46d5f80791f25920dd75590e0d5', '2018-07-25 19:21:49', '2018-07-25 19:21:49'),
('089602307511', 'rr.lisaamania@gmail.com', 'RR.LISA AMANIA SETYAPUTRI', 'SMK N 2 SEWON', 'Ilmu Komunikasi', '18.96.0497', 4, 6, '88cc653b2d9168d32a883dda5ad98e1a', '2018-06-07 06:14:46', '2018-06-07 06:14:46'),
('089603198854', 'adiramadhan480@gmail.com', 'adi ramadhan', 'smk n 2 yogyakarta', 'Sistem Informasi', '18.12.0554', 1, 5, '1e668d8d88b67fee4b1b6c5e187047ca', '2018-04-04 17:38:05', '2018-04-04 17:38:05'),
('089620411805', 'viantmajid@gmail.com', 'Muhammad Avian Majid', 'Smk Tamansiswa', 'Ilmu Komunikasi', '18.96.0439', 2, 6, 'd18c129a2fd1e34b249220e2c0250fdd', '2018-07-12 05:29:49', '2018-07-12 05:29:49'),
('089621159614', 'Mahendrasyahrul3@gmail.com', 'Syahrul Mahendra', 'SMK N 1 SEWON', 'Informatika', '18.11.1857', 4, 5, '9dcdd7de2bb435718a2b40e5e874c29c', '2018-05-13 08:10:42', '2018-05-13 08:10:42'),
('089621180691', 'yasiralfikry@gmail.com', 'Yasir Alfikry', 'SMK Umar Fatah', 'Sistem Informasi', NULL, 8, 5, '19ed9b1fd075a282cee90139f86a6674', '2018-07-28 02:22:07', '2018-07-28 02:22:07'),
('089627533128', 'alkidwika2@gmail.com', 'Alki Dwika Asyari', 'SMA NEGERI 4 PONTIANAK', 'Arsitektur', NULL, 9, 7, 'bcb0606b8a11a5557eca0e9dc9ace847', '2018-05-14 18:34:34', '2018-07-24 04:48:38'),
('089633797810', 'aprion.rahmat1212@gmail.com', 'Afrion Rahmat Nurli Hijri', 'SMK Negeri 01 Kota Bengkulu', 'Teknologi Informasi', NULL, 6, 7, '92a50c19e778331a7a7bcd71f519ac3a', '2018-05-01 15:18:47', '2018-07-20 11:49:49'),
('089636327276', 'iqbalallatif1981@gmail.com', 'Muhammad Iqbal Allatif', 'SMK Negeri 1 Bantul', 'Informatika', NULL, 3, 7, '14250cf3ac7cf64981a26aeced9e6368', '2018-06-12 00:55:59', '2018-07-11 09:39:17'),
('089636366038', 'wardhana098@gmail.com', 'Veto Wardana Putra', 'SMA Negeri 5 Yogyakarta', 'D3 - Teknik Informatika', NULL, 4, 5, '1eba18f0ff3d7379de5a27cbc0e9cd37', '2018-04-30 07:27:38', '2018-04-30 07:27:38'),
('089649620497', 'dhimasputra825@gmail.com', 'dhimas sukaton putro', 'Sma Muhammadiyah 1 surakarta', 'Ilmu Komunikasi', NULL, 5, 7, '2a6a97ebb8604fc2be7dacaae0a431d9', '2018-05-01 13:15:55', '2018-05-01 13:15:55'),
('089651061033', 'affandyrasyidh@gmail.com', 'Affandy Rasyid Hidayatullah', 'SMK N 2 PURWODADI', 'Teknologi Informasi', NULL, 7, 7, '20ee25f68e26bc2a73b7d82b478edc69', '2018-07-22 06:46:49', '2018-07-22 06:46:49'),
('089652990423', 'isnainisolikhah@gmail.com', 'Isnaini Solikhah', 'SMK N 1 Bantul', 'Sistem Informasi', '18.12.0710', 4, 6, 'df84cc7967cef803ce329a7cfafea9da', '2018-07-06 09:46:31', '2018-07-06 09:46:31'),
('089653604179', 'friendzastevano@gmail.com', 'Friendza hadi pramono ', 'SMK', 'D3 - Manajemen Informatika', NULL, 1, 4, '29779372eb29f04bdd3fa61cd001b8ac', '2018-07-10 12:17:42', '2018-07-10 12:17:42'),
('089653821144', 'ghozinm@gmail.com', 'Muhammad Chozin Chumaedi', 'SMK N 1 Wanareja', 'D3 - Manajemen Informatika', '18.02.0211', 2, 6, 'ddb4705857192fa14afcdc1601033d73', '2018-06-29 13:27:36', '2018-06-29 13:29:05'),
('089658939768', 'rickodwisaputra27@gmail.com', 'Ricko Dwi Saputra', 'SMA Negeri 1 Pejagoan', 'Sistem Informasi', NULL, 4, 6, 'e4dec1dd06d98bbe2fce928b233e43cc', '2018-06-03 15:58:39', '2018-06-03 15:58:39'),
('089661268555', 'biimasatriia21@gmail.com', 'Bima Satria Pratama ', 'Smk mhs batam', 'Informatika', '18.11.1908', 6, 5, 'a9a78158af56a5517898fc96b60293d7', '2018-05-17 11:03:28', '2018-07-25 04:14:39'),
('089667710135', 'sheryviane.m@gmail.com', 'Shery Viane Meira ', 'SMA N 1 Nanga Pinoh ', 'Ilmu Komunikasi', NULL, 6, 7, '685fbcf7e7c4d17653d2987bc775b2fa', '2018-05-25 03:53:29', '2018-05-29 03:05:45'),
('089670807321', 'dianadinugroho16@gmail.com', 'Dian Adi Nugroho', 'SMK MUHAMMADIYAH 1 MOYUDAN', 'Informatika', NULL, 7, 5, '0771324f3c079b3a58e4a1125e839a0f', '2018-04-21 06:04:05', '2018-04-21 06:04:05'),
('089673486309', 'alfianahmad506@gmail.com', 'Alfian Ahmad', 'SMA N 1 PIYUNGAN', 'D3 - Manajemen Informatika', NULL, 8, 5, '3c956e7fbb40e19981b5681c0bb64a65', '2018-05-24 06:06:19', '2018-05-24 06:06:19'),
('089673826111', 'vitaanissa.va@gmail.com', 'nonzi anissa novitasari', 'sma n 1 piyungan ', 'D3 - Manajemen Informatika', NULL, 6, 7, '77ea0e0ac196e8128b965adcc45f66b8', '2018-05-01 15:50:06', '2018-07-27 11:41:10'),
('089674337586', 'ferdibarca86@gmail.com', 'ikram ilhamdi ferdinand', 'SMA S MUHAMMADIYAH 4 YOGYAKARTA', 'Informatika', NULL, 1, 5, 'dc37f47c7e78328d1abc652425254bd4', '2018-05-17 13:03:57', '2018-05-27 10:47:54'),
('089674390535', 'thareq.farhan12@gmail.com', 'Thareq Al-Farhan', 'SMK Negeri 2 Bandar Lampung', 'Ilmu Komunikasi', '18.96.0622', 2, 7, 'cdcb83c8810f28116617a875ce07f2a4', '2018-07-19 05:52:44', '2018-07-24 12:56:08'),
('089674647278', 'joearmstrong911@gmail.com', 'Ikhwan setiawan ', 'Sma n 2 wonogiri ', 'Informatika', '18.11.1911', 7, 5, 'd2e8199d0dd6446c2b62355420796885', '2018-06-25 11:26:06', '2018-06-25 11:26:06'),
('089687955405', 'rizky.perdana2000@gmail.com', 'Rizky Putra Perdana', 'SMA NEGERI 11 PURWOREJO', 'Ilmu Komunikasi', '18.96.0593', 4, 4, 'dc4c0f8541a817905a11a8c772f4f49b', '2018-07-23 16:04:41', '2018-07-23 16:04:41'),
('089689313733', 'obietsmbrj@gmail.com', 'Obiet Inten Simbarjo', 'Smk N 1 Bantul', 'Sistem Informasi', '18.12.0619', 7, 6, '84a2ed47208cad5505bad7c6a79c15b0', '2018-05-29 17:44:09', '2018-06-11 22:09:23'),
('089696308696', 'Adindawahyudamayanti@gmail.com', 'Adinda Wahyu Damayanti', 'SMK N 1 Kalasan', 'Sistem Informasi', '18.12.0768', 7, 4, '5740b1b27af7650f0feb30af893dadfd', '2018-07-24 03:47:51', '2018-07-24 03:47:51'),
('08970022627', 'syaifuddinzuhri666@gmail.com', 'Moch.Syaifuddin Zuhri', 'Sma N 3 Rembang', 'Sistem Informasi', NULL, 5, 7, '22ceebf1c14dca359b4ad0d78b45fe58', '2018-05-17 10:18:45', '2018-05-17 10:18:45'),
('08970123139', 'putrinabilla2000@gmail.com', 'Nabilla Putri Waskito', 'SMK N 1 SEDAYU', 'D3 - Manajemen Informatika', NULL, 8, 6, '94f4d5ca42158e638246ba45ebf9b178', '2018-07-24 03:56:10', '2018-07-24 04:32:42'),
('08973021007', 'arditya.vha@gmail.com', 'Vikha Hendra Arditya', 'SMKN 2 SURAKARTA', 'D3 - Teknik Informatika', NULL, 3, 4, 'df7b1a00702870b0fac005766772579b', '2018-07-11 13:30:22', '2018-07-11 13:30:22'),
('08976369354', 'juanariisnoko@gmail.com', 'Juan ari isnoko', 'SMA GAMA Yogyakarta', 'Sistem Informasi', NULL, 4, 4, '43d5405e75fccc4b33df52e6e5c6d8d7', '2018-06-06 13:28:25', '2018-06-06 13:28:25'),
('08978299825', 'suckpoet@gmail.com', 'Ilham Nuruddin Alhuda', 'MA Madrasah Muallimin Muhammadiyah Yogyakarta', 'Informatika', '18.11.2036', 2, 6, '43d170ae6b1bcfc2398685a145784808', '2018-07-06 06:39:06', '2018-07-06 06:39:06'),
('08979721453', 'alwanabdulhdip@gmail.com', 'Alwan Abdulhadi Pratama', 'SMK Muhammadiyah Prambanan', 'Sistem Informasi', '18.12.0677', 2, 4, 'fe97a3adc060dd658904fad2abd8b8de', '2018-06-05 19:10:56', '2018-06-05 19:10:56'),
('08980048555', 'dwierfanni@gmail.com', 'Dwi Erfanni Bimantara', 'SMK NEGERI 5 YOGYAKARTA', 'Ilmu Komunikasi', '18.96.0572', 2, 7, '16e8b72e2cf34aab89c117be464f0222', '2018-07-22 03:05:19', '2018-07-22 03:05:19'),
('08982333139', 'asrorgetassrabi@gmail.com', 'MUHAMMAD KHOZINUL ASROR', 'SMK NU MA\'ARIF KUDUS', 'Informatika', '18.11.2121', 4, 6, 'e724a615cf2d72197275e239de79e0ab', '2018-07-23 03:45:52', '2018-07-23 03:45:52'),
('08990543364', 'azizyogo8@gmail.com', 'AZIZ YOGO UTOMO', 'SMK N 2 DEPOK', 'Informatika', NULL, 5, 6, 'b2af722f9710ae6b38a119f1192895f8', '2018-05-01 15:27:30', '2018-05-01 15:27:30'),
('08991500012', 'IkilahTri@gmail.com', 'Tri Ariyanto', 'Smk Giripuro Sumpiuh', 'Sistem Informasi', NULL, 9, 6, '7ec2410186ceea88fe62c6b3033102f3', '2018-05-09 03:34:31', '2018-05-09 03:34:31'),
('08993967002', 'dms.yp19@gmail.com', 'Dimas Yoga Pramudya', 'SMAN4 Pontianak', 'Ilmu Komunikasi', NULL, 8, 7, 'c1c283783aefd1c77ae555a684308664', '2018-06-06 07:01:14', '2018-06-06 07:01:14'),
('393907992', 'abikurnia.ak@gmail.com', 'ABI KURNIA AKBAR', 'SMA N 1 KARANGDOW', 'D3 - Teknik Informatika', NULL, 8, 6, '742b3e88fe6326f0ca499845124719ae', '2018-07-06 03:45:46', '2018-07-06 03:45:46'),
('6283869586880', 'ibn.damr@gmail.com', 'Damar Syah Maulana', 'SMA NEGERI 5 YOGYAKARTA', 'D3 - Teknik Informatika', NULL, 2, 5, '42511d7e4a07f8554a2a0564adca7591', '2018-05-19 09:29:25', '2018-05-19 09:29:25'),
('85927435590', 'ragilsusil@gmail.com', 'Ragil Susilo Putro', 'SMK 2 Wonosari', 'Informatika', '18.11.2038', 6, 4, 'ae68b45fff55d68003ba4eeb12372fe9', '2018-07-13 02:55:47', '2018-07-13 06:44:49');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `presensi`
--

DROP TABLE IF EXISTS `presensi`;
CREATE TABLE IF NOT EXISTS `presensi` (
  `id_presensi` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `waktu_presensi` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_presensi`),
  KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `presensi`
--

INSERT INTO `presensi` (`id_presensi`, `phone`, `waktu_presensi`) VALUES
(74, '081229973011', '2018-08-03 08:16:10');

-- --------------------------------------------------------

--
-- Table structure for table `sponsors`
--

DROP TABLE IF EXISTS `sponsors`;
CREATE TABLE IF NOT EXISTS `sponsors` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
CREATE TABLE IF NOT EXISTS `teams` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seq` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `position`, `photo`, `seq`) VALUES
(3, 'Muhamad Rahmat Jatnika', 'Ketua Panitia', 'b62fcb225f6e5245092c2eff0c449f0d.jpeg', 1),
(4, 'Faradillah Nurul Hikmah', 'Sekretaris', '1d56bc9a07c88dc440c9e426723f155b.jpeg', 2),
(5, 'Dwi Subekti Yuni Fatimah', 'Bendahara', '77b568f4d1948b3d8b8ba98a9edc500e.jpeg', 3),
(6, 'Made Yupita Chandrahasri Hardika', 'Kesekretariatan', '430c89c9d97a9de2634f8643e50d9838.jpeg', 4),
(7, 'Yogi Yulianto', 'Koordinator Instruktur', '83941c769efde34f1e57618a71ccaaf7.jpeg', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Ucup', 'ucup@amcc.space', '$2y$10$bOFyYNX9K3iTXQrLDiHGlO947i7qgLgRSR7WYioPW8dW6AqmjnFxW', NULL, 'admin', NULL, NULL),
(2, 'Inggih', 'igihcksn@gmail.com', '$2y$10$3jNSIU..1zxQ2l8/6G2Mq.BlcQ7.0x3IsrXARI3xtmigStkHqErF6', NULL, 'admin', '2018-03-20 15:52:44', '2018-03-20 15:52:44'),
(3, 'Yupita', 'yupitachandrahasri@gmail.com', '$2y$10$FFBaH8uvl/amvBnCpV19teW/597P6B9l.Z/uSwHOMuNr7GXNV8XMO', '18CiGpve7kNKDRNpQIc9tJnScY2V1imIdQpXnosweYQLVWMwoZ4fmDrwgebr', 'admin', '2018-04-01 09:10:59', '2018-04-02 06:52:46'),
(4, 'Jatnika', 'muhamad.jatnika@students.amikom.ac.id', '$2y$10$niKl8X9F.N6Ys76zxJB5Le64fDKl9qgujVmo2Q00sDqWpuOhVqrYy', 'y8D94SdhjQcW9tuPaoers9RndGUH875KgyKRBDOGyKGBhtHb54LDMCVFYwde', 'user', '2018-04-01 09:14:15', '2018-07-26 06:12:34'),
(5, 'Lucky', 'wirasakti30@gmail.com', '$2y$10$4eLvcKbXvzZv6VB1AiBYdu5nLtI5vNktqwu88oLVA5SE7Ntb5kZ6S', 'mQFfoDT0v4QhVOfQCe9BuREc3k0fhMivJ6UlQTVLVVv9d4DbZSAXgJ6VbGwG', 'admin', '2018-04-13 14:08:58', '2018-07-28 06:08:24'),
(6, 'Fita', 'fitadinasty@gmail.com', '$2y$10$sBxTNfW2xOCQO/GGmpWq5esZm0Cv3u6G1x/qd9r6/jGNva4gkzqG.', 'aDTUDYZ7w8ki8E5RCC42vpATtFLNxuqEsHYXZrOsyJBZ3GCM2TuR00iAo8Hh', 'admin', '2018-05-27 04:51:32', '2018-07-25 03:49:56'),
(7, 'devry', 'devry@email.com', '$2y$10$A1ctAWycajCE/bA6fVP5qOu/etAP5NjirCZrfkMQuPym/QfnbBc5K', NULL, 'admin', NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `instructors`
--
ALTER TABLE `instructors`
  ADD CONSTRAINT `instructors_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `participants`
--
ALTER TABLE `participants`
  ADD CONSTRAINT `participants_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `presensi`
--
ALTER TABLE `presensi`
  ADD CONSTRAINT `presensi_ibfk_1` FOREIGN KEY (`phone`) REFERENCES `participants` (`phone`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
