-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2023 at 07:15 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learnvern_watch_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Apple', 'apple description', 'apple.png', 1, '2022-12-15 01:41:53', '2022-12-15 01:41:53'),
(2, 'Breitling', 'breitling description', 'breitling.jpg', 1, '2022-12-15 01:41:53', '2022-12-15 01:41:53'),
(3, 'Cartier', 'cartier description', 'cartier.png', 1, '2022-12-15 01:41:53', '2022-12-15 01:41:53'),
(4, 'Casio', 'casio description', 'casio.jpg', 1, '2022-12-15 01:41:53', '2022-12-15 01:41:53'),
(5, 'Diesel', 'diesel description', 'diesel.png', 1, '2022-12-15 01:41:53', '2022-12-15 01:41:53'),
(6, 'Fastrack', 'fastrack description', 'fastrack.png', 1, '2022-12-15 01:41:53', '2022-12-15 01:41:53'),
(7, 'Fossil', 'fossil description', 'fossil.png', 1, '2022-12-15 01:41:53', '2022-12-15 01:41:53'),
(8, 'Hamilton', 'hamilton description', 'hamilton.png', 1, '2022-12-15 01:41:53', '2022-12-15 01:41:53'),
(9, 'Hublot', 'hublot description', 'hublot.png', 1, '2022-12-15 01:41:53', '2022-12-15 01:41:53'),
(10, 'Omega', 'omega description', 'omega.png', 1, '2022-12-15 01:41:53', '2022-12-15 01:41:53'),
(11, 'Rado', 'rado description', 'rado.png', 1, '2022-12-15 01:41:53', '2022-12-15 01:41:53'),
(12, 'Roadster', 'roadster description', 'roadster.jpg', 1, '2022-12-15 01:41:53', '2022-12-15 01:41:53'),
(13, 'Rolex', 'rolex description', 'rolex.png', 1, '2022-12-15 01:41:53', '2022-12-15 01:41:53'),
(14, 'Swatch', 'swatch description', 'swatch.png', 1, '2022-12-15 01:41:53', '2022-12-15 01:41:53'),
(15, 'Tag_heuer', 'tag_heuer description', 'tag_heuer.png', 1, '2022-12-15 01:41:53', '2022-12-15 01:41:53'),
(16, 'Tissot', 'tissot description', 'tissot.png', 1, '2022-12-15 01:41:53', '2022-12-15 01:41:53'),
(17, 'Titan', 'titan description', 'titan.png', 1, '2022-12-15 01:41:53', '2022-12-15 01:41:53');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(5, 2, 73, 1, '2022-12-16 05:28:34', '2022-12-16 05:30:55'),
(9, 2, 29, 1, '2022-12-18 23:12:25', '2022-12-18 23:12:25');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(5, 2, 'dfsdfsdf', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `shortname` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phonecode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `shortname`, `name`, `phonecode`) VALUES
(1, 'AF', 'Afghanistan', 93),
(2, 'AL', 'Albania', 355),
(3, 'DZ', 'Algeria', 213),
(4, 'AS', 'American Samoa', 1684),
(5, 'AD', 'Andorra', 376),
(6, 'AO', 'Angola', 244),
(7, 'AI', 'Anguilla', 1264),
(8, 'AQ', 'Antarctica', 0),
(9, 'AG', 'Antigua And Barbuda', 1268),
(10, 'AR', 'Argentina', 54),
(11, 'AM', 'Armenia', 374),
(12, 'AW', 'Aruba', 297),
(13, 'AU', 'Australia', 61),
(14, 'AT', 'Austria', 43),
(15, 'AZ', 'Azerbaijan', 994),
(16, 'BS', 'Bahamas The', 1242),
(17, 'BH', 'Bahrain', 973),
(18, 'BD', 'Bangladesh', 880),
(19, 'BB', 'Barbados', 1246),
(20, 'BY', 'Belarus', 375),
(21, 'BE', 'Belgium', 32),
(22, 'BZ', 'Belize', 501),
(23, 'BJ', 'Benin', 229),
(24, 'BM', 'Bermuda', 1441),
(25, 'BT', 'Bhutan', 975),
(26, 'BO', 'Bolivia', 591),
(27, 'BA', 'Bosnia and Herzegovina', 387),
(28, 'BW', 'Botswana', 267),
(29, 'BV', 'Bouvet Island', 0),
(30, 'BR', 'Brazil', 55),
(31, 'IO', 'British Indian Ocean Territory', 246),
(32, 'BN', 'Brunei', 673),
(33, 'BG', 'Bulgaria', 359),
(34, 'BF', 'Burkina Faso', 226),
(35, 'BI', 'Burundi', 257),
(36, 'KH', 'Cambodia', 855),
(37, 'CM', 'Cameroon', 237),
(38, 'CA', 'Canada', 1),
(39, 'CV', 'Cape Verde', 238),
(40, 'KY', 'Cayman Islands', 1345),
(41, 'CF', 'Central African Republic', 236),
(42, 'TD', 'Chad', 235),
(43, 'CL', 'Chile', 56),
(44, 'CN', 'China', 86),
(45, 'CX', 'Christmas Island', 61),
(46, 'CC', 'Cocos (Keeling) Islands', 672),
(47, 'CO', 'Colombia', 57),
(48, 'KM', 'Comoros', 269),
(49, 'CG', 'Republic Of The Congo', 242),
(50, 'CD', 'Democratic Republic Of The Congo', 242),
(51, 'CK', 'Cook Islands', 682),
(52, 'CR', 'Costa Rica', 506),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)', 225),
(54, 'HR', 'Croatia (Hrvatska)', 385),
(55, 'CU', 'Cuba', 53),
(56, 'CY', 'Cyprus', 357),
(57, 'CZ', 'Czech Republic', 420),
(58, 'DK', 'Denmark', 45),
(59, 'DJ', 'Djibouti', 253),
(60, 'DM', 'Dominica', 1767),
(61, 'DO', 'Dominican Republic', 1809),
(62, 'TP', 'East Timor', 670),
(63, 'EC', 'Ecuador', 593),
(64, 'EG', 'Egypt', 20),
(65, 'SV', 'El Salvador', 503),
(66, 'GQ', 'Equatorial Guinea', 240),
(67, 'ER', 'Eritrea', 291),
(68, 'EE', 'Estonia', 372),
(69, 'ET', 'Ethiopia', 251),
(70, 'XA', 'External Territories of Australia', 61),
(71, 'FK', 'Falkland Islands', 500),
(72, 'FO', 'Faroe Islands', 298),
(73, 'FJ', 'Fiji Islands', 679),
(74, 'FI', 'Finland', 358),
(75, 'FR', 'France', 33),
(76, 'GF', 'French Guiana', 594),
(77, 'PF', 'French Polynesia', 689),
(78, 'TF', 'French Southern Territories', 0),
(79, 'GA', 'Gabon', 241),
(80, 'GM', 'Gambia The', 220),
(81, 'GE', 'Georgia', 995),
(82, 'DE', 'Germany', 49),
(83, 'GH', 'Ghana', 233),
(84, 'GI', 'Gibraltar', 350),
(85, 'GR', 'Greece', 30),
(86, 'GL', 'Greenland', 299),
(87, 'GD', 'Grenada', 1473),
(88, 'GP', 'Guadeloupe', 590),
(89, 'GU', 'Guam', 1671),
(90, 'GT', 'Guatemala', 502),
(91, 'XU', 'Guernsey and Alderney', 44),
(92, 'GN', 'Guinea', 224),
(93, 'GW', 'Guinea-Bissau', 245),
(94, 'GY', 'Guyana', 592),
(95, 'HT', 'Haiti', 509),
(96, 'HM', 'Heard and McDonald Islands', 0),
(97, 'HN', 'Honduras', 504),
(98, 'HK', 'Hong Kong S.A.R.', 852),
(99, 'HU', 'Hungary', 36),
(100, 'IS', 'Iceland', 354),
(101, 'IN', 'India', 91),
(102, 'ID', 'Indonesia', 62),
(103, 'IR', 'Iran', 98),
(104, 'IQ', 'Iraq', 964),
(105, 'IE', 'Ireland', 353),
(106, 'IL', 'Israel', 972),
(107, 'IT', 'Italy', 39),
(108, 'JM', 'Jamaica', 1876),
(109, 'JP', 'Japan', 81),
(110, 'XJ', 'Jersey', 44),
(111, 'JO', 'Jordan', 962),
(112, 'KZ', 'Kazakhstan', 7),
(113, 'KE', 'Kenya', 254),
(114, 'KI', 'Kiribati', 686),
(115, 'KP', 'Korea North', 850),
(116, 'KR', 'Korea South', 82),
(117, 'KW', 'Kuwait', 965),
(118, 'KG', 'Kyrgyzstan', 996),
(119, 'LA', 'Laos', 856),
(120, 'LV', 'Latvia', 371),
(121, 'LB', 'Lebanon', 961),
(122, 'LS', 'Lesotho', 266),
(123, 'LR', 'Liberia', 231),
(124, 'LY', 'Libya', 218),
(125, 'LI', 'Liechtenstein', 423),
(126, 'LT', 'Lithuania', 370),
(127, 'LU', 'Luxembourg', 352),
(128, 'MO', 'Macau S.A.R.', 853),
(129, 'MK', 'Macedonia', 389),
(130, 'MG', 'Madagascar', 261),
(131, 'MW', 'Malawi', 265),
(132, 'MY', 'Malaysia', 60),
(133, 'MV', 'Maldives', 960),
(134, 'ML', 'Mali', 223),
(135, 'MT', 'Malta', 356),
(136, 'XM', 'Man (Isle of)', 44),
(137, 'MH', 'Marshall Islands', 692),
(138, 'MQ', 'Martinique', 596),
(139, 'MR', 'Mauritania', 222),
(140, 'MU', 'Mauritius', 230),
(141, 'YT', 'Mayotte', 269),
(142, 'MX', 'Mexico', 52),
(143, 'FM', 'Micronesia', 691),
(144, 'MD', 'Moldova', 373),
(145, 'MC', 'Monaco', 377),
(146, 'MN', 'Mongolia', 976),
(147, 'MS', 'Montserrat', 1664),
(148, 'MA', 'Morocco', 212),
(149, 'MZ', 'Mozambique', 258),
(150, 'MM', 'Myanmar', 95),
(151, 'NA', 'Namibia', 264),
(152, 'NR', 'Nauru', 674),
(153, 'NP', 'Nepal', 977),
(154, 'AN', 'Netherlands Antilles', 599),
(155, 'NL', 'Netherlands The', 31),
(156, 'NC', 'New Caledonia', 687),
(157, 'NZ', 'New Zealand', 64),
(158, 'NI', 'Nicaragua', 505),
(159, 'NE', 'Niger', 227),
(160, 'NG', 'Nigeria', 234),
(161, 'NU', 'Niue', 683),
(162, 'NF', 'Norfolk Island', 672),
(163, 'MP', 'Northern Mariana Islands', 1670),
(164, 'NO', 'Norway', 47),
(165, 'OM', 'Oman', 968),
(166, 'PK', 'Pakistan', 92),
(167, 'PW', 'Palau', 680),
(168, 'PS', 'Palestinian Territory Occupied', 970),
(169, 'PA', 'Panama', 507),
(170, 'PG', 'Papua new Guinea', 675),
(171, 'PY', 'Paraguay', 595),
(172, 'PE', 'Peru', 51),
(173, 'PH', 'Philippines', 63),
(174, 'PN', 'Pitcairn Island', 0),
(175, 'PL', 'Poland', 48),
(176, 'PT', 'Portugal', 351),
(177, 'PR', 'Puerto Rico', 1787),
(178, 'QA', 'Qatar', 974),
(179, 'RE', 'Reunion', 262),
(180, 'RO', 'Romania', 40),
(181, 'RU', 'Russia', 70),
(182, 'RW', 'Rwanda', 250),
(183, 'SH', 'Saint Helena', 290),
(184, 'KN', 'Saint Kitts And Nevis', 1869),
(185, 'LC', 'Saint Lucia', 1758),
(186, 'PM', 'Saint Pierre and Miquelon', 508),
(187, 'VC', 'Saint Vincent And The Grenadines', 1784),
(188, 'WS', 'Samoa', 684),
(189, 'SM', 'San Marino', 378),
(190, 'ST', 'Sao Tome and Principe', 239),
(191, 'SA', 'Saudi Arabia', 966),
(192, 'SN', 'Senegal', 221),
(193, 'RS', 'Serbia', 381),
(194, 'SC', 'Seychelles', 248),
(195, 'SL', 'Sierra Leone', 232),
(196, 'SG', 'Singapore', 65),
(197, 'SK', 'Slovakia', 421),
(198, 'SI', 'Slovenia', 386),
(199, 'XG', 'Smaller Territories of the UK', 44),
(200, 'SB', 'Solomon Islands', 677),
(201, 'SO', 'Somalia', 252),
(202, 'ZA', 'South Africa', 27),
(203, 'GS', 'South Georgia', 0),
(204, 'SS', 'South Sudan', 211),
(205, 'ES', 'Spain', 34),
(206, 'LK', 'Sri Lanka', 94),
(207, 'SD', 'Sudan', 249),
(208, 'SR', 'Suriname', 597),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', 47),
(210, 'SZ', 'Swaziland', 268),
(211, 'SE', 'Sweden', 46),
(212, 'CH', 'Switzerland', 41),
(213, 'SY', 'Syria', 963),
(214, 'TW', 'Taiwan', 886),
(215, 'TJ', 'Tajikistan', 992),
(216, 'TZ', 'Tanzania', 255),
(217, 'TH', 'Thailand', 66),
(218, 'TG', 'Togo', 228),
(219, 'TK', 'Tokelau', 690),
(220, 'TO', 'Tonga', 676),
(221, 'TT', 'Trinidad And Tobago', 1868),
(222, 'TN', 'Tunisia', 216),
(223, 'TR', 'Turkey', 90),
(224, 'TM', 'Turkmenistan', 7370),
(225, 'TC', 'Turks And Caicos Islands', 1649),
(226, 'TV', 'Tuvalu', 688),
(227, 'UG', 'Uganda', 256),
(228, 'UA', 'Ukraine', 380),
(229, 'AE', 'United Arab Emirates', 971),
(230, 'GB', 'United Kingdom', 44),
(231, 'US', 'United States', 1),
(232, 'UM', 'United States Minor Outlying Islands', 1),
(233, 'UY', 'Uruguay', 598),
(234, 'UZ', 'Uzbekistan', 998),
(235, 'VU', 'Vanuatu', 678),
(236, 'VA', 'Vatican City State (Holy See)', 39),
(237, 'VE', 'Venezuela', 58),
(238, 'VN', 'Vietnam', 84),
(239, 'VG', 'Virgin Islands (British)', 1284),
(240, 'VI', 'Virgin Islands (US)', 1340),
(241, 'WF', 'Wallis And Futuna Islands', 681),
(242, 'EH', 'Western Sahara', 212),
(243, 'YE', 'Yemen', 967),
(244, 'YU', 'Yugoslavia', 38),
(245, 'ZM', 'Zambia', 260),
(246, 'ZW', 'Zimbabwe', 263);

-- --------------------------------------------------------

--
-- Table structure for table `crud_operations`
--

CREATE TABLE `crud_operations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_of_birth` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `is_relocate` tinyint(1) NOT NULL,
  `country` bigint(20) UNSIGNED NOT NULL,
  `state` bigint(20) UNSIGNED NOT NULL,
  `city` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `jobs`
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

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'listener', '{\"uuid\":\"5ec9f6cc-ffcd-4580-a2b7-ff02cfabe85d\",\"displayName\":\"App\\\\Listeners\\\\WelcomeEmailListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:34:\\\"App\\\\Listeners\\\\WelcomeEmailListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\WelcomeEmail\\\":1:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1670994350, 1670994350),
(2, 'listener', '{\"uuid\":\"7b9a53a7-088d-4186-b263-cde9d58f1095\",\"displayName\":\"App\\\\Listeners\\\\WelcomeEmailListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:34:\\\"App\\\\Listeners\\\\WelcomeEmailListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\WelcomeEmail\\\":1:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1670994390, 1670994390);

-- --------------------------------------------------------

--
-- Table structure for table `lineitems`
--

CREATE TABLE `lineitems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `total_price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lineitems`
--

INSERT INTO `lineitems` (`id`, `user_id`, `order_id`, `product_id`, `quantity`, `price`, `total_price`, `created_at`, `updated_at`) VALUES
(1, 2, 11, 5, 3, 4238, 12714, '2022-12-16 04:57:18', '2022-12-16 04:57:18');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_03_113121_create_jobs_table', 1),
(6, '2022_12_14_092453_create_brands_table', 2),
(7, '2022_12_14_121510_create_products_table', 3),
(8, '2022_12_15_130557_create_carts_table', 4),
(9, '2022_12_16_051439_create_comments_table', 5),
(10, '2022_12_16_092657_create_orders_table', 6),
(11, '2022_12_16_092844_create_lineitems_table', 7),
(12, '2022_12_19_052533_create_crud_operations_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `sub_total` double NOT NULL,
  `shipping` double NOT NULL,
  `tax_amount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `amount` double NOT NULL,
  `comment` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `sub_total`, `shipping`, `tax_amount`, `tax_rate`, `amount`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(11, 2, 15372, 10, 1537, 10, 16919, 'Test Comment try', 'Attempt to Deliver', '2022-12-16 04:41:11', '2022-12-18 23:13:28');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `sale_price` double DEFAULT 0,
  `color` varchar(255) DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `function` varchar(255) DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `sale_price`, `color`, `brand_id`, `product_code`, `gender`, `function`, `stock`, `description`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(4, 'Rolex Watch', 22735, 1872, 'Gold', 3, 'LV-58467', 'male', 'Analog', 5, 'Labore impedit et minus quidem commodi. Natus aperiam impedit nisi et officia suscipit similique. At modi laudantium similique molestiae voluptas. Qui eaque autem deleniti ad tempore magnam.', 'https://via.placeholder.com/640x480.png/0000cc?text=illo', 1, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(5, 'Roadster Watch', 56626, 4238, 'Green', 1, 'LV-20186', 'unisex', 'Smart', 0, 'Voluptatem et voluptate dolorum. Blanditiis reiciendis quibusdam non molestiae. Voluptas quis molestiae culpa eos consequuntur corporis.', 'https://via.placeholder.com/640x480.png/0099ee?text=sapiente', 1, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(6, 'Roadster Watch', 95905, 2658, 'Green', 3, 'LV-77148', 'children', 'Digital', 8, 'Vitae maxime non soluta voluptatem odio repudiandae saepe. Non aut sunt soluta dolores saepe reprehenderit recusandae. Eos non necessitatibus aut consequatur et.', 'https://via.placeholder.com/640x480.png/00aaff?text=voluptatem', 1, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(7, 'Rolex Watch', 24161, 2557, 'Black', 2, 'LV-70328', 'male', 'Analog', 4, 'Perspiciatis ut ut reprehenderit porro. Possimus est id deserunt. Aut fugiat possimus aut. Repudiandae neque dicta eos ut et.', 'https://via.placeholder.com/640x480.png/003344?text=corporis', 0, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(8, 'Roadster Watch', 22305, 2376, 'Blue', 1, 'LV-27812', 'male', 'Analog', 7, 'Et impedit dolore cum ex nihil quam. Nulla aut quibusdam ratione et eos vitae distinctio. Sit totam ullam beatae.', 'https://via.placeholder.com/640x480.png/007799?text=voluptatem', 1, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(9, 'Rolex Watch', 40867, 1890, 'Silver', 1, 'LV-83150', 'children', 'Mechanical', 6, 'Et in cum ut id commodi. Eius et praesentium rerum quidem repellendus natus iusto. Repellendus a reiciendis ea quod ipsa consequatur.', 'https://via.placeholder.com/640x480.png/00dd99?text=et', 0, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(10, 'Roadster Watch', 67149, NULL, 'Gold', 2, 'LV-17726', 'children', 'Automatic', 5, 'Autem quae ut ut at aut magnam quaerat. Harum aliquam consequatur temporibus ut architecto vel facilis distinctio. Est sunt enim harum nemo magnam ipsa. Autem rem est ipsa labore nobis voluptatum et.', 'https://via.placeholder.com/640x480.png/0011cc?text=et', 1, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(11, 'Tata Watch', 7499, NULL, 'Black', 3, 'LV-26917', 'children', 'Digital', 9, 'Aliquid ea voluptatibus ad architecto qui sed nisi eum. Ea sit doloremque ut fugiat. At necessitatibus esse ut atque temporibus.', 'https://via.placeholder.com/640x480.png/00ee11?text=eligendi', 1, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(12, 'Tata Watch', 79033, NULL, 'Blue', 2, 'LV-18157', 'female', 'Analog', 0, 'Consequatur cum aperiam ut aut qui quaerat. Impedit aliquid temporibus veniam minus. Rerum accusantium suscipit totam enim. Ea soluta eius quisquam eaque. Vel saepe sit odio similique accusantium.', 'https://via.placeholder.com/640x480.png/007722?text=et', 1, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(13, 'Tata Watch', 21480, NULL, 'Blue', 2, 'LV-57330', 'children', 'Analog', 5, 'Vero officiis blanditiis non aut. Porro optio delectus omnis. Dolor velit accusamus minima eaque quis.', 'https://via.placeholder.com/640x480.png/005544?text=ab', 1, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(14, 'Tata Watch', 40878, NULL, 'Gold', 1, 'LV-43043', 'children', 'Automatic', 5, 'Ut id eaque non. Nulla fugiat molestiae rem ex. Eveniet accusantium dolores et pariatur. Non enim est veritatis.', 'https://via.placeholder.com/640x480.png/005566?text=ut', 0, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(15, 'Roadster Watch', 19360, NULL, 'Green', 1, 'LV-27593', 'female', 'Mechanical', 9, 'Molestias rerum minus et molestiae veritatis nam qui. Excepturi nemo ipsum ut.', 'https://via.placeholder.com/640x480.png/0011cc?text=tempore', 1, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(16, 'Rolex Watch', 47783, NULL, 'Silver', 3, 'LV-08373', 'unisex', 'Digital', 7, 'Ut autem iste quae quas nam ut repellendus. Tenetur delectus accusantium iusto a veritatis asperiores ipsum. Perspiciatis voluptatem blanditiis id quos vel voluptatum.', 'https://via.placeholder.com/640x480.png/003311?text=repellendus', 0, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(17, 'Tata Watch', 9040, NULL, 'Silver', 1, 'LV-07323', 'children', 'Digital', 9, 'Qui qui eum soluta quaerat omnis mollitia. Et molestiae iste et illo sed rerum. Omnis voluptate laudantium esse sapiente sint non. Nam quisquam fuga quas atque amet ex vero.', 'https://via.placeholder.com/640x480.png/00dd44?text=ea', 1, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(18, 'Roadster Watch', 61967, NULL, 'Rose Gold', 3, 'LV-38245', 'unisex', 'Analog', 8, 'Vitae nemo eos voluptas cupiditate neque facere. Quos quos perferendis blanditiis velit minima saepe. Repellat alias optio modi ut aut dolorum. Tempora rerum eius repellendus debitis nihil.', 'https://via.placeholder.com/640x480.png/00bb88?text=nemo', 1, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(19, 'Rolex Watch', 20825, NULL, 'Blue', 2, 'LV-73597', 'male', 'Automatic', 0, 'Quidem beatae qui recusandae minus doloribus nobis. Alias iure officia eligendi reprehenderit amet aut qui aliquam. Et modi qui culpa. Eos porro ut laudantium ipsum distinctio consequatur enim.', 'https://via.placeholder.com/640x480.png/00eecc?text=odio', 1, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(20, 'Roadster Watch', 70098, NULL, 'Gold', 2, 'LV-69058', 'unisex', 'Analog', 6, 'Deleniti ut voluptas et nostrum aut similique. Doloribus architecto est dolor aliquam aut. Voluptas eaque maiores sequi et ab minima. Expedita tempora illo rerum fuga.', 'https://via.placeholder.com/640x480.png/00ddcc?text=facilis', 0, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(21, 'Roadster Watch', 95604, NULL, 'Rose Gold', 3, 'LV-52450', 'children', 'Smart', 7, 'Totam magni omnis numquam vel. Illum nihil architecto eos. Consequatur qui ad corporis nostrum aperiam architecto. Fuga aut itaque corrupti corrupti incidunt quibusdam.', 'https://via.placeholder.com/640x480.png/00bb00?text=debitis', 0, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(22, 'Tata Watch', 33183, NULL, 'Black', 3, 'LV-53895', 'children', 'Automatic', 1, 'Molestiae eius vero sit iure. Qui eum velit quia veniam dolorem id. Aut expedita commodi placeat. Perspiciatis totam explicabo quo rerum eius mollitia.', 'https://via.placeholder.com/640x480.png/00ee44?text=nihil', 1, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(23, 'Tata Watch', 41906, NULL, 'Black', 2, 'LV-70569', 'children', 'Digital', 2, 'Perspiciatis voluptas a tenetur sed vel id nisi. Aut laboriosam numquam magnam maiores cupiditate et. Voluptatem possimus enim architecto dolores.', 'https://via.placeholder.com/640x480.png/0022ff?text=voluptates', 1, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(24, 'Rolex Watch', 33301, NULL, 'Blue', 3, 'LV-83313', 'unisex', 'Automatic', 5, 'Dolor sapiente cupiditate ea dignissimos voluptatum vel ipsum et. Fugit maiores qui vel aliquid et. Non assumenda eaque dolorem aut.', 'https://via.placeholder.com/640x480.png/00aabb?text=saepe', 1, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(25, 'Roadster Watch', 90275, NULL, 'Black', 2, 'LV-55386', 'unisex', 'Smart', 3, 'Et eos voluptatem est qui corrupti. Ad non tempora qui quisquam. Autem omnis non dolorem iste alias rem.', 'https://via.placeholder.com/640x480.png/003355?text=unde', 1, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(26, 'Roadster Watch', 86214, NULL, 'Gold', 2, 'LV-60312', 'female', 'Smart', 4, 'Dignissimos a laborum et architecto culpa et. Commodi atque sint quisquam voluptatum. Labore quo nesciunt dolore. Accusantium neque ea reiciendis. Vitae dolore temporibus consequuntur corrupti.', 'https://via.placeholder.com/640x480.png/004466?text=et', 1, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(27, 'Tata Watch', 50759, NULL, 'Silver', 1, 'LV-13330', 'male', 'Automatic', 5, 'Nihil consectetur quod omnis. Est omnis ut doloribus et. Sed est harum illo rerum. Rerum blanditiis veniam quia ratione ipsam accusantium. In id pariatur at voluptatem animi porro.', 'https://via.placeholder.com/640x480.png/002233?text=voluptas', 1, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(28, 'Tata Watch', 88821, NULL, 'Green', 1, 'LV-82637', 'male', 'Digital', 9, 'Nihil assumenda in velit hic. Quis porro sequi veniam possimus. Velit dolor inventore quia corrupti consequatur vero neque. Et voluptatem voluptas ea.', 'https://via.placeholder.com/640x480.png/00bb88?text=laboriosam', 0, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(29, 'Rolex Watch', 89990, NULL, 'Blue', 1, 'LV-44629', 'female', 'Smart', 4, 'Et quasi veniam esse aut. Sapiente voluptatem adipisci sit nesciunt qui maiores veniam magni. Aut quis reprehenderit numquam maxime.', 'https://via.placeholder.com/640x480.png/00ccbb?text=eos', 0, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(30, 'Tata Watch', 25232, NULL, 'Black', 2, 'LV-83237', 'male', 'Analog', 5, 'Occaecati omnis nobis officia et corporis dolores. Sunt molestiae temporibus eum maiores. Hic eos fugit perferendis nobis ut vitae quam.', 'https://via.placeholder.com/640x480.png/00ff66?text=vel', 0, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(31, 'Tata Watch', 74706, 3629, 'Green', 2, 'LV-86506', 'children', 'Digital', 8, 'Accusantium est est eum explicabo quisquam rem eius. Unde ea sequi delectus quidem ipsa magni. Et velit officiis illo est veniam voluptatum.', 'https://via.placeholder.com/640x480.png/00bbee?text=voluptatem', 1, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(32, 'Roadster Watch', 46051, 2366, 'Blue', 2, 'LV-29927', 'children', 'Smart', 0, 'Eum voluptate et est. Eaque perspiciatis est neque. Aut vero deleniti qui illo. Rerum ea cupiditate ea.', 'https://via.placeholder.com/640x480.png/0022ff?text=explicabo', 0, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(33, 'Tata Watch', 46242, 2795, 'Rose Gold', 2, 'LV-94768', 'male', 'Smart', 9, 'Voluptate sint nihil sed nisi eos omnis. Dolores culpa nesciunt nisi iure perspiciatis et.', 'https://via.placeholder.com/640x480.png/006600?text=nobis', 0, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(34, 'Roadster Watch', 61768, 2604, 'Blue', 3, 'LV-14637', 'male', 'Analog', 6, 'Temporibus ea nulla distinctio voluptas. Eveniet voluptatibus culpa libero magni quas asperiores aut.', 'https://via.placeholder.com/640x480.png/003388?text=aperiam', 0, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(35, 'Tata Watch', 27832, 2189, 'Green', 3, 'LV-11338', 'female', 'Analog', 9, 'Perferendis ut quis id qui aut fuga. Ut magnam dolore sint repellendus. Veritatis voluptates beatae impedit nesciunt. Magni eos ea deserunt qui minus deserunt ut.', 'https://via.placeholder.com/640x480.png/004411?text=dolores', 0, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(36, 'Tata Watch', 6330, 3391, 'Rose Gold', 1, 'LV-64610', 'female', 'Smart', 9, 'Libero autem consequatur autem non consequatur praesentium amet. Et fuga ut quia nulla ut. Laudantium sed veritatis et dolor dicta.', 'https://via.placeholder.com/640x480.png/00eedd?text=tempore', 0, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(37, 'Roadster Watch', 85566, 2093, 'Black', 2, 'LV-33680', 'female', 'Automatic', 8, 'Exercitationem amet incidunt ullam error autem. Est blanditiis eius perferendis odio ipsum. Exercitationem qui voluptas beatae ut.', 'https://via.placeholder.com/640x480.png/005500?text=voluptate', 1, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(38, 'Rolex Watch', 64537, 4878, 'Rose Gold', 3, 'LV-30658', 'children', 'Smart', 8, 'Sapiente itaque placeat ut debitis in. Quia accusamus explicabo repellendus et velit voluptas ex. Quas eos quia quo culpa reiciendis.', 'https://via.placeholder.com/640x480.png/0022aa?text=neque', 0, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(39, 'Roadster Watch', 7361, 2248, 'Beige', 3, 'LV-21048', 'children', 'Mechanical', 3, 'Ea et similique corporis voluptatum et sapiente atque. Autem aperiam esse et dolorem quos alias amet impedit.', 'https://via.placeholder.com/640x480.png/00cc33?text=quae', 0, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(40, 'Rolex Watch', 85481, 853, 'Silver', 2, 'LV-48338', 'children', 'Digital', 3, 'Voluptas ut fugiat qui esse sapiente. Nemo quae repudiandae incidunt et quis. Aut eos esse aut animi et minus enim. Qui perspiciatis quos sit rerum.', 'https://via.placeholder.com/640x480.png/00bbbb?text=et', 1, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(41, 'Tata Watch', 60530, 4270, 'Black', 2, 'LV-04017', 'male', 'Digital', 2, 'Porro repellendus numquam expedita. Non fuga in sapiente adipisci unde ea enim.', 'https://via.placeholder.com/640x480.png/00bb00?text=aliquam', 0, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(42, 'Rolex Watch', 83599, 2252, 'Gold', 1, 'LV-54095', 'male', 'Digital', 6, 'Assumenda inventore eius aut maiores maiores voluptate numquam. Autem quia aperiam ea soluta aperiam quis ut. Harum facilis iste est et quis libero ut. Et et repellendus itaque illo qui expedita.', 'https://via.placeholder.com/640x480.png/00aacc?text=velit', 1, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(43, 'Rolex Watch', 61126, 4251, 'Gold', 2, 'LV-81959', 'children', 'Digital', 5, 'Fugit sit maxime quis deserunt voluptas commodi aperiam. Voluptatem molestiae sed necessitatibus sed debitis enim reiciendis.', 'https://via.placeholder.com/640x480.png/000011?text=eum', 0, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(44, 'Roadster Watch', 55238, 2851, 'Beige', 2, 'LV-78821', 'unisex', 'Analog', 1, 'Debitis ut eius et possimus illo nam in et. Est quis aut dolorum saepe maxime fuga et. Aut consequuntur quisquam et et sequi delectus. Tempore vel est explicabo quia qui voluptas.', 'https://via.placeholder.com/640x480.png/004477?text=consequatur', 0, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(45, 'Tata Watch', 54660, 2489, 'Blue', 3, 'LV-26054', 'male', 'Analog', 4, 'Qui rem dignissimos at. Nam dolorem sit velit et. Id illo esse modi esse est nostrum quibusdam. Et quidem aut quia id ad dolorum.', 'https://via.placeholder.com/640x480.png/008800?text=dolores', 1, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(46, 'Tata Watch', 67577, 1809, 'Gold', 1, 'LV-68221', 'female', 'Automatic', 7, 'Nemo non sapiente nihil qui ratione impedit. Rerum a voluptatem soluta. Praesentium ea inventore ut rerum iusto. Provident rerum id facere aut mollitia. Voluptas qui facere reiciendis omnis.', 'https://via.placeholder.com/640x480.png/00ee11?text=deleniti', 0, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(47, 'Tata Watch', 70183, 3955, 'Black', 1, 'LV-62473', 'male', 'Smart', 1, 'Modi magnam eos inventore corrupti temporibus consequatur. Natus est voluptas sit sapiente impedit animi in. Molestiae quia similique sit facere expedita accusantium quaerat.', 'https://via.placeholder.com/640x480.png/005511?text=quia', 0, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(48, 'Tata Watch', 72138, 2744, 'Rose Gold', 3, 'LV-01253', 'unisex', 'Automatic', 7, 'Doloribus perferendis ut saepe sunt dolore. Cumque animi vel quibusdam corrupti nulla quidem. Enim quos recusandae excepturi voluptatem. Dolorem id et qui ut ab.', 'https://via.placeholder.com/640x480.png/00aa66?text=fugit', 0, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(49, 'Rolex Watch', 90414, 1066, 'Blue', 3, 'LV-46273', 'children', 'Digital', 4, 'Quam quis et reprehenderit reprehenderit optio illum et provident. Eum corporis eius id nesciunt consequatur dolores. Iusto in ut consequatur molestiae. Qui adipisci sed blanditiis blanditiis.', 'https://via.placeholder.com/640x480.png/0055cc?text=dolorem', 1, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(50, 'Tata Watch', 43494, 2435, 'Rose Gold', 2, 'LV-46630', 'unisex', 'Automatic', 8, 'Magnam deleniti omnis magni. Ipsa fugiat recusandae ut architecto sint fugiat. Sed blanditiis aliquid eligendi. Explicabo assumenda delectus aut quia excepturi.', 'https://via.placeholder.com/640x480.png/00bb55?text=quasi', 0, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(51, 'Rolex Watch', 75088, 1386, 'Black', 2, 'LV-72447', 'female', 'Smart', 1, 'Amet illo dignissimos sunt sunt asperiores quas dicta. Qui ipsa occaecati vitae adipisci. Unde id voluptatem aut rerum.', 'https://via.placeholder.com/640x480.png/0044cc?text=officiis', 0, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(52, 'Roadster Watch', 62599, 3260, 'Blue', 1, 'LV-15039', 'male', 'Automatic', 3, 'Accusamus praesentium non sapiente odit recusandae eaque. Ut optio sed deserunt dolorem ut itaque eos omnis. Quam ad itaque dolorem atque accusamus.', 'https://via.placeholder.com/640x480.png/00ff99?text=eveniet', 1, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(53, 'Rolex Watch', 94909, 3442, 'Rose Gold', 2, 'LV-34608', 'female', 'Automatic', 4, 'Voluptas reiciendis voluptatem adipisci ut. Aut illo molestiae ea qui assumenda optio perspiciatis sunt. Sunt aliquam consequuntur libero tempore.', 'https://via.placeholder.com/640x480.png/007777?text=facilis', 1, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(54, 'Rolex Watch', 88960, 4637, 'Beige', 3, 'LV-29038', 'children', 'Analog', 4, 'Ut nobis sunt placeat et nihil beatae. Corrupti error nisi dolor corrupti facere. Repudiandae et autem laborum ipsum maiores.', 'https://via.placeholder.com/640x480.png/0055bb?text=possimus', 1, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(55, 'Roadster Watch', 47681, 4302, 'Blue', 1, 'LV-67660', 'male', 'Smart', 3, 'Ut vel ratione iste qui sit. Maiores delectus aut et ipsa. Rerum fuga ipsum explicabo id accusamus. Dignissimos est nesciunt cupiditate aut quia.', 'https://via.placeholder.com/640x480.png/00aa33?text=consequatur', 0, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(56, 'Tata Watch', 64498, 3857, 'Silver', 2, 'LV-95250', 'children', 'Automatic', 1, 'Error ipsa voluptatem nostrum suscipit qui non. Necessitatibus qui iure cum et et vel qui perspiciatis. Non nihil sint laborum error commodi ut maiores.', 'https://via.placeholder.com/640x480.png/008866?text=ab', 0, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(57, 'Roadster Watch', 68635, 4441, 'Blue', 3, 'LV-02502', 'unisex', 'Smart', 5, 'Facilis doloribus aperiam mollitia reprehenderit voluptatum accusantium. Optio repellat neque omnis voluptate dolores dignissimos.', 'https://via.placeholder.com/640x480.png/00ee00?text=et', 1, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(58, 'Rolex Watch', 97785, 1491, 'Black', 2, 'LV-17378', 'children', 'Analog', 0, 'Ut eaque id deserunt quibusdam eligendi earum. Consectetur magni tempore culpa fugiat magnam blanditiis delectus sit. Aut ex dolorem fugit reprehenderit unde. Veniam illo soluta est quidem.', 'https://via.placeholder.com/640x480.png/005555?text=cum', 1, '2022-12-15 01:41:32', '2022-12-15 01:41:32'),
(59, 'Tata Watch', 13374, 2548, 'Green', 1, 'LV-37289', 'children', 'Digital', 3, 'Aliquid reiciendis assumenda ut voluptatibus rerum veritatis. Assumenda nihil eum aliquid a et maxime dolores. Ullam qui aperiam occaecati.', 'https://via.placeholder.com/640x480.png/002244?text=possimus', 1, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(60, 'Roadster Watch', 62094, 1368, 'Blue', 3, 'LV-13761', 'male', 'Automatic', 3, 'Ad iste molestias cumque temporibus dolorem. Unde vel in ex sed voluptatum explicabo. Ab et est illum asperiores possimus quisquam ipsam dolorem.', 'https://via.placeholder.com/640x480.png/008844?text=unde', 0, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(61, 'Tata Watch', 11626, 4341, 'Beige', 1, 'LV-30415', 'unisex', 'Automatic', 5, 'Veritatis earum qui exercitationem. Atque molestiae non ut fugiat nulla voluptates. Impedit fugiat est aut debitis. Voluptatem nemo qui voluptas id non vitae.', 'https://via.placeholder.com/640x480.png/00cc22?text=molestias', 1, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(62, 'Tata Watch', 12460, 4569, 'Black', 2, 'LV-16210', 'unisex', 'Automatic', 8, 'Aut voluptates praesentium sunt. Sit provident et in voluptatem. Aperiam rerum laudantium a corporis culpa accusamus.', 'https://via.placeholder.com/640x480.png/0033dd?text=repellendus', 0, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(63, 'Tata Watch', 87490, 3214, 'Black', 3, 'LV-87864', 'female', 'Automatic', 6, 'Sint odio quia veniam. Corporis sit id fugit eveniet quia voluptas voluptatem voluptas. Saepe saepe aperiam maxime magni.', 'https://via.placeholder.com/640x480.png/000055?text=modi', 0, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(64, 'Rolex Watch', 37717, 2986, 'Black', 3, 'LV-72069', 'male', 'Automatic', 2, 'Ea ut adipisci quia odit. Quia odio temporibus nobis laboriosam. Veniam consequuntur odio itaque laboriosam et et perferendis. Omnis non labore id. Et laborum optio corporis dolores.', 'https://via.placeholder.com/640x480.png/001111?text=odit', 0, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(65, 'Rolex Watch', 93280, 2780, 'Blue', 1, 'LV-78760', 'unisex', 'Mechanical', 1, 'Animi odio dolor accusamus recusandae qui ab quasi recusandae. Deleniti laborum ea esse rerum et accusantium aspernatur. Et et aliquid accusamus amet. Quae dolorum pariatur voluptatem.', 'https://via.placeholder.com/640x480.png/00ff22?text=temporibus', 1, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(66, 'Rolex Watch', 77085, 3918, 'Green', 3, 'LV-53094', 'children', 'Automatic', 1, 'Voluptatem ea possimus vel totam et ut et. Adipisci aut laborum sed reprehenderit. Earum autem repellendus sapiente odit molestiae pariatur optio qui.', 'https://via.placeholder.com/640x480.png/007711?text=modi', 0, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(67, 'Rolex Watch', 78868, 2305, 'Black', 3, 'LV-75310', 'male', 'Smart', 1, 'Perferendis dolores repellendus minima. Quam neque reiciendis est incidunt. Perspiciatis dolorem excepturi hic sapiente consequatur consequatur. Ullam nesciunt et ut soluta voluptas vero.', 'https://via.placeholder.com/640x480.png/00bb44?text=distinctio', 0, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(68, 'Rolex Watch', 38525, 1709, 'Beige', 1, 'LV-92822', 'unisex', 'Analog', 6, 'Doloribus sed nulla est id. Sapiente consequatur beatae sint neque. Et facilis voluptatem est molestiae iste qui dolores dolores.', 'https://via.placeholder.com/640x480.png/009955?text=aliquid', 0, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(69, 'Rolex Watch', 95428, 3887, 'Silver', 1, 'LV-96962', 'children', 'Digital', 6, 'Quia deleniti pariatur aliquam earum natus amet animi. Sint placeat nostrum dolorum et. Iste eos doloribus cupiditate nesciunt. Dolore incidunt dolores harum possimus molestiae.', 'https://via.placeholder.com/640x480.png/006600?text=ea', 1, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(70, 'Rolex Watch', 85937, 3320, 'Blue', 1, 'LV-51496', 'children', 'Analog', 1, 'Libero eius eos laudantium est ut nisi officia fugit. Exercitationem aut non vero vel natus. Enim similique perferendis quod aliquid eos recusandae.', 'https://via.placeholder.com/640x480.png/00cc44?text=et', 0, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(71, 'Rolex Watch', 27188, 1008, 'Gold', 3, 'LV-11745', 'children', 'Analog', 5, 'Exercitationem id saepe nemo consequatur aperiam quisquam. Eius minima quia ratione ea illum quaerat sequi. Rem voluptatem ut repellendus nulla. Qui aut quis quae in aspernatur libero est.', 'https://via.placeholder.com/640x480.png/00bbcc?text=dolorem', 0, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(72, 'Rolex Watch', 5561, 2007, 'Black', 3, 'LV-13213', 'male', 'Digital', 8, 'Necessitatibus neque sit architecto in itaque perspiciatis. Velit natus fuga omnis dolorum autem nihil nam. Consequuntur dicta maiores ad alias non. Aut esse officia quisquam velit.', 'https://via.placeholder.com/640x480.png/0099ff?text=voluptatum', 0, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(73, 'Roadster Watch', 37389, 3770, 'Silver', 3, 'LV-09822', 'male', 'Mechanical', 6, 'Eaque sint quaerat odit expedita sint. Neque vel dolore in sequi dolores.', 'https://via.placeholder.com/640x480.png/0099dd?text=quisquam', 0, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(74, 'Tata Watch', 9108, 4264, 'Green', 2, 'LV-09107', 'unisex', 'Analog', 2, 'Ea porro dolor qui eaque est. Qui reiciendis veritatis ipsum inventore assumenda sint. Exercitationem quos tempore qui et.', 'https://via.placeholder.com/640x480.png/00ff66?text=qui', 1, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(75, 'Roadster Watch', 48380, 4938, 'Rose Gold', 2, 'LV-77495', 'female', 'Smart', 7, 'Commodi nihil minima occaecati sit. Cumque aut eum fugiat odio molestiae. Dicta error voluptate quod dolor est voluptas enim.', 'https://via.placeholder.com/640x480.png/007799?text=molestias', 1, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(76, 'Rolex Watch', 22429, 2506, 'Beige', 3, 'LV-75010', 'children', 'Digital', 0, 'Quia facere totam eaque amet explicabo odio maiores eius. Tenetur aspernatur et asperiores dolore molestias. Alias pariatur porro est reprehenderit odio inventore. Hic rerum dolorem cupiditate.', 'https://via.placeholder.com/640x480.png/001122?text=consectetur', 0, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(77, 'Tata Watch', 50851, 591, 'Blue', 1, 'LV-48894', 'unisex', 'Smart', 1, 'Reiciendis pariatur voluptatum praesentium voluptatem vitae repellat. Et nesciunt non quis ut sint et ea. Optio odit sit aut aspernatur hic.', 'https://via.placeholder.com/640x480.png/003300?text=rerum', 1, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(78, 'Roadster Watch', 97683, 3327, 'Rose Gold', 1, 'LV-48072', 'children', 'Automatic', 5, 'Tenetur qui rerum sit molestias eos autem quia. Vero quia ab veritatis vel dolorem eaque beatae et. Illum iste deserunt accusamus aperiam voluptatibus.', 'https://via.placeholder.com/640x480.png/00ffee?text=repellendus', 0, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(79, 'Rolex Watch', 69592, 1511, 'Gold', 3, 'LV-55930', 'unisex', 'Analog', 5, 'Delectus dolor ducimus maxime quos aut voluptatem voluptate. Dolores aperiam unde nisi consequuntur.', 'https://via.placeholder.com/640x480.png/00ff00?text=deleniti', 0, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(80, 'Roadster Watch', 99664, 3293, 'Green', 2, 'LV-00592', 'male', 'Analog', 6, 'Id rerum est rerum eligendi et error. Recusandae aperiam nostrum sit non non deleniti aut. Ad velit porro est veritatis enim quasi. Quae et rerum omnis alias veniam.', 'https://via.placeholder.com/640x480.png/00ff66?text=molestias', 1, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(81, 'Tata Watch', 34617, 1637, 'Gold', 2, 'LV-09556', 'unisex', 'Smart', 6, 'Labore magnam voluptatum est ut impedit repellat. Et et ea deleniti delectus.', 'https://via.placeholder.com/640x480.png/0033ff?text=ut', 1, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(82, 'Rolex Watch', 23874, 3146, 'Rose Gold', 2, 'LV-29697', 'male', 'Analog', 3, 'Hic voluptatum laboriosam minima. Tempore consectetur expedita est ut sint quibusdam quis. Dolor cupiditate harum odit quia itaque.', 'https://via.placeholder.com/640x480.png/00ffbb?text=ullam', 1, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(83, 'Tata Watch', 74980, 3695, 'Beige', 1, 'LV-40423', 'male', 'Digital', 2, 'Inventore placeat aut beatae voluptatem. Inventore aspernatur earum voluptatem qui repellendus officia. Corrupti animi et assumenda labore qui aperiam.', 'https://via.placeholder.com/640x480.png/0000ee?text=nihil', 0, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(84, 'Tata Watch', 49119, 1187, 'Beige', 2, 'LV-82849', 'unisex', 'Digital', 7, 'Ipsam omnis consequatur nemo voluptas. Rerum beatae blanditiis molestiae et quia at facilis. Libero tenetur consectetur et aliquid ab eos eos sapiente. Quisquam assumenda consequatur qui ducimus.', 'https://via.placeholder.com/640x480.png/0044bb?text=ad', 1, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(85, 'Tata Watch', 34296, 1953, 'Green', 2, 'LV-55389', 'male', 'Analog', 3, 'Incidunt voluptatem dolore ex similique et. Autem rerum velit qui perspiciatis distinctio.', 'https://via.placeholder.com/640x480.png/0077aa?text=eum', 1, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(86, 'Rolex Watch', 44367, 4695, 'Rose Gold', 3, 'LV-61521', 'children', 'Digital', 8, 'Velit nemo ex enim voluptatibus molestiae dignissimos aut. Quas aut quod id molestiae saepe totam. Fugit dolor labore ullam et.', 'https://via.placeholder.com/640x480.png/000088?text=reiciendis', 1, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(87, 'Tata Watch', 74369, 996, 'Green', 1, 'LV-37384', 'female', 'Smart', 9, 'Nesciunt sapiente in qui delectus nostrum voluptas. Sit dolor et cupiditate delectus ab cum. Voluptate ut rerum et possimus. Possimus eos autem dolorem distinctio et id laboriosam.', 'https://via.placeholder.com/640x480.png/00ccee?text=sapiente', 1, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(88, 'Rolex Watch', 53299, 1353, 'Green', 1, 'LV-45761', 'male', 'Automatic', 2, 'Voluptatum quo dolorem ab. Ex sit dolorem mollitia delectus modi. At debitis voluptas voluptatum illum dolorem.', 'https://via.placeholder.com/640x480.png/007755?text=recusandae', 0, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(89, 'Tata Watch', 70167, 4576, 'Rose Gold', 3, 'LV-30517', 'children', 'Digital', 1, 'Tenetur consequuntur molestias facilis aut exercitationem. Nesciunt qui voluptatum quia iusto. Quis illum deleniti optio quibusdam laborum dolorum.', 'https://via.placeholder.com/640x480.png/006644?text=aut', 0, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(90, 'Rolex Watch', 23543, 3813, 'Blue', 1, 'LV-95009', 'unisex', 'Mechanical', 0, 'Aut omnis excepturi asperiores repellat perferendis optio nihil. Labore laboriosam quibusdam ut sed sint laudantium.', 'https://via.placeholder.com/640x480.png/009944?text=non', 0, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(91, 'Rolex Watch', 65789, 4942, 'Green', 1, 'LV-60120', 'male', 'Mechanical', 0, 'Quia magni in qui non. Asperiores aliquid enim voluptatem mollitia sit in. Suscipit enim praesentium doloribus fuga cumque ullam.', 'https://via.placeholder.com/640x480.png/003300?text=et', 1, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(92, 'Tata Watch', 94861, 2890, 'Silver', 2, 'LV-02341', 'male', 'Analog', 6, 'Tempora voluptatem voluptas eum quos. Dolor ipsam quasi optio autem consequatur at vero. Explicabo numquam repudiandae ut accusantium voluptas occaecati eum.', 'https://via.placeholder.com/640x480.png/00eedd?text=porro', 0, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(93, 'Tata Watch', 25659, 1328, 'Black', 1, 'LV-81871', 'unisex', 'Digital', 9, 'Fugiat asperiores et quia in. Alias possimus dicta sunt nihil hic. Consequatur voluptate quisquam porro autem in fuga saepe praesentium.', 'https://via.placeholder.com/640x480.png/009922?text=doloremque', 0, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(94, 'Roadster Watch', 80080, 1395, 'Green', 3, 'LV-20384', 'unisex', 'Digital', 2, 'Autem earum exercitationem quisquam pariatur et saepe dolor soluta. Neque laboriosam nesciunt nemo. Alias sed corporis consequatur deleniti repudiandae nulla vel repellendus.', 'https://via.placeholder.com/640x480.png/004422?text=sint', 1, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(95, 'Rolex Watch', 14463, 2021, 'Gold', 2, 'LV-15102', 'female', 'Analog', 1, 'Amet quo beatae magnam. Expedita deserunt qui aliquid quod quis. Inventore impedit magnam quos ratione quam vel. Blanditiis esse quia animi nisi et aut deleniti sunt.', 'https://via.placeholder.com/640x480.png/00cc99?text=qui', 1, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(96, 'Rolex Watch', 38263, 4022, 'Rose Gold', 2, 'LV-44953', 'unisex', 'Automatic', 6, 'Facilis magni tempore culpa in molestiae. Cumque pariatur laborum et adipisci modi nostrum saepe quo. Ut rerum officia ut pariatur aspernatur molestiae consequatur.', 'https://via.placeholder.com/640x480.png/000055?text=sunt', 1, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(97, 'Tata Watch', 30902, 1219, 'Silver', 1, 'LV-54841', 'children', 'Digital', 7, 'Nihil iure nulla non aut praesentium. Vero nihil ullam voluptatum porro officiis sunt. Quis dolorem ad expedita itaque est occaecati.', 'https://via.placeholder.com/640x480.png/00ccaa?text=consequuntur', 0, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(98, 'Roadster Watch', 32722, 2622, 'Blue', 2, 'LV-70691', 'female', 'Digital', 6, 'Consequuntur temporibus ut voluptas et in. Aut veritatis perferendis vel ea. Dolores a qui ducimus dignissimos.', 'https://via.placeholder.com/640x480.png/005544?text=consequatur', 0, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(99, 'Rolex Watch', 23847, 2975, 'Silver', 1, 'LV-92044', 'male', 'Digital', 3, 'Architecto dolorem sequi ullam. A ea accusantium quasi. Consequatur corporis assumenda voluptatem assumenda nobis reprehenderit.', 'https://via.placeholder.com/640x480.png/00ddbb?text=sit', 0, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(100, 'Roadster Watch', 63781, 4135, 'Gold', 2, 'LV-82822', 'male', 'Digital', 6, 'Assumenda nostrum esse tenetur voluptates voluptatum cupiditate. Molestias consequatur itaque non sit quasi consequuntur. Eos velit delectus assumenda doloribus. Id dolorem quo ipsa et.', 'https://via.placeholder.com/640x480.png/003311?text=consectetur', 1, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(101, 'Rolex Watch', 84302, 2017, 'Black', 2, 'LV-11973', 'unisex', 'Analog', 1, 'Et quia itaque perferendis minus. Quia consequatur in laboriosam maxime delectus. Recusandae earum quas provident facilis quam perspiciatis.', 'https://via.placeholder.com/640x480.png/00aa77?text=maiores', 1, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(102, 'Tata Watch', 60458, 1020, 'Gold', 1, 'LV-76904', 'unisex', 'Smart', 6, 'Debitis dolor et voluptatem et qui incidunt hic. Id voluptatibus dolor qui est et aliquid rerum. Dolor est quo qui perspiciatis dolor. Qui magni ut corporis qui cupiditate ut.', 'https://via.placeholder.com/640x480.png/000055?text=eligendi', 0, '2022-12-15 01:41:33', '2022-12-15 01:41:33'),
(103, 'Rolex Watch', 46160, 4247, 'Silver', 2, 'LV-07454', 'unisex', 'Smart', 1, 'Vel praesentium id qui qui dolorem iste porro. Rerum atque ipsum cumque culpa qui reiciendis aut. Neque voluptas ad hic vero in. Magnam ipsum omnis sunt blanditiis modi debitis voluptatibus.', 'https://via.placeholder.com/640x480.png/007722?text=illum', 0, '2022-12-15 01:41:33', '2022-12-15 01:41:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` tinyint(1) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `country` bigint(20) UNSIGNED NOT NULL,
  `profile` text NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `fname`, `lname`, `email`, `email_verified_at`, `password`, `contact`, `gender`, `address`, `country`, `profile`, `remember_token`, `created_at`, `updated_at`, `is_active`) VALUES
(1, 1, 'Ad Minal', 'Kanth', 'admin@gmail.com', NULL, '$2y$10$ncBhYMf3lCDUIHP9Mycq.OxIcckR/I6v.JEXkk18j/1vkzj7YiHLq', '09678001910', 'Male', 'C/o- Deepali Padhi, Near Ananda Nursurey (village- Hagrapulli), P.O. Amoni , P.S. - Samaguri', 101, 'lv_1540886312.png', NULL, '2022-12-13 23:35:50', '2022-12-14 03:48:19', 1),
(2, 0, 'Usr Minal', 'Kanth', 'user@gmail.com', NULL, '$2y$10$xXZJcVsKciJcnRdrshDqz.8euLujZUzvBjCx392FxT3OEPP7jvVKq', '09678001910', 'Male', 'C/o- Deepali Padhi, Near Ananda Nursurey (village- Hagrapulli), P.O. Amoni , P.S. - Samaguri', 101, 'lv_1829543434.jpg', NULL, '2022-12-13 23:36:30', '2022-12-14 03:48:21', 1),
(3, 0, 'Mrinal', 'Padhi', 'minalkanth3.9@gmail.com', NULL, '123456', '09678001910', 'Male', 'C/o- Deepali Padhi, Near Ananda Nursurey (village- Hagrapulli), P.O. Amoni , P.S. - Samaguri', 101, 'ViPrak611604177.jpg', NULL, '2022-12-12 01:50:43', '2022-12-14 03:48:22', 1),
(5, 0, 'Mrinal', 'Padhi', 'minalkanth4.9@gmail.com', NULL, '123456', '09678001910', 'Male', 'C/o- Deepali Padhi, Near Ananda Nursurey (village- Hagrapulli), P.O. Amoni , P.S. - Samaguri', 101, 'ViPrak91364062.png', NULL, '2022-12-12 01:56:02', '2022-12-14 06:35:06', 0),
(6, 1, 'Mrinal', 'Padhi', 'minalkanth5.9@gmail.com', NULL, '123456', '09678001910', 'Male', 'C/o- Deepali Padhi, Near Ananda Nursurey (village- Hagrapulli), P.O. Amoni , P.S. - Samaguri', 101, 'ViPrak1161084442.png', NULL, '2022-12-12 01:57:45', '2022-12-14 02:41:13', 0),
(7, 0, 'Mrinal', 'Padhi', 'minalkanth2.9@gmail.com', NULL, '123456', '09678001910', 'Male', 'C/o- Deepali Padhi, Near Ananda Nursurey (village- Hagrapulli), P.O. Amoni , P.S. - Samaguri', 101, 'ViPrak2109198118.jpg', NULL, '2022-12-12 01:34:05', '2022-12-12 01:34:05', 0),
(12, 0, 'Hinal', 'chaklasiya', 'hinal.chaklasiya@viprak.com', NULL, '123456', '7896541230', 'Female', 'Gujrat', 101, 'ViPrak1133241613.jpg', NULL, '2022-12-12 02:12:17', '2022-12-12 02:12:17', 0),
(21, 0, 'Mrinal Kanth', 'Padhi', 'minalkanth.9@gmail.com', NULL, '$2y$10$uETYQN8H6Cm7pymWEYKZ2u.uHUttwj.1GiPWtUAnd/J1Dr1XBUPoG', '9678001910', 'Male', 'Home C/o- Deepali Padhi, Near Ananda Nursurey (village- Hagrapulli), P.O. Amoni , P.S. - Samaguri', 101, 'ViPrak1101614395.jpg', NULL, '2022-12-12 18:18:07', '2022-12-13 00:18:55', 0),
(24, 0, 'Mrinal Kanth', 'Padhi', 'minalkanth123.9@gmail.com', NULL, '$2y$10$dQ.CEcmUqI2TznxBjruDI.wpMSK0hlLw7JWbno6A3eG6rwPortb5i', '9678001910', 'Male', 'C/o- Deepali Padhi, Near Ananda Nursurey (village- Hagrapulli), P.O. Amoni , P.S. - Samaguri', 101, 'ViPrak462543031.jpg', NULL, '2022-12-12 18:18:07', '2022-12-12 19:54:43', 0),
(26, 1, 'Mohit', 'Kumar', 'minalkanth12.9@gmail.com', NULL, '$2y$10$XwCPrGBoFx4UdyX6G07kiefPngaO.HTkbCPq.LPJsg2VOQuZyPLmm', '2542178990', 'Male', 'Home C/o- Deepali Padhi, Near Ananda Nursurey (village- Hagrapulli), P.O. Amoni , P.S. - Samaguri', 101, 'ViPrak_1317013490.png', NULL, '2022-12-12 20:27:02', '2022-12-14 03:41:02', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_operations`
--
ALTER TABLE `crud_operations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `lineitems`
--
ALTER TABLE `lineitems`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `crud_operations`
--
ALTER TABLE `crud_operations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lineitems`
--
ALTER TABLE `lineitems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
