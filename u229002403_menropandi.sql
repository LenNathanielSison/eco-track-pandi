-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 13, 2025 at 03:48 PM
-- Server version: 10.11.10-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u229002403_menropandi`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `log_id` int(11) UNSIGNED NOT NULL,
  `admin_id` int(11) UNSIGNED NOT NULL,
  `action` varchar(100) NOT NULL,
  `log_time` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `last_login` datetime DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `first_name`, `middle_name`, `last_name`, `birthday`, `phone`, `username`, `password_hash`, `role`, `is_active`, `note`, `created_at`, `last_login`, `avatar`) VALUES
(1, 'Irish', 'Leonardo', 'San Jose', '2004-04-12', '09683148642', 'irishSJ', '$2y$10$qoVf90Fpt/LsPjQbk7WbluiWapbomwtk.D/wogp5lfXONFwwNiuNi', 'Leader', 1, '', '2025-08-26 05:53:28', NULL, NULL),
(2, 'David', 'Ignacio', 'Alvarez', '2003-10-10', '09927075548', 'davoude', '$2y$10$VqXBFvTT2qtnQZKEy7thBOy548Fk/67r8GX/magabVFAf39RYqznO', 'Tigagulo', 1, 'leleeleel', '2025-08-26 05:53:28', NULL, NULL),
(3, 'try', 'y', '1', '2025-08-26', '09123456789', 'try1@gmail.com', '$2y$10$7IW1p1h2d2nZ6DhQq3MLu.IIftaGmOxSN9M0NXB.qRrnU7kWSHjgG', 'Admin', 1, '', '2025-08-26 05:53:28', NULL, NULL),
(5, 'Justine', 'Ventura', 'Gabriel', '2003-10-14', '09602264598', 'justinerey', '$2y$10$XBpBY.BDY8G8TW3/f0RBEuunOIvovddjR7RZmEsjmnRoePJ/D3xpi', 'member', 1, '', '2025-09-05 05:55:29', NULL, NULL),
(6, 'Jem Creydel', '', 'Bello', '2025-09-05', '09683148642', 'jemcreydel', '$2y$10$alovR/uMZ4YAuvmsmn7pUuPQj4AryvSHGN4sNpPIIULTf/a0Dv1uK', 'Admin', 1, 'jem0801', '2025-09-05 06:00:12', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` enum('announcement','news') NOT NULL DEFAULT 'announcement',
  `content` text DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `status` enum('active','archived') NOT NULL DEFAULT 'active',
  `added_by` varchar(100) DEFAULT NULL,
  `edited_by` varchar(100) DEFAULT NULL,
  `publish_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`id`, `title`, `type`, `content`, `image_path`, `status`, `added_by`, `edited_by`, `publish_at`, `created_at`, `updated_at`) VALUES
(1, 'skibidi', 'announcement', 'skbidisigma', NULL, 'archived', 'David', NULL, '2025-08-25 21:53:22', '2025-08-25 21:53:22', '2025-09-10 07:32:12'),
(2, 'asfsdf', 'announcement', 'sdfsdfsdfsdf', '1756202050_2024-05-09 (4).png', 'archived', NULL, NULL, NULL, '2025-08-26 09:54:10', '2025-08-26 12:28:52'),
(3, 'lalalaalala', 'news', 'lelelleeleele', '1756210478_Screenshot 2024-05-11 224105.png', 'archived', NULL, NULL, NULL, '2025-08-26 12:14:38', '2025-09-10 08:53:31'),
(4, 'try', 'news', 'try', '1756210765_2024-05-09 (4).png', 'archived', NULL, NULL, NULL, '2025-08-26 12:19:25', '2025-09-10 07:33:08'),
(5, 'adadd', 'announcement', 'adadada', '1756210973_2024-05-09 (5).png', 'archived', NULL, NULL, NULL, '2025-08-26 12:22:53', '2025-09-10 07:34:02'),
(6, 'try2', 'announcement', 'try2', '1756211630_2024-05-09 (5).png', 'archived', 'system', NULL, '2025-08-26 12:33:50', '2025-08-26 12:33:50', '2025-09-10 07:33:00'),
(7, 'try3', 'announcement', 'try3', '1756211687_2024-05-09 (3).png', 'archived', 'system', NULL, '2025-08-26 12:34:47', '2025-08-26 12:34:47', '2025-09-10 08:53:43'),
(8, 'try4', 'news', 'try4', '1756211921_2024-05-09 (5).png', 'archived', '2', NULL, '2025-08-26 12:38:41', '2025-08-26 12:38:41', '2025-09-10 08:53:47'),
(9, 'try', 'announcement', 'try2', '1756212080_2024-05-09 (5).png', 'archived', 'System', NULL, '2025-08-26 12:41:20', '2025-08-26 12:41:20', '2025-09-10 07:32:43'),
(10, 'try', 'news', '1', '1756212231_Screenshot 2024-04-24 090000.png', 'archived', 'System', NULL, '2025-08-26 12:43:51', '2025-08-26 12:43:51', '2025-09-10 08:53:39'),
(11, 'last try create', 'announcement', 'waawa', '1756212298_2024-05-09 (5).png', 'archived', 'System', NULL, '2025-08-26 12:44:58', '2025-08-26 12:44:58', '2025-09-10 08:53:36'),
(12, 'sana pagibig na lang ang isipin wwww', 'announcement', 'gagana kaya ang edit', '1756214060_Group  4.png', 'archived', 'David Alvarez', 'David Alvarez', '2025-08-26 12:49:19', '2025-08-26 12:49:19', '2025-08-26 13:17:16'),
(13, 'try create edit archive  ez', 'news', 'kapag kita nyo tong number \"\" di gumana kapag ala gumana mwehehehe', '1756214210_Group  4.png', 'archived', 'David Alvarez', 'David Alvarez', '2025-08-26 13:16:18', '2025-08-26 13:16:18', '2025-09-10 07:31:00'),
(14, 'akaza111111111111', 'announcement', ':<111111111111111111111', '1756284677_Screenshot 2025-06-27 210209.png', 'archived', 'David Alvarez', 'David Alvarez', '2025-08-27 08:51:17', '2025-08-27 08:51:17', '2025-09-10 08:53:18'),
(15, 'akaza pookie', 'news', 'akza', '1756382848_2024-05-09 (4).png', 'archived', 'David Alvarez', NULL, '2025-08-28 12:07:28', '2025-08-28 12:07:28', '2025-09-10 07:49:13'),
(16, 'Inspeksyon sa mga Commercial at Industrial Establishments', 'announcement', 'Bilang bahagi ng patuloy na kampanya ng Pamahalaang Bayan ng Pandi para sa kalinisan at pangangalaga ng kapaligiran, isinagawa ang inspeksyon sa mga commercial at industrial establishments sa bayan alinsunod sa Manila bay Clean-Up, Rehabilitation, and Preservation Program, Kautusang Pambayan Blg. 128 (Septage Management), at Kautusang Pambayan Blg. 144 (Komprehensibong Solid Waste Management Ordinance).\r\n\r\nAng aktibidad na ito ay naglalayong tiyakin ang mahigpit na pagsunod sa mga alituntunin ng Liquid Waste Management at Solid Waste Management, bilang hakbang tungo sa isang mas malinis, ligtas, at maayos na pamayanan.\r\n\r\nAng inyong pakikiisa at kooperasyon ay mahalaga para sa tagumpay ng mga programang pangkalikasan ng ating bayan. Sama-sama nating pangalagaan ang ating kapaligiran para sa kasalukuyan at sa mga susunod pang henerasyon.\r\n#SerbisyongTapat #PandiCleanAndGreen #WasteManagementCompliance #KalikasangPandi', '1757496913_pandi1.jpg', 'active', 'David Alvarez', NULL, '2025-09-10 09:35:13', '2025-09-10 09:35:13', '2025-09-10 09:35:13'),
(17, 'MENRO:  ang KABUHAYAN KIOSK ON WHEELS (Palit-Basura Program)', 'announcement', '????????????HANDA NA BA KAYO?? ???????????? \r\n Abangan ang pinaka-masaya at pinaka-makabuluhang programa ng MENRO:  ang KABUHAYAN KIOSK ON WHEELS (Palit-Basura Program)\r\n Oo, tama ang nabasa ninyo!\r\nAno ba ang gagawin?  Simple lang!  Dalhin lang ang inyong mga natipong Recyclable materials—Plastik, Papel, Karton, Petbottles , Lumang  Damit,Lumang Bag,Lumang Sapatos at iba pa sa aming KABUHAYAN KIOSK ON WHEELS.  Palitan namin ang inyong mga basura ng mga Goods Tulad ng BIGAS, NOODLES , DISHWASHING ,NOTEBOOK O PAPEL na tiyak na magugustuhan ninyo!  ???? \r\n I-share ninyo ang post na ito sa inyong mga kaibigan at kapitbahay para mas marami ang makasali sa ating masayang programa!  Tara na at sama-sama nating linisin at pasayahin ang ating komunidad! ??????\r\n #environmentamonth \r\n#beattheplasticpollution \r\n#MENRO\r\n#KabuhayanKioskOnWheels\r\n#PalitBasura\r\n#Recycle', '1757498589_pandi2.jpg', 'active', 'David Alvarez', NULL, '2025-09-10 10:03:09', '2025-09-10 10:03:09', '2025-09-10 10:03:09'),
(18, 'Environmental Summit 2025', 'announcement', 'Mabuhay ang Bayan ng Pandi! \r\nEnvironmental Summit 2025\r\nCelebrating the Excellence and Partnership of Environmental Champions.\r\nSa pamumuno at paggabay ng ating mahusay na Mayor Rico Roque at  masisipag na bumubuo ng ating MENRO, sa pangunguna ni Sir Kram Opsibo  at  Sangguniang Bayan Council Committee on Environmental Kons Potpot R. Santos isa ang ating bayan sa mga pinarangalan ng ahensya dahil sa epektibo at mahusay na pamamaraan at programa ng ating lokal na pamahalaan.\r\nMunicipality of Pandi \r\n\"Excellence Award in LGU Leadership in Empowering Republic Act 11898\r\n(Extended Producers Responsibility Act of 2022)\r\nBarangay Bunsuran 2nd\r\n\"Outstanding Performance in Barangay Level Material Recovery Facility Operation\"\r\nSa pangunguna ni Punong Barangay Boyjun Galvez at Kagawad Committee in Environmental Noel San Diego Dalisay .\r\nCongratulations ????', '1757498689_pandi3.jpg', 'active', 'David Alvarez', NULL, '2025-09-10 10:04:49', '2025-09-10 10:04:49', '2025-09-10 10:04:49'),
(19, 'Training Semenar', 'announcement', '???????? #BarangayForTheEnvironment\r\nMGA KAPITAN, KAGAWAD NG ENVIRONMENT, KAGAWAD NG PEACE AND ORDER, HEPE NG TANOD, AT BARANGAY SECRETARIES — saludo sa inyong aktibong pakikilahok sa Training on Environmental Laws at Deputization ng mga Barangay Environmental Enforcers! ????????\r\nSa pagsasanay na ito, armado natin ang ating mga lider at enforcers ng tamang kaalaman sa mga batas pangkalikasan, proseso ng pagmonitor, at pag-iimbestiga sa mga paglabag (tulad ng ilegal na pagputol ng puno, pagmimina, at maling pagtatapon ng basura). Bilang deputized enforcers, kayo ang magiging mga frontliners sa pangangalaga ng ating komunidad at likas na yaman.\r\nMahalaga ang inyong tungkulin:\r\n? Pagpapatupad ng environmental laws sa inyong nasasakupan.\r\n? Pagtutok sa tamang waste management at pagsugpo sa polusyon.\r\n? Pakikipag-ugnayan sa DENR at LGU para sa mas epektibong programa.\r\nSalamat sa inyong dedikasyon! ????\r\nSa tulong ninyo, mas mapapalakas natin ang pagkakaisa, disiplina, at accountability para sa isang ligtas at sustainable na barangay. ?????\r\n?? Paalala sa Lahat: Ang pagsuway sa environmental laws ay may malaking multa o parusa. Protektahan natin ang ating likas na yaman—para sa kasalukuyan at sa mga susunod na henerasyon! ????????\r\nAng inyong liderato, ang sandigan ng pagbabago! ?????????\r\nSa pangunguna ni MENRO Kram Opsibo , MLGOO Maam Jhea Gregorio at sa ating Guest Speaker \r\nAtty. Julius Victor Carag Degala Bulacan Environment and Natural Resources Officer \r\nAtty. Lea S. Joaquin - Public Attorney III Municipal Trial Court\r\nPLTCOL. Manuel C. De Vera Jr. - PNP Chief Pandi Maraming Salamat po sa  pagpapaunlak sa aming Imbitasyon.\r\n Ito ay sa pamatnugot ng ating butihing Punong Bayan Mayor Rico Roque.\r\n#BayanihanParaSaKalikasan #BarangayEnforcers', '1757499273_pandi4.jpg', 'active', 'David Alvarez', NULL, '2025-09-09 10:14:33', '2025-09-09 10:14:33', '2025-09-10 10:18:28'),
(20, 'Pagpapasalamat sa Eco Boys', 'announcement', 'MENRO - LGU Pandi, Bulacan\r\nBilang pagpapakita ng pasasalamat at pagkilala sa masisipag na Eco Boys at mga MENRO Staff, ang Municipal Environment and Natural Resources Office (MENRO) ng LGU Pandi ay nagsagawa ng simpleng handog sa pamamagitan ng programang “Sharing is Caring”.\r\nAng munting regalong ito ay simbolo ng aming taos-pusong pasasalamat sa inyong dedikasyon at walang sawang serbisyo para sa kalinisan at kaayusan ng ating bayan. Sa bawat araw na kayo ay nagpapagal — sa init, ulan, at pagod — kami ay saludo sa inyo.\r\n???? Ang pagkakaisa at malasakit para sa kapwa ay pundasyon ng isang maayos na komunidad.\r\n???? Sama-sama nating itaguyod ang isang malinis, luntiang, at mas maunlad na Pandi!\r\nMuli, maraming salamat, at mabuhay kayo!', '1757499413_pandi5.jpg', 'active', 'David Alvarez', NULL, '2025-09-10 10:16:53', '2025-09-10 10:16:53', '2025-09-10 10:16:53'),
(21, 'lelelel', 'announcement', '1313131', '', 'archived', 'David Alvarez', NULL, '2025-09-10 14:32:01', '2025-09-10 14:32:01', '2025-09-10 14:32:09'),
(22, 'tru', 'announcement', '1', '', 'archived', 'David Alvarez', NULL, '2025-09-10 14:37:51', '2025-09-10 14:37:51', '2025-09-10 14:37:54'),
(23, '1', 'announcement', '1', '', 'archived', 'David Alvarez', NULL, '2025-09-10 14:38:08', '2025-09-10 14:38:08', '2025-09-10 14:38:23'),
(24, '1', 'announcement', '1', '', 'archived', 'David Alvarez', NULL, '2025-09-10 14:38:51', '2025-09-10 14:38:51', '2025-09-10 14:38:53');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `message`, `created_at`) VALUES
(11, 'The design looks clean and simple, very easy to use.', '2025-09-11 07:19:59'),
(12, 'I like that all the information I need is easy to find.', '2025-09-11 07:20:12'),
(13, 'It would be better if there’s a search bar for quicker navigation.', '2025-09-11 07:20:25'),
(14, 'The layout is neat and professional-looking, not overwhelming.', '2025-09-11 07:20:35');

-- --------------------------------------------------------

--
-- Table structure for table `menro_data`
--

CREATE TABLE `menro_data` (
  `id` int(11) NOT NULL,
  `barangay` varchar(100) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `population` int(11) DEFAULT NULL,
  `waste_per_capita` decimal(10,4) DEFAULT 0.0000,
  `target_diversion` decimal(5,2) DEFAULT 0.00,
  `target_disposal` decimal(5,2) DEFAULT 0.00,
  `target_weight_disposal` decimal(10,2) DEFAULT 0.00,
  `biodegradable` float DEFAULT NULL,
  `special` float DEFAULT NULL,
  `recyclable` float DEFAULT NULL,
  `residual` float DEFAULT NULL,
  `others` float DEFAULT NULL,
  `total_waste` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menro_data`
--

INSERT INTO `menro_data` (`id`, `barangay`, `year`, `population`, `waste_per_capita`, `target_diversion`, `target_disposal`, `target_weight_disposal`, `biodegradable`, `special`, `recyclable`, `residual`, `others`, `total_waste`) VALUES
(0, 'Bagbaguin', 2020, 2445, 0.5300, 0.55, 0.45, 213646.55, 79001.7, 4605.27, 197362, 67274.9, 126526, 474770),
(0, 'Bagbaguin', 2021, 2531, 0.5100, 0.55, 0.45, 221373.88, 81859.1, 4771.84, 204500, 69708.2, 131103, 491942),
(0, 'Bagbaguin', 2022, 2621, 0.5100, 0.60, 0.40, 203509.87, 84660.1, 4935.11, 211498, 72093.4, 135588, 508775),
(0, 'Bagbaguin', 2023, 2713, 0.5100, 0.65, 0.35, 184374.85, 87657.1, 5109.82, 218985, 74645.5, 140388, 526785),
(0, 'Bagbaguin', 2024, 2810, 0.5100, 0.70, 0.30, 163630.05, 90760.1, 5290.7, 226737, 77287.9, 145358, 545434),
(0, 'Bagbaguin', 2025, 2909, 0.5100, 0.75, 0.25, 141185.46, 93973, 5478, 234763, 80023.9, 150504, 564742),
(0, 'Bagbaguin', 2026, 3012, 0.5100, 0.80, 0.20, 116946.74, 97299.7, 5671.92, 243074, 82856.8, 155832, 584734),
(0, 'Bagbaguin', 2027, 3119, 0.5100, 0.85, 0.15, 90814.99, 100744, 5872.7, 251679, 85789.9, 161348, 605433),
(0, 'Bagbaguin', 2028, 3229, 0.5100, 0.90, 0.10, 62686.56, 104310, 6080.6, 260588, 88826.9, 167060, 626866),
(0, 'Bagbaguin', 2029, 3343, 0.5100, 0.95, 0.05, 32452.83, 108003, 6295.85, 269813, 91971.3, 172974, 649057),
(0, 'Bagbaguin', 2030, 3462, 0.5100, 1.00, 0.00, 0.00, 111826, 6518.72, 279364, 95227.1, 179097, 672033),
(0, 'Bagong Barrio', 2020, 15340, 0.4400, 0.55, 0.45, 1099047.34, 406403, 23690.6, 1015280, 346078, 650880, 2442330),
(0, 'Bagong Barrio', 2021, 16068, 0.4200, 0.55, 0.45, 1151416.34, 425768, 24819.4, 1063650, 362568, 681894, 2558700),
(0, 'Bagong Barrio', 2022, 16831, 0.4200, 0.60, 0.40, 1069899.28, 445078, 25945.1, 1111890, 379012, 712820, 2674750),
(0, 'Bagong Barrio', 2023, 17631, 0.4200, 0.65, 0.35, 980629.56, 466219, 27177.4, 1164710, 397015, 746679, 2801800),
(0, 'Bagong Barrio', 2024, 18468, 0.4200, 0.70, 0.30, 880465.25, 488365, 28468.4, 1220030, 415873, 782147, 2934880),
(0, 'Bagong Barrio', 2025, 19346, 0.4200, 0.75, 0.25, 768572.79, 511562, 29820.6, 1277980, 435627, 819299, 3074290),
(0, 'Bagong Barrio', 2026, 20265, 0.4200, 0.80, 0.20, 644064.00, 535861, 31237.1, 1338690, 456319, 858215, 3220320),
(0, 'Bagong Barrio', 2027, 21227, 0.4200, 0.85, 0.15, 505992.78, 561315, 32720.9, 1402270, 477994, 898980, 3373290),
(0, 'Bagong Barrio', 2028, 22236, 0.4200, 0.90, 0.10, 353351.63, 587977, 34275.1, 1468880, 500699, 941682, 3533520),
(0, 'Bagong Barrio', 2029, 23292, 0.4200, 0.95, 0.05, 185067.91, 615906, 35903.2, 1538650, 524482, 986412, 3701360),
(0, 'Bagong Barrio', 2030, 24398, 0.4200, 1.00, 0.00, 0.00, 645162, 37608.6, 1611740, 549395, 1033270, 3877170),
(0, 'Baka-Bakahan', 2020, 759, 0.6100, 0.55, 0.45, 75918.16, 28072.8, 1636.46, 70131.5, 23905.8, 44960.4, 168707),
(0, 'Baka-Bakahan', 2021, 783, 0.5900, 0.55, 0.45, 78511.79, 29031.9, 1692.37, 72527.4, 24722.5, 46496.4, 174471),
(0, 'Baka-Bakahan', 2022, 808, 0.5900, 0.60, 0.40, 71957.05, 29934.1, 1744.96, 74781.4, 25490.8, 47941.4, 179893),
(0, 'Baka-Bakahan', 2023, 834, 0.5900, 0.65, 0.35, 64977.22, 30892, 1800.8, 77174.4, 26306.5, 49475.5, 185649),
(0, 'Baka-Bakahan', 2024, 860, 0.5900, 0.70, 0.30, 57476.99, 31880.6, 1858.42, 79644, 27148.3, 51058.7, 191590),
(0, 'Baka-Bakahan', 2025, 888, 0.5900, 0.75, 0.25, 49430.21, 32900.8, 1917.89, 82192.5, 28017, 52692.6, 197721),
(0, 'Baka-Bakahan', 2026, 916, 0.5900, 0.80, 0.20, 40809.58, 33953.6, 1979.26, 84822.7, 28913.6, 54378.8, 204048),
(0, 'Baka-Bakahan', 2027, 946, 0.5900, 0.85, 0.15, 31586.62, 35040.1, 2042.6, 87537, 29838.8, 56118.9, 210577),
(0, 'Baka-Bakahan', 2028, 976, 0.5900, 0.90, 0.10, 21731.59, 36161.4, 2107.96, 90338.2, 30793.7, 57914.7, 217316),
(0, 'Baka-Bakahan', 2029, 1007, 0.5900, 0.95, 0.05, 11213.50, 37318.5, 2175.42, 93229, 31779.1, 59768, 224270),
(0, 'Baka-Bakahan', 2030, 1040, 0.5900, 1.00, 0.00, 0.00, 38512.7, 2245.03, 96212.4, 32796, 61680.5, 231447),
(0, 'Bunsuran I', 2020, 5326, 0.6600, 0.55, 0.45, 574495.70, 212436, 12383.6, 530706, 180902, 340229, 1276660),
(0, 'Bunsuran I', 2021, 5437, 0.6400, 0.55, 0.45, 586724.36, 216958, 12647.2, 542003, 184753, 347471, 1303830),
(0, 'Bunsuran I', 2022, 5552, 0.6400, 0.60, 0.40, 532262.82, 221421, 12907.4, 553154, 188554, 354620, 1330660),
(0, 'Bunsuran I', 2023, 5668, 0.6400, 0.65, 0.35, 475510.29, 226071, 13178.4, 564770, 192514, 362067, 1358600),
(0, 'Bunsuran I', 2024, 5787, 0.6400, 0.70, 0.30, 416139.44, 230819, 13455.2, 576631, 196557, 369671, 1387130),
(0, 'Bunsuran I', 2025, 5909, 0.6400, 0.75, 0.25, 354065.30, 235666, 13737.7, 588740, 200684, 377434, 1416260),
(0, 'Bunsuran I', 2026, 6033, 0.6400, 0.80, 0.20, 289200.54, 240615, 14026.2, 601103, 204899, 385360, 1446000),
(0, 'Bunsuran I', 2027, 6160, 0.6400, 0.85, 0.15, 221455.31, 245668, 14320.8, 613726, 209201, 393452, 1476370),
(0, 'Bunsuran I', 2028, 6289, 0.6400, 0.90, 0.10, 150737.25, 250827, 14621.5, 626615, 213595, 401715, 1507370),
(0, 'Bunsuran I', 2029, 6421, 0.6400, 0.95, 0.05, 76951.37, 256094, 14928.6, 639774, 218080, 410151, 1539030),
(0, 'Bunsuran I', 2030, 6556, 0.6400, 1.00, 0.00, 0.00, 261472, 15242.1, 653209, 222660, 418764, 1571350),
(0, 'Bunsuran II', 2020, 3651, 0.5100, 0.55, 0.45, 305031.96, 112794, 6575.13, 281782, 96051.2, 180647, 677849),
(0, 'Bunsuran II', 2021, 3775, 0.4900, 0.55, 0.45, 315567.30, 116690, 6802.23, 291514, 99368.6, 186886, 701261),
(0, 'Bunsuran II', 2022, 3903, 0.4900, 0.60, 0.40, 289407.39, 120393, 7018.13, 300767, 102523, 192818, 723518),
(0, 'Bunsuran II', 2023, 4036, 0.4900, 0.65, 0.35, 261689.40, 124415, 7252.53, 310812, 105947, 199258, 747684),
(0, 'Bunsuran II', 2024, 4173, 0.4900, 0.70, 0.30, 231796.99, 128570, 7494.77, 321193, 109485, 205913, 772657),
(0, 'Bunsuran II', 2025, 4315, 0.4900, 0.75, 0.25, 199615.84, 132864, 7745.09, 331921, 113142, 212790, 798463),
(0, 'Bunsuran II', 2026, 4462, 0.4900, 0.80, 0.20, 165026.41, 137302, 8003.78, 343007, 116921, 219898, 825132),
(0, 'Bunsuran II', 2027, 4613, 0.4900, 0.85, 0.15, 127903.72, 141888, 8271.11, 354464, 120826, 227242, 852692),
(0, 'Bunsuran II', 2028, 4770, 0.4900, 0.90, 0.10, 88117.14, 146627, 8547.36, 366303, 124862, 234832, 881171),
(0, 'Bunsuran II', 2029, 4932, 0.4900, 0.95, 0.05, 45530.12, 151524, 8832.84, 378537, 129032, 242676, 910602),
(0, 'Bunsuran II', 2030, 5100, 0.4900, 1.00, 0.00, 0.00, 156585, 9127.86, 391181, 133342, 250781, 941017),
(0, 'Bunsuran III', 2020, 2451, 0.4500, 0.55, 0.45, 182003.13, 67300.7, 3923.18, 168130, 57310.8, 107786, 404451),
(0, 'Bunsuran III', 2021, 2488, 0.4500, 0.55, 0.45, 184952.02, 68391.1, 3986.74, 170855, 58239.3, 109533, 411004),
(0, 'Bunsuran III', 2022, 2526, 0.4500, 0.60, 0.40, 166881.51, 69422.7, 4046.88, 173432, 59117.8, 111185, 417204),
(0, 'Bunsuran III', 2023, 2565, 0.4500, 0.65, 0.35, 148255.45, 70484.9, 4108.79, 176085, 60022.3, 112886, 423587),
(0, 'Bunsuran III', 2024, 2604, 0.4500, 0.70, 0.30, 129020.36, 71563.3, 4171.66, 178779, 60940.6, 114613, 430068),
(0, 'Bunsuran III', 2025, 2644, 0.4500, 0.75, 0.25, 109161.98, 72658.2, 4235.48, 181515, 61873, 116367, 436648),
(0, 'Bunsuran III', 2026, 2684, 0.4500, 0.80, 0.20, 88665.72, 73769.9, 4300.29, 184292, 62819.7, 118147, 443329),
(0, 'Bunsuran III', 2027, 2725, 0.4500, 0.85, 0.15, 67516.73, 74898.6, 4366.08, 187111, 63780.8, 119955, 450112),
(0, 'Bunsuran III', 2028, 2767, 0.4500, 0.90, 0.10, 45699.83, 76044.5, 4432.88, 189974, 64756.6, 121790, 456998),
(0, 'Bunsuran III', 2029, 2809, 0.4500, 0.95, 0.05, 23199.52, 77208, 4500.71, 192881, 65747.4, 123653, 463990),
(0, 'Bunsuran III', 2030, 2852, 0.4500, 1.00, 0.00, 0.00, 78389.3, 4569.57, 195832, 66753.4, 125545, 471089),
(0, 'Cacarong Bata', 2020, 14638, 0.5000, 0.55, 0.45, 1209118.20, 447105, 26063.2, 1116960, 380738, 716067, 2686930),
(0, 'Cacarong Bata', 2021, 15036, 0.4900, 0.55, 0.45, 1242170.46, 459327, 26775.7, 1147490, 391146, 735641, 2760380),
(0, 'Cacarong Bata', 2022, 15445, 0.4900, 0.60, 0.40, 1133393.25, 471492, 27484.8, 1177880, 401505, 755123, 2833480),
(0, 'Cacarong Bata', 2023, 15865, 0.4900, 0.65, 0.35, 1018693.86, 484316, 28232.4, 1209920, 412425, 775663, 2910550),
(0, 'Cacarong Bata', 2024, 16296, 0.4900, 0.70, 0.30, 896916.28, 497490, 29000.3, 1242830, 423643, 796761, 2989720),
(0, 'Cacarong Bata', 2025, 16740, 0.4900, 0.75, 0.25, 767760.34, 511021, 29789.1, 1276630, 435167, 818432, 3071040),
(0, 'Cacarong Bata', 2026, 17195, 0.4900, 0.80, 0.20, 630914.74, 524921, 30599.4, 1311360, 447003, 840694, 3154570),
(0, 'Cacarong Bata', 2027, 17663, 0.4900, 0.85, 0.15, 486056.71, 539199, 31431.7, 1347030, 459162, 863561, 3240380),
(0, 'Cacarong Bata', 2028, 18143, 0.4900, 0.90, 0.10, 332851.64, 553865, 32286.6, 1383660, 471651, 887050, 3328520),
(0, 'Cacarong Bata', 2029, 18637, 0.4900, 0.95, 0.05, 170952.60, 568930, 33164.8, 1421300, 484480, 911177, 3419050),
(0, 'Cacarong Bata', 2030, 19143, 0.4900, 1.00, 0.00, 0.00, 584405, 34066.9, 1459960, 497658, 935961, 3512050),
(0, 'Cacarong Matanda', 2020, 12494, 0.3200, 0.55, 0.45, 666637.52, 246508, 14369.7, 615825, 209917, 394798, 1481420),
(0, 'Cacarong Matanda', 2021, 12833, 0.3200, 0.55, 0.45, 684934.31, 253273, 14764.1, 632727, 215678, 405633, 1522080),
(0, 'Cacarong Matanda', 2022, 13182, 0.3200, 0.60, 0.40, 624956.25, 259982, 15155.2, 649486, 221391, 416377, 1562390),
(0, 'Cacarong Matanda', 2023, 13541, 0.3200, 0.65, 0.35, 561710.68, 267053, 15567.4, 667152, 227413, 427703, 1604890),
(0, 'Cacarong Matanda', 2024, 13909, 0.3200, 0.70, 0.30, 494562.18, 274317, 15990.8, 685298, 233598, 439336, 1648540),
(0, 'Cacarong Matanda', 2025, 14288, 0.3200, 0.75, 0.25, 423345.23, 281779, 16425.8, 703938, 239952, 451286, 1693380),
(0, 'Cacarong Matanda', 2026, 14676, 0.3200, 0.80, 0.20, 347888.17, 289443, 16872.6, 723086, 246479, 463561, 1739440),
(0, 'Cacarong Matanda', 2027, 15076, 0.3200, 0.85, 0.15, 268013.05, 297316, 17331.5, 742754, 253183, 476170, 1786750),
(0, 'Cacarong Matanda', 2028, 15486, 0.3200, 0.90, 0.10, 183535.34, 305403, 17802.9, 762956, 260070, 489122, 1835350),
(0, 'Cacarong Matanda', 2029, 15907, 0.3200, 0.95, 0.05, 94263.75, 313710, 18287.2, 783709, 267143, 502426, 1885280),
(0, 'Cacarong Matanda', 2030, 16339, 0.3200, 1.00, 0.00, 0.00, 322243, 18784.6, 805026, 274410, 516092, 1936550),
(0, 'Cupang', 2020, 2965, 0.7600, 0.55, 0.45, 369926.15, 136790, 7973.96, 341730, 116486, 219078, 822058),
(0, 'Cupang', 2021, 3011, 0.7500, 0.55, 0.45, 375861.25, 138985, 8101.9, 347212, 118355, 222593, 835247),
(0, 'Cupang', 2022, 3058, 0.7500, 0.60, 0.40, 339233.08, 141121, 8226.4, 352548, 120173, 226014, 848083),
(0, 'Cupang', 2023, 3105, 0.7500, 0.65, 0.35, 301459.48, 143322, 8354.73, 358048, 122048, 229540, 861313),
(0, 'Cupang', 2024, 3154, 0.7500, 0.70, 0.30, 262424.78, 145558, 8485.07, 363633, 123952, 233121, 874749),
(0, 'Cupang', 2025, 3203, 0.7500, 0.75, 0.25, 222098.84, 147829, 8617.44, 369306, 125886, 236757, 888395),
(0, 'Cupang', 2026, 3253, 0.7500, 0.80, 0.20, 180450.87, 150135, 8751.87, 375067, 127849, 240451, 902254),
(0, 'Cupang', 2027, 3304, 0.7500, 0.85, 0.15, 137449.43, 152477, 8888.4, 380918, 129844, 244202, 916330),
(0, 'Cupang', 2028, 3355, 0.7500, 0.90, 0.10, 93062.42, 154856, 9027.06, 386860, 131869, 248011, 930624),
(0, 'Cupang', 2029, 3408, 0.7500, 0.95, 0.05, 47257.10, 157272, 9167.88, 392896, 133927, 251880, 945142),
(0, 'Cupang', 2030, 3461, 0.7500, 1.00, 0.00, 0.00, 159725, 9310.9, 399025, 136016, 255810, 959886),
(0, 'Malibong Bata', 2020, 2578, 0.4300, 0.55, 0.45, 180045.20, 66576.7, 3880.97, 166322, 56694.2, 106627, 400100),
(0, 'Malibong Bata', 2021, 2633, 0.4200, 0.55, 0.45, 184062.42, 68062.2, 3967.57, 170033, 57959.2, 109006, 409028),
(0, 'Malibong Bata', 2022, 2689, 0.4200, 0.60, 0.40, 167042.15, 69489.5, 4050.77, 173599, 59174.7, 111292, 417605),
(0, 'Malibong Bata', 2023, 2747, 0.4200, 0.65, 0.35, 149289.74, 70976.6, 4137.46, 177314, 60441, 113673, 426542),
(0, 'Malibong Bata', 2024, 2805, 0.4200, 0.70, 0.30, 130701.04, 72495.5, 4226, 181108, 61734.5, 116106, 435670),
(0, 'Malibong Bata', 2025, 2865, 0.4200, 0.75, 0.25, 111248.37, 74046.9, 4316.44, 184984, 63055.6, 118591, 444993),
(0, 'Malibong Bata', 2026, 2927, 0.4200, 0.80, 0.20, 90903.26, 75631.5, 4408.81, 188942, 64405, 121129, 454516),
(0, 'Malibong Bata', 2027, 2989, 0.4200, 0.85, 0.15, 69636.45, 77250, 4503.16, 192986, 65783.2, 123721, 464243),
(0, 'Malibong Bata', 2028, 3053, 0.4200, 0.90, 0.10, 47417.78, 78903.2, 4599.52, 197116, 67191, 126368, 474178),
(0, 'Malibong Bata', 2029, 3119, 0.4200, 0.95, 0.05, 24216.26, 80591.7, 4697.95, 201334, 68628.9, 129073, 484325),
(0, 'Malibong Bata', 2030, 3185, 0.4200, 1.00, 0.00, 0.00, 82316.4, 4798.49, 205643, 70097.5, 131835, 494690),
(0, 'Malibong Matanda', 2020, 6813, 0.5100, 0.55, 0.45, 573141.18, 211935, 12354.4, 529455, 180476, 339427, 1273650),
(0, 'Malibong Matanda', 2021, 7111, 0.4900, 0.55, 0.45, 573305.43, 211996, 12357.9, 529607, 180528, 339524, 1274010),
(0, 'Malibong Matanda', 2022, 7422, 0.4900, 0.60, 0.40, 531925.52, 221281, 12899.2, 552804, 188435, 354395, 1329810),
(0, 'Malibong Matanda', 2023, 7748, 0.4900, 0.65, 0.35, 485820.87, 230973, 13464.2, 577016, 196688, 369918, 1388060),
(0, 'Malibong Matanda', 2024, 8087, 0.4900, 0.70, 0.30, 434656.99, 241090, 14053.9, 602290, 205303, 386120, 1448860),
(0, 'Malibong Matanda', 2025, 8441, 0.4900, 0.75, 0.25, 378079.14, 251649, 14669.5, 628670, 214295, 403032, 1512320),
(0, 'Malibong Matanda', 2026, 8811, 0.4900, 0.80, 0.20, 315711.21, 262672, 15312, 656206, 223681, 420685, 1578560),
(0, 'Malibong Matanda', 2027, 9197, 0.4900, 0.85, 0.15, 247154.52, 274177, 15982.7, 684948, 233479, 439111, 1647700),
(0, 'Malibong Matanda', 2028, 9600, 0.4900, 0.90, 0.10, 171986.59, 286186, 16682.7, 714948, 243705, 458344, 1719870),
(0, 'Malibong Matanda', 2029, 10020, 0.4900, 0.95, 0.05, 89759.80, 298721, 17413.4, 746263, 254379, 478420, 1795200),
(0, 'Malibong Matanda', 2030, 10459, 0.4900, 1.00, 0.00, 0.00, 311805, 18176.1, 778949, 265521, 499375, 1873830),
(0, 'Manatal', 2020, 3153, 0.6300, 0.55, 0.45, 326892.32, 120878, 7046.35, 301976, 102935, 193593, 726427),
(0, 'Manatal', 2021, 3202, 0.6200, 0.55, 0.45, 332156.09, 122824, 7159.81, 306838, 104592, 196710, 738125),
(0, 'Manatal', 2022, 3252, 0.6200, 0.60, 0.40, 299787.32, 124712, 7269.84, 311554, 106200, 199733, 749468),
(0, 'Manatal', 2023, 3302, 0.6200, 0.65, 0.35, 266406.00, 126657, 7383.25, 316414, 107856, 202849, 761160),
(0, 'Manatal', 2024, 3354, 0.6200, 0.70, 0.30, 231910.23, 128633, 7498.43, 321350, 109539, 206014, 773034),
(0, 'Manatal', 2025, 3406, 0.6200, 0.75, 0.25, 196273.36, 130640, 7615.41, 326363, 111248, 209227, 785093),
(0, 'Manatal', 2026, 3459, 0.6200, 0.80, 0.20, 159468.18, 132678, 7734.21, 331455, 112983, 212491, 797341),
(0, 'Manatal', 2027, 3513, 0.6200, 0.85, 0.15, 121466.91, 134747, 7854.86, 336625, 114746, 215806, 809779),
(0, 'Manatal', 2028, 3568, 0.6200, 0.90, 0.10, 82241.20, 136849, 7977.4, 341877, 116536, 219173, 822412),
(0, 'Manatal', 2029, 3624, 0.6200, 0.95, 0.05, 41762.08, 138984, 8101.84, 347210, 118354, 222592, 835242),
(0, 'Manatal', 2030, 3680, 0.6200, 1.00, 0.00, 0.00, 141152, 8228.23, 352626, 120200, 226064, 848271),
(0, 'Mapulang Lupa', 2020, 31580, 0.5600, 0.55, 0.45, 2908878.01, 1075640, 62702.5, 2687160, 915973, 1722700, 6464170),
(0, 'Mapulang Lupa', 2021, 32855, 0.5400, 0.55, 0.45, 3026560.93, 1119160, 65239.2, 2795870, 953030, 1792400, 6725690),
(0, 'Mapulang Lupa', 2022, 34183, 0.5400, 0.60, 0.40, 2794749.22, 1162620, 67772.7, 2904440, 990040, 1862000, 6986870),
(0, 'Mapulang Lupa', 2023, 35564, 0.5400, 0.65, 0.35, 2544199.96, 1209590, 70510.7, 3021780, 1030040, 1937230, 7269140),
(0, 'Mapulang Lupa', 2024, 37001, 0.5400, 0.70, 0.30, 2268844.83, 1258450, 73359.3, 3143860, 1071650, 2015490, 7562820),
(0, 'Mapulang Lupa', 2025, 38495, 0.5400, 0.75, 0.25, 1967088.47, 1309290, 76323, 3270870, 1114950, 2096920, 7868350),
(0, 'Mapulang Lupa', 2026, 40051, 0.5400, 0.80, 0.20, 1637247.07, 1362190, 79406.5, 3403020, 1159990, 2181630, 8186240),
(0, 'Mapulang Lupa', 2027, 41669, 0.5400, 0.85, 0.15, 1277543.89, 1417220, 82614.5, 3540500, 1206850, 2269770, 8516960),
(0, 'Mapulang Lupa', 2028, 43352, 0.5400, 0.90, 0.10, 886104.44, 1474480, 85952.1, 3683540, 1255610, 2361470, 8861040),
(0, 'Mapulang Lupa', 2029, 45104, 0.5400, 0.95, 0.05, 460951.53, 1534050, 89424.6, 3832350, 1306340, 2456870, 9219030),
(0, 'Mapulang Lupa', 2030, 46926, 0.5400, 1.00, 0.00, 0.00, 1596020, 93037.4, 3987180, 1359110, 2556130, 9591480),
(0, 'Masagana', 2020, 2938, 0.4300, 0.55, 0.45, 207503.60, 76730.2, 4472.86, 191687, 65340.6, 122888, 461119),
(0, 'Masagana', 2021, 3026, 0.4200, 0.55, 0.45, 207667.85, 76791, 4476.4, 191839, 65392.3, 122986, 461484),
(0, 'Masagana', 2022, 3116, 0.4200, 0.60, 0.40, 190131.45, 79094.7, 4610.69, 197594, 67354.1, 126675, 475329),
(0, 'Masagana', 2023, 3210, 0.4200, 0.65, 0.35, 171355.97, 81467.5, 4749.01, 203522, 69374.7, 130475, 489588),
(0, 'Masagana', 2024, 3306, 0.4200, 0.70, 0.30, 151282.84, 83911.5, 4891.48, 209628, 71455.9, 134390, 504276),
(0, 'Masagana', 2025, 3405, 0.4200, 0.75, 0.25, 129851.11, 86428.9, 5038.22, 215916, 73599.6, 138421, 519404),
(0, 'Masagana', 2026, 3508, 0.4200, 0.80, 0.20, 106997.31, 89021.8, 5189.37, 222394, 75807.6, 142574, 534987),
(0, 'Masagana', 2027, 3613, 0.4200, 0.85, 0.15, 82655.42, 91692.4, 5345.05, 229066, 78081.8, 146851, 551036),
(0, 'Masagana', 2028, 3721, 0.4200, 0.90, 0.10, 56756.72, 94443.2, 5505.4, 235938, 80424.3, 151257, 567567),
(0, 'Masagana', 2029, 3833, 0.4200, 0.95, 0.05, 29229.71, 97276.5, 5670.56, 243016, 82837, 155794, 584594),
(0, 'Masagana', 2030, 3948, 0.4200, 1.00, 0.00, 0.00, 100195, 5840.68, 250306, 85322.1, 160468, 602132),
(0, 'Masuso', 2020, 2938, 0.5700, 0.55, 0.45, 771937.39, 76730.2, 4472.86, 191687, 65340.6, 122888, 461119),
(0, 'Masuso', 2021, 3026, 0.5500, 0.55, 0.45, 794256.25, 76791, 4476.4, 191839, 65392.3, 122986, 461484),
(0, 'Masuso', 2022, 3116, 0.5500, 0.60, 0.40, 725706.91, 79094.7, 4610.69, 197594, 67354.1, 126675, 475329),
(0, 'Masuso', 2023, 3210, 0.5500, 0.65, 0.35, 653217.86, 81467.5, 4749.01, 203522, 69374.7, 130475, 489588),
(0, 'Masuso', 2024, 3306, 0.5500, 0.70, 0.30, 575970.19, 83911.5, 4891.48, 209628, 71455.9, 134390, 504276),
(0, 'Masuso', 2025, 3405, 0.5500, 0.75, 0.25, 493750.44, 86428.9, 5038.22, 215916, 73599.6, 138421, 519404),
(0, 'Masuso', 2026, 3508, 0.5500, 0.80, 0.20, 406336.86, 89021.8, 5189.37, 222394, 75807.6, 142574, 534987),
(0, 'Masuso', 2027, 3613, 0.5500, 0.85, 0.15, 313499.05, 91692.4, 5345.05, 229066, 78081.8, 146851, 551036),
(0, 'Masuso', 2028, 3721, 0.5500, 0.90, 0.10, 214997.65, 94443.2, 5505.4, 235938, 80424.3, 151257, 567567),
(0, 'Masuso', 2029, 3833, 0.5500, 0.95, 0.05, 110584.04, 97276.5, 5670.56, 243016, 82837, 155794, 584594),
(0, 'Masuso', 2030, 3948, 0.5500, 1.00, 0.00, 0.00, 100195, 5840.68, 250306, 85322.1, 160468, 602132),
(0, 'Pinagkwartelan', 2020, 6899, 0.6800, 0.55, 0.45, 765336.77, 283005, 16497.3, 707001, 240996, 453249, 1700750),
(0, 'Pinagkwartelan', 2021, 7495, 0.6200, 0.55, 0.45, 765501.02, 283065, 16500.8, 707153, 241048, 453347, 1701110),
(0, 'Pinagkwartelan', 2022, 8142, 0.6200, 0.60, 0.40, 739235.83, 307522, 17926.5, 768251, 261874, 492516, 1848090),
(0, 'Pinagkwartelan', 2023, 8846, 0.6200, 0.65, 0.35, 702717.58, 334092, 19475.3, 834628, 284500, 535069, 2007760),
(0, 'Pinagkwartelan', 2024, 9610, 0.6200, 0.70, 0.30, 654370.61, 362958, 21158, 906740, 309081, 581299, 2181240),
(0, 'Pinagkwartelan', 2025, 10440, 0.6200, 0.75, 0.25, 592423.53, 394317, 22986, 985082, 335786, 631524, 2369690),
(0, 'Pinagkwartelan', 2026, 11342, 0.6200, 0.80, 0.20, 514887.13, 428386, 24972, 1070190, 364798, 686087, 2574440),
(0, 'Pinagkwartelan', 2027, 12322, 0.6200, 0.85, 0.15, 419530.04, 465399, 27129.6, 1162660, 396316, 745365, 2796870),
(0, 'Pinagkwartelan', 2028, 13387, 0.6200, 0.90, 0.10, 303851.62, 505609, 29473.6, 1263110, 430558, 809765, 3038520),
(0, 'Pinagkwartelan', 2029, 14544, 0.6200, 0.95, 0.05, 165052.20, 549294, 32020.1, 1372240, 467758, 879728, 3301040),
(0, 'Pinagkwartelan', 2030, 15800, 0.6200, 1.00, 0.00, 0.00, 596753, 34786.7, 1490810, 508172, 955737, 3586250),
(0, 'Poblacion', 2020, 8679, 0.2200, 0.55, 0.45, 318462.45, 117760, 6864.64, 294189, 100280, 188601, 707694),
(0, 'Poblacion', 2021, 9112, 0.2100, 0.55, 0.45, 318626.70, 117821, 6868.18, 294340, 100332, 188698, 708059),
(0, 'Poblacion', 2022, 10024, 0.2100, 0.60, 0.40, 311546.11, 129603, 7554.99, 323774, 110365, 207568, 778865),
(0, 'Poblacion', 2023, 11026, 0.2100, 0.65, 0.35, 299863.13, 142564, 8310.49, 356152, 121402, 228324, 856752),
(0, 'Poblacion', 2024, 12129, 0.2100, 0.70, 0.30, 282728.09, 156820, 9141.54, 391767, 133542, 251157, 942427),
(0, 'Poblacion', 2025, 13342, 0.2100, 0.75, 0.25, 259167.42, 172502, 10055.7, 430944, 146896, 276272, 1036670),
(0, 'Poblacion', 2026, 14676, 0.2100, 0.80, 0.20, 228067.33, 189752, 11061.3, 474038, 161586, 303900, 1140340),
(0, 'Poblacion', 2027, 16144, 0.2100, 0.85, 0.15, 188155.55, 208727, 12167.4, 521442, 177744, 334290, 1254370),
(0, 'Poblacion', 2028, 17758, 0.2100, 0.90, 0.10, 137980.73, 229600, 13384.1, 573586, 195519, 367719, 1379810),
(0, 'Poblacion', 2029, 19534, 0.2100, 0.95, 0.05, 75889.40, 252560, 14722.5, 630944, 215071, 404491, 1517790),
(0, 'Poblacion', 2030, 21487, 0.2100, 1.00, 0.00, 0.00, 277816, 16194.8, 694039, 236578, 444940, 1669570),
(0, 'Real de Cacarong', 2020, 4660, 0.1800, 0.55, 0.45, 137390.20, 50803.8, 2961.52, 126918, 43262.6, 81365.5, 305312),
(0, 'Real de Cacarong', 2021, 4785, 0.1800, 0.55, 0.45, 141250.24, 52231.2, 3044.73, 130484, 44478.1, 83651.5, 313889),
(0, 'Real de Cacarong', 2022, 4914, 0.1800, 0.60, 0.40, 128848.78, 53601.1, 3124.58, 133906, 45644.7, 85845.5, 322122),
(0, 'Real de Cacarong', 2023, 5046, 0.1800, 0.65, 0.35, 115775.46, 55043, 3208.63, 137508, 46872.5, 88154.7, 330787),
(0, 'Real de Cacarong', 2024, 5182, 0.1800, 0.70, 0.30, 101905.56, 56523.6, 3294.95, 141207, 48133.4, 90526.1, 339685),
(0, 'Real de Cacarong', 2025, 5321, 0.1800, 0.75, 0.25, 87205.68, 58044.1, 3383.58, 145006, 49428.2, 92961.3, 348823),
(0, 'Real de Cacarong', 2026, 5464, 0.1800, 0.80, 0.20, 71641.21, 59605.5, 3474.6, 148906, 50757.8, 95461.9, 358206),
(0, 'Real de Cacarong', 2027, 5611, 0.1800, 0.85, 0.15, 55176.27, 61208.9, 3568.07, 152912, 52123.2, 98029.8, 367842),
(0, 'Real de Cacarong', 2028, 5762, 0.1800, 0.90, 0.10, 37773.68, 62855.4, 3664.05, 157025, 53525.3, 100667, 377737),
(0, 'Real de Cacarong', 2029, 5917, 0.1800, 0.95, 0.05, 19394.89, 64546.2, 3762.61, 161249, 54965.1, 103375, 387898),
(0, 'Real de Cacarong', 2030, 6076, 0.1800, 1.00, 0.00, 0.00, 66282.5, 3863.82, 165587, 56443.7, 106156, 398332),
(0, 'San Roque', 2020, 2894, 0.4100, 0.55, 0.45, 192664.61, 71243.1, 4152.99, 177979, 60667.9, 114100, 428144),
(0, 'San Roque', 2021, 2947, 0.4000, 0.55, 0.45, 196412.42, 72629, 4233.78, 181441, 61848.1, 116320, 436472),
(0, 'San Roque', 2022, 3002, 0.4000, 0.60, 0.40, 177779.64, 73956.3, 4311.16, 184757, 62978.4, 118446, 444449),
(0, 'San Roque', 2023, 3058, 0.4000, 0.65, 0.35, 158450.54, 75331.9, 4391.34, 188194, 64149.8, 120649, 452716),
(0, 'San Roque', 2024, 3115, 0.4000, 0.70, 0.30, 138340.91, 76733.1, 4473.02, 191694, 65343, 122893, 461136),
(0, 'San Roque', 2025, 3173, 0.4000, 0.75, 0.25, 117428.37, 78160.3, 4556.22, 195260, 66558.4, 125179, 469714),
(0, 'San Roque', 2026, 3232, 0.4000, 0.80, 0.20, 95690.03, 79614.1, 4640.97, 198892, 67796.4, 127507, 478450),
(0, 'San Roque', 2027, 3292, 0.4000, 0.85, 0.15, 73102.40, 81094.9, 4727.29, 202591, 69057.4, 129879, 487349),
(0, 'San Roque', 2028, 3353, 0.4000, 0.90, 0.10, 49641.40, 82603.3, 4815.22, 206359, 70341.9, 132294, 496414),
(0, 'San Roque', 2029, 3416, 0.4000, 0.95, 0.05, 25282.37, 84139.7, 4904.78, 210198, 71650.2, 134755, 505647),
(0, 'San Roque', 2030, 3479, 0.4000, 1.00, 0.00, 0.00, 85704.7, 4996.01, 214107, 72982.9, 137261, 515052),
(0, 'Siling Bata', 2020, 12578, 0.4700, 0.55, 0.45, 974772.20, 360449, 21011.8, 900473, 306945, 577282, 2166160),
(0, 'Siling Bata', 2021, 12877, 0.4600, 0.55, 0.45, 998136.02, 369089, 21515.4, 922056, 314302, 591118, 2218080),
(0, 'Siling Bata', 2022, 13183, 0.4600, 0.60, 0.40, 907860.82, 377670, 22015.6, 943494, 321610, 604862, 2269650),
(0, 'Siling Bata', 2023, 13497, 0.4600, 0.65, 0.35, 813284.42, 386659, 22539.6, 965950, 329264, 619258, 2323670),
(0, 'Siling Bata', 2024, 13818, 0.4600, 0.70, 0.30, 713691.93, 395861, 23076, 988939, 337100, 633996, 2378970),
(0, 'Siling Bata', 2025, 14147, 0.4600, 0.75, 0.25, 608898.17, 405283, 23625.2, 1012480, 345123, 649085, 2435590),
(0, 'Siling Bata', 2026, 14484, 0.4600, 0.80, 0.20, 498711.95, 414928, 24187.5, 1036570, 353337, 664534, 2493560),
(0, 'Siling Bata', 2027, 14829, 0.4600, 0.85, 0.15, 382935.97, 424804, 24763.2, 1061240, 361747, 680350, 2552910),
(0, 'Siling Bata', 2028, 15182, 0.4600, 0.90, 0.10, 261366.57, 434914, 25352.6, 1086500, 370356, 696542, 2613670),
(0, 'Siling Bata', 2029, 15543, 0.4600, 0.95, 0.05, 133793.55, 445265, 25955.9, 1112360, 379171, 713120, 2675870),
(0, 'Siling Bata', 2030, 15913, 0.4600, 1.00, 0.00, 0.00, 455862, 26573.7, 1138830, 388195, 730092, 2739560),
(0, 'Siling Matanda', 2020, 3560, 0.6300, 0.55, 0.45, 370742.21, 137092, 7991.55, 342483, 116743, 219562, 823872),
(0, 'Siling Matanda', 2021, 3695, 0.6100, 0.55, 0.45, 383437.55, 141787, 8265.21, 354211, 120740, 227080, 852083),
(0, 'Siling Matanda', 2022, 3835, 0.6100, 0.60, 0.40, 351981.99, 146425, 8535.56, 365797, 124690, 234508, 879955),
(0, 'Siling Matanda', 2023, 3981, 0.6100, 0.65, 0.35, 318394.11, 151374, 8824.07, 378161, 128904, 242434, 909697),
(0, 'Siling Matanda', 2024, 4132, 0.6000, 0.70, 0.30, 282133.57, 156490, 9122.32, 390943, 133261, 250629, 940445),
(0, 'Siling Matanda', 2025, 4289, 0.6000, 0.75, 0.25, 243058.07, 161779, 9430.65, 404157, 137765, 259100, 972232),
(0, 'Siling Matanda', 2026, 4452, 0.6000, 0.80, 0.20, 201018.74, 167248, 9749.41, 417817, 142422, 267857, 1005090),
(0, 'Siling Matanda', 2027, 4622, 0.6000, 0.85, 0.15, 155859.88, 172901, 10078.9, 431940, 147236, 276911, 1039070),
(0, 'Siling Matanda', 2028, 4797, 0.5900, 0.90, 0.10, 107418.63, 178745, 10419.6, 446539, 152212, 286271, 1074190),
(0, 'Siling Matanda', 2029, 4979, 0.5900, 0.95, 0.05, 55524.69, 184786, 10771.8, 461632, 157357, 295947, 1110490),
(0, 'Siling Matanda', 2030, 5169, 0.5900, 1.00, 0.00, 0.00, 191032, 11135.9, 477235, 162676, 305950, 1148030),
(0, 'Sto. Nino', 2020, 1749, 0.7000, 0.55, 0.45, 200804.00, 74252.9, 4328.44, 185498, 63230.9, 118921, 446231),
(0, 'Sto. Nino', 2021, 1807, 0.6800, 0.55, 0.45, 200968.25, 74313.6, 4331.98, 185650, 63282.7, 119018, 446596),
(0, 'Sto. Nino', 2022, 1868, 0.6800, 0.60, 0.40, 184622.83, 76803.1, 4477.1, 191869, 65402.6, 123005, 461557),
(0, 'Sto. Nino', 2023, 1930, 0.6800, 0.65, 0.35, 166956.74, 79376, 4627.09, 198297, 67593.6, 127126, 477019),
(0, 'Sto. Nino', 2024, 1995, 0.6800, 0.70, 0.30, 147899.82, 82035.1, 4782.09, 204940, 69858, 131384, 492999),
(0, 'Sto. Nino', 2025, 2062, 0.6800, 0.75, 0.25, 127378.72, 84783.3, 4942.29, 211805, 72198.3, 135786, 509515),
(0, 'Sto. Nino', 2026, 2131, 0.6800, 0.80, 0.20, 105316.72, 87623.5, 5107.86, 218901, 74616.9, 140335, 526584),
(0, 'Sto. Nino', 2027, 2202, 0.6800, 0.85, 0.15, 81633.63, 90558.9, 5278.97, 226234, 77116.6, 145036, 544224),
(0, 'Sto. Nino', 2028, 2276, 0.6800, 0.90, 0.10, 56245.57, 93592.6, 5455.82, 233813, 79700, 149894, 562456),
(0, 'Sto. Nino', 2029, 2352, 0.6800, 0.95, 0.05, 29064.90, 96728, 5638.59, 241646, 82369.9, 154916, 581298),
(0, 'Sto. Nino', 2030, 2431, 0.6800, 1.00, 0.00, 0.00, 99968.4, 5827.48, 249741, 85129.3, 160106, 600771);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `fk_admin` (`admin_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `log_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `fk_admin` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`admin_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
