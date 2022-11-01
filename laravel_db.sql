-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2022 at 09:16 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `cont_id` bigint(20) UNSIGNED NOT NULL,
  `cname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cemail` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`cont_id`, `cname`, `cemail`, `contact_number`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'vinod', 'vinodverma150791@gmail.com', '08090587674', 'my contact', 'This is my first entry. your website so cool', '2022-09-29 11:44:51', '2022-09-29 11:44:51');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cid` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('M','F','O') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `points` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cid`, `user_name`, `email`, `gender`, `address`, `state`, `country`, `dob`, `password`, `status`, `points`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'Amit', 'ajeet@gmail.com', 'M', 'Shimla', 'Himachal Pradesh', 'India', '2022-09-02', '827ccb0eea8a706c4c34a16891f84e7b', 1, 0, '2022-09-15 09:08:33', '2022-09-25 03:26:59', NULL),
(8, 'vinod', 'vinodverma150791@gmail.com', 'M', 'kanpur', 'uttar pradesh', 'india', '2022-09-09', '827ccb0eea8a706c4c34a16891f84e7b', 1, 0, '2022-09-16 05:36:01', '2022-09-25 03:27:08', NULL),
(10, 'Sunita', 'sun@gmail.com', 'M', 'Bhopal', 'Madhya Pradesh', 'India', '1982-07-15', '827ccb0eea8a706c4c34a16891f84e7b', 1, 0, '2022-09-24 03:45:04', '2022-09-24 03:45:04', NULL),
(12, 'Soni Tiwari', 'soni@gmail.com', 'F', 'Las Vegas', 'New York', 'Amerika', '1982-07-20', '827ccb0eea8a706c4c34a16891f84e7b', 1, 0, '2022-09-24 04:06:48', '2022-09-25 03:27:19', NULL),
(13, 'Ann Petrova', 'anna@gmail.com', 'F', 'Nebrask', 'Moscow', 'Russia', '2022-06-19', '827ccb0eea8a706c4c34a16891f84e7b', 1, 0, '2022-09-24 05:12:36', '2022-09-25 03:27:28', NULL),
(14, 'Archana', 'ar@gmail.com', 'M', 'Kullu Manali', 'Himanchal Pradesh', 'India', '2022-09-24', '12345', 1, 0, '2022-09-24 06:51:19', '2022-09-24 06:51:19', NULL),
(15, 'Hilario Steuber Sr.', 'mccullough.skye@hotmail.com', 'M', '7456 Hyatt Island\nBrycenhaven, NV 08477-5643', 'Tennessee', 'Sweden', '1990-02-24', '/i5uza-jNn,.F{+a)$!<', 1, 0, '2022-09-24 06:52:16', '2022-09-24 06:52:16', NULL),
(16, 'Mr. Mohammad Kuhic', 'hills.lilliana@hotmail.com', 'M', '652 Simonis Curve\nLake Reggie, NE 14188', 'South Carolina', 'Ecuador', '1992-01-07', 'R`uocCNxqMrm:', 1, 0, '2022-09-24 06:52:16', '2022-09-24 06:52:16', NULL),
(17, 'Tillman Gottlieb', 'hdavis@yahoo.com', 'M', '45289 Heloise Heights Apt. 867\nSchinnerborough, IL 05396-7849', 'Maryland', 'Luxembourg', '1985-03-04', 'u?{*)[;;[i2k+F[', 1, 0, '2022-09-24 06:52:16', '2022-09-24 06:52:16', NULL),
(18, 'Prof. Bella Runte DVM', 'paxton.smitham@rowe.net', 'M', '30934 Alvena Divide\nMarianaview, MD 71910', 'Delaware', 'Nigeria', '1980-09-10', '*T>1H|0&n63E},', 1, 0, '2022-09-24 06:52:16', '2022-09-24 06:52:16', NULL),
(19, 'Webster Lynch I', 'janet.satterfield@keeling.org', 'M', '30872 Randy Neck\nPort Jordyn, NE 46116-3691', 'Illinois', 'Ireland', '1976-07-04', 'A=2?Wx6ip', 1, 0, '2022-09-24 06:52:16', '2022-09-24 06:52:16', NULL),
(20, 'Sylvia Schulist Jr.', 'vkirlin@gmail.com', 'M', '9890 Wunsch Views\nBryontown, OR 46359-2384', 'Connecticut', 'Libyan Arab Jamahiriya', '1984-05-17', ':%(wZz|i', 1, 0, '2022-09-24 06:52:16', '2022-09-24 06:52:16', NULL),
(21, 'Grayson Reynolds', 'bogisich.adolphus@hotmail.com', 'M', '3830 Goyette Via Suite 446\nBlickchester, ID 91044-7090', 'Iowa', 'Chad', '1975-10-03', 'N6:7h$\'RzUZlmv', 1, 0, '2022-09-24 06:52:16', '2022-09-24 06:52:16', NULL),
(22, 'Ernesto Predovic', 'wiegand.linnea@legros.net', 'M', '9657 Antonetta Field\nNew Doyle, CT 68949', 'South Dakota', 'Fiji', '2004-01-31', 'Z_KpCGOW}~p<RUD9E{X', 1, 0, '2022-09-24 06:52:16', '2022-09-24 06:52:16', NULL),
(23, 'Mr. Garland Bechtelar', 'simonis.jonatan@gmail.com', 'M', '5884 Abner Mill\nEast Bradyshire, FL 71209', 'South Dakota', 'Trinidad And Tobago', '1987-01-15', ']jdNj^jd\\R', 1, 0, '2022-09-24 06:52:16', '2022-09-25 06:34:22', NULL),
(24, 'Mr. Cleve Howe', 'donny.upton@hotmail.com', 'M', '619 Estella Parks\nWest Xzavierport, PA 73247', 'Minnesota', 'Slovenia', '1974-03-30', 'zMCF~80}1oi]qt!/%', 1, 0, '2022-09-24 06:52:16', '2022-09-25 06:34:38', NULL),
(25, 'Tara Lockman', 'eadams@bode.org', 'M', '917 Christy Prairie\nHermannfort, OH 02808', 'Utah', 'Saudi Arabia', '1978-05-28', ':gUmGrB', 1, 0, '2022-09-24 06:52:16', '2022-09-25 06:34:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `gname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `gname`, `description`, `created_at`, `updated_at`) VALUES
(1, 'jodhpur', '1)type command-> php artisan config:Cache it will be created all cache of laravel \r\n2)php artisan make: migration create_tableName_table\r\n3) After this command it will be create migration file in path->databasef->migrationf->table file with this field :', NULL, NULL),
(2, 'kanpur', ' $table->id(\'members_id\');\r\n            $table->string(\'member_name\',100);\r\n            $table->string(\'email\',50);\r\n            $table->string(\'contact\',15);\r\n            $table->unsignedBigInteger(\'group_id\');\r\n            $table->foreign(\'group_id\')->references(\'group_id\')->on(\'groups\'); // making foreign key in table of group key\r\n', '2022-09-26 09:31:57', '2022-09-26 09:31:57');

-- --------------------------------------------------------

--
-- Table structure for table `medinoval_contact_us`
--

CREATE TABLE `medinoval_contact_us` (
  `cont_id` bigint(20) UNSIGNED NOT NULL,
  `cname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cemail` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(28, '2014_10_12_000000_create_users_table', 1),
(29, '2014_10_12_100000_create_password_resets_table', 1),
(30, '2019_08_19_000000_create_failed_jobs_table', 1),
(31, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(32, '2022_09_14_161623_create_customers', 1),
(33, '2022_09_14_163823_add_columns_to_customers_table', 1),
(34, '2022_09_25_070337_add_deleted_at_to_customers_table', 2),
(35, '2022_09_26_083947_create_groups_table', 3),
(36, '2022_09_26_084624_create_members_table', 4),
(37, '2022_09_26_091825_create_my_members_table', 5),
(38, '2022_09_26_092054_create_members_table', 6),
(39, '2022_09_26_092324_create_my_members_table', 7),
(40, '2022_09_29_104259_create_medinoval_contact_us_table', 8),
(41, '2022_09_29_164046_create_contacts_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `my_members`
--

CREATE TABLE `my_members` (
  `members_id` bigint(20) UNSIGNED NOT NULL,
  `member_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_members`
--

INSERT INTO `my_members` (`members_id`, `member_name`, `email`, `contact`, `group_id`, `created_at`, `updated_at`) VALUES
(1, 'vinod kumar verma', 'vinod@gmail.com', '8090587674', 1, '2022-09-19 09:24:49', '2022-09-19 09:24:49'),
(2, 'sintu verma', 'sintu@gmail.com', '8081718214', 1, '2022-09-26 09:33:13', '2022-09-26 09:33:13'),
(3, 'santosh yadav', 'santosh@gmail.com', '7894561238', 2, '2022-09-27 10:28:29', '2022-09-27 10:28:29'),
(4, 'Vikas Pal', 'vikas@gmail.com', '7008090758', 2, '2022-09-27 10:29:34', '2022-09-27 10:29:34');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`cont_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `medinoval_contact_us`
--
ALTER TABLE `medinoval_contact_us`
  ADD PRIMARY KEY (`cont_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_members`
--
ALTER TABLE `my_members`
  ADD PRIMARY KEY (`members_id`),
  ADD KEY `my_members_group_id_foreign` (`group_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `cont_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `cid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `medinoval_contact_us`
--
ALTER TABLE `medinoval_contact_us`
  MODIFY `cont_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `my_members`
--
ALTER TABLE `my_members`
  MODIFY `members_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `my_members`
--
ALTER TABLE `my_members`
  ADD CONSTRAINT `my_members_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
