-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 14, 2024 at 06:34 AM
-- Server version: 10.6.19-MariaDB-cll-lve
-- PHP Version: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aimldev1_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(191) NOT NULL,
  `ip_address` varchar(191) NOT NULL,
  `browser_agent` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `type`, `ip_address`, `browser_agent`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', '84.72.174.210', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-09-03 08:52:57', '2024-09-03 08:52:57'),
(2, 1, 'Admin', '103.213.238.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2024-09-03 19:50:08', '2024-09-03 19:50:08'),
(3, 1, 'Admin', '103.213.238.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2024-09-04 19:18:25', '2024-09-04 19:18:25'),
(4, 1, 'Admin', '103.213.238.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2024-09-06 21:04:20', '2024-09-06 21:04:20'),
(5, 1, 'Admin', '103.213.238.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2024-09-08 18:50:08', '2024-09-08 18:50:08'),
(6, 1, 'Admin', '103.213.238.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2024-09-08 19:17:59', '2024-09-08 19:17:59');

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `unique_identifier` varchar(50) NOT NULL,
  `version` varchar(191) DEFAULT NULL,
  `activated` int(11) NOT NULL DEFAULT 1,
  `image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(60) NOT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'Active' COMMENT 'Active or Inactive',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `picture` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `role_id`, `first_name`, `last_name`, `phone`, `email`, `password`, `status`, `remember_token`, `created_at`, `updated_at`, `picture`) VALUES
(1, 1, 'Super', 'Admin', NULL, 'admin@admin.com', '$2y$10$J8t5gbdZV5LTlNqWw3Wk.uZx459D4YY0FPj513sy/5bo6yGeD/AI2', 'Active', NULL, '2024-06-21 03:30:01', '2024-07-26 06:33:10', ''),
(2, 1, 'super', 'admin', '423423', 'altafhossainlimon@gmail.com', '$2y$10$J8t5gbdZV5LTlNqWw3Wk.uZx459D4YY0FPj513sy/5bo6yGeD/AI2', 'Active', NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `app_store_credentials`
--

CREATE TABLE `app_store_credentials` (
  `id` int(10) UNSIGNED NOT NULL,
  `has_app_credentials` varchar(3) NOT NULL COMMENT 'Yes or No',
  `link` varchar(191) DEFAULT NULL,
  `logo` varchar(100) NOT NULL,
  `company` varchar(6) NOT NULL COMMENT 'Google or Apple',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_store_credentials`
--

INSERT INTO `app_store_credentials` (`id`, `has_app_credentials`, `link`, `logo`, `company`, `created_at`, `updated_at`) VALUES
(1, 'Yes', 'http://store.google.com', '1531650482.png', 'Google', NULL, NULL),
(2, 'Yes', 'https://itunes.apple.com', '1531134592.png', 'Apple', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `app_tokens`
--

CREATE TABLE `app_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` int(10) UNSIGNED NOT NULL,
  `token` varchar(100) NOT NULL,
  `expires_in` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_transactions_infos`
--

CREATE TABLE `app_transactions_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `amount` decimal(20,8) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `success_url` varchar(191) NOT NULL,
  `cancel_url` varchar(191) NOT NULL,
  `grant_id` varchar(100) NOT NULL,
  `token` varchar(191) NOT NULL,
  `expires_in` varchar(100) NOT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'pending' COMMENT 'pending, success, cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `backups`
--

CREATE TABLE `backups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(31) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `bank_name` varchar(191) DEFAULT NULL,
  `bank_branch_name` varchar(191) DEFAULT NULL,
  `bank_branch_city` varchar(191) DEFAULT NULL,
  `bank_branch_address` varchar(191) DEFAULT NULL,
  `account_name` varchar(191) DEFAULT NULL,
  `account_number` varchar(191) DEFAULT NULL,
  `swift_code` varchar(191) DEFAULT NULL,
  `is_default` varchar(3) NOT NULL DEFAULT 'No' COMMENT 'No, Yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `user_id`, `admin_id`, `currency_id`, `country_id`, `file_id`, `bank_name`, `bank_branch_name`, `bank_branch_city`, `bank_branch_address`, `account_name`, `account_number`, `swift_code`, `is_default`, `created_at`, `updated_at`) VALUES
(6, NULL, 1, 16, 225, NULL, 'Revolut LTD', 'Revolut', 'London', 'Revolut Ltd  7 Westferry Circus, E14 4HD, London, United Kingdom', 'CryptoCatalyst Holdings s.r.o', 'GB16REVO00997039779488', 'REVOGB21', 'Yes', '2024-09-03 09:49:27', '2024-09-03 09:49:27'),
(7, NULL, 1, 15, 225, NULL, 'Revolut LTD', 'Revolut', 'London', 'Revolut Ltd  7 Westferry Circus, E14 4HD, London, United Kingdom', 'CryptoCatalyst Holdings s.r.o', 'GB16REVO00997039779488', 'REVOGB21', 'Yes', '2024-09-03 09:51:13', '2024-09-03 09:51:13'),
(8, NULL, 1, 17, 225, NULL, 'Revolut LTD', 'Revolut', 'London', 'Revolut Ltd  7 Westferry Circus, E14 4HD, London, United Kingdom', 'CryptoCatalyst Holdings s.r.o', 'GB16REVO00997039779488', 'REVOGB21', 'Yes', '2024-09-03 09:52:25', '2024-09-03 09:52:25'),
(9, NULL, 1, 18, 225, NULL, 'Revolut LTD', 'Revolut', 'London', '7 Westferry Circus, E14 4HD, London, United Kingdom', 'CryptoCatalyst Holdings s.r.o', 'GB16REVO00997039779488', 'REVOGB21', 'Yes', '2024-09-03 09:53:47', '2024-09-03 09:53:47'),
(10, NULL, 1, 19, 225, NULL, 'Revolut LTD', 'Revolut', 'London', '7 Westferry Circus, E14 4HD, London, United Kingdom', 'CryptoCatalyst Holdings s.r.o', 'GB16REVO00997039779488', 'REVOGB21', 'Yes', '2024-09-03 09:54:49', '2024-09-03 09:54:49'),
(11, NULL, 1, 20, 225, NULL, 'Revolut LTD', 'Revolut', 'London', '7 Westferry Circus, E14 4HD, London, United Kingdom', 'CryptoCatalyst Holdings s.r.o', 'GB16REVO00997039779488', 'REVOGB21', 'Yes', '2024-09-03 09:55:46', '2024-09-03 09:55:46'),
(12, NULL, 1, 21, 225, NULL, 'Revolut LTD', 'Revolut', 'London', '7 Westferry Circus, E14 4HD, London, United Kingdom', 'CryptoCatalyst Holdings s.r.o', 'GB16REVO00997039779488', 'REVOGB21', 'Yes', '2024-09-03 09:56:40', '2024-09-03 09:56:40');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `image` varchar(255) NOT NULL,
  `video` varchar(255) DEFAULT NULL,
  `sub_title` text DEFAULT NULL,
  `url` varchar(191) NOT NULL,
  `content` text NOT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'active' COMMENT 'active or inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coinpayment_log_trxes`
--

CREATE TABLE `coinpayment_log_trxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `payment_id` varchar(191) NOT NULL,
  `payment_address` varchar(191) NOT NULL,
  `coin` varchar(10) NOT NULL,
  `fiat` varchar(10) NOT NULL,
  `status_text` varchar(191) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `payment_created_at` datetime NOT NULL,
  `expired` datetime NOT NULL,
  `confirmation_at` datetime DEFAULT NULL,
  `amount` double(20,8) NOT NULL,
  `confirms_needed` int(11) NOT NULL,
  `qrcode_url` varchar(191) NOT NULL,
  `status_url` varchar(191) NOT NULL,
  `payload` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `short_name` varchar(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `iso3` varchar(10) DEFAULT NULL,
  `number_code` varchar(10) DEFAULT NULL,
  `phone_code` varchar(10) NOT NULL,
  `is_default` varchar(6) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `short_name`, `name`, `iso3`, `number_code`, `phone_code`, `is_default`) VALUES
(1, 'AF', 'Afghanistan', 'AFG', '4', '93', 'no'),
(2, 'AL', 'Albania', 'ALB', '8', '355', 'no'),
(3, 'DZ', 'Algeria', 'DZA', '12', '213', 'no'),
(4, 'AS', 'American Samoa', 'ASM', '16', '1684', 'no'),
(5, 'AD', 'Andorra', 'AND', '20', '376', 'no'),
(6, 'AO', 'Angola', 'AGO', '24', '244', 'no'),
(7, 'AI', 'Anguilla', 'AIA', '660', '1264', 'no'),
(8, 'AQ', 'Antarctica', NULL, NULL, '0', 'no'),
(9, 'AG', 'Antigua and Barbuda', 'ATG', '28', '1268', 'no'),
(10, 'AR', 'Argentina', 'ARG', '32', '54', 'no'),
(11, 'AM', 'Armenia', 'ARM', '51', '374', 'no'),
(12, 'AW', 'Aruba', 'ABW', '533', '297', 'no'),
(13, 'AU', 'Australia', 'AUS', '36', '61', 'no'),
(14, 'AT', 'Austria', 'AUT', '40', '43', 'no'),
(15, 'AZ', 'Azerbaijan', 'AZE', '31', '994', 'no'),
(16, 'BS', 'Bahamas', 'BHS', '44', '1242', 'no'),
(17, 'BH', 'Bahrain', 'BHR', '48', '973', 'no'),
(18, 'BD', 'Bangladesh', 'BGD', '50', '880', 'no'),
(19, 'BB', 'Barbados', 'BRB', '52', '1246', 'no'),
(20, 'BY', 'Belarus', 'BLR', '112', '375', 'no'),
(21, 'BE', 'Belgium', 'BEL', '56', '32', 'no'),
(22, 'BZ', 'Belize', 'BLZ', '84', '501', 'no'),
(23, 'BJ', 'Benin', 'BEN', '204', '229', 'no'),
(24, 'BM', 'Bermuda', 'BMU', '60', '1441', 'no'),
(25, 'BT', 'Bhutan', 'BTN', '64', '975', 'no'),
(26, 'BO', 'Bolivia', 'BOL', '68', '591', 'no'),
(27, 'BA', 'Bosnia and Herzegovina', 'BIH', '70', '387', 'no'),
(28, 'BW', 'Botswana', 'BWA', '72', '267', 'no'),
(29, 'BV', 'Bouvet Island', NULL, NULL, '0', 'no'),
(30, 'BR', 'Brazil', 'BRA', '76', '55', 'no'),
(31, 'IO', 'British Indian Ocean Territory', NULL, NULL, '246', 'no'),
(32, 'BN', 'Brunei Darussalam', 'BRN', '96', '673', 'no'),
(33, 'BG', 'Bulgaria', 'BGR', '100', '359', 'no'),
(34, 'BF', 'Burkina Faso', 'BFA', '854', '226', 'no'),
(35, 'BI', 'Burundi', 'BDI', '108', '257', 'no'),
(36, 'KH', 'Cambodia', 'KHM', '116', '855', 'no'),
(37, 'CM', 'Cameroon', 'CMR', '120', '237', 'no'),
(38, 'CA', 'Canada', 'CAN', '124', '1', 'no'),
(39, 'CV', 'Cape Verde', 'CPV', '132', '238', 'no'),
(40, 'KY', 'Cayman Islands', 'CYM', '136', '1345', 'no'),
(41, 'CF', 'Central African Republic', 'CAF', '140', '236', 'no'),
(42, 'TD', 'Chad', 'TCD', '148', '235', 'no'),
(43, 'CL', 'Chile', 'CHL', '152', '56', 'no'),
(44, 'CN', 'China', 'CHN', '156', '86', 'no'),
(45, 'CX', 'Christmas Island', NULL, NULL, '61', 'no'),
(46, 'CC', 'Cocos (Keeling) Islands', NULL, NULL, '672', 'no'),
(47, 'CO', 'Colombia', 'COL', '170', '57', 'no'),
(48, 'KM', 'Comoros', 'COM', '174', '269', 'no'),
(49, 'CG', 'Congo', 'COG', '178', '242', 'no'),
(50, 'CD', 'Congo, the Democratic Republic of the', 'COD', '180', '242', 'no'),
(51, 'CK', 'Cook Islands', 'COK', '184', '682', 'no'),
(52, 'CR', 'Costa Rica', 'CRI', '188', '506', 'no'),
(53, 'CI', 'Cote D\'Ivoire', 'CIV', '384', '225', 'no'),
(54, 'HR', 'Croatia', 'HRV', '191', '385', 'no'),
(55, 'CU', 'Cuba', 'CUB', '192', '53', 'no'),
(56, 'CY', 'Cyprus', 'CYP', '196', '357', 'no'),
(57, 'CZ', 'Czech Republic', 'CZE', '203', '420', 'no'),
(58, 'DK', 'Denmark', 'DNK', '208', '45', 'no'),
(59, 'DJ', 'Djibouti', 'DJI', '262', '253', 'no'),
(60, 'DM', 'Dominica', 'DMA', '212', '1767', 'no'),
(61, 'DO', 'Dominican Republic', 'DOM', '214', '1809', 'no'),
(62, 'EC', 'Ecuador', 'ECU', '218', '593', 'no'),
(63, 'EG', 'Egypt', 'EGY', '818', '20', 'no'),
(64, 'SV', 'El Salvador', 'SLV', '222', '503', 'no'),
(65, 'GQ', 'Equatorial Guinea', 'GNQ', '226', '240', 'no'),
(66, 'ER', 'Eritrea', 'ERI', '232', '291', 'no'),
(67, 'EE', 'Estonia', 'EST', '233', '372', 'no'),
(68, 'ET', 'Ethiopia', 'ETH', '231', '251', 'no'),
(69, 'FK', 'Falkland Islands (Malvinas)', 'FLK', '238', '500', 'no'),
(70, 'FO', 'Faroe Islands', 'FRO', '234', '298', 'no'),
(71, 'FJ', 'Fiji', 'FJI', '242', '679', 'no'),
(72, 'FI', 'Finland', 'FIN', '246', '358', 'no'),
(73, 'FR', 'France', 'FRA', '250', '33', 'no'),
(74, 'GF', 'French Guiana', 'GUF', '254', '594', 'no'),
(75, 'PF', 'French Polynesia', 'PYF', '258', '689', 'no'),
(76, 'TF', 'French Southern Territories', NULL, NULL, '0', 'no'),
(77, 'GA', 'Gabon', 'GAB', '266', '241', 'no'),
(78, 'GM', 'Gambia', 'GMB', '270', '220', 'no'),
(79, 'GE', 'Georgia', 'GEO', '268', '995', 'no'),
(80, 'DE', 'Germany', 'DEU', '276', '49', 'no'),
(81, 'GH', 'Ghana', 'GHA', '288', '233', 'no'),
(82, 'GI', 'Gibraltar', 'GIB', '292', '350', 'no'),
(83, 'GR', 'Greece', 'GRC', '300', '30', 'no'),
(84, 'GL', 'Greenland', 'GRL', '304', '299', 'no'),
(85, 'GD', 'Grenada', 'GRD', '308', '1473', 'no'),
(86, 'GP', 'Guadeloupe', 'GLP', '312', '590', 'no'),
(87, 'GU', 'Guam', 'GUM', '316', '1671', 'no'),
(88, 'GT', 'Guatemala', 'GTM', '320', '502', 'no'),
(89, 'GN', 'Guinea', 'GIN', '324', '224', 'no'),
(90, 'GW', 'Guinea-Bissau', 'GNB', '624', '245', 'no'),
(91, 'GY', 'Guyana', 'GUY', '328', '592', 'no'),
(92, 'HT', 'Haiti', 'HTI', '332', '509', 'no'),
(93, 'HM', 'Heard Island and Mcdonald Islands', NULL, NULL, '0', 'no'),
(94, 'VA', 'Holy See (Vatican City State)', 'VAT', '336', '39', 'no'),
(95, 'HN', 'Honduras', 'HND', '340', '504', 'no'),
(96, 'HK', 'Hong Kong', 'HKG', '344', '852', 'no'),
(97, 'HU', 'Hungary', 'HUN', '348', '36', 'no'),
(98, 'IS', 'Iceland', 'ISL', '352', '354', 'no'),
(99, 'IN', 'India', 'IND', '356', '91', 'no'),
(100, 'ID', 'Indonesia', 'IDN', '360', '62', 'no'),
(101, 'IR', 'Iran, Islamic Republic of', 'IRN', '364', '98', 'no'),
(102, 'IQ', 'Iraq', 'IRQ', '368', '964', 'no'),
(103, 'IE', 'Ireland', 'IRL', '372', '353', 'no'),
(104, 'IL', 'Israel', 'ISR', '376', '972', 'no'),
(105, 'IT', 'Italy', 'ITA', '380', '39', 'no'),
(106, 'JM', 'Jamaica', 'JAM', '388', '1876', 'no'),
(107, 'JP', 'Japan', 'JPN', '392', '81', 'no'),
(108, 'JO', 'Jordan', 'JOR', '400', '962', 'no'),
(109, 'KZ', 'Kazakhstan', 'KAZ', '398', '7', 'no'),
(110, 'KE', 'Kenya', 'KEN', '404', '254', 'no'),
(111, 'KI', 'Kiribati', 'KIR', '296', '686', 'no'),
(112, 'KP', 'Korea, Democratic People\'s Republic of', 'PRK', '408', '850', 'no'),
(113, 'KR', 'Korea, Republic of', 'KOR', '410', '82', 'no'),
(114, 'KW', 'Kuwait', 'KWT', '414', '965', 'no'),
(115, 'KG', 'Kyrgyzstan', 'KGZ', '417', '996', 'no'),
(116, 'LA', 'Lao People\'s Democratic Republic', 'LAO', '418', '856', 'no'),
(117, 'LV', 'Latvia', 'LVA', '428', '371', 'no'),
(118, 'LB', 'Lebanon', 'LBN', '422', '961', 'no'),
(119, 'LS', 'Lesotho', 'LSO', '426', '266', 'no'),
(120, 'LR', 'Liberia', 'LBR', '430', '231', 'no'),
(121, 'LY', 'Libyan Arab Jamahiriya', 'LBY', '434', '218', 'no'),
(122, 'LI', 'Liechtenstein', 'LIE', '438', '423', 'no'),
(123, 'LT', 'Lithuania', 'LTU', '440', '370', 'no'),
(124, 'LU', 'Luxembourg', 'LUX', '442', '352', 'no'),
(125, 'MO', 'Macao', 'MAC', '446', '853', 'no'),
(126, 'MK', 'Macedonia, the Former Yugoslav Republic of', 'MKD', '807', '389', 'no'),
(127, 'MG', 'Madagascar', 'MDG', '450', '261', 'no'),
(128, 'MW', 'Malawi', 'MWI', '454', '265', 'no'),
(129, 'MY', 'Malaysia', 'MYS', '458', '60', 'no'),
(130, 'MV', 'Maldives', 'MDV', '462', '960', 'no'),
(131, 'ML', 'Mali', 'MLI', '466', '223', 'no'),
(132, 'MT', 'Malta', 'MLT', '470', '356', 'no'),
(133, 'MH', 'Marshall Islands', 'MHL', '584', '692', 'no'),
(134, 'MQ', 'Martinique', 'MTQ', '474', '596', 'no'),
(135, 'MR', 'Mauritania', 'MRT', '478', '222', 'no'),
(136, 'MU', 'Mauritius', 'MUS', '480', '230', 'no'),
(137, 'YT', 'Mayotte', NULL, NULL, '269', 'no'),
(138, 'MX', 'Mexico', 'MEX', '484', '52', 'no'),
(139, 'FM', 'Micronesia, Federated States of', 'FSM', '583', '691', 'no'),
(140, 'MD', 'Moldova, Republic of', 'MDA', '498', '373', 'no'),
(141, 'MC', 'Monaco', 'MCO', '492', '377', 'no'),
(142, 'MN', 'Mongolia', 'MNG', '496', '976', 'no'),
(143, 'MS', 'Montserrat', 'MSR', '500', '1664', 'no'),
(144, 'MA', 'Morocco', 'MAR', '504', '212', 'no'),
(145, 'MZ', 'Mozambique', 'MOZ', '508', '258', 'no'),
(146, 'MM', 'Myanmar', 'MMR', '104', '95', 'no'),
(147, 'NA', 'Namibia', 'NAM', '516', '264', 'no'),
(148, 'NR', 'Nauru', 'NRU', '520', '674', 'no'),
(149, 'NP', 'Nepal', 'NPL', '524', '977', 'no'),
(150, 'NL', 'Netherlands', 'NLD', '528', '31', 'no'),
(151, 'AN', 'Netherlands Antilles', 'ANT', '530', '599', 'no'),
(152, 'NC', 'New Caledonia', 'NCL', '540', '687', 'no'),
(153, 'NZ', 'New Zealand', 'NZL', '554', '64', 'no'),
(154, 'NI', 'Nicaragua', 'NIC', '558', '505', 'no'),
(155, 'NE', 'Niger', 'NER', '562', '227', 'no'),
(156, 'NG', 'Nigeria', 'NGA', '566', '234', 'no'),
(157, 'NU', 'Niue', 'NIU', '570', '683', 'no'),
(158, 'NF', 'Norfolk Island', 'NFK', '574', '672', 'no'),
(159, 'MP', 'Northern Mariana Islands', 'MNP', '580', '1670', 'no'),
(160, 'NO', 'Norway', 'NOR', '578', '47', 'no'),
(161, 'OM', 'Oman', 'OMN', '512', '968', 'no'),
(162, 'PK', 'Pakistan', 'PAK', '586', '92', 'no'),
(163, 'PW', 'Palau', 'PLW', '585', '680', 'no'),
(164, 'PS', 'Palestinian Territory, Occupied', NULL, NULL, '970', 'no'),
(165, 'PA', 'Panama', 'PAN', '591', '507', 'no'),
(166, 'PG', 'Papua New Guinea', 'PNG', '598', '675', 'no'),
(167, 'PY', 'Paraguay', 'PRY', '600', '595', 'no'),
(168, 'PE', 'Peru', 'PER', '604', '51', 'no'),
(169, 'PH', 'Philippines', 'PHL', '608', '63', 'no'),
(170, 'PN', 'Pitcairn', 'PCN', '612', '0', 'no'),
(171, 'PL', 'Poland', 'POL', '616', '48', 'no'),
(172, 'PT', 'Portugal', 'PRT', '620', '351', 'no'),
(173, 'PR', 'Puerto Rico', 'PRI', '630', '1787', 'no'),
(174, 'QA', 'Qatar', 'QAT', '634', '974', 'no'),
(175, 'RE', 'Reunion', 'REU', '638', '262', 'no'),
(176, 'RO', 'Romania', 'ROM', '642', '40', 'no'),
(177, 'RU', 'Russian Federation', 'RUS', '643', '70', 'no'),
(178, 'RW', 'Rwanda', 'RWA', '646', '250', 'no'),
(179, 'SH', 'Saint Helena', 'SHN', '654', '290', 'no'),
(180, 'KN', 'Saint Kitts and Nevis', 'KNA', '659', '1869', 'no'),
(181, 'LC', 'Saint Lucia', 'LCA', '662', '1758', 'no'),
(182, 'PM', 'Saint Pierre and Miquelon', 'SPM', '666', '508', 'no'),
(183, 'VC', 'Saint Vincent and the Grenadines', 'VCT', '670', '1784', 'no'),
(184, 'WS', 'Samoa', 'WSM', '882', '684', 'no'),
(185, 'SM', 'San Marino', 'SMR', '674', '378', 'no'),
(186, 'ST', 'Sao Tome and Principe', 'STP', '678', '239', 'no'),
(187, 'SA', 'Saudi Arabia', 'SAU', '682', '966', 'no'),
(188, 'SN', 'Senegal', 'SEN', '686', '221', 'no'),
(189, 'CS', 'Serbia and Montenegro', NULL, NULL, '381', 'no'),
(190, 'SC', 'Seychelles', 'SYC', '690', '248', 'no'),
(191, 'SL', 'Sierra Leone', 'SLE', '694', '232', 'no'),
(192, 'SG', 'Singapore', 'SGP', '702', '65', 'no'),
(193, 'SK', 'Slovakia', 'SVK', '703', '421', 'no'),
(194, 'SI', 'Slovenia', 'SVN', '705', '386', 'no'),
(195, 'SB', 'Solomon Islands', 'SLB', '90', '677', 'no'),
(196, 'SO', 'Somalia', 'SOM', '706', '252', 'no'),
(197, 'ZA', 'South Africa', 'ZAF', '710', '27', 'no'),
(198, 'GS', 'South Georgia and the South Sandwich Islands', NULL, NULL, '0', 'no'),
(199, 'ES', 'Spain', 'ESP', '724', '34', 'no'),
(200, 'LK', 'Sri Lanka', 'LKA', '144', '94', 'no'),
(201, 'SD', 'Sudan', 'SDN', '736', '249', 'no'),
(202, 'SR', 'Suriname', 'SUR', '740', '597', 'no'),
(203, 'SJ', 'Svalbard and Jan Mayen', 'SJM', '744', '47', 'no'),
(204, 'SZ', 'Swaziland', 'SWZ', '748', '268', 'no'),
(205, 'SE', 'Sweden', 'SWE', '752', '46', 'no'),
(206, 'CH', 'Switzerland', 'CHE', '756', '41', 'no'),
(207, 'SY', 'Syrian Arab Republic', 'SYR', '760', '963', 'no'),
(208, 'TW', 'Taiwan, Province of China', 'TWN', '158', '886', 'no'),
(209, 'TJ', 'Tajikistan', 'TJK', '762', '992', 'no'),
(210, 'TZ', 'Tanzania, United Republic of', 'TZA', '834', '255', 'no'),
(211, 'TH', 'Thailand', 'THA', '764', '66', 'no'),
(212, 'TL', 'Timor-Leste', NULL, NULL, '670', 'no'),
(213, 'TG', 'Togo', 'TGO', '768', '228', 'no'),
(214, 'TK', 'Tokelau', 'TKL', '772', '690', 'no'),
(215, 'TO', 'Tonga', 'TON', '776', '676', 'no'),
(216, 'TT', 'Trinidad and Tobago', 'TTO', '780', '1868', 'no'),
(217, 'TN', 'Tunisia', 'TUN', '788', '216', 'no'),
(218, 'TR', 'Turkey', 'TUR', '792', '90', 'no'),
(219, 'TM', 'Turkmenistan', 'TKM', '795', '7370', 'no'),
(220, 'TC', 'Turks and Caicos Islands', 'TCA', '796', '1649', 'no'),
(221, 'TV', 'Tuvalu', 'TUV', '798', '688', 'no'),
(222, 'UG', 'Uganda', 'UGA', '800', '256', 'no'),
(223, 'UA', 'Ukraine', 'UKR', '804', '380', 'no'),
(224, 'AE', 'United Arab Emirates', 'ARE', '784', '971', 'no'),
(225, 'GB', 'United Kingdom', 'GBR', '826', '44', 'no'),
(226, 'US', 'United States', 'USA', '840', '1', 'yes'),
(227, 'UM', 'United States Minor Outlying Islands', NULL, NULL, '1', 'no'),
(228, 'UY', 'Uruguay', 'URY', '858', '598', 'no'),
(229, 'UZ', 'Uzbekistan', 'UZB', '860', '998', 'no'),
(230, 'VU', 'Vanuatu', 'VUT', '548', '678', 'no'),
(231, 'VE', 'Venezuela', 'VEN', '862', '58', 'no'),
(232, 'VN', 'Viet Nam', 'VNM', '704', '84', 'no'),
(233, 'VG', 'Virgin Islands, British', 'VGB', '92', '1284', 'no'),
(234, 'VI', 'Virgin Islands, U.s.', 'VIR', '850', '1340', 'no'),
(235, 'WF', 'Wallis and Futuna', 'WLF', '876', '681', 'no'),
(236, 'EH', 'Western Sahara', 'ESH', '732', '212', 'no'),
(237, 'YE', 'Yemen', 'YEM', '887', '967', 'no'),
(238, 'ZM', 'Zambia', 'ZMB', '894', '260', 'no'),
(239, 'ZW', 'Zimbabwe', 'ZWE', '716', '263', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `crypto_asset_api_logs`
--

CREATE TABLE `crypto_asset_api_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_method_id` int(10) UNSIGNED NOT NULL,
  `object_id` int(11) NOT NULL COMMENT 'wallet_id or cryto_sent_id or crypto_received_id',
  `object_type` varchar(20) NOT NULL,
  `network` varchar(10) NOT NULL COMMENT 'Networks/Cryto Curencies - BTC,LTC,DOGE',
  `payload` text NOT NULL COMMENT 'Crypto Api''s Payloads (e.g - get_new_address(), get_balance(), withdraw(),etc.',
  `confirmations` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crypto_asset_settings`
--

CREATE TABLE `crypto_asset_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `currency_id` int(10) UNSIGNED NOT NULL,
  `crypto_provider_id` int(10) UNSIGNED NOT NULL,
  `payment_method_id` int(10) UNSIGNED NOT NULL,
  `network` varchar(30) NOT NULL COMMENT 'Networks/Cryto Curencies - BTC,LTC,DT etc.',
  `network_credentials` text NOT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'Active' COMMENT 'Active/Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crypto_asset_settings`
--

INSERT INTO `crypto_asset_settings` (`id`, `currency_id`, `crypto_provider_id`, `payment_method_id`, `network`, `network_credentials`, `status`, `created_at`, `updated_at`) VALUES
(1, 13, 1, 10, 'BTC', '{\"api_key\":\"t-66a9781640c866001c0fad95-89eb780ba2f14d749058bdb3\",\"coin\":\"Bitcoin\",\"mnemonic\":\"rather design shine rare federal kite bread whisper thought lend cave twice retreat treat wealth demise wasp board delay animal burden license distance dust\",\"xpub\":\"xpub6Eq1ibPAiFRJCMNUf7k1EbC5xmkoWuKbGjRp4HmeyK1NGP44Qcwfqc3eoZGyANsuMK8gMZLxsc55wUk91NNAfyQHpfdcLF1237WJiAQ4wrn\",\"key\":\"Kzv5Ch1B2WSsaT3j1TBVnH4BZZ6XaCzJur96qF8Rc9E3TbWqtoLa\",\"address\":\"bc1qpwtjep8xl5jwcdveqzz6xpet82qhn2rp9w8h6t\",\"balance\":0}', 'Active', '2024-09-03 08:58:02', '2024-09-03 09:03:41'),
(2, 14, 1, 10, 'ETH', '{\"api_key\":\"t-66a9781640c866001c0fad95-89eb780ba2f14d749058bdb3\",\"coin\":\"Ethereum\",\"mnemonic\":\"slide typical margin kind that lake whisper sense asthma orchard purse stuff arrest board credit door ask medal bomb maple sustain shed essay area\",\"xpub\":\"xpub6Dt1wtJuNfs3TresiZNR3dsk5fanNWCrrmqDhUVJQmffyoSbSTTV5BNtJdWAtuYBhjipZCRMxFeSdQsafLxJKeamtwbrNiVq15cUyk9ngiz\",\"key\":\"0x2c0fbda6d1d264c5e2f53feaefc534301c31459071bf67c6ca417d072d36a16c\",\"address\":\"0x07f5e7170362de247bb29f56e1a1a9580f905129\",\"balance\":\"0\"}', 'Active', '2024-09-03 09:01:51', '2024-09-03 09:03:59');

-- --------------------------------------------------------

--
-- Table structure for table `crypto_exchanges`
--

CREATE TABLE `crypto_exchanges` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `from_currency` int(10) UNSIGNED NOT NULL,
  `to_currency` int(10) UNSIGNED NOT NULL,
  `uuid` varchar(13) NOT NULL,
  `exchange_rate` decimal(20,8) NOT NULL DEFAULT 0.00000000,
  `amount` decimal(20,8) NOT NULL DEFAULT 0.00000000,
  `get_amount` decimal(20,8) DEFAULT NULL,
  `fee` decimal(20,8) NOT NULL DEFAULT 0.00000000,
  `receiver_address` varchar(100) DEFAULT NULL,
  `receiving_details` varchar(191) DEFAULT NULL,
  `verification_via` varchar(20) DEFAULT NULL,
  `email_phone` varchar(50) DEFAULT NULL,
  `file_name` varchar(191) DEFAULT NULL,
  `payment_details` varchar(191) DEFAULT NULL,
  `send_via` varchar(20) DEFAULT NULL,
  `receive_via` varchar(20) DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crypto_providers`
--

CREATE TABLE `crypto_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `alias` varchar(30) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `logo` varchar(91) DEFAULT NULL,
  `subscription_details` text DEFAULT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crypto_providers`
--

INSERT INTO `crypto_providers` (`id`, `name`, `alias`, `description`, `logo`, `subscription_details`, `status`, `created_at`, `updated_at`) VALUES
(1, 'TatumIo', 'TatumIo', 'The world\'s easiest Bitcoin Wallet as a Service.', NULL, '{\"current_plan\":\"Free\"}', 'Active', '2024-06-21 03:29:34', '2024-06-22 09:07:36');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'fiat' COMMENT 'fiat or crypto',
  `name` varchar(50) NOT NULL,
  `symbol` char(10) NOT NULL,
  `code` varchar(21) NOT NULL,
  `rate` decimal(20,8) NOT NULL DEFAULT 0.00000000,
  `logo` varchar(100) DEFAULT NULL,
  `default` varchar(3) NOT NULL DEFAULT '0',
  `exchange_from` varchar(6) NOT NULL DEFAULT 'local',
  `allowed_wallet_creation` varchar(4) NOT NULL DEFAULT 'No',
  `address` varchar(191) DEFAULT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `type`, `name`, `symbol`, `code`, `rate`, `logo`, `default`, `exchange_from`, `allowed_wallet_creation`, `address`, `status`, `created_at`, `updated_at`) VALUES
(13, 'crypto_asset', 'Bitcoin', '₿', 'BTC', 0.00000000, '1725375480.png', '0', 'local', 'No', NULL, 'Active', NULL, NULL),
(14, 'crypto_asset', 'Ethereum', 'ETH', 'ETH', 0.00000000, '1725375710.png', '0', 'local', 'No', NULL, 'Active', NULL, NULL),
(15, 'fiat', 'Swiss Francs', '₣', 'CHF', 1.30000000, '1725377354.gif', '0', 'api', 'No', '', 'Active', NULL, NULL),
(16, 'fiat', 'EURO', '€', 'EUR', 1.10000000, '1725377423.png', '0', 'api', 'No', '', 'Active', NULL, NULL),
(17, 'fiat', 'Swedish Krona', 'kr', 'SEK', 11.40000000, '1725377534.jpg', '0', 'api', 'No', '', 'Active', NULL, NULL),
(18, 'fiat', 'Great British Pound', '£', 'GBP', 1.50000000, '1725377629.png', '0', 'api', 'No', '', 'Active', NULL, NULL),
(19, 'fiat', 'Norwegian Krone', 'kr', 'NOK', 11.50000000, '1725377741.png', '0', 'api', 'No', '', 'Active', NULL, NULL),
(20, 'fiat', 'United States Dollar', '$', 'USD', 1.00000000, '1725377805.png', '0', 'api', 'No', '', 'Active', NULL, NULL),
(21, 'fiat', 'Danish Krone', 'kr', 'DKK', 11.50000000, NULL, '0', 'api', 'No', '', 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currency_exchanges`
--

CREATE TABLE `currency_exchanges` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `from_wallet` int(10) UNSIGNED DEFAULT NULL,
  `to_wallet` int(10) UNSIGNED DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `uuid` varchar(13) DEFAULT NULL COMMENT 'Unique ID (For Each Exchange)',
  `exchange_rate` decimal(20,8) DEFAULT 0.00000000,
  `amount` decimal(20,8) DEFAULT 0.00000000,
  `fee` decimal(20,8) DEFAULT 0.00000000,
  `type` varchar(6) NOT NULL COMMENT 'In, Out',
  `status` varchar(11) NOT NULL COMMENT 'Pending, Success, Refund, Blocked',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currency_payment_methods`
--

CREATE TABLE `currency_payment_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `currency_id` int(10) UNSIGNED NOT NULL,
  `method_id` int(10) UNSIGNED NOT NULL,
  `activated_for` text DEFAULT NULL COMMENT 'transaction types like deposit, withdrawal, investment etc.',
  `method_data` varchar(255) NOT NULL COMMENT 'input field''s title and value like client_id, client_secret etc',
  `processing_time` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'time in days',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency_payment_methods`
--

INSERT INTO `currency_payment_methods` (`id`, `currency_id`, `method_id`, `activated_for`, `method_data`, `processing_time`, `created_at`, `updated_at`) VALUES
(1, 16, 2, '{\"deposit\":\"\",\"crypto_buy\":\"\"}', '{\"secret_key\":\"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\",\"publishable_key\":\"pk_live_51IxcAwEklcuTFak8EHZDlwWGYmInRsgBmWX8WGvsIqEixTjX6iH17myzBKpz6DIfDetv5yLD9BkNGKvhtUfzQZc500cwFwe9sS\"}', 1, '2024-09-03 09:45:40', '2024-09-03 09:46:29'),
(2, 16, 5, '{\"deposit\":\"\",\"crypto_buy\":\"\"}', '{\"bank_id\":6}', 0, '2024-09-03 09:49:27', '2024-09-03 09:49:27'),
(3, 15, 2, '{\"crypto_buy\":\"\"}', '{\"secret_key\":\"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\",\"publishable_key\":\"pk_live_51IxcAwEklcuTFak8EHZDlwWGYmInRsgBmWX8WGvsIqEixTjX6iH17myzBKpz6DIfDetv5yLD9BkNGKvhtUfzQZc500cwFwe9sS\"}', 1, '2024-09-03 09:50:15', '2024-09-03 09:50:15'),
(4, 15, 5, '{\"deposit\":\"\",\"crypto_buy\":\"\"}', '{\"bank_id\":7}', 0, '2024-09-03 09:51:13', '2024-09-03 09:51:13'),
(5, 17, 2, '{\"crypto_buy\":\"\"}', '{\"secret_key\":\"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\",\"publishable_key\":\"pk_live_51IxcAwEklcuTFak8EHZDlwWGYmInRsgBmWX8WGvsIqEixTjX6iH17myzBKpz6DIfDetv5yLD9BkNGKvhtUfzQZc500cwFwe9sS\"}', 1, '2024-09-03 09:51:45', '2024-09-03 09:51:45'),
(6, 17, 5, '{\"deposit\":\"\",\"crypto_buy\":\"\"}', '{\"bank_id\":8}', 0, '2024-09-03 09:52:25', '2024-09-03 09:52:25'),
(7, 18, 2, '{\"crypto_buy\":\"\"}', '{\"secret_key\":\"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\",\"publishable_key\":\"pk_live_51IxcAwEklcuTFak8EHZDlwWGYmInRsgBmWX8WGvsIqEixTjX6iH17myzBKpz6DIfDetv5yLD9BkNGKvhtUfzQZc500cwFwe9sS\"}', 1, '2024-09-03 09:52:59', '2024-09-03 09:52:59'),
(8, 18, 5, '{\"deposit\":\"\",\"crypto_buy\":\"\"}', '{\"bank_id\":9}', 0, '2024-09-03 09:53:47', '2024-09-03 09:53:47'),
(9, 19, 2, '{\"crypto_buy\":\"\"}', '{\"secret_key\":\"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\",\"publishable_key\":\"pk_live_51IxcAwEklcuTFak8EHZDlwWGYmInRsgBmWX8WGvsIqEixTjX6iH17myzBKpz6DIfDetv5yLD9BkNGKvhtUfzQZc500cwFwe9sS\"}', 1, '2024-09-03 09:54:17', '2024-09-03 09:54:17'),
(10, 19, 5, '{\"deposit\":\"\",\"crypto_buy\":\"\"}', '{\"bank_id\":10}', 0, '2024-09-03 09:54:49', '2024-09-03 09:54:49'),
(11, 20, 2, '{\"crypto_buy\":\"\"}', '{\"secret_key\":\"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\",\"publishable_key\":\"pk_live_51IxcAwEklcuTFak8EHZDlwWGYmInRsgBmWX8WGvsIqEixTjX6iH17myzBKpz6DIfDetv5yLD9BkNGKvhtUfzQZc500cwFwe9sS\"}', 1, '2024-09-03 09:55:18', '2024-09-03 09:55:18'),
(12, 20, 5, '{\"crypto_buy\":\"\"}', '{\"bank_id\":11}', 0, '2024-09-03 09:55:46', '2024-09-03 20:09:19'),
(13, 21, 2, '{\"crypto_buy\":\"\"}', '{\"secret_key\":\"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\",\"publishable_key\":\"pk_live_51IxcAwEklcuTFak8EHZDlwWGYmInRsgBmWX8WGvsIqEixTjX6iH17myzBKpz6DIfDetv5yLD9BkNGKvhtUfzQZc500cwFwe9sS\"}', 1, '2024-09-03 09:56:15', '2024-09-03 09:56:15'),
(14, 21, 5, '{\"deposit\":\"\",\"crypto_buy\":\"\"}', '{\"bank_id\":12}', 0, '2024-09-03 09:56:40', '2024-09-03 09:56:40');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_method_id` int(10) UNSIGNED DEFAULT NULL,
  `bank_id` int(10) UNSIGNED DEFAULT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `uuid` varchar(13) DEFAULT NULL COMMENT 'Unique ID (For Each Deposit)',
  `charge_percentage` decimal(20,8) DEFAULT 0.00000000,
  `charge_fixed` decimal(20,8) DEFAULT 0.00000000,
  `amount` decimal(20,8) DEFAULT 0.00000000,
  `status` varchar(11) NOT NULL COMMENT 'Pending, Success, Refund, Blocked',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `device_logs`
--

CREATE TABLE `device_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `browser_fingerprint` varchar(40) DEFAULT NULL,
  `browser_agent` varchar(191) NOT NULL,
  `ip` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `disputes`
--

CREATE TABLE `disputes` (
  `id` int(10) UNSIGNED NOT NULL,
  `claimant_id` int(10) UNSIGNED DEFAULT NULL,
  `defendant_id` int(10) UNSIGNED DEFAULT NULL,
  `transaction_id` int(10) UNSIGNED DEFAULT NULL,
  `reason_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `status` varchar(7) NOT NULL DEFAULT 'Open' COMMENT 'Open, Closed, Solved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dispute_discussions`
--

CREATE TABLE `dispute_discussions` (
  `id` int(10) UNSIGNED NOT NULL,
  `dispute_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(6) NOT NULL COMMENT 'Admin, User',
  `message` longtext DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `document_verifications`
--

CREATE TABLE `document_verifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `verification_type` varchar(11) DEFAULT NULL COMMENT 'address, identity',
  `identity_type` varchar(17) DEFAULT NULL COMMENT 'driving_license, passport, national_id',
  `identity_number` varchar(191) DEFAULT NULL,
  `address_line_1` varchar(191) DEFAULT NULL,
  `address_line_2` varchar(191) DEFAULT NULL,
  `zip_code` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'pending' COMMENT 'pending, approved, rejected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_configs`
--

CREATE TABLE `email_configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `email_protocol` varchar(191) NOT NULL,
  `email_encryption` varchar(191) NOT NULL,
  `smtp_host` varchar(191) NOT NULL,
  `smtp_port` varchar(191) NOT NULL,
  `smtp_email` varchar(191) NOT NULL,
  `smtp_username` varchar(191) NOT NULL,
  `smtp_password` varchar(191) NOT NULL,
  `from_address` varchar(191) NOT NULL,
  `from_name` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_configs`
--

INSERT INTO `email_configs` (`id`, `email_protocol`, `email_encryption`, `smtp_host`, `smtp_port`, `smtp_email`, `smtp_username`, `smtp_password`, `from_address`, `from_name`, `status`) VALUES
(1, 'smtp', 'tls', 'mail.aimldevelopers.com', '587', 'info@aimldevelopers.com', 'info@aimldevelopers.com', '_V&j;HXnI?P!', 'info@aimldevelopers.com', 'Eclipto', 1);

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `alias` varchar(191) NOT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `lang` varchar(2) NOT NULL,
  `type` varchar(5) NOT NULL COMMENT 'email or sms',
  `status` varchar(10) NOT NULL DEFAULT 'Active' COMMENT 'Active/Inactive',
  `group` varchar(40) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `language_id`, `name`, `alias`, `subject`, `body`, `lang`, `type`, `status`, `group`, `created_at`, `updated_at`) VALUES
(1, 1, 'Notify Admin on Deposit', 'notify-admin-on-deposit', 'Money Deposit Notification', 'Hi <b>{admin}</b>,\r\n                    <br><br>Amount <b>{amount}</b> has been deposited by <b>{user}</br>\r\n                    <br><br><b><u><i>Here’s a brief overview of the Deposit:</i></u></b>\r\n                    <br><br><b><u>Deposited at:</u></b> {created_at}\r\n                    <br><br><b><u>Deposited via:</u></b> {payment_method}\r\n                    <br><br><b><u>Transaction ID:</u></b> {uuid}\r\n                    <br><br><b><u>Currency:</u></b> {code}\r\n                    <br><br><b><u>Amount:</u></b> {amount}\r\n                    <br><br><b><u>Fee:</u></b> {fee}\r\n                    <br><br>If you have any questions, please feel free to reply to this email.\r\n                    <br><br>Regards,\r\n                    <br><b>{soft_name}</b>', 'en', 'email', 'Active', 'Deposit', '2024-06-21 09:29:26', NULL),
(2, 2, 'Notify Admin on Deposit', 'notify-admin-on-deposit', '', '', 'ar', 'email', 'Active', 'Deposit', '2024-06-21 09:29:26', NULL),
(3, 3, 'Notify Admin on Deposit', 'notify-admin-on-deposit', '', '', 'fr', 'email', 'Active', 'Deposit', '2024-06-21 09:29:26', NULL),
(4, 4, 'Notify Admin on Deposit', 'notify-admin-on-deposit', '', '', 'pt', 'email', 'Active', 'Deposit', '2024-06-21 09:29:26', NULL),
(5, 5, 'Notify Admin on Deposit', 'notify-admin-on-deposit', '', '', 'ru', 'email', 'Active', 'Deposit', '2024-06-21 09:29:26', NULL),
(6, 6, 'Notify Admin on Deposit', 'notify-admin-on-deposit', '', '', 'es', 'email', 'Active', 'Deposit', '2024-06-21 09:29:26', NULL),
(7, 7, 'Notify Admin on Deposit', 'notify-admin-on-deposit', '', '', 'tr', 'email', 'Active', 'Deposit', '2024-06-21 09:29:26', NULL),
(8, 8, 'Notify Admin on Deposit', 'notify-admin-on-deposit', '', '', 'ch', 'email', 'Active', 'Deposit', '2024-06-21 09:29:26', NULL),
(9, 1, 'Notify User on Deposit via Admin', 'notify-user-on-deposit-via-admin', 'Deposit via System Administrator', 'Hi <b>{user}</b>,\r\n                    <br><br>Amount <b>{amount}</b> has been deposited to your account by System Administrator.\r\n                    <br><br><b><u><i>Here’s a brief overview of the Deposit:</i></u></b>\r\n                    <br><br><b><u>Deposited at:</u></b> {created_at}\r\n                    <br><br><b><u>Transaction ID:</u></b> {uuid}\r\n                    <br><br><b><u>Currency:</u></b> {code}\r\n                    <br><br><b><u>Amount:</u></b> {amount}\r\n                    <br><br><b><u>Fee:</u></b> {fee}\r\n                    <br><br>If you have any questions, please feel free to reply to this email.\r\n                    <br><br>Regards,\r\n                    <br><b>{soft_name}</b>', 'en', 'email', 'Active', 'Deposit', '2024-06-21 09:29:26', NULL),
(10, 2, 'Notify User on Deposit via Admin', 'notify-user-on-deposit-via-admin', '', '', 'ar', 'email', 'Active', 'Deposit', '2024-06-21 09:29:26', NULL),
(11, 3, 'Notify User on Deposit via Admin', 'notify-user-on-deposit-via-admin', '', '', 'fr', 'email', 'Active', 'Deposit', '2024-06-21 09:29:26', NULL),
(12, 4, 'Notify User on Deposit via Admin', 'notify-user-on-deposit-via-admin', '', '', 'pt', 'email', 'Active', 'Deposit', '2024-06-21 09:29:26', NULL),
(13, 5, 'Notify User on Deposit via Admin', 'notify-user-on-deposit-via-admin', '', '', 'ru', 'email', 'Active', 'Deposit', '2024-06-21 09:29:26', NULL),
(14, 6, 'Notify User on Deposit via Admin', 'notify-user-on-deposit-via-admin', '', '', 'es', 'email', 'Active', 'Deposit', '2024-06-21 09:29:26', NULL),
(15, 7, 'Notify User on Deposit via Admin', 'notify-user-on-deposit-via-admin', '', '', 'tr', 'email', 'Active', 'Deposit', '2024-06-21 09:29:26', NULL),
(16, 8, 'Notify User on Deposit via Admin', 'notify-user-on-deposit-via-admin', '', '', 'ch', 'email', 'Active', 'Deposit', '2024-06-21 09:29:26', NULL),
(17, 1, 'Notify Money Receiver', 'notify-money-receiver', 'Money Received Notification', 'Hi <b>{receiver_id}</b>,\r\n                    <br><br>You have received {amount} on your account.\r\n                    <br><br>\r\n                    <b><u><i>Here’s a brief overview of your Received:</i></u></b>\r\n                    <br><br><b><u>Transferred at:</u></b> {created_at}\r\n                    <br><br><b><u>Transaction ID:</u></b> {uuid}\r\n                    <br><br><b><u>Sent By:</u></b> {sender_id}\r\n                    <br><br><b><u>Amount:</u></b> {amount}\r\n                    <br><br><b><u>Note:</u></b> {note}\r\n                    <br><br>If you have any questions, please feel free to reply to this email.\r\n                    <br><br>Regards,\r\n                    <br><b>{soft_name}</b>', 'en', 'email', 'Active', 'Send Money', '2024-06-21 09:29:26', NULL),
(18, 2, 'Notify Money Receiver', 'notify-money-receiver', '', '', 'ar', 'email', 'Active', 'Send Money', '2024-06-21 09:29:26', NULL),
(19, 3, 'Notify Money Receiver', 'notify-money-receiver', '', '', 'fr', 'email', 'Active', 'Send Money', '2024-06-21 09:29:26', NULL),
(20, 4, 'Notify Money Receiver', 'notify-money-receiver', '', '', 'pt', 'email', 'Active', 'Send Money', '2024-06-21 09:29:26', NULL),
(21, 5, 'Notify Money Receiver', 'notify-money-receiver', '', '', 'ru', 'email', 'Active', 'Send Money', '2024-06-21 09:29:26', NULL),
(22, 6, 'Notify Money Receiver', 'notify-money-receiver', '', '', 'es', 'email', 'Active', 'Send Money', '2024-06-21 09:29:26', NULL),
(23, 7, 'Notify Money Receiver', 'notify-money-receiver', '', '', 'tr', 'email', 'Active', 'Send Money', '2024-06-21 09:29:26', NULL),
(24, 8, 'Notify Money Receiver', 'notify-money-receiver', '', '', 'ch', 'email', 'Active', 'Send Money', '2024-06-21 09:29:26', NULL),
(25, 1, 'Notify Admin on Transfer', 'notify-admin-on-transfer', 'Money Transfer Notification', 'Hi <b>{admin}</b>,\r\n                    <br><br><b>{sender}</b> has been transferred <b>{amount}</b> to <b>{receiver}</b>.\r\n                    <br><br><b><u><i>Here’s a brief overview of the Transfer:</i></u></b>\r\n                    <br><br><b><u>Transferred at:</u></b> {created_at}\r\n                    <br><br><b><u>Transaction ID:</u></b> {uuid}\r\n                    <br><br><b><u>Sent By:</u></b> {sender}\r\n                    <br><br><b><u>Received By:</u></b> {receiver}\r\n                    <br><br><b><u>Amount:</u></b> {amount}\r\n                    <br><br><b><u>Fee (deducted from {sender}):</u></b> {fee}\r\n                    <br><br><b><u>Note:</u></b> {note}\r\n                    <br><br>If you have any questions, please feel free to reply to this email.\r\n                    <br><br>Regards,\r\n                    <br><b>{soft_name}</b>', 'en', 'email', 'Active', 'Send Money', '2024-06-21 09:29:26', NULL),
(26, 2, 'Notify Admin on Transfer', 'notify-admin-on-transfer', '', '', 'ar', 'email', 'Active', 'Send Money', '2024-06-21 09:29:26', NULL),
(27, 3, 'Notify Admin on Transfer', 'notify-admin-on-transfer', '', '', 'fr', 'email', 'Active', 'Send Money', '2024-06-21 09:29:26', NULL),
(28, 4, 'Notify Admin on Transfer', 'notify-admin-on-transfer', '', '', 'pt', 'email', 'Active', 'Send Money', '2024-06-21 09:29:26', NULL),
(29, 5, 'Notify Admin on Transfer', 'notify-admin-on-transfer', '', '', 'ru', 'email', 'Active', 'Send Money', '2024-06-21 09:29:26', NULL),
(30, 6, 'Notify Admin on Transfer', 'notify-admin-on-transfer', '', '', 'es', 'email', 'Active', 'Send Money', '2024-06-21 09:29:26', NULL),
(31, 7, 'Notify Admin on Transfer', 'notify-admin-on-transfer', '', '', 'tr', 'email', 'Active', 'Send Money', '2024-06-21 09:29:26', NULL),
(32, 8, 'Notify Admin on Transfer', 'notify-admin-on-transfer', '', '', 'ch', 'email', 'Active', 'Send Money', '2024-06-21 09:29:26', NULL),
(33, 1, 'Notify Request Receiver', 'notify-request-receiver', 'Request Money Notification', 'Hi {request_receiver},\r\n                    <br><br>{request_sender} has been requested {amount} from you.\r\n                    <br><br><b><u><i>Here’s a brief overview of the Request:</i></u></b>\r\n                    <br><br>\r\n                    <b><u>Request:</u></b> #{uuid}\r\n                    <br><br>\r\n                    <b><u>Requested At:</u></b> {created_at}\r\n                    <br><br>\r\n                    <b><u>Requested Amount:</u></b> {amount}\r\n                    <br><br>\r\n                    <b><u>Note: </u></b> {note}\r\n                    <br><br>If you have any questions, please feel free to reply to this email.\r\n                    <br><br>Regards,\r\n                    <br><b>{soft_name}</b>', 'en', 'email', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(34, 2, 'Notify Request Receiver', 'notify-request-receiver', '', '', 'ar', 'email', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(35, 3, 'Notify Request Receiver', 'notify-request-receiver', '', '', 'fr', 'email', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(36, 4, 'Notify Request Receiver', 'notify-request-receiver', '', '', 'pt', 'email', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(37, 5, 'Notify Request Receiver', 'notify-request-receiver', '', '', 'ru', 'email', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(38, 6, 'Notify Request Receiver', 'notify-request-receiver', '', '', 'es', 'email', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(39, 7, 'Notify Request Receiver', 'notify-request-receiver', '', '', 'tr', 'email', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(40, 8, 'Notify Request Receiver', 'notify-request-receiver', '', '', 'ch', 'email', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(41, 1, 'Notify Request Sender on Money Received', 'notify-request-sender-on-money-received', 'Requested Money Received Notification', 'Hi {request_sender},\r\n                    <br><br>Your request of #{uuid} has been received by {request_receiver}.\r\n                    <br><br><b><u><i>Here’s a brief overview of the Request:</i></u></b>\r\n                    <br><br>\r\n                    <b><u>Received Date:</u></b> {created_at}.\r\n                    <br><br>\r\n                    <b><u>Requested Amount:</u></b> {amount}\r\n                    <br><br>\r\n                    <b><u>Received Amount:</u></b> {accept_amount}\r\n                    <br><br>\r\n                    <b><u>Currency:</u></b> {currency}\r\n                    <br><br>If you have any questions, please feel free to reply to this email.\r\n                    <br><br>Regards,\r\n                    <br><b>{soft_name}</b>', 'en', 'email', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(42, 2, 'Notify Request Sender on Money Received', 'notify-request-sender-on-money-received', '', '', 'ar', 'email', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(43, 3, 'Notify Request Sender on Money Received', 'notify-request-sender-on-money-received', '', '', 'fr', 'email', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(44, 4, 'Notify Request Sender on Money Received', 'notify-request-sender-on-money-received', '', '', 'pt', 'email', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(45, 5, 'Notify Request Sender on Money Received', 'notify-request-sender-on-money-received', '', '', 'ru', 'email', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(46, 6, 'Notify Request Sender on Money Received', 'notify-request-sender-on-money-received', '', '', 'es', 'email', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(47, 7, 'Notify Request Sender on Money Received', 'notify-request-sender-on-money-received', '', '', 'tr', 'email', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(48, 8, 'Notify Request Sender on Money Received', 'notify-request-sender-on-money-received', '', '', 'ch', 'email', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(49, 1, 'Notify Admin on Money Received', 'notify-admin-on-money-received', 'Request Money Received Notification', 'Hi {admin},\r\n                    <br><br>Money request of #{uuid} from {request_sender} has been received by {request_receiver}.\r\n                    <br><br><b><u><i>Here’s a brief overview of the Request Acceptance:</i></u></b>\r\n                    <br><br><b><u>Received at:</u></b> {created_at}\r\n                    <br><br><b><u>Transaction ID:</u></b> {uuid}\r\n                    <br><br><b><u>Currency:</u></b> {code}\r\n                    <br><br><b><u>Requested By:</u></b> {request_sender}\r\n                    <br><br><b><u>Received By:</u></b> {request_receiver}\r\n                    <br><br><b><u>Requested Amount:</u></b> {request_amount}\r\n                    <br><br><b><u>Given Amount:</u></b> {given_amount}\r\n                    <br><br><b><u>Fee (deducted from {request_receiver}):</u></b> {fee}\r\n                    <br><br>If you have any questions, please feel free to reply to this email.\r\n                    <br><br>Regards,\r\n                    <br><b>{soft_name}</b>', 'en', 'email', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(50, 2, 'Notify Admin on Money Received', 'notify-admin-on-money-received', '', '', 'ar', 'email', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(51, 3, 'Notify Admin on Money Received', 'notify-admin-on-money-received', '', '', 'fr', 'email', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(52, 4, 'Notify Admin on Money Received', 'notify-admin-on-money-received', '', '', 'pt', 'email', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(53, 5, 'Notify Admin on Money Received', 'notify-admin-on-money-received', '', '', 'ru', 'email', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(54, 6, 'Notify Admin on Money Received', 'notify-admin-on-money-received', '', '', 'es', 'email', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(55, 7, 'Notify Admin on Money Received', 'notify-admin-on-money-received', '', '', 'tr', 'email', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(56, 8, 'Notify Admin on Money Received', 'notify-admin-on-money-received', '', '', 'ch', 'email', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(57, 1, 'Notify Admin on Exchange', 'notify-admin-on-exchange', 'Money Exchange Notification', 'Hi <b>{admin}</b>,\r\n                    <br><br>Amount <b>{amount}</b> has been exchanged by <b>{user}</b>\r\n                    <br><br><b><u><i>Here’s a brief overview of the Exchange:</i></u></b>\r\n                    <br><br><b><u>Exchanged at:</u></b> {created_at}\r\n                    <br><br><b><u>Transaction ID:</u></b> {uuid}\r\n                    <br><br><b><u>From wallet:</u></b> {from_wallet}\r\n                    <br><br><b><u>To wallet:</u></b> {to_wallet}\r\n                    <br><br><b><u>Exchanged Amount:</u></b> {exchanged_amount}\r\n                    <br><br><b><u>Exchange Rate:</u></b> 1 {from_wallet} = {exchange_rate} {to_wallet}\r\n                    <br><br><b><u>Fee (deducted from {from_wallet}):</u></b> {fee}\r\n                    <br><br>If you have any questions, please feel free to reply to this email.\r\n                    <br><br>Regards,\r\n                    <br><b>{soft_name}</b>', 'en', 'email', 'Active', 'Exchange', '2024-06-21 09:29:26', NULL),
(58, 2, 'Notify Admin on Exchange', 'notify-admin-on-exchange', '', '', 'ar', 'email', 'Active', 'Exchange', '2024-06-21 09:29:26', NULL),
(59, 3, 'Notify Admin on Exchange', 'notify-admin-on-exchange', '', '', 'fr', 'email', 'Active', 'Exchange', '2024-06-21 09:29:26', NULL),
(60, 4, 'Notify Admin on Exchange', 'notify-admin-on-exchange', '', '', 'pt', 'email', 'Active', 'Exchange', '2024-06-21 09:29:26', NULL),
(61, 5, 'Notify Admin on Exchange', 'notify-admin-on-exchange', '', '', 'ru', 'email', 'Active', 'Exchange', '2024-06-21 09:29:26', NULL),
(62, 6, 'Notify Admin on Exchange', 'notify-admin-on-exchange', '', '', 'es', 'email', 'Active', 'Exchange', '2024-06-21 09:29:26', NULL),
(63, 7, 'Notify Admin on Exchange', 'notify-admin-on-exchange', '', '', 'tr', 'email', 'Active', 'Exchange', '2024-06-21 09:29:26', NULL),
(64, 8, 'Notify Admin on Exchange', 'notify-admin-on-exchange', '', '', 'ch', 'email', 'Active', 'Exchange', '2024-06-21 09:29:26', NULL),
(65, 1, 'Notify Admin on Withdrawal', 'notify-admin-on-withdrawal', 'Money Withdrawal Notification', 'Hi <b>{admin}</b>,\r\n                    <br><br><b>{amount}</b> has been withdrawn by <b>{user}</b>.\r\n                    <br><br><b><u><i>Here’s a brief overview of the Withdrawn:</i></u></b>\r\n                    <br><br><b><u>Withdrawn at:</u></b> {created_at}\r\n                    <br><br><b><u>Transaction ID:</u></b> {uuid}\r\n                    <br><br><b><u>Withdraw via:</u></b> {payment_method}\r\n                    <br><br><b><u>Currency:</u></b> {code}\r\n                    <br><br><b><u>Amount:</u></b> {amount}\r\n                    <br><br><b><u>Fee:</u></b> {fee}\r\n                    <br><br>If you have any questions, please feel free to reply to this email.\r\n                    <br><br>Regards,\r\n                    <br><b>{soft_name}</b>', 'en', 'email', 'Active', 'Withdraw', '2024-06-21 09:29:26', NULL),
(66, 2, 'Notify Admin on Withdrawal', 'notify-admin-on-withdrawal', '', '', 'ar', 'email', 'Active', 'Withdraw', '2024-06-21 09:29:26', NULL),
(67, 3, 'Notify Admin on Withdrawal', 'notify-admin-on-withdrawal', '', '', 'fr', 'email', 'Active', 'Withdraw', '2024-06-21 09:29:26', NULL),
(68, 4, 'Notify Admin on Withdrawal', 'notify-admin-on-withdrawal', '', '', 'pt', 'email', 'Active', 'Withdraw', '2024-06-21 09:29:26', NULL),
(69, 5, 'Notify Admin on Withdrawal', 'notify-admin-on-withdrawal', '', '', 'ru', 'email', 'Active', 'Withdraw', '2024-06-21 09:29:26', NULL),
(70, 6, 'Notify Admin on Withdrawal', 'notify-admin-on-withdrawal', '', '', 'es', 'email', 'Active', 'Withdraw', '2024-06-21 09:29:26', NULL),
(71, 7, 'Notify Admin on Withdrawal', 'notify-admin-on-withdrawal', '', '', 'tr', 'email', 'Active', 'Withdraw', '2024-06-21 09:29:26', NULL),
(72, 8, 'Notify Admin on Withdrawal', 'notify-admin-on-withdrawal', '', '', 'ch', 'email', 'Active', 'Withdraw', '2024-06-21 09:29:26', NULL),
(73, 1, 'Notify User on Withdrawal via Admin', 'notify-user-on-withdrawal-via-admin', 'Money Withdrawal Notification', 'Hi <b>{user}</b>,\r\n                    <br><br><b>{amount}</b> has been withdrawn from your account by System Administrator.\r\n                    <br><br><b><u><i>Here’s a brief overview of the withdrawn:</i></u></b>\r\n                    <br><br><b><u>Withdrawn at:</u></b> {created_at}\r\n                    <br><br><b><u>Transaction ID:</u></b> {uuid}\r\n                    <br><br><b><u>Currency:</u></b> {code}\r\n                    <br><br><b><u>Amount:</u></b> {amount}\r\n                    <br><br><b><u>Fee:</u></b> {fee}\r\n                    <br><br>If you have any questions, please feel free to reply to this email.\r\n                    <br><br>Regards,\r\n                    <br><b>{soft_name}</b>', 'en', 'email', 'Active', 'Withdraw', '2024-06-21 09:29:26', NULL),
(74, 2, 'Notify User on Withdrawal via Admin', 'notify-user-on-withdrawal-via-admin', '', '', 'ar', 'email', 'Active', 'Withdraw', '2024-06-21 09:29:26', NULL),
(75, 3, 'Notify User on Withdrawal via Admin', 'notify-user-on-withdrawal-via-admin', '', '', 'fr', 'email', 'Active', 'Withdraw', '2024-06-21 09:29:26', NULL),
(76, 4, 'Notify User on Withdrawal via Admin', 'notify-user-on-withdrawal-via-admin', '', '', 'pt', 'email', 'Active', 'Withdraw', '2024-06-21 09:29:26', NULL),
(77, 5, 'Notify User on Withdrawal via Admin', 'notify-user-on-withdrawal-via-admin', '', '', 'ru', 'email', 'Active', 'Withdraw', '2024-06-21 09:29:26', NULL),
(78, 6, 'Notify User on Withdrawal via Admin', 'notify-user-on-withdrawal-via-admin', '', '', 'es', 'email', 'Active', 'Withdraw', '2024-06-21 09:29:26', NULL),
(79, 7, 'Notify User on Withdrawal via Admin', 'notify-user-on-withdrawal-via-admin', '', '', 'tr', 'email', 'Active', 'Withdraw', '2024-06-21 09:29:26', NULL),
(80, 8, 'Notify User on Withdrawal via Admin', 'notify-user-on-withdrawal-via-admin', '', '', 'ch', 'email', 'Active', 'Withdraw', '2024-06-21 09:29:26', NULL),
(81, 1, 'Notify Merchant', 'notify-merchant', 'Merchant Payment Notification', 'Hi {merchant},\r\n                    <br><br>Payment has been completed. Amount {amount} has been paid to {merchant}.\r\n                    <br><br><b><u><i>Here’s a brief overview of the Payment:</i></u></b>\r\n                    <br><br><b><u>Paid at:</u></b> {created_at}\r\n                    <br><br><b><u>Transaction ID:</u></b> {uuid}\r\n                    <br><br><b><u>Currency:</u></b> {code}\r\n                    <br><br><b><u>Paid By:</u></b> {user}\r\n                    <br><br><b><u>Paid To:</u></b> {merchant}\r\n                    <br><br><b><u>Amount:</u></b> {amount}\r\n                    <br><br><b><u>Fee (deducted from {fee_bearer}):</u></b> {fee}\r\n                    <br><br>If you have any questions, please feel free to reply to this email.\r\n                    <br><br>Regards,\r\n                    <br><b>{soft_name}</b>', 'en', 'email', 'Active', 'Merchant Payment', '2024-06-21 09:29:26', NULL),
(82, 2, 'Notify Merchant', 'notify-merchant', '', '', 'ar', 'email', 'Active', 'Merchant Payment', '2024-06-21 09:29:26', NULL),
(83, 3, 'Notify Merchant', 'notify-merchant', '', '', 'fr', 'email', 'Active', 'Merchant Payment', '2024-06-21 09:29:26', NULL),
(84, 4, 'Notify Merchant', 'notify-merchant', '', '', 'pt', 'email', 'Active', 'Merchant Payment', '2024-06-21 09:29:26', NULL),
(85, 5, 'Notify Merchant', 'notify-merchant', '', '', 'ru', 'email', 'Active', 'Merchant Payment', '2024-06-21 09:29:26', NULL),
(86, 6, 'Notify Merchant', 'notify-merchant', '', '', 'es', 'email', 'Active', 'Merchant Payment', '2024-06-21 09:29:26', NULL),
(87, 7, 'Notify Merchant', 'notify-merchant', '', '', 'tr', 'email', 'Active', 'Merchant Payment', '2024-06-21 09:29:26', NULL),
(88, 8, 'Notify Merchant', 'notify-merchant', '', '', 'ch', 'email', 'Active', 'Merchant Payment', '2024-06-21 09:29:26', NULL),
(89, 1, 'Notify Admin on Payment', 'notify-admin-on-payment', 'Merchant Payment Notification', 'Hi <b>{admin}</b>,\r\n                    <br><br>Merchant payment completed. Amount <b>{amount}</b> has been paid by <b>{user}</b> to <b>{merchant}</b>.\r\n                    <br><br><b><u><i>Here’s a brief overview of the Payment:</i></u></b>\r\n                    <br><br><b><u>Paid at:</u></b> {created_at}\r\n                    <br><br><b><u>Transaction ID:</u></b> {uuid}\r\n                    <br><br><b><u>Currency:</u></b> {code}\r\n                    <br><br><b><u>Paid By:</u></b> {user}\r\n                    <br><br><b><u>Paid To:</u></b> {merchant}\r\n                    <br><br><b><u>Amount:</u></b> {amount}\r\n                    <br><br><b><u>Fee (deducted from {fee_bearer}):</u></b> {fee}\r\n                    <br><br>If you have any questions, please feel free to reply to this email.\r\n                    <br><br>Regards,\r\n                    <br><b>{soft_name}</b>', 'en', 'email', 'Active', 'Merchant Payment', '2024-06-21 09:29:26', NULL),
(90, 2, 'Notify Admin on Payment', 'notify-admin-on-payment', '', '', 'ar', 'email', 'Active', 'Merchant Payment', '2024-06-21 09:29:26', NULL),
(91, 3, 'Notify Admin on Payment', 'notify-admin-on-payment', '', '', 'fr', 'email', 'Active', 'Merchant Payment', '2024-06-21 09:29:26', NULL),
(92, 4, 'Notify Admin on Payment', 'notify-admin-on-payment', '', '', 'pt', 'email', 'Active', 'Merchant Payment', '2024-06-21 09:29:26', NULL),
(93, 5, 'Notify Admin on Payment', 'notify-admin-on-payment', '', '', 'ru', 'email', 'Active', 'Merchant Payment', '2024-06-21 09:29:26', NULL),
(94, 6, 'Notify Admin on Payment', 'notify-admin-on-payment', '', '', 'es', 'email', 'Active', 'Merchant Payment', '2024-06-21 09:29:26', NULL),
(95, 7, 'Notify Admin on Payment', 'notify-admin-on-payment', '', '', 'tr', 'email', 'Active', 'Merchant Payment', '2024-06-21 09:29:26', NULL),
(96, 8, 'Notify Admin on Payment', 'notify-admin-on-payment', '', '', 'ch', 'email', 'Active', 'Merchant Payment', '2024-06-21 09:29:26', NULL),
(97, 1, 'New Ticket', 'new-ticket', 'New Ticket has been {assigned/created}', 'Hi {admin/assignee/user},\r\n                    <br><br>Ticket #{ticket_code} was {assigned/created} {to/for} you.\r\n                    <br><br><b><u><i>Here’s a brief overview of the ticket:</i></u></b>\r\n                    <br><br>Ticket #{ticket_code} was created at {created_at}.\r\n                    <br><br><b><u>Assignee:</u></b> {assignee}\r\n                    <br><br><b><u>User:</u></b> {user}\r\n                    <br><br><b><u>Ticket Subject:</u></b> {subject}\r\n                    <br><br><b><u>Ticket Message:</u></b> {message}\r\n                    <br><br><b><u>Ticket Status:</u></b> {status}\r\n                    <br><br><b><u>Ticket Priority Level:</u></b> {priority}\r\n                    <br><br>If you have any questions, please feel free to reply to this email.\r\n                    <br><br>Regards,\r\n                    <br><b>{soft_name}</b>', 'en', 'email', 'Active', 'Ticket', '2024-06-21 09:29:26', NULL),
(98, 2, 'New Ticket', 'new-ticket', '', '', 'ar', 'email', 'Active', 'Ticket', '2024-06-21 09:29:26', NULL),
(99, 3, 'New Ticket', 'new-ticket', '', '', 'fr', 'email', 'Active', 'Ticket', '2024-06-21 09:29:26', NULL),
(100, 4, 'New Ticket', 'new-ticket', '', '', 'pt', 'email', 'Active', 'Ticket', '2024-06-21 09:29:26', NULL),
(101, 5, 'New Ticket', 'new-ticket', '', '', 'ru', 'email', 'Active', 'Ticket', '2024-06-21 09:29:26', NULL),
(102, 6, 'New Ticket', 'new-ticket', '', '', 'es', 'email', 'Active', 'Ticket', '2024-06-21 09:29:26', NULL),
(103, 7, 'New Ticket', 'new-ticket', '', '', 'tr', 'email', 'Active', 'Ticket', '2024-06-21 09:29:26', NULL),
(104, 8, 'New Ticket', 'new-ticket', '', '', 'ch', 'email', 'Active', 'Ticket', '2024-06-21 09:29:26', NULL),
(105, 1, 'Ticket Reply', 'ticket-reply', 'Ticket Reply Notification', 'Hi {assignee/user},\r\n                            <br><br>You have received a ticket reply.\r\n                            <br><br><b><u><i>Here’s a brief overview of the reply:</i></u></b>\r\n                            <br><br>This reply was initiated against ticket code #{ticket_code}.\r\n                            <br><br><b><u>Assignee:</u></b> {assignee}\r\n                            <br><br><b><u>Reply Message:</u></b> {message}\r\n                            <br><br><b><u>Reply Status:</u></b> {status}\r\n                            <br><br><b><u>Reply Priority Level:</u></b> {priority}\r\n                            <br><br>If you have any questions, please feel free to reply to this email.\r\n                            <br><br>Regards,\r\n                            <br><b>{soft_name}</b>', 'en', 'email', 'Active', 'Ticket', '2024-06-21 09:29:26', NULL),
(106, 2, 'Ticket Reply', 'ticket-reply', '', '', 'ar', 'email', 'Active', 'Ticket', '2024-06-21 09:29:26', NULL),
(107, 3, 'Ticket Reply', 'ticket-reply', '', '', 'fr', 'email', 'Active', 'Ticket', '2024-06-21 09:29:26', NULL),
(108, 4, 'Ticket Reply', 'ticket-reply', '', '', 'pt', 'email', 'Active', 'Ticket', '2024-06-21 09:29:26', NULL),
(109, 5, 'Ticket Reply', 'ticket-reply', '', '', 'ru', 'email', 'Active', 'Ticket', '2024-06-21 09:29:26', NULL),
(110, 6, 'Ticket Reply', 'ticket-reply', '', '', 'es', 'email', 'Active', 'Ticket', '2024-06-21 09:29:26', NULL),
(111, 7, 'Ticket Reply', 'ticket-reply', '', '', 'tr', 'email', 'Active', 'Ticket', '2024-06-21 09:29:26', NULL),
(112, 8, 'Ticket Reply', 'ticket-reply', '', '', 'ch', 'email', 'Active', 'Ticket', '2024-06-21 09:29:26', NULL),
(113, 1, 'Open Dispute', 'open-dispute', 'Dispute Open Notification', 'Hi <b>{admin/merchant}</b>,\r\n                    <br><br>Dispute ID <b>#{dispute_id}</b> has been opened by <b>{claimant}</b>.\r\n                    <br><br><b><u><i>Here’s a brief overview of the dispute:</i></u></b>\r\n                    <br><br><b><u>Created at:</u></b> {created_at}\r\n                    <br><br><b><u>Transaction ID:</u></b> {uuid}\r\n                    <br><br><b><u>Claimant:</u></b> {claimant}\r\n                    <br><br><b><u>Defendant:</u></b> {defendant}\r\n                    <br><br><b><u>Dispute Subject:</u></b> {subject}\r\n                    <br><br><b><u>Dispute description:</u></b> {description}\r\n                    <br><br><b><u>Dispute Status:</u></b> {status}\r\n                    <br><br>If you have any questions, please feel free to reply to this email.\r\n                    <br><br>Regards,\r\n                    <br><b>{soft_name}</b>', 'en', 'email', 'Active', 'Dispute', '2024-06-21 09:29:26', NULL),
(114, 2, 'Open Dispute', 'open-dispute', '', '', 'ar', 'email', 'Active', 'Dispute', '2024-06-21 09:29:26', NULL),
(115, 3, 'Open Dispute', 'open-dispute', '', '', 'fr', 'email', 'Active', 'Dispute', '2024-06-21 09:29:26', NULL),
(116, 4, 'Open Dispute', 'open-dispute', '', '', 'pt', 'email', 'Active', 'Dispute', '2024-06-21 09:29:26', NULL),
(117, 5, 'Open Dispute', 'open-dispute', '', '', 'ru', 'email', 'Active', 'Dispute', '2024-06-21 09:29:26', NULL),
(118, 6, 'Open Dispute', 'open-dispute', '', '', 'es', 'email', 'Active', 'Dispute', '2024-06-21 09:29:26', NULL),
(119, 7, 'Open Dispute', 'open-dispute', '', '', 'tr', 'email', 'Active', 'Dispute', '2024-06-21 09:29:26', NULL),
(120, 8, 'Open Dispute', 'open-dispute', '', '', 'ch', 'email', 'Active', 'Dispute', '2024-06-21 09:29:26', NULL),
(121, 1, 'Dispute Reply', 'dispute-reply', 'New Dispute Reply', 'Hi <b>{admin/merchant/user}</b>,\r\n                    <br><br>You have received a new dispute reply from <b>{user}</b>.\r\n                    <br><br><b><u><i>Here’s a brief overview of the reply:</i></u></b>\r\n                    <br><br><b><u>Replied at</u></b> {created_at}\r\n                    <br><br><b><u>Dispute ID:</u></b> {dispute_id}\r\n                    <br><br><b><u>Transaction ID:</u></b> {transaction_id}\r\n                    <br><br><b><u>Claimant:</u></b> {claimant}\r\n                    <br><br><b><u>Defendant</u></b> {defendant}\r\n                    <br><br><b><u>Subject:</u></b> {subject}\r\n                    <br><br><b><u>Replied Message:</u></b> {message}\r\n                    <br><br><b><u>Status:</u></b> {status}\r\n                    <br><br>If you have any questions, please feel free to reply to this email.\r\n                    <br><br>Regards,\r\n                    <br><b>{soft_name}</b>', 'en', 'email', 'Active', 'Dispute', '2024-06-21 09:29:26', NULL),
(122, 2, 'Dispute Reply', 'dispute-reply', '', '', 'ar', 'email', 'Active', 'Dispute', '2024-06-21 09:29:26', NULL),
(123, 3, 'Dispute Reply', 'dispute-reply', '', '', 'fr', 'email', 'Active', 'Dispute', '2024-06-21 09:29:26', NULL),
(124, 4, 'Dispute Reply', 'dispute-reply', '', '', 'pt', 'email', 'Active', 'Dispute', '2024-06-21 09:29:26', NULL),
(125, 5, 'Dispute Reply', 'dispute-reply', '', '', 'ru', 'email', 'Active', 'Dispute', '2024-06-21 09:29:26', NULL),
(126, 6, 'Dispute Reply', 'dispute-reply', '', '', 'es', 'email', 'Active', 'Dispute', '2024-06-21 09:29:26', NULL),
(127, 7, 'Dispute Reply', 'dispute-reply', '', '', 'tr', 'email', 'Active', 'Dispute', '2024-06-21 09:29:26', NULL),
(128, 8, 'Dispute Reply', 'dispute-reply', '', '', 'ch', 'email', 'Active', 'Dispute', '2024-06-21 09:29:26', NULL),
(129, 1, 'Two-fa Authentication', 'two-fa-authentication', '2fa OTP code', 'Hi {user},\r\n                    <br><br>\r\n                    Your 2-Factor Authentication code is: {code}\r\n                    <br><br>Regards,\r\n                    <br><b>{soft_name}</b>', 'en', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(130, 2, 'Two-fa Authentication', 'two-fa-authentication', '', '', 'ar', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(131, 3, 'Two-fa Authentication', 'two-fa-authentication', '', '', 'fr', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(132, 4, 'Two-fa Authentication', 'two-fa-authentication', '', '', 'pt', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(133, 5, 'Two-fa Authentication', 'two-fa-authentication', '', '', 'ru', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(134, 6, 'Two-fa Authentication', 'two-fa-authentication', '', '', 'es', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(135, 7, 'Two-fa Authentication', 'two-fa-authentication', '', '', 'tr', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(136, 8, 'Two-fa Authentication', 'two-fa-authentication', '', '', 'ch', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(137, 1, 'Address or Identity Verification', 'address-or-identity-verification', '{Identity/Address} Verification', 'Hi {user},\r\n                    <br><br>Your {Identity/Address} verification is <b>{approved/pending/rejected}</b>.\r\n                    <br><br>If you have any questions, please feel free to reply to this email.\r\n                    <br><br>Regards,\r\n                    <br><b>{soft_name}</b>', 'en', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(138, 2, 'Address or Identity Verification', 'address-or-identity-verification', '', '', 'ar', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(139, 3, 'Address or Identity Verification', 'address-or-identity-verification', '', '', 'fr', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(140, 4, 'Address or Identity Verification', 'address-or-identity-verification', '', '', 'pt', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(141, 5, 'Address or Identity Verification', 'address-or-identity-verification', '', '', 'ru', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(142, 6, 'Address or Identity Verification', 'address-or-identity-verification', '', '', 'es', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(143, 7, 'Address or Identity Verification', 'address-or-identity-verification', '', '', 'tr', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(144, 8, 'Address or Identity Verification', 'address-or-identity-verification', '', '', 'ch', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(145, 1, 'Email Verification', 'email-verification', 'Email Verification', 'Hi {user},\r\n                    <br><br>\r\n                    Your registered email id: {email}. Please click on the below link to verify your account,<br><br>\r\n                    {verification_url}\r\n                    <br><br>If you have any questions, please feel free to reply to this email.\r\n                    <br><br>Regards,\r\n                    <br><b>{soft_name}</b>', 'en', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(146, 2, 'Email Verification', 'email-verification', '', '', 'ar', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(147, 3, 'Email Verification', 'email-verification', '', '', 'fr', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(148, 4, 'Email Verification', 'email-verification', '', '', 'pt', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(149, 5, 'Email Verification', 'email-verification', '', '', 'ru', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(150, 6, 'Email Verification', 'email-verification', '', '', 'es', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(151, 7, 'Email Verification', 'email-verification', '', '', 'tr', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(152, 8, 'Email Verification', 'email-verification', '', '', 'ch', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(153, 1, 'Password Reset', 'password-reset', 'Password Reset Notification', 'Hi {user},\r\n                    <br><br>\r\n                    Your registered email id: {email}. Please click on the below link to reset your password,<br><br>\r\n                    {password_reset_url}\r\n                    <br><br>If you have any questions, please feel free to reply to this email.\r\n                    <br><br>Regards,\r\n                    <br><b>{soft_name}</b>', 'en', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(154, 2, 'Password Reset', 'password-reset', '', '', 'ar', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(155, 3, 'Password Reset', 'password-reset', '', '', 'fr', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(156, 4, 'Password Reset', 'password-reset', '', '', 'pt', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(157, 5, 'Password Reset', 'password-reset', '', '', 'ru', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(158, 6, 'Password Reset', 'password-reset', '', '', 'es', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(159, 7, 'Password Reset', 'password-reset', '', '', 'tr', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(160, 8, 'Password Reset', 'password-reset', '', '', 'ch', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(161, 1, 'Profile Status Change', 'profile-status-change', 'Profile Status Change', 'Hi {user},\r\n                    <br><br>Your profile status has been changed to <b>{status}</b> by the System Administrator\r\n                    <br><br>If you have any questions, please feel free to reply to this email.\r\n                    <br><br>Regards,\r\n                    <br><b>{soft_name}</b>.', 'en', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(162, 2, 'Profile Status Change', 'profile-status-change', '', '', 'ar', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(163, 3, 'Profile Status Change', 'profile-status-change', '', '', 'fr', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(164, 4, 'Profile Status Change', 'profile-status-change', '', '', 'pt', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(165, 5, 'Profile Status Change', 'profile-status-change', '', '', 'ru', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(166, 6, 'Profile Status Change', 'profile-status-change', '', '', 'es', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(167, 7, 'Profile Status Change', 'profile-status-change', '', '', 'tr', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(168, 8, 'Profile Status Change', 'profile-status-change', '', '', 'ch', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(169, 1, 'Transaction Status Update', 'transaction-status-update', 'Transaction Status Update Notification', 'Hi {user},\r\n                    <br><br>We would like to inform you that the transaction for <b>{transaction_type}</b> with the ID #<b>{uuid}</b> has been updated to <b>{status}</b> by the system administrator.\r\n                    <br><br>Amount <b>{amount}</b> has been <b>{added/subtracted}</b> {from/to} your account.\r\n                    <br><br>If you have any questions, please feel free to reply to this email.\r\n                    <br><br>Regards,\r\n                    <br><b>{soft_name}</b>.', 'en', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(170, 2, 'Transaction Status Update', 'transaction-status-update', '', '', 'ar', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(171, 3, 'Transaction Status Update', 'transaction-status-update', '', '', 'fr', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(172, 4, 'Transaction Status Update', 'transaction-status-update', '', '', 'pt', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(173, 5, 'Transaction Status Update', 'transaction-status-update', '', '', 'ru', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(174, 6, 'Transaction Status Update', 'transaction-status-update', '', '', 'es', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(175, 7, 'Transaction Status Update', 'transaction-status-update', '', '', 'tr', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(176, 8, 'Transaction Status Update', 'transaction-status-update', '', '', 'ch', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(177, 1, 'Address or Identity Verification', 'address-or-identity-verification', '{Identity/Address} Verification', 'Hi {user}, Your {Identity/Address} verification is <b>{approved/pending/rejected}</b>.Regards, {soft_name}.', 'en', 'sms', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(178, 2, 'Address or Identity Verification', 'address-or-identity-verification', '', '', 'ar', 'sms', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(179, 3, 'Address or Identity Verification', 'address-or-identity-verification', '', '', 'fr', 'sms', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(180, 4, 'Address or Identity Verification', 'address-or-identity-verification', '', '', 'pt', 'sms', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(181, 5, 'Address or Identity Verification', 'address-or-identity-verification', '', '', 'ru', 'sms', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(182, 6, 'Address or Identity Verification', 'address-or-identity-verification', '', '', 'es', 'sms', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(183, 7, 'Address or Identity Verification', 'address-or-identity-verification', '', '', 'tr', 'sms', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(184, 8, 'Address or Identity Verification', 'address-or-identity-verification', '', '', 'ch', 'sms', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(185, 1, 'Notify Money Receiver', 'notify-money-receiver', 'Money Received Notification', 'Hi {receiver_id}, You have received amount {amount} tnxId #{uuid} at {created_at} on your account. Regards, {soft_name}.', 'en', 'sms', 'Active', 'Send Money', '2024-06-21 09:29:26', NULL),
(186, 2, 'Notify Money Receiver', 'notify-money-receiver', '', '', 'ar', 'sms', 'Active', 'Send Money', '2024-06-21 09:29:26', NULL),
(187, 3, 'Notify Money Receiver', 'notify-money-receiver', '', '', 'fr', 'sms', 'Active', 'Send Money', '2024-06-21 09:29:26', NULL),
(188, 4, 'Notify Money Receiver', 'notify-money-receiver', '', '', 'pt', 'sms', 'Active', 'Send Money', '2024-06-21 09:29:26', NULL),
(189, 5, 'Notify Money Receiver', 'notify-money-receiver', '', '', 'ru', 'sms', 'Active', 'Send Money', '2024-06-21 09:29:26', NULL),
(190, 6, 'Notify Money Receiver', 'notify-money-receiver', '', '', 'es', 'sms', 'Active', 'Send Money', '2024-06-21 09:29:26', NULL),
(191, 7, 'Notify Money Receiver', 'notify-money-receiver', '', '', 'tr', 'sms', 'Active', 'Send Money', '2024-06-21 09:29:26', NULL),
(192, 8, 'Notify Money Receiver', 'notify-money-receiver', '', '', 'ch', 'sms', 'Active', 'Send Money', '2024-06-21 09:29:26', NULL),
(193, 1, 'Notify Request Receiver', 'notify-request-receiver', 'Request Money Notification', 'Hi {request_receiver}, {request_sender} has been requested amount {amount} with tnxId: #{uuid} at {created_at} from you. Regards, {soft_name}.', 'en', 'sms', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(194, 2, 'Notify Request Receiver', 'notify-request-receiver', '', '', 'ar', 'sms', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(195, 3, 'Notify Request Receiver', 'notify-request-receiver', '', '', 'fr', 'sms', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(196, 4, 'Notify Request Receiver', 'notify-request-receiver', '', '', 'pt', 'sms', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(197, 5, 'Notify Request Receiver', 'notify-request-receiver', '', '', 'ru', 'sms', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(198, 6, 'Notify Request Receiver', 'notify-request-receiver', '', '', 'es', 'sms', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(199, 7, 'Notify Request Receiver', 'notify-request-receiver', '', '', 'tr', 'sms', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(200, 8, 'Notify Request Receiver', 'notify-request-receiver', '', '', 'ch', 'sms', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(201, 1, 'Notify Request Sender on Money Received', 'notify-request-sender-on-money-received', 'Requested Money Received Notification', 'Dear {request_sender}, You have received amount {amount} tnxId #{uuid} from {request_receiver}. Regards, {soft_name}.', 'en', 'sms', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(202, 2, 'Notify Request Sender on Money Received', 'notify-request-sender-on-money-received', '', '', 'ar', 'sms', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(203, 3, 'Notify Request Sender on Money Received', 'notify-request-sender-on-money-received', '', '', 'fr', 'sms', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(204, 4, 'Notify Request Sender on Money Received', 'notify-request-sender-on-money-received', '', '', 'pt', 'sms', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(205, 5, 'Notify Request Sender on Money Received', 'notify-request-sender-on-money-received', '', '', 'ru', 'sms', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(206, 6, 'Notify Request Sender on Money Received', 'notify-request-sender-on-money-received', '', '', 'es', 'sms', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(207, 7, 'Notify Request Sender on Money Received', 'notify-request-sender-on-money-received', '', '', 'tr', 'sms', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(208, 8, 'Notify Request Sender on Money Received', 'notify-request-sender-on-money-received', '', '', 'ch', 'sms', 'Active', 'Request Money', '2024-06-21 09:29:26', NULL),
(209, 1, 'Transaction Status Update', 'transaction-status-update', 'Transaction Status Update Notification', 'Hi {user}, The transaction {transaction_type} with ID #{uuid} has been updated to {status} by the administrator. Amount {amount} has been {added/subtracted} {from/to} your account. Regards, {soft_name}.', 'en', 'sms', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(210, 2, 'Transaction Status Update', 'transaction-status-update', '', '', 'ar', 'sms', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(211, 3, 'Transaction Status Update', 'transaction-status-update', '', '', 'fr', 'sms', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(212, 4, 'Transaction Status Update', 'transaction-status-update', '', '', 'pt', 'sms', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(213, 5, 'Transaction Status Update', 'transaction-status-update', '', '', 'ru', 'sms', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(214, 6, 'Transaction Status Update', 'transaction-status-update', '', '', 'es', 'sms', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(215, 7, 'Transaction Status Update', 'transaction-status-update', '', '', 'tr', 'sms', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(216, 8, 'Transaction Status Update', 'transaction-status-update', '', '', 'ch', 'sms', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(217, 1, 'Notify Admin on Merchant Creation', 'notify-admin-on-merchant-creation', 'New merchant Creation Notification', 'Hi <b>{admin}</b>,\r\n                    <br><br>A new merchant has been created by <b>{user}</b></br>\r\n                    <br><br><b><u><i>Here’s a brief overview of the merchant:</i></u></b>\r\n                    <br><br><b><u>Created at:</u></b> {created_at}\r\n                    <br><br><b><u>Merchant:</u></b> {business_name}\r\n                    <br><br><b><u>Site URL:</u></b> {site_url}\r\n                    <br><br><b><u>Currency:</u></b> {code}\r\n                    <br><br><b><u>Type:</u></b> {merchant_type}\r\n                    <br><br><b><u>Message:</u></b> {message}\r\n                    <br><br>If you have any questions, please feel free to reply to this email.\r\n                    <br><br>Regards,\r\n                    <br><b>{soft_name}</b>', 'en', 'email', 'Active', 'Merchant Payment', '2024-06-21 09:29:26', NULL),
(218, 2, 'Notify Admin on Merchant Creation', 'notify-admin-on-merchant-creation', '', '', 'ar', 'email', 'Active', 'Merchant Payment', '2024-06-21 09:29:26', NULL),
(219, 3, 'Notify Admin on Merchant Creation', 'notify-admin-on-merchant-creation', '', '', 'fr', 'email', 'Active', 'Merchant Payment', '2024-06-21 09:29:26', NULL),
(220, 4, 'Notify Admin on Merchant Creation', 'notify-admin-on-merchant-creation', '', '', 'pt', 'email', 'Active', 'Merchant Payment', '2024-06-21 09:29:26', NULL),
(221, 5, 'Notify Admin on Merchant Creation', 'notify-admin-on-merchant-creation', '', '', 'ru', 'email', 'Active', 'Merchant Payment', '2024-06-21 09:29:26', NULL),
(222, 6, 'Notify Admin on Merchant Creation', 'notify-admin-on-merchant-creation', '', '', 'es', 'email', 'Active', 'Merchant Payment', '2024-06-21 09:29:26', NULL),
(223, 7, 'Notify Admin on Merchant Creation', 'notify-admin-on-merchant-creation', '', '', 'tr', 'email', 'Active', 'Merchant Payment', '2024-06-21 09:29:26', NULL),
(224, 8, 'Notify Admin on Merchant Creation', 'notify-admin-on-merchant-creation', '', '', 'ch', 'email', 'Active', 'Merchant Payment', '2024-06-21 09:29:26', NULL),
(225, 1, 'Notice for Forgot Password', 'forgot-password-notice', 'Notice for Forgot Password', 'Hi {user},<br><br>You recently requested a password reset for your account.<br><br>Please use the following code to reset your password<br><br><b><u>Code:</u></b> {password_reset_code} <br><br>If you did not make this request, please contact our support team immediately.<br><br>Regards,<br><b>{soft_name}</b>', 'en', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(226, 2, 'Notice for Forgot Password', 'forgot-password-notice', '', '', 'ar', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(227, 2, 'Notice for Forgot Password', 'forgot-password-notice', '', '', 'fr', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(228, 4, 'Notice for Forgot Password', 'forgot-password-notice', '', '', 'pt', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(229, 5, 'Notice for Forgot Password', 'forgot-password-notice', '', '', 'ru', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL);
INSERT INTO `email_templates` (`id`, `language_id`, `name`, `alias`, `subject`, `body`, `lang`, `type`, `status`, `group`, `created_at`, `updated_at`) VALUES
(230, 6, 'Notice for Forgot Password', 'forgot-password-notice', '', '', 'es', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(231, 7, 'Notice for Forgot Password', 'forgot-password-notice', '', '', 'tr', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(232, 8, 'Notice for Forgot Password', 'forgot-password-notice', '', '', 'ch', 'email', 'Active', 'General', '2024-06-21 09:29:26', NULL),
(233, 1, 'Notify Admin on Crypto Exchange', 'notify-admin-on-crypto-exchange', 'Crypto Exchange Notification', 'Hi <b>{admin}</b>,\r\n                    <br><br>Amount <b>{amount}</b> has been Crypto Exchange by <b>{user}</br>\r\n                    <br><br><b><u><i>Here’s a brief overview of the Deposit:</i></u></b>\r\n                    <br><br><b><u>Crypto Exchange at:</u></b> {created_at}\r\n                    <br><br><b><u>Crypto Exchange via:</u></b> {payment_method}\r\n                    <br><br><b><u>Transaction ID:</u></b> {uuid}\r\n                    <br><br><b><u>Currency:</u></b> {code}\r\n                    <br><br><b><u>Amount:</u></b> {amount}\r\n                    <br><br><b><u>Fee:</u></b> {fee}\r\n                    <br><br>If you have any questions, please feel free to reply to this email.\r\n                    <br><br>Regards,\r\n                    <br><b>{soft_name}</b>', 'en', 'email', 'Active', 'Crypto Exchange', '2024-06-21 09:37:44', NULL),
(234, 2, 'Notify Admin on Crypto Exchange', 'notify-admin-on-crypto-exchange', '', '', 'ar', 'email', 'Active', 'Crypto Exchange', '2024-06-21 09:37:44', NULL),
(235, 3, 'Notify Admin on Crypto Exchange', 'notify-admin-on-crypto-exchange', '', '', 'fr', 'email', 'Active', 'Crypto Exchange', '2024-06-21 09:37:44', NULL),
(236, 4, 'Notify Admin on Crypto Exchange', 'notify-admin-on-crypto-exchange', '', '', 'pt', 'email', 'Active', 'Crypto Exchange', '2024-06-21 09:37:44', NULL),
(237, 5, 'Notify Admin on Crypto Exchange', 'notify-admin-on-crypto-exchange', '', '', 'ru', 'email', 'Active', 'Crypto Exchange', '2024-06-21 09:37:44', NULL),
(238, 6, 'Notify Admin on Crypto Exchange', 'notify-admin-on-crypto-exchange', '', '', 'es', 'email', 'Active', 'Crypto Exchange', '2024-06-21 09:37:44', NULL),
(239, 7, 'Notify Admin on Crypto Exchange', 'notify-admin-on-crypto-exchange', '', '', 'tr', 'email', 'Active', 'Crypto Exchange', '2024-06-21 09:37:44', NULL),
(240, 8, 'Notify Admin on Crypto Exchange', 'notify-admin-on-crypto-exchange', '', '', 'ch', 'email', 'Active', 'Crypto Exchange', '2024-06-21 09:37:44', NULL),
(241, 1, 'Notify User on Crypto Exchange', 'notify-user-on-crypto-exchange', 'Crypto Exchange Notification', 'Hi <b>{user}</b>,\r\n                    <br><br>We would like to inform you that the transaction for <b>{transaction_type}</b> with the ID #<b>{uuid}</b> has been updated to <b>{status}</b> by the system administrator.<br></div><b><br>\r\n                    <br><br><b><u><i>Here’s a brief overview of the Transaction:</i></u></b>\r\n                    <br><br><b><u>Exchange Amount:</u></b> {amount}\r\n                    <br><br><b><u>Fee:</u></b> {fee}\r\n                    <br><br><b><u>Get Amount:</u></b> {get_amount}\r\n                    <br><br><b><u>Send via:</u></b> {send_via}\r\n                    <br><br><b><u>Receive via:</u></b> {receive_via}\r\n                    <br><br><b><u>Exchange at:</u></b> {created_at}\r\n                    <br><br>If you have any questions, please feel free to reply to this email.\r\n                    <br><br>Regards,\r\n                    <br><b>{soft_name}</b>', 'en', 'email', 'Active', 'Crypto Exchange', '2024-06-21 09:37:44', NULL),
(242, 2, 'Notify User on Crypto Exchange', 'notify-user-on-crypto-exchange', '', '', 'ar', 'email', 'Active', 'Crypto Exchange', '2024-06-21 09:37:44', NULL),
(243, 3, 'Notify User on Crypto Exchange', 'notify-user-on-crypto-exchange', '', '', 'fr', 'email', 'Active', 'Crypto Exchange', '2024-06-21 09:37:44', NULL),
(244, 4, 'Notify User on Crypto Exchange', 'notify-user-on-crypto-exchange', '', '', 'pt', 'email', 'Active', 'Crypto Exchange', '2024-06-21 09:37:44', NULL),
(245, 5, 'Notify User on Crypto Exchange', 'notify-user-on-crypto-exchange', '', '', 'ru', 'email', 'Active', 'Crypto Exchange', '2024-06-21 09:37:44', NULL),
(246, 6, 'Notify User on Crypto Exchange', 'notify-user-on-crypto-exchange', '', '', 'es', 'email', 'Active', 'Crypto Exchange', '2024-06-21 09:37:44', NULL),
(247, 7, 'Notify User on Crypto Exchange', 'notify-user-on-crypto-exchange', '', '', 'tr', 'email', 'Active', 'Crypto Exchange', '2024-06-21 09:37:44', NULL),
(248, 8, 'Notify User on Crypto Exchange', 'notify-user-on-crypto-exchange', '', '', 'ch', 'email', 'Active', 'Crypto Exchange', '2024-06-21 09:37:44', NULL),
(249, 1, 'Notify User on Crypto Exchange', 'crypto-transaction-status-update', 'Crypto Exchange Status Update', 'Hi {user}, The transaction {transaction_type} with ID #{uuid} has been updated to {status}  by the administrator.Regards, {soft_name}.', 'en', 'sms', 'Active', 'Crypto Exchange', '2024-06-21 09:37:44', NULL),
(250, 2, 'Notify User on Crypto Exchange', 'crypto-transaction-status-update', '', '', 'ar', 'sms', 'Active', 'Crypto Exchange', '2024-06-21 09:37:44', NULL),
(251, 3, 'Notify User on Crypto Exchange', 'crypto-transaction-status-update', '', '', 'fr', 'sms', 'Active', 'Crypto Exchange', '2024-06-21 09:37:44', NULL),
(252, 4, 'Notify User on Crypto Exchange', 'crypto-transaction-status-update', '', '', 'pt', 'sms', 'Active', 'Crypto Exchange', '2024-06-21 09:37:44', NULL),
(253, 5, 'Notify User on Crypto Exchange', 'crypto-transaction-status-update', '', '', 'ru', 'sms', 'Active', 'Crypto Exchange', '2024-06-21 09:37:44', NULL),
(254, 6, 'Notify User on Crypto Exchange', 'crypto-transaction-status-update', '', '', 'es', 'sms', 'Active', 'Crypto Exchange', '2024-06-21 09:37:44', NULL),
(255, 7, 'Notify User on Crypto Exchange', 'crypto-transaction-status-update', '', '', 'tr', 'sms', 'Active', 'Crypto Exchange', '2024-06-21 09:37:44', NULL),
(256, 8, 'Notify User on Crypto Exchange', 'crypto-transaction-status-update', '', '', 'ch', 'sms', 'Active', 'Crypto Exchange', '2024-06-21 09:37:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exchange_directions`
--

CREATE TABLE `exchange_directions` (
  `id` int(10) UNSIGNED NOT NULL,
  `from_currency_id` int(10) UNSIGNED NOT NULL,
  `to_currency_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) NOT NULL,
  `exchange_from` varchar(30) NOT NULL DEFAULT 'local',
  `exchange_rate` decimal(20,8) DEFAULT NULL,
  `fees_percentage` decimal(20,8) NOT NULL DEFAULT 0.00000000,
  `fees_fixed` decimal(20,8) NOT NULL DEFAULT 0.00000000,
  `min_amount` decimal(20,8) NOT NULL DEFAULT 0.00000000,
  `max_amount` decimal(20,8) NOT NULL DEFAULT 0.00000000,
  `payment_instruction` text DEFAULT NULL,
  `gateways` text DEFAULT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` varchar(191) NOT NULL,
  `designation` varchar(191) NOT NULL,
  `image` varchar(191) NOT NULL,
  `content` text NOT NULL,
  `rating` tinyint(4) NOT NULL DEFAULT 5 COMMENT '1 to 5',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees_limits`
--

CREATE TABLE `fees_limits` (
  `id` int(10) UNSIGNED NOT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `transaction_type_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_method_id` int(10) UNSIGNED DEFAULT NULL,
  `charge_percentage` decimal(20,8) NOT NULL DEFAULT 0.00000000,
  `charge_fixed` decimal(20,8) NOT NULL DEFAULT 0.00000000,
  `min_limit` decimal(20,8) NOT NULL DEFAULT 1.00000000,
  `max_limit` decimal(20,8) DEFAULT NULL,
  `processing_time` varchar(4) DEFAULT '0' COMMENT 'time in days',
  `has_transaction` varchar(3) NOT NULL COMMENT 'Yes or No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ticket_id` int(10) UNSIGNED DEFAULT NULL,
  `ticket_reply_id` int(10) UNSIGNED DEFAULT NULL,
  `filename` varchar(191) DEFAULT NULL,
  `originalname` varchar(191) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `short_name` varchar(5) NOT NULL,
  `flag` varchar(100) DEFAULT NULL,
  `default` varchar(3) NOT NULL DEFAULT '0' COMMENT '1 or 0',
  `deletable` varchar(5) NOT NULL DEFAULT 'Yes' COMMENT 'Yes or No',
  `status` varchar(11) NOT NULL DEFAULT 'Active' COMMENT 'Active or Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `short_name`, `flag`, `default`, `deletable`, `status`) VALUES
(1, 'English', 'en', '1530358989.png', '1', 'No', 'Active'),
(2, 'عربى', 'ar', '1530359409.png', '0', 'No', 'Active'),
(3, 'Français', 'fr', '1530359431.png', '0', 'No', 'Active'),
(4, 'Português', 'pt', '1530359450.png', '0', 'No', 'Active'),
(5, 'Русский', 'ru', '1530359474.png', '0', 'No', 'Active'),
(6, 'Español', 'es', '1530360151.png', '0', 'No', 'Active'),
(7, 'Türkçe', 'tr', '1530696845.png', '0', 'No', 'Active'),
(8, '中文 (繁體)', 'ch', '1531227913.png', '0', 'No', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `merchants`
--

CREATE TABLE `merchants` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `merchant_group_id` int(10) UNSIGNED DEFAULT NULL,
  `merchant_uuid` varchar(13) DEFAULT NULL COMMENT 'Unique ID for each Merchant',
  `business_name` varchar(191) NOT NULL,
  `site_url` varchar(100) NOT NULL,
  `type` varchar(11) NOT NULL COMMENT 'standard or express',
  `note` varchar(255) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `fee` decimal(20,8) DEFAULT 0.00000000,
  `status` varchar(12) NOT NULL DEFAULT 'Moderation' COMMENT 'Moderation, Disapproved, Approved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `merchant_apps`
--

CREATE TABLE `merchant_apps` (
  `id` int(10) UNSIGNED NOT NULL,
  `merchant_id` int(10) UNSIGNED NOT NULL,
  `client_id` varchar(50) NOT NULL,
  `client_secret` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `merchant_groups`
--

CREATE TABLE `merchant_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `fee` decimal(20,8) DEFAULT 0.00000000,
  `fee_bearer` varchar(10) NOT NULL DEFAULT 'Merchant' COMMENT 'Merchant, User',
  `is_default` varchar(5) NOT NULL DEFAULT 'No' COMMENT 'No or Yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `merchant_groups`
--

INSERT INTO `merchant_groups` (`id`, `name`, `description`, `fee`, `fee_bearer`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Premium', 'This is the premium merchant group', 0.51234567, 'Merchant', 'No', NULL, NULL),
(2, 'Gold', 'This is the gold merchant group', 1.99933344, 'Merchant', 'No', NULL, NULL),
(3, 'Silver', 'This is the silver merchant group', 1.50000044, 'Merchant', 'Yes', NULL, NULL),
(4, 'Bronze', 'This is the bronze merchant group', 2.77711194, 'Merchant', 'No', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `merchant_payments`
--

CREATE TABLE `merchant_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `merchant_id` int(10) UNSIGNED DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_method_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `gateway_reference` varchar(50) DEFAULT NULL,
  `order_no` varchar(50) DEFAULT NULL,
  `item_name` varchar(150) DEFAULT NULL,
  `uuid` varchar(13) DEFAULT NULL,
  `fee_bearer` varchar(10) NOT NULL COMMENT 'Merchant, User',
  `percentage` decimal(20,8) DEFAULT 0.00000000,
  `charge_percentage` decimal(20,8) DEFAULT 0.00000000,
  `charge_fixed` decimal(20,8) DEFAULT 0.00000000,
  `amount` decimal(20,8) DEFAULT 0.00000000,
  `total` decimal(20,8) DEFAULT 0.00000000,
  `status` varchar(11) NOT NULL DEFAULT 'Success' COMMENT 'Pending, Success, Refund, Blocked',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `metas`
--

CREATE TABLE `metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(191) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `keywords` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `metas`
--

INSERT INTO `metas` (`id`, `url`, `title`, `description`, `keywords`) VALUES
(1, 'help', 'Help', 'Help', ''),
(2, 'about-us', 'About Us', 'About Us', ''),
(3, 'contact-us', 'Contact Us', 'Contact Us', ''),
(4, 'header', 'Header', 'Header', ''),
(5, 'login', 'Login', 'Login', ''),
(6, 'register', 'Register', 'Register', ''),
(7, '/', 'Home', 'Home', ''),
(8, 'dashboard', 'Dashboard', 'Dashboard', ''),
(9, 'moneytransfer', 'Money Transfer', 'Money Transfer', ''),
(10, 'transactions', 'Transactions', 'Transactions', ''),
(11, 'exchanges', 'Money Exchange', 'Money Exchange', ''),
(12, 'exchange', 'Money Exchange', 'Money Exchange', ''),
(13, 'merchants', 'Merchant', 'Merchant', ''),
(14, 'merchant/add', 'Add Merchant', 'Add Merchant', ''),
(15, 'request_payments', 'Request Payments', 'Request Payments', ''),
(16, 'request_payment/add', 'Request Payment', 'Request Payment', ''),
(17, 'request_payment/edit/{id}', 'Request Payment', 'Request Payment', ''),
(18, 'request_payment/detail/{id}', 'Request Payment', 'Request Payment', ''),
(19, 'request_payment/completes', 'Request Payment', 'Request Payment', ''),
(20, 'exchange/view/{id}', 'Money Exchange', 'Money Exchange', ''),
(21, 'merchant/edit/{id}', 'Edit Merchant', 'Edit Merchant', ''),
(22, 'merchant/payments', 'Merchant payments', 'Merchant payments', ''),
(23, 'deposit', 'Deposit', 'Deposit', ''),
(24, 'deposit/method/{id}', 'Deposit Amount', 'Deposit Amount', ''),
(25, 'deposit/stripe_payment', 'Deposit With Stripe', 'Deposit With Stripe', ''),
(26, 'payout', 'Withdraw', 'Withdraw', ''),
(27, 'withdrawal/method/{id}', 'Withdraw', 'Withdraw', ''),
(28, 'payouts', 'Withdrawals', 'Withdrawals', ''),
(29, 'payout/store', 'Withdraw', 'Withdraw', ''),
(30, 'transactions/{id}', 'Transactions', 'Transactions', ''),
(31, 'request_payment/accept/{id}', 'Request Payment', 'Request Payment', ''),
(32, 'request_payment/accept/{id}', 'Request Payment', 'Request Payment', ''),
(33, 'disputes', 'Disputes', 'Disputes', ''),
(34, 'merchant/detail/{id}', 'View Merchant', 'View Merchant', ''),
(35, 'dispute/discussion/{id}', 'Dispute Details', 'Dispute Details', ''),
(36, 'dispute/add/{id}', 'Dispute Add', 'Dispute Add', ''),
(37, 'send-money', 'Send Money', 'Send Money', ''),
(38, 'request-money', 'Request Money', 'Request Money', ''),
(39, 'news', 'News', 'News', ''),
(40, 'profile', 'User Profile', 'User Profile', ''),
(41, 'tickets', 'Tickets', 'Tickets', ''),
(42, 'ticket/add', 'Add Ticket', 'Add Ticket', ''),
(43, 'ticket/reply/{id}', 'Ticket Reply', 'Ticket Reply', ''),
(44, 'exchange_of_base_currency', 'Money Exchange', 'Money Exchange', ''),
(45, 'exchange/exchange-of-base-currency-confirm', 'Money Exchange', 'Money Exchange', ''),
(46, 'deposit/stripe_payment_store', 'Deposit With Stripe', 'Deposit With Stripe', ''),
(47, 'payout/setting', 'Withdraw', 'Withdraw', ''),
(48, 'send-money-confirm', 'Money Transfer', 'Money Transfer', ''),
(49, 'exchange_to_base_currency', 'Money Exchange', 'Money Exchange', ''),
(50, 'exchange/exchange-to-base-currency-confirm', 'Money Exchange', 'Money Exchange', ''),
(51, 'portfolio', 'Portfolio', 'Portfolio', ''),
(52, 'request_payment/store', 'Request Payment', 'Request Payment', ''),
(53, 'forget-password', 'Forgot Password', 'Forgot Password', ''),
(54, 'password/resets/{token}', 'Reset Password', 'Reset Password', ''),
(55, 'request-money-confirm', 'Request Money', 'Request Money', ''),
(56, 'request_payment/accepted', 'Request Payment', 'Request Payment', ''),
(57, 'request_payment/accept-money-confirm', 'Request Payment', 'Request Payment', ''),
(58, 'deposit/stripe_payment_store', 'Deposit With Stripe', 'Deposit With Stripe', ''),
(59, 'policies', 'Policies', 'Policies', ''),
(60, 'transfer', 'Money Transfer', 'Money Transfer', ''),
(61, 'withdrawal/confirm-transaction', 'Withdraw', 'Withdraw', ''),
(62, 'request', 'Request Payment', 'Request Payment', ''),
(63, 'deposit/payumoney_success', 'Deposit With PayUMoney', 'Deposit With PayUMoney', ''),
(64, 'deposit/payment_success', 'Deposit Success', 'Deposit With PayMoney Success', ''),
(65, 'developer', 'Developer', 'Developer Page', ''),
(66, 'phone-verification', 'Verfy Phone', 'Verfy Phone', ''),
(67, 'authenticate', '2-Factor Authentication', '2-Factor Authentication', ''),
(68, 'profile/2fa', '2-FA', '2-FA', ''),
(69, '2fa', '2-Factor Authentication', '2-Factor Authentication', ''),
(70, 'deposit/bank-payment', 'Deposit', 'Deposit', ''),
(71, 'bank-transfer', 'Bank Transfer', 'Bank Transfer', ''),
(72, 'bank-transfer/confirm', 'Bank Transfer', 'Bank Transfer', ''),
(73, 'bank-transfer/success', 'Bank Transfer', 'Bank Transfer', ''),
(74, 'google2fa', 'Google 2FA', 'Google 2FA', ''),
(75, 'profile/personal-id', 'Identity Verification', 'Identity Verification', ''),
(76, 'profile/personal-address', 'Address Verification', 'Address Verification', ''),
(77, 'exchange-of-money', 'Money Exchange', 'Money Exchange', ''),
(78, 'exchange-of-money-success', 'Money Exchange', 'Money Exchange', ''),
(79, 'deposit/bank-payment', 'Deposit', 'Deposit', ''),
(80, 'deposit/payeer/payment/success', 'Deposit With Payeer', 'Deposit With Payeer', ''),
(81, 'deposit/checkout/payment/success', 'Deposit with 2checkout', 'Deposit with 2checkout', ''),
(82, 'merchant/payment', 'Merchant Payment', 'Merchant Payment', ''),
(83, 'check-user-status', 'Suspended!', 'Suspended', ''),
(84, 'check-request-creator-suspended-status', 'Suspended', 'Suspended', ''),
(85, 'check-request-creator-inactive-status', 'Inactive', 'Inactive', ''),
(86, 'deposit/stripe-payment/success', 'Deposit With Stripe', 'Deposit With Stripe', ''),
(87, 'deposit/paypal-payment/success', 'Deposit With PayPal', 'Deposit With PayPal', ''),
(88, 'deposit/bank-payment/success', 'Deposit With Bank', 'Deposit With Bank', ''),
(89, 'wallet-list', 'Wallet List', 'Wallet List', ''),
(90, 'deposit/store', 'Deposit Fund', 'Deposit', ''),
(91, 'deposit/coinpayment-transaction-info', 'Coinpayment Summery', 'Coinpayment Summery', ''),
(92, 'deposit/paypal-payment/success/{amount}', 'Deposit With PayPal', 'Deposit With PayPal', ''),
(93, 'register/store-personal-info', 'Register User Type', 'Register User Type', ''),
(94, 'privacy-policy', 'Privacy Policy', 'Privacy Policy', ''),
(95, 'deposit/confirm', 'Deposit confirm', 'Deposit confirm', ''),
(96, 'deposit/success', 'Deposit Success', 'Deposit Success', ''),
(97, 'crypto/send/tatumio/{walletCurrencyCode}/{walletId}', 'Crypto Send', 'Crypto Send', ''),
(98, 'crypto/send/tatumio/confirm', 'Send Crypto Confirm', 'Send Crypto Confirm', ''),
(99, 'crypto/send/tatumio/success', 'Send Crypto Success', 'Send Crypto Success', ''),
(100, 'crypto/receive/tatumio/{walletCurrencyCode}/{walletId}', 'Crypto Receive', 'Crypto Receive', ''),
(101, 'crypto-exchange/create', 'Crypto Exchange', 'Crypto Exchange', ''),
(102, 'crypto-exchange/verification', 'Crypto Identity Verification', 'Identity Verification', ''),
(103, 'crypto-exchange/receiving-info', 'Crypto Receiving Info', 'Receiving Info', ''),
(104, 'crypto-exchange/payment', 'Crypto Payment Info', 'Crypto Payment Info', ''),
(105, 'crypto-exchange/make-payment', 'Crypto Payment Info', 'Crypto Payment Info', ''),
(106, 'crypto-exchange/success', 'Crypto Transaction Success', 'Crypto Transaction Success', ''),
(107, 'crypto-exchange/buy-sell', 'Crypto Exchange', 'Crypto Exchange', ''),
(108, 'crypto-buy-sell-confirm', 'Crypto Transaction Confirm', 'Crypto Transaction Confirm', ''),
(109, 'crypto-exchange/confirm', 'Crypto Transaction Confirm', 'Crypto Transaction Confirm', ''),
(110, 'crypto-buy-sell/success', 'Crypto Transaction Success', 'Crypto Transaction Success', ''),
(111, 'crypto-exchange/bank-payment', 'Crypto Transaction Success', 'Crypto Transaction Success', ''),
(112, 'crypto-exchange/track-transaction/{uuid}', 'Track Transaction', 'Track Transaction', ''),
(113, 'crypto-exchange/paypal-payment/success/{amount}', 'Crypto Transaction Success', 'Crypto Transaction Success', ''),
(114, 'crypto-exchange/buy-sell-list', 'Crypto Transaction List', 'Crypto Transaction List', ''),
(115, 'crypto-exchange/complete', 'Crypto Transaction Success', 'Crypto Transaction Success', ''),
(116, 'about-us', 'About Us', 'About Us', ''),
(117, '', NULL, NULL, ''),
(118, 'delicious-fried-chicken', NULL, NULL, ''),
(119, 'new-blog', NULL, NULL, ''),
(120, 'privacy-policy', 'Privacy Policy', 'Privacy Policy', ''),
(121, 'terms-and-conditions', 'Terms and Conditions', 'Terms and Conditions', '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(2, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(3, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(4, '2016_06_01_000004_create_oauth_clients_table', 1),
(5, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2019_09_01_0000000002_create_email_configs_table', 1),
(8, '2019_09_01_000000001_entrust_setup_tables', 1),
(9, '2019_09_01_0000001_create_activity_logs_table', 1),
(10, '2019_09_01_0000002_create_backups_table', 1),
(11, '2019_09_01_0000003_create_countries_table', 1),
(12, '2019_09_01_0000004_create_metas_table', 1),
(13, '2019_09_01_0000005_create_settings_table', 1),
(14, '2019_09_01_0000006_create_admins_table', 1),
(15, '2019_09_01_0000007_add_picture_to_admins_table', 1),
(16, '2019_09_01_0000010_create_payment_methods_table', 1),
(17, '2019_09_01_0000011_create_merchant_groups_table', 1),
(18, '2019_09_01_0000013_create_preferences_table', 1),
(19, '2019_09_01_0000014_create_reasons_table', 1),
(20, '2019_09_01_0000015_create_time_zones_table', 1),
(21, '2019_09_01_0000016_create_transaction_types_table', 1),
(22, '2019_09_01_0000017_create_socials_table', 1),
(23, '2019_09_01_0000018_create_ticket_statuses_table', 1),
(24, '2019_09_01_0000019_create_currencies_table', 1),
(25, '2019_09_01_0000020_create_currency_payment_methods_table', 1),
(26, '2019_09_01_0000021__create_users_table', 1),
(27, '2019_09_01_0000021_add_picture_to_users_table', 1),
(28, '2019_09_01_0000022_create_user_details_table', 1),
(29, '2019_09_01_0000023_create_fees_limits_table', 2),
(30, '2019_09_01_0000024_create_tickets_table', 2),
(31, '2019_09_01_0000025_create_ticket_replies_table', 2),
(32, '2019_09_01_0000026_create_files_table', 2),
(33, '2019_09_01_0000027_create_merchants_table', 2),
(34, '2019_09_01_0000028_create_merchant_apps_table', 2),
(35, '2019_09_01_0000029__create_banks_table', 2),
(36, '2019_09_01_0000029_create_merchant_payments_table', 2),
(37, '2019_09_01_0000030_create_deposits_table', 2),
(38, '2019_09_01_0000031_create_payout_settings_table', 2),
(39, '2019_09_01_0000032_create_withdrawals_table', 2),
(40, '2019_09_01_0000033_create_withdrawal_details_table', 2),
(41, '2019_09_01_0000034_create_transfers_table', 2),
(42, '2019_09_01_0000035_create_wallets_table', 2),
(43, '2019_09_01_0000036_create_currency_exchanges_table', 2),
(44, '2019_09_01_0000037_create_request_payments_table', 2),
(45, '2019_09_01_0000038_create_transactions_table', 2),
(46, '2019_09_01_0000039_create_disputes_table', 2),
(47, '2019_09_01_0000040_create_dispute_discussions_table', 2),
(48, '2019_09_01_0000043_create_app_tokens_table', 2),
(49, '2019_09_01_0000044_create_app_transactions_infos_table', 2),
(50, '2019_09_01_0000045_create_verify_users_table', 2),
(51, '2019_09_01_0000046_create_device_logs_table', 2),
(52, '2019_09_01_0000047_create_qr_codes_table', 2),
(53, '2019_09_01_0000048_create_password_resets_table', 2),
(54, '2019_09_01_0000049_create_document_verifications_table', 2),
(55, '2019_09_01_000004_create_app_store_credentials_table', 2),
(56, '2019_09_01_000005_create_languages_table', 2),
(57, '2019_09_01_000007_create_email_templates_table', 2),
(58, '2019_09_01_000009_create_pages_table', 2),
(59, '2019_10_22_054304_create_notification_types_table', 2),
(60, '2019_10_22_054339_create_notification_settings_table', 2),
(61, '2020_01_27_101740_create_sms_configs_table', 2),
(62, '2021_07_12_071706_create_addons_table', 2),
(63, '2021_08_15_075359_create_coinpayment_log_trxes_table', 2),
(64, '2022_07_26_065815_create_crypto_providers_table', 2),
(65, '2022_07_26_070412_create_crypto_asset_settings_table', 2),
(66, '2022_07_26_080438_create_crypto_asset_api_logs_table', 2),
(67, '2023_06_12_110255_create_jobs_table', 2),
(68, '2023_11_05_042724_create_personal_access_tokens_table', 2),
(69, '2023_11_09_113702_create_parameters_table', 2),
(70, '2022_01_25_1643095694_create_crypto_exchanges_table', 3),
(71, '2022_01_25_1643096389_create_exchange_directions_table', 3),
(72, '2022_01_25_1643101829_create_phone_verification_table', 3),
(73, '2019_09_01_000009_create_blogs_table', 4),
(74, '2019_09_01_0000021_add_columns_to_document_verifications_table', 5),
(75, '2019_09_01_000009_create_feedbacks_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `notification_settings`
--

CREATE TABLE `notification_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `notification_type_id` int(10) UNSIGNED NOT NULL,
  `recipient_type` varchar(191) DEFAULT NULL,
  `recipient` varchar(191) DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_settings`
--

INSERT INTO `notification_settings` (`id`, `notification_type_id`, `recipient_type`, `recipient`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'email', NULL, 'No', NULL, NULL),
(2, 2, 'email', NULL, 'No', NULL, NULL),
(3, 3, 'email', NULL, 'No', NULL, NULL),
(4, 4, 'email', NULL, 'No', NULL, NULL),
(5, 5, 'email', NULL, 'No', NULL, NULL),
(6, 6, 'email', NULL, 'No', NULL, NULL),
(7, 1, 'sms', NULL, 'No', NULL, NULL),
(8, 2, 'sms', NULL, 'No', NULL, NULL),
(9, 3, 'sms', NULL, 'No', NULL, NULL),
(10, 4, 'sms', NULL, 'No', NULL, NULL),
(11, 5, 'sms', NULL, 'No', NULL, NULL),
(12, 6, 'sms', NULL, 'No', NULL, NULL),
(13, 7, 'email', NULL, 'No', NULL, NULL),
(14, 7, 'sms', NULL, 'No', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notification_types`
--

CREATE TABLE `notification_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `alias` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_types`
--

INSERT INTO `notification_types` (`id`, `name`, `alias`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Deposit', 'deposit', 'Active', NULL, NULL),
(2, 'Withdraw', 'withdraw', 'Active', NULL, NULL),
(3, 'Send', 'send', 'Active', NULL, NULL),
(4, 'Request', 'request', 'Active', NULL, NULL),
(5, 'Exchange', 'exchange', 'Active', NULL, NULL),
(6, 'Payment', 'payment', 'Active', NULL, NULL),
(7, 'Crypto Exchange', 'crypto-exchange', 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `secret` varchar(100) NOT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'agkL4ISxlzHE5z2zS2vwqZqqoF7ker3HMXo7De3v', 'http://localhost', 1, 0, 0, NULL, NULL),
(2, NULL, 'Laravel Password Grant Client', 'TwF6YvwSCLuVejXhUQCAqMaPAqhHZ29sEhhFfsM9', 'http://localhost', 0, 1, 0, NULL, NULL),
(3, NULL, 'Laravel Personal Access Client', 'YWG63Yjp0bcf7iL45MgK75Yc5Tq18KS9rcv8ltBM', 'http://localhost', 1, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL),
(3, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `position` varchar(40) DEFAULT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'active' COMMENT 'active or inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `url`, `content`, `position`, `status`, `created_at`, `updated_at`) VALUES
(1, 'About Us', 'about-us', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body><p>At Eclipto, our mission is to make cryptocurrency accessible to everyone. We believe that the future of finance lies in the power of digital assets, and our goal is to provide a simple, secure, and user-friendly platform for buying, selling, and swapping cryptocurrencies. Whether you&rsquo;re a seasoned trader or just starting out, Eclipto is here to guide you through the exciting world of crypto with ease.</p><p><br></p><h3><span style=\"font-size: 24px;\">Our Story</span></h3><p>Eclipto was born out of a shared passion for the transformative potential of cryptocurrency and a desire to make it more accessible to the everyday person. We saw the complexities and barriers that many people face when trying to enter the world of digital assets, and we knew there had to be a better way.</p><p>We started this journey because we believe that everyone should have the opportunity to participate in the new financial revolution. Cryptocurrency offers financial freedom, empowerment, and the ability to take control of one&rsquo;s assets, but the technical jargon and complex platforms were holding people back. That&rsquo;s why we created Eclipto&mdash;a platform designed to make crypto transactions simple, transparent, and secure.</p><p>Our goal is to break down the barriers that prevent people from engaging with digital currencies, offering them a straightforward way to buy, sell, and swap crypto assets. We strive to empower individuals, giving them the tools and confidence to take control of their financial future.</p><p>With Eclipto, we aim to help more people get into crypto, understand its potential, and make informed decisions&mdash;all while providing the security and peace of mind that they deserve.</p></body></html>\n', '[\"header\",\"footer\"]', 'active', '2024-06-30 23:17:53', '2024-08-15 10:13:14'),
(2, 'Privacy Policy', 'privacy-policy', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body><p><br></p><p><br></p><h1 data-pm-slice=\"0 0 []\">Global Privacy Policy</h1><p>Effective Date: 3rd May 2024</p><p>Eclipto (defined below under &ldquo;Our relationship to you&rdquo;) is committed to protecting the privacy of visitors to our websites and our customers. This Privacy Policy describes how we handle your personal data when you access our services, which include our content on the websites located at&nbsp;<u>eclipto.io</u>,&nbsp;<a href=\"https://buy.moonpay.com/\"><u>buy.</u></a><u>eclipto.io</u>,&nbsp;<a href=\"https://sell.moonpay.com/\"><u>sell.</u></a><u>eclipto.io</u>&nbsp;or any other websites, pages, features, or content we own or operate (collectively, the \"Site(s)\"), or any Eclipto API or third party applications relying on such an API, and related services (referred to collectively hereinafter as \"Services\").</p><p>If you have any questions about this Policy, please send them to unknown node<br><br></p><h2><br></h2><h2><span><li><p>Correspondence: Survey responses, information provided to our support team or user research team.</p><p><br></p><p><br></p></li><h3><span style=\"font-size: 24px;\">Information we collect automatically or generate about you</span></h3><h3><span style=\"font-size: 24px;\"><br></span></h3><p>This includes information we collect automatically, such as whenever you interact with the Sites or use the Services. This information helps us address customer support issues, improve the performance of our Sites and applications, provide you with a streamlined and personalized experience, and protect your account from fraud by detecting unauthorized access. Information collected automatically includes:</p><ul class=\"ak-ul\"><li><p>Online Identifiers: Geo location/tracking details, operating system, browser name and version, and/or personal IP addresses.</p></li><li><p>Usage Data: Authentication data, security questions, click-stream data, public social networking posts, and other data collected via cookies and similar technologies. Please read our&nbsp;<a href=\"https://www.moonpay.com/legal/cookie_policy\"><u>Cookie Policy</u></a>&nbsp;for more information.</p><p><br></p></li></ul><h3><span style=\"font-size: 24px;\">Information collected from third parties</span></h3><h3><span style=\"font-size: 24px;\"><br></span></h3><p>This includes information we may obtain about you from third party sources. The main types of third parties we receive your personal information from are:</p><ul class=\"ak-ul\"><li><p>Public Databases, Credit Bureaus, ID Verification Partners, and Affiliate Partners&nbsp;in order to verify your identity in accordance with applicable law. ID verification partners such as Experian use a combination of government records and publicly available information about you to verify your identity. Such information may include your name, address, job role, public employment profile, credit history, status on any sanction&rsquo;s lists maintained by public authorities, and other relevant data.</p></li><li><p>Blockchain Data&nbsp;to ensure parties using our Services are not engaged in illegal or prohibited activity and to analyze transaction trends for research and development purposes.</p><p><br></p><p><br></p></li></ul><h3><span style=\"font-size: 24px;\">Anonymized and aggregated data</span></h3><h3><span style=\"font-size: 24px;\"><br></span></h3><p>In addition to the categories of personal information described above, Eclipto will also process anonymized information and data that is not processed by reference to a specific individual. Types of data we may anonymize include transaction data, click-stream data, performance metrics and fraud indicators.</p><p><br></p><p><br></p><h3><span style=\"font-size: 24px;\">Job Applicants</span></h3><p><br></p><p>If you apply for a job posting, we collect information necessary to process your application or to retain you as an employee. This may include, among other things, your name, contact information (email address and phone number), CV/Resume, and national identifier (e.g., Social Security Number). Providing this information is required for employment. We have a legitimate interest in using your information to evaluate candidates for job openings. We also use information about job applicants in anticipation of a contract of employment. In some contexts, we are also required by law to collect information about applicants.</p><p><br></p><p><br></p><h2><span style=\"font-size: 24px;\">How we use your personal information</span></h2><h2><span style=\"font-size: 24px;\"><br></span></h2><p>We may use your information in the following ways and for the following purposes:</p><ol start=\"1\" class=\"ak-ol\"><li><p>To maintain legal and regulatory compliance</p></li></ol><p>Eclipto needs to process your personal information in order to comply with anti-money laundering and security laws. In addition, when you seek to link a bank account to your Eclipto account, we may require you to provide additional information which we may use in collaboration with service providers acting on our behalf to verify your identity or address, and/or to manage risk as required under applicable law. We also process your personal information in order to help detect, prevent, and mitigate fraud and abuse of our Services and to protect you against account compromise or funds loss. If you do not provide personal information required by law, we will have to close your account.</p><ol start=\"2\" class=\"ak-ol\"><li><p>To provide Eclipto\'s Services</p></li></ol><p>Third parties that we use such as identity verification services may also access and/or collect your personal information when providing identity verification and/or fraud prevention services. In addition, we may need to collect fees based on your use of our Services. We collect information about your account usage and closely monitor your interactions with our Services. The consequences of not processing your personal information for such purposes is the termination of your account.</p><ol start=\"3\" class=\"ak-ol\"><li><p>To provide communications and customer services</p></li></ol><p>According to your preferences and in compliance with applicable law, we may send you marketing communications to inform you about events, to deliver targeted marketing and to share promotional offers. If you are a new customer, we will contact you by electronic means for marketing purposes only if you have consented to such communication. If you do not want us to send you marketing communications, please go to your account settings to opt-out or submit a request via&nbsp;unknown node</p><p>We may send you service updates regarding administrative or account-related information, security issues, or other transaction-related information. These communications are important to share developments relating to your account that may affect how you can use our Services. You cannot opt-out of receiving critical service communications.</p><p>We also process your personal information when you contact us to resolve any questions, disputes, collect fees, or to troubleshoot problems. Without processing your personal information for such purposes, we cannot respond to your requests and ensure your uninterrupted use of the Services.</p><ol start=\"4\" class=\"ak-ol\"><li><p>In our legitimate business interests</p></li></ol><p>Sometimes the processing of your personal information is necessary for our legitimate business interests, such as:</p><ul class=\"ak-ul\"><li><p>recruitment and hiring;</p></li><li><p>quality control and staff training;</p></li><li><p>to enhance security, monitor and verify identity or service access, and to combat spam or other malware or security risks;</p></li><li><p>research and development purposes;</p></li><li><p>to enhance your experience of our Services and Sites; or</p></li><li><p>to facilitate corporate acquisitions, mergers, or transactions.</p><p><br></p><p><br></p></li></ul><h3><span style=\"font-size: 24px;\">Legal bases for processing your information</span></h3><h3><span style=\"font-size: 24px;\"><br></span></h3><p>For individuals located in the European Economic Area, United Kingdom or Switzerland at the time their personal data is collected, we rely on legal bases for processing your information under the relevant data protection legislation. These bases mean we will only process your data where we are legally required to, where processing is necessary to perform any contracts we entered with you (or to take steps at your request prior to entering into a contract with you), for our legitimate interests to operate our business, to protect Eclipto\'s or your property rights, or where we have obtained your consent to do so. We will not use your personal information for purposes other than those purposes we have disclosed to you, without your permission.</p><p><br></p><p><br></p><h2><span style=\"font-size: 24px;\">Disclosing your personal information to third parties</span></h2><h2><span style=\"font-size: 24px;\"><br></span></h2><p>We allow your personal information to be accessed only by those who require access to perform their work and share it only with third parties who have a legitimate purpose for accessing it. Eclipto will never sell or rent your personal information to third parties without your explicit consent. We will only share your personal information with the following types of third parties:</p><ul class=\"ak-ul\"><li><p>Identity verification services to prevent fraud. This allows Eclipto to confirm your identity by comparing the information you provide us to public records and other third party databases.</p></li><li><p>Financial institutions which we partner with to process payments you have authorized.</p></li><li><p>Service providers and professional advisors under contract who help with parts of our business operations. Our contracts require these service providers to only use your information in connection with the services they perform for us and prohibit them from sharing your information with anyone else.</p></li><li><p>Companies or other third parties in connection with business transfers or bankruptcy proceedings.</p></li><li><p>Companies or other entities that purchase Eclipto assets.</p></li><li><p>Law enforcement, regulators, or any other third parties when we are compelled to do so by applicable law or if we have a good faith belief that such use is reasonably necessary, including to: protect the rights, property, or safety of Eclipto, Eclipto customers, third party, or the public; comply with legal obligations or requests; enforce our terms and other agreements; or detect or otherwise address security, fraud, or technical issues.</p><p><br></p><p><br></p></li></ul><h2><span style=\"font-size: 24px;\">Third-party sites and services</span></h2><p><br></p><p>If you authorize one or more third-party applications to access your Eclipto Services, then information you have provided to Eclipto may be shared with those third parties. A connection you authorize or enable between your Eclipto account and a non-Eclipto account, payment instrument, or platform is considered an &ldquo;account connection.&rdquo; Unless you provide further permissions, Eclipto will not authorize these third parties to use this information for any purpose other than to facilitate your transactions using Eclipto Services. Please note that third parties you interact with, should have their own privacy policies and Eclipto is not responsible for their operations or their use of data they collect.</p><p>Examples of account connections include:</p><ul class=\"ak-ul\"><li><p>Merchants: If you use your Eclipto account to conduct a transaction with a third party merchant, the merchant may provide data about you and your transaction to us.</p></li><li><p>Your financial services providers: For example, if you send us funds from your bank account, your bank will provide us with identifying information in addition to information about your account in order to complete the transaction.</p><p><br></p><p><br></p></li></ul><p></p><h2><span style=\"font-size: 24px;\">How we protect and store personal information</span></h2><p><br></p><p>Eclipto implements and maintains reasonable measures to protect your information. Customer files are protected with safeguards according to the sensitivity of the relevant information. Reasonable controls (such as restricted access) are placed on our computer systems. Physical access to areas where personal information is gathered, processed or stored is limited to authorized employees.</p><p>We may store and process all or part of your personal and transactional information, including certain payment information, such as your encrypted bank account and/or routing numbers, in the US and elsewhere in the world where our facilities or service providers are located. We protect your personal information by maintaining physical, electronic, and procedural safeguards in compliance with the applicable laws and regulations.</p><p>As a condition of employment, Eclipto&rsquo;s employees are required to follow all applicable laws and regulations, including in relation to data protection law. Access to sensitive personal information is limited to those employees who need to it to perform their roles. Unauthorized use or disclosure of confidential customer information by a Eclipto employee is prohibited and may result in disciplinary measures.</p><p>When you contact a Eclipto employee about your file, you may be asked for some personal details. This type of safeguard is designed to ensure that only you, or someone authorized by you, has access to your file. You also play a vital role in protecting your own personal information. When registering with our Services, choose a password of sufficient length and complexity, don&rsquo;t reveal it to any third-parties and immediately notify us if you become aware of any unauthorized access to or use of your account.</p><p><br></p><p><br></p><h2><span style=\"font-size: 24px;\">Retention of personal information</span></h2><p><br></p><p>How long we hold your personal information for will vary. The retention period will be determined by the following criteria:</p><ul class=\"ak-ul\"><li><p>the purpose for which we are using your personal information &ndash; we will need to keep the information for as long as is necessary for that purpose; and</p></li><li><p>legal obligations &ndash; laws or regulation may set a minimum period for which we have to keep your personal information.</p></li></ul><p>If you have further questions about our data retention practices, please contact us at&nbsp;unknown node</p><p>If we anonymize your personal information so that it can no longer be associated with you, it will no longer be considered personal information, and we can use it without further notice to you.</p><p><br></p><p><br></p><h2><span style=\"font-size: 24px;\">Children\'s personal information</span></h2><p><br></p><p>We do not knowingly request to collect personal information from any person under the age of 18. If a user submitting personal information is suspected of being younger than 18 years of age, Eclipto will require the user to close his or her account and will not allow the user to continue using our Services. We will also take steps to delete the information as soon as possible. Please notify us if you know of any individuals under the age of 18 using our Services so we can take action to prevent access to our Services.</p><p><br></p><p><br></p><h2><span style=\"font-size: 24px;\">Your privacy rights</span></h2><h2><span style=\"font-size: 24px;\"><br></span></h2><p>Depending on applicable law of where you reside, you may be able to assert certain rights related to your personal information. These rights include:</p><ul class=\"ak-ul\"><li><p>the right to obtain information regarding the processing of your personal information and access to the personal information which we hold about you;</p></li><li><p>the right to withdraw your consent to the processing of your personal information at any time. Please note, however, that we may still be entitled to process your personal information if we have another legitimate reason for doing so. For example, we may need to retain personal information to comply with a legal obligation;</p></li><li><p>in some circumstances, the right to receive some personal information in a structured, commonly used and machine-readable format and/or request that we transmit those data to a third party where this is technically feasible. Please note that this right only applies to personal information which you have provided directly to Eclipto;</p></li><li><p>the right to request that we rectify your personal information if it is inaccurate or incomplete;</p></li><li><p>the right to request that we erase your personal information in certain circumstances. Please note that there may be circumstances where you ask us to erase your personal information, but we are legally entitled to retain it;</p></li><li><p>the right to object to, or request that we restrict, our processing of your personal information in certain circumstances. Again, there may be circumstances where you object to, or ask us to restrict, our processing of your personal information but we are legally entitled to refuse that request; and</p></li><li><p>the right to lodge a complaint with the relevant data protection regulator if you think that any of your rights have been infringed by us.</p></li></ul><p>You can exercise your rights by contacting us using the details listed below. Further information about your rights may be obtained by contacting the supervisory data protection authority located in your jurisdiction.</p><p><br></p><p><br></p><h2><span style=\"font-size: 24px;\">How to contact us</span></h2><p><br></p><p>If you have questions or concerns regarding this Privacy Policy, or if you have a complaint, please contact us at unknown node, or by writing to us at the Eclipto entity addresses provided above.</p><p>If you reside in the EU, you can file a complaint with the International Centre for Dispute Resolution by phone at +1.212.484.4181, or through your relevant data protection authority.</p><p>In the UK, the data protection authority is the&nbsp;<a href=\"https://ico.org.uk/\"><u>Information Commissioner\'s Office</u></a>.</p><p><br></p><p><br></p><h3><span style=\"font-size: 24px;\">Facts: What does Eclipto do with your personal information?</span></h3><h3><span style=\"font-size: 24px;\"><br></span></h3><ul class=\"ak-ul\"><li><p>Why?&nbsp;Financial companies choose how they share your personal information. Federal law gives consumers the right to limit some but not all sharing. Federal law also requires us to tell you how we collect, share, and protect your personal information. Please read this notice carefully to understand what we do.</p></li><li><p>What?&nbsp;The types of personal information we collect and share depend on how you use our services. This information can include, but is not limited to:When you are no longer our customer, we continue to share your information as described in this notice.</p></li><li><p>Social Security number, passport number, or driver&rsquo;s license number</p><ul class=\"ak-ul\"><li><p>Bank account information, trading data, or transaction history</p></li><li><p>Identification information such as your name, date of birth, nationality, or signature</p></li></ul></li><li><p>How?&nbsp;All financial companies need to share customers\' personal information to run their everyday business. In the section below, we list the reasons financial companies can share their customers\' personal information; the reasons Eclipto chooses to share; and whether you can limit this sharing.</p><p><br></p><p><br></p></li></ul><h3><span style=\"font-size: 24px;\">Reasons Eclipto Shares Your Personal Information</span></h3><h3><span style=\"font-size: 24px;\"><br></span></h3><ul class=\"ak-ul\"><li><p>For our everyday business purposes&nbsp;&ndash; such as to process your transactions, maintain your account(s), respond to court orders and legal investigations, or report to credit bureaus</p></li><li><p>Does Eclipto share?Yes</p><ul class=\"ak-ul\"><li><p>Can you limit sharing?No</p></li></ul></li><li><p>For our marketing purposes&nbsp;&ndash; to offer our products and services to you</p></li><li><p>Does Eclipto share?Yes</p><ul class=\"ak-ul\"><li><p>Can you limit sharing?No</p></li></ul></li><li><p>For joint marketing with other financial companies</p></li><li><p>Does Eclipto share?Yes</p><ul class=\"ak-ul\"><li><p>Can you limit sharing?Yes</p></li></ul></li><li><p>For our affiliates&rsquo; everyday business purposes&nbsp;&ndash; information about your transactions and experiences</p></li><li><p>Does Eclipto share?Yes</p><ul class=\"ak-ul\"><li><p>Can you limit sharing?Yes</p></li></ul></li><li><p>For our affiliates&rsquo; everyday business purposes&nbsp;&ndash; information about your creditworthiness</p></li><li><p>Does Eclipto share?Yes</p><ul class=\"ak-ul\"><li><p>Can you limit sharing?Yes</p></li></ul></li><li><p>For our affiliates to market to you</p></li><li><p>Does Eclipto share?Yes</p><ul class=\"ak-ul\"><li><p>Can you limit sharing?Yes</p></li></ul></li><li><p>For our non-affiliates to market to you</p></li><li><p>Does Eclipto share?Yes</p><ul class=\"ak-ul\"><li><p>Can you limit sharing?Yes</p></li></ul></li></ul><h3><br></h3><h3><br></h3><h2><span style=\"font-size: 24px;\">What we do</span></h2><p></p><h3><span style=\"font-size: 24px;\">How does Eclipto protect my personal information?</span></h3><h3><span style=\"font-family: sans-serif; font-size: 1rem;\">To protect your personal information from unauthorized access and use, Eclipto uses security measures that comply with federal law. These measures include computer safeguards and secured files and buildings.</span><br></h3><p><br></p><h3><span style=\"font-size: 24px;\">How does Eclipto collect my personal information?</span></h3><p>Eclipto collects your personal information when you:</p><ul class=\"ak-ul\"><li><p>Create an account with Eclipto.</p></li><li><p>Place or complete an order with Eclipto.</p></li><li><p>Use your debit or credit card or any other permissible payment method to purchase or sell digital currency.</p></li></ul><p>Additionally, Eclipto also collects your personal information from others, such as affiliates or other companies.</p><p><br></p><h3><span style=\"font-size: 24px;\">Why can&rsquo;t I limit all sharing?</span></h3><p>Federal law gives you the right to limit only:</p><ul class=\"ak-ul\"><li><p>Sharing for affiliates&rsquo; everyday business purposes&mdash;information about your creditworthiness.</p></li><li><p>Affiliates from using your information to market to you.</p></li><li><p>Sharing for non-affiliates to market to you.</p></li></ul><p>State laws and individual companies may give you additional rights to limit sharing. This section suggests that there are specific aspects of sharing that you cannot limit due to federal regulations, but there may be more options under state law or company-specific policies.</p><p><br></p><h2><span style=\"font-size: 24px;\">Definitions</span></h2><ul class=\"ak-ul\"><li><p>Affiliates:&nbsp;Companies related by common ownership or control. They can be both financial and nonfinancial companies.</p></li><li><p>Nonaffiliates:&nbsp;Companies not related by common ownership or control. They can also be financial and nonfinancial companies.</p></li><li><p>Joint Marketing:&nbsp;A formal agreement between nonaffiliated financial companies that together market financial products or services to you.</p><p><br></p></li></ul><h3><span style=\"font-size: 24px;\">Collection and Disclosure of Personal Information</span></h3><p>Over the past 12 months we may have collected and disclosed the following categories of personal information from or about consumers. We use this information for the purposes described in the &ldquo;HOW WE USE YOUR PERSONAL INFORMATION&rdquo; section of this Privacy Policy.</p><ul class=\"ak-ul\"><li><p>Identifiers, such as phone number, name, date of birth, IP address, driver&rsquo;s license number, passport number, or other similar identifiers. This information is collected directly from the consumer or device.</p></li><li><p>Geolocation data, including GPS location information and approximate location derived from your IP address. This information is collected directly from the consumer or device.</p></li><li><p>Internet or other electronic network activity information, including your browser type and version, time zone settings, operating system or platform, or website visit information. This information is collected directly from a device.</p></li><li><p>Biometric information, such as a live photo. This information is collected directly from the consumer or device.</p></li><li><p>Commercial information, including payment card information and transaction verification information. This information is collected directly from the consumer or device.</p></li><li><p>Audio, electronic, visual, thermal, olfactory, or similar information. This information is collected directly from the consumer.</p></li><li><p>Other information that is described in subdivision (e) of Section 1798.80, such as nationality and gender (this information is being collected in the consumer context rather than the employer context). This information is collected directly from the user.</p></li></ul><p>We may disclose each category of personal information listed to each entity listed in the &ldquo;DISCLOSING YOUR INFORMATION TO THIRD PARTIES&rdquo; section above. Eclipto does not sell your personal information in its ordinary course of business and will never sell your personal information to third parties without your explicit consent.</p><h3><br></h3><h3><span style=\"font-size: 24px;\">How to exercise your rights</span></h3><p></p><p></p><p>You can exercise your rights by contacting us via our support e-mail <a href=\"mailto:support@eclipto.io\">support@eclipto.io</a> so that we may consider your request.</p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p></span></h2></body></html>\n', '[\"footer\"]', 'active', '2024-07-11 21:09:09', '2024-08-15 10:06:30');
INSERT INTO `pages` (`id`, `name`, `url`, `content`, `position`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Terms and Conditions', 'terms-and-conditions', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body><h1 data-pm-slice=\"0 0 []\"><span>&#65279;</span><span style=\"font-size: 24px;\">&#65279;</span>Terms of Use</h1><p><br></p><p>Last updated: August 10, 2024</p><ol start=\"1\" class=\"ak-ol\"><li><p>Introduction</p></li></ol><p>This is a contract between you and each of:</p><p>MP Technology Services Limited (&ldquo;BlockFusion s.r.o.&rdquo;), a company organised and existing under the laws of the Czech Republic and having its registered office at Suite 108, Premier Building, Victoria, Maha, The Republic of Seychelles; and</p><p>1.1 In this document, references to Eclipto/we/our/us are to BlockFusion s.r.o. At all times, any handling or delivery of Cryptocurrency will be carried out by BlockFusion s.r.o., and any handling or dealing in any fiat currency will be carried out by BlockFusion s.r.o (including any receipt of payments for purchases you make with BlockFusion s.r.o.). Any references to Customer/you/your are references to you as a customer of Eclipto and user of our services. Any references to the \"Service\" includes websites, APIs, or mobile applications</p><p>1.2 You agree that the liability of BlockFusion s.r.o. under this Agreement is limited to its own obligations and any breaches of those obligations. BlockFusion s.r.o. shall be solely responsible to you for its own breaches of this Agreement.</p><p>1.3 Please read this document carefully, as it sets out the terms and conditions on which Eclipto will provide services to you through our websites, Application Programming Interfaces (&ldquo;APIs&rdquo;), or mobile applications (together our &ldquo;Site&rdquo;).</p><p>1.4 By signing up to create an Account with Eclipto and use our Services, you agree that you have read, understood, and accept all of the terms and conditions contained in this Agreement, as well as our Privacy Policy and Cookie Policy.&nbsp;</p><p>1.5 This Agreement will govern the use of the Services provided by Eclipto. By using the Services you agree to be bound by the terms and conditions of this Agreement. If you do not agree to any of the terms in this Agreement, or any subsequent modi&#64257;cation to this Agreement, you will not be permitted to use the Services and your Account with us will be closed.&nbsp; This Agreement will come into effect when you confirm electronically that you agree to it. We recommend that you retain a copy of this Agreement and transaction records.&nbsp;</p><p>1.6 Use of cryptocurrency may be illegal in some jurisdictions. It is your responsibility to know the regulatory requirements concerning transactions with cryptocurrency in your jurisdiction before using the Services.</p><p>1.7 For the purposes of this Agreement:</p><p>1.7.1 an &ldquo;Account&rdquo; means an online account created by you in order to access the Eclipto Services;</p><p>1.7.2 &nbsp;a \"Business Day\" means any day which is not a Saturday, Sunday or public holiday in the respective jurisdiction referred to at clause 1.1, and which the banks are open for business in such jurisdiction;</p><p>1.7.3 &ldquo;Cryptocurrency&rdquo; or &ldquo;Cryptocurrencies&rdquo; means a cryptographically secured digital representation of value or contractual rights that uses a form of distributed ledger technology and can be transferred, stored or traded electronically. The definition of Cryptocurrency also includes &ldquo;right to, or interest in, the Cryptocurrency&rdquo;;&nbsp;</p><p>1.7.4 &ldquo;Order&rdquo; means a request for the Services;</p><p>1.7.5 &ldquo;Partner&rdquo; means third party firms who refer you to Eclipto in order to purchase and/or sell Cryptocurrencies;</p><p>1.7.6 &ldquo;Partner Sites&rdquo; means Partner&rsquo;s mobile applications and websites;&nbsp;</p><p>1.7.7 &ldquo;Services&rdquo; means to the purchase, sale and/or swap of Cryptocurrencies from Eclipto; and</p><p>1.7.8 &ldquo;Wallet&rdquo; means a secured digital facility in which Cryptocurrencies are held.</p><p>1.7.9 &ldquo;NFT&rdquo; means the blockchain asset defining a non-fungible token, on an underlying blockchain that represents ownership of images, videos, audio files, and other forms of media or ownership of physical or digital property.</p><p>1.7.10 &ldquo;NFT Checkout\" means the service offered by Eclipto that facilitates the purchase of NFTs with major fiat payment methods.</p><p>1.8 You have understood, acknowledged and accepted the following DISCLAIMER:</p><p>1.8.1 The risk of loss in trading or holding Bitcoin or any other Cryptocurrency can be substantial. You should therefore carefully consider whether trading or holding Bitcoin or any other cryptocurrency is suitable for you in light of your financial condition. In considering whether to trade or hold Cryptocurrency, you should be aware that the price or value of Cryptocurrency can change rapidly, decrease, and potentially even fall to zero.&nbsp;</p><p>1.8.2 You acknowledge that Eclipto is not responsible for safeguarding or holding your Cryptocurrency, or any private keys or other security information to access your Cryptocurrency and that Eclipto is not responsible for any loss of Cryptocurrency resulting from theft, loss, or mishandling of Cryptocurrency private keys or other security information outside its control.&nbsp;&nbsp;</p><p>1.8.3 Every purchase and sale of Cryptocurrency is effected on and con&#64257;rmed by the respective network of that Cryptocurrency. The con&#64257;rmation takes a period of time (usually less than one hour, but possibly one day or more). An Order is not complete until it is con&#64257;rmed. Cryptocurrency associated with Orders that are in a pending state will be designated accordingly.</p><p>1.8.4 Notwithstanding anything to the contrary in this Agreement, if you are using the NFT Checkout and are purchasing an NFT from a third party, Eclipto may facilitate the purchase and delivery of the NFT to a Wallet.</p><p>1.8.5 We do not endorse any NFT in any way. We do not verify the authenticity and do not review (or approve) of any NFT. NFT sellers may make claims about intellectual property ownership, rarity and uniqueness, and value. It is solely your responsibility to investigate and determine the authenticity of any NFT you are considering buying, along with the accuracy of the claims made by the NFT seller. The NFT seller also determines the price, and that price may not be the true market value of the NFT. The rarity and true market value of the NFT may be subject to change, especially if minting is ongoing. Eclipto makes no representations with respect to any NFT to be purchased. You should not assume that purchasing an NFT gives you any legal rights beyond mere ownership of the underlying blockchain asset. Eclipto makes no representations as to any auxiliary rights, benefits or rewards supposedly accompanying any NFT.</p><p>1.8.6 A transaction between a buyer and a seller takes place in a peer-to-peer fashion on a public blockchain. We do not guarantee that you will receive your NFT, as there are a number of reasons why transactions may fail. For example, network congestion, a technical blockchain issue or another buyer purchases that NFT before your transaction completes on the blockchain. In case your transaction fails, Eclipto will pay for any gas fees included in the transaction.</p><h2><br></h2><h2><br></h2><h2><span style=\"font-size: 24px;\">2. Eligibility</span></h2><p><br></p><p>2.1 To be eligible to use any of the Eclipto Services, you confirm that you are:&nbsp;</p><p>2.1.1 at least 18 years old;</p><p>2.1.2&nbsp;have sufficient capacity to enter into legally binding contracts;&nbsp;</p><p>2.1.3&nbsp;reside in a country in which the relevant Eclipto Services are accessible; and</p><p>2.1.4 willing to provide to us any current valid personal identification documents that we request&nbsp;</p><p><br></p><p><br></p><p></p><h2><span style=\"font-size: 24px;\">3. Services provided to you</span></h2><p><br></p><p>3.1 Once you have completed the registration process (as set out at clause 4 below), Eclipto will provide the Services to you.&nbsp;</p><p>3.2 When using the Services, you are buying Cryptocurrency from, or selling Cryptocurrency to, Eclipto directly. Eclipto does not act as an intermediary or marketplace between other buyers and sellers of Cryptocurrency.&nbsp;</p><p>3.3 Eclipto will&nbsp;send / deliver Cryptocurrency&nbsp; to the Wallet address indicated at the time of the Order subject to the conditions of this Agreement;</p><p>3.4 At no point during the purchase or sale, will Eclipto be in possession or in control of client funds.&nbsp;</p><p>3.5 Eclipto does not host Wallets, and is not a custodian of your funds or assets; and</p><p>3.6 Orders through Eclipto&nbsp; are executed individually, one by one.&nbsp;</p><p>3.7 Eclipto DOES NOT facilitate or provide trading or investment or brokerage accounts or facilities, nor does Eclipto provide investment or any other financial advice.</p><p><br></p><p><br></p><p></p><h2><span style=\"font-size: 24px;\">4. Customer registration process</span></h2><p><br></p><p>4.1 To use the Eclipto Services, you will need to register for an Account by providing your name, email address and accepting the terms of this Agreement. By using Eclipto Services, you agree and represent that you will use the Eclipto Services only for yourself, and not on behalf of any third party. Upon successful completion of the registration process, Eclipto will establish your Account. You are fully responsible for all activity that occurs under your Eclipto Account. We may, in our sole discretion, refuse to open a Eclipto Account for you, or limit the number of Accounts&nbsp; that you may hold or suspend or terminate any Account, and are not required to provide you with the reasons for taking any such action.&nbsp;</p><p>As part of the registration process, you must provide Eclipto with the information that is requested as part of the Account opening process to identify and verify your identity and for the detection of anti-money laundering, terrorist financing, fraud, or any other financial crime and permit us to keep a record of such information. You will need to complete certain verification procedures before you are permitted to start using the Eclipto Services.</p><p>4.2 The information we request may include certain personal information including, but not limited to, your name, address, telephone number, email address, date of birth, taxpayer identification number, government identification number, information regarding your bank account (such as the name of the bank, the account type, routing number, and account number) network status, customer type, customer role, billing type, mobile device identifiers (IMSI and IMEI) and other subscriber status details. In providing us with this or any other information that may be required, you confirm that the information is accurate and correct and you agree to keep us updated if any of the information you provide changes. We will treat this information in accordance with the data protection provisions of this Agreement, as set out at clause&nbsp; 13.</p><p>4.3 You authorise us to make enquiries, whether directly or through third parties, that we consider necessary to verify your identity or protect you and/or us against fraud or other financial crime, and to take action we reasonably deem necessary based on the results of such inquiries. When we carry out these enquiries, you acknowledge and agree that your personal information may be disclosed to credit reference and fraud prevention or financial crime agencies and that these agencies may respond to our enquiries in full. This is an identity check only and should have no adverse effect on your credit rating. Additionally, we may require you to wait some amount of time after completion of a transaction before permitting you to use further Eclipto Services and/or before permitting you to engage in transactions beyond certain volume limits.</p><p>4.4 Failure to provide any information that Eclipto reasonably requests from you pursuant to applicable money laundering laws and regulations after you have become a Customer shall be grounds for the suspension of the provision of Services to you (including access to your Account) and/or the termination of this Agreement. The nature and extent of the information you are required to provide may differ, for example, based on the Services provided to you under this Agreement and/or the means of payment you use.</p><p>4.5 Where you are referred to us by our Partners via Partner Sites, you will still be required to register for an Account with Eclipto and this Agreement will apply in full irrespective of any other terms you sign up to with our Partners.&nbsp;</p><p><br></p><p><br></p><p></p><h2><span style=\"font-size: 24px;\">5. Transactions limits and enhanced due diligence</span></h2><p><br></p><p>5.1 The use of all Eclipto Services is subject to a limit on the volume, stated in GBP, EUR or other fiat currency you may transact or transfer in a given period (e.g. daily). To view your limits, login to your Eclipto Account. Your transaction limits may vary depending on your payment method, verification steps you have completed and other factors. We reserve the right to change applicable limits as we deem necessary and where possible will provide advance notice to you, although in some cases this will not be possible and you will be informed after any changes to the applicable limits have taken place. If you wish to raise your limits beyond the posted amounts, you may submit a request at <a href=\"mailto:support@moonpay.com\"><u>support@Eclipto.</u></a><u>io</u>.&nbsp;</p><p>5.2 We may require you to submit additional information about yourself and provide additional records, if you wish to raise your limits (\"Enhanced Due Diligence\"). In our discretion, we may refuse to raise your limits, or we may lower your limits at a subsequent time even if you have completed Enhanced Due Diligence.&nbsp;</p><p><br></p><p><br></p><p></p><h2><span style=\"font-size: 24px;\">6. Cryptocurrency orders</span></h2><p><br></p><p>6.1 You will be able to purchase and sell (or swap) Cryptocurrencies (if in a supported region) from and to us, through our Site and through Partner Sites subject to the applicable fees and limits displayed during the purchase and sale flow. The price, exchange rate and amount of the Cryptocurrency that you wish to purchase or sell will be confirmed at the time that you place an Order with us.</p><p>6.2 Acceptance by us of an Order does not guarantee that you will receive the corresponding amount of Cryptocurrency or fiat currency. The Cryptocurrency Order&nbsp; is conditional upon actual receipt by us of the funds from your credit or debit card (or in the case of a swap, the applicable Cryptocurrency), as well as payment of any applicable fees.</p><p>6.3 Subject to clause 6.2 and the Order being honoured by the Customer&rsquo;s bank, card provider or other relevant party, Cryptocurrency purchases and swaps shall be credited to any Cryptocurrency Wallet, as provided by you at the time of the Order, as soon as possible once the Cryptocurrency purchase has been confirmed by the Cryptocurrency network. Once submitted to a Cryptocurrency network, a Cryptocurrency purchase will be unconfirmed for a period of time pending sufficient confirmation of the Order by the Cryptocurrency network. Cryptocurrency Orders&nbsp; that are in a pending state will not be credited to the Wallet.</p><p>6.4 Subject to clauses 6.2 and 8, Cryptocurrency sales shall be debited to any Cryptocurrency Wallet, as provided by you at the time of the Order, as soon as possible once the Cryptocurrency sale has been confirmed by the Cryptocurrency network. Once submitted to a Cryptocurrency network, a Cryptocurrency sale will be unconfirmed for a period of time pending sufficient confirmation of the Order by the Cryptocurrency network. Cryptocurrency Orders that are in a pending state will not be debited to the Wallet. Once the Cryptocurrency sale is confirmed, fiat funds will be credited to the Customer&rsquo;s bank, card provider or other relevant party.&nbsp;</p><p>6.5 Eclipto may use a third-party payment processor to process any fiat payment between you and Eclipto.</p><p>6.6 Recurring Transactions. If you set up a recurring purchase or sale of Cryptocurrencies (a \"Future Transaction\"), you authorise us to initiate recurring electronic payments in accordance with your selected Cryptocurrency Order. Your Future Transactions will occur in identical, periodic instalments, based on your period selection (e.g., daily, weekly, monthly), until either you or Eclipto cancels the Future Transaction. This authorisation will remain in full force and effect until you change your Future Transaction settings or until you provide us with written notice via <u>support@</u><u>eclipto.io</u>.&nbsp;</p><p>6.7 Please note that as part of accessing our Services, you may be required to sign up to separate and independent terms when using the Partner Sites and with any third-party payment processor.</p><p><br></p><p><br></p><p></p><h2><span style=\"font-size: 24px;\">7. Cryptocurrency storage&nbsp;</span></h2><p><br></p><p>7.1 Eclipto does not provide any Wallet or hold, safeguard or administer any private keys or other security information or Cryptocurrency for its Customers.&nbsp;&nbsp;</p><p>7.2 When using the Services, you will be asked to provide us with the address for your Wallet by either:</p><ol start=\"1\" class=\"ak-ol\"><li><p>providing a QR code which represents your Wallet address;&nbsp;</p></li><li><p>manually typing your Wallet address;&nbsp;</p></li><li><p>using a Wallet address automatically provided by a Eclipto partner; or</p></li><li><p>accessing your Eclipto Wallet.</p></li></ol><p>7.3 It is your responsibility to provide us with a true, accurate and complete Wallet address when carrying out an Order. It is therefore important that the Wallet address that you provide for an Order is correct.&nbsp; You understand and agree that Eclipto accepts no liability for you providing an incorrect or inaccurate Wallet address as part of&nbsp;an Order.&nbsp; By providing a Wallet address to us, you confirm that this is the Wallet address that should be used for the relevant Order and we will not, and have no responsibility to, check whether you have provided a correct and accurate Wallet address for the Order.</p><p>7.4 You acknowledge and agree, without prejudice to any other terms in this Agreement, that you bear all of the risk of any loss of access to your Wallet(s) and any Cryptocurrencies contained in your Wallet(s). Eclipto does not control and is not responsible for the Cryptocurrencies in your Wallet(s). You are solely responsible for any Cryptocurrencies transferred to or from your Wallet(s) and we make no, and hereby disclaim all, representations, warranties, claims and assurances as to any such transactions. If you lose your keys to your Wallet(s), you may lose access to your Wallet(s) and any Cryptocurrencies contained in your Wallet(s). Eclipto is not liable for fluctuations in the fiat currency value of Cryptocurrencies in your Wallet.</p><p>7.5. Eclipto Wallet</p><ol start=\"1\" class=\"ak-ol\"><li><p>As part of our Services, you may be able to create a Eclipto Wallet. You understand and agree that the Eclipto Wallet is a non-custodial wallet.</p></li><li><p>In order to create a Eclipto Wallet, you may be required to provide additional information including your phone number or email, and a one time password (&ldquo;OTP&rdquo;). You agree not to provide another person\'s phone number or email address. This Eclipto Wallet will be linked to your Eclipto account and is controlled by you.</p></li><li><p>When you create a Eclipto Wallet, a mnemonic phrase (aka a &ldquo;seed phrase&rdquo;) is created with random entropy on your device. This seed phrase is used to derive a cryptographic key pair. The resultant public/private key pair represents the Eclipto Wallet and ownership of the private key is evidence of your ownership of your Eclipto Wallet. The public key is visible to all participants of a blockchain&rsquo;s network. This public/private key pair enables you to send and receive Cryptocurrencies on the relevant blockchain network. The private key is required to digitally sign transactions for any Cryptocurrency represented by the corresponding public key. Eclipto will not store your seed phrase or private key in its database. Instead, Eclipto utilises a dedicated and secure data centre from Amazon Web Services leveraging hardware security and proprietary technology to encrypt your seed phrase and automatically backup the encrypted wallet.&nbsp;</p></li><li><p>You as the user retain control of your Eclipto Wallet and private key at all times. Eclipto will never request your private key. Eclipto can not directly access your seed phrase or private key. Only the email or phone number associated with the Eclipto Account can access the materials needed to decrypt the encrypted backup. This encrypted backup is only ever decrypted on your local device and is never sent or stored anywhere on the Eclipto servers. You may choose to backup and export your mnemonic phrase at any time. You may also request that Eclipto delete any encrypted backup of your mnemonic phrase. Please note that if you do export your mnemonic phrase, you are solely responsible for the security of your Eclipto Wallet and Eclipto can not be liable for any lost or stolen data. If there is additional two-factor authentication enabled, you may be required to authenticate with a second OTP in order to access your encrypted wallet backup.</p></li><li><p>Once authenticated you may initiate any wallet related transaction using the Services at any time. Eclipto does not sign messages on your behalf or control the Eclipto Wallet on your behalf. Once authenticated you, the user, can initiate any relevant blockchain transaction. Eclipto has no duty to inquire into or investigate the validity or accuracy of any transaction, though it may, at its sole discretion, inquire into or investigate such a transaction. You, the user, will be responsible for keeping your phone and/or email address secure and for any activity associated with your phone/email and your Eclipto Wallet. Eclipto will not be responsible if someone else accesses your phone/email and authorises a transaction upon receipt of an OTP. You should let Eclipto know immediately if your phone has been stolen and/or your phone or email has otherwise been compromised.&nbsp;</p></li><li><p>Eclipto has no ability to access your seed phrase or any other raw private key information. We cannot unilaterally initiate a transfer of Cryptocurrencies or otherwise access Cryptocurrencies in your Eclipto Wallet</p></li><li><p>We are not your brokers, intermediaries, agents, advisors, or custodians, and we do not have a fiduciary relationship or obligation to you regarding any decisions in connection with a Eclipto Wallet or our Services. We are not responsible for any activities that you engage in when using your Eclipto Wallet, and you should understand the risks associated with Cryptocurrencies.</p></li><li><p>You are solely responsible for maintaining the security of your private keys and your Eclipto Wallet. You acknowledge and agree, without prejudice to any other terms in this Agreement, that you bear all of the risk of any loss of access to your Eclipto Wallet and any Cryptocurrencies contained in it. Eclipto does not control and is not responsible for the Cryptocurrencies in your Eclipto Wallet. You are solely responsible for any Cryptocurrencies transferred to or from your Eclipto Wallet and we make no, and hereby disclaim all, representations, warranties, claims and assurances as to any such transactions. If you lose your keys to your Eclipto Wallet, you may lose access to your Eclipto Wallet and any Cryptocurrencies contained in it. Eclipto is not liable for fluctuations in the fiat currency value of Cryptocurrencies in your Eclipto Wallet.</p><p><br></p><p><br></p></li></ol><p></p><h2><span style=\"font-size: 24px;\">8. Transmission delays&nbsp;</span></h2><p><br></p><p>8.1 Eclipto will use good faith efforts to ful&#64257;l Orders at the time that you place such Order, including the applicable fee and costs. However, from time to time, it may be necessary for Eclipto to delay ful&#64257;lment of an Order until such time as we are able to execute the Order. In such cases, we will notify you prior to the completion of your Order both:</p><p>8.1.1 the amount of Cryptocurrency&nbsp; you will receive; and</p><p>8.1.2 the price at the time (including associated fees and costs).</p><p>8.2 Eclipto does not have any control over transaction times for the Cryptocurrency Network and there may be instances where transaction times may take longer than usual.&nbsp; As such, you accept the risk that an Order facilitated by Eclipto may be delayed and you confirm that you will not hold Eclipto responsible for any losses, damages or injury arising out of or related to such delay.</p><p><br></p><p><br></p><p></p><h2><span style=\"font-size: 24px;\">9. Cancellations and refunds</span></h2><p><br></p><p>9.1 Once you have placed an Order has been made it cannot be cancelled or recalled.&nbsp;</p><p>9.2 All Orders are final and cannot be refunded.&nbsp;</p><p>9.3 Once an Order has been sent to the Cryptocurrency Wallet it cannot be recalled or retrieved under any circumstances.</p><p>9.4 You hereby agree that upon delivery, you will not be entitled to any credit or refund and all purchases, sales, and swaps of Cryptocurrency are final. Eclipto\'s obligation towards you will be absolutely discharged upon delivery of the Cryptocurrency&nbsp; to your Wallet or fiat funds to your bank account and you shall have no claim or right against Eclipto upon such delivery.</p><p>9.5 Please also note that Cryptocurrency transactions are irreversible.&nbsp; It is your sole responsibility to be vigilant of any fraud or mistake and to keep your private key safe.&nbsp; Eclipto will not take responsibility to issue refunds, regardless of whether you were the victim of fraud, mistake or loss of private key.</p><p>9.6 If an order for a swap fails for any reason, including if we have to requote a swap quote to you because of price volatility and you reject the requote, then there will be an automatic refund to you, minus any applicable network fees.</p><p></p><h2><br></h2><h2><br></h2><h2><span style=\"font-size: 24px;\">10. Suspension, termination and cancellation</span></h2><p><br></p><p>10.1 Eclipto may: (a) refuse to complete, or block or cancel transactions you have authorised,(b) suspend, restrict, or terminate your access to any or all of the Eclipto Services, and/or (c) deactivate or cancel your Eclipto Account with immediate effect for any reason, including but not limited to where:</p><p>10.1.1 we reasonably believe that we need to do so in order to protect our reputation;</p><p>10.1.2 we are, in our reasonable opinion, required to do so by applicable law, regulation or any court or other authority to which we are subject in any jurisdiction;</p><p>10.1.3 we reasonably suspect you of acting in breach of this Agreement;</p><p>10.1.4 we have concerns that a transaction is erroneous or about the security of your Eclipto Account or we suspect the Eclipto Services are being used in a fraudulent or unauthorised manner;</p><p>10.1.5 we suspect money laundering, terrorist financing, fraud, or any other financial crime;</p><p>10.1.6 use of your Eclipto Account is subject to any pending litigation, investigation, or government proceeding and / or we perceive a heightened risk of legal or regulatory non-compliance associated with your Eclipto Account activity; and / or</p><p>10.1.7 you take any action that may circumvent our controls such as opening multiple Eclipto Accounts or abusing promotions which we may offer from time to time.</p><p>10.1.8 you fail to provide on request such documentation as Eclipto (or any third party whose services we use in providing the Services to you under this Agreement) reasonably requires in order to comply with its obligations under applicable money laundering laws and regulations or otherwise to ensure the verification of your identity and/or funding sources to Eclipto satisfaction.</p><p>10.1.9 any Cryptocurrency Order is significantly larger in size;</p><p>10.1.10 Eclipto reasonably believes that it is necessary or desirable to do so in order to protect the security of the Account, including circumstances where any Account details may have been lost or stolen.</p><p>10.2 In the case of any such suspension, Eclipto shall make reasonable efforts to inform you about the withholding or suspension, provided that such disclosure:</p><p>10.2.1 is not in breach of any applicable law or regulation and does not contravene the instruction of any competent authority or regulator; and</p><p>10.2.2 would not compromise Eclipto\'s reasonable security measures.</p><p>10.3 Eclipto shall not be liable to you for any losses you may suffer as a result of any reasonable action it takes to suspend the Account or withhold settlement of a Cryptocurrency Order in accordance with this clause 10.</p><p>Where the reasons for Eclipto\'s actions under this clause 10 cease to exist, Eclipto may, at its discretion, either reinstate access to the Account and the Services and/or issue the Customer with new Account details and reserves the right to ask you to re-complete the Account opening procedures as outlined in this Agreement and to resolve any open issues with your Account before a restriction can be removed.&nbsp;</p><p>Notwithstanding the above, we may suspend, restrict, or terminate your access to any or all of the Eclipto Services and/or deactivate or cancel your Eclipto Account, without reason by giving you one months&rsquo; notice. You acknowledge that our decision to take certain actions, including limiting access to, suspending, or closing your Eclipto Account, may be based on confidential criteria that are essential for the purposes of our risk management and security protocols. You agree that we are under no obligation to disclose the details of its risk management and security procedures to you.&nbsp;</p><p>10.4 You will also be able to cancel your Eclipto Account, at any time and free of charge, and will only be required to pay for those Services used that are subject to charges. If any Order is in a pending status at the time your Eclipto Account is cancelled or suspended, such Order will be completed before cancellation is effected. You may not cancel your Eclipto Account to evade an investigation or avoid paying any amounts otherwise due to Eclipto.&nbsp;&nbsp;</p><p>10.5 In the event that you or we terminate this Agreement or your access to the Services, or deactivate or cancel your Eclipto Account, you will remain liable for all amounts due under this Agreement prior to this, including all fees and charges.&nbsp;</p><p></p><h2><br></h2><h2><br></h2><h2><span style=\"font-size: 24px;\">11. Fees</span></h2><p><br></p><p>11.1 All fees payable under this Agreement are displayed prior to the purchase or sale of Cryptocurrency by using the Services, and shall be paid in the applicable&nbsp; fiat&nbsp; currency. Please note, our fees are made clear to you at the point of sale, and on this point you will be asked to confirm that you are clear about the fee and that in proceeding you agree to the fee prior to Eclipto executing the Order.&nbsp;</p><p>11.2 Eclipto reserves the right to pursue any financial losses suffered due to you filing a chargeback procedure with your bank. These can include administration fees levied by the card acquirer and card schemes as well as the monetary value of the Cryptocurrencies.</p><p></p><h2><br></h2><h2><br></h2><h2><span style=\"font-size: 24px;\">12. Taxes</span></h2><p><br></p><p>You are responsible for determining&nbsp; whether, and to what extent, any taxes apply to any transactions associated with these Services, You must withhold, collect, report and remit the correct amounts of taxes to the appropriate tax authorities.</p><p><br></p><p><br></p><p></p><h2><span style=\"font-size: 24px;\">13. Data protection law</span></h2><p><br></p><p>We are committed to keeping your personal information safe. We process personal information in accordance with applicable data protection legislation. Please read our privacy policy to understand how we use and protect the information you provide us.</p><p></p><h2><br></h2><h2><br></h2><h2><span style=\"font-size: 24px;\">14. Liability</span></h2><p><br></p><p>14.1 Neither Eclipto, nor any of its directors, employees or agents, shall be liable for any loss or damage sustained by you as a direct or indirect result of the provision by Eclipto of its Services, save that nothing in this Agreement shall exclude or restrict any liability of Eclipto resulting from:&nbsp;</p><p>14.1.1 death or personal injury;&nbsp;</p><p>14.1.2 for fraud, fraudulent misrepresentation or fraudulent misstatement; and/or</p><p>14.1.3 any statutory liability not capable of limitation.</p><p>14.2 Eclipto shall not in any event be liable for loss of profits, loss of opportunity, loss of business, loss of savings, loss of goodwill, loss of Cryptocurrency, claims by third parties, loss of anticipated savings (whether direct or indirect) or for any type of special, direct, indirect or consequential loss howsoever caused, even if caused by Eclipto&rsquo;s negligence and/or breach of contract and even if such loss was reasonably foreseeable or Eclipto had been advised of the possibility of you incurring the same.&nbsp;</p><p>14.3 Eclipto disclaims all liability associated with the use of Cryptocurrency, including:</p><p>14.3.1 unknown inherent technical defects;</p><p>14.3.2 regulatory or legislative changes; and</p><p>14.3.3 currency fluctuation.</p><p>14.4 Eclipto shall not bear any liability for any damage or interruptions caused by any computer viruses, spyware, scareware, Trojan horses, worms or other malware that may affect your computer or other equipment, or any phishing, spoo&#64257;ng or other attack. It is your responsibility to use&nbsp; a reputable and readily available virus screening and prevention software. You should also be aware that SMS and email services are vulnerable to spoo&#64257;ng and phishing attacks and should use care in reviewing messages purporting to originate from Eclipto.</p><p>14.5 You indemnify and hold us,&nbsp; our subsidiaries, members, directors, partners, officers, employees, contractors and agents harmless from and against any loss, liability, claim, demand, damages, costs, expenses (including legal fees) which may arise from or in connection with the Services, any content on the Services shared by you or other users, any third party websites or resources found through the services, any users of the services, or any breach of this Agreement, applicable laws or any law or regulation in any jurisdiction.</p><p>14.6 Except for the express statements set forth in this Agreement, you hereby acknowledge and agree that you have not relied upon any other statement or understanding, whether written or oral, with respect to you use and access of the Eclipto Services and Site.</p><p><br></p><p><br></p><p></p><h2><span style=\"font-size: 24px;\">15. Warranties and representations</span></h2><p><br></p><p>15.1 By agreeing to this Agreement, you represent, warrant and undertake to us that:</p><p>15.1.1 you have full power and authority to enter into this Agreement;</p><p>15.1.2 you understand and acknowledge that we do not warrant that any of the Services available through our API are suitable or appropriate for your needs and that you must take your own independent legal and other advice on such Services;</p><p>15.1.3 you are entering into this Agreement as principal and not on behalf of any third party;</p><p>15.1.4 you will not violate any applicable laws by entering into this Agreement or receiving the Services provided under it;</p><p>15.1.5 you will not provide false, misleading or inaccurate information;</p><p>15.1.6 you will not facilitate any viruses, malware, worms, trojan horses or some other computer programming routines that may damage, corrupt, disrupt, misuse or gain unauthorized access to any data, system information or Eclipto services;</p><p>15.1.7 funds or Cryptocurrencies transferred to the Wallet or any sub-Wallet have been acquired lawfully;</p><p>15.1.8 you will not use an anonymizing proxy; use any, other automatic devices, spider or manual process to copy or monitor our websites without our prior written permission;</p><p>15.1.9 you will not harass and/or threaten our employees, agents, or other users;</p><p>15.1.10 you understand and acknowledge that while we make reasonable endeavours to ensure the accuracy of the information that we provide, and which in turn, is provided to you, neither we nor any of our directors, employees or agents make any representation or warranty, express or implied, as to the accuracy or completeness of such information;</p><p>15.1.11 any information provided by you to Eclipto under this Agreement is true, complete, accurate, up to date and not misleading; and</p><p>15.1.12 you shall provide all assistance reasonably requested by Eclipto to enable Eclipto to comply with its obligations under this Agreement.</p><p>15.2 The Eclipto Services are provided on an \"as is\" and \"as available\" basis, with no further promises made by us around availability of the Eclipto Services. Specifically, we do not give any implied warranties of title, merchantability, fitness for a particular purpose and/or non-infringement. We do not make any promises that access to the Site, any of the Eclipto Services, or any of the materials contained therein, will be continuous, uninterrupted, timely, or error-free.</p><p>15.3 Eclipto makes no representation or warranty that the Services are applicable or appropriate for use by Customers in all jurisdictions and it is your responsibility to ensure compliance with the laws of any relevant jurisdiction of your residence.</p><p><br></p><p><br></p><h2><span style=\"font-size: 24px;\">16. Stored card details</span></h2><p><br></p><p>16.1 We are legally obligated to secure your consent to allow us to store your card details for future use and cannot process your payment before you agree to such storing. By accepting this Agreement, you hereby give us permission to do so.</p><p>16.2 Your card will remain stored against your Account for transactional purposes, unless you decide to remove it, or until the card expires. For legal purposes, we will continue to store records of your transactions in accordance with our Privacy Policy.</p><p>16.3 We need to do this so that you will be able to deposit and withdraw more easily in future and it also helps us to prevent and detect any fraudulent activity.</p><p>16.4 Stored details are primarily used so that you don&rsquo;t have to re-enter all your details for every transaction you make. In your Account you will see the last 4 digits of the card number, and this forms the reference for you to reference the correct card you wish to use.</p><p>16.5 We also compare stored details in our fraud screening systems, to prevent your details being used on any other Accounts and safeguard your data.</p><p>16.6 As per our policy, if you don&rsquo;t agree to us storing your payment card details, we won&rsquo;t be able to process your deposit from the card used.</p><p>16.7 Changes in the permitted use will require your agreement, we will notify you if this occurs.</p><p><br></p><p><br></p><p></p><h2><span style=\"font-size: 24px;\">17. Right of withdrawal</span></h2><p><br></p><p>17.1 You have 14 (fourteen) calendar days to exercise your right of withdrawal from this Agreement, without having to justify any reason or pay any penalty. This withdrawal period begins on the day after the date that your application is accepted by us.</p><p>17.2 We will not normally provide the Services during the withdrawal period. Any Services or Orders which are fully performed before a withdrawal cannot be reversed.</p><p>17.3 You must notify your withdrawal request to us within the allotted period by email to <u>support@Eclipto.com</u>.</p><p>17.4 If you exercise your right of withdrawal, this Agreement will be terminated at no cost to you.</p><p><br></p><p><br></p><p></p><h2><span style=\"font-size: 24px;\">18. Term</span></h2><p><br></p><p>18.1 This Agreement will commence in the manner set out in clause 1 and will continue unless either party notifies the other of termination, in writing, in accordance with this Agreement.</p><p>18.2 This Agreement can be terminated immediately by the Customer providing written notice to Eclipto.</p><p>18.3 This Agreement can be terminated by Eclipto in accordance with all the provisions of this Agreement.</p><p><br></p><p><br></p><p></p><h2><span style=\"font-size: 24px;\">19. Security</span></h2><p><br></p><p>19.1 You will be provided with security details from us which will be needed in order for you to access your Account with us. You must keep all such security details (including usernames and passwords) private and not share such details with any third party.&nbsp;&nbsp;</p><p>19.2 You must monitor your Account and read all messages that have been sent to you.&nbsp; If you suspect that any feature of your Account (for example&nbsp; login details, password or other security feature) has been lost, stolen, misappropriated, used without authorisation or otherwise compromised, you must contact us immediately notifying us of such action and you agree to change your password immediately if necessary.&nbsp;&nbsp;</p><p>19.3 We will never ask you to share your password with us or to any third party and you must never disclose this to anybody or allow someone to watch you when you are accessing your Account. It is advised that in order to keep your Account safe, you change your password regularly as this will minimise the risk of your Account being compromised.&nbsp;</p><p>19.4 You must also ensure that your registered email account(s) are secure and can only be accessed by you, as your email address may be used in the process of resetting passwords or we may send communications to your email account regarding the security of your Account with us. In case any of the email addresses registered with your Account are compromised, you should, immediately contact us and also contact your email service provider, once you have been made aware of this.&nbsp;</p><p><br></p><p><br></p><p></p><h2><span style=\"font-size: 24px;\">20. Force majeure</span></h2><p><br></p><p>Except as set out otherwise, neither party will be liable for any loss caused directly or indirectly from circumstances not within its control, including but not limited to acts of God, government restrictions, exchange or market rulings, actions affecting securities, clearing or commodity exchanges including suspensions of trading or extensions of trading hours, dealing cut-off times and holidays, acts of civil or military authority, national emergencies, natural disasters, wars, riots or acts of terrorism, industrial disputes, acts or regulations of any governmental or supranational bodies and authorities or the failure or malfunction of any telecommunication or computer service.</p><p><br></p><p><br></p><p></p><h2><span style=\"font-size: 24px;\">21. Notices</span></h2><p><br></p><p>21.1 All notices and communications pursuant or in connection with this Agreement:</p><p>21.1.1 Must be in English, in writing and legible (you confirm by signing this Agreement that you possess proper knowledge and understanding of the English language);</p><p>21.1.2 Must be delivered and/or sent to us to the following:</p><ul class=\"ak-ul\"><li><p>Address: 20-22 Wenlock Road, London, England, N1 7GU.</p></li><li><p>Email: <a href=\"mailto:support@moonpay.com\"><u>support@Eclipto.com</u></a></p></li></ul><p>or at another address (within the United Kingdom) as we may from time to time notify you; and</p><p>21.1.3 Will be delivered or sent to you at the postal address or email address that you have notified or provided to us in connection with this Agreement.</p><p>21.2 Any notice or other communication sent by post will be sent by pre-paid first-class post (if to/from the United Kingdom) or by pre-paid airmail (if to/from outside of the United Kingdom).&nbsp;</p><p>21.3 The parties acknowledge that any notice or other communication will be deemed to be given as follows :</p><p>21.3.1 If delivered, at the time and on the date of delivery if delivered during a Business Day, or at the start of the next Business Day if delivered at any other time;</p><p>21.3.2 If sent by post to and from a place within the United Kingdom, at the start of the second Business Day after it was put in the post;</p><p>21.3.3 If sent by post to or from a place outside the United Kingdom, at the start of the fifth Business Day after it was put in the post; or</p><p>21.3.4 If sent by email, at the time and on the date of transmission if transmitted during normal office hours (09:00-17:30) on a Business Day (local time at the place of receipt) and, in any other case, at the start of the Business Day following the date of transmission.&nbsp;</p><p>21.4 This clause will not apply to the service of any proceedings or other documents in any legal action by the parties. Eclipto will not accept service of proceedings or any legal action by way of email by you or any third party.&nbsp;</p><p>21.5 We may (where allowed to do so by law) communicate with you by posting information in your Account or on the Site,&nbsp; in which case the information will be treated as received by you when it is posted by us.</p><p>21.6 Complaints and general queries If you have any feedback or questions contact us via our Customer support email address at <a href=\"mailto:support@moonpay.com\"><u>support@Eclipto.com</u></a>. Please provide your name, address, and any other information we may need to identify you, your Account, and the Order on which you have feedback or questions.&nbsp;</p><p>21.7 For any complaint relating to the Services, you are advised to contact <a href=\"mailto:support@moonpay.com\"><u>support@Eclipto.com</u></a>. Should we receive a complaint from you, we will immediately carry out an independent investigation of your complaint and will provide you with a written response. We will aim to respond to you within thirty (30) days of receipt of your written complaint with our final response.</p><p><br></p><p><br></p><h2><span style=\"font-size: 24px;\">22. General</span></h2><p><br></p><p><br></p><p>22.1 You must comply with all applicable laws, regulations, licensing requirements and third party rights (including, without limitation, data privacy laws) in your use of the Eclipto Services.</p><p>22.2 We grant you a limited, non-exclusive, non-transferable licence, subject to the terms of this Agreement, to access and use the Site, and related content, materials, information (collectively, the \"Content\") solely for approved purposes as permitted by us from time to time. Any other use of the Site or Content is expressly prohibited and all other right, title, and interest in the Site or Content is exclusively the property of Eclipto and its licensors. You agree not to copy, transmit, distribute, sell, license, reverse engineer, modify, publish, or participate in the transfer or sale of, create derivative works from, or in any other way exploit any of the Content, in whole or in part.</p><p>22.3 \"Eclipto\", <a data-inline-card=\"\" href=\"http://moonpay.com\" data-card-data=\"\">http://moonpay.com</a>  and all logos related to the Eclipto Services or displayed on the Site are trademarks or registered marks of Eclipto or its licensors. You may not copy, imitate or use them without our prior written consent or any third party\'s copyright, trade secret, patent or other intellectual property rights, or rights of publicity or privacy.</p><p>22.4 Your use of the Eclipto Services and the Site is subject to international export controls and economic sanctions requirements. By sending, buying, selling, Cryptocurrencies through the Site or Eclipto Services, you agree that you will comply with those requirements. You are not permitted to acquire Cryptocurrency or use any of the Eclipto Services through the Site if:</p><p>22.4.1 you are in, under the control of, or a national or resident of Cuba, Iran, North Korea, Sudan, or Syria or any other country subject to United States embargo, UN sanctions, the European Union or HM Treasury\'s financial sanctions regimes (each a \"Sanctioned Country\"), or if you are a person on the U.S. Treasury Department\'s Specially Designated Nationals List or the U.S. Commerce Department\'s Denied Persons List, Unverified List, Entity List, or the EU or HM Treasury\'s financial sanctions regime (a \"Sanctioned Person\"); or</p><p>22.4.2 you intend to supply any acquired or stored Cryptocurrency or Eclipto Services to a Sanctioned Country (or a national or resident of a Sanctioned Country) or Sanctioned Person.</p><p>22.5 We will notify you of any change to this Agreement on your first use of the Eclipto Services after any amendment. You will be deemed to have accepted the change if you continue to use the Eclipto Services. If you do not accept the change you should let us know, and the Agreement will terminate.&nbsp;</p><p>22.6 We may make all other amendments to the Agreement by posting the revised Agreement on the Site or by emailing it to you, indicating when the revised Agreement becomes effective. Although we will endeavour to provide you with advance notice where possible, where lawful we may indicate that the revised Agreement shall be effective immediately and if you do not agree with any such modification, you should close your Eclipto Account and cease using the Eclipto Services.</p><p>22.7 Copies of the most up-to-date version of the Agreement will be made available in the Site at all times and will be provided to you by email on your request.</p><p>22.8 Nothing in this Agreement shall be deemed or is intended to be deemed, nor shall it cause, either you or Eclipto to be treated as partners or joint ventures, or either you or Eclipto to be treated as the agent of the other.</p><p>22.9 If you receive information about another user through the Eclipto Services, you must keep the information confidential and only use it in connection with the Eclipto Services. You may not disclose or distribute a user&rsquo;s information to a third party or use the information except as reasonably necessary to carry out a transaction and other functions reasonably incidental thereto such as support, reconciliation and accounting unless you receive the user&rsquo;s express consent to do so. You may not send unsolicited communications to another user through Eclipto.</p><p>22.10 You are responsible for keeping your email address and telephone number up to date in your Eclipto Account profile in order to receive any notices or alerts that we may send you (including notices or alerts of actual or suspected Security Breaches).</p><p>22.11 This Agreement (including documents incorporated by reference herein) comprise the entire understanding and agreement between you and Eclipto as to the subject matter hereof, and it supersedes any and all prior discussions, agreements and understandings of any kind (including without limitation any prior versions of this Agreement), and every nature between and among you and Eclipto.</p><p>22.12 Section headings in this Agreement are for convenience only and shall not govern the meaning or interpretation of any provision of this Agreement.</p><p>22.13 This Agreement is personal to you and you cannot transfer or assign your rights, licenses, interests and/or obligations to anyone else. We may transfer or assign our rights licenses, interests and / or our obligations at any time to any persons, including but not limited as part of a merger, acquisition or other corporate reorganisation involving Eclipto, provided that this transfer or assignment does not materially impact the quality of the Eclipto Services you receive. Subject to the foregoing, this Agreement will bind and inure to the benefit of the parties, their successors and permitted assigns.</p><p>22.14 If any provision of this Agreement is determined to be invalid or unenforceable under any applicable law, this will not affect the validity of any other provision. If any provision is found unenforceable, the unenforceable provision will be severed, and the remaining provisions will be enforced.</p><p>22.15 We may not always strictly enforce our rights under this Agreement. If we do choose not to enforce our rights at any time, this is a temporary measure and we may enforce our rights strictly again at any time.</p><p>22.16 This Agreement and any information or notifications that you or we are to provide should be in English. Any translation of this Agreement or other documents is provided for your convenience only and may not accurately represent the information in the original English. In the event of any inconsistency, the English language version of this Agreement or other documents shall prevail.</p><p>22.17 In the event that Eclipto is acquired by or merged with a third party entity, we reserve the right, in any of these circumstances, to transfer or assign the information we have collected from you and our relationship with you (including this Agreement) as part of such merger, acquisition, sale, or other change of control.</p><p>22.18 Unless otherwise stated, nobody else has any rights under this Agreement. This Agreement is between you and us. No other person shall have any rights to enforce any of its terms including under the Contracts (Rights of Third Parties) Act 1999.&nbsp;&nbsp;</p><p>22.19 All provisions of this Agreement which by their nature extend beyond the expiration or termination of this Agreement, including, without limitation, the Sections relating to suspension or termination, Eclipto Account cancellation, debts owed to Eclipto, general use of the Site, disputes with Eclipto, and general provisions will continue to be binding and operate after the termination or expiration of this Agreement.</p><p>22.20 This Agreement will be governed by, and construed in accordance with, the laws of Czech Republic, subject to any overriding legal requirements, the parties irrevocably submit to the exclusive jurisdiction of the Czech Republic. This Agreement and any information or notifications that you or we are to provide should be in English or Czech.</p><p><br></p><p><br></p><p><br></p><p><br></p></body></html>\n', '[\"footer\"]', 'active', '2024-08-10 20:22:25', '2024-08-15 09:59:41');

-- --------------------------------------------------------

--
-- Table structure for table `parameters`
--

CREATE TABLE `parameters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unique_code` varchar(191) NOT NULL,
  `parameter` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parameters`
--

INSERT INTO `parameters` (`id`, `unique_code`, `parameter`, `created_at`, `updated_at`) VALUES
(3, '2E05D1A6B737E', 'eyJjdXJyZW5jeV9pZCI6MSwiY3VycmVuY3lDb2RlIjoiVVNEIiwidG90YWwiOjIuMDEsImFtb3VudCI6Mi4wMSwidG90YWxBbW91bnQiOjIuMDEsInRyYW5zYWN0aW9uX3R5cGUiOjE0LCJwYXltZW50X3R5cGUiOiJjcnlwdG9fYnV5IiwicGF5bWVudF9tZXRob2QiOjIsInJlZGlyZWN0VXJsIjoiaHR0cHM6XC9cL2RlbW8uYWltbGRldmVsb3Blci5jb21cL2NyeXB0by1leGNoYW5nZVwvcGF5bWVudC1jb21wbGV0ZSIsImNhbmNlbF91cmwiOiJodHRwczpcL1wvZGVtby5haW1sZGV2ZWxvcGVyLmNvbVwvcGF5bWVudFwvZmFpbCIsImdhdGV3YXkiOiJzdHJpcGUiLCJ1dWlkIjoiMkUwNUQxQTZCNzM3RSIsInNlc3Npb25WYWx1ZSI6eyJleGNoYW5nZV90eXBlIjoiY3J5cHRvX2J1eSIsImZyb21fY3VycmVuY3lfY29kZSI6IlVTRCIsInRvX2N1cnJlbmN5X2NvZGUiOiJCVEMiLCJmcm9tX2N1cnJlbmN5X2xvZ28iOiJpY29uczgtdXMtZG9sbGFyLTY0LnBuZyIsInRvX2N1cnJlbmN5X2xvZ28iOiJiaXRjb2luX2NyeXB0by5wbmciLCJmcm9tX2N1cnJlbmN5IjoxLCJ0b19jdXJyZW5jeSI6NCwic2VuZF9hbW91bnQiOiIxLjAwIiwiZ2V0X2Ftb3VudCI6IjAuMDAwMDE1ODMiLCJleGNoYW5nZV9yYXRlIjoiMC4wMDAwMTU4MyIsImV4Y2hhbmdlX2ZlZSI6IjEuMDEiLCJleGNoYW5nZV9yYXRlX2Rpc3BsYXkiOiIxIFVTRCA9IDAuMDAwMDE1ODMgQlRDIiwibWVzc2FnZSI6IiIsIm1lcmNoYW50QWRkcmVzcyI6bnVsbCwic2VuZGluZ09wdGlvbiI6WyJnYXRld2F5Il0sInJlY2VpdmluZ09wdGlvbiI6WyJ3YWxsZXQiLCJhZGRyZXNzIl0sInByZWYiOiJlbWFpbCIsImZyb21XYWxsZXQiOnsiaWQiOjQsImN1cnJlbmN5X2lkIjoxLCJiYWxhbmNlIjoiMjAuMDAwMDAwMDAiLCJjdXJyZW5jeSI6eyJpZCI6MSwiY29kZSI6IlVTRCIsInN5bWJvbCI6IiQifX0sImN1cnJlbmN5UGF5bWVudE1ldGhvZHMiOlt7ImlkIjoxLCJuYW1lIjoiTXRzIn0seyJpZCI6MiwibmFtZSI6IlN0cmlwZSJ9XSwiZXhwaXJlX3NlY29uZHMiOjYwMCwiZXhwaXJlX3RpbWUiOjE3MTkxOTM5NjMwMDAsInJlY2VpdmVfdmlhIjoiYWRkcmVzcyIsInJlY2VpdmluZ19hZGRyZXNzIjoiYWRzYWRzZGFzIn0sImN1cnJlbmN5VHlwZSI6ImZpYXQiLCJ1c2VyX2lkIjoyfQ%3D%3D', NULL, NULL),
(5, '23B81E6F95127', 'eyJjdXJyZW5jeV9pZCI6MSwiY3VycmVuY3lDb2RlIjoiVVNEIiwidG90YWwiOjIuMDEsImFtb3VudCI6Mi4wMSwidG90YWxBbW91bnQiOjIuMDEsInRyYW5zYWN0aW9uX3R5cGUiOjE0LCJwYXltZW50X3R5cGUiOiJjcnlwdG9fYnV5IiwicGF5bWVudF9tZXRob2QiOjEsInJlZGlyZWN0VXJsIjoiaHR0cHM6XC9cL2RlbW8uYWltbGRldmVsb3Blci5jb21cL2NyeXB0by1leGNoYW5nZVwvcGF5bWVudC1jb21wbGV0ZSIsImNhbmNlbF91cmwiOiJodHRwczpcL1wvZGVtby5haW1sZGV2ZWxvcGVyLmNvbVwvcGF5bWVudFwvZmFpbCIsImdhdGV3YXkiOiJtdHMiLCJ1dWlkIjoiMjNCODFFNkY5NTEyNyIsInNlc3Npb25WYWx1ZSI6eyJleGNoYW5nZV90eXBlIjoiY3J5cHRvX2J1eSIsImZyb21fY3VycmVuY3lfY29kZSI6IlVTRCIsInRvX2N1cnJlbmN5X2NvZGUiOiJCVEMiLCJmcm9tX2N1cnJlbmN5X2xvZ28iOiJpY29uczgtdXMtZG9sbGFyLTY0LnBuZyIsInRvX2N1cnJlbmN5X2xvZ28iOiJiaXRjb2luX2NyeXB0by5wbmciLCJmcm9tX2N1cnJlbmN5IjoxLCJ0b19jdXJyZW5jeSI6NCwic2VuZF9hbW91bnQiOiIxLjAwIiwiZ2V0X2Ftb3VudCI6IjAuMDAwMDE2MTkiLCJleGNoYW5nZV9yYXRlIjoiMC4wMDAwMTYxOSIsImV4Y2hhbmdlX2ZlZSI6IjEuMDEiLCJleGNoYW5nZV9yYXRlX2Rpc3BsYXkiOiIxIFVTRCA9IDAuMDAwMDE2MTkgQlRDIiwibWVzc2FnZSI6IiIsIm1lcmNoYW50QWRkcmVzcyI6bnVsbCwic2VuZGluZ09wdGlvbiI6WyJnYXRld2F5Il0sInJlY2VpdmluZ09wdGlvbiI6WyJ3YWxsZXQiLCJhZGRyZXNzIl0sInByZWYiOiJlbWFpbCIsImZyb21XYWxsZXQiOnsiaWQiOjksImN1cnJlbmN5X2lkIjoxLCJiYWxhbmNlIjoiMC4wMDAwMDAwMCIsImN1cnJlbmN5Ijp7ImlkIjoxLCJjb2RlIjoiVVNEIiwic3ltYm9sIjoiJCJ9fSwiY3VycmVuY3lQYXltZW50TWV0aG9kcyI6W3siaWQiOjEsIm5hbWUiOiJNdHMifSx7ImlkIjoyLCJuYW1lIjoiU3RyaXBlIn1dLCJleHBpcmVfc2Vjb25kcyI6NjAwLCJleHBpcmVfdGltZSI6MTcxOTMyODA0NjAwMCwicmVjZWl2ZV92aWEiOiJhZGRyZXNzIiwicmVjZWl2aW5nX2FkZHJlc3MiOiJhZHNhZHNkYXMifSwiY3VycmVuY3lUeXBlIjoiZmlhdCIsInVzZXJfaWQiOjR9', NULL, NULL),
(6, '27C46E8A268EB', 'eyJjdXJyZW5jeV9pZCI6MSwiY3VycmVuY3lDb2RlIjoiVVNEIiwidG90YWwiOjIuMDEsImFtb3VudCI6Mi4wMSwidG90YWxBbW91bnQiOjIuMDEsInRyYW5zYWN0aW9uX3R5cGUiOjE0LCJwYXltZW50X3R5cGUiOiJjcnlwdG9fYnV5IiwicGF5bWVudF9tZXRob2QiOjIsInJlZGlyZWN0VXJsIjoiaHR0cHM6XC9cL2RlbW8uYWltbGRldmVsb3Blci5jb21cL2NyeXB0by1leGNoYW5nZVwvcGF5bWVudC1jb21wbGV0ZSIsImNhbmNlbF91cmwiOiJodHRwczpcL1wvZGVtby5haW1sZGV2ZWxvcGVyLmNvbVwvcGF5bWVudFwvZmFpbCIsImdhdGV3YXkiOiJzdHJpcGUiLCJ1dWlkIjoiMjdDNDZFOEEyNjhFQiIsInNlc3Npb25WYWx1ZSI6eyJleGNoYW5nZV90eXBlIjoiY3J5cHRvX2J1eSIsImZyb21fY3VycmVuY3lfY29kZSI6IlVTRCIsInRvX2N1cnJlbmN5X2NvZGUiOiJCVEMiLCJmcm9tX2N1cnJlbmN5X2xvZ28iOiJpY29uczgtdXMtZG9sbGFyLTY0LnBuZyIsInRvX2N1cnJlbmN5X2xvZ28iOiJiaXRjb2luX2NyeXB0by5wbmciLCJmcm9tX2N1cnJlbmN5IjoxLCJ0b19jdXJyZW5jeSI6NCwic2VuZF9hbW91bnQiOiIxLjAwIiwiZ2V0X2Ftb3VudCI6IjAuMDAwMDE2MTkiLCJleGNoYW5nZV9yYXRlIjoiMC4wMDAwMTYxOSIsImV4Y2hhbmdlX2ZlZSI6IjEuMDEiLCJleGNoYW5nZV9yYXRlX2Rpc3BsYXkiOiIxIFVTRCA9IDAuMDAwMDE2MTkgQlRDIiwibWVzc2FnZSI6IiIsIm1lcmNoYW50QWRkcmVzcyI6bnVsbCwic2VuZGluZ09wdGlvbiI6WyJnYXRld2F5Il0sInJlY2VpdmluZ09wdGlvbiI6WyJ3YWxsZXQiLCJhZGRyZXNzIl0sInByZWYiOiJlbWFpbCIsImZyb21XYWxsZXQiOnsiaWQiOjksImN1cnJlbmN5X2lkIjoxLCJiYWxhbmNlIjoiMC4wMDAwMDAwMCIsImN1cnJlbmN5Ijp7ImlkIjoxLCJjb2RlIjoiVVNEIiwic3ltYm9sIjoiJCJ9fSwiY3VycmVuY3lQYXltZW50TWV0aG9kcyI6W3siaWQiOjEsIm5hbWUiOiJNdHMifSx7ImlkIjoyLCJuYW1lIjoiU3RyaXBlIn1dLCJleHBpcmVfc2Vjb25kcyI6NjAwLCJleHBpcmVfdGltZSI6MTcxOTMyODEzNjAwMCwicmVjZWl2ZV92aWEiOiJhZGRyZXNzIiwicmVjZWl2aW5nX2FkZHJlc3MiOiJhZHNhZHNkYXMifSwiY3VycmVuY3lUeXBlIjoiZmlhdCIsInVzZXJfaWQiOjR9', NULL, NULL),
(10, '6E6788354CBE9', 'eyJjdXJyZW5jeV9pZCI6MSwiY3VycmVuY3lDb2RlIjoiVVNEIiwidG90YWwiOjIuMDEsImFtb3VudCI6Mi4wMSwidG90YWxBbW91bnQiOjIuMDEsInRyYW5zYWN0aW9uX3R5cGUiOjE0LCJwYXltZW50X3R5cGUiOiJjcnlwdG9fYnV5IiwicGF5bWVudF9tZXRob2QiOjIsInJlZGlyZWN0VXJsIjoiaHR0cDpcL1wvZGVtby5haW1sZGV2ZWxvcGVyLmNvbVwvY3J5cHRvLWV4Y2hhbmdlXC9wYXltZW50LWNvbXBsZXRlIiwiY2FuY2VsX3VybCI6Imh0dHA6XC9cL2RlbW8uYWltbGRldmVsb3Blci5jb21cL3BheW1lbnRcL2ZhaWwiLCJnYXRld2F5Ijoic3RyaXBlIiwidXVpZCI6IjZFNjc4ODM1NENCRTkiLCJzZXNzaW9uVmFsdWUiOnsiZXhjaGFuZ2VfdHlwZSI6ImNyeXB0b19idXkiLCJmcm9tX2N1cnJlbmN5X2NvZGUiOiJVU0QiLCJ0b19jdXJyZW5jeV9jb2RlIjoiQlRDIiwiZnJvbV9jdXJyZW5jeV9sb2dvIjoiaWNvbnM4LXVzLWRvbGxhci02NC5wbmciLCJ0b19jdXJyZW5jeV9sb2dvIjoiYml0Y29pbl9jcnlwdG8ucG5nIiwiZnJvbV9jdXJyZW5jeSI6MSwidG9fY3VycmVuY3kiOjQsInNlbmRfYW1vdW50IjoiMS4wMCIsImdldF9hbW91bnQiOiIwLjAwMDAxNjEyIiwiZXhjaGFuZ2VfcmF0ZSI6IjAuMDAwMDE2MTIiLCJleGNoYW5nZV9mZWUiOiIxLjAxIiwiZXhjaGFuZ2VfcmF0ZV9kaXNwbGF5IjoiMSBVU0QgPSAwLjAwMDAxNjEyIEJUQyIsIm1lc3NhZ2UiOiIiLCJtZXJjaGFudEFkZHJlc3MiOm51bGwsInNlbmRpbmdPcHRpb24iOlsiZ2F0ZXdheSJdLCJyZWNlaXZpbmdPcHRpb24iOlsid2FsbGV0IiwiYWRkcmVzcyJdLCJwcmVmIjoiZW1haWwiLCJmcm9tV2FsbGV0Ijp7ImlkIjoxLCJjdXJyZW5jeV9pZCI6MSwiYmFsYW5jZSI6IjAuMDAwMDAwMDAiLCJjdXJyZW5jeSI6eyJpZCI6MSwiY29kZSI6IlVTRCIsInN5bWJvbCI6IiQifX0sImN1cnJlbmN5UGF5bWVudE1ldGhvZHMiOlt7ImlkIjoxLCJuYW1lIjoiTXRzIn0seyJpZCI6MiwibmFtZSI6IlN0cmlwZSJ9XSwiZXhwaXJlX3NlY29uZHMiOjYwMCwiZXhwaXJlX3RpbWUiOjE3MTk5NzA2MTYwMDAsInJlY2VpdmVfdmlhIjoiYWRkcmVzcyIsInJlY2VpdmluZ19hZGRyZXNzIjoiYWRzYWRzZGFzIn0sImN1cnJlbmN5VHlwZSI6ImZpYXQiLCJ1c2VyX2lkIjoxfQ%3D%3D', NULL, NULL),
(11, '0827059A6A92B', 'eyJjdXJyZW5jeV9pZCI6MSwiY3VycmVuY3lDb2RlIjoiVVNEIiwidG90YWwiOjIuMDEsImFtb3VudCI6Mi4wMSwidG90YWxBbW91bnQiOjIuMDEsInRyYW5zYWN0aW9uX3R5cGUiOjE0LCJwYXltZW50X3R5cGUiOiJjcnlwdG9fYnV5IiwicGF5bWVudF9tZXRob2QiOjIsInJlZGlyZWN0VXJsIjoiaHR0cHM6XC9cL2RlbW8uYWltbGRldmVsb3Blci5jb21cL2NyeXB0by1leGNoYW5nZVwvcGF5bWVudC1jb21wbGV0ZSIsImNhbmNlbF91cmwiOiJodHRwczpcL1wvZGVtby5haW1sZGV2ZWxvcGVyLmNvbVwvcGF5bWVudFwvZmFpbCIsImdhdGV3YXkiOiJzdHJpcGUiLCJ1dWlkIjoiMDgyNzA1OUE2QTkyQiIsInNlc3Npb25WYWx1ZSI6eyJleGNoYW5nZV90eXBlIjoiY3J5cHRvX2J1eSIsImZyb21fY3VycmVuY3lfY29kZSI6IlVTRCIsInRvX2N1cnJlbmN5X2NvZGUiOiJCVEMiLCJmcm9tX2N1cnJlbmN5X2xvZ28iOiJpY29uczgtdXMtZG9sbGFyLTY0LnBuZyIsInRvX2N1cnJlbmN5X2xvZ28iOiJiaXRjb2luX2NyeXB0by5wbmciLCJmcm9tX2N1cnJlbmN5IjoxLCJ0b19jdXJyZW5jeSI6NCwic2VuZF9hbW91bnQiOiIxLjAwIiwiZ2V0X2Ftb3VudCI6IjAuMDAwMDE3NTIiLCJleGNoYW5nZV9yYXRlIjoiMC4wMDAwMTc1MiIsImV4Y2hhbmdlX2ZlZSI6IjEuMDEiLCJleGNoYW5nZV9yYXRlX2Rpc3BsYXkiOiIxIFVTRCA9IDAuMDAwMDE3NTIgQlRDIiwibWVzc2FnZSI6IiIsIm1lcmNoYW50QWRkcmVzcyI6bnVsbCwic2VuZGluZ09wdGlvbiI6WyJnYXRld2F5Il0sInJlY2VpdmluZ09wdGlvbiI6WyJ3YWxsZXQiLCJhZGRyZXNzIl0sInByZWYiOiJlbWFpbCIsImZyb21XYWxsZXQiOnsiaWQiOjEsImN1cnJlbmN5X2lkIjoxLCJiYWxhbmNlIjoiMC4wMDAwMDAwMCIsImN1cnJlbmN5Ijp7ImlkIjoxLCJjb2RlIjoiVVNEIiwic3ltYm9sIjoiJCJ9fSwiY3VycmVuY3lQYXltZW50TWV0aG9kcyI6W3siaWQiOjEsIm5hbWUiOiJNdHMifSx7ImlkIjoyLCJuYW1lIjoiU3RyaXBlIn1dLCJleHBpcmVfc2Vjb25kcyI6NjAwLCJleHBpcmVfdGltZSI6MTcyMDI3ODIzOTAwMCwicmVjZWl2ZV92aWEiOiJhZGRyZXNzIiwicmVjZWl2aW5nX2FkZHJlc3MiOiJhZHNhZHNkYXMifSwiY3VycmVuY3lUeXBlIjoiZmlhdCIsInVzZXJfaWQiOjF9', NULL, NULL),
(12, '0F480113A2456', 'eyJjdXJyZW5jeV9pZCI6MSwiY3VycmVuY3lDb2RlIjoiVVNEIiwidG90YWwiOjIuMDEsImFtb3VudCI6Mi4wMSwidG90YWxBbW91bnQiOjIuMDEsInRyYW5zYWN0aW9uX3R5cGUiOjE0LCJwYXltZW50X3R5cGUiOiJjcnlwdG9fYnV5IiwicGF5bWVudF9tZXRob2QiOjIsInJlZGlyZWN0VXJsIjoiaHR0cHM6XC9cL2RlbW8uYWltbGRldmVsb3Blci5jb21cL2NyeXB0by1leGNoYW5nZVwvZ2F0ZXdheS1zdWNjZXNzIiwiY2FuY2VsX3VybCI6Imh0dHBzOlwvXC9kZW1vLmFpbWxkZXZlbG9wZXIuY29tXC9wYXltZW50XC9mYWlsIiwiZ2F0ZXdheSI6InN0cmlwZSIsInV1aWQiOiIwRjQ4MDExM0EyNDU2Iiwic2Vzc2lvblZhbHVlIjp7ImV4Y2hhbmdlX3R5cGUiOiJjcnlwdG9fYnV5IiwiZnJvbV9jdXJyZW5jeV9jb2RlIjoiVVNEIiwidG9fY3VycmVuY3lfY29kZSI6IkJUQyIsImZyb21fY3VycmVuY3lfbG9nbyI6Imljb25zOC11cy1kb2xsYXItNjQucG5nIiwidG9fY3VycmVuY3lfbG9nbyI6ImJpdGNvaW5fY3J5cHRvLnBuZyIsImZyb21fY3VycmVuY3kiOjEsInRvX2N1cnJlbmN5Ijo0LCJzZW5kX2Ftb3VudCI6IjEuMDAiLCJnZXRfYW1vdW50IjoiMC4wMDAwMTc2OSIsImV4Y2hhbmdlX3JhdGUiOiIwLjAwMDAxNzY5IiwiZXhjaGFuZ2VfZmVlIjoiMS4wMSIsImV4Y2hhbmdlX3JhdGVfZGlzcGxheSI6IjEgVVNEID0gMC4wMDAwMTc2OSBCVEMiLCJtZXNzYWdlIjoiIiwibWVyY2hhbnRBZGRyZXNzIjpudWxsLCJzZW5kaW5nT3B0aW9uIjpbImdhdGV3YXkiXSwicmVjZWl2aW5nT3B0aW9uIjpbIndhbGxldCIsImFkZHJlc3MiXSwicHJlZiI6ImVtYWlsIiwiZnJvbVdhbGxldCI6bnVsbCwiY3VycmVuY3lQYXltZW50TWV0aG9kcyI6W3siaWQiOjIsIm5hbWUiOiJTdHJpcGUifV0sIm1lbnUiOiJDcnlwdG8gRXhjaGFuZ2UiLCJjcnlwdG9fcGhvbmUiOiJhbHRhZmhvc3NhaW5saW1vbkBnbWFpbC5jb20iLCJyZWNlaXZpbmdfYWRkcmVzcyI6ImFkc2Fkc2RhcyIsInJlY2VpdmluZ19kZXRhaWxzIjpudWxsLCJ1cmwiOiJodHRwczpcL1wvZGVtby5haW1sZGV2ZWxvcGVyLmNvbVwvY3J5cHRvLWV4Y2hhbmdlXC9wYXltZW50IiwiZXhwaXJlVGltZSI6Ikp1bHkgMDksIDIwMjQgMDg6MjI6NTIgQU0iLCJyZWNlaXZlX3ZpYSI6ImFkZHJlc3MiLCJyZWRpcmVjdFVybCI6Imh0dHBzOlwvXC9kZW1vLmFpbWxkZXZlbG9wZXIuY29tXC9jcnlwdG8tZXhjaGFuZ2VcL2dhdGV3YXktc3VjY2VzcyIsInBheW1lbnRfbWV0aG9kIjoiMiJ9LCJjdXJyZW5jeVR5cGUiOiJmaWF0IiwidXNlcl9pZCI6bnVsbH0%3D', NULL, NULL),
(13, 'FFC8B25236795', 'eyJjdXJyZW5jeV9pZCI6MSwiY3VycmVuY3lDb2RlIjoiVVNEIiwidG90YWwiOjIuMDEsImFtb3VudCI6Mi4wMSwidG90YWxBbW91bnQiOjIuMDEsInRyYW5zYWN0aW9uX3R5cGUiOjE0LCJwYXltZW50X3R5cGUiOiJjcnlwdG9fYnV5IiwicGF5bWVudF9tZXRob2QiOjIsInJlZGlyZWN0VXJsIjoiaHR0cHM6XC9cL2RlbW8uYWltbGRldmVsb3Blci5jb21cL2NyeXB0by1leGNoYW5nZVwvcGF5bWVudC1jb21wbGV0ZSIsImNhbmNlbF91cmwiOiJodHRwczpcL1wvZGVtby5haW1sZGV2ZWxvcGVyLmNvbVwvcGF5bWVudFwvZmFpbCIsImdhdGV3YXkiOiJzdHJpcGUiLCJ1dWlkIjoiRkZDOEIyNTIzNjc5NSIsInNlc3Npb25WYWx1ZSI6eyJleGNoYW5nZV90eXBlIjoiY3J5cHRvX2J1eSIsImZyb21fY3VycmVuY3lfY29kZSI6IlVTRCIsInRvX2N1cnJlbmN5X2NvZGUiOiJCVEMiLCJmcm9tX2N1cnJlbmN5X2xvZ28iOiJpY29uczgtdXMtZG9sbGFyLTY0LnBuZyIsInRvX2N1cnJlbmN5X2xvZ28iOiJiaXRjb2luX2NyeXB0by5wbmciLCJmcm9tX2N1cnJlbmN5IjoxLCJ0b19jdXJyZW5jeSI6NCwic2VuZF9hbW91bnQiOiIxLjAwIiwiZ2V0X2Ftb3VudCI6IjAuMDAwMDE3MjIiLCJleGNoYW5nZV9yYXRlIjoiMC4wMDAwMTcyMiIsImV4Y2hhbmdlX2ZlZSI6IjEuMDEiLCJleGNoYW5nZV9yYXRlX2Rpc3BsYXkiOiIxIFVTRCA9IDAuMDAwMDE3MjIgQlRDIiwibWVzc2FnZSI6IiIsIm1lcmNoYW50QWRkcmVzcyI6bnVsbCwic2VuZGluZ09wdGlvbiI6WyJnYXRld2F5Il0sInJlY2VpdmluZ09wdGlvbiI6WyJ3YWxsZXQiLCJhZGRyZXNzIl0sInByZWYiOiJlbWFpbCIsImZyb21XYWxsZXQiOnsiaWQiOjEsImN1cnJlbmN5X2lkIjoxLCJiYWxhbmNlIjoiMC4wMDAwMDAwMCIsImN1cnJlbmN5Ijp7ImlkIjoxLCJjb2RlIjoiVVNEIiwic3ltYm9sIjoiJCJ9fSwiY3VycmVuY3lQYXltZW50TWV0aG9kcyI6W3siaWQiOjEsIm5hbWUiOiJNdHMifSx7ImlkIjoyLCJuYW1lIjoiU3RyaXBlIn1dLCJleHBpcmVfc2Vjb25kcyI6NjAwLCJleHBpcmVfdGltZSI6MTcyMDg1NDU3NjAwMCwicmVjZWl2ZV92aWEiOiJhZGRyZXNzIiwicmVjZWl2aW5nX2FkZHJlc3MiOiJhZHNhZHNkYXMifSwiY3VycmVuY3lUeXBlIjoiZmlhdCIsInVzZXJfaWQiOjF9', NULL, NULL),
(14, '12387AD28A3F5', 'eyJjdXJyZW5jeV9pZCI6MSwiY3VycmVuY3lDb2RlIjoiVVNEIiwidG90YWwiOjIuMDEsImFtb3VudCI6Mi4wMSwidG90YWxBbW91bnQiOjIuMDEsInRyYW5zYWN0aW9uX3R5cGUiOjE0LCJwYXltZW50X3R5cGUiOiJjcnlwdG9fYnV5IiwicGF5bWVudF9tZXRob2QiOjIsInJlZGlyZWN0VXJsIjoiaHR0cHM6XC9cL2RlbW8uYWltbGRldmVsb3Blci5jb21cL2NyeXB0by1leGNoYW5nZVwvcGF5bWVudC1jb21wbGV0ZSIsImNhbmNlbF91cmwiOiJodHRwczpcL1wvZGVtby5haW1sZGV2ZWxvcGVyLmNvbVwvcGF5bWVudFwvZmFpbCIsImdhdGV3YXkiOiJzdHJpcGUiLCJ1dWlkIjoiMTIzODdBRDI4QTNGNSIsInNlc3Npb25WYWx1ZSI6eyJleGNoYW5nZV90eXBlIjoiY3J5cHRvX2J1eSIsImZyb21fY3VycmVuY3lfY29kZSI6IlVTRCIsInRvX2N1cnJlbmN5X2NvZGUiOiJCVEMiLCJmcm9tX2N1cnJlbmN5X2xvZ28iOiJpY29uczgtdXMtZG9sbGFyLTY0LnBuZyIsInRvX2N1cnJlbmN5X2xvZ28iOiJiaXRjb2luX2NyeXB0by5wbmciLCJmcm9tX2N1cnJlbmN5IjoxLCJ0b19jdXJyZW5jeSI6NCwic2VuZF9hbW91bnQiOiIxLjAwIiwiZ2V0X2Ftb3VudCI6IjAuMDAwMDE3MjIiLCJleGNoYW5nZV9yYXRlIjoiMC4wMDAwMTcyMiIsImV4Y2hhbmdlX2ZlZSI6IjEuMDEiLCJleGNoYW5nZV9yYXRlX2Rpc3BsYXkiOiIxIFVTRCA9IDAuMDAwMDE3MjIgQlRDIiwibWVzc2FnZSI6IiIsIm1lcmNoYW50QWRkcmVzcyI6bnVsbCwic2VuZGluZ09wdGlvbiI6WyJnYXRld2F5Il0sInJlY2VpdmluZ09wdGlvbiI6WyJ3YWxsZXQiLCJhZGRyZXNzIl0sInByZWYiOiJlbWFpbCIsImZyb21XYWxsZXQiOnsiaWQiOjEsImN1cnJlbmN5X2lkIjoxLCJiYWxhbmNlIjoiMC4wMDAwMDAwMCIsImN1cnJlbmN5Ijp7ImlkIjoxLCJjb2RlIjoiVVNEIiwic3ltYm9sIjoiJCJ9fSwiY3VycmVuY3lQYXltZW50TWV0aG9kcyI6W3siaWQiOjEsIm5hbWUiOiJNdHMifSx7ImlkIjoyLCJuYW1lIjoiU3RyaXBlIn1dLCJleHBpcmVfc2Vjb25kcyI6NjAwLCJleHBpcmVfdGltZSI6MTcyMDg1NDU3NjAwMCwicmVjZWl2ZV92aWEiOiJhZGRyZXNzIiwicmVjZWl2aW5nX2FkZHJlc3MiOiJhZHNhZHNkYXMifSwiY3VycmVuY3lUeXBlIjoiZmlhdCIsInVzZXJfaWQiOjF9', NULL, NULL),
(15, 'F81B6B8BFAEA8', 'eyJjdXJyZW5jeV9pZCI6MSwiY3VycmVuY3lDb2RlIjoiVVNEIiwidG90YWwiOjIuMDEsImFtb3VudCI6Mi4wMSwidG90YWxBbW91bnQiOjIuMDEsInRyYW5zYWN0aW9uX3R5cGUiOjE0LCJwYXltZW50X3R5cGUiOiJjcnlwdG9fYnV5IiwicGF5bWVudF9tZXRob2QiOjIsInJlZGlyZWN0VXJsIjoiaHR0cHM6XC9cL2RlbW8uYWltbGRldmVsb3Blci5jb21cL2NyeXB0by1leGNoYW5nZVwvcGF5bWVudC1jb21wbGV0ZSIsImNhbmNlbF91cmwiOiJodHRwczpcL1wvZGVtby5haW1sZGV2ZWxvcGVyLmNvbVwvcGF5bWVudFwvZmFpbCIsImdhdGV3YXkiOiJzdHJpcGUiLCJ1dWlkIjoiRjgxQjZCOEJGQUVBOCIsInNlc3Npb25WYWx1ZSI6eyJleGNoYW5nZV90eXBlIjoiY3J5cHRvX2J1eSIsImZyb21fY3VycmVuY3lfY29kZSI6IlVTRCIsInRvX2N1cnJlbmN5X2NvZGUiOiJCVEMiLCJmcm9tX2N1cnJlbmN5X2xvZ28iOiJpY29uczgtdXMtZG9sbGFyLTY0LnBuZyIsInRvX2N1cnJlbmN5X2xvZ28iOiJiaXRjb2luX2NyeXB0by5wbmciLCJmcm9tX2N1cnJlbmN5IjoxLCJ0b19jdXJyZW5jeSI6NCwic2VuZF9hbW91bnQiOiIxLjAwIiwiZ2V0X2Ftb3VudCI6IjAuMDAwMDE3MjIiLCJleGNoYW5nZV9yYXRlIjoiMC4wMDAwMTcyMiIsImV4Y2hhbmdlX2ZlZSI6IjEuMDEiLCJleGNoYW5nZV9yYXRlX2Rpc3BsYXkiOiIxIFVTRCA9IDAuMDAwMDE3MjIgQlRDIiwibWVzc2FnZSI6IiIsIm1lcmNoYW50QWRkcmVzcyI6bnVsbCwic2VuZGluZ09wdGlvbiI6WyJnYXRld2F5Il0sInJlY2VpdmluZ09wdGlvbiI6WyJ3YWxsZXQiLCJhZGRyZXNzIl0sInByZWYiOiJlbWFpbCIsImZyb21XYWxsZXQiOnsiaWQiOjEsImN1cnJlbmN5X2lkIjoxLCJiYWxhbmNlIjoiMC4wMDAwMDAwMCIsImN1cnJlbmN5Ijp7ImlkIjoxLCJjb2RlIjoiVVNEIiwic3ltYm9sIjoiJCJ9fSwiY3VycmVuY3lQYXltZW50TWV0aG9kcyI6W3siaWQiOjEsIm5hbWUiOiJNdHMifSx7ImlkIjoyLCJuYW1lIjoiU3RyaXBlIn1dLCJleHBpcmVfc2Vjb25kcyI6NjAwLCJleHBpcmVfdGltZSI6MTcyMDg1NDU3NjAwMCwicmVjZWl2ZV92aWEiOiJhZGRyZXNzIiwicmVjZWl2aW5nX2FkZHJlc3MiOiJhZHNhZHNkYXMifSwiY3VycmVuY3lUeXBlIjoiZmlhdCIsInVzZXJfaWQiOjF9', NULL, NULL),
(16, 'A133A0C40AAEE', 'eyJjdXJyZW5jeV9pZCI6MSwiY3VycmVuY3lDb2RlIjoiVVNEIiwidG90YWwiOjIuMDEsImFtb3VudCI6Mi4wMSwidG90YWxBbW91bnQiOjIuMDEsInRyYW5zYWN0aW9uX3R5cGUiOjE0LCJwYXltZW50X3R5cGUiOiJjcnlwdG9fYnV5IiwicGF5bWVudF9tZXRob2QiOjUsInJlZGlyZWN0VXJsIjoiaHR0cHM6XC9cL2RlbW8uYWltbGRldmVsb3Blci5jb21cL2NyeXB0by1leGNoYW5nZVwvZ2F0ZXdheS1zdWNjZXNzIiwiY2FuY2VsX3VybCI6Imh0dHBzOlwvXC9kZW1vLmFpbWxkZXZlbG9wZXIuY29tXC9wYXltZW50XC9mYWlsIiwiZ2F0ZXdheSI6ImJhbmsiLCJ1dWlkIjoiQTEzM0EwQzQwQUFFRSIsInNlc3Npb25WYWx1ZSI6eyJleGNoYW5nZV90eXBlIjoiY3J5cHRvX2J1eSIsImZyb21fY3VycmVuY3lfY29kZSI6IlVTRCIsInRvX2N1cnJlbmN5X2NvZGUiOiJCVEMiLCJmcm9tX2N1cnJlbmN5X2xvZ28iOiJpY29uczgtdXMtZG9sbGFyLTY0LnBuZyIsInRvX2N1cnJlbmN5X2xvZ28iOiJiaXRjb2luX2NyeXB0by5wbmciLCJmcm9tX2N1cnJlbmN5IjoxLCJ0b19jdXJyZW5jeSI6NCwic2VuZF9hbW91bnQiOiIxLjAwIiwiZ2V0X2Ftb3VudCI6IjAuMDAwMDE3MjMiLCJleGNoYW5nZV9yYXRlIjoiMC4wMDAwMTcyMyIsImV4Y2hhbmdlX2ZlZSI6IjEuMDEiLCJleGNoYW5nZV9yYXRlX2Rpc3BsYXkiOiIxIFVTRCA9IDAuMDAwMDE3MjMgQlRDIiwibWVzc2FnZSI6IiIsIm1lcmNoYW50QWRkcmVzcyI6bnVsbCwic2VuZGluZ09wdGlvbiI6WyJnYXRld2F5Il0sInJlY2VpdmluZ09wdGlvbiI6WyJ3YWxsZXQiLCJhZGRyZXNzIl0sInByZWYiOiJlbWFpbCIsImZyb21XYWxsZXQiOm51bGwsImN1cnJlbmN5UGF5bWVudE1ldGhvZHMiOlt7ImlkIjoyLCJuYW1lIjoiU3RyaXBlIn0seyJpZCI6NSwibmFtZSI6IkJhbmsifV0sIm1lbnUiOiJDcnlwdG8gRXhjaGFuZ2UiLCJjcnlwdG9fcGhvbmUiOiJhbHRhZmhvc3NhaW5saW1vbkBnbWFpbC5jb20iLCJyZWNlaXZpbmdfYWRkcmVzcyI6ImFkc2Fkc2RhcyIsInJlY2VpdmluZ19kZXRhaWxzIjpudWxsLCJ1cmwiOiJodHRwczpcL1wvZGVtby5haW1sZGV2ZWxvcGVyLmNvbVwvY3J5cHRvLWV4Y2hhbmdlXC9wYXltZW50IiwiZXhwaXJlVGltZSI6Ikp1bHkgMTMsIDIwMjQgMDE6Mjc6NTcgUE0iLCJyZWNlaXZlX3ZpYSI6ImFkZHJlc3MiLCJyZWRpcmVjdFVybCI6Imh0dHBzOlwvXC9kZW1vLmFpbWxkZXZlbG9wZXIuY29tXC9jcnlwdG8tZXhjaGFuZ2VcL2dhdGV3YXktc3VjY2VzcyIsInBheW1lbnRfbWV0aG9kIjoiNSJ9LCJjdXJyZW5jeVR5cGUiOiJmaWF0IiwidXNlcl9pZCI6bnVsbCwiYmFua3MiOlt7ImlkIjoyLCJiYW5rX25hbWUiOiJUZXN0IEJhbmsiLCJpc19kZWZhdWx0IjoiTm8iLCJhY2NvdW50X25hbWUiOiJUZXN0IEJhbmsiLCJhY2NvdW50X251bWJlciI6IlRlc3QgQmFuayJ9XX0%3D', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `code`, `created_at`) VALUES
('altafhossainlimon@gmail.com', '$2y$10$Ju.nouBnsYdWn0fUkEckbOSxlJAqqYtoptAuYe0GWjlb13FfkePky', '', '2024-06-25 09:23:34'),
('altafhossainlimon@gmail.com', 'MTU5YWY4ZWI4Y2E0YzNkYTFhMTRiOTQxZGE5ZGJjMTRkMDIwZmM4YjgwYWU5YTY2YWJjYzVjNmQyZmM4MjRjNQ==', '', '2024-06-25 09:23:34');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'Active' COMMENT 'Active or Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `status`) VALUES
(1, 'Mts', 'Active'),
(2, 'Stripe', 'Active'),
(3, 'Paypal', 'Active'),
(4, 'PayUmoney', 'Active'),
(5, 'Bank', 'Active'),
(6, 'Coinpayments', 'Active'),
(7, 'Payeer', 'Active'),
(8, 'Crypto', 'Active'),
(9, 'Coinbase', 'Active'),
(10, 'TatumIo', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `payout_settings`
--

CREATE TABLE `payout_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` int(11) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `crypto_address` varchar(191) DEFAULT NULL,
  `account_name` varchar(191) DEFAULT NULL,
  `account_number` varchar(191) DEFAULT NULL,
  `bank_branch_name` varchar(191) DEFAULT NULL,
  `bank_branch_city` varchar(191) DEFAULT NULL,
  `bank_branch_address` varchar(191) DEFAULT NULL,
  `country` int(10) UNSIGNED DEFAULT NULL,
  `swift_code` varchar(191) DEFAULT NULL,
  `bank_name` varchar(191) DEFAULT NULL,
  `default_payout` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=not default, 1=default',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `group` varchar(100) NOT NULL,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `user_type` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `group`, `name`, `display_name`, `description`, `user_type`, `created_at`, `updated_at`) VALUES
(1, 'User', 'view_user', 'View User', 'View User', 'Admin', '2024-06-21 03:29:27', '2024-06-21 03:29:27'),
(2, 'User', 'add_user', 'Add User', 'Add User', 'Admin', '2024-06-21 03:29:27', '2024-06-21 03:29:27'),
(3, 'User', 'edit_user', 'Edit User', 'Edit User', 'Admin', '2024-06-21 03:29:27', '2024-06-21 03:29:27'),
(4, 'User', 'delete_user', 'Delete User', 'Delete User', 'Admin', '2024-06-21 03:29:27', '2024-06-21 03:29:27'),
(5, 'Transaction', 'view_transaction', 'View Transaction', 'View Transaction', 'Admin', '2024-06-21 03:29:27', '2024-06-21 03:29:27'),
(6, 'Transaction', 'add_transaction', NULL, NULL, 'Admin', '2024-06-21 03:29:27', '2024-06-21 03:29:27'),
(7, 'Transaction', 'edit_transaction', 'Edit Transaction', 'Edit Transaction', 'Admin', '2024-06-21 03:29:27', '2024-06-21 03:29:27'),
(8, 'Transaction', 'delete_transaction', NULL, NULL, 'Admin', '2024-06-21 03:29:27', '2024-06-21 03:29:27'),
(9, 'Deposit', 'view_deposit', 'View Deposit', 'View Deposit', 'Admin', '2024-06-21 03:29:27', '2024-06-21 03:29:27'),
(10, 'Deposit', 'add_deposit', NULL, NULL, 'Admin', '2024-06-21 03:29:27', '2024-06-21 03:29:27'),
(11, 'Deposit', 'edit_deposit', 'Edit Deposit', 'Edit Deposit', 'Admin', '2024-06-21 03:29:27', '2024-06-21 03:29:27'),
(12, 'Deposit', 'delete_deposit', NULL, NULL, 'Admin', '2024-06-21 03:29:27', '2024-06-21 03:29:27'),
(13, 'Withdrawal', 'view_withdrawal', 'View Withdrawal', 'View Withdrawal', 'Admin', '2024-06-21 03:29:27', '2024-06-21 03:29:27'),
(14, 'Withdrawal', 'add_withdrawal', NULL, NULL, 'Admin', '2024-06-21 03:29:27', '2024-06-21 03:29:27'),
(15, 'Withdrawal', 'edit_withdrawal', 'Edit Withdrawal', 'Edit Withdrawal', 'Admin', '2024-06-21 03:29:27', '2024-06-21 03:29:27'),
(16, 'Withdrawal', 'delete_withdrawal', NULL, NULL, 'Admin', '2024-06-21 03:29:27', '2024-06-21 03:29:27'),
(17, 'Transfer', 'view_transfer', 'View Transfer', 'View Transfer', 'Admin', '2024-06-21 03:29:27', '2024-06-21 03:29:27'),
(18, 'Transfer', 'add_transfer', NULL, NULL, 'Admin', '2024-06-21 03:29:27', '2024-06-21 03:29:27'),
(19, 'Transfer', 'edit_transfer', 'Edit Transfer', 'Edit Transfer', 'Admin', '2024-06-21 03:29:27', '2024-06-21 03:29:27'),
(20, 'Transfer', 'delete_transfer', NULL, NULL, 'Admin', '2024-06-21 03:29:27', '2024-06-21 03:29:27'),
(21, 'Exchange', 'view_exchange', 'View Exchange', 'View Exchange', 'Admin', '2024-06-21 03:29:27', '2024-06-21 03:29:27'),
(22, 'Exchange', 'add_exchange', NULL, NULL, 'Admin', '2024-06-21 03:29:27', '2024-06-21 03:29:27'),
(23, 'Exchange', 'edit_exchange', 'Edit Exchange', 'Edit Exchange', 'Admin', '2024-06-21 03:29:27', '2024-06-21 03:29:27'),
(24, 'Exchange', 'delete_exchange', NULL, NULL, 'Admin', '2024-06-21 03:29:27', '2024-06-21 03:29:27'),
(29, 'Request Payment', 'view_request_payment', 'View Request Payment', 'View Request Payment', 'Admin', '2024-06-21 03:29:27', '2024-06-21 03:29:27'),
(30, 'Request Payment', 'add_request_payment', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(31, 'Request Payment', 'edit_request_payment', 'Edit Request Payment', 'Edit Request Payment', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(32, 'Request Payment', 'delete_request_payment', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(33, 'Revenue', 'view_revenue', 'View Revenue', 'View Revenue', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(34, 'Revenue', 'add_revenue', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(35, 'Revenue', 'edit_revenue', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(36, 'Revenue', 'delete_revenue', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(37, 'Email Template', 'view_email_template', 'View Email Template', 'View Email Template', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(38, 'Email Template', 'add_email_template', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(39, 'Email Template', 'edit_email_template', 'Edit Email Template', 'Edit Email Template', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(40, 'Email Template', 'delete_email_template', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(41, 'Activity Log', 'view_activity_log', 'View Activity Log', 'View Activity Log', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(42, 'Activity Log', 'add_activity_log', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(43, 'Activity Log', 'edit_activity_log', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(44, 'Activity Log', 'delete_activity_log', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(45, 'General Setting', 'view_general_setting', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(46, 'General Setting', 'add_general_setting', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(47, 'General Setting', 'edit_general_setting', 'Edit General Setting', 'Edit General Setting', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(48, 'General Setting', 'delete_general_setting', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(49, 'Social Links', 'view_social_links', 'View Social Links', 'View Social Links', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(50, 'Social Links', 'add_social_links', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(51, 'Social Links', 'edit_social_links', 'Edit Social Links', 'Edit Social Links', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(52, 'Social Links', 'delete_social_links', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(53, 'API Credentials', 'view_api_credentials', 'View API Credentials', 'View API Credentials', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(54, 'API Credentials', 'add_api_credentials', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(55, 'API Credentials', 'edit_api_credentials', 'Edit API Credentials', 'Edit API Credentials', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(56, 'API Credentials', 'delete_api_credentials', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(57, 'Payment Methods', 'view_payment_methods', 'View Payment Methods', 'View Payment Methods', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(58, 'Payment Methods', 'add_payment_methods', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(59, 'Payment Methods', 'edit_payment_methods', 'Edit Payment Methods', 'Edit Payment Methods', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(60, 'Payment Methods', 'delete_payment_methods', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(61, 'Email Setting', 'view_email_setting', 'View Email Setting', 'View Email Setting', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(62, 'Email Setting', 'add_email_setting', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(63, 'Email Setting', 'edit_email_setting', 'Edit Email Setting', 'Edit Email Setting', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(64, 'Email Setting', 'delete_email_setting', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(65, 'Currency', 'view_currency', 'View Currency', 'View Currency', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(66, 'Currency', 'add_currency', 'Add Currency', 'Add Currency', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(67, 'Currency', 'edit_currency', 'Edit Currency', 'Edit Currency', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(68, 'Currency', 'delete_currency', 'Delete Currency', 'Delete Currency', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(69, 'Country', 'view_country', 'View Country', 'View Country', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(70, 'Country', 'add_country', 'Add Country', 'Add Country', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(71, 'Country', 'edit_country', 'Edit Country', 'Edit Country', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(72, 'Country', 'delete_country', 'Delete Country', 'Delete Country', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(73, 'Language', 'view_language', 'View Language', 'View Language', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(74, 'Language', 'add_language', 'Add Language', 'Add Language', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(75, 'Language', 'edit_language', 'Edit Language', 'Edit Language', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(76, 'Language', 'delete_language', 'Delete Language', 'Delete Language', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(77, 'Role', 'view_role', 'View Role', 'View Role', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(78, 'Role', 'add_role', 'Add Role', 'Add Role', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(79, 'Role', 'edit_role', 'Edit Role', 'Edit Role', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(80, 'Role', 'delete_role', 'Delete Role', 'Delete Role', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(85, 'Database Backup', 'view_database_backup', 'View Database Backup', 'View Database Backup', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(86, 'Database Backup', 'add_database_backup', 'Add Database Backup', 'Add Database Backup', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(87, 'Database Backup', 'edit_database_backup', 'Edit Database Backup', 'Edit Database Backup', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(88, 'Database Backup', 'delete_database_backup', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(89, 'Meta', 'view_meta', 'View Meta', 'View Meta', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(90, 'Meta', 'add_meta', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(91, 'Meta', 'edit_meta', 'Edit Meta', 'Edit Meta', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(92, 'Meta', 'delete_meta', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(93, 'Page', 'view_page', 'View Page', 'View Page', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(94, 'Page', 'add_page', 'Add Page', 'Add Page', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(95, 'Page', 'edit_page', 'Edit Page', 'Edit Page', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(96, 'Page', 'delete_page', 'Delete Page', 'Delete Page', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(97, 'Preference', 'view_preference', 'View Preference', 'View Preference', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(98, 'Preference', 'add_preference', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(99, 'Preference', 'edit_preference', 'Edit Preference', 'Edit Preference', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(100, 'Preference', 'delete_preference', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(101, 'Merchant', 'view_merchant', 'View Merchant', 'View Merchant', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(102, 'Merchant', 'add_merchant', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(103, 'Merchant', 'edit_merchant', 'Edit Merchant', 'Edit Merchant', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(104, 'Merchant', 'delete_merchant', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(105, 'Merchant Payment', 'view_merchant_payment', 'View Merchant Payment', 'View Merchant Payment', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(106, 'Merchant Payment', 'add_merchant_payment', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(107, 'Merchant Payment', 'edit_merchant_payment', 'Edit Merchant Payment', 'Edit Merchant Payment', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(108, 'Merchant Payment', 'delete_merchant_payment', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(109, 'Transaction', 'manage_transaction', 'Manage Transaction', 'Manage Transaction', 'User', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(110, 'Deposit', 'manage_deposit', 'Manage Deposit', 'Manage Deposit', 'User', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(111, 'Withdrawal', 'manage_withdrawal', 'Manage Withdrawal', 'Manage Withdrawal', 'User', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(112, 'Transfer', 'manage_transfer', 'Manage Transfer', 'Manage Transfer', 'User', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(113, 'Exchange', 'manage_exchange', 'Manage Exchange', 'Manage Exchange', 'User', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(115, 'Request Payment', 'manage_request_payment', 'Manage Request Payment', 'Manage Request Payment', 'User', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(116, 'Merchant', 'manage_merchant', 'Manage Merchant', 'Manage Merchant', 'User', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(117, 'Merchant Payment', 'manage_merchant_payment', 'Manage Merchant Payment', 'Manage Merchant Payment', 'User', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(118, 'User Group', 'view_group', 'View User Group', 'View User Group', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(119, 'User Group', 'add_group', 'Add User Group', 'Add User Group', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(120, 'User Group', 'edit_group', 'Edit User Group', 'Edit User Group', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(121, 'User Group', 'delete_group', 'Delete User Group', 'Delete User Group', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(122, 'Admins', 'view_admins', 'View Admins', 'View Admins', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(123, 'Admins', 'add_admin', 'Add Admin', 'Add Admin', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(124, 'Admins', 'edit_admin', 'Edit Admin', 'Edit Admin', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(125, 'Admins', 'delete_admin', 'Delete Admin', 'Delete Admin', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(126, 'Disputes', 'view_disputes', 'View Disputes', 'View Disputes', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(127, 'Disputes', 'add_dispute', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(128, 'Disputes', 'edit_dispute', 'Edit Dispute', 'Edit Dispute', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(129, 'Disputes', 'delete_dispute', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(130, 'Tickets', 'view_tickets', 'View Tickets', 'View Tickets', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(131, 'Tickets', 'add_ticket', 'Add Ticket', 'Add Ticket', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(132, 'Tickets', 'edit_ticket', 'Edit Ticket', 'Edit Ticket', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(133, 'Tickets', 'delete_ticket', 'Delete Ticket', 'Delete Ticket', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(134, 'Dispute', 'manage_dispute', 'Manage Dispute', 'Manage Dispute', 'User', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(135, 'Ticket', 'manage_ticket', 'Manage Ticket', 'Manage Ticket', 'User', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(136, 'Settings', 'manage_setting', 'Manage Settings', 'Manage Settings', 'User', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(137, 'AppStore Credentials', 'view_appstore_credentials', 'View AppStore Credentials', 'View AppStore Credentials', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(138, 'AppStore Credentials', 'add_appstore_credentials', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(139, 'AppStore Credentials', 'edit_appstore_credentials', 'Edit AppStore Credentials', 'Edit AppStore Credentials', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(140, 'AppStore Credentials', 'delete_appstore_credentials', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(145, 'Merchant Groups', 'view_merchant_group', 'View Merchant Group', 'View Merchant Group', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(146, 'Merchant Groups', 'add_merchant_group', 'Add Merchant Group', 'Add Merchant Group', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(147, 'Merchant Groups', 'edit_merchant_group', 'Edit Merchant Group', 'Edit Merchant Group', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(148, 'Merchant Groups', 'delete_merchant_group', 'Delete Merchant Group', 'Delete Merchant Group', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(149, 'SMS Setting', 'view_sms_setting', 'View SMS Setting', 'View SMS Setting', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(150, 'SMS Setting', 'add_sms_setting', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(151, 'SMS Setting', 'edit_sms_setting', 'Edit SMS Setting', 'Edit SMS Setting', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(152, 'SMS Setting', 'delete_sms_setting', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(153, 'Sms Template', 'view_sms_template', 'View Sms Template', 'View Sms Template', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(154, 'Sms Template', 'add_sms_template', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(155, 'Sms Template', 'edit_sms_template', 'Edit Sms Template', 'Edit Sms Template', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(156, 'Sms Template', 'delete_sms_template', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(157, 'Identity Verificattion', 'view_identity_verfication', 'View Identity Verificattion', 'View Identity Verificattion', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(158, 'Identity Verificattion', 'add_identity_verfication', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(159, 'Identity Verificattion', 'edit_identity_verfication', 'Edit Identity Verificattion', 'Edit Identity Verificattion', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(160, 'Identity Verificattion', 'delete_identity_verfication', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(161, 'Address Verificattion', 'view_address_verfication', 'View Address Verificattion', 'View Address Verificattion', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(162, 'Address Verificattion', 'add_address_verfication', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(163, 'Address Verificattion', 'edit_address_verfication', 'Edit Address Verificattion', 'Edit Address Verificattion', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(164, 'Address Verificattion', 'delete_address_verfication', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(165, 'Admin Security', 'view_admin_security', 'View Admin Security', 'View Admin Security', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(166, 'Admin Security', 'add_admin_security', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(167, 'Admin Security', 'edit_admin_security', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(168, 'Admin Security', 'delete_admin_security', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(169, 'Notification Type', 'view_notification_type', 'View Notification Type', 'View Notification Type', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(170, 'Notification Type', 'add_notification_type', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(171, 'Notification Type', 'edit_notification_type', 'Edit Notification Type', 'Edit Notification Type', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(172, 'Notification Type', 'delete_notification_type', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(173, 'Notification Setting', 'view_notification_setting', 'View Notification Setting', 'View Notification Setting', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(174, 'Notification Setting', 'add_notification_setting', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(175, 'Notification Setting', 'edit_notification_setting', 'Edit Notification Setting', 'Edit Notification Setting', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(176, 'Notification Setting', 'delete_notification_setting', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(177, 'Conversion Rate Api', 'view_conversion_rate_api', 'View Conversion Rate Api', 'View Conversion Rate Api', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(178, 'Conversion Rate Api', 'add_conversion_rate_api', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(179, 'Conversion Rate Api', 'edit_conversion_rate_api', 'Edit Conversion Rate Api', 'Edit Conversion Rate Api', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(180, 'Conversion Rate Api', 'delete_conversion_rate_api', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(181, 'Addon Manager', 'view_addon_manager', 'View Addon Manager', 'View Addon Manager', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(182, 'Addon Manager', 'add_addon_manager', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(183, 'Addon Manager', 'edit_addon_manager', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(184, 'Addon Manager', 'delete_addon_manager', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(185, 'Crypto Provider', 'view_crypto_provider', 'View Crypto Provider', 'View Addon Manager', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(186, 'Crypto Provider', 'add_crypto_provider', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(187, 'Crypto Provider', 'edit_crypto_provider', 'Edit Crypto Provider', NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(188, 'Crypto Provider', 'delete_crypto_provider', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(189, 'Crypto Asset', 'view_crypto_asset', 'View Crypto Asset', 'View Crypto Asset', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(190, 'Crypto Asset', 'add_crypto_asset', 'Add Crypto Asset', 'Add Crypto Asset', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(191, 'Crypto Asset', 'edit_crypto_asset', 'Edit Crypto Asset', 'Edit Crypto Asset', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(192, 'Crypto Asset', 'delete_crypto_asset', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(193, 'Crypto Transactions', 'view_crypto_transactions', 'View Crypto Transactions', 'View Crypto Transactions', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(194, 'Crypto Transactions', 'add_crypto_transactions', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(195, 'Crypto Transactions', 'edit_crypto_transactions', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(196, 'Crypto Transactions', 'delete_crypto_transactions', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(197, 'Crypto Send/Receive', 'manage_crypto_send_receive', 'Manage Crypto Send/Receive', 'Manage Crypto Send/Receive', 'User', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(198, 'Cache Clear', 'view_cache_clear', 'View Cache Clear', 'View Cache Clear', 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(199, 'Cache Clear', 'add_cache_clear', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(200, 'Cache Clear', 'edit_cache_clear', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(201, 'Cache Clear', 'delete_cache_clear', NULL, NULL, 'Admin', '2024-06-21 03:29:28', '2024-06-21 03:29:28'),
(202, 'System Upgrader', 'view_system_upgrader', 'View System Upgrader', 'View System Upgrader', 'Admin', NULL, NULL),
(203, 'System Upgrader', 'add_system_upgrader', NULL, NULL, 'Admin', NULL, NULL),
(204, 'System Upgrader', 'edit_system_upgrader', 'Edit System Upgrader', 'Edit System Upgrader', 'Admin', NULL, NULL),
(205, 'System Upgrader', 'delete_system_upgrader', NULL, NULL, 'Admin', NULL, NULL),
(206, 'Crypto Direction', 'view_crypto_direction', 'View Crypto Direction', 'View Crypto Direction', 'Admin', NULL, NULL),
(207, 'Crypto Direction', 'add_crypto_direction', 'Add Crypto Direction', 'Add Crypto Direction', 'Admin', NULL, NULL),
(208, 'Crypto Direction', 'edit_crypto_direction', 'Edit Crypto Direction', 'Edit Crypto Direction', 'Admin', NULL, NULL),
(209, 'Crypto Direction', 'delete_crypto_direction', 'Delete Crypto Direction', 'Delete Crypto Direction', 'Admin', NULL, NULL),
(210, 'Crypto Exchange Transaction', 'view_crypto_exchange_transaction', 'View Crypto Exchange Transaction', 'View Crypto Exchange Transaction', 'Admin', NULL, NULL),
(211, 'Crypto Exchange Transaction', 'add_crypto_exchange_transaction', NULL, NULL, 'Admin', NULL, NULL),
(212, 'Crypto Exchange Transaction', 'edit_crypto_exchange_transaction', 'Edit Crypto Exchange Transaction', 'Edit Crypto Exchange Transaction', 'Admin', NULL, NULL),
(213, 'Crypto Exchange Transaction', 'delete_crypto_exchange_transaction', NULL, NULL, 'Admin', NULL, NULL),
(214, 'Crypto Exchange Settings', 'view_crypto_exchange_settings', 'View Crypto Exchange Settings', 'View Crypto Exchange Settings', 'Admin', NULL, NULL),
(215, 'Crypto Exchange Settings', 'add_crypto_exchange_settings', NULL, NULL, 'Admin', NULL, NULL),
(216, 'Crypto Exchange Settings', 'edit_crypto_exchange_settings', 'Edit Crypto Exchange Settings', 'Edit Crypto Exchange Settings', 'Admin', NULL, NULL),
(217, 'Crypto Exchange Settings', 'delete_crypto_exchange_settings', NULL, NULL, 'Admin', NULL, NULL),
(218, 'Crypto Exchange', 'manage_crypto_exchange', 'Crypto Exchange', 'Crypto Exchange', 'User', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(1, 67),
(1, 68),
(1, 69),
(1, 70),
(1, 71),
(1, 72),
(1, 73),
(1, 74),
(1, 75),
(1, 76),
(1, 77),
(1, 78),
(1, 79),
(1, 80),
(1, 85),
(1, 86),
(1, 87),
(1, 88),
(1, 89),
(1, 90),
(1, 91),
(1, 92),
(1, 93),
(1, 94),
(1, 95),
(1, 96),
(1, 97),
(1, 98),
(1, 99),
(1, 100),
(1, 101),
(1, 102),
(1, 103),
(1, 104),
(1, 105),
(1, 106),
(1, 107),
(1, 108),
(2, 109),
(3, 109),
(2, 110),
(3, 110),
(2, 111),
(3, 111),
(2, 112),
(3, 112),
(2, 113),
(3, 113),
(2, 115),
(3, 115),
(3, 116),
(3, 117),
(1, 118),
(1, 119),
(1, 120),
(1, 121),
(1, 122),
(1, 123),
(1, 124),
(1, 125),
(1, 126),
(1, 127),
(1, 128),
(1, 129),
(1, 130),
(1, 131),
(1, 132),
(1, 133),
(2, 134),
(3, 134),
(2, 135),
(3, 135),
(2, 136),
(3, 136),
(1, 137),
(1, 138),
(1, 139),
(1, 140),
(1, 145),
(1, 146),
(1, 147),
(1, 148),
(1, 149),
(1, 150),
(1, 151),
(1, 152),
(1, 153),
(1, 154),
(1, 155),
(1, 156),
(1, 157),
(1, 158),
(1, 159),
(1, 160),
(1, 161),
(1, 162),
(1, 163),
(1, 164),
(1, 165),
(1, 166),
(1, 167),
(1, 168),
(1, 169),
(1, 170),
(1, 171),
(1, 172),
(1, 173),
(1, 174),
(1, 175),
(1, 176),
(1, 177),
(1, 178),
(1, 179),
(1, 180),
(1, 181),
(1, 182),
(1, 183),
(1, 184),
(1, 185),
(1, 186),
(1, 187),
(1, 188),
(1, 189),
(1, 190),
(1, 191),
(1, 192),
(1, 193),
(1, 194),
(1, 195),
(1, 196),
(2, 197),
(3, 197),
(1, 198),
(1, 199),
(1, 200),
(1, 201),
(1, 202),
(1, 203),
(1, 204),
(1, 205),
(1, 206),
(1, 207),
(1, 208),
(1, 209),
(1, 210),
(1, 212),
(1, 214),
(1, 216),
(2, 218),
(3, 218);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_verification`
--

CREATE TABLE `phone_verification` (
  `id` int(10) UNSIGNED NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `code` varchar(16) DEFAULT NULL,
  `status` varchar(16) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phone_verification`
--

INSERT INTO `phone_verification` (`id`, `phone`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'altafhossainlimon@gmail.com', '402256', '', '2024-06-22 19:56:37', '2024-07-13 01:22:39'),
(2, 'bbitici@protonmail.com', '166553', '', '2024-06-26 13:32:45', '2024-06-26 14:03:47'),
(3, 'msdfdfggh@vafyxh.com', '937411', '', '2024-07-17 01:38:35', '2024-07-17 01:38:35'),
(4, 'softnursery@gmail.com', '130377', '', '2024-08-08 05:25:29', '2024-08-08 05:25:29');

-- --------------------------------------------------------

--
-- Table structure for table `preferences`
--

CREATE TABLE `preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(191) NOT NULL,
  `field` varchar(30) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `preferences`
--

INSERT INTO `preferences` (`id`, `category`, `field`, `value`) VALUES
(1, 'preference', 'row_per_page', '25'),
(2, 'preference', 'date_format', '1'),
(3, 'preference', 'date_sepa', '-'),
(4, 'company', 'site_short_name', 'PM'),
(5, 'preference', 'percentage', '2'),
(6, 'preference', 'quantity', '0'),
(7, 'preference', 'date_format_type', 'dd-mm-yyyy'),
(8, 'company', 'company_name', 'Eclipto'),
(9, 'company', 'company_email', 'admin@eclipto.net'),
(10, 'company', 'dflt_lang', 'en'),
(11, 'preference', 'default_money_format', '&nbsp;&#36;'),
(12, 'preference', 'money_format', 'before'),
(13, 'preference', 'decimal_format_amount', '2'),
(14, 'preference', 'thousand_separator', ','),
(15, 'preference', 'dflt_timezone', 'Asia/Dhaka'),
(16, 'preference', 'verification_mail', 'Disabled'),
(17, 'preference', 'phone_verification', 'Disabled'),
(18, 'preference', 'two_step_verification', 'disabled'),
(19, 'preference', 'processed_by', 'email'),
(20, 'preference', 'decimal_format_amount_crypto', '8'),
(21, 'preference', 'admin_url_prefix', 'admin'),
(22, 'preference', 'file_size', '2'),
(23, 'crypto_exchange', 'verification', 'email'),
(24, 'crypto_exchange', 'available', 'all'),
(25, 'crypto_exchange', 'transaction_type', 'all');

-- --------------------------------------------------------

--
-- Table structure for table `qr_codes`
--

CREATE TABLE `qr_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_type` varchar(20) DEFAULT NULL,
  `secret` varchar(191) DEFAULT NULL,
  `qr_image` varchar(50) DEFAULT NULL,
  `status` varchar(16) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qr_codes`
--

INSERT INTO `qr_codes` (`id`, `object_id`, `object_type`, `secret`, `qr_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'user', 'KzYyaVdac1dzVkZ1U3NQdWl2ZFJscTdHTGNiUUJ5aTl6VGdJYS9Ba2IxSDFBRFBrMFNaZFFDNVpPNjdSMnFtNmNqRm5vbzkwYjJOc3Fhd3VpdFdubUE9PQ==', '1719064134.jpg', 'Active', '2024-06-22 07:48:54', '2024-06-22 07:48:54'),
(2, 2, 'user', 'RkxDRXQ0YU1TY0ZOaDNlZUlRVDZ1eU1HZGMyYzZZQVl5L2prYlQxQXJ6L1dITXljVTdLRmh5a0R6NCtHemdDWXFKK0hZZ3hnLzVYcjR1aTVBYk5GU0E9PQ==', '1719190344.jpg', 'Active', '2024-06-23 18:52:24', '2024-06-23 18:52:24'),
(3, 4, 'user', 'NEY1VEZkNDdOUnlrRjB0QWc1QVJZS2hvaHR3NGpwNHQ5SWNhd2JkNUs5ZGtHUlltL3hCZUQ1M1htZ3dqSGxrRFB0a2E5cnFmWkZXQjByeXBrMnQ4OXc9PQ==', '1719326953.jpg', 'Active', '2024-06-25 08:49:13', '2024-06-25 08:49:13'),
(4, 5, 'user', 'NENEUTFwNnZQSGlvdzA2Zy9hd1h0NjkzYkFQdUhyQkRzR21WaGdSaGJISDJaeTZIMjdkbThSY0llQjJIdTVQRQ==', '1719335543.jpg', 'Active', '2024-06-25 11:12:23', '2024-06-25 11:12:23'),
(5, 6, 'user', 'd2JoZjk1RVlNT3lxMU51T1FDcXhEUzhKUmJoaEhCeUM2b2xNOXA2S2YwZXVPSk9FcFVxSE9FbHBIUURXUUNpKw==', '1719408797.jpg', 'Active', '2024-06-26 07:33:17', '2024-06-26 07:33:17'),
(6, 7, 'user', 'em5ISlFQM1lsaU1kUVRkRVNUNjNQczFKdjlkZkVLaVZPbWo3c3VDaHhKZVN4eDZoaXZyclRNNEdMRVh6QTBMYQ==', '1723294129.jpg', 'Active', '2024-08-10 06:48:49', '2024-08-10 06:48:49');

-- --------------------------------------------------------

--
-- Table structure for table `reasons`
--

CREATE TABLE `reasons` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reasons`
--

INSERT INTO `reasons` (`id`, `title`) VALUES
(1, 'I have not received the goods'),
(2, 'Description does not match with product');

-- --------------------------------------------------------

--
-- Table structure for table `request_payments`
--

CREATE TABLE `request_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `receiver_id` int(10) UNSIGNED DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `uuid` varchar(13) DEFAULT NULL COMMENT 'Unique ID (For Each Payment Request)',
  `amount` decimal(20,8) DEFAULT 0.00000000,
  `accept_amount` decimal(20,8) DEFAULT 0.00000000,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `purpose` varchar(191) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `status` varchar(11) NOT NULL COMMENT 'Pending, Success, Refund, Blocked',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `display_name` varchar(50) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `user_type` varchar(30) NOT NULL,
  `customer_type` varchar(30) NOT NULL,
  `is_default` varchar(5) NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `user_type`, `customer_type`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', 'Admin', 'Admin', 'user', 'No', NULL, NULL),
(2, 'Default User', 'Default User', 'Default User', 'User', 'user', 'Yes', NULL, NULL),
(3, 'Merchant Regular', 'Merchant Regular', 'Merchant Regular', 'User', 'merchant', 'Yes', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(11) NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`, `user_type`) VALUES
(1, 1, 'Admin'),
(1, 2, 'User'),
(4, 2, 'User'),
(5, 2, 'User'),
(6, 2, 'User'),
(7, 2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` text DEFAULT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `type`) VALUES
(1, 'name', 'Eclipto', 'general'),
(2, 'logo', '1719062793_logo.png', 'general'),
(3, 'favicon', '1719062793_favicon.png', 'general'),
(4, 'head_code', '', 'general'),
(5, 'default_currency', '1', 'general'),
(6, 'allowed_wallets', 'none', 'general'),
(7, 'default_language', '1', 'general'),
(8, 'site_key', '', 'recaptcha'),
(9, 'secret_key', '', 'recaptcha'),
(10, 'default_timezone', 'Asia/Dhaka', 'general'),
(11, 'has_captcha', 'Disabled', 'general'),
(12, 'login_via', 'email_only', 'general'),
(13, 'admin_access_ip_setting', 'Disabled', 'admin_security'),
(14, 'admin_access_ips', '::1', 'admin_security'),
(15, 'exchange_enabled_api', 'exchange_rate_api_key', 'currency_exchange_rate'),
(16, 'currency_converter_api_key', NULL, 'currency_exchange_rate'),
(17, 'exchange_rate_api_key', 'c16c267c37ae394abf0e8516', 'currency_exchange_rate'),
(18, 'crypto_compare_enabled_api', 'Enabled', 'crypto_compare_rate'),
(19, 'crypto_compare_api_key', '099cc259ea19456eff188dc0e0d11709a0f3a2c337f368c77c7d94849757b65a', 'crypto_compare_rate');

-- --------------------------------------------------------

--
-- Table structure for table `sms_configs`
--

CREATE TABLE `sms_configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(8) NOT NULL,
  `credentials` text NOT NULL,
  `status` varchar(8) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_configs`
--

INSERT INTO `sms_configs` (`id`, `type`, `credentials`, `status`, `created_at`, `updated_at`) VALUES
(1, 'twilio', '', 'Inactive', '2024-06-21 03:29:26', '2024-06-21 03:29:26'),
(2, 'nexmo', '', 'Inactive', '2024-06-21 03:29:26', '2024-06-21 03:29:26');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `icon` text NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `name`, `icon`, `url`) VALUES
(1, 'facebook', '<div class=\"facebook\" id=\"facebook\">\r\n                                <svg width=\"46\" height=\"45\" viewBox=\"0 0 46 45\" fill=\"#402875\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <rect width=\"45.0402\" height=\"45\" rx=\"4\" fill=\"\"></rect>\r\n                                    <g clip-path=\"url(#clip0_2297_2968)\">\r\n                                        <path d=\"M24.5094 32.4052V23.6116H27.5441L27.9985 20.1846H24.5094V17.9966C24.5094 17.0044 24.7927 16.3282 26.2557 16.3282L28.1215 16.3274V13.2623C27.7986 13.2207 26.6911 13.1274 25.4027 13.1274C22.7126 13.1274 20.8709 14.7244 20.8709 17.6574V20.1847H17.8284V23.6117H20.8708V32.4053L24.5094 32.4052Z\" fill=\"white\"></path>\r\n                                    </g>\r\n                                    <defs>\r\n                                        <clipPath id=\"clip0_2297_2968\">\r\n                                            <rect width=\"10.2931\" height=\"19.2823\" fill=\"white\" transform=\"translate(17.8284 13.125)\"></rect>\r\n                                        </clipPath>\r\n                                    </defs>\r\n                                </svg>\r\n                            </div>', '#'),
(2, 'google_plus', '<div class=\"whtsapp ml-11\" id=\"whtsapp\">\r\n                                <svg width=\"46\" height=\"45\" viewBox=\"0 0 46 45\" fill=\"#402875\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <rect x=\"0.0400391\" width=\"45.0402\" height=\"45\" rx=\"4\" fill=\"\"/>\r\n                                    <path d=\"M18.3128 21.091V23.9273H23.0047C22.8156 25.1446 21.5865 27.4964 18.3128 27.4964C15.4883 27.4964 13.1837 25.1564 13.1837 22.2728C13.1837 19.3891 15.4883 17.0491 18.3128 17.0491C19.9201 17.0491 20.9956 17.7346 21.6101 18.3255L23.8556 16.1627C22.4137 14.8155 20.5465 14 18.3128 14C13.7392 14 10.04 17.6991 10.04 22.2728C10.04 26.8464 13.7392 30.5456 18.3128 30.5456C23.0874 30.5456 26.2547 27.1892 26.2547 22.4619C26.2547 21.9182 26.1956 21.5046 26.1247 21.091H18.3128Z\" fill=\"white\"/>\r\n                                    <path d=\"M36.0397 21.0907H33.676V18.7271H31.3124V21.0907H28.9487V23.4544H31.3124V25.818H33.676V23.4544H36.0397\" fill=\"white\"/>\r\n                                </svg>\r\n                            </div>', '#'),
(3, 'twitter', '<div class=\"twitter ml-11\" id=\"twitter\">\r\n                            <svg width=\"46\" height=\"45\" viewBox=\"0 0 46 45\" fill=\"#402875\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                <rect x=\"0.0402832\" width=\"45.0402\" height=\"45\" rx=\"4\" fill=\"\"></rect>\r\n                                <path d=\"M32.4132 16.0164C31.6927 16.325 30.8693 16.5306 30.0458 16.6335C30.8693 16.1193 31.5898 15.2966 31.8986 14.371C31.0751 14.8852 30.2517 15.1937 29.2224 15.3994C28.5019 14.5767 27.3696 14.0625 26.2374 14.0625C23.9729 14.0625 22.1201 15.9136 22.1201 18.1761C22.1201 18.4846 22.1201 18.7931 22.2231 19.1016C18.8263 18.8959 15.7384 17.2505 13.6798 14.7824C13.371 15.3994 13.1651 16.1193 13.1651 16.8392C13.1651 18.2789 13.8857 19.513 15.0179 20.2328C14.2974 20.2328 13.6798 20.0272 13.1651 19.7186C13.1651 21.6726 14.6062 23.4208 16.4589 23.7294C16.1501 23.8322 15.7384 23.8322 15.3267 23.8322C15.0179 23.8322 14.812 23.8322 14.5032 23.7294C15.0179 25.3748 16.5619 26.6089 18.4146 26.6089C16.9736 27.7401 15.2238 28.3571 13.2681 28.3571C12.9593 28.3571 12.6505 28.3571 12.2388 28.2543C14.0915 29.3855 16.2531 30.1054 18.6205 30.1054C26.2374 30.1054 30.3546 23.8322 30.3546 18.3817V17.8675C31.178 17.559 31.8986 16.8391 32.4132 16.0164Z\" fill=\"white\"></path>\r\n                            </svg>\r\n                        </div>', '#'),
(4, 'linkedin', '<div class=\"linkdin ml-11\" id=\"linkdin\">\r\n                                <svg width=\"46\" height=\"45\" viewBox=\"0 0 46 45\" fill=\"#402875\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <rect x=\"0.201416\" width=\"45.0402\" height=\"45\" rx=\"4\" fill=\"\"></rect>\r\n                                    <path d=\"M17.5146 31.9712V19.8375H13.4417V31.9712H17.5146ZM15.4787 18.1799C16.8989 18.1799 17.783 17.2481 17.783 16.0838C17.7565 14.8932 16.899 13.9873 15.5056 13.9873C14.1125 13.9873 13.2014 14.8932 13.2014 16.0838C13.2014 17.2482 14.0853 18.1799 15.4521 18.1799H15.4785H15.4787ZM19.7689 31.9712H23.8417V25.1952C23.8417 24.8325 23.8682 24.4703 23.9757 24.211C24.2702 23.4865 24.9403 22.736 26.0654 22.736C27.5392 22.736 28.1288 23.8487 28.1288 25.4799V31.9711H32.2014V25.0138C32.2014 21.2868 30.1921 19.5526 27.5124 19.5526C25.3153 19.5526 24.3506 20.7688 23.8146 21.597H23.8418V19.8373H19.769C19.8224 20.9758 19.769 31.971 19.769 31.971L19.7689 31.9712Z\" fill=\"white\"></path>\r\n                                </svg>\r\n                            </div>', '#'),
(5, 'pinterest', '<div class=\"pinterest ml-11\" id=\"pinterest\">\r\n                                <svg width=\"46\" height=\"45\" viewBox=\"0 0 46 45\" fill=\"#402875\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <rect x=\"0.161133\" width=\"45.0402\" height=\"45\" rx=\"4\" fill=\"\"></rect>\r\n                                    <path d=\"M28.5611 15.0943C27.247 13.7814 25.3582 13.125 23.305 13.125C20.1842 13.125 18.2953 14.4378 17.2277 15.5045C15.9137 16.8174 15.1746 18.5405 15.1746 20.3456C15.1746 22.561 16.0779 24.2021 17.6383 24.8585C17.7205 24.9406 17.8847 24.9406 17.9668 24.9406C18.2953 24.9406 18.5417 24.6944 18.6239 24.3662C18.706 24.2021 18.7881 23.7098 18.8702 23.4636C18.9523 23.0534 18.8702 22.8892 18.6239 22.561C18.2132 22.0687 17.9668 21.4123 17.9668 20.5918C17.9668 18.2123 19.7736 15.6686 23.0586 15.6686C25.6867 15.6686 27.3292 17.1456 27.3292 19.5251C27.3292 21.002 27.0007 22.3969 26.4258 23.4636C26.0152 24.2021 25.276 25.0226 24.2084 25.0226C23.7156 25.0226 23.305 24.8585 23.0586 24.4482C22.8123 24.12 22.7301 23.7098 22.8122 23.2995C22.8944 22.8072 23.0586 22.3149 23.2229 21.8226C23.4693 20.92 23.7978 20.0174 23.7978 19.361C23.7978 18.2123 23.0586 17.3917 21.991 17.3917C20.5949 17.3917 19.5272 18.7866 19.5272 20.5097C19.5272 21.4123 19.7736 21.9867 19.8557 22.2328C19.6915 22.9713 18.6238 27.3201 18.4596 28.0585C18.3775 28.5509 17.6383 32.3253 18.7881 32.5714C20.02 32.8996 21.1697 29.2073 21.2519 28.797C21.334 28.4688 21.6625 27.156 21.8268 26.4175C22.4016 26.9919 23.3871 27.4021 24.3727 27.4021C26.1794 27.4021 27.7398 26.5816 28.8896 25.1047C29.9572 23.7098 30.6142 21.7405 30.6142 19.5251C30.5321 18.0482 29.8751 16.3251 28.5611 15.0943Z\" fill=\"white\"></path>\r\n                                </svg>\r\n                            </div>', '#'),
(6, 'youtube', '<div class=\"whtsapp ml-11\" id=\"whtsapp\">\r\n                                <svg width=\"46\" height=\"45\" viewBox=\"0 0 46 45\" fill=\"#402875\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <rect x=\"0.0400391\" width=\"45.0402\" height=\"45\" rx=\"4\" fill=\"\"/>\r\n                                    <path d=\"M28.9291 14.0528C30.2064 14.1845 31.8674 14.0528 32.7619 15.0988C33.7842 16.144 33.913 17.841 33.913 19.1476C34.04 20.7148 34.04 22.9367 34.04 24.3714C33.913 25.8096 34.04 27.5058 33.3996 28.8142C32.7628 30.2489 31.6116 30.7737 30.2064 30.9026C28.6715 31.0325 19.2171 31.0325 16.1518 30.9026C14.7458 30.7728 13.0848 30.7728 12.0624 29.5969C11.1679 28.5509 11.1679 26.9846 11.04 25.6789C11.04 24.1108 11.04 21.8898 11.04 20.3235C11.04 18.8861 11.04 17.1891 11.6787 15.8825C12.3182 14.5767 13.5955 14.3152 15.0007 14.1854C16.5338 14.0537 25.8603 13.9239 28.9282 14.0537L28.9291 14.0528ZM19.9846 18.4939V26.3299L27.0123 22.4119L19.9846 18.4939Z\" fill=\"white\"/>\r\n                                </svg>\r\n                            </div>', '#'),
(7, 'instagram', '<div class=\"instagram ml-11\" id=\"instagram\">\r\n                                <svg width=\"46\" height=\"45\" viewBox=\"0 0 46 45\" fill=\"#402875\" xmlns=\"http://www.w3.org/2000/svg\">\r\n                                    <rect x=\"0.0805664\" width=\"45.0402\" height=\"45\" rx=\"4\" fill=\"\"></rect>\r\n                                    <path d=\"M28.8545 14.0625H16.5944C15.2101 14.0625 14.1555 15.1162 14.1555 16.4992V28.7483C14.1555 30.1313 15.2101 31.185 16.5944 31.185H28.8545C30.2387 31.185 31.2933 30.1313 31.2933 28.7483V16.4992C31.2933 15.1162 30.2387 14.0625 28.8545 14.0625ZM22.7244 27.7605C25.5587 27.7605 27.8657 25.5214 27.8657 22.8213C27.8657 22.3603 27.7998 21.8335 27.668 21.4383H29.1181V28.419C29.1181 28.7483 28.8545 29.0776 28.459 29.0776H16.9898C16.6603 29.0776 16.3307 28.8142 16.3307 28.419V21.3725H17.8467C17.7149 21.8335 17.649 22.2945 17.649 22.7554C17.5831 25.5214 19.8901 27.7605 22.7244 27.7605ZM22.7244 25.7848C20.8788 25.7848 19.4287 24.336 19.4287 22.5579C19.4287 20.7798 20.8788 19.331 22.7244 19.331C24.57 19.331 26.0201 20.7798 26.0201 22.5579C26.0201 24.4018 24.57 25.7848 22.7244 25.7848ZM29.0522 18.7383C29.0522 19.1334 28.7226 19.4627 28.3271 19.4627H26.4815C26.086 19.4627 25.7565 19.1334 25.7565 18.7383V16.9601C25.7565 16.565 26.086 16.2357 26.4815 16.2357H28.3271C28.7226 16.2357 29.0522 16.565 29.0522 16.9601V18.7383Z\" fill=\"white\"></path>\r\n                                </svg>\r\n                            </div>', '#');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ticket_status_id` int(10) UNSIGNED DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `priority` varchar(7) NOT NULL DEFAULT 'Low' COMMENT 'Low, Normal, High',
  `last_reply` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_replies`
--

CREATE TABLE `ticket_replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ticket_id` int(10) UNSIGNED DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `user_type` varchar(7) NOT NULL COMMENT 'admin or user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_statuses`
--

CREATE TABLE `ticket_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_statuses`
--

INSERT INTO `ticket_statuses` (`id`, `name`, `color`, `is_default`) VALUES
(1, 'Open', '00a65a', 0),
(2, 'In Progress', '3c8dbc', 1),
(3, 'Hold', 'f39c12', 0),
(4, 'Closed', 'dd4b39', 0);

-- --------------------------------------------------------

--
-- Table structure for table `time_zones`
--

CREATE TABLE `time_zones` (
  `id` int(10) UNSIGNED NOT NULL,
  `zone` varchar(50) DEFAULT NULL,
  `gmt` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_zones`
--

INSERT INTO `time_zones` (`id`, `zone`, `gmt`, `created_at`, `updated_at`) VALUES
(1, 'Africa/Abidjan', 'UTC/GMT +00:00', NULL, NULL),
(2, 'Africa/Accra', 'UTC/GMT +00:00', NULL, NULL),
(3, 'Africa/Addis_Ababa', 'UTC/GMT +03:00', NULL, NULL),
(4, 'Africa/Algiers', 'UTC/GMT +01:00', NULL, NULL),
(5, 'Africa/Asmara', 'UTC/GMT +03:00', NULL, NULL),
(6, 'Africa/Bamako', 'UTC/GMT +00:00', NULL, NULL),
(7, 'Africa/Bangui', 'UTC/GMT +01:00', NULL, NULL),
(8, 'Africa/Banjul', 'UTC/GMT +00:00', NULL, NULL),
(9, 'Africa/Bissau', 'UTC/GMT +00:00', NULL, NULL),
(10, 'Africa/Blantyre', 'UTC/GMT +02:00', NULL, NULL),
(11, 'Africa/Brazzaville', 'UTC/GMT +01:00', NULL, NULL),
(12, 'Africa/Bujumbura', 'UTC/GMT +02:00', NULL, NULL),
(13, 'Africa/Cairo', 'UTC/GMT +03:00', NULL, NULL),
(14, 'Africa/Casablanca', 'UTC/GMT +01:00', NULL, NULL),
(15, 'Africa/Ceuta', 'UTC/GMT +02:00', NULL, NULL),
(16, 'Africa/Conakry', 'UTC/GMT +00:00', NULL, NULL),
(17, 'Africa/Dakar', 'UTC/GMT +00:00', NULL, NULL),
(18, 'Africa/Dar_es_Salaam', 'UTC/GMT +03:00', NULL, NULL),
(19, 'Africa/Djibouti', 'UTC/GMT +03:00', NULL, NULL),
(20, 'Africa/Douala', 'UTC/GMT +01:00', NULL, NULL),
(21, 'Africa/El_Aaiun', 'UTC/GMT +01:00', NULL, NULL),
(22, 'Africa/Freetown', 'UTC/GMT +00:00', NULL, NULL),
(23, 'Africa/Gaborone', 'UTC/GMT +02:00', NULL, NULL),
(24, 'Africa/Harare', 'UTC/GMT +02:00', NULL, NULL),
(25, 'Africa/Johannesburg', 'UTC/GMT +02:00', NULL, NULL),
(26, 'Africa/Juba', 'UTC/GMT +02:00', NULL, NULL),
(27, 'Africa/Kampala', 'UTC/GMT +03:00', NULL, NULL),
(28, 'Africa/Khartoum', 'UTC/GMT +02:00', NULL, NULL),
(29, 'Africa/Kigali', 'UTC/GMT +02:00', NULL, NULL),
(30, 'Africa/Kinshasa', 'UTC/GMT +01:00', NULL, NULL),
(31, 'Africa/Lagos', 'UTC/GMT +01:00', NULL, NULL),
(32, 'Africa/Libreville', 'UTC/GMT +01:00', NULL, NULL),
(33, 'Africa/Lome', 'UTC/GMT +00:00', NULL, NULL),
(34, 'Africa/Luanda', 'UTC/GMT +01:00', NULL, NULL),
(35, 'Africa/Lubumbashi', 'UTC/GMT +02:00', NULL, NULL),
(36, 'Africa/Lusaka', 'UTC/GMT +02:00', NULL, NULL),
(37, 'Africa/Malabo', 'UTC/GMT +01:00', NULL, NULL),
(38, 'Africa/Maputo', 'UTC/GMT +02:00', NULL, NULL),
(39, 'Africa/Maseru', 'UTC/GMT +02:00', NULL, NULL),
(40, 'Africa/Mbabane', 'UTC/GMT +02:00', NULL, NULL),
(41, 'Africa/Mogadishu', 'UTC/GMT +03:00', NULL, NULL),
(42, 'Africa/Monrovia', 'UTC/GMT +00:00', NULL, NULL),
(43, 'Africa/Nairobi', 'UTC/GMT +03:00', NULL, NULL),
(44, 'Africa/Ndjamena', 'UTC/GMT +01:00', NULL, NULL),
(45, 'Africa/Niamey', 'UTC/GMT +01:00', NULL, NULL),
(46, 'Africa/Nouakchott', 'UTC/GMT +00:00', NULL, NULL),
(47, 'Africa/Ouagadougou', 'UTC/GMT +00:00', NULL, NULL),
(48, 'Africa/Porto-Novo', 'UTC/GMT +01:00', NULL, NULL),
(49, 'Africa/Sao_Tome', 'UTC/GMT +00:00', NULL, NULL),
(50, 'Africa/Tripoli', 'UTC/GMT +02:00', NULL, NULL),
(51, 'Africa/Tunis', 'UTC/GMT +01:00', NULL, NULL),
(52, 'Africa/Windhoek', 'UTC/GMT +02:00', NULL, NULL),
(53, 'America/Adak', 'UTC/GMT -09:00', NULL, NULL),
(54, 'America/Anchorage', 'UTC/GMT -08:00', NULL, NULL),
(55, 'America/Anguilla', 'UTC/GMT -04:00', NULL, NULL),
(56, 'America/Antigua', 'UTC/GMT -04:00', NULL, NULL),
(57, 'America/Araguaina', 'UTC/GMT -03:00', NULL, NULL),
(58, 'America/Argentina/Buenos_Aires', 'UTC/GMT -03:00', NULL, NULL),
(59, 'America/Argentina/Catamarca', 'UTC/GMT -03:00', NULL, NULL),
(60, 'America/Argentina/Cordoba', 'UTC/GMT -03:00', NULL, NULL),
(61, 'America/Argentina/Jujuy', 'UTC/GMT -03:00', NULL, NULL),
(62, 'America/Argentina/La_Rioja', 'UTC/GMT -03:00', NULL, NULL),
(63, 'America/Argentina/Mendoza', 'UTC/GMT -03:00', NULL, NULL),
(64, 'America/Argentina/Rio_Gallegos', 'UTC/GMT -03:00', NULL, NULL),
(65, 'America/Argentina/Salta', 'UTC/GMT -03:00', NULL, NULL),
(66, 'America/Argentina/San_Juan', 'UTC/GMT -03:00', NULL, NULL),
(67, 'America/Argentina/San_Luis', 'UTC/GMT -03:00', NULL, NULL),
(68, 'America/Argentina/Tucuman', 'UTC/GMT -03:00', NULL, NULL),
(69, 'America/Argentina/Ushuaia', 'UTC/GMT -03:00', NULL, NULL),
(70, 'America/Aruba', 'UTC/GMT -04:00', NULL, NULL),
(71, 'America/Asuncion', 'UTC/GMT -04:00', NULL, NULL),
(72, 'America/Atikokan', 'UTC/GMT -05:00', NULL, NULL),
(73, 'America/Bahia', 'UTC/GMT -03:00', NULL, NULL),
(74, 'America/Bahia_Banderas', 'UTC/GMT -06:00', NULL, NULL),
(75, 'America/Barbados', 'UTC/GMT -04:00', NULL, NULL),
(76, 'America/Belem', 'UTC/GMT -03:00', NULL, NULL),
(77, 'America/Belize', 'UTC/GMT -06:00', NULL, NULL),
(78, 'America/Blanc-Sablon', 'UTC/GMT -04:00', NULL, NULL),
(79, 'America/Boa_Vista', 'UTC/GMT -04:00', NULL, NULL),
(80, 'America/Bogota', 'UTC/GMT -05:00', NULL, NULL),
(81, 'America/Boise', 'UTC/GMT -06:00', NULL, NULL),
(82, 'America/Cambridge_Bay', 'UTC/GMT -06:00', NULL, NULL),
(83, 'America/Campo_Grande', 'UTC/GMT -04:00', NULL, NULL),
(84, 'America/Cancun', 'UTC/GMT -05:00', NULL, NULL),
(85, 'America/Caracas', 'UTC/GMT -04:00', NULL, NULL),
(86, 'America/Cayenne', 'UTC/GMT -03:00', NULL, NULL),
(87, 'America/Cayman', 'UTC/GMT -05:00', NULL, NULL),
(88, 'America/Chicago', 'UTC/GMT -05:00', NULL, NULL),
(89, 'America/Chihuahua', 'UTC/GMT -06:00', NULL, NULL),
(90, 'America/Ciudad_Juarez', 'UTC/GMT -06:00', NULL, NULL),
(91, 'America/Costa_Rica', 'UTC/GMT -06:00', NULL, NULL),
(92, 'America/Creston', 'UTC/GMT -07:00', NULL, NULL),
(93, 'America/Cuiaba', 'UTC/GMT -04:00', NULL, NULL),
(94, 'America/Curacao', 'UTC/GMT -04:00', NULL, NULL),
(95, 'America/Danmarkshavn', 'UTC/GMT +00:00', NULL, NULL),
(96, 'America/Dawson', 'UTC/GMT -07:00', NULL, NULL),
(97, 'America/Dawson_Creek', 'UTC/GMT -07:00', NULL, NULL),
(98, 'America/Denver', 'UTC/GMT -06:00', NULL, NULL),
(99, 'America/Detroit', 'UTC/GMT -04:00', NULL, NULL),
(100, 'America/Dominica', 'UTC/GMT -04:00', NULL, NULL),
(101, 'America/Edmonton', 'UTC/GMT -06:00', NULL, NULL),
(102, 'America/Eirunepe', 'UTC/GMT -05:00', NULL, NULL),
(103, 'America/El_Salvador', 'UTC/GMT -06:00', NULL, NULL),
(104, 'America/Fort_Nelson', 'UTC/GMT -07:00', NULL, NULL),
(105, 'America/Fortaleza', 'UTC/GMT -03:00', NULL, NULL),
(106, 'America/Glace_Bay', 'UTC/GMT -03:00', NULL, NULL),
(107, 'America/Goose_Bay', 'UTC/GMT -03:00', NULL, NULL),
(108, 'America/Grand_Turk', 'UTC/GMT -04:00', NULL, NULL),
(109, 'America/Grenada', 'UTC/GMT -04:00', NULL, NULL),
(110, 'America/Guadeloupe', 'UTC/GMT -04:00', NULL, NULL),
(111, 'America/Guatemala', 'UTC/GMT -06:00', NULL, NULL),
(112, 'America/Guayaquil', 'UTC/GMT -05:00', NULL, NULL),
(113, 'America/Guyana', 'UTC/GMT -04:00', NULL, NULL),
(114, 'America/Halifax', 'UTC/GMT -03:00', NULL, NULL),
(115, 'America/Havana', 'UTC/GMT -04:00', NULL, NULL),
(116, 'America/Hermosillo', 'UTC/GMT -07:00', NULL, NULL),
(117, 'America/Indiana/Indianapolis', 'UTC/GMT -04:00', NULL, NULL),
(118, 'America/Indiana/Knox', 'UTC/GMT -05:00', NULL, NULL),
(119, 'America/Indiana/Marengo', 'UTC/GMT -04:00', NULL, NULL),
(120, 'America/Indiana/Petersburg', 'UTC/GMT -04:00', NULL, NULL),
(121, 'America/Indiana/Tell_City', 'UTC/GMT -05:00', NULL, NULL),
(122, 'America/Indiana/Vevay', 'UTC/GMT -04:00', NULL, NULL),
(123, 'America/Indiana/Vincennes', 'UTC/GMT -04:00', NULL, NULL),
(124, 'America/Indiana/Winamac', 'UTC/GMT -04:00', NULL, NULL),
(125, 'America/Inuvik', 'UTC/GMT -06:00', NULL, NULL),
(126, 'America/Iqaluit', 'UTC/GMT -04:00', NULL, NULL),
(127, 'America/Jamaica', 'UTC/GMT -05:00', NULL, NULL),
(128, 'America/Juneau', 'UTC/GMT -08:00', NULL, NULL),
(129, 'America/Kentucky/Louisville', 'UTC/GMT -04:00', NULL, NULL),
(130, 'America/Kentucky/Monticello', 'UTC/GMT -04:00', NULL, NULL),
(131, 'America/Kralendijk', 'UTC/GMT -04:00', NULL, NULL),
(132, 'America/La_Paz', 'UTC/GMT -04:00', NULL, NULL),
(133, 'America/Lima', 'UTC/GMT -05:00', NULL, NULL),
(134, 'America/Los_Angeles', 'UTC/GMT -07:00', NULL, NULL),
(135, 'America/Lower_Princes', 'UTC/GMT -04:00', NULL, NULL),
(136, 'America/Maceio', 'UTC/GMT -03:00', NULL, NULL),
(137, 'America/Managua', 'UTC/GMT -06:00', NULL, NULL),
(138, 'America/Manaus', 'UTC/GMT -04:00', NULL, NULL),
(139, 'America/Marigot', 'UTC/GMT -04:00', NULL, NULL),
(140, 'America/Martinique', 'UTC/GMT -04:00', NULL, NULL),
(141, 'America/Matamoros', 'UTC/GMT -05:00', NULL, NULL),
(142, 'America/Mazatlan', 'UTC/GMT -07:00', NULL, NULL),
(143, 'America/Menominee', 'UTC/GMT -05:00', NULL, NULL),
(144, 'America/Merida', 'UTC/GMT -06:00', NULL, NULL),
(145, 'America/Metlakatla', 'UTC/GMT -08:00', NULL, NULL),
(146, 'America/Mexico_City', 'UTC/GMT -06:00', NULL, NULL),
(147, 'America/Miquelon', 'UTC/GMT -02:00', NULL, NULL),
(148, 'America/Moncton', 'UTC/GMT -03:00', NULL, NULL),
(149, 'America/Monterrey', 'UTC/GMT -06:00', NULL, NULL),
(150, 'America/Montevideo', 'UTC/GMT -03:00', NULL, NULL),
(151, 'America/Montserrat', 'UTC/GMT -04:00', NULL, NULL),
(152, 'America/Nassau', 'UTC/GMT -04:00', NULL, NULL),
(153, 'America/New_York', 'UTC/GMT -04:00', NULL, NULL),
(154, 'America/Nome', 'UTC/GMT -08:00', NULL, NULL),
(155, 'America/Noronha', 'UTC/GMT -02:00', NULL, NULL),
(156, 'America/North_Dakota/Beulah', 'UTC/GMT -05:00', NULL, NULL),
(157, 'America/North_Dakota/Center', 'UTC/GMT -05:00', NULL, NULL),
(158, 'America/North_Dakota/New_Salem', 'UTC/GMT -05:00', NULL, NULL),
(159, 'America/Nuuk', 'UTC/GMT -01:00', NULL, NULL),
(160, 'America/Ojinaga', 'UTC/GMT -05:00', NULL, NULL),
(161, 'America/Panama', 'UTC/GMT -05:00', NULL, NULL),
(162, 'America/Paramaribo', 'UTC/GMT -03:00', NULL, NULL),
(163, 'America/Phoenix', 'UTC/GMT -07:00', NULL, NULL),
(164, 'America/Port-au-Prince', 'UTC/GMT -04:00', NULL, NULL),
(165, 'America/Port_of_Spain', 'UTC/GMT -04:00', NULL, NULL),
(166, 'America/Porto_Velho', 'UTC/GMT -04:00', NULL, NULL),
(167, 'America/Puerto_Rico', 'UTC/GMT -04:00', NULL, NULL),
(168, 'America/Punta_Arenas', 'UTC/GMT -03:00', NULL, NULL),
(169, 'America/Rankin_Inlet', 'UTC/GMT -05:00', NULL, NULL),
(170, 'America/Recife', 'UTC/GMT -03:00', NULL, NULL),
(171, 'America/Regina', 'UTC/GMT -06:00', NULL, NULL),
(172, 'America/Resolute', 'UTC/GMT -05:00', NULL, NULL),
(173, 'America/Rio_Branco', 'UTC/GMT -05:00', NULL, NULL),
(174, 'America/Santarem', 'UTC/GMT -03:00', NULL, NULL),
(175, 'America/Santiago', 'UTC/GMT -04:00', NULL, NULL),
(176, 'America/Santo_Domingo', 'UTC/GMT -04:00', NULL, NULL),
(177, 'America/Sao_Paulo', 'UTC/GMT -03:00', NULL, NULL),
(178, 'America/Scoresbysund', 'UTC/GMT -01:00', NULL, NULL),
(179, 'America/Sitka', 'UTC/GMT -08:00', NULL, NULL),
(180, 'America/St_Barthelemy', 'UTC/GMT -04:00', NULL, NULL),
(181, 'America/St_Johns', 'UTC/GMT -02:30', NULL, NULL),
(182, 'America/St_Kitts', 'UTC/GMT -04:00', NULL, NULL),
(183, 'America/St_Lucia', 'UTC/GMT -04:00', NULL, NULL),
(184, 'America/St_Thomas', 'UTC/GMT -04:00', NULL, NULL),
(185, 'America/St_Vincent', 'UTC/GMT -04:00', NULL, NULL),
(186, 'America/Swift_Current', 'UTC/GMT -06:00', NULL, NULL),
(187, 'America/Tegucigalpa', 'UTC/GMT -06:00', NULL, NULL),
(188, 'America/Thule', 'UTC/GMT -03:00', NULL, NULL),
(189, 'America/Tijuana', 'UTC/GMT -07:00', NULL, NULL),
(190, 'America/Toronto', 'UTC/GMT -04:00', NULL, NULL),
(191, 'America/Tortola', 'UTC/GMT -04:00', NULL, NULL),
(192, 'America/Vancouver', 'UTC/GMT -07:00', NULL, NULL),
(193, 'America/Whitehorse', 'UTC/GMT -07:00', NULL, NULL),
(194, 'America/Winnipeg', 'UTC/GMT -05:00', NULL, NULL),
(195, 'America/Yakutat', 'UTC/GMT -08:00', NULL, NULL),
(196, 'Antarctica/Casey', 'UTC/GMT +08:00', NULL, NULL),
(197, 'Antarctica/Davis', 'UTC/GMT +07:00', NULL, NULL),
(198, 'Antarctica/DumontDUrville', 'UTC/GMT +10:00', NULL, NULL),
(199, 'Antarctica/Macquarie', 'UTC/GMT +10:00', NULL, NULL),
(200, 'Antarctica/Mawson', 'UTC/GMT +05:00', NULL, NULL),
(201, 'Antarctica/McMurdo', 'UTC/GMT +12:00', NULL, NULL),
(202, 'Antarctica/Palmer', 'UTC/GMT -03:00', NULL, NULL),
(203, 'Antarctica/Rothera', 'UTC/GMT -03:00', NULL, NULL),
(204, 'Antarctica/Syowa', 'UTC/GMT +03:00', NULL, NULL),
(205, 'Antarctica/Troll', 'UTC/GMT +02:00', NULL, NULL),
(206, 'Antarctica/Vostok', 'UTC/GMT +05:00', NULL, NULL),
(207, 'Arctic/Longyearbyen', 'UTC/GMT +02:00', NULL, NULL),
(208, 'Asia/Aden', 'UTC/GMT +03:00', NULL, NULL),
(209, 'Asia/Almaty', 'UTC/GMT +05:00', NULL, NULL),
(210, 'Asia/Amman', 'UTC/GMT +03:00', NULL, NULL),
(211, 'Asia/Anadyr', 'UTC/GMT +12:00', NULL, NULL),
(212, 'Asia/Aqtau', 'UTC/GMT +05:00', NULL, NULL),
(213, 'Asia/Aqtobe', 'UTC/GMT +05:00', NULL, NULL),
(214, 'Asia/Ashgabat', 'UTC/GMT +05:00', NULL, NULL),
(215, 'Asia/Atyrau', 'UTC/GMT +05:00', NULL, NULL),
(216, 'Asia/Baghdad', 'UTC/GMT +03:00', NULL, NULL),
(217, 'Asia/Bahrain', 'UTC/GMT +03:00', NULL, NULL),
(218, 'Asia/Baku', 'UTC/GMT +04:00', NULL, NULL),
(219, 'Asia/Bangkok', 'UTC/GMT +07:00', NULL, NULL),
(220, 'Asia/Barnaul', 'UTC/GMT +07:00', NULL, NULL),
(221, 'Asia/Beirut', 'UTC/GMT +03:00', NULL, NULL),
(222, 'Asia/Bishkek', 'UTC/GMT +06:00', NULL, NULL),
(223, 'Asia/Brunei', 'UTC/GMT +08:00', NULL, NULL),
(224, 'Asia/Chita', 'UTC/GMT +09:00', NULL, NULL),
(225, 'Asia/Choibalsan', 'UTC/GMT +08:00', NULL, NULL),
(226, 'Asia/Colombo', 'UTC/GMT +05:30', NULL, NULL),
(227, 'Asia/Damascus', 'UTC/GMT +03:00', NULL, NULL),
(228, 'Asia/Dhaka', 'UTC/GMT +06:00', NULL, NULL),
(229, 'Asia/Dili', 'UTC/GMT +09:00', NULL, NULL),
(230, 'Asia/Dubai', 'UTC/GMT +04:00', NULL, NULL),
(231, 'Asia/Dushanbe', 'UTC/GMT +05:00', NULL, NULL),
(232, 'Asia/Famagusta', 'UTC/GMT +03:00', NULL, NULL),
(233, 'Asia/Gaza', 'UTC/GMT +03:00', NULL, NULL),
(234, 'Asia/Hebron', 'UTC/GMT +03:00', NULL, NULL),
(235, 'Asia/Ho_Chi_Minh', 'UTC/GMT +07:00', NULL, NULL),
(236, 'Asia/Hong_Kong', 'UTC/GMT +08:00', NULL, NULL),
(237, 'Asia/Hovd', 'UTC/GMT +07:00', NULL, NULL),
(238, 'Asia/Irkutsk', 'UTC/GMT +08:00', NULL, NULL),
(239, 'Asia/Jakarta', 'UTC/GMT +07:00', NULL, NULL),
(240, 'Asia/Jayapura', 'UTC/GMT +09:00', NULL, NULL),
(241, 'Asia/Jerusalem', 'UTC/GMT +03:00', NULL, NULL),
(242, 'Asia/Kabul', 'UTC/GMT +04:30', NULL, NULL),
(243, 'Asia/Kamchatka', 'UTC/GMT +12:00', NULL, NULL),
(244, 'Asia/Karachi', 'UTC/GMT +05:00', NULL, NULL),
(245, 'Asia/Kathmandu', 'UTC/GMT +05:45', NULL, NULL),
(246, 'Asia/Khandyga', 'UTC/GMT +09:00', NULL, NULL),
(247, 'Asia/Kolkata', 'UTC/GMT +05:30', NULL, NULL),
(248, 'Asia/Krasnoyarsk', 'UTC/GMT +07:00', NULL, NULL),
(249, 'Asia/Kuala_Lumpur', 'UTC/GMT +08:00', NULL, NULL),
(250, 'Asia/Kuching', 'UTC/GMT +08:00', NULL, NULL),
(251, 'Asia/Kuwait', 'UTC/GMT +03:00', NULL, NULL),
(252, 'Asia/Macau', 'UTC/GMT +08:00', NULL, NULL),
(253, 'Asia/Magadan', 'UTC/GMT +11:00', NULL, NULL),
(254, 'Asia/Makassar', 'UTC/GMT +08:00', NULL, NULL),
(255, 'Asia/Manila', 'UTC/GMT +08:00', NULL, NULL),
(256, 'Asia/Muscat', 'UTC/GMT +04:00', NULL, NULL),
(257, 'Asia/Nicosia', 'UTC/GMT +03:00', NULL, NULL),
(258, 'Asia/Novokuznetsk', 'UTC/GMT +07:00', NULL, NULL),
(259, 'Asia/Novosibirsk', 'UTC/GMT +07:00', NULL, NULL),
(260, 'Asia/Omsk', 'UTC/GMT +06:00', NULL, NULL),
(261, 'Asia/Oral', 'UTC/GMT +05:00', NULL, NULL),
(262, 'Asia/Phnom_Penh', 'UTC/GMT +07:00', NULL, NULL),
(263, 'Asia/Pontianak', 'UTC/GMT +07:00', NULL, NULL),
(264, 'Asia/Pyongyang', 'UTC/GMT +09:00', NULL, NULL),
(265, 'Asia/Qatar', 'UTC/GMT +03:00', NULL, NULL),
(266, 'Asia/Qostanay', 'UTC/GMT +05:00', NULL, NULL),
(267, 'Asia/Qyzylorda', 'UTC/GMT +05:00', NULL, NULL),
(268, 'Asia/Riyadh', 'UTC/GMT +03:00', NULL, NULL),
(269, 'Asia/Sakhalin', 'UTC/GMT +11:00', NULL, NULL),
(270, 'Asia/Samarkand', 'UTC/GMT +05:00', NULL, NULL),
(271, 'Asia/Seoul', 'UTC/GMT +09:00', NULL, NULL),
(272, 'Asia/Shanghai', 'UTC/GMT +08:00', NULL, NULL),
(273, 'Asia/Singapore', 'UTC/GMT +08:00', NULL, NULL),
(274, 'Asia/Srednekolymsk', 'UTC/GMT +11:00', NULL, NULL),
(275, 'Asia/Taipei', 'UTC/GMT +08:00', NULL, NULL),
(276, 'Asia/Tashkent', 'UTC/GMT +05:00', NULL, NULL),
(277, 'Asia/Tbilisi', 'UTC/GMT +04:00', NULL, NULL),
(278, 'Asia/Tehran', 'UTC/GMT +03:30', NULL, NULL),
(279, 'Asia/Thimphu', 'UTC/GMT +06:00', NULL, NULL),
(280, 'Asia/Tokyo', 'UTC/GMT +09:00', NULL, NULL),
(281, 'Asia/Tomsk', 'UTC/GMT +07:00', NULL, NULL),
(282, 'Asia/Ulaanbaatar', 'UTC/GMT +08:00', NULL, NULL),
(283, 'Asia/Urumqi', 'UTC/GMT +06:00', NULL, NULL),
(284, 'Asia/Ust-Nera', 'UTC/GMT +10:00', NULL, NULL),
(285, 'Asia/Vientiane', 'UTC/GMT +07:00', NULL, NULL),
(286, 'Asia/Vladivostok', 'UTC/GMT +10:00', NULL, NULL),
(287, 'Asia/Yakutsk', 'UTC/GMT +09:00', NULL, NULL),
(288, 'Asia/Yangon', 'UTC/GMT +06:30', NULL, NULL),
(289, 'Asia/Yekaterinburg', 'UTC/GMT +05:00', NULL, NULL),
(290, 'Asia/Yerevan', 'UTC/GMT +04:00', NULL, NULL),
(291, 'Atlantic/Azores', 'UTC/GMT +00:00', NULL, NULL),
(292, 'Atlantic/Bermuda', 'UTC/GMT -03:00', NULL, NULL),
(293, 'Atlantic/Canary', 'UTC/GMT +01:00', NULL, NULL),
(294, 'Atlantic/Cape_Verde', 'UTC/GMT -01:00', NULL, NULL),
(295, 'Atlantic/Faroe', 'UTC/GMT +01:00', NULL, NULL),
(296, 'Atlantic/Madeira', 'UTC/GMT +01:00', NULL, NULL),
(297, 'Atlantic/Reykjavik', 'UTC/GMT +00:00', NULL, NULL),
(298, 'Atlantic/South_Georgia', 'UTC/GMT -02:00', NULL, NULL),
(299, 'Atlantic/St_Helena', 'UTC/GMT +00:00', NULL, NULL),
(300, 'Atlantic/Stanley', 'UTC/GMT -03:00', NULL, NULL),
(301, 'Australia/Adelaide', 'UTC/GMT +09:30', NULL, NULL),
(302, 'Australia/Brisbane', 'UTC/GMT +10:00', NULL, NULL),
(303, 'Australia/Broken_Hill', 'UTC/GMT +09:30', NULL, NULL),
(304, 'Australia/Darwin', 'UTC/GMT +09:30', NULL, NULL),
(305, 'Australia/Eucla', 'UTC/GMT +08:45', NULL, NULL),
(306, 'Australia/Hobart', 'UTC/GMT +10:00', NULL, NULL),
(307, 'Australia/Lindeman', 'UTC/GMT +10:00', NULL, NULL),
(308, 'Australia/Lord_Howe', 'UTC/GMT +10:30', NULL, NULL),
(309, 'Australia/Melbourne', 'UTC/GMT +10:00', NULL, NULL),
(310, 'Australia/Perth', 'UTC/GMT +08:00', NULL, NULL),
(311, 'Australia/Sydney', 'UTC/GMT +10:00', NULL, NULL),
(312, 'Europe/Amsterdam', 'UTC/GMT +02:00', NULL, NULL),
(313, 'Europe/Andorra', 'UTC/GMT +02:00', NULL, NULL),
(314, 'Europe/Astrakhan', 'UTC/GMT +04:00', NULL, NULL),
(315, 'Europe/Athens', 'UTC/GMT +03:00', NULL, NULL),
(316, 'Europe/Belgrade', 'UTC/GMT +02:00', NULL, NULL),
(317, 'Europe/Berlin', 'UTC/GMT +02:00', NULL, NULL),
(318, 'Europe/Bratislava', 'UTC/GMT +02:00', NULL, NULL),
(319, 'Europe/Brussels', 'UTC/GMT +02:00', NULL, NULL),
(320, 'Europe/Bucharest', 'UTC/GMT +03:00', NULL, NULL),
(321, 'Europe/Budapest', 'UTC/GMT +02:00', NULL, NULL),
(322, 'Europe/Busingen', 'UTC/GMT +02:00', NULL, NULL),
(323, 'Europe/Chisinau', 'UTC/GMT +03:00', NULL, NULL),
(324, 'Europe/Copenhagen', 'UTC/GMT +02:00', NULL, NULL),
(325, 'Europe/Dublin', 'UTC/GMT +01:00', NULL, NULL),
(326, 'Europe/Gibraltar', 'UTC/GMT +02:00', NULL, NULL),
(327, 'Europe/Guernsey', 'UTC/GMT +01:00', NULL, NULL),
(328, 'Europe/Helsinki', 'UTC/GMT +03:00', NULL, NULL),
(329, 'Europe/Isle_of_Man', 'UTC/GMT +01:00', NULL, NULL),
(330, 'Europe/Istanbul', 'UTC/GMT +03:00', NULL, NULL),
(331, 'Europe/Jersey', 'UTC/GMT +01:00', NULL, NULL),
(332, 'Europe/Kaliningrad', 'UTC/GMT +02:00', NULL, NULL),
(333, 'Europe/Kirov', 'UTC/GMT +03:00', NULL, NULL),
(334, 'Europe/Kyiv', 'UTC/GMT +03:00', NULL, NULL),
(335, 'Europe/Lisbon', 'UTC/GMT +01:00', NULL, NULL),
(336, 'Europe/Ljubljana', 'UTC/GMT +02:00', NULL, NULL),
(337, 'Europe/London', 'UTC/GMT +01:00', NULL, NULL),
(338, 'Europe/Luxembourg', 'UTC/GMT +02:00', NULL, NULL),
(339, 'Europe/Madrid', 'UTC/GMT +02:00', NULL, NULL),
(340, 'Europe/Malta', 'UTC/GMT +02:00', NULL, NULL),
(341, 'Europe/Mariehamn', 'UTC/GMT +03:00', NULL, NULL),
(342, 'Europe/Minsk', 'UTC/GMT +03:00', NULL, NULL),
(343, 'Europe/Monaco', 'UTC/GMT +02:00', NULL, NULL),
(344, 'Europe/Moscow', 'UTC/GMT +03:00', NULL, NULL),
(345, 'Europe/Oslo', 'UTC/GMT +02:00', NULL, NULL),
(346, 'Europe/Paris', 'UTC/GMT +02:00', NULL, NULL),
(347, 'Europe/Podgorica', 'UTC/GMT +02:00', NULL, NULL),
(348, 'Europe/Prague', 'UTC/GMT +02:00', NULL, NULL),
(349, 'Europe/Riga', 'UTC/GMT +03:00', NULL, NULL),
(350, 'Europe/Rome', 'UTC/GMT +02:00', NULL, NULL),
(351, 'Europe/Samara', 'UTC/GMT +04:00', NULL, NULL),
(352, 'Europe/San_Marino', 'UTC/GMT +02:00', NULL, NULL),
(353, 'Europe/Sarajevo', 'UTC/GMT +02:00', NULL, NULL),
(354, 'Europe/Saratov', 'UTC/GMT +04:00', NULL, NULL),
(355, 'Europe/Simferopol', 'UTC/GMT +03:00', NULL, NULL),
(356, 'Europe/Skopje', 'UTC/GMT +02:00', NULL, NULL),
(357, 'Europe/Sofia', 'UTC/GMT +03:00', NULL, NULL),
(358, 'Europe/Stockholm', 'UTC/GMT +02:00', NULL, NULL),
(359, 'Europe/Tallinn', 'UTC/GMT +03:00', NULL, NULL),
(360, 'Europe/Tirane', 'UTC/GMT +02:00', NULL, NULL),
(361, 'Europe/Ulyanovsk', 'UTC/GMT +04:00', NULL, NULL),
(362, 'Europe/Vaduz', 'UTC/GMT +02:00', NULL, NULL),
(363, 'Europe/Vatican', 'UTC/GMT +02:00', NULL, NULL),
(364, 'Europe/Vienna', 'UTC/GMT +02:00', NULL, NULL),
(365, 'Europe/Vilnius', 'UTC/GMT +03:00', NULL, NULL),
(366, 'Europe/Volgograd', 'UTC/GMT +03:00', NULL, NULL),
(367, 'Europe/Warsaw', 'UTC/GMT +02:00', NULL, NULL),
(368, 'Europe/Zagreb', 'UTC/GMT +02:00', NULL, NULL),
(369, 'Europe/Zurich', 'UTC/GMT +02:00', NULL, NULL),
(370, 'Indian/Antananarivo', 'UTC/GMT +03:00', NULL, NULL),
(371, 'Indian/Chagos', 'UTC/GMT +06:00', NULL, NULL),
(372, 'Indian/Christmas', 'UTC/GMT +07:00', NULL, NULL),
(373, 'Indian/Cocos', 'UTC/GMT +06:30', NULL, NULL),
(374, 'Indian/Comoro', 'UTC/GMT +03:00', NULL, NULL),
(375, 'Indian/Kerguelen', 'UTC/GMT +05:00', NULL, NULL),
(376, 'Indian/Mahe', 'UTC/GMT +04:00', NULL, NULL),
(377, 'Indian/Maldives', 'UTC/GMT +05:00', NULL, NULL),
(378, 'Indian/Mauritius', 'UTC/GMT +04:00', NULL, NULL),
(379, 'Indian/Mayotte', 'UTC/GMT +03:00', NULL, NULL),
(380, 'Indian/Reunion', 'UTC/GMT +04:00', NULL, NULL),
(381, 'Pacific/Apia', 'UTC/GMT +13:00', NULL, NULL),
(382, 'Pacific/Auckland', 'UTC/GMT +12:00', NULL, NULL),
(383, 'Pacific/Bougainville', 'UTC/GMT +11:00', NULL, NULL),
(384, 'Pacific/Chatham', 'UTC/GMT +12:45', NULL, NULL),
(385, 'Pacific/Chuuk', 'UTC/GMT +10:00', NULL, NULL),
(386, 'Pacific/Easter', 'UTC/GMT -06:00', NULL, NULL),
(387, 'Pacific/Efate', 'UTC/GMT +11:00', NULL, NULL),
(388, 'Pacific/Fakaofo', 'UTC/GMT +13:00', NULL, NULL),
(389, 'Pacific/Fiji', 'UTC/GMT +12:00', NULL, NULL),
(390, 'Pacific/Funafuti', 'UTC/GMT +12:00', NULL, NULL),
(391, 'Pacific/Galapagos', 'UTC/GMT -06:00', NULL, NULL),
(392, 'Pacific/Gambier', 'UTC/GMT -09:00', NULL, NULL),
(393, 'Pacific/Guadalcanal', 'UTC/GMT +11:00', NULL, NULL),
(394, 'Pacific/Guam', 'UTC/GMT +10:00', NULL, NULL),
(395, 'Pacific/Honolulu', 'UTC/GMT -10:00', NULL, NULL),
(396, 'Pacific/Kanton', 'UTC/GMT +13:00', NULL, NULL),
(397, 'Pacific/Kiritimati', 'UTC/GMT +14:00', NULL, NULL),
(398, 'Pacific/Kosrae', 'UTC/GMT +11:00', NULL, NULL),
(399, 'Pacific/Kwajalein', 'UTC/GMT +12:00', NULL, NULL),
(400, 'Pacific/Majuro', 'UTC/GMT +12:00', NULL, NULL),
(401, 'Pacific/Marquesas', 'UTC/GMT -09:30', NULL, NULL),
(402, 'Pacific/Midway', 'UTC/GMT -11:00', NULL, NULL),
(403, 'Pacific/Nauru', 'UTC/GMT +12:00', NULL, NULL),
(404, 'Pacific/Niue', 'UTC/GMT -11:00', NULL, NULL),
(405, 'Pacific/Norfolk', 'UTC/GMT +11:00', NULL, NULL),
(406, 'Pacific/Noumea', 'UTC/GMT +11:00', NULL, NULL),
(407, 'Pacific/Pago_Pago', 'UTC/GMT -11:00', NULL, NULL),
(408, 'Pacific/Palau', 'UTC/GMT +09:00', NULL, NULL),
(409, 'Pacific/Pitcairn', 'UTC/GMT -08:00', NULL, NULL),
(410, 'Pacific/Pohnpei', 'UTC/GMT +11:00', NULL, NULL),
(411, 'Pacific/Port_Moresby', 'UTC/GMT +10:00', NULL, NULL),
(412, 'Pacific/Rarotonga', 'UTC/GMT -10:00', NULL, NULL),
(413, 'Pacific/Saipan', 'UTC/GMT +10:00', NULL, NULL),
(414, 'Pacific/Tahiti', 'UTC/GMT -10:00', NULL, NULL),
(415, 'Pacific/Tarawa', 'UTC/GMT +12:00', NULL, NULL),
(416, 'Pacific/Tongatapu', 'UTC/GMT +13:00', NULL, NULL),
(417, 'Pacific/Wake', 'UTC/GMT +12:00', NULL, NULL),
(418, 'Pacific/Wallis', 'UTC/GMT +12:00', NULL, NULL),
(419, 'UTC', 'UTC/GMT +00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `end_user_id` int(10) UNSIGNED DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_method_id` int(10) UNSIGNED DEFAULT NULL,
  `merchant_id` int(10) UNSIGNED DEFAULT NULL,
  `bank_id` int(10) UNSIGNED DEFAULT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `uuid` varchar(13) DEFAULT NULL COMMENT 'Unique ID',
  `refund_reference` varchar(13) DEFAULT NULL COMMENT 'Refund Reference',
  `transaction_reference_id` int(11) NOT NULL DEFAULT 0,
  `transaction_type_id` int(10) UNSIGNED DEFAULT NULL,
  `user_type` varchar(15) NOT NULL DEFAULT 'registered' COMMENT 'registered, unregistered',
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `subtotal` decimal(20,8) DEFAULT 0.00000000,
  `percentage` decimal(20,8) DEFAULT 0.00000000,
  `charge_percentage` decimal(20,8) DEFAULT 0.00000000,
  `charge_fixed` decimal(20,8) DEFAULT 0.00000000,
  `total` decimal(20,8) DEFAULT 0.00000000,
  `note` text DEFAULT NULL,
  `payment_status` varchar(11) DEFAULT NULL COMMENT 'Pending, Success, Blocked',
  `status` varchar(11) NOT NULL COMMENT 'Pending, Success, Refund, Blocked',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_types`
--

CREATE TABLE `transaction_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_types`
--

INSERT INTO `transaction_types` (`id`, `name`) VALUES
(1, 'Deposit'),
(2, 'Withdrawal'),
(3, 'Transferred'),
(4, 'Received'),
(5, 'Exchange_From'),
(6, 'Exchange_To'),
(7, 'Request_Sent'),
(8, 'Request_Received'),
(9, 'Payment_Sent'),
(10, 'Payment_Received'),
(11, 'Crypto_Sent'),
(12, 'Crypto_Received'),
(13, 'Crypto_Swap'),
(14, 'Crypto_Buy'),
(15, 'Crypto_Sell');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `sender_id` int(10) UNSIGNED DEFAULT NULL,
  `receiver_id` int(10) UNSIGNED DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `bank_id` int(10) UNSIGNED DEFAULT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `uuid` varchar(13) DEFAULT NULL COMMENT 'Unique ID (For Each Transfer)',
  `fee` decimal(20,8) DEFAULT 0.00000000,
  `amount` decimal(20,8) DEFAULT 0.00000000,
  `note` text DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `status` varchar(11) NOT NULL COMMENT 'Pending, Success, Refund, Blocked',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'user' COMMENT 'user or merchant',
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `formattedPhone` varchar(30) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `google2fa_secret` text DEFAULT NULL,
  `defaultCountry` varchar(4) DEFAULT NULL,
  `carrierCode` varchar(6) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `phrase` varchar(191) DEFAULT NULL,
  `address_verified` tinyint(1) NOT NULL DEFAULT 0,
  `identity_verified` tinyint(1) NOT NULL DEFAULT 0,
  `status` varchar(11) NOT NULL DEFAULT 'Active' COMMENT 'Active, Inactive, Suspended',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `picture` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `email_verification` tinyint(1) NOT NULL DEFAULT 0,
  `phone_verification_code` varchar(6) DEFAULT NULL,
  `two_step_verification_type` varchar(21) NOT NULL DEFAULT 'disabled' COMMENT 'disabled, email, phone, google_authenticator',
  `two_step_verification_code` varchar(6) DEFAULT NULL,
  `two_step_verification` tinyint(1) NOT NULL DEFAULT 0,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `last_login_ip` varchar(45) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `state` varchar(25) DEFAULT NULL,
  `address_1` text DEFAULT NULL,
  `address_2` text DEFAULT NULL,
  `default_currency` varchar(10) DEFAULT NULL,
  `timezone` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `verify_users`
--

CREATE TABLE `verify_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `balance` decimal(20,8) DEFAULT 0.00000000,
  `is_default` varchar(5) NOT NULL DEFAULT 'No' COMMENT 'Yes, No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_method_id` int(10) UNSIGNED DEFAULT NULL,
  `uuid` varchar(13) DEFAULT NULL COMMENT 'Unique ID (For Each Withdrawal)',
  `charge_percentage` decimal(20,8) DEFAULT 0.00000000,
  `charge_fixed` decimal(20,8) DEFAULT 0.00000000,
  `subtotal` decimal(20,8) DEFAULT 0.00000000,
  `amount` decimal(20,8) DEFAULT 0.00000000,
  `payment_method_info` varchar(255) NOT NULL,
  `status` varchar(11) NOT NULL COMMENT 'Pending, Success, Refund, Blocked',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_details`
--

CREATE TABLE `withdrawal_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `withdrawal_id` int(10) UNSIGNED DEFAULT NULL,
  `type` int(11) NOT NULL COMMENT '2=Paypal, 5=Bank, 8=Crypto',
  `email` varchar(191) DEFAULT NULL,
  `crypto_address` varchar(191) DEFAULT NULL,
  `account_name` varchar(191) DEFAULT NULL,
  `account_number` varchar(191) DEFAULT NULL,
  `bank_branch_name` varchar(191) DEFAULT NULL,
  `bank_branch_city` varchar(191) DEFAULT NULL,
  `bank_branch_address` varchar(191) DEFAULT NULL,
  `country` int(10) UNSIGNED DEFAULT NULL,
  `swift_code` varchar(191) DEFAULT NULL,
  `bank_name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_logs_user_id_index` (`user_id`);

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `addons_unique_identifier_unique` (`unique_identifier`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`),
  ADD KEY `admins_role_id_index` (`role_id`);

--
-- Indexes for table `app_store_credentials`
--
ALTER TABLE `app_store_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_tokens`
--
ALTER TABLE `app_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_tokens_app_id_index` (`app_id`);

--
-- Indexes for table `app_transactions_infos`
--
ALTER TABLE `app_transactions_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_transactions_infos_app_id_index` (`app_id`);

--
-- Indexes for table `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banks_user_id_index` (`user_id`),
  ADD KEY `banks_admin_id_index` (`admin_id`),
  ADD KEY `banks_currency_id_index` (`currency_id`),
  ADD KEY `banks_country_id_index` (`country_id`),
  ADD KEY `banks_file_id_index` (`file_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_url_unique` (`url`);

--
-- Indexes for table `coinpayment_log_trxes`
--
ALTER TABLE `coinpayment_log_trxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_short_name_unique` (`short_name`);

--
-- Indexes for table `crypto_asset_api_logs`
--
ALTER TABLE `crypto_asset_api_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crypto_asset_api_logs_payment_method_id_index` (`payment_method_id`),
  ADD KEY `crypto_asset_api_logs_object_id_idx` (`object_id`),
  ADD KEY `crypto_asset_api_logs_object_type_idx` (`object_type`),
  ADD KEY `crypto_asset_api_logs_network_idx` (`network`),
  ADD KEY `crypto_asset_api_logs_confirmations_idx` (`confirmations`);

--
-- Indexes for table `crypto_asset_settings`
--
ALTER TABLE `crypto_asset_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crypto_asset_settings_currency_id_unique` (`currency_id`),
  ADD UNIQUE KEY `crypto_asset_settings_network_unique` (`network`),
  ADD KEY `crypto_asset_settings_crypto_provider_id_idx` (`crypto_provider_id`),
  ADD KEY `crypto_asset_settings_payment_method_id_idx` (`payment_method_id`);

--
-- Indexes for table `crypto_exchanges`
--
ALTER TABLE `crypto_exchanges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crypto_exchagnes_user_id_idx` (`user_id`),
  ADD KEY `crypto_exchagnes_from_currency_idx` (`from_currency`),
  ADD KEY `crypto_exchagnes_to_currency_idx` (`to_currency`);

--
-- Indexes for table `crypto_providers`
--
ALTER TABLE `crypto_providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crypto_providers_alias_unique` (`alias`),
  ADD KEY `crypto_providers_name_idx` (`name`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency_exchanges`
--
ALTER TABLE `currency_exchanges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currency_exchanges_user_id_index` (`user_id`),
  ADD KEY `currency_exchanges_from_wallet_index` (`from_wallet`),
  ADD KEY `currency_exchanges_to_wallet_index` (`to_wallet`),
  ADD KEY `currency_exchanges_currency_id_index` (`currency_id`);

--
-- Indexes for table `currency_payment_methods`
--
ALTER TABLE `currency_payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currency_payment_methods_currency_id_index` (`currency_id`),
  ADD KEY `currency_payment_methods_method_id_index` (`method_id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deposits_user_id_index` (`user_id`),
  ADD KEY `deposits_currency_id_index` (`currency_id`),
  ADD KEY `deposits_payment_method_id_index` (`payment_method_id`),
  ADD KEY `deposits_bank_id_index` (`bank_id`),
  ADD KEY `deposits_file_id_index` (`file_id`);

--
-- Indexes for table `device_logs`
--
ALTER TABLE `device_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `device_logs_user_id_index` (`user_id`);

--
-- Indexes for table `disputes`
--
ALTER TABLE `disputes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disputes_claimant_id_index` (`claimant_id`),
  ADD KEY `disputes_defendant_id_index` (`defendant_id`),
  ADD KEY `disputes_transaction_id_index` (`transaction_id`),
  ADD KEY `disputes_reason_id_index` (`reason_id`);

--
-- Indexes for table `dispute_discussions`
--
ALTER TABLE `dispute_discussions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dispute_discussions_dispute_id_index` (`dispute_id`),
  ADD KEY `dispute_discussions_user_id_index` (`user_id`);

--
-- Indexes for table `document_verifications`
--
ALTER TABLE `document_verifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_verifications_user_id_index` (`user_id`),
  ADD KEY `document_verifications_file_id_index` (`file_id`);

--
-- Indexes for table `email_configs`
--
ALTER TABLE `email_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_templates_language_id_idx` (`language_id`),
  ADD KEY `email_templates_name_idx` (`name`),
  ADD KEY `email_templates_alias_idx` (`alias`);

--
-- Indexes for table `exchange_directions`
--
ALTER TABLE `exchange_directions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exchange_directions_from_currency_id_idx` (`from_currency_id`),
  ADD KEY `exchange_directions_to_currency_id_idx` (`to_currency_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees_limits`
--
ALTER TABLE `fees_limits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fees_limits_transaction_type_id_foreign` (`transaction_type_id`),
  ADD KEY `fees_limits_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `fees_limits_currency_id_index` (`currency_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_admin_id_index` (`admin_id`),
  ADD KEY `files_user_id_index` (`user_id`),
  ADD KEY `files_ticket_id_index` (`ticket_id`),
  ADD KEY `files_ticket_reply_id_index` (`ticket_reply_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchants`
--
ALTER TABLE `merchants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `merchants_user_id_index` (`user_id`),
  ADD KEY `merchants_currency_id_index` (`currency_id`),
  ADD KEY `merchants_merchant_group_id_index` (`merchant_group_id`);

--
-- Indexes for table `merchant_apps`
--
ALTER TABLE `merchant_apps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `merchant_apps_client_id_unique` (`client_id`),
  ADD KEY `merchant_apps_merchant_id_index` (`merchant_id`);

--
-- Indexes for table `merchant_groups`
--
ALTER TABLE `merchant_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `merchant_groups_name_unique` (`name`),
  ADD KEY `fee_bearer_merchant_groups_idx` (`fee_bearer`);

--
-- Indexes for table `merchant_payments`
--
ALTER TABLE `merchant_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `merchant_payments_merchant_id_index` (`merchant_id`),
  ADD KEY `merchant_payments_currency_id_index` (`currency_id`),
  ADD KEY `merchant_payments_payment_method_id_index` (`payment_method_id`),
  ADD KEY `merchant_payments_user_id_index` (`user_id`);

--
-- Indexes for table `metas`
--
ALTER TABLE `metas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_settings`
--
ALTER TABLE `notification_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_settings_notification_type_id_index` (`notification_type_id`),
  ADD KEY `notification_settings_recipient_index` (`recipient`),
  ADD KEY `notification_settings_status_index` (`status`);

--
-- Indexes for table `notification_types`
--
ALTER TABLE `notification_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `notification_types_name_unique` (`name`),
  ADD UNIQUE KEY `notification_types_alias_unique` (`alias`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_url_unique` (`url`);

--
-- Indexes for table `parameters`
--
ALTER TABLE `parameters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout_settings`
--
ALTER TABLE `payout_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_index` (`tokenable_type`),
  ADD KEY `personal_access_tokens_tokenable_id_index` (`tokenable_id`);

--
-- Indexes for table `phone_verification`
--
ALTER TABLE `phone_verification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preferences`
--
ALTER TABLE `preferences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `preferences_field_unique` (`field`);

--
-- Indexes for table `qr_codes`
--
ALTER TABLE `qr_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `qr_codes_object_id_index` (`object_id`);

--
-- Indexes for table `reasons`
--
ALTER TABLE `reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_payments`
--
ALTER TABLE `request_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_payments_user_id_index` (`user_id`),
  ADD KEY `request_payments_receiver_id_index` (`receiver_id`),
  ADD KEY `request_payments_currency_id_index` (`currency_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_configs`
--
ALTER TABLE `sms_configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sms_configs_type_index` (`type`),
  ADD KEY `sms_configs_status_index` (`status`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_admin_id_index` (`admin_id`),
  ADD KEY `tickets_user_id_index` (`user_id`),
  ADD KEY `tickets_ticket_status_id_index` (`ticket_status_id`);

--
-- Indexes for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_replies_admin_id_index` (`admin_id`),
  ADD KEY `ticket_replies_user_id_index` (`user_id`),
  ADD KEY `ticket_replies_ticket_id_index` (`ticket_id`);

--
-- Indexes for table `ticket_statuses`
--
ALTER TABLE `ticket_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_zones`
--
ALTER TABLE `time_zones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_transaction_type_id_foreign` (`transaction_type_id`),
  ADD KEY `transactions_user_id_index` (`user_id`),
  ADD KEY `transactions_end_user_id_index` (`end_user_id`),
  ADD KEY `transactions_currency_id_index` (`currency_id`),
  ADD KEY `transactions_payment_method_id_index` (`payment_method_id`),
  ADD KEY `transactions_merchant_id_index` (`merchant_id`),
  ADD KEY `transactions_bank_id_index` (`bank_id`),
  ADD KEY `transactions_file_id_index` (`file_id`);

--
-- Indexes for table `transaction_types`
--
ALTER TABLE `transaction_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfers_sender_id_index` (`sender_id`),
  ADD KEY `transfers_receiver_id_index` (`receiver_id`),
  ADD KEY `transfers_currency_id_index` (`currency_id`),
  ADD KEY `transfers_bank_id_index` (`bank_id`),
  ADD KEY `transfers_file_id_index` (`file_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD KEY `users_role_id_index` (`role_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_details_user_id_index` (`user_id`),
  ADD KEY `user_details_country_id_index` (`country_id`);

--
-- Indexes for table `verify_users`
--
ALTER TABLE `verify_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `verify_users_user_id_index` (`user_id`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallets_user_id_index` (`user_id`),
  ADD KEY `wallets_currency_id_index` (`currency_id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdrawals_user_id_index` (`user_id`),
  ADD KEY `withdrawals_currency_id_index` (`currency_id`),
  ADD KEY `withdrawals_payment_method_id_index` (`payment_method_id`);

--
-- Indexes for table `withdrawal_details`
--
ALTER TABLE `withdrawal_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdrawal_details_withdrawal_id_index` (`withdrawal_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `app_store_credentials`
--
ALTER TABLE `app_store_credentials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `app_tokens`
--
ALTER TABLE `app_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_transactions_infos`
--
ALTER TABLE `app_transactions_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `backups`
--
ALTER TABLE `backups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coinpayment_log_trxes`
--
ALTER TABLE `coinpayment_log_trxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `crypto_asset_api_logs`
--
ALTER TABLE `crypto_asset_api_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crypto_asset_settings`
--
ALTER TABLE `crypto_asset_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `crypto_exchanges`
--
ALTER TABLE `crypto_exchanges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crypto_providers`
--
ALTER TABLE `crypto_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `currency_exchanges`
--
ALTER TABLE `currency_exchanges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currency_payment_methods`
--
ALTER TABLE `currency_payment_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `device_logs`
--
ALTER TABLE `device_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `disputes`
--
ALTER TABLE `disputes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dispute_discussions`
--
ALTER TABLE `dispute_discussions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `document_verifications`
--
ALTER TABLE `document_verifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_configs`
--
ALTER TABLE `email_configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT for table `exchange_directions`
--
ALTER TABLE `exchange_directions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fees_limits`
--
ALTER TABLE `fees_limits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `merchants`
--
ALTER TABLE `merchants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `merchant_apps`
--
ALTER TABLE `merchant_apps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `merchant_groups`
--
ALTER TABLE `merchant_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `merchant_payments`
--
ALTER TABLE `merchant_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `metas`
--
ALTER TABLE `metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `notification_settings`
--
ALTER TABLE `notification_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `notification_types`
--
ALTER TABLE `notification_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `parameters`
--
ALTER TABLE `parameters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payout_settings`
--
ALTER TABLE `payout_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_verification`
--
ALTER TABLE `phone_verification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `preferences`
--
ALTER TABLE `preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `qr_codes`
--
ALTER TABLE `qr_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reasons`
--
ALTER TABLE `reasons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `request_payments`
--
ALTER TABLE `request_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `sms_configs`
--
ALTER TABLE `sms_configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_statuses`
--
ALTER TABLE `ticket_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `time_zones`
--
ALTER TABLE `time_zones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=420;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `transaction_types`
--
ALTER TABLE `transaction_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `verify_users`
--
ALTER TABLE `verify_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdrawal_details`
--
ALTER TABLE `withdrawal_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `app_tokens`
--
ALTER TABLE `app_tokens`
  ADD CONSTRAINT `app_tokens_app_id_foreign` FOREIGN KEY (`app_id`) REFERENCES `merchant_apps` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `app_transactions_infos`
--
ALTER TABLE `app_transactions_infos`
  ADD CONSTRAINT `app_transactions_infos_app_id_foreign` FOREIGN KEY (`app_id`) REFERENCES `merchant_apps` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `banks`
--
ALTER TABLE `banks`
  ADD CONSTRAINT `banks_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `banks_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `banks_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `banks_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `banks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `crypto_asset_api_logs`
--
ALTER TABLE `crypto_asset_api_logs`
  ADD CONSTRAINT `crypto_asset_api_logs_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `crypto_asset_settings`
--
ALTER TABLE `crypto_asset_settings`
  ADD CONSTRAINT `crypto_asset_settings_crypto_provider_id_foreign` FOREIGN KEY (`crypto_provider_id`) REFERENCES `crypto_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `crypto_asset_settings_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `crypto_asset_settings_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `currency_exchanges`
--
ALTER TABLE `currency_exchanges`
  ADD CONSTRAINT `currency_exchanges_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `currency_exchanges_from_wallet_foreign` FOREIGN KEY (`from_wallet`) REFERENCES `wallets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `currency_exchanges_to_wallet_foreign` FOREIGN KEY (`to_wallet`) REFERENCES `wallets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `currency_exchanges_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `currency_payment_methods`
--
ALTER TABLE `currency_payment_methods`
  ADD CONSTRAINT `currency_payment_methods_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `currency_payment_methods_method_id_foreign` FOREIGN KEY (`method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `deposits`
--
ALTER TABLE `deposits`
  ADD CONSTRAINT `deposits_bank_id_foreign` FOREIGN KEY (`bank_id`) REFERENCES `banks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `deposits_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `deposits_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `deposits_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `deposits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `device_logs`
--
ALTER TABLE `device_logs`
  ADD CONSTRAINT `device_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `disputes`
--
ALTER TABLE `disputes`
  ADD CONSTRAINT `disputes_claimant_id_foreign` FOREIGN KEY (`claimant_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `disputes_defendant_id_foreign` FOREIGN KEY (`defendant_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `disputes_reason_id_foreign` FOREIGN KEY (`reason_id`) REFERENCES `reasons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `disputes_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dispute_discussions`
--
ALTER TABLE `dispute_discussions`
  ADD CONSTRAINT `dispute_discussions_dispute_id_foreign` FOREIGN KEY (`dispute_id`) REFERENCES `disputes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `document_verifications`
--
ALTER TABLE `document_verifications`
  ADD CONSTRAINT `document_verifications_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `document_verifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD CONSTRAINT `email_templates_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `exchange_directions`
--
ALTER TABLE `exchange_directions`
  ADD CONSTRAINT `exchange_directions_from_currency_id_foreign` FOREIGN KEY (`from_currency_id`) REFERENCES `currencies` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `exchange_directions_to_currency_id_foreign` FOREIGN KEY (`to_currency_id`) REFERENCES `currencies` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `fees_limits`
--
ALTER TABLE `fees_limits`
  ADD CONSTRAINT `fees_limits_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fees_limits_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fees_limits_transaction_type_id_foreign` FOREIGN KEY (`transaction_type_id`) REFERENCES `transaction_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `files_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `files_ticket_reply_id_foreign` FOREIGN KEY (`ticket_reply_id`) REFERENCES `ticket_replies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `files_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `merchants`
--
ALTER TABLE `merchants`
  ADD CONSTRAINT `merchants_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `merchants_merchant_group_id_foreign` FOREIGN KEY (`merchant_group_id`) REFERENCES `merchant_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `merchants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `merchant_apps`
--
ALTER TABLE `merchant_apps`
  ADD CONSTRAINT `merchant_apps_merchant_id_foreign` FOREIGN KEY (`merchant_id`) REFERENCES `merchants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `merchant_payments`
--
ALTER TABLE `merchant_payments`
  ADD CONSTRAINT `merchant_payments_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `merchant_payments_merchant_id_foreign` FOREIGN KEY (`merchant_id`) REFERENCES `merchants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `merchant_payments_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `merchant_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notification_settings`
--
ALTER TABLE `notification_settings`
  ADD CONSTRAINT `notification_settings_notification_type_id_foreign` FOREIGN KEY (`notification_type_id`) REFERENCES `notification_settings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `request_payments`
--
ALTER TABLE `request_payments`
  ADD CONSTRAINT `request_payments_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `request_payments_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `request_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_ticket_status_id_foreign` FOREIGN KEY (`ticket_status_id`) REFERENCES `ticket_statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  ADD CONSTRAINT `ticket_replies_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_replies_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_bank_id_foreign` FOREIGN KEY (`bank_id`) REFERENCES `banks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_end_user_id_foreign` FOREIGN KEY (`end_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_merchant_id_foreign` FOREIGN KEY (`merchant_id`) REFERENCES `merchants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_transaction_type_id_foreign` FOREIGN KEY (`transaction_type_id`) REFERENCES `transaction_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transfers`
--
ALTER TABLE `transfers`
  ADD CONSTRAINT `transfers_bank_id_foreign` FOREIGN KEY (`bank_id`) REFERENCES `banks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transfers_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transfers_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transfers_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transfers_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `user_details_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `verify_users`
--
ALTER TABLE `verify_users`
  ADD CONSTRAINT `verify_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wallets`
--
ALTER TABLE `wallets`
  ADD CONSTRAINT `wallets_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wallets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD CONSTRAINT `withdrawals_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `withdrawals_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `withdrawals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `withdrawal_details`
--
ALTER TABLE `withdrawal_details`
  ADD CONSTRAINT `withdrawal_details_withdrawal_id_foreign` FOREIGN KEY (`withdrawal_id`) REFERENCES `withdrawals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
