-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2022 at 01:38 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gadgetstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISH','DRAFT') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PUBLISH',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Promo', 'Promo', 'icon.jpeg', 'PUBLISH', NULL, NULL),
(2, 'Obat Generik', 'Obat Generik', 'vitamin.png', 'PUBLISH', NULL, NULL),
(3, 'Ibu & anak', 'Ibu & anak', 'ibuanak.png', 'PUBLISH', NULL, NULL),
(4, 'Suplemen', 'Suplemen', 'suplemen.jpeg', 'PUBLISH', NULL, NULL),
(5, 'Perawatan  tubuh', 'Perawatan  Tubuh', 'mata.png', 'PUBLISH', NULL, NULL),
(6, 'Pernapasan dan asma', 'Pernapasan dan asma', 'pernapasan.png', 'PUBLISH', NULL, NULL),
(7, 'Alat kesehatan', 'Alat kesehatan', 'antiseptic.jpg', 'PUBLISH', NULL, NULL),
(8, 'Flu dan batuk', 'Flu dan batuk', 'flubatuk.jpeg', 'PUBLISH', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `province_id` int(11) NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `province_id`, `city`, `type`, `postal_code`) VALUES
(1, 21, 'Aceh Barat', 'Kabupaten', '23681'),
(2, 21, 'Aceh Barat Daya', 'Kabupaten', '23764'),
(3, 21, 'Aceh Besar', 'Kabupaten', '23951'),
(4, 21, 'Aceh Jaya', 'Kabupaten', '23654'),
(5, 21, 'Aceh Selatan', 'Kabupaten', '23719'),
(6, 21, 'Aceh Singkil', 'Kabupaten', '24785'),
(7, 21, 'Aceh Tamiang', 'Kabupaten', '24476'),
(8, 21, 'Aceh Tengah', 'Kabupaten', '24511'),
(9, 21, 'Aceh Tenggara', 'Kabupaten', '24611'),
(10, 21, 'Aceh Timur', 'Kabupaten', '24454'),
(11, 21, 'Aceh Utara', 'Kabupaten', '24382'),
(12, 32, 'Agam', 'Kabupaten', '26411'),
(13, 23, 'Alor', 'Kabupaten', '85811'),
(14, 19, 'Ambon', 'Kota', '97222'),
(15, 34, 'Asahan', 'Kabupaten', '21214'),
(16, 24, 'Asmat', 'Kabupaten', '99777'),
(17, 1, 'Badung', 'Kabupaten', '80351'),
(18, 13, 'Balangan', 'Kabupaten', '71611'),
(19, 15, 'Balikpapan', 'Kota', '76111'),
(20, 21, 'Banda Aceh', 'Kota', '23238'),
(21, 18, 'Bandar Lampung', 'Kota', '35139'),
(22, 9, 'Bandung', 'Kabupaten', '40311'),
(23, 9, 'Bandung', 'Kota', '40111'),
(24, 9, 'Bandung Barat', 'Kabupaten', '40721'),
(25, 29, 'Banggai', 'Kabupaten', '94711'),
(26, 29, 'Banggai Kepulauan', 'Kabupaten', '94881'),
(27, 2, 'Bangka', 'Kabupaten', '33212'),
(28, 2, 'Bangka Barat', 'Kabupaten', '33315'),
(29, 2, 'Bangka Selatan', 'Kabupaten', '33719'),
(30, 2, 'Bangka Tengah', 'Kabupaten', '33613'),
(31, 11, 'Bangkalan', 'Kabupaten', '69118'),
(32, 1, 'Bangli', 'Kabupaten', '80619'),
(33, 13, 'Banjar', 'Kabupaten', '70619'),
(34, 9, 'Banjar', 'Kota', '46311'),
(35, 13, 'Banjarbaru', 'Kota', '70712'),
(36, 13, 'Banjarmasin', 'Kota', '70117'),
(37, 10, 'Banjarnegara', 'Kabupaten', '53419'),
(38, 28, 'Bantaeng', 'Kabupaten', '92411'),
(39, 5, 'Bantul', 'Kabupaten', '55715'),
(40, 33, 'Banyuasin', 'Kabupaten', '30911'),
(41, 10, 'Banyumas', 'Kabupaten', '53114'),
(42, 11, 'Banyuwangi', 'Kabupaten', '68416'),
(43, 13, 'Barito Kuala', 'Kabupaten', '70511'),
(44, 14, 'Barito Selatan', 'Kabupaten', '73711'),
(45, 14, 'Barito Timur', 'Kabupaten', '73671'),
(46, 14, 'Barito Utara', 'Kabupaten', '73881'),
(47, 28, 'Barru', 'Kabupaten', '90719'),
(48, 17, 'Batam', 'Kota', '29413'),
(49, 10, 'Batang', 'Kabupaten', '51211'),
(50, 8, 'Batang Hari', 'Kabupaten', '36613'),
(51, 11, 'Batu', 'Kota', '65311'),
(52, 34, 'Batu Bara', 'Kabupaten', '21655'),
(53, 30, 'Bau-Bau', 'Kota', '93719'),
(54, 9, 'Bekasi', 'Kabupaten', '17837'),
(55, 9, 'Bekasi', 'Kota', '17121'),
(56, 2, 'Belitung', 'Kabupaten', '33419'),
(57, 2, 'Belitung Timur', 'Kabupaten', '33519'),
(58, 23, 'Belu', 'Kabupaten', '85711'),
(59, 21, 'Bener Meriah', 'Kabupaten', '24581'),
(60, 26, 'Bengkalis', 'Kabupaten', '28719'),
(61, 12, 'Bengkayang', 'Kabupaten', '79213'),
(62, 4, 'Bengkulu', 'Kota', '38229'),
(63, 4, 'Bengkulu Selatan', 'Kabupaten', '38519'),
(64, 4, 'Bengkulu Tengah', 'Kabupaten', '38319'),
(65, 4, 'Bengkulu Utara', 'Kabupaten', '38619'),
(66, 15, 'Berau', 'Kabupaten', '77311'),
(67, 24, 'Biak Numfor', 'Kabupaten', '98119'),
(68, 22, 'Bima', 'Kabupaten', '84171'),
(69, 22, 'Bima', 'Kota', '84139'),
(70, 34, 'Binjai', 'Kota', '20712'),
(71, 17, 'Bintan', 'Kabupaten', '29135'),
(72, 21, 'Bireuen', 'Kabupaten', '24219'),
(73, 31, 'Bitung', 'Kota', '95512'),
(74, 11, 'Blitar', 'Kabupaten', '66171'),
(75, 11, 'Blitar', 'Kota', '66124'),
(76, 10, 'Blora', 'Kabupaten', '58219'),
(77, 7, 'Boalemo', 'Kabupaten', '96319'),
(78, 9, 'Bogor', 'Kabupaten', '16911'),
(79, 9, 'Bogor', 'Kota', '16119'),
(80, 11, 'Bojonegoro', 'Kabupaten', '62119'),
(81, 31, 'Bolaang Mongondow (Bolmong)', 'Kabupaten', '95755'),
(82, 31, 'Bolaang Mongondow Selatan', 'Kabupaten', '95774'),
(83, 31, 'Bolaang Mongondow Timur', 'Kabupaten', '95783'),
(84, 31, 'Bolaang Mongondow Utara', 'Kabupaten', '95765'),
(85, 30, 'Bombana', 'Kabupaten', '93771'),
(86, 11, 'Bondowoso', 'Kabupaten', '68219'),
(87, 28, 'Bone', 'Kabupaten', '92713'),
(88, 7, 'Bone Bolango', 'Kabupaten', '96511'),
(89, 15, 'Bontang', 'Kota', '75313'),
(90, 24, 'Boven Digoel', 'Kabupaten', '99662'),
(91, 10, 'Boyolali', 'Kabupaten', '57312'),
(92, 10, 'Brebes', 'Kabupaten', '52212'),
(93, 32, 'Bukittinggi', 'Kota', '26115'),
(94, 1, 'Buleleng', 'Kabupaten', '81111'),
(95, 28, 'Bulukumba', 'Kabupaten', '92511'),
(96, 16, 'Bulungan (Bulongan)', 'Kabupaten', '77211'),
(97, 8, 'Bungo', 'Kabupaten', '37216'),
(98, 29, 'Buol', 'Kabupaten', '94564'),
(99, 19, 'Buru', 'Kabupaten', '97371'),
(100, 19, 'Buru Selatan', 'Kabupaten', '97351'),
(101, 30, 'Buton', 'Kabupaten', '93754'),
(102, 30, 'Buton Utara', 'Kabupaten', '93745'),
(103, 9, 'Ciamis', 'Kabupaten', '46211'),
(104, 9, 'Cianjur', 'Kabupaten', '43217'),
(105, 10, 'Cilacap', 'Kabupaten', '53211'),
(106, 3, 'Cilegon', 'Kota', '42417'),
(107, 9, 'Cimahi', 'Kota', '40512'),
(108, 9, 'Cirebon', 'Kabupaten', '45611'),
(109, 9, 'Cirebon', 'Kota', '45116'),
(110, 34, 'Dairi', 'Kabupaten', '22211'),
(111, 24, 'Deiyai (Deliyai)', 'Kabupaten', '98784'),
(112, 34, 'Deli Serdang', 'Kabupaten', '20511'),
(113, 10, 'Demak', 'Kabupaten', '59519'),
(114, 1, 'Denpasar', 'Kota', '80227'),
(115, 9, 'Depok', 'Kota', '16416'),
(116, 32, 'Dharmasraya', 'Kabupaten', '27612'),
(117, 24, 'Dogiyai', 'Kabupaten', '98866'),
(118, 22, 'Dompu', 'Kabupaten', '84217'),
(119, 29, 'Donggala', 'Kabupaten', '94341'),
(120, 26, 'Dumai', 'Kota', '28811'),
(121, 33, 'Empat Lawang', 'Kabupaten', '31811'),
(122, 23, 'Ende', 'Kabupaten', '86351'),
(123, 28, 'Enrekang', 'Kabupaten', '91719'),
(124, 25, 'Fakfak', 'Kabupaten', '98651'),
(125, 23, 'Flores Timur', 'Kabupaten', '86213'),
(126, 9, 'Garut', 'Kabupaten', '44126'),
(127, 21, 'Gayo Lues', 'Kabupaten', '24653'),
(128, 1, 'Gianyar', 'Kabupaten', '80519'),
(129, 7, 'Gorontalo', 'Kabupaten', '96218'),
(130, 7, 'Gorontalo', 'Kota', '96115'),
(131, 7, 'Gorontalo Utara', 'Kabupaten', '96611'),
(132, 28, 'Gowa', 'Kabupaten', '92111'),
(133, 11, 'Gresik', 'Kabupaten', '61115'),
(134, 10, 'Grobogan', 'Kabupaten', '58111'),
(135, 5, 'Gunung Kidul', 'Kabupaten', '55812'),
(136, 14, 'Gunung Mas', 'Kabupaten', '74511'),
(137, 34, 'Gunungsitoli', 'Kota', '22813'),
(138, 20, 'Halmahera Barat', 'Kabupaten', '97757'),
(139, 20, 'Halmahera Selatan', 'Kabupaten', '97911'),
(140, 20, 'Halmahera Tengah', 'Kabupaten', '97853'),
(141, 20, 'Halmahera Timur', 'Kabupaten', '97862'),
(142, 20, 'Halmahera Utara', 'Kabupaten', '97762'),
(143, 13, 'Hulu Sungai Selatan', 'Kabupaten', '71212'),
(144, 13, 'Hulu Sungai Tengah', 'Kabupaten', '71313'),
(145, 13, 'Hulu Sungai Utara', 'Kabupaten', '71419'),
(146, 34, 'Humbang Hasundutan', 'Kabupaten', '22457'),
(147, 26, 'Indragiri Hilir', 'Kabupaten', '29212'),
(148, 26, 'Indragiri Hulu', 'Kabupaten', '29319'),
(149, 9, 'Indramayu', 'Kabupaten', '45214'),
(150, 24, 'Intan Jaya', 'Kabupaten', '98771'),
(151, 6, 'Jakarta Barat', 'Kota', '11220'),
(152, 6, 'Jakarta Pusat', 'Kota', '10540'),
(153, 6, 'Jakarta Selatan', 'Kota', '12230'),
(154, 6, 'Jakarta Timur', 'Kota', '13330'),
(155, 6, 'Jakarta Utara', 'Kota', '14140'),
(156, 8, 'Jambi', 'Kota', '36111'),
(157, 24, 'Jayapura', 'Kabupaten', '99352'),
(158, 24, 'Jayapura', 'Kota', '99114'),
(159, 24, 'Jayawijaya', 'Kabupaten', '99511'),
(160, 11, 'Jember', 'Kabupaten', '68113'),
(161, 1, 'Jembrana', 'Kabupaten', '82251'),
(162, 28, 'Jeneponto', 'Kabupaten', '92319'),
(163, 10, 'Jepara', 'Kabupaten', '59419'),
(164, 11, 'Jombang', 'Kabupaten', '61415'),
(165, 25, 'Kaimana', 'Kabupaten', '98671'),
(166, 26, 'Kampar', 'Kabupaten', '28411'),
(167, 14, 'Kapuas', 'Kabupaten', '73583'),
(168, 12, 'Kapuas Hulu', 'Kabupaten', '78719'),
(169, 10, 'Karanganyar', 'Kabupaten', '57718'),
(170, 1, 'Karangasem', 'Kabupaten', '80819'),
(171, 9, 'Karawang', 'Kabupaten', '41311'),
(172, 17, 'Karimun', 'Kabupaten', '29611'),
(173, 34, 'Karo', 'Kabupaten', '22119'),
(174, 14, 'Katingan', 'Kabupaten', '74411'),
(175, 4, 'Kaur', 'Kabupaten', '38911'),
(176, 12, 'Kayong Utara', 'Kabupaten', '78852'),
(177, 10, 'Kebumen', 'Kabupaten', '54319'),
(178, 11, 'Kediri', 'Kabupaten', '64184'),
(179, 11, 'Kediri', 'Kota', '64125'),
(180, 24, 'Keerom', 'Kabupaten', '99461'),
(181, 10, 'Kendal', 'Kabupaten', '51314'),
(182, 30, 'Kendari', 'Kota', '93126'),
(183, 4, 'Kepahiang', 'Kabupaten', '39319'),
(184, 17, 'Kepulauan Anambas', 'Kabupaten', '29991'),
(185, 19, 'Kepulauan Aru', 'Kabupaten', '97681'),
(186, 32, 'Kepulauan Mentawai', 'Kabupaten', '25771'),
(187, 26, 'Kepulauan Meranti', 'Kabupaten', '28791'),
(188, 31, 'Kepulauan Sangihe', 'Kabupaten', '95819'),
(189, 6, 'Kepulauan Seribu', 'Kabupaten', '14550'),
(190, 31, 'Kepulauan Siau Tagulandang Biaro (Sitaro)', 'Kabupaten', '95862'),
(191, 20, 'Kepulauan Sula', 'Kabupaten', '97995'),
(192, 31, 'Kepulauan Talaud', 'Kabupaten', '95885'),
(193, 24, 'Kepulauan Yapen (Yapen Waropen)', 'Kabupaten', '98211'),
(194, 8, 'Kerinci', 'Kabupaten', '37167'),
(195, 12, 'Ketapang', 'Kabupaten', '78874'),
(196, 10, 'Klaten', 'Kabupaten', '57411'),
(197, 1, 'Klungkung', 'Kabupaten', '80719'),
(198, 30, 'Kolaka', 'Kabupaten', '93511'),
(199, 30, 'Kolaka Utara', 'Kabupaten', '93911'),
(200, 30, 'Konawe', 'Kabupaten', '93411'),
(201, 30, 'Konawe Selatan', 'Kabupaten', '93811'),
(202, 30, 'Konawe Utara', 'Kabupaten', '93311'),
(203, 13, 'Kotabaru', 'Kabupaten', '72119'),
(204, 31, 'Kotamobagu', 'Kota', '95711'),
(205, 14, 'Kotawaringin Barat', 'Kabupaten', '74119'),
(206, 14, 'Kotawaringin Timur', 'Kabupaten', '74364'),
(207, 26, 'Kuantan Singingi', 'Kabupaten', '29519'),
(208, 12, 'Kubu Raya', 'Kabupaten', '78311'),
(209, 10, 'Kudus', 'Kabupaten', '59311'),
(210, 5, 'Kulon Progo', 'Kabupaten', '55611'),
(211, 9, 'Kuningan', 'Kabupaten', '45511'),
(212, 23, 'Kupang', 'Kabupaten', '85362'),
(213, 23, 'Kupang', 'Kota', '85119'),
(214, 15, 'Kutai Barat', 'Kabupaten', '75711'),
(215, 15, 'Kutai Kartanegara', 'Kabupaten', '75511'),
(216, 15, 'Kutai Timur', 'Kabupaten', '75611'),
(217, 34, 'Labuhan Batu', 'Kabupaten', '21412'),
(218, 34, 'Labuhan Batu Selatan', 'Kabupaten', '21511'),
(219, 34, 'Labuhan Batu Utara', 'Kabupaten', '21711'),
(220, 33, 'Lahat', 'Kabupaten', '31419'),
(221, 14, 'Lamandau', 'Kabupaten', '74611'),
(222, 11, 'Lamongan', 'Kabupaten', '64125'),
(223, 18, 'Lampung Barat', 'Kabupaten', '34814'),
(224, 18, 'Lampung Selatan', 'Kabupaten', '35511'),
(225, 18, 'Lampung Tengah', 'Kabupaten', '34212'),
(226, 18, 'Lampung Timur', 'Kabupaten', '34319'),
(227, 18, 'Lampung Utara', 'Kabupaten', '34516'),
(228, 12, 'Landak', 'Kabupaten', '78319'),
(229, 34, 'Langkat', 'Kabupaten', '20811'),
(230, 21, 'Langsa', 'Kota', '24412'),
(231, 24, 'Lanny Jaya', 'Kabupaten', '99531'),
(232, 3, 'Lebak', 'Kabupaten', '42319'),
(233, 4, 'Lebong', 'Kabupaten', '39264'),
(234, 23, 'Lembata', 'Kabupaten', '86611'),
(235, 21, 'Lhokseumawe', 'Kota', '24352'),
(236, 32, 'Lima Puluh Koto/Kota', 'Kabupaten', '26671'),
(237, 17, 'Lingga', 'Kabupaten', '29811'),
(238, 22, 'Lombok Barat', 'Kabupaten', '83311'),
(239, 22, 'Lombok Tengah', 'Kabupaten', '83511'),
(240, 22, 'Lombok Timur', 'Kabupaten', '83612'),
(241, 22, 'Lombok Utara', 'Kabupaten', '83711'),
(242, 33, 'Lubuk Linggau', 'Kota', '31614'),
(243, 11, 'Lumajang', 'Kabupaten', '67319'),
(244, 28, 'Luwu', 'Kabupaten', '91994'),
(245, 28, 'Luwu Timur', 'Kabupaten', '92981'),
(246, 28, 'Luwu Utara', 'Kabupaten', '92911'),
(247, 11, 'Madiun', 'Kabupaten', '63153'),
(248, 11, 'Madiun', 'Kota', '63122'),
(249, 10, 'Magelang', 'Kabupaten', '56519'),
(250, 10, 'Magelang', 'Kota', '56133'),
(251, 11, 'Magetan', 'Kabupaten', '63314'),
(252, 9, 'Majalengka', 'Kabupaten', '45412'),
(253, 27, 'Majene', 'Kabupaten', '91411'),
(254, 28, 'Makassar', 'Kota', '90111'),
(255, 11, 'Malang', 'Kabupaten', '65163'),
(256, 11, 'Malang', 'Kota', '65112'),
(257, 16, 'Malinau', 'Kabupaten', '77511'),
(258, 19, 'Maluku Barat Daya', 'Kabupaten', '97451'),
(259, 19, 'Maluku Tengah', 'Kabupaten', '97513'),
(260, 19, 'Maluku Tenggara', 'Kabupaten', '97651'),
(261, 19, 'Maluku Tenggara Barat', 'Kabupaten', '97465'),
(262, 27, 'Mamasa', 'Kabupaten', '91362'),
(263, 24, 'Mamberamo Raya', 'Kabupaten', '99381'),
(264, 24, 'Mamberamo Tengah', 'Kabupaten', '99553'),
(265, 27, 'Mamuju', 'Kabupaten', '91519'),
(266, 27, 'Mamuju Utara', 'Kabupaten', '91571'),
(267, 31, 'Manado', 'Kota', '95247'),
(268, 34, 'Mandailing Natal', 'Kabupaten', '22916'),
(269, 23, 'Manggarai', 'Kabupaten', '86551'),
(270, 23, 'Manggarai Barat', 'Kabupaten', '86711'),
(271, 23, 'Manggarai Timur', 'Kabupaten', '86811'),
(272, 25, 'Manokwari', 'Kabupaten', '98311'),
(273, 25, 'Manokwari Selatan', 'Kabupaten', '98355'),
(274, 24, 'Mappi', 'Kabupaten', '99853'),
(275, 28, 'Maros', 'Kabupaten', '90511'),
(276, 22, 'Mataram', 'Kota', '83131'),
(277, 25, 'Maybrat', 'Kabupaten', '98051'),
(278, 34, 'Medan', 'Kota', '20228'),
(279, 12, 'Melawi', 'Kabupaten', '78619'),
(280, 8, 'Merangin', 'Kabupaten', '37319'),
(281, 24, 'Merauke', 'Kabupaten', '99613'),
(282, 18, 'Mesuji', 'Kabupaten', '34911'),
(283, 18, 'Metro', 'Kota', '34111'),
(284, 24, 'Mimika', 'Kabupaten', '99962'),
(285, 31, 'Minahasa', 'Kabupaten', '95614'),
(286, 31, 'Minahasa Selatan', 'Kabupaten', '95914'),
(287, 31, 'Minahasa Tenggara', 'Kabupaten', '95995'),
(288, 31, 'Minahasa Utara', 'Kabupaten', '95316'),
(289, 11, 'Mojokerto', 'Kabupaten', '61382'),
(290, 11, 'Mojokerto', 'Kota', '61316'),
(291, 29, 'Morowali', 'Kabupaten', '94911'),
(292, 33, 'Muara Enim', 'Kabupaten', '31315'),
(293, 8, 'Muaro Jambi', 'Kabupaten', '36311'),
(294, 4, 'Muko Muko', 'Kabupaten', '38715'),
(295, 30, 'Muna', 'Kabupaten', '93611'),
(296, 14, 'Murung Raya', 'Kabupaten', '73911'),
(297, 33, 'Musi Banyuasin', 'Kabupaten', '30719'),
(298, 33, 'Musi Rawas', 'Kabupaten', '31661'),
(299, 24, 'Nabire', 'Kabupaten', '98816'),
(300, 21, 'Nagan Raya', 'Kabupaten', '23674'),
(301, 23, 'Nagekeo', 'Kabupaten', '86911'),
(302, 17, 'Natuna', 'Kabupaten', '29711'),
(303, 24, 'Nduga', 'Kabupaten', '99541'),
(304, 23, 'Ngada', 'Kabupaten', '86413'),
(305, 11, 'Nganjuk', 'Kabupaten', '64414'),
(306, 11, 'Ngawi', 'Kabupaten', '63219'),
(307, 34, 'Nias', 'Kabupaten', '22876'),
(308, 34, 'Nias Barat', 'Kabupaten', '22895'),
(309, 34, 'Nias Selatan', 'Kabupaten', '22865'),
(310, 34, 'Nias Utara', 'Kabupaten', '22856'),
(311, 16, 'Nunukan', 'Kabupaten', '77421'),
(312, 33, 'Ogan Ilir', 'Kabupaten', '30811'),
(313, 33, 'Ogan Komering Ilir', 'Kabupaten', '30618'),
(314, 33, 'Ogan Komering Ulu', 'Kabupaten', '32112'),
(315, 33, 'Ogan Komering Ulu Selatan', 'Kabupaten', '32211'),
(316, 33, 'Ogan Komering Ulu Timur', 'Kabupaten', '32312'),
(317, 11, 'Pacitan', 'Kabupaten', '63512'),
(318, 32, 'Padang', 'Kota', '25112'),
(319, 34, 'Padang Lawas', 'Kabupaten', '22763'),
(320, 34, 'Padang Lawas Utara', 'Kabupaten', '22753'),
(321, 32, 'Padang Panjang', 'Kota', '27122'),
(322, 32, 'Padang Pariaman', 'Kabupaten', '25583'),
(323, 34, 'Padang Sidempuan', 'Kota', '22727'),
(324, 33, 'Pagar Alam', 'Kota', '31512'),
(325, 34, 'Pakpak Bharat', 'Kabupaten', '22272'),
(326, 14, 'Palangka Raya', 'Kota', '73112'),
(327, 33, 'Palembang', 'Kota', '30111'),
(328, 28, 'Palopo', 'Kota', '91911'),
(329, 29, 'Palu', 'Kota', '94111'),
(330, 11, 'Pamekasan', 'Kabupaten', '69319'),
(331, 3, 'Pandeglang', 'Kabupaten', '42212'),
(332, 9, 'Pangandaran', 'Kabupaten', '46511'),
(333, 28, 'Pangkajene Kepulauan', 'Kabupaten', '90611'),
(334, 2, 'Pangkal Pinang', 'Kota', '33115'),
(335, 24, 'Paniai', 'Kabupaten', '98765'),
(336, 28, 'Parepare', 'Kota', '91123'),
(337, 32, 'Pariaman', 'Kota', '25511'),
(338, 29, 'Parigi Moutong', 'Kabupaten', '94411'),
(339, 32, 'Pasaman', 'Kabupaten', '26318'),
(340, 32, 'Pasaman Barat', 'Kabupaten', '26511'),
(341, 15, 'Paser', 'Kabupaten', '76211'),
(342, 11, 'Pasuruan', 'Kabupaten', '67153'),
(343, 11, 'Pasuruan', 'Kota', '67118'),
(344, 10, 'Pati', 'Kabupaten', '59114'),
(345, 32, 'Payakumbuh', 'Kota', '26213'),
(346, 25, 'Pegunungan Arfak', 'Kabupaten', '98354'),
(347, 24, 'Pegunungan Bintang', 'Kabupaten', '99573'),
(348, 10, 'Pekalongan', 'Kabupaten', '51161'),
(349, 10, 'Pekalongan', 'Kota', '51122'),
(350, 26, 'Pekanbaru', 'Kota', '28112'),
(351, 26, 'Pelalawan', 'Kabupaten', '28311'),
(352, 10, 'Pemalang', 'Kabupaten', '52319'),
(353, 34, 'Pematang Siantar', 'Kota', '21126'),
(354, 15, 'Penajam Paser Utara', 'Kabupaten', '76311'),
(355, 18, 'Pesawaran', 'Kabupaten', '35312'),
(356, 18, 'Pesisir Barat', 'Kabupaten', '35974'),
(357, 32, 'Pesisir Selatan', 'Kabupaten', '25611'),
(358, 21, 'Pidie', 'Kabupaten', '24116'),
(359, 21, 'Pidie Jaya', 'Kabupaten', '24186'),
(360, 28, 'Pinrang', 'Kabupaten', '91251'),
(361, 7, 'Pohuwato', 'Kabupaten', '96419'),
(362, 27, 'Polewali Mandar', 'Kabupaten', '91311'),
(363, 11, 'Ponorogo', 'Kabupaten', '63411'),
(364, 12, 'Pontianak', 'Kabupaten', '78971'),
(365, 12, 'Pontianak', 'Kota', '78112'),
(366, 29, 'Poso', 'Kabupaten', '94615'),
(367, 33, 'Prabumulih', 'Kota', '31121'),
(368, 18, 'Pringsewu', 'Kabupaten', '35719'),
(369, 11, 'Probolinggo', 'Kabupaten', '67282'),
(370, 11, 'Probolinggo', 'Kota', '67215'),
(371, 14, 'Pulang Pisau', 'Kabupaten', '74811'),
(372, 20, 'Pulau Morotai', 'Kabupaten', '97771'),
(373, 24, 'Puncak', 'Kabupaten', '98981'),
(374, 24, 'Puncak Jaya', 'Kabupaten', '98979'),
(375, 10, 'Purbalingga', 'Kabupaten', '53312'),
(376, 9, 'Purwakarta', 'Kabupaten', '41119'),
(377, 10, 'Purworejo', 'Kabupaten', '54111'),
(378, 25, 'Raja Ampat', 'Kabupaten', '98489'),
(379, 4, 'Rejang Lebong', 'Kabupaten', '39112'),
(380, 10, 'Rembang', 'Kabupaten', '59219'),
(381, 26, 'Rokan Hilir', 'Kabupaten', '28992'),
(382, 26, 'Rokan Hulu', 'Kabupaten', '28511'),
(383, 23, 'Rote Ndao', 'Kabupaten', '85982'),
(384, 21, 'Sabang', 'Kota', '23512'),
(385, 23, 'Sabu Raijua', 'Kabupaten', '85391'),
(386, 10, 'Salatiga', 'Kota', '50711'),
(387, 15, 'Samarinda', 'Kota', '75133'),
(388, 12, 'Sambas', 'Kabupaten', '79453'),
(389, 34, 'Samosir', 'Kabupaten', '22392'),
(390, 11, 'Sampang', 'Kabupaten', '69219'),
(391, 12, 'Sanggau', 'Kabupaten', '78557'),
(392, 24, 'Sarmi', 'Kabupaten', '99373'),
(393, 8, 'Sarolangun', 'Kabupaten', '37419'),
(394, 32, 'Sawah Lunto', 'Kota', '27416'),
(395, 12, 'Sekadau', 'Kabupaten', '79583'),
(396, 28, 'Selayar (Kepulauan Selayar)', 'Kabupaten', '92812'),
(397, 4, 'Seluma', 'Kabupaten', '38811'),
(398, 10, 'Semarang', 'Kabupaten', '50511'),
(399, 10, 'Semarang', 'Kota', '50135'),
(400, 19, 'Seram Bagian Barat', 'Kabupaten', '97561'),
(401, 19, 'Seram Bagian Timur', 'Kabupaten', '97581'),
(402, 3, 'Serang', 'Kabupaten', '42182'),
(403, 3, 'Serang', 'Kota', '42111'),
(404, 34, 'Serdang Bedagai', 'Kabupaten', '20915'),
(405, 14, 'Seruyan', 'Kabupaten', '74211'),
(406, 26, 'Siak', 'Kabupaten', '28623'),
(407, 34, 'Sibolga', 'Kota', '22522'),
(408, 28, 'Sidenreng Rappang/Rapang', 'Kabupaten', '91613'),
(409, 11, 'Sidoarjo', 'Kabupaten', '61219'),
(410, 29, 'Sigi', 'Kabupaten', '94364'),
(411, 32, 'Sijunjung (Sawah Lunto Sijunjung)', 'Kabupaten', '27511'),
(412, 23, 'Sikka', 'Kabupaten', '86121'),
(413, 34, 'Simalungun', 'Kabupaten', '21162'),
(414, 21, 'Simeulue', 'Kabupaten', '23891'),
(415, 12, 'Singkawang', 'Kota', '79117'),
(416, 28, 'Sinjai', 'Kabupaten', '92615'),
(417, 12, 'Sintang', 'Kabupaten', '78619'),
(418, 11, 'Situbondo', 'Kabupaten', '68316'),
(419, 5, 'Sleman', 'Kabupaten', '55513'),
(420, 32, 'Solok', 'Kabupaten', '27365'),
(421, 32, 'Solok', 'Kota', '27315'),
(422, 32, 'Solok Selatan', 'Kabupaten', '27779'),
(423, 28, 'Soppeng', 'Kabupaten', '90812'),
(424, 25, 'Sorong', 'Kabupaten', '98431'),
(425, 25, 'Sorong', 'Kota', '98411'),
(426, 25, 'Sorong Selatan', 'Kabupaten', '98454'),
(427, 10, 'Sragen', 'Kabupaten', '57211'),
(428, 9, 'Subang', 'Kabupaten', '41215'),
(429, 21, 'Subulussalam', 'Kota', '24882'),
(430, 9, 'Sukabumi', 'Kabupaten', '43311'),
(431, 9, 'Sukabumi', 'Kota', '43114'),
(432, 14, 'Sukamara', 'Kabupaten', '74712'),
(433, 10, 'Sukoharjo', 'Kabupaten', '57514'),
(434, 23, 'Sumba Barat', 'Kabupaten', '87219'),
(435, 23, 'Sumba Barat Daya', 'Kabupaten', '87453'),
(436, 23, 'Sumba Tengah', 'Kabupaten', '87358'),
(437, 23, 'Sumba Timur', 'Kabupaten', '87112'),
(438, 22, 'Sumbawa', 'Kabupaten', '84315'),
(439, 22, 'Sumbawa Barat', 'Kabupaten', '84419'),
(440, 9, 'Sumedang', 'Kabupaten', '45326'),
(441, 11, 'Sumenep', 'Kabupaten', '69413'),
(442, 8, 'Sungaipenuh', 'Kota', '37113'),
(443, 24, 'Supiori', 'Kabupaten', '98164'),
(444, 11, 'Surabaya', 'Kota', '60119'),
(445, 10, 'Surakarta (Solo)', 'Kota', '57113'),
(446, 13, 'Tabalong', 'Kabupaten', '71513'),
(447, 1, 'Tabanan', 'Kabupaten', '82119'),
(448, 28, 'Takalar', 'Kabupaten', '92212'),
(449, 25, 'Tambrauw', 'Kabupaten', '98475'),
(450, 16, 'Tana Tidung', 'Kabupaten', '77611'),
(451, 28, 'Tana Toraja', 'Kabupaten', '91819'),
(452, 13, 'Tanah Bumbu', 'Kabupaten', '72211'),
(453, 32, 'Tanah Datar', 'Kabupaten', '27211'),
(454, 13, 'Tanah Laut', 'Kabupaten', '70811'),
(455, 3, 'Tangerang', 'Kabupaten', '15914'),
(456, 3, 'Tangerang', 'Kota', '15111'),
(457, 3, 'Tangerang Selatan', 'Kota', '15332'),
(458, 18, 'Tanggamus', 'Kabupaten', '35619'),
(459, 34, 'Tanjung Balai', 'Kota', '21321'),
(460, 8, 'Tanjung Jabung Barat', 'Kabupaten', '36513'),
(461, 8, 'Tanjung Jabung Timur', 'Kabupaten', '36719'),
(462, 17, 'Tanjung Pinang', 'Kota', '29111'),
(463, 34, 'Tapanuli Selatan', 'Kabupaten', '22742'),
(464, 34, 'Tapanuli Tengah', 'Kabupaten', '22611'),
(465, 34, 'Tapanuli Utara', 'Kabupaten', '22414'),
(466, 13, 'Tapin', 'Kabupaten', '71119'),
(467, 16, 'Tarakan', 'Kota', '77114'),
(468, 9, 'Tasikmalaya', 'Kabupaten', '46411'),
(469, 9, 'Tasikmalaya', 'Kota', '46116'),
(470, 34, 'Tebing Tinggi', 'Kota', '20632'),
(471, 8, 'Tebo', 'Kabupaten', '37519'),
(472, 10, 'Tegal', 'Kabupaten', '52419'),
(473, 10, 'Tegal', 'Kota', '52114'),
(474, 25, 'Teluk Bintuni', 'Kabupaten', '98551'),
(475, 25, 'Teluk Wondama', 'Kabupaten', '98591'),
(476, 10, 'Temanggung', 'Kabupaten', '56212'),
(477, 20, 'Ternate', 'Kota', '97714'),
(478, 20, 'Tidore Kepulauan', 'Kota', '97815'),
(479, 23, 'Timor Tengah Selatan', 'Kabupaten', '85562'),
(480, 23, 'Timor Tengah Utara', 'Kabupaten', '85612'),
(481, 34, 'Toba Samosir', 'Kabupaten', '22316'),
(482, 29, 'Tojo Una-Una', 'Kabupaten', '94683'),
(483, 29, 'Toli-Toli', 'Kabupaten', '94542'),
(484, 24, 'Tolikara', 'Kabupaten', '99411'),
(485, 31, 'Tomohon', 'Kota', '95416'),
(486, 28, 'Toraja Utara', 'Kabupaten', '91831'),
(487, 11, 'Trenggalek', 'Kabupaten', '66312'),
(488, 19, 'Tual', 'Kota', '97612'),
(489, 11, 'Tuban', 'Kabupaten', '62319'),
(490, 18, 'Tulang Bawang', 'Kabupaten', '34613'),
(491, 18, 'Tulang Bawang Barat', 'Kabupaten', '34419'),
(492, 11, 'Tulungagung', 'Kabupaten', '66212'),
(493, 28, 'Wajo', 'Kabupaten', '90911'),
(494, 30, 'Wakatobi', 'Kabupaten', '93791'),
(495, 24, 'Waropen', 'Kabupaten', '98269'),
(496, 18, 'Way Kanan', 'Kabupaten', '34711'),
(497, 10, 'Wonogiri', 'Kabupaten', '57619'),
(498, 10, 'Wonosobo', 'Kabupaten', '56311'),
(499, 24, 'Yahukimo', 'Kabupaten', '99041'),
(500, 24, 'Yalimo', 'Kabupaten', '99481'),
(501, 5, 'Yogyakarta', 'Kota', '55111');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gadgets`
--

CREATE TABLE `gadgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `weight` double(8,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `stock` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` enum('PUBLISH','DRAFT') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PUBLISH',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gadgets`
--

INSERT INTO `gadgets` (`id`, `name`, `slug`, `description`, `image`, `price`, `weight`, `views`, `stock`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Sensi Mask Masker Earloop', 'Sensi-Mask-Masker-Earloop', 'HARGA YANG TERCANTUM ADALAH HARGA PER 1 BIJI/LEMBAR. ', 'apotek_online_k24klik_20190812112550209249_Sensi-50.jpg', 2823.00, 0.50, 0, 6, 'PUBLISH', '2020-07-28 23:05:11', '2022-08-02 04:01:43', NULL, NULL, NULL, NULL),
(2, 'Sanmol Tablet ', 'Sanmol-Tablet', 'Sanmol Tablet Obat Apa? Sanmol Tablet 500 mg adalah obat yang memiliki kandungan bahan aktif Paracetamol. Paracetamol bekerja dengan cara mengurangi kadar prostaglandin di dalam tubuh, sehingga tanda peradangan seperti demam dan nyeri akan berkurang.', 'apotek_online_k24klik_20200810090629359225_SANMOL-4-TAB.jpg', 2026.00, 0.50, 0, 8, 'PUBLISH', '2020-07-28 23:05:11', '2022-08-01 19:34:51', NULL, NULL, NULL, NULL),
(3, 'Lacto B Sachet (per Pcs)', 'Lacto-B-Sachet-(per-Pcs)', 'Lacto B Sachet merupakan probiotik dalam bentuk serbuk yang dapat digunakan untuk memperbaiki fungsi normal dari saluran pencernaan dan juga untuk memperbaiki kondisi seperti diare, konstipasi, dispepsia, diare akibat laktosa, penggunaan antibiotika jangka panjang. Selain itu, LACTO B SACHET juga dapat digunakan untuk mengatasi infeksi vagina dan infeksi saluran kencing.', '0113a0126.jpg', 7714.00, 0.50, 0, 10, 'PUBLISH', '2020-07-28 23:05:11', NULL, NULL, NULL, NULL, NULL),
(4, 'Omomed Masker Earloop (per Dos)', 'Omomed-Masker-Earloop-(per-Dos)', 'OMOMED MASKER EARLOOP 50S merupakan masker sekali pakai dengan 3 lapisan filter untuk menahan bakteri dengan material lembut dan nyaman dipakai, berfungsi untuk melindungi pernafasan dari berbagai macam radikal bebas udara, serta ringan dan mudah dipakai. Desain pas sesuai untuk melindungi hidung dan mulut dengan sempurna. Terdapat kawat penjepit hidung untuk menahan posisi masker dan pengait telinga yang mudah digunakan dan nyaman.', 'apotek_online_k24klik_20210521100932359225_omo-med--2-.jpg', 69000.00, 0.50, 0, 10, 'PUBLISH', '2020-07-28 23:05:11', NULL, NULL, NULL, NULL, NULL),
(5, 'Vitacimin Tablet (per Strip)', 'Vitacimin-Tablet-(per-Strip)', 'vitamin C untuk meningkatkan daya tahan tubuh', 'apotek_online_k24klik_201903010207474677_vitacimin.jpeg', 2000.00, 0.50, 0, 10, 'PUBLISH', '2020-07-28 23:05:11', NULL, NULL, NULL, NULL, NULL),
(6, 'Sumagesic Tablet', 'Sumagesic-Tablet', 'Sumagesic merupakan obat yang digunakan untuk meredakan demam, pusing maupun rasa nyeri pada otot, kepala, dan gigi. Sumagesic mengandung zat aktif Paracetamol (Acetaminophen) yaitu zat aktif yang memiliki aktivitas sebagai penurun demam/antipiretik dan pereda nyeri/analgesik yang bekerja dengan cara menghambat pembentukan prostaglandin yaitu zat yang memicu nyeri dan demam di hipotalamus untuk meningkatkan pelepasan panas supaya suhu tubuh normal.', '0104k0186.jpg', 2800.00, 0.50, 0, 10, 'PUBLISH', '2020-07-28 23:05:11', NULL, NULL, NULL, NULL, NULL),
(7, 'Bear Brand Rtd Tin Susu 189ml', 'Bear-Brand-Rtd-Tin-Susu-189ml', 'Susu yang terbuat dari 100% susu sapi steril murni', '0115e0074.jpg', 13000.00, 0.50, 0, 10, 'PUBLISH', '2020-07-28 23:05:11', NULL, NULL, NULL, NULL, NULL),
(8, 'Becom Zet Tablet', 'Becom-Zet-Tablet', 'Becom Zet Tab 100 S adalah suplemen yang mengandung kombinasi antara multivitamin, mineral dan zinc yang berfungsi untuk memelihara daya tahan tubuh dan mempercepat pemulihan setelah sakit.  ', 'apotek_online_k24klik_20210317105247359225_BECOM-ZET-2.jpg', 30000.00, 0.50, 0, 10, 'PUBLISH', '2020-07-28 23:05:11', NULL, NULL, NULL, NULL, NULL),
(9, 'New-Diatabs-Tablet', 'New-Diatabs-Tablet', 'New Diatab merupakan obat yang digunakan untuk terapi simptomatik pada diare secara non spesifik atau kondisi diare yang tidak diketahui penyebabnya. New Diatab mengandung senyawa Attapulgite aktif dengan mekanisme kerja sebagai berikut: Attapulgite atau Magnesium Aluminium Pilosilikat biasa digunakan untuk mengobati diare dengan mengikat asam, zat beracun, bakteri atau kuman yang dapat menyebabkan diare. Attapulgite memiliki pH antara 7,0 – 9,5 dan efektif bekerja sebagai obat diare ketika dimurnikan dan diaktifkan terlebih dahulu dengan cara pemanasan supaya dapat meningkatkan kemampuan adsorpsinya.', '0101d0034.jpg', 3000.00, 0.50, 0, 10, 'PUBLISH', '2020-07-28 23:05:11', NULL, NULL, NULL, NULL, NULL),
(10, 'Vicee Orange Tablet', 'Vicee-Orange-Tablet', 'Tablet hisap vitamin untuk mencegah dan mengobati defisiens vitamin C.\r\n\r\nBeli Vicee Orange STR 2\'S di apotek online K24klik dan dapatkan manfaatnya.', '0112c0003.jpg', 2000.00, 0.50, 0, 10, 'PUBLISH', '2020-07-28 23:05:11', NULL, NULL, NULL, NULL, NULL),
(11, '3imed Masker Kn95', '3imed-Masker-Kn95', '3IMED MASKER KN95 10S merupakan masker yang digunakan untuk melindungi alat pernafasan dari debu saat berkendara, melindungi diri dari bakteri & virus, terbuat dari bahan berkualitas sehingga aman dan nyaman saat digunakan.\r\n1 Dos=10 Pcs.', 'apotek_online_k24klik_20210426021557359225_imed-1.jpg', 120000.00, 0.50, 0, 10, 'PUBLISH', '2020-07-28 23:05:11', NULL, NULL, NULL, NULL, NULL),
(12, '3m Masker Respirator Kf94', '3m-Masker-Respirator-Kf94', 'Sapiente dolores aut dolor praesentium rerum necessitatibus officia. Iste accusantium aut in quasi hic autem. Ullam animi recusandae enim asperiores enim non qui. Aut magni veniam ea voluptates accusantium aut quia.3M MASKER RESPIRATOR KF94 20S merupakan masker dengan desain berkontur, memudahkan untuk bernafas dan berbicara.\r\nKelebihan:\r\n• Di desain dan sudah di uji sesuai dengan bentuk muka orang asia untuk pelindungan lebih baik.\r\n• Desain masker rapat, tanpa celah sehingga udara hanya tersaring melalui filter.\r\n• Filter Elektrostatis untuk menangkap partikel kecil.\r\n• Terdapat pengait tali kuping dibagian kepala.\r\n• 94% filter efisiensi terhadap partiker 0.4 mikron.', 'apotek_online_k24klik_20210426034455359225_masker-3M.jpg', 400000.00, 0.50, 0, 10, 'PUBLISH', '2020-07-28 23:05:11', NULL, NULL, NULL, NULL, NULL),
(13, 'Zegavit Tablet', 'Zegavit-Tablet', 'Zegavit obat apa? Zegavit adalah sebuah suplemen yang dapat digunakan untuk menjaga daya tahan tubuh. Beli dengan harga terbaik di K24Klik!', 'apotek_online_k24klik_201804170123204677_zegavit.jpg', 30000.00, 0.50, 0, 10, 'PUBLISH', '2020-07-28 23:05:11', NULL, NULL, NULL, NULL, NULL),
(14, 'Vitalong C Plus Zinc Kapsul', 'Vitalong-C-Plus-Zinc-Kapsul', 'VITALONG C PLUS ZINC CAP 30S BTL merupakan suplemen yang digunakan untuk memelihara dan mendukung fungsi daya tahan tubuh.', 'apotek_online_k24klik_2021070601492123085_vitalong-C.jpg', 60000.00, 0.50, 0, 10, 'PUBLISH', '2020-07-28 23:05:11', NULL, NULL, NULL, NULL, NULL),
(15, 'Ibu Dan Anak Obat Batuk 75ml', 'Ibu-Dan-Anak-Obat-Batuk-75ml', 'melegakan tenggorokan, batuk, batuk berdahak, dan suara hilang.', 'apotek_online_k24klik_20200822120531359225_IBU-DAN-ANAK-OBAT-BATUK-150ML-1.jpg', 30000.00, 0.50, 0, 10, 'PUBLISH', '2020-07-28 23:05:11', NULL, NULL, NULL, NULL, NULL),
(16, 'Milmor Plus Tablet', 'Milmor-Plus-Tablet', 'Suplemen mengandung ekstrak daun katuk dan Ekstr biji Fenugreek yang dapat membantu melancarkan dan meningkatkan produksi ASI pada ibu menyusui.\r\nBeli Milmor Plus Tablet di apotek online K24Klik dan dapatkan manfaatnya.', 'apotek_online_k24klik_201807281126354677_milmor-plus.jpg', 32000.00, 0.50, 0, 10, 'PUBLISH', '2020-07-28 23:05:11', NULL, NULL, NULL, NULL, NULL),
(17, 'Pigeon Breast Pads Honeycomb', 'Pigeon-Breast-Pads-Honeycomb', 'Pigeon Breast Pad merupakan produk penyerap ASI untuk ibu menyusui.\r\nDilengkapi dengan lapisan berpori namun tetap bersifat ekstra tipis dan ringan pada bagian pad sehingga mampu menampung produksi ASI yang berlebih tanpa membasahi pakaian dan menjaga kulit tetap kering dan bersih.', 'apotek_online_k24klik_201903281108554677_PIGEON-BRAS-PAD-36.jpg', 3000.00, 0.50, 0, 10, 'PUBLISH', '2020-07-28 23:05:11', NULL, NULL, NULL, NULL, NULL),
(18, 'Tiga Anak Minyak Telon 90ml', 'Tiga-Anak-Minyak-Telon-90ml', 'Minyak telon yang diformulasikan dari bahan alami terbaik. Dapat digunakan untuk keperluan bayi seperti menghangatkan tubuhnya saat berpergian atau saat setelah mandi. ', 'apotek_online_k24klik_20200822104959359225_MINYAK-TELON-TIGA-ANAK.jpg', 30000.00, 0.50, 0, 10, 'PUBLISH', '2020-07-28 23:05:11', NULL, NULL, NULL, NULL, NULL),
(19, 'Stimuno Orange Berry Sirup', 'Stimuno-Orange-Berry-Sirup', 'STIMUNO ORANGE BERRY SYR 60ML merupakan produk herbal fitofarmaka, yang terbukti berkhasiat dan aman untuk meningkatkan kekebalan tubuh, berguna untuk mencegah sakit dan mempercepat penyembuhan dan didistribusikan oleh Dexa Medica.\r\nBeli STIMUNO ORANGE BERRY SYR 60ML di K24Klik dan dapatkan manfaatnya.', 'apotek_online_k24klik_20201019034347359225_stimuno-orange-berry-60-ml.jpg', 30000.00, 0.50, 0, 10, 'PUBLISH', '2020-07-28 23:05:11', NULL, NULL, NULL, NULL, NULL),
(20, 'Kunir Cap Jamu Iboe', 'Kunir-Cap-Jamu-Iboe', 'Kunir Cap Jamu Iboe merupakan suplemen herbal yang digunakan sebagai terapi penunjang supaya kekebalan sistem imun tubuh meningkat dan tidak mudah jatuh sakit. Kunir Cap Jamu Iboe mengandung ekstrak kunir (kunyit putih) dengan senyawa aktif kurkumin. Kurkumin memiliki aktivitas antioksidan, antikanker dan antibakteri serta Riboisme Inactivating Protein (RIP) yaitu protein toksik yang diduga mampu menghambat pertumbuhan sel kanker, menginduksi respon imum dan non imum pada kondisi peradangan (inflamasi).', 'apotek_online_k24klik_2017050801594713_1430-Iboe-kapsul-kunir-30-kapsul.jpg', 52000.00, 0.50, 0, 10, 'PUBLISH', '2020-07-28 23:05:11', NULL, NULL, NULL, NULL, NULL),
(21, 'Femmy Mensana Sach', 'Femmy-Mensana-Sach', 'FEMMY MENSANA merupakan produk herbal, dikemas dalam bentuk jamu yang digunakan untuk meredakan nyeri akibat menstruasi dan membantu melancarkan proses menstruasi. FEMMY MENSANA mengandung berbagai bahan herbal yang telah teruji secara klinis berkhasiat dalam mengatasi masalah datang bulan. Kandungan herbal yang terkandung dalam produk ini, antara lain: 1. Chasteberry (Agni casti Fructus) yang diketahui telah dijadikan pengobatan herbal selama 2000 tahun lebih terkenal sebagai buah yang berkhasiat untuk melancarkan menstruasi, mengurangi gejala PMS, dan mengurangi rasa nyeri di jaringan payudara. Chasteberry dipercaya dapat mengurangi gejala PMS karena dapat mengatur kesetimbangan hormon dalam tubuh dengan menekan pelepasan prolaktin dari hipotalamus dan kelenjar pituitary. 2. Kunyit (Curcuma domestica Rhizoma) juga dikenal sebagai tanaman herbal yang memiliki banyak manfaat, salah satunya adalah melancarkan menstruasi dan dapat mengurangi nyeri pada ulu hati menjelang menstruasi. 3. Jahe (Zingiberis Rhizoma) memiliki manfaat sebagai obat nyeri saat haid, anti mual, dan menghangatkan badan. 4. Asam Jawa (Tamarindus Indica) adalah sejenis buah yang rasanya masam tetapi bermanfaat dalam menyegarkan tubuh dan mengatasi bau anyir pada saat menstruasi', 'apotek_online_k24klik_2017042711000513_1581-Femmy-Mensana.jpg', 3000.00, 0.50, 0, 10, 'PUBLISH', '2020-07-28 23:05:11', NULL, NULL, NULL, NULL, NULL),
(22, 'Jamkho 100ml', 'Jamkho-100ml', 'JAMKHO merupakan jamu yang dapat membantu mengurangi lemak darah. Jamu ini mengandung bahan-bahan alami pilihan seperti air, madu, gula aren, mahkota dewa, pegagan, mengkudu, dan kurkurma.', 'apotek_online_k24klik_201903191131314677_jamkho.jpeg', 116000.00, 0.50, 0, 10, 'PUBLISH', '2020-07-28 23:05:11', NULL, NULL, NULL, NULL, NULL),
(23, 'Numquam id et consequatur', 'numquam-id-et-consequatur', 'Qui aut esse in est sed. Autem consequuntur officiis et et sunt. Reprehenderit illo qui dolores voluptatum deserunt nisi illo.', 'unavailable.jpg', 150000.00, 0.50, 0, 10, 'PUBLISH', '2020-07-28 23:05:11', NULL, NULL, NULL, NULL, NULL),
(24, 'Sensodyne Herbal Toothpaste 100g', 'Sensodyne-Herbal-Toothpaste-100g', 'SENSODYNE HERBAL TOOTHPASTE 100G PCS merupakan pasta gigi dengan ekstrak herbal alami Eucalyptus & Fennel serta potassium nitrate yang berfungsi untuk meredakan sensitivitas, mencegah gigi berlubang, menjaga kesehatan gusi dan menyegarkan nafas. Rasa ngilu karena makanan atau minuman yang dingin dan panas bisa jadi karena gigi sensitif. Dengan menyikat gigi dua kali sehari, membantu meredakan sensitivitas dan menjaga kesehatan mulut. Manfaat kandungan dalam Pasta gigi Sensodyne Herbal: *Potassium nitrate yang telah teruji secara klinis untuk membantu melindungi gigi sensitif dan flouride yang dapat membantu memperkuat enamel dan melawan gigi berlubang. *Ekstrak dari Eucalyptus, yang secara tradisional dikenal memiliki kemampuan untuk membersihkan dan juga Fennel yang dikenal sebagai penyegar nafas alami. Beli SENSODYNE HERBAL TOOTHPASTE 100G PCS di K24Klik dan dapatkan manfaatnya.', 'apotek_online_k24klik_20211210090605359225_SENSODYNE-HERBAL-TOOTHPASTE-100G-PCS-removebg-preview.jpg', 35000.00, 0.50, 0, 10, 'PUBLISH', '2020-07-28 23:05:11', NULL, NULL, NULL, NULL, NULL),
(25, 'Iboe Curmino Kapsul', 'Iboe-Curmino-Kapsul', 'Iboe Curmino merupakan jamu produksi PT. Jamu Iboe Jaya dan telah terdaftar pada BPOM. Iboe Curmino pada setiap kapsulnya mengandung 500mg ekstrak temulawak yang setara dengan 5mg curcumin. Iboe Curmino dapat digunakan untuk membantu memelihara kesehatan hati.', 'apotek_online_k24klik_20201216103706359225_CURMINO-3.jpg', 52000.00, 0.50, 0, 10, 'PUBLISH', '2020-07-28 23:05:11', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gadget_category`
--

CREATE TABLE `gadget_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `gadget_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gadget_category`
--

INSERT INTO `gadget_category` (`id`, `gadget_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 7, NULL, NULL),
(5, 5, 4, NULL, NULL),
(6, 6, 2, NULL, NULL),
(7, 7, 1, NULL, NULL),
(8, 8, 4, NULL, NULL),
(9, 9, 2, NULL, NULL),
(10, 10, 4, NULL, NULL),
(11, 11, 7, NULL, NULL),
(12, 12, 7, NULL, NULL),
(13, 13, 4, NULL, NULL),
(14, 15, 3, NULL, NULL),
(15, 16, 3, NULL, NULL),
(16, 17, 3, NULL, NULL),
(17, 18, 3, NULL, NULL),
(18, 19, 6, NULL, NULL),
(19, 20, 6, NULL, NULL),
(20, 21, 7, NULL, NULL),
(21, 22, 7, NULL, NULL),
(22, 23, 8, NULL, NULL),
(23, 24, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gadget_order`
--

CREATE TABLE `gadget_order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gadget_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gadget_order`
--

INSERT INTO `gadget_order` (`id`, `gadget_id`, `order_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2020-08-11 03:26:59', '2020-08-11 03:26:59'),
(2, 1, 2, 1, '2020-08-11 07:18:31', '2020-08-11 07:18:31'),
(3, 2, 3, 1, '2022-08-01 19:30:31', '2022-08-01 19:30:31'),
(4, 2, 4, 1, '2022-08-01 19:34:51', '2022-08-01 19:34:51'),
(5, 1, 4, 1, '2022-08-01 19:34:51', '2022-08-01 19:34:51'),
(6, 1, 5, 1, '2022-08-02 04:01:43', '2022-08-02 04:01:43');

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
(22, '2014_10_12_000000_create_users_table', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2020_07_29_053515_create_gadgets_table', 1),
(25, '2020_07_29_053817_create_categories_table', 1),
(26, '2020_07_29_054040_alter_users_table', 1),
(27, '2020_07_29_054147_create_gadget_category_table', 1),
(28, '2020_07_29_054237_create_orders_table', 1),
(29, '2020_07_29_054339_create_gadget_order_table', 1),
(30, '2020_07_29_054442_create_provinces_table', 1),
(31, '2020_07_29_054556_create_cities_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_price` double(8,2) NOT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courier_service` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('SUBMIT','PROCESS','FINISH','CANCEL') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'SUBMIT',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total_price`, `invoice_number`, `courier_service`, `status`, `created_at`, `updated_at`) VALUES
(1, 8, 286000.00, '20200811102659', 'jne-OKE', 'SUBMIT', '2020-08-11 03:26:59', '2020-08-11 03:27:00'),
(2, 8, 289000.00, '20200811141831', 'jne-REG', 'SUBMIT', '2020-08-11 07:18:31', '2020-08-11 07:18:33'),
(3, 12, 13026.00, '20220802023031', 'jne-REG', 'SUBMIT', '2022-08-01 19:30:31', '2022-08-01 19:30:32'),
(4, 12, 14849.00, '20220802023451', 'jne-OKE', 'SUBMIT', '2022-08-01 19:34:51', '2022-08-01 19:34:54'),
(5, 12, 12823.00, '20220802110143', 'jne-OKE', 'SUBMIT', '2022-08-02 04:01:43', '2022-08-02 04:01:45');

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `province`) VALUES
(1, 'Bali'),
(2, 'Bangka Belitung'),
(3, 'Banten'),
(4, 'Bengkulu'),
(5, 'DI Yogyakarta'),
(6, 'DKI Jakarta'),
(7, 'Gorontalo'),
(8, 'Jambi'),
(9, 'Jawa Barat'),
(10, 'Jawa Tengah'),
(11, 'Jawa Timur'),
(12, 'Kalimantan Barat'),
(13, 'Kalimantan Selatan'),
(14, 'Kalimantan Tengah'),
(15, 'Kalimantan Timur'),
(16, 'Kalimantan Utara'),
(17, 'Kepulauan Riau'),
(18, 'Lampung'),
(19, 'Maluku'),
(20, 'Maluku Utara'),
(21, 'Nanggroe Aceh Darussalam (NAD)'),
(22, 'Nusa Tenggara Barat (NTB)'),
(23, 'Nusa Tenggara Timur (NTT)'),
(24, 'Papua'),
(25, 'Papua Barat'),
(26, 'Riau'),
(27, 'Sulawesi Barat'),
(28, 'Sulawesi Selatan'),
(29, 'Sulawesi Tengah'),
(30, 'Sulawesi Tenggara'),
(31, 'Sulawesi Utara'),
(32, 'Sumatera Barat'),
(33, 'Sumatera Selatan'),
(34, 'Sumatera Utara');

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
  `roles` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `api_token` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`, `address`, `city_id`, `province_id`, `api_token`, `phone`, `avatar`, `status`) VALUES
(1, 'idham', 'idham@gmail.com', NULL, '$2y$10$fvwZT3r/0P7Y3TLQ.bRcxujTdfmeLTZQbMJvsr0mqSVjJK7QAfRo6', NULL, '2020-07-28 23:03:55', '2020-08-11 00:18:15', '[\"CUSTOMER\"]', 'cimahi', NULL, NULL, 'qDwBEIawhWYV8Otq4Z8LkNeYH9QEsYxwSb6gWJ8NMtDb2UyCzGhk7nMzt8zp', '1', 'C:\\xampp\\tmp\\php8989.tmp', 'ACTIVE'),
(2, 'Franz Hansen V', 'bogisich.velda@example.net', NULL, '$2y$10$DqWaZ9RMzStF8p/ryN92KetIeMiznyjlHnnEE6y4Ka.qdBAjLZizC', NULL, '2020-07-28 23:03:55', '2020-08-11 00:11:09', '[\"CUSTOMER\"]', NULL, NULL, NULL, 'tgjCOuyOBYyrLesVG90mAPTItA50l4JbgR8MY3ryF4K1BcJYBesI3yCTU1jM', NULL, 'unavailable.jpg', 'ACTIVE'),
(3, 'Kyla Konopelski Jr.', 'ikrajcik@example.com', NULL, '$2y$10$mnWopwD1k3GRd.bHlc8rhuW0UVraMYAS3F8HjPZxFfURcK3jLhdXS', NULL, '2020-07-28 23:03:55', NULL, '[\"CUSTOMER\"]', NULL, NULL, NULL, NULL, NULL, 'unavailable.jpg', 'ACTIVE'),
(4, 'Augustine Lind', 'vandervort.dell@example.com', NULL, '$2y$10$iENjV8LcjXWnkNiw/Ffm5.ym34tKj0ipuw.Vseagb5YyCsxTGaQlq', NULL, '2020-07-28 23:03:56', NULL, '[\"CUSTOMER\"]', NULL, NULL, NULL, NULL, NULL, 'unavailable.jpg', 'ACTIVE'),
(5, 'Dr. Lenny Osinski Jr.', 'fyundt@example.net', NULL, '$2y$10$ZOUuysSyHsimMzdw1Bx5tOFNFChl3q2v0A/fZXKkvlV1WBhLCuxt.', NULL, '2020-07-28 23:03:56', NULL, '[\"CUSTOMER\"]', NULL, NULL, NULL, NULL, NULL, 'unavailable.jpg', 'ACTIVE'),
(7, 'ujang', 'asep@gmail.com', NULL, '$2y$10$H4joKx8Ir7Wg5kEClu8TTuUoxuXipUwLKFv4VoeoczZhwCQLwmfsC', NULL, '2020-08-10 23:48:00', '2020-08-11 00:16:15', '[\"CUSTOMER\"]', 'cimahi', NULL, NULL, 'uVEdzCiqhPgHgqVlccZnugofIotDuRE35yTwfKoJ7DhJEsmxyLUofv9OYoai', '1', NULL, 'ACTIVE'),
(8, 'idham', 'karli12@example.org', NULL, '$2y$10$b32ZvSD3Fe5XOL4q1oa4buAuEUXOhAyy4EG0axVILbkZYKZ9WPvbW', NULL, '2020-08-10 23:55:05', '2020-08-11 07:18:03', '[\"CUSTOMER\"]', 'melong', 30, 2, 'dPKAnZPH2ojNCd0Ih5I9vTJDRlXzVcLLvASfoMvCEamOVoGOvZZyIy6MW90F', '1', NULL, 'ACTIVE'),
(9, 'idham', 'idham1@gmail.com', NULL, '$2y$10$d3/9FnY.bx6eRFjBRSkNR.hk9Mayh.gFbiVX/yrvJ/1aacFIhPm0q', NULL, '2020-08-11 03:46:10', '2020-08-11 03:46:42', '[\"CUSTOMER\"]', NULL, NULL, NULL, NULL, NULL, NULL, 'ACTIVE'),
(12, 'rafa', 'rafa@example.com', NULL, '$2y$10$.6vFqhCdJZZ8p5HW8HWITuO3cXm3K6t4Wfb6WRcRqd./pX60VBv4y', NULL, '2022-08-01 06:03:06', '2022-08-02 03:49:25', '[\"CUSTOMER\"]', 'cimahi', 107, 9, 'jbnHQaCZtxVZB2r5Jk6FDTtNzFo2XCdFtlC7kncaL44uHBeIGeE4BIZEg98R', '089768872', '128-1280406_view-user-icon-png-user-circle-icon.png', 'ACTIVE'),
(13, 'dida', 'dida@example.com', NULL, '$2y$10$9VHoBS1K6qwsRyAP390ltOg8y2kSJO1KX5RpFQkLFpb5jELBKLjQu', NULL, '2022-08-01 06:30:16', '2022-08-01 06:30:16', '[\"CUSTOMER\"]', NULL, NULL, NULL, 'y7VEwIfMnFWIh9m6GrkVqohDrNy4ulMpSO2EjvK5PyvkChzVAg16dEunJHEm', NULL, '128-1280406_view-user-icon-png-user-circle-icon.png', 'ACTIVE'),
(16, 'putri', 'putri@example.com', NULL, '$2y$10$JRtuZl5VCmnGaOjJ2aKGwOLtMNbJ9YU/00RRQJXdHcmdekGOPYkiO', NULL, '2022-08-02 03:35:31', '2022-08-02 03:35:46', '[\"CUSTOMER\"]', NULL, NULL, NULL, NULL, NULL, '128-1280406_view-user-icon-png-user-circle-icon.png', 'ACTIVE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gadgets`
--
ALTER TABLE `gadgets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gadgets_slug_unique` (`slug`);

--
-- Indexes for table `gadget_category`
--
ALTER TABLE `gadget_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gadget_order`
--
ALTER TABLE `gadget_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gadgets`
--
ALTER TABLE `gadgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `gadget_category`
--
ALTER TABLE `gadget_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `gadget_order`
--
ALTER TABLE `gadget_order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
