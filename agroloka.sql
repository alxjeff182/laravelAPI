-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2018 at 01:05 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agroloka`
--

-- --------------------------------------------------------

--
-- Table structure for table `agrolokas`
--

CREATE TABLE `agrolokas` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agrolokas`
--

INSERT INTO `agrolokas` (`id`, `name`, `address`, `contact`, `email`, `note`, `created_at`, `updated_at`) VALUES
(44, 'Jody Sipes', '658 Mosciski Brook Suite 880\nNorth Deontaehaven, MO 09780-0419', '1-353-498-2791 x3492', 'eleanora24@yahoo.com', 'Qui quia enim quos enim.', '2018-11-05 03:21:29', '2018-11-05 03:21:29'),
(45, 'Prof. Camilla Kris', '337 Rachel Terrace\nWest Doris, HI 92043', '645-974-7065', 'muller.charles@hotmail.com', 'Eius aut nam dolores id.', '2018-11-05 03:21:29', '2018-11-05 03:21:29'),
(46, 'Antonietta Moen', '280 Kaycee Ridge\nMooremouth, AR 98411-7280', '+1-975-527-0692', 'reina.west@gmail.com', 'Nisi maxime ex quisquam.', '2018-11-05 03:21:29', '2018-11-05 03:21:29'),
(47, 'Silas Herzog', '160 Ernser Creek Apt. 346\nDeangelotown, AL 51997', '(567) 623-6783 x29827', 'adrien79@gmail.com', 'Dolor corrupti eos vel.', '2018-11-05 03:21:29', '2018-11-05 03:21:29'),
(48, 'Ms. Ayana Cronin III', '52138 Cartwright Fall\nNew Camryn, WY 81447-1351', '+1-312-997-4984', 'jake80@gmail.com', 'Aliquid quia ipsa amet.', '2018-11-05 03:21:29', '2018-11-05 03:21:29'),
(49, 'Bret McGlynn MD', '3572 Bednar Ranch Suite 220\nAlfredaville, VT 55386', '983-258-6625 x40825', 'lhackett@hotmail.com', 'Modi ea aut et omnis.', '2018-11-05 03:21:29', '2018-11-05 03:21:29'),
(50, 'Ms. Loraine Lakin PhD', '909 Nader Forges\nNorth Madonnatown, RI 76167-9758', '1-356-463-1313', 'audreanne.gulgowski@gmail.com', 'Omnis nostrum nemo esse.', '2018-11-05 03:21:29', '2018-11-05 03:21:29'),
(51, 'Camille King', '751 Ottis Village\nChamplinfurt, FL 63556', '673.727.3262', 'fay.armstrong@gmail.com', 'Qui a quo soluta iste.', '2018-11-05 03:21:29', '2018-11-05 03:21:29'),
(52, 'Dr. Daisha Denesik', '4801 Barton Crossroad\nAbbottville, IA 62829-8992', '(576) 967-8577 x181', 'concepcion.towne@gmail.com', 'Id sit sit qui.', '2018-11-05 03:21:29', '2018-11-05 03:21:29'),
(53, 'Malachi Jones', '9474 Fadel Knolls\nNew Tillmanland, KY 08572-5206', '307.309.2927', 'kylee.mraz@gmail.com', 'In minus vitae illum ex.', '2018-11-05 03:21:30', '2018-11-05 03:21:30'),
(54, 'Lizzie Jerde', '10860 Hoppe Isle\nRobertsfurt, PA 20896', '1-467-317-5808', 'miracle91@hotmail.com', 'Sint non cupiditate id.', '2018-11-05 03:21:30', '2018-11-05 03:21:30'),
(55, 'Esperanza Jenkins DDS', '2529 Sydney Center Apt. 019\nMonahanchester, NM 79562', '(952) 235-3935 x892', 'antwon.grady@hotmail.com', 'Nostrum quos sint vel.', '2018-11-05 03:21:30', '2018-11-05 03:21:30'),
(56, 'Mrs. Audie Wintheiser IV', '1552 Goldner Vista Suite 433\nNickolashaven, AK 54268-9492', '(798) 730-8960 x6227', 'lazaro34@yahoo.com', 'Aut sunt eum laborum.', '2018-11-05 03:21:30', '2018-11-05 03:21:30'),
(57, 'Crystal Zemlak', '715 Stan Union Suite 537\nSouth Lizzie, CA 32307', '1-386-551-4598', 'bwiza@hotmail.com', 'Est sed quam saepe.', '2018-11-05 03:21:30', '2018-11-05 03:21:30'),
(58, 'Mr. Otis Zulauf II', '993 Isom Estates\nNew Franzfort, TX 91224-9335', '(981) 343-2953 x690', 'karen21@gmail.com', 'Fuga quidem nam ut odio.', '2018-11-05 03:21:30', '2018-11-05 03:21:30'),
(59, 'Kory Hessel', '567 Harber Pike Suite 347\nCollierhaven, NJ 61613', '368.246.2264 x933', 'sigrid15@gmail.com', 'Ullam omnis quis aut.', '2018-11-05 03:21:30', '2018-11-05 03:21:30'),
(60, 'Miss Alanna Streich V', '4311 Suzanne Park Suite 130\nLake Marielleport, AR 73743', '+1-969-680-4214', 'zheller@yahoo.com', 'Quaerat eum nulla ut ut.', '2018-11-05 03:21:30', '2018-11-05 03:21:30'),
(61, 'Camilla Littel III', '987 Bauch Parkway Suite 374\nDionborough, FL 75542', '810-307-9587', 'oolson@hotmail.com', 'Vel quia non vel iusto.', '2018-11-05 03:21:30', '2018-11-05 03:21:30'),
(62, 'Arely Trantow IV', '253 Bechtelar Hill Suite 180\nOkunevaton, CT 48623', '647-999-6202', 'vcronin@hotmail.com', 'Id vitae id repudiandae.', '2018-11-05 03:21:30', '2018-11-05 03:21:30'),
(63, 'Heaven Kris', '3285 Ernser Loaf\nSchowalterton, LA 94162-8104', '796-446-4516 x90277', 'jsporer@hotmail.com', 'Vel ad porro autem et.', '2018-11-05 03:21:30', '2018-11-05 03:21:30'),
(64, 'Bethel Zulauf', '77917 Bert Inlet Suite 165\nCullenfurt, MN 56734', '+1-823-745-3789', 'watson.tromp@gmail.com', 'Id non perferendis odio.', '2018-11-05 03:21:30', '2018-11-05 03:21:30'),
(65, 'Junius Kshlerin', '31070 Gusikowski Plains Suite 223\nKobyborough, VT 35914', '(650) 227-5043', 'boehm.lizzie@yahoo.com', 'Minus ad aut dolorum.', '2018-11-05 03:21:30', '2018-11-05 03:21:30'),
(66, 'Prof. Devan Koelpin', '970 Misael Key Apt. 096\nNorth Kaycee, NH 24352', '704-644-4281 x29402', 'frank99@hotmail.com', 'Eos dolor rerum ea.', '2018-11-05 03:21:30', '2018-11-05 03:21:30'),
(67, 'Ms. Velma Buckridge II', '457 Schultz Tunnel\nPort Desmond, KS 20356-5425', '1-575-487-0494 x60472', 'sadye.tremblay@yahoo.com', 'Animi dolore sint sunt.', '2018-11-05 03:21:30', '2018-11-05 03:21:30'),
(68, 'Mr. Albin Harvey', '69803 Ortiz Walk\nPort Keshaun, DC 08489-0812', '804-774-2579 x9739', 'alanis04@gmail.com', 'Qui ad in autem at.', '2018-11-05 03:21:30', '2018-11-05 03:21:30'),
(69, 'Herta Louise', 'Jl. Merdeka 2, Jakarta Pusat', '+628-1211-211-444', 'HertaLouizz@hotmail.com', '3 Year Experience on PHP', '2018-11-05 03:21:31', '2018-11-05 04:58:48'),
(70, 'Idella Rosenbaum', '47918 Kody Gateway\nWest Danika, DE 41682', '+628-1212-971-18', 'raphaelle67@gmail.com', 'Et ab non aperiam.', '2018-11-05 03:21:31', '2018-11-05 03:41:09'),
(71, 'Letitia Satterfield', '637 Auer Walk Apt. 937\nPurdyfurt, NY 33168', '+628-1111-971-18', 'jennings34@yahoo.com', 'Qui non ut ut eos id.', '2018-11-05 03:21:31', '2018-11-05 03:41:23'),
(72, 'Jacquelyn Hilpert', '7829 Hessel Mountain Apt. 477\nEast Letitiahaven, KY 72422', '(919) 476-9623', 'lyda82@hotmail.com', 'Est quia officiis enim.', '2018-11-05 03:21:31', '2018-11-05 03:21:31'),
(73, 'Irma Hill', '23599 Ola Prairie\nPort Adelaborough, CT 38888-8466', '+18418857100', 'emelie.kessler@yahoo.com', 'Qui cum ut nulla autem.', '2018-11-05 03:21:31', '2018-11-05 03:21:31'),
(74, 'Jeffry Alexsander', 'Jl. H Saaba terusan, blok A no 12', '+628-1211-971-318', 'alexsanderjeffry@gmail.com', 'Fresh Graduate', '2018-11-05 03:40:28', '2018-11-05 03:40:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_11_04_095919_create_agrolokas_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agrolokas`
--
ALTER TABLE `agrolokas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `agrolokas_email_unique` (`email`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agrolokas`
--
ALTER TABLE `agrolokas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
