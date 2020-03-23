-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 23, 2020 at 04:20 PM
-- Server version: 8.0.17
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ksmk`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `car_num` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `car_vehicle_reg_num` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `car_num`, `car_vehicle_reg_num`, `line_id`, `created_at`, `updated_at`) VALUES
(5, '25-651', '58-2565', NULL, '2020-03-01 22:58:01', '2020-03-01 22:58:01');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `emp_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_fname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_lname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_address` text CHARACTER SET utf8 COLLATE utf8_croatian_ci,
  `emp_phone` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_token_line` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_position` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `car_id` int(10) DEFAULT NULL,
  `day_off` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `salary` int(5) DEFAULT NULL,
  `check_in` time DEFAULT NULL,
  `check_out` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `emp_id`, `emp_fname`, `emp_lname`, `emp_address`, `emp_phone`, `emp_token_line`, `emp_position`, `car_id`, `day_off`, `updated_at`, `created_at`, `salary`, `check_in`, `check_out`) VALUES
(31, 'emp_001', 'Nopparat', 'Sarakhan', 'อุดรธานี', '0807664930', NULL, 'พนักงานขับรถ', 5, '2020-03-28', '2020-03-18', '2020-03-02', 0, '00:00:00', '00:00:00'),
(33, 'emp_002', 'นพรัตน์', 'สาระขันธ์', 'ตึก c หอพัก RS แมนชั่น ที่อยู่ 294/199 ซอยวัดมัชฌันติการาม', '0807664930', NULL, 'พนักงานขับรถ', 5, NULL, '2020-03-18', '2020-03-02', NULL, '04:30:00', '12:30:00'),
(37, 'emp_004', 'Nopparat', 'Sarakhan', 'ตึก c หอพัก RS แมนชั่น ที่อยู่ 294/199 ซอยวัดมัชฌันติการาม', '0807664930', NULL, 'พนักงานขับรถ', 5, NULL, '2020-03-18', '2020-03-02', NULL, '05:30:00', '13:30:00');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `line_cars`
--

CREATE TABLE `line_cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lc_num` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lc_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `line_cars`
--

INSERT INTO `line_cars` (`id`, `lc_num`, `lc_name`, `created_at`, `updated_at`) VALUES
(3, '52', '52', '2020-03-01 11:36:32', '2020-03-01 12:38:03'),
(4, '96', '96', '2020-03-01 11:40:09', '2020-03-01 12:38:09'),
(5, '97', '97', '2020-03-01 11:45:14', '2020-03-01 12:38:15'),
(10, '98', '98', '2020-03-01 22:57:25', '2020-03-01 22:57:25');

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
(4, '2020_02_29_202156_create_line_cars_table', 2),
(5, '2020_03_01_010809_create_cars_table', 3);

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
-- Table structure for table `queues`
--

CREATE TABLE `queues` (
  `id` int(11) NOT NULL,
  `emp_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `check_in` time DEFAULT NULL,
  `check_out` time DEFAULT NULL,
  `d1` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d2` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d3` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d4` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d5` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d6` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d7` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d8` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d9` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d10` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d11` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d12` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d13` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d14` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d15` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d16` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d17` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d18` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d19` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d20` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d21` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d22` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d23` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d24` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d25` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d26` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d27` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d28` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d29` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d30` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d31` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `queues`
--

INSERT INTO `queues` (`id`, `emp_id`, `check_in`, `check_out`, `d1`, `d2`, `d3`, `d4`, `d5`, `d6`, `d7`, `d8`, `d9`, `d10`, `d11`, `d12`, `d13`, `d14`, `d15`, `d16`, `d17`, `d18`, `d19`, `d20`, `d21`, `d22`, `d23`, `d24`, `d25`, `d26`, `d27`, `d28`, `d29`, `d30`, `d31`, `created_at`, `updated_at`) VALUES
(1, 'emp_001', '04:00:00', '12:00:00', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '2020-03-01 17:00:00', '2020-03-01 17:00:00'),
(2, 'emp_002', '04:00:00', '12:00:00', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '2020-03-01 17:00:00', '2020-03-01 17:00:00'),
(6, 'emp_004', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-01 22:55:59', '2020-03-01 22:55:59');

-- --------------------------------------------------------

--
-- Table structure for table `reportemployees`
--

CREATE TABLE `reportemployees` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Surname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Date` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `Month` enum('มกราคม','กุมภาพันธ์','มีนาคม','เมษายน','พฤษภาคม','มิถุนายน','กรกฎาคม','สิงหาคม','กันยายน','ตุลาคม','พฤศจิกายน','ธันวาคม') COLLATE utf8_unicode_ci NOT NULL,
  `Normal` int(1) NOT NULL,
  `Late` int(1) NOT NULL,
  `Absence` int(1) NOT NULL,
  `sick` int(1) NOT NULL,
  `leaves` int(1) NOT NULL,
  `ordination` int(1) NOT NULL,
  `leave_early` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `u_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `u_status`) VALUES
(1, 'Nopparat Sarakhan', 'nopparatsarakhan@gmail.com', '2020-02-26 17:00:00', '123456', 'qqqqq', '2020-02-26 17:00:00', '2020-08-26 17:00:00', 'admin'),
(2, 'nopparat', 'nopparat@test.com', NULL, '$2y$10$bSEpl7HwZP4sc1IeQDKtr.VqeioDuNAFpFZrXmHixbUMQ8/luWd3u', NULL, '2020-03-01 19:30:09', '2020-03-01 19:30:09', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `line_cars`
--
ALTER TABLE `line_cars`
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
-- Indexes for table `queues`
--
ALTER TABLE `queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reportemployees`
--
ALTER TABLE `reportemployees`
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
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `line_cars`
--
ALTER TABLE `line_cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `queues`
--
ALTER TABLE `queues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reportemployees`
--
ALTER TABLE `reportemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
