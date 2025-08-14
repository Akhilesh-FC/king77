-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 14, 2025 at 10:12 AM
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
-- Database: `u609116592_king77`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_details`
--

CREATE TABLE `account_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) NOT NULL,
  `account_number` varchar(20) NOT NULL,
  `branch` varchar(40) DEFAULT NULL,
  `bank_name` varchar(64) DEFAULT NULL,
  `ifsc_code` varchar(25) NOT NULL,
  `upi_id` varchar(64) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_details`
--

INSERT INTO `account_details` (`id`, `name`, `account_number`, `branch`, `bank_name`, `ifsc_code`, `upi_id`, `status`, `created_at`, `updated_at`, `user_id`) VALUES
(2, 'AKKU', '123456789012', 'NOIDA', 'HDFC', 'HDFC12232', NULL, 1, '2025-08-01 15:03:04', '2025-08-01 16:25:26', 1),
(3, 'Test', '1234567885', 'Baroda Uttar Pradesh Gramin Bank IMPS', 'Baroda Uttar Pradesh Gramin Bank', 'BARB0BUPGBX', 'test@1231', 1, '2025-08-04 14:05:43', '2025-08-04 14:05:43', 5),
(4, 'Vivek gupta', '12345678987', 'LUCKNOW CHARBAGH', 'Punjab National Bank', 'PUNB0146800', 'FTRD@123456', 1, '2025-08-12 15:36:29', '2025-08-12 15:36:29', 2),
(5, 'AK Testing1', '1234567899', 'LKO', 'AK Testing', 'BARB0BUPGBX', NULL, 1, '2025-08-14 10:27:38', '2025-08-14 10:58:22', 8);

-- --------------------------------------------------------

--
-- Table structure for table `activity_rewards`
--

CREATE TABLE `activity_rewards` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `range_amount` int(11) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `activity_rewards`
--

INSERT INTO `activity_rewards` (`id`, `name`, `range_amount`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'daily mission', 500, 5, 1, '2024-04-27 08:18:17', '2024-04-27 08:18:17'),
(2, 'daily mission', 5000, 40, 1, '2024-04-27 08:18:17', '2024-04-27 08:18:17'),
(3, 'daily mission', 50000, 500, 1, '2024-04-27 08:18:44', '2024-04-27 08:18:44'),
(4, 'daily mission', 100000, 1000, 1, '2024-04-27 08:18:44', '2024-04-27 08:18:44'),
(5, 'weekly mission', 50000, 100, 1, '2024-04-27 08:18:44', '2024-04-27 08:18:44');

-- --------------------------------------------------------

--
-- Table structure for table `activity_rewards_claim`
--

CREATE TABLE `activity_rewards_claim` (
  `id` int(11) NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `acyivity_reward_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_settings`
--

CREATE TABLE `admin_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `longtext` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `admin_settings`
--

INSERT INTO `admin_settings` (`id`, `title`, `longtext`) VALUES
(1, 'url', 'https://root.king77.games/'),
(2, 'Api_url', 'https://root.king77.games/api/'),
(3, 'title', 'King77 Games'),
(4, 'logo', 'King77 Games'),
(5, 'Site_description', ''),
(6, 'Api_db_name', 'u609116592_king77'),
(7, 'Api_db_password', 'u609116592_King77'),
(8, 'Api_username', 'u609116592_king77'),
(9, 'Apk_url', 'https://root.king77.games/'),
(10, 'Betting Commission', '0.00'),
(11, 'Refferrel Text', ''),
(12, 'Payment Key', 'INDIANPAY00INDIANPAY00149'),
(13, 'merchant_token', 'JAnzsvWBQDhK7zlCAExf2HdjHoZAZawX'),
(14, 'orderid', 'TXT'),
(15, 'minimum_withdraw', '200'),
(16, 'maximum_withdraw', '2500');

-- --------------------------------------------------------

--
-- Table structure for table `admin_winner_results`
--

CREATE TABLE `admin_winner_results` (
  `id` int(11) NOT NULL,
  `gamesno` varchar(100) DEFAULT NULL,
  `gameId` int(11) NOT NULL,
  `number` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_winner_results`
--

INSERT INTO `admin_winner_results` (`id`, `gamesno`, `gameId`, `number`, `status`, `created_at`, `updated_at`) VALUES
(1, '40', 5, '1', '1', '2025-07-28 04:27:11', '2025-07-28 04:27:11'),
(2, '20250614093399', 2, '2', '1', '2025-08-13 09:15:23', '2025-08-13 09:15:23');

-- --------------------------------------------------------

--
-- Table structure for table `all_images`
--

CREATE TABLE `all_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `all_images`
--

INSERT INTO `all_images` (`id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'https://root.globalbet24.live/uploads/profileimage/1.png', 0, '2024-04-23 05:45:47', '2024-04-23 05:45:47'),
(2, 'https://root.globalbet24.live/uploads/profileimage/2.png', 0, '2024-04-23 05:45:47', '2024-04-23 05:45:47'),
(3, 'https://root.globalbet24.live/uploads/profileimage/3.png', 0, '2024-04-23 05:45:47', '2024-04-23 05:45:47'),
(4, 'https://root.globalbet24.live/uploads/profileimage/4.png', 0, '2024-04-23 05:45:47', '2024-04-23 05:45:47'),
(5, 'https://root.globalbet24.live/uploads/profileimage/5.png', 0, '2024-04-23 05:45:47', '2024-04-23 05:45:47'),
(6, 'https://root.globalbet24.live/uploads/profileimage/6.png', 0, '2024-04-23 05:45:47', '2024-04-23 05:45:47'),
(7, 'https://root.globalbet24.live/uploads/profileimage/7.png', 0, '2024-04-23 05:45:47', '2024-04-23 05:45:47'),
(8, 'https://root.globalbet24.live/uploads/profileimage/8.png', 0, '2024-04-23 05:45:47', '2024-04-23 05:45:47'),
(9, 'https://root.globalbet24.live/uploads/profileimage/9.png', 0, '2024-04-23 05:45:47', '2024-04-23 05:45:47'),
(10, 'https://root.globalbet24.live/uploads/profileimage/10.png', 0, '2024-04-23 05:45:47', '2024-04-23 05:45:47'),
(11, 'https://root.globalbet24.live/uploads/profileimage/11.png', 0, '2024-04-23 05:45:47', '2024-04-23 05:45:47'),
(12, 'https://root.globalbet24.live/uploads/profileimage/12.png', 0, '2024-04-23 05:45:47', '2024-04-23 05:45:47'),
(13, 'https://root.globalbet24.live/uploads/profileimage/13.png', 0, '2024-04-23 05:45:47', '2024-04-23 05:45:47'),
(14, 'https://root.globalbet24.live/uploads/profileimage/14.png', 0, '2024-04-23 05:45:47', '2024-04-23 05:45:47'),
(15, 'https://root.globalbet24.live/uploads/profileimage/15.png', 0, '2024-04-23 05:45:47', '2024-04-23 05:45:47'),
(16, 'https://root.globalbet24.live/uploads/profileimage/16.png', 0, '2024-04-23 05:45:47', '2024-04-23 05:45:47'),
(17, 'https://root.globalbet24.live/uploads/profileimage/17.png', 0, '2024-04-23 05:45:47', '2024-04-23 05:45:47'),
(18, 'https://root.globalbet24.live/uploads/profileimage/18.png', 0, '2024-04-23 05:45:47', '2024-04-23 05:45:47'),
(19, 'https://root.globalbet24.live/uploads/profileimage/19.png', 0, '2024-04-23 05:45:47', '2024-04-23 05:45:47'),
(20, 'https://root.globalbet24.live/uploads/profileimage/20.png', 0, '2024-04-23 05:45:47', '2024-04-23 05:45:47');

-- --------------------------------------------------------

--
-- Table structure for table `amount_lists`
--

CREATE TABLE `amount_lists` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `cash` decimal(10,2) NOT NULL,
  `extra_cash` decimal(10,2) DEFAULT NULL,
  `bonus` varchar(20) NOT NULL,
  `total_amount` decimal(15,2) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `accumulated_amount` decimal(10,2) NOT NULL,
  `attendance_bonus` decimal(10,2) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT 'expired = 0, Continue = 1, success=2 ',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `accumulated_amount`, `attendance_bonus`, `status`, `created_at`, `updated_at`) VALUES
(1, 500.00, 10.00, 1, '2025-01-18 00:01:58', '2025-08-04 04:54:04'),
(2, 1000.00, 30.00, 1, '2025-01-18 00:02:12', '2025-08-04 04:54:15'),
(3, 3000.00, 100.00, 1, '2025-01-18 00:02:43', '2025-08-04 04:54:22'),
(4, 10000.00, 300.00, 1, '2025-01-18 00:03:16', '2025-08-04 04:54:41'),
(5, 25000.00, 700.00, 1, '2025-01-18 00:03:59', '2025-08-04 04:54:56'),
(6, 100000.00, 3000.00, 1, '2025-01-18 00:04:27', '2025-08-04 04:55:11'),
(7, 200000.00, 8000.00, 1, '2025-01-18 00:05:07', '2025-08-04 04:55:29');

-- --------------------------------------------------------

--
-- Table structure for table `at_claim`
--

CREATE TABLE `at_claim` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED DEFAULT NULL,
  `attendance_id` int(10) UNSIGNED DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `at_claim`
--

INSERT INTO `at_claim` (`id`, `userid`, `attendance_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 0, '2025-08-04 11:25:43', '2025-08-04 11:25:43'),
(2, 7, 1, 0, '2025-08-07 09:54:54', '2025-08-07 09:54:54');

-- --------------------------------------------------------

--
-- Table structure for table `aviator_admin_result`
--

CREATE TABLE `aviator_admin_result` (
  `id` int(11) NOT NULL,
  `game_sr_num` varchar(100) DEFAULT NULL,
  `game_id` int(11) NOT NULL DEFAULT 3,
  `number` float DEFAULT NULL,
  `multiplier` double(10,2) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `aviator_admin_result`
--

INSERT INTO `aviator_admin_result` (`id`, `game_sr_num`, `game_id`, `number`, `multiplier`, `status`, `datetime`) VALUES
(2, '94', 5, 4, 4.00, 1, '2025-08-13 10:43:06'),
(3, '709', 5, 5, 5.00, 1, '2025-08-13 14:49:14'),
(4, '940', 5, 1.12, 1.12, 1, '2025-08-13 18:27:16');

-- --------------------------------------------------------

--
-- Table structure for table `aviator_bet`
--

CREATE TABLE `aviator_bet` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `stop_multiplier` float NOT NULL DEFAULT 0 COMMENT 'for aviator(auto bet case)',
  `game_id` int(11) NOT NULL DEFAULT 5,
  `totalamount` double NOT NULL DEFAULT 0 COMMENT 'amount-bettingfee = trade amount',
  `number` int(11) DEFAULT 0,
  `sub_number` int(11) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `game_sr_num` varchar(250) DEFAULT NULL,
  `commission` double NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0-pending\r\n1 - win \r\n2- loss',
  `result_status` int(11) NOT NULL DEFAULT 0 COMMENT '0 - waiting for result\r\n1 - result declared',
  `win` double NOT NULL DEFAULT 0,
  `multiplier` double NOT NULL DEFAULT 0 COMMENT 'random cashout multiplier',
  `datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `aviator_bet`
--

INSERT INTO `aviator_bet` (`id`, `uid`, `amount`, `stop_multiplier`, `game_id`, `totalamount`, `number`, `sub_number`, `color`, `game_sr_num`, `commission`, `status`, `result_status`, `win`, `multiplier`, `datetime`, `created_at`, `updated_at`) VALUES
(1, 8, 10, 0, 5, 10, 1, NULL, 'Aviator', '1685', 0, 1, 1, 11, 1.1, '2025-08-14 12:32:11', '2025-08-14 12:32:11', '2025-08-14 07:02:11'),
(2, 8, 10, 0, 5, 10, 2, NULL, 'Aviator', '1685', 0, 1, 1, 11, 1.1, '2025-08-14 12:32:22', '2025-08-14 12:32:22', '2025-08-14 07:02:22'),
(3, 8, 10, 0, 5, 10, 1, NULL, 'Aviator', '1687', 0, 2, 1, 0, 0, '2025-08-14 12:33:58', '2025-08-14 12:33:58', '2025-08-14 07:03:58'),
(4, 8, 10, 0, 5, 10, 1, NULL, 'Aviator', '1698', 0, 1, 1, 11, 1.1, '2025-08-14 12:48:57', '2025-08-14 12:48:57', '2025-08-14 07:18:57'),
(5, 8, 10, 0, 5, 10, 1, NULL, 'Aviator', '1702', 0, 2, 1, 0, 0, '2025-08-14 12:54:26', '2025-08-14 12:54:26', '2025-08-14 07:24:26'),
(7, 8, 10, 0, 5, 10, 2, NULL, 'Aviator', '1704', 0, 1, 1, 11, 1.1, '2025-08-14 12:55:26', '2025-08-14 12:55:26', '2025-08-14 07:25:26'),
(8, 8, 10, 0, 5, 10, 1, NULL, 'Aviator', '1704', 0, 1, 1, 11, 1.1, '2025-08-14 12:55:37', '2025-08-14 12:55:37', '2025-08-14 07:25:37');

-- --------------------------------------------------------

--
-- Table structure for table `aviator_result`
--

CREATE TABLE `aviator_result` (
  `id` int(11) NOT NULL,
  `number` int(11) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `game_sr_num` bigint(20) DEFAULT 0,
  `game_id` int(11) DEFAULT NULL COMMENT 'not use',
  `price` double NOT NULL DEFAULT 0,
  `status` int(11) DEFAULT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aviator_setting`
--

CREATE TABLE `aviator_setting` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `loss_per` int(11) NOT NULL COMMENT 'if amount is less then given amount then max winning on this amount will be amount + amount*%',
  `win_per` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aviator_setting`
--

INSERT INTO `aviator_setting` (`id`, `amount`, `loss_per`, `win_per`) VALUES
(1, 1000, 70, 30);

-- --------------------------------------------------------

--
-- Table structure for table `balloon_admin_result`
--

CREATE TABLE `balloon_admin_result` (
  `id` int(11) NOT NULL,
  `game_sr_num` bigint(20) DEFAULT NULL,
  `game_id` int(11) DEFAULT 23,
  `number` int(11) DEFAULT NULL,
  `multiplier` double DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `balloon_bet`
--

CREATE TABLE `balloon_bet` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `stop_multiplier` float NOT NULL DEFAULT 0 COMMENT 'for aviator(auto bet case)',
  `game_id` int(11) NOT NULL DEFAULT 5,
  `totalamount` double NOT NULL DEFAULT 0 COMMENT 'amount-bettingfee = trade amount',
  `number` int(11) DEFAULT 0,
  `sub_number` int(11) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `game_sr_num` varchar(250) DEFAULT NULL,
  `commission` double NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0-pending\r\n1 - win \r\n2- loss',
  `result_status` int(11) NOT NULL DEFAULT 0 COMMENT '0 - waiting for result\r\n1 - result declared',
  `win` double NOT NULL DEFAULT 0,
  `multiplier` double NOT NULL DEFAULT 0 COMMENT 'random cashout multiplier',
  `datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `balloon_image`
--

CREATE TABLE `balloon_image` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `balloon_image`
--

INSERT INTO `balloon_image` (`id`, `image`, `created_at`) VALUES
(1, 'https://magicwinner.motug.com/public/balloon/1.png', '2025-02-22 12:40:01'),
(2, 'https://magicwinner.motug.com/public/balloon/2.png', '2025-02-22 12:41:09'),
(3, 'https://magicwinner.motug.com/public/balloon/3.png', '2025-02-22 12:41:09'),
(4, 'https://magicwinner.motug.com/public/balloon/4.png', '2025-02-22 12:41:09'),
(5, 'https://magicwinner.motug.com/public/balloon/5.png', '2025-02-22 12:41:09'),
(6, 'https://magicwinner.motug.com/public/balloon/6.jpg', '2025-02-22 12:41:09');

-- --------------------------------------------------------

--
-- Table structure for table `balloon_result`
--

CREATE TABLE `balloon_result` (
  `id` int(11) NOT NULL,
  `number` int(11) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `game_sr_num` bigint(20) DEFAULT 0,
  `game_id` int(11) DEFAULT NULL COMMENT 'not use',
  `price` double NOT NULL DEFAULT 0,
  `status` int(11) DEFAULT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `balloon_setting`
--

CREATE TABLE `balloon_setting` (
  `id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `loss_per` int(11) NOT NULL,
  `win_per` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `balloon_setting`
--

INSERT INTO `balloon_setting` (`id`, `game_id`, `amount`, `loss_per`, `win_per`) VALUES
(1, 23, 1000, 200, 70);

-- --------------------------------------------------------

--
-- Table structure for table `betlogs`
--

CREATE TABLE `betlogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `games_no` bigint(20) NOT NULL DEFAULT 0,
  `game_id` int(11) NOT NULL DEFAULT 0,
  `number` int(11) NOT NULL,
  `amount` double DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `betlogs`
--

INSERT INTO `betlogs` (`id`, `games_no`, `game_id`, `number`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 20250614156011, 1, 0, 0, 0, '2024-04-25 12:10:49', '2025-08-13 09:39:03'),
(2, 20250614156011, 1, 1, 0, 0, '2024-04-25 12:10:49', '2025-08-14 14:10:24'),
(3, 20250614156011, 1, 2, 0, 0, '2024-04-25 12:10:49', '2025-08-12 15:10:38'),
(4, 20250614156011, 1, 3, 0, 0, '2024-04-25 12:10:49', '2025-08-14 14:10:24'),
(5, 20250614156011, 1, 4, 0, 0, '2024-04-25 12:10:49', '2025-08-12 15:10:38'),
(6, 20250614156011, 1, 5, 0, 0, '2024-04-25 12:10:49', '2025-08-14 14:10:24'),
(7, 20250614156011, 1, 6, 0, 0, '2024-04-25 12:10:49', '2025-08-12 15:10:36'),
(8, 20250614156011, 1, 7, 0, 0, '2024-04-25 12:10:49', '2025-08-14 14:10:24'),
(9, 20250614156011, 1, 8, 0, 0, '2024-04-25 12:10:49', '2025-08-13 09:39:41'),
(10, 20250614156011, 1, 9, 0, 0, '2024-04-25 12:10:49', '2025-08-14 14:10:24'),
(11, 20250614094931, 2, 0, 0, 0, '2024-04-25 12:10:49', '2025-07-04 03:33:13'),
(12, 20250614094931, 2, 1, 0, 0, '2024-04-25 12:10:49', '2025-07-29 13:32:43'),
(13, 20250614094931, 2, 2, 0, 0, '2024-04-25 12:10:49', '2025-08-13 14:45:03'),
(14, 20250614094931, 2, 3, 0, 0, '2024-04-25 12:10:49', '2025-08-13 14:45:10'),
(15, 20250614094931, 2, 4, 0, 0, '2024-04-25 12:10:49', '2025-06-21 07:05:01'),
(16, 20250614094931, 2, 5, 0, 0, '2024-04-25 12:10:49', '2025-07-29 13:32:43'),
(17, 20250614094931, 2, 6, 0, 0, '2024-04-25 12:10:49', '2025-06-24 11:59:48'),
(18, 20250614094931, 2, 7, 0, 0, '2024-04-25 12:10:49', '2025-07-29 13:32:43'),
(19, 20250614094931, 2, 8, 0, 0, '2024-04-25 12:10:49', '2025-06-24 12:00:29'),
(20, 20250614094931, 2, 9, 0, 0, '2024-04-25 12:10:49', '2025-07-29 13:32:43'),
(21, 20250614054034, 3, 0, 0, 0, '2024-04-25 12:10:49', '2025-06-21 06:51:56'),
(22, 20250614054034, 3, 1, 0, 0, '2024-04-25 12:10:49', '2025-07-29 13:53:37'),
(23, 20250614054034, 3, 2, 0, 0, '2024-04-25 12:10:49', '2025-06-21 08:41:28'),
(24, 20250614054034, 3, 3, 0, 0, '2024-04-25 12:10:49', '2025-07-29 13:53:37'),
(25, 20250614054034, 3, 4, 0, 0, '2024-04-25 12:10:49', '2025-06-21 06:51:56'),
(26, 20250614054034, 3, 5, 0, 0, '2024-04-25 12:10:49', '2025-07-29 13:53:37'),
(27, 20250614054034, 3, 6, 0, 0, '2024-04-25 12:10:49', '2025-06-21 06:51:56'),
(28, 20250614054034, 3, 7, 0, 0, '2024-04-25 12:10:49', '2025-07-29 13:53:37'),
(29, 20250614054034, 3, 8, 0, 0, '2024-04-25 12:10:49', '2025-06-21 06:51:56'),
(30, 20250614054034, 3, 9, 0, 0, '2024-04-25 12:10:49', '2025-07-29 13:53:37'),
(31, 20250614054766, 4, 0, 0, 0, '2024-04-25 12:10:49', '2025-07-29 13:33:36'),
(32, 20250614054766, 4, 1, 0, 0, '2024-04-25 12:10:49', '2025-07-29 13:33:36'),
(33, 20250614054766, 4, 2, 0, 0, '2024-04-25 12:10:49', '2025-07-29 13:33:36'),
(34, 20250614054766, 4, 3, 0, 0, '2024-04-25 12:10:49', '2025-07-29 13:33:36'),
(35, 20250614054766, 4, 4, 0, 0, '2024-04-25 12:10:49', '2025-07-29 13:33:36'),
(36, 20250614054766, 4, 5, 0, 0, '2024-04-25 12:10:49', '2025-07-29 13:33:36'),
(37, 20250614054766, 4, 6, 0, 0, '2024-04-25 12:10:49', '2025-07-29 13:33:36'),
(38, 20250614054766, 4, 7, 0, 0, '2024-04-25 12:10:49', '2025-07-29 13:33:36'),
(39, 20250614054766, 4, 8, 0, 0, '2024-04-25 12:10:49', '2025-07-29 13:33:36'),
(40, 20250614054766, 4, 9, 0, 0, '2024-04-25 12:10:49', '2025-07-29 13:33:36'),
(41, 20250614108351, 6, 0, 0, 0, '2024-04-25 12:10:49', '2025-07-09 16:42:22'),
(42, 20250614108351, 6, 1, 0, 0, '2024-04-25 12:10:49', '2025-07-23 00:19:11'),
(43, 20250614108351, 6, 2, 0, 0, '2024-04-25 12:10:49', '2025-07-09 16:42:22'),
(44, 20250614108351, 6, 3, 0, 0, '2024-04-25 12:10:49', '2025-07-23 00:19:11'),
(45, 20250614108351, 6, 4, 0, 0, '2024-04-25 12:10:49', '2025-07-09 16:42:22'),
(46, 20250614108351, 6, 5, 0, 0, '2024-04-25 12:10:49', '2025-07-23 00:19:11'),
(47, 20250614108351, 6, 6, 0, 0, '2024-04-25 12:10:49', '2025-07-09 16:42:22'),
(48, 20250614108351, 6, 7, 0, 0, '2024-04-25 12:10:49', '2025-07-23 00:19:11'),
(49, 20250614108351, 6, 8, 0, 0, '2024-04-25 12:10:49', '2025-07-09 16:42:22'),
(50, 20250614108351, 6, 9, 0, 0, '2024-04-25 12:10:49', '2025-07-23 00:19:11'),
(51, 20250614085913, 7, 0, 0, 0, '2024-04-25 12:10:49', '2025-06-21 07:17:59'),
(52, 20250614085913, 7, 1, 0, 0, '2024-04-25 12:10:49', '2025-06-21 07:17:59'),
(53, 20250614085913, 7, 2, 0, 0, '2024-04-25 12:10:49', '2025-06-21 07:17:59'),
(54, 20250614085913, 7, 3, 0, 0, '2024-04-25 12:10:49', '2025-06-21 07:17:59'),
(55, 20250614085913, 7, 4, 0, 0, '2024-04-25 12:10:49', '2025-06-21 07:17:59'),
(56, 20250614085913, 7, 5, 0, 0, '2024-04-25 12:10:49', '2025-06-21 07:17:59'),
(57, 20250614085913, 7, 6, 0, 0, '2024-04-25 12:10:49', '2025-06-21 07:17:59'),
(58, 20250614085913, 7, 7, 0, 0, '2024-04-25 12:10:49', '2025-06-21 07:17:59'),
(59, 20250614085913, 7, 8, 0, 0, '2024-04-25 12:10:49', '2025-06-21 07:17:59'),
(60, 20250614085913, 7, 9, 0, 0, '2024-04-25 12:10:49', '2025-06-21 07:17:59'),
(61, 20250614089502, 8, 0, 0, 0, '2024-04-25 12:10:49', '2025-06-21 07:27:17'),
(62, 20250614089502, 8, 1, 0, 0, '2024-04-25 12:10:49', '2025-06-21 07:27:53'),
(63, 20250614089502, 8, 2, 0, 0, '2024-04-25 12:10:49', '2025-06-21 07:27:17'),
(64, 20250614089502, 8, 3, 0, 0, '2024-04-25 12:10:49', '2025-06-21 07:27:53'),
(65, 20250614089502, 8, 4, 0, 0, '2024-04-25 12:10:49', '2025-06-21 07:27:17'),
(66, 20250614089502, 8, 5, 0, 0, '2024-04-25 12:10:49', '2025-06-21 07:27:53'),
(67, 20250614089502, 8, 6, 0, 0, '2024-04-25 12:10:49', '2025-06-21 07:27:17'),
(68, 20250614089502, 8, 7, 0, 0, '2024-04-25 12:10:49', '2025-06-21 07:27:53'),
(69, 20250614089502, 8, 8, 0, 0, '2024-04-25 12:10:49', '2025-06-21 07:27:17'),
(70, 20250614089502, 8, 9, 0, 0, '2024-04-25 12:10:49', '2025-06-21 07:27:53'),
(71, 20250614094669, 9, 0, 0, 0, '2024-04-25 12:10:49', '2025-03-20 13:20:16'),
(72, 20250614094669, 9, 1, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(73, 20250614094669, 9, 2, 0, 0, '2024-04-25 12:10:49', '2025-03-20 13:20:16'),
(74, 20250614094669, 9, 3, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(75, 20250614094669, 9, 4, 0, 0, '2024-04-25 12:10:49', '2025-03-20 13:20:16'),
(76, 20250614094669, 9, 5, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(77, 20250614094669, 9, 6, 0, 0, '2024-04-25 12:10:49', '2025-03-20 15:23:36'),
(78, 20250614094669, 9, 7, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(79, 20250614094669, 9, 8, 0, 0, '2024-04-25 12:10:49', '2025-03-20 13:20:16'),
(80, 20250614094669, 9, 9, 0, 0, '2024-04-25 12:10:49', '2025-05-07 06:45:13'),
(81, 20250614195166, 10, 1, 0, 0, '2024-04-25 12:10:49', '2025-03-22 15:56:56'),
(82, 20250614195166, 10, 2, 0, 0, '2024-04-25 12:10:49', '2025-03-22 15:56:56'),
(83, 20250614195166, 10, 3, 0, 0, '2024-04-25 12:10:49', '2025-03-22 15:56:56'),
(84, 20250614247641, 13, 1, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(85, 20250614247641, 13, 2, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(86, 20250614235500, 14, 1, 0, 0, '2024-04-25 12:10:49', '2025-07-26 23:48:27'),
(87, 20250614235500, 14, 2, 0, 0, '2024-04-25 12:10:49', '2025-07-01 06:34:34'),
(88, 20250614264567, 17, 1, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(89, 20250614244454, 15, 1, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(90, 20250614244454, 15, 2, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(91, 20250614244454, 15, 3, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(92, 20250614254902, 16, 1, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(93, 20250614254902, 16, 2, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(94, 20250614254902, 16, 3, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(95, 20250614254902, 16, 4, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(96, 20250614254902, 16, 5, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(97, 20250614254902, 16, 6, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(98, 20250614263073, 20, 1, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(99, 20250614263073, 20, 2, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(100, 20250614263073, 20, 3, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(101, 20250614263073, 20, 4, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(102, 20250614263073, 20, 5, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(103, 20250614263073, 20, 6, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(104, 20250614244454, 15, 2, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(105, 20250614244454, 15, 3, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(106, 20250614244454, 15, 4, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(107, 20250614244454, 15, 5, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(108, 20250614244454, 15, 6, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(109, 20250614244454, 15, 8, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(110, 20250614244454, 15, 9, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(111, 20250614244454, 15, 10, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(112, 20250614244454, 15, 11, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(113, 20250614244454, 15, 12, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(115, 20250614350704, 22, 1, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(116, 20250614350704, 22, 2, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(117, 20250614350704, 22, 3, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(118, 20250614350704, 22, 4, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(119, 20250614350704, 22, 5, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(120, 20250614350704, 22, 6, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(121, 20250614334284, 24, 1, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(122, 20250614334284, 24, 2, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(123, 20250614344545, 25, 1, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(124, 20250614344545, 25, 2, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(125, 20250614344545, 25, 3, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(126, 20250614344545, 25, 4, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(127, 20250614344545, 25, 5, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(128, 20250614344545, 25, 6, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(130, 20250614355394, 26, 1, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(131, 20250614355394, 26, 2, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(132, 20250614259364, 21, 1, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(133, 20250614259364, 21, 2, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(134, 20250614259364, 21, 3, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(135, 20250614259364, 21, 4, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(136, 20250614259364, 21, 5, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(137, 20250614259364, 21, 6, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(138, 20250614259364, 21, 7, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(139, 20250614259364, 21, 8, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(140, 20250614259364, 21, 9, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(141, 20250614259364, 21, 10, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(142, 20250614259364, 21, 11, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(143, 20250614259364, 21, 12, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(144, 20250614322704, 18, 1, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(145, 20250614322704, 18, 2, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(146, 20250614355394, 26, 3, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(147, 20250614355394, 26, 4, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(148, 20250614355394, 26, 5, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(149, 20250614355394, 26, 6, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(150, 20250614355394, 26, 7, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(151, 20250614355394, 26, 8, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(152, 20250614355394, 26, 9, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(153, 20250614355394, 26, 10, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(154, 20250614355394, 26, 11, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49'),
(155, 20250614355394, 26, 12, 0, 0, '2024-04-25 12:10:49', '2024-04-25 12:10:49');

-- --------------------------------------------------------

--
-- Table structure for table `bets`
--

CREATE TABLE `bets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bets` text DEFAULT NULL,
  `amount` double(20,2) NOT NULL DEFAULT 0.00,
  `commission` double(20,2) NOT NULL DEFAULT 0.00,
  `trade_amount` double(20,2) NOT NULL DEFAULT 0.00,
  `win_amount` double(20,2) NOT NULL DEFAULT 0.00,
  `number` varchar(200) NOT NULL,
  `win_number` int(11) DEFAULT NULL,
  `games_no` varchar(64) NOT NULL,
  `game_id` int(11) NOT NULL,
  `userid` bigint(20) NOT NULL,
  `order_id` varchar(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending,1=win,2=lose',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bets`
--

INSERT INTO `bets` (`id`, `bets`, `amount`, `commission`, `trade_amount`, `win_amount`, `number`, `win_number`, `games_no`, `game_id`, `userid`, `order_id`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 1.00, 0.00, 1.00, 0.00, '10', 0, '20250614107297', 1, 1, '2025072809533936095', 2, '2025-07-28 09:53:39', '2025-07-28 09:53:44'),
(2, NULL, 1.00, 0.00, 1.00, 0.00, '10', 4, '20250614110550', 1, 1, '2025072913321255778', 2, '2025-07-29 13:32:12', '2025-07-29 13:32:30'),
(3, NULL, 10.00, 0.00, 10.00, 0.00, '10', 2, '20250614071804', 2, 1, '2025072913324394742', 2, '2025-07-29 13:32:43', '2025-07-29 13:33:00'),
(4, NULL, 10.00, 0.00, 10.00, 0.00, '20', 7, '20250614050165', 4, 1, '2025072913333623981', 2, '2025-07-29 13:33:36', '2025-07-29 13:35:01'),
(5, NULL, 5.00, 0.00, 5.00, 10.00, '10', 7, '20250614046323', 3, 1, '2025072913533793115', 1, '2025-07-29 13:53:37', '2025-07-29 14:01:03'),
(6, NULL, 1.00, 0.00, 1.00, 0.00, '20', 1, '20250614110585', 1, 803, '2025072913565931687', 2, '2025-07-29 13:56:59', '2025-07-29 13:58:31'),
(7, NULL, 1.00, 0.00, 1.00, 0.00, '40', 1, '20250614110585', 1, 803, '2025072913570365195', 2, '2025-07-29 13:57:03', '2025-07-29 13:58:31'),
(8, NULL, 10.00, 0.00, 10.00, 20.00, '10', 1, '20250614110585', 1, 812, '2025072913571782439', 1, '2025-07-29 13:57:17', '2025-07-29 13:58:31'),
(9, NULL, 1.00, 0.00, 1.00, 0.00, '40', 1, '20250614110585', 1, 803, '2025072913580994445', 2, '2025-07-29 13:58:09', '2025-07-29 13:58:31'),
(10, NULL, 1.00, 0.00, 1.00, 2.00, '50', 1, '20250614110585', 1, 803, '2025072913581293720', 1, '2025-07-29 13:58:12', '2025-07-29 13:58:31'),
(11, NULL, 1.00, 0.00, 1.00, 0.00, '9', 3, '20250614111040', 1, 1, '2025072917514819436', 2, '2025-07-29 17:51:48', '2025-07-29 17:52:00'),
(12, NULL, 1.00, 0.00, 1.00, 0.00, '8', 1, '20250614112659', 1, 1, '2025073007461451366', 2, '2025-07-30 07:46:14', '2025-07-30 07:46:41'),
(13, NULL, 1.00, 0.00, 1.00, 2.00, '50', 1, '20250614112659', 1, 1, '2025073007462168383', 1, '2025-07-30 07:46:21', '2025-07-30 07:46:41'),
(14, NULL, 300.00, 0.00, 300.00, 0.00, '10', 2, '20250614113363', 1, 819, '2025073013484687218', 2, '2025-07-30 13:48:46', '2025-07-30 13:49:02'),
(15, NULL, 20.00, 0.00, 20.00, 0.00, '10', 2, '20250614113364', 1, 819, '2025073013491699067', 2, '2025-07-30 13:49:16', '2025-07-30 13:49:32'),
(16, NULL, 10.00, 0.00, 10.00, 0.00, '10', 8, '20250614128032', 1, 2, '2025080415450487386', 2, '2025-08-04 15:45:04', '2025-08-04 15:45:48'),
(17, NULL, 10.00, 0.00, 10.00, 0.00, '20', 8, '20250614128032', 1, 2, '2025080415453641171', 2, '2025-08-04 15:45:36', '2025-08-04 15:45:48'),
(18, NULL, 10.00, 0.00, 10.00, 20.00, '10', 1, '20250614128033', 1, 2, '2025080415460421459', 1, '2025-08-04 15:46:04', '2025-08-04 15:46:28'),
(19, NULL, 10.00, 0.00, 10.00, 0.00, '10', 2, '20250614128042', 1, 2, '2025080415482279898', 2, '2025-08-04 15:48:22', '2025-08-04 15:49:57'),
(20, NULL, 10.00, 0.00, 10.00, 0.00, '1', NULL, '202509061234', 1, 1, '2025080615155744826', 0, '2025-08-06 15:15:57', '2025-08-06 15:15:57'),
(21, NULL, 10.00, 0.00, 10.00, 0.00, '10', 6, '20250614132895', 1, 2, '2025080615163361936', 2, '2025-08-06 15:16:33', '2025-08-06 15:16:47'),
(22, NULL, 1.00, 0.00, 1.00, 2.00, '30', 4, '20250614132896', 1, 7, '2025080615170890689', 1, '2025-08-06 15:17:08', '2025-08-06 15:17:47'),
(23, NULL, 1.00, 0.00, 1.00, 0.00, '1', 3, '20250614135305', 1, 4, '2025080711505740083', 2, '2025-08-07 11:50:57', '2025-08-07 11:51:20'),
(24, NULL, 1.00, 0.00, 1.00, 0.00, '40', 4, '20250614144338', 1, 1, '2025081015182977397', 2, '2025-08-10 15:18:29', '2025-08-10 15:18:42'),
(25, NULL, 1.00, 0.00, 1.00, 2.00, '50', 4, '20250614144338', 1, 1, '2025081015183190810', 1, '2025-08-10 15:18:31', '2025-08-10 15:18:42'),
(26, NULL, 1.00, 0.00, 1.00, 0.00, '0', 8, '20250614144339', 1, 1, '2025081015185292188', 2, '2025-08-10 15:18:52', '2025-08-10 15:19:13'),
(27, NULL, 1.00, 0.00, 1.00, 0.00, '1', 8, '20250614144339', 1, 1, '2025081015185485036', 2, '2025-08-10 15:18:54', '2025-08-10 15:19:13'),
(28, NULL, 1.00, 0.00, 1.00, 0.00, '40', 4, '20250614150156', 1, 8, '2025081215103696700', 2, '2025-08-12 15:10:36', '2025-08-12 15:10:57'),
(29, NULL, 1.00, 0.00, 1.00, 2.00, '50', 4, '20250614150156', 1, 8, '2025081215103839001', 1, '2025-08-12 15:10:38', '2025-08-12 15:10:57'),
(30, NULL, 3000.00, 0.00, 3000.00, 0.00, '10', 8, '20250614150161', 1, 2, '2025081215131192833', 2, '2025-08-12 15:13:11', '2025-08-12 15:13:29'),
(31, NULL, 500.00, 0.00, 500.00, 0.00, '10', 8, '20250614150368', 1, 2, '2025081216561460228', 2, '2025-08-12 16:56:14', '2025-08-12 16:56:30'),
(32, NULL, 500.00, 0.00, 500.00, 0.00, '0', 9, '20250614152382', 1, 8, '2025081309390336116', 2, '2025-08-13 09:39:03', '2025-08-13 09:39:22'),
(33, NULL, 100.00, 0.00, 100.00, 0.00, '8', 9, '20250614152383', 1, 8, '2025081309394126070', 2, '2025-08-13 09:39:41', '2025-08-13 09:39:53'),
(34, NULL, 500.00, 0.00, 500.00, 0.00, '5', 9, '20250614152383', 1, 8, '2025081309394611976', 2, '2025-08-13 09:39:46', '2025-08-13 09:39:53'),
(35, NULL, 10.00, 0.00, 10.00, 90.00, '2', 2, '20250614093399', 2, 1, '2025081314450393249', 1, '2025-08-13 14:45:03', '2025-08-13 14:45:58'),
(36, NULL, 100.00, 0.00, 100.00, 0.00, '3', 2, '20250614093399', 2, 1, '2025081314451036168', 2, '2025-08-13 14:45:10', '2025-08-13 14:45:58'),
(37, NULL, 2.00, 0.00, 2.00, 4.00, '10', 7, '20250614155227', 1, 2, '2025081409204933905', 1, '2025-08-14 09:20:49', '2025-08-14 09:20:57'),
(38, NULL, 1000.00, 0.00, 1000.00, 0.00, '10', 8, '20250614155810', 1, 2, '2025081414102422021', 2, '2025-08-14 14:10:24', '2025-08-14 14:10:29');

-- --------------------------------------------------------

--
-- Table structure for table `bet_results`
--

CREATE TABLE `bet_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) DEFAULT NULL,
  `win_number` varchar(255) DEFAULT NULL,
  `games_no` varchar(255) DEFAULT NULL,
  `game_id` double NOT NULL DEFAULT 0,
  `json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `card_name` text NOT NULL DEFAULT '0',
  `image` text DEFAULT NULL,
  `card_id` int(11) DEFAULT NULL,
  `multiplier` double DEFAULT NULL,
  `random_card` varchar(255) NOT NULL DEFAULT '0',
  `token` varchar(255) DEFAULT NULL,
  `block` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bet_results`
--

INSERT INTO `bet_results` (`id`, `number`, `win_number`, `games_no`, `game_id`, `json`, `card_name`, `image`, `card_id`, `multiplier`, `random_card`, `token`, `block`, `status`, `created_at`, `updated_at`) VALUES
(1, 8, NULL, '20250614156007', 1, '[\"8\",\"Big\",\"Red\"]', '0', NULL, NULL, NULL, '8', NULL, NULL, 1, '2025-08-14 15:41:13', '2025-08-14 15:41:13'),
(2, 4, NULL, '20250614054033', 3, '[\"4\",\"Small\",\"Red\"]', '0', NULL, NULL, NULL, '4', NULL, NULL, 1, '2025-08-14 15:41:17', '2025-08-14 15:41:17'),
(3, 7, NULL, '20250614054765', 4, '[\"7\",\"Big\",\"Green\"]', '0', NULL, NULL, NULL, '7', NULL, NULL, 1, '2025-08-14 15:41:30', '2025-08-14 15:41:30'),
(4, 6, NULL, '20250614156008', 1, '[\"6\",\"Big\",\"Red\"]', '0', NULL, NULL, NULL, '6', NULL, NULL, 1, '2025-08-14 15:41:44', '2025-08-14 15:41:44'),
(5, 9, NULL, '20250614094930', 2, '[\"9\",\"Big\",\"Green\"]', '0', NULL, NULL, NULL, '9', NULL, NULL, 1, '2025-08-14 15:41:55', '2025-08-14 15:41:55'),
(6, 0, NULL, '20250614156009', 1, '[\"0\",\"Small\",\"Voilet\"]', '0', NULL, NULL, NULL, '0', NULL, NULL, 1, '2025-08-14 15:42:13', '2025-08-14 15:42:13'),
(7, 9, NULL, '20250614156010', 1, '[\"9\",\"Big\",\"Green\"]', '0', NULL, NULL, NULL, '9', NULL, NULL, 1, '2025-08-14 15:42:44', '2025-08-14 15:42:44');

-- --------------------------------------------------------

--
-- Table structure for table `bet_values`
--

CREATE TABLE `bet_values` (
  `id` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT 1 COMMENT '1 = Active, 0 = Inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bet_values`
--

INSERT INTO `bet_values` (`id`, `value`, `status`, `created_at`, `updated_at`) VALUES
(1, 200, 1, '2025-06-26 06:44:23', '2025-07-28 09:46:52'),
(2, 210, 1, '2025-06-26 06:44:23', '2025-07-12 15:17:46'),
(3, 500, 1, '2025-06-26 06:44:23', '2025-06-26 14:38:46'),
(4, 1000, 1, '2025-06-26 06:44:23', '2025-06-26 14:38:52');

-- --------------------------------------------------------

--
-- Table structure for table `camleniopaycallback`
--

CREATE TABLE `camleniopaycallback` (
  `id` int(11) NOT NULL,
  `data` longtext DEFAULT NULL,
  `AddRefNo` varchar(255) DEFAULT NULL,
  `auth_id` varchar(150) DEFAULT NULL,
  `orderid` varchar(155) DEFAULT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `card` varchar(2) NOT NULL,
  `colour` varchar(2) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`id`, `card`, `colour`, `image`, `created_at`, `updated_at`) VALUES
(1, '2', 'c', 'https://root.gameon.deals/public/uploads/patton_ke_naam/1.png', NULL, NULL),
(2, '2', 'e', 'https://root.gameon.deals/public/uploads/patton_ke_naam/2.png', NULL, NULL),
(3, '2', 'k', 'https://root.gameon.deals/public/uploads/patton_ke_naam/3.png', NULL, NULL),
(4, '2', 'd', 'https://root.gameon.deals/public/uploads/patton_ke_naam/4.png', NULL, NULL),
(5, '3', 'c', 'https://root.gameon.deals/public/uploads/patton_ke_naam/5.png', NULL, NULL),
(6, '3', 'e', 'https://root.gameon.deals/public/uploads/patton_ke_naam/6.png', NULL, NULL),
(7, '3', 'k', 'https://root.gameon.deals/public/uploads/patton_ke_naam/7.png', NULL, NULL),
(8, '3', 'd', 'https://root.gameon.deals/public/uploads/patton_ke_naam/8.png', NULL, NULL),
(9, '4', 'c', 'https://root.gameon.deals/public/uploads/patton_ke_naam/9.png', NULL, NULL),
(10, '4', 'e', 'https://root.gameon.deals/public/uploads/patton_ke_naam/10.png', NULL, NULL),
(11, '4', 'k', 'https://root.gameon.deals/public/uploads/patton_ke_naam/11.png', NULL, NULL),
(12, '4', 'd', 'https://root.gameon.deals/public/uploads/patton_ke_naam/12.png', NULL, NULL),
(13, '5', 'c', 'https://root.gameon.deals/public/uploads/patton_ke_naam/13.png', NULL, NULL),
(14, '5', 'e', 'https://root.gameon.deals/public/uploads/patton_ke_naam/14.png', NULL, NULL),
(15, '5', 'k', 'https://root.gameon.deals/public/uploads/patton_ke_naam/15.png', NULL, NULL),
(16, '5', 'd', 'https://root.gameon.deals/public/uploads/patton_ke_naam/16.png', NULL, NULL),
(17, '6', 'c', 'https://root.gameon.deals/public/uploads/patton_ke_naam/17.png', NULL, NULL),
(18, '6', 'e', 'https://root.gameon.deals/public/uploads/patton_ke_naam/18.png', NULL, NULL),
(19, '6', 'k', 'https://root.gameon.deals/public/uploads/patton_ke_naam/19.png', NULL, NULL),
(20, '6', 'd', 'https://root.gameon.deals/public/uploads/patton_ke_naam/20.png', NULL, NULL),
(21, '7', 'c', 'https://root.gameon.deals/public/uploads/patton_ke_naam/21.png', NULL, NULL),
(22, '7', 'e', 'https://root.gameon.deals/public/uploads/patton_ke_naam/22.png', NULL, NULL),
(23, '7', 'k', 'https://root.gameon.deals/public/uploads/patton_ke_naam/23.png', NULL, NULL),
(24, '7', 'd', 'https://root.gameon.deals/public/uploads/patton_ke_naam/24.png', NULL, NULL),
(25, '8', 'c', 'https://root.gameon.deals/public/uploads/patton_ke_naam/25.png', NULL, NULL),
(26, '8', 'e', 'https://root.gameon.deals/public/uploads/patton_ke_naam/26.png', NULL, NULL),
(27, '8', 'k', 'https://root.gameon.deals/public/uploads/patton_ke_naam/27.png', NULL, NULL),
(28, '8', 'd', 'https://root.gameon.deals/public/uploads/patton_ke_naam/28.png', NULL, NULL),
(29, '9', 'c', 'https://root.gameon.deals/public/uploads/patton_ke_naam/29.png', NULL, NULL),
(30, '9', 'e', 'https://root.gameon.deals/public/uploads/patton_ke_naam/30.png', NULL, NULL),
(31, '9', 'k', 'https://root.gameon.deals/public/uploads/patton_ke_naam/31.png', NULL, NULL),
(32, '9', 'd', 'https://root.gameon.deals/public/uploads/patton_ke_naam/32.png', NULL, NULL),
(33, '10', 'c', 'https://root.gameon.deals/public/uploads/patton_ke_naam/33.png', NULL, NULL),
(34, '10', 'e', 'https://root.gameon.deals/public/uploads/patton_ke_naam/34.png', NULL, NULL),
(35, '10', 'k', 'https://root.gameon.deals/public/uploads/patton_ke_naam/35.png', NULL, NULL),
(36, '10', 'd', 'https://root.gameon.deals/public/uploads/patton_ke_naam/36.png', NULL, NULL),
(37, '11', 'c', 'https://root.gameon.deals/public/uploads/patton_ke_naam/37.png', NULL, NULL),
(38, '11', 'e', 'https://root.gameon.deals/public/uploads/patton_ke_naam/38.png', NULL, NULL),
(39, '11', 'k', 'https://root.gameon.deals/public/uploads/patton_ke_naam/39.png', NULL, NULL),
(40, '11', 'd', 'https://root.gameon.deals/public/uploads/patton_ke_naam/40.png', NULL, NULL),
(41, '12', 'c', 'https://root.gameon.deals/public/uploads/patton_ke_naam/41.png', NULL, NULL),
(42, '12', 'e', 'https://root.gameon.deals/public/uploads/patton_ke_naam/42.png', NULL, NULL),
(43, '12', 'k', 'https://root.gameon.deals/public/uploads/patton_ke_naam/43.png', NULL, NULL),
(44, '12', 'd', 'https://root.gameon.deals/public/uploads/patton_ke_naam/44.png', NULL, NULL),
(45, '13', 'c', 'https://root.gameon.deals/public/uploads/patton_ke_naam/45.png', NULL, NULL),
(46, '13', 'e', 'https://root.gameon.deals/public/uploads/patton_ke_naam/46.png', NULL, NULL),
(47, '13', 'k', 'https://root.gameon.deals/public/uploads/patton_ke_naam/47.png', NULL, NULL),
(48, '13', 'd', 'https://root.gameon.deals/public/uploads/patton_ke_naam/48.png', NULL, NULL),
(49, '14', 'c', 'https://root.gameon.deals/public/uploads/patton_ke_naam/49.png', NULL, NULL),
(50, '14', 'e', 'https://root.gameon.deals/public/uploads/patton_ke_naam/50.png', NULL, NULL),
(51, '14', 'k', 'https://root.gameon.deals/public/uploads/patton_ke_naam/51.png', NULL, NULL),
(52, '14', 'd', 'https://root.gameon.deals/public/uploads/patton_ke_naam/52.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `checkin_redeems`
--

CREATE TABLE `checkin_redeems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `table_id` bigint(20) UNSIGNED NOT NULL,
  `day` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `check_ins`
--

CREATE TABLE `check_ins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `day` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chicken_bets`
--

CREATE TABLE `chicken_bets` (
  `id` int(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `status` int(1) DEFAULT 1 COMMENT '0=pending,1=success,2=loss',
  `win_amount` double(8,2) DEFAULT 0.00,
  `period_no` bigint(20) DEFAULT NULL,
  `game_id` int(2) DEFAULT NULL,
  `win_number` int(1) DEFAULT NULL,
  `multiplier` decimal(20,2) DEFAULT 0.00,
  `account_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'type 0=real,1=demo',
  `cashout_status` int(5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `sortname` varchar(3) NOT NULL,
  `name` varchar(55) NOT NULL,
  `phone_code` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `sortname`, `name`, `phone_code`) VALUES
(1, 'IN', 'India', '+91'),
(2, 'AL', 'Albania', '+355'),
(3, 'DZ', 'Algeria', '+213'),
(4, 'AS', 'American Samoa', '+1684'),
(5, 'AD', 'Andorra', '+376'),
(6, 'AO', 'Angola', '+244'),
(7, 'AI', 'Anguilla', '+1264'),
(8, 'AQ', 'Antarctica', '+0'),
(9, 'AG', 'Antigua And Barbuda', '+1268'),
(10, 'AR', 'Argentina', '+54'),
(11, 'AM', 'Armenia', '+374'),
(12, 'AW', 'Aruba', '+297'),
(13, 'AU', 'Australia', '+61'),
(14, 'AT', 'Austria', '+43'),
(15, 'AZ', 'Azerbaijan', '+994'),
(16, 'BS', 'Bahamas The', '+1242'),
(17, 'BH', 'Bahrain', '+973'),
(18, 'BD', 'Bangladesh', '+880'),
(19, 'BB', 'Barbados', '+1246'),
(20, 'BY', 'Belarus', '+375'),
(21, 'BE', 'Belgium', '+32'),
(22, 'BZ', 'Belize', '+501'),
(23, 'BJ', 'Benin', '+229'),
(24, 'BM', 'Bermuda', '+1441'),
(25, 'BT', 'Bhutan', '+975'),
(26, 'BO', 'Bolivia', '+591'),
(27, 'BA', 'Bosnia and Herzegovina', '+387'),
(28, 'BW', 'Botswana', '+267'),
(29, 'BV', 'Bouvet Island', '+0'),
(30, 'BR', 'Brazil', '+55'),
(31, 'IO', 'British Indian Ocean Territory', '+246'),
(32, 'BN', 'Brunei', '+673'),
(33, 'BG', 'Bulgaria', '+359'),
(34, 'BF', 'Burkina Faso', '+226'),
(35, 'BI', 'Burundi', '+257'),
(36, 'KH', 'Cambodia', '+855'),
(37, 'CM', 'Cameroon', '+237'),
(38, 'CA', 'Canada', '+1'),
(39, 'CV', 'Cape Verde', '+238'),
(40, 'KY', 'Cayman Islands', '+1345'),
(41, 'CF', 'Central African Republic', '+236'),
(42, 'TD', 'Chad', '+235'),
(43, 'CL', 'Chile', '+56'),
(44, 'CN', 'China', '+86'),
(45, 'CX', 'Christmas Island', '+61'),
(46, 'CC', 'Cocos (Keeling) Islands', '+672'),
(47, 'CO', 'Colombia', '+57'),
(48, 'KM', 'Comoros', '+269'),
(49, 'CG', 'Republic Of The Congo', '+242'),
(50, 'CD', 'Democratic Republic Of The Congo', '+242'),
(51, 'CK', 'Cook Islands', '+682'),
(52, 'CR', 'Costa Rica', '+506'),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)', '+225'),
(54, 'HR', 'Croatia (Hrvatska)', '+385'),
(55, 'CU', 'Cuba', '+53'),
(56, 'CY', 'Cyprus', '+357'),
(57, 'CZ', 'Czech Republic', '+420'),
(58, 'DK', 'Denmark', '+45'),
(59, 'DJ', 'Djibouti', '+253'),
(60, 'DM', 'Dominica', '+1767'),
(61, 'DO', 'Dominican Republic', '+1809'),
(62, 'TP', 'East Timor', '+670'),
(63, 'EC', 'Ecuador', '+593'),
(64, 'EG', 'Egypt', '+20'),
(65, 'SV', 'El Salvador', '+503'),
(66, 'GQ', 'Equatorial Guinea', '+240'),
(67, 'ER', 'Eritrea', '+291'),
(68, 'EE', 'Estonia', '+372'),
(69, 'ET', 'Ethiopia', '+251'),
(70, 'XA', 'External Territories of Australia', '+61'),
(71, 'FK', 'Falkland Islands', '+500'),
(72, 'FO', 'Faroe Islands', '+298'),
(73, 'FJ', 'Fiji Islands', '+679'),
(74, 'FI', 'Finland', '+358'),
(75, 'FR', 'France', '+33'),
(76, 'GF', 'French Guiana', '+594'),
(77, 'PF', 'French Polynesia', '+689'),
(78, 'TF', 'French Southern Territories', '+0'),
(79, 'GA', 'Gabon', '+241'),
(80, 'GM', 'Gambia The', '+220'),
(81, 'GE', 'Georgia', '+995'),
(82, 'DE', 'Germany', '+49'),
(83, 'GH', 'Ghana', '+233'),
(84, 'GI', 'Gibraltar', '+350'),
(85, 'GR', 'Greece', '+30'),
(86, 'GL', 'Greenland', '+299'),
(87, 'GD', 'Grenada', '+1473'),
(88, 'GP', 'Guadeloupe', '+590'),
(89, 'GU', 'Guam', '+1671'),
(90, 'GT', 'Guatemala', '+502'),
(91, 'XU', 'Guernsey and Alderney', '+44'),
(92, 'GN', 'Guinea', '+224'),
(93, 'GW', 'Guinea-Bissau', '+245'),
(94, 'GY', 'Guyana', '+592'),
(95, 'HT', 'Haiti', '+509'),
(96, 'HM', 'Heard and McDonald Islands', '+0'),
(97, 'HN', 'Honduras', '+504'),
(98, 'HK', 'Hong Kong S.A.R.', '+852'),
(99, 'HU', 'Hungary', '+36'),
(100, 'IS', 'Iceland', '+354'),
(101, 'AF', 'Afghanistan', '+93'),
(102, 'ID', 'Indonesia', '+62'),
(103, 'IR', 'Iran', '+98'),
(104, 'IQ', 'Iraq', '+964'),
(105, 'IE', 'Ireland', '+353'),
(106, 'IL', 'Israel', '+972'),
(107, 'IT', 'Italy', '+39'),
(108, 'JM', 'Jamaica', '+1876'),
(109, 'JP', 'Japan', '+81'),
(110, 'XJ', 'Jersey', '+44'),
(111, 'JO', 'Jordan', '+962'),
(112, 'KZ', 'Kazakhstan', '+7'),
(113, 'KE', 'Kenya', '+254'),
(114, 'KI', 'Kiribati', '+686'),
(115, 'KP', 'Korea North', '+850'),
(116, 'KR', 'Korea South', '+82'),
(117, 'KW', 'Kuwait', '+965'),
(118, 'KG', 'Kyrgyzstan', '+996'),
(119, 'LA', 'Laos', '+856'),
(120, 'LV', 'Latvia', '+371'),
(121, 'LB', 'Lebanon', '+961'),
(122, 'LS', 'Lesotho', '+266'),
(123, 'LR', 'Liberia', '+231'),
(124, 'LY', 'Libya', '+218'),
(125, 'LI', 'Liechtenstein', '+423'),
(126, 'LT', 'Lithuania', '+370'),
(127, 'LU', 'Luxembourg', '+352'),
(128, 'MO', 'Macau S.A.R.', '+853'),
(129, 'MK', 'Macedonia', '+389'),
(130, 'MG', 'Madagascar', '+261'),
(131, 'MW', 'Malawi', '+265'),
(132, 'MY', 'Malaysia', '+60'),
(133, 'MV', 'Maldives', '+960'),
(134, 'ML', 'Mali', '+223'),
(135, 'MT', 'Malta', '+356'),
(136, 'XM', 'Man (Isle of)', '+44'),
(137, 'MH', 'Marshall Islands', '+692'),
(138, 'MQ', 'Martinique', '+596'),
(139, 'MR', 'Mauritania', '+222'),
(140, 'MU', 'Mauritius', '+230'),
(141, 'YT', 'Mayotte', '+269'),
(142, 'MX', 'Mexico', '+52'),
(143, 'FM', 'Micronesia', '+691'),
(144, 'MD', 'Moldova', '+373'),
(145, 'MC', 'Monaco', '+377'),
(146, 'MN', 'Mongolia', '+976'),
(147, 'MS', 'Montserrat', '+1664'),
(148, 'MA', 'Morocco', '+212'),
(149, 'MZ', 'Mozambique', '+258'),
(150, 'MM', 'Myanmar', '+95'),
(151, 'NA', 'Namibia', '+264'),
(152, 'NR', 'Nauru', '+674'),
(153, 'NP', 'Nepal', '+977'),
(154, 'AN', 'Netherlands Antilles', '+599'),
(155, 'NL', 'Netherlands The', '+31'),
(156, 'NC', 'New Caledonia', '+687'),
(157, 'NZ', 'New Zealand', '+64'),
(158, 'NI', 'Nicaragua', '+505'),
(159, 'NE', 'Niger', '+227'),
(160, 'NG', 'Nigeria', '+234'),
(161, 'NU', 'Niue', '+683'),
(162, 'NF', 'Norfolk Island', '+672'),
(163, 'MP', 'Northern Mariana Islands', '+1670'),
(164, 'NO', 'Norway', '+47'),
(165, 'OM', 'Oman', '+968'),
(166, 'PK', 'Pakistan', '+92'),
(167, 'PW', 'Palau', '+680'),
(168, 'PS', 'Palestinian Territory Occupied', '+970'),
(169, 'PA', 'Panama', '+507'),
(170, 'PG', 'Papua new Guinea', '+675'),
(171, 'PY', 'Paraguay', '+595'),
(172, 'PE', 'Peru', '+51'),
(173, 'PH', 'Philippines', '+63'),
(174, 'PN', 'Pitcairn Island', '+0'),
(175, 'PL', 'Poland', '+48'),
(176, 'PT', 'Portugal', '+351'),
(177, 'PR', 'Puerto Rico', '+1787'),
(178, 'QA', 'Qatar', '+974'),
(179, 'RE', 'Reunion', '+262'),
(180, 'RO', 'Romania', '+40'),
(181, 'RU', 'Russia', '+70'),
(182, 'RW', 'Rwanda', '+250'),
(183, 'SH', 'Saint Helena', '+290'),
(184, 'KN', 'Saint Kitts And Nevis', '+1869'),
(185, 'LC', 'Saint Lucia', '+1758'),
(186, 'PM', 'Saint Pierre and Miquelon', '+508'),
(187, 'VC', 'Saint Vincent And The Grenadines', '+1784'),
(188, 'WS', 'Samoa', '+684'),
(189, 'SM', 'San Marino', '+378'),
(190, 'ST', 'Sao Tome and Principe', '+239'),
(191, 'SA', 'Saudi Arabia', '+966'),
(192, 'SN', 'Senegal', '+221'),
(193, 'RS', 'Serbia', '+381'),
(194, 'SC', 'Seychelles', '+248'),
(195, 'SL', 'Sierra Leone', '+232'),
(196, 'SG', 'Singapore', '+65'),
(197, 'SK', 'Slovakia', '+421'),
(198, 'SI', 'Slovenia', '+386'),
(199, 'XG', 'Smaller Territories of the UK', '+44'),
(200, 'SB', 'Solomon Islands', '+677'),
(201, 'SO', 'Somalia', '+252'),
(202, 'ZA', 'South Africa', '+27'),
(203, 'GS', 'South Georgia', '+0'),
(204, 'SS', 'South Sudan', '+211'),
(205, 'ES', 'Spain', '+34'),
(206, 'LK', 'Sri Lanka', '+94'),
(207, 'SD', 'Sudan', '+249'),
(208, 'SR', 'Suriname', '+597'),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', '+47'),
(210, 'SZ', 'Swaziland', '+268'),
(211, 'SE', 'Sweden', '+46'),
(212, 'CH', 'Switzerland', '+41'),
(213, 'SY', 'Syria', '+963'),
(214, 'TW', 'Taiwan', '+886'),
(215, 'TJ', 'Tajikistan', '+992'),
(216, 'TZ', 'Tanzania', '+255'),
(217, 'TH', 'Thailand', '+66'),
(218, 'TG', 'Togo', '+228'),
(219, 'TK', 'Tokelau', '+690'),
(220, 'TO', 'Tonga', '+676'),
(221, 'TT', 'Trinidad And Tobago', '+1868'),
(222, 'TN', 'Tunisia', '+216'),
(223, 'TR', 'Turkey', '+90'),
(224, 'TM', 'Turkmenistan', '+7370'),
(225, 'TC', 'Turks And Caicos Islands', '+1649'),
(226, 'TV', 'Tuvalu', '+688'),
(227, 'UG', 'Uganda', '+256'),
(228, 'UA', 'Ukraine', '+380'),
(229, 'AE', 'United Arab Emirates', '+971'),
(230, 'GB', 'United Kingdom', '+44'),
(231, 'US', 'United States', '+1'),
(232, 'UM', 'United States Minor Outlying Islands', '+1'),
(233, 'UY', 'Uruguay', '+598'),
(234, 'UZ', 'Uzbekistan', '+998'),
(235, 'VU', 'Vanuatu', '+678'),
(236, 'VA', 'Vatican City State (Holy See)', '+39'),
(237, 'VE', 'Venezuela', '+58'),
(238, 'VN', 'Vietnam', '+84'),
(239, 'VG', 'Virgin Islands (British)', '+1284'),
(240, 'VI', 'Virgin Islands (US)', '+1340'),
(241, 'WF', 'Wallis And Futuna Islands', '+681'),
(242, 'EH', 'Western Sahara', '+212'),
(243, 'YE', 'Yemen', '+967'),
(244, 'YU', 'Yugoslavia', '+38'),
(245, 'ZM', 'Zambia', '+260'),
(246, 'ZW', 'Zimbabwe', '+263');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(20) NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `number_people` varchar(20) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_services`
--

CREATE TABLE `customer_services` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `customer_services`
--

INSERT INTO `customer_services` (`id`, `name`, `image`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Telegram', 'https://root.realwin.world/uploads/icon/telegram.png', 'https://t.me/', 1, '2024-04-25 06:18:35', '2024-04-25 06:18:35'),
(2, 'Channel', 'https://root.realwin.world/uploads/icon/telegram.png', 'https://t.me/', 1, '2024-04-25 06:18:35', '2024-04-25 06:18:35'),
(3, 'Email', 'https://root.realwin.world/uploads/icon/email.png', 'mailto:realwin.world@gmail.com', 1, '2024-04-25 06:18:35', '2024-04-25 06:18:35');

-- --------------------------------------------------------

--
-- Table structure for table `deposit_category`
--

CREATE TABLE `deposit_category` (
  `id` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `bonus` double DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `extra_first_deposit_bonus`
--

CREATE TABLE `extra_first_deposit_bonus` (
  `id` int(11) NOT NULL,
  `tier_name` varchar(255) NOT NULL,
  `first_deposit_ammount` double NOT NULL,
  `bonus` double NOT NULL,
  `max_amount` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `extra_first_deposit_bonus`
--

INSERT INTO `extra_first_deposit_bonus` (`id`, `tier_name`, `first_deposit_ammount`, `bonus`, `max_amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Starter shot', 199, 101, 498, 1, '2024-04-29 08:22:29', '2024-04-29 08:22:29'),
(2, 'Lucky Boost', 499, 301, 998, 1, '2024-04-29 08:22:29', '2024-04-29 08:22:29'),
(3, 'Winner\'s kick', 999, 701, 1998, 1, '2024-04-29 08:23:20', '2024-04-29 08:23:20'),
(4, 'Pro Player', 1999, 1501, 2998, 1, '2024-04-29 08:23:20', '2024-04-29 08:23:20'),
(5, 'High Roller', 2999, 2501, 4998, 1, '2024-04-29 08:23:20', '2024-04-29 08:23:20'),
(6, 'VIP Entry', 4999, 4001, 9998, 1, '2024-04-29 08:23:20', '2024-04-29 08:23:20'),
(7, 'King Of Luck', 9999, 8001, 19998, 1, '2024-04-29 08:23:20', '2024-04-29 08:23:20'),
(8, 'Elite Gambler', 19999, 16001, 29998, 1, '2024-04-29 08:23:20', '2024-04-29 08:23:20'),
(9, 'Table Titan', 29999, 23001, 49998, 1, '2024-04-29 08:23:20', '2024-04-29 08:23:20'),
(10, 'Legand Of Luck', 49999, 40001, 0, 1, '2024-04-29 08:23:20', '2024-04-29 08:23:20');

-- --------------------------------------------------------

--
-- Table structure for table `extra_first_deposit_bonus_claim`
--

CREATE TABLE `extra_first_deposit_bonus_claim` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `extra_fdb_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `bonus` double NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `extra_first_deposit_bonus_claim`
--

INSERT INTO `extra_first_deposit_bonus_claim` (`id`, `userid`, `extra_fdb_id`, `amount`, `bonus`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 499, 301, 1, '2025-08-06 15:51:31', '2025-08-06 15:51:31'),
(2, 4, 1, 199, 101, 0, '2025-08-12 14:46:03', '2025-08-12 14:46:03'),
(3, 8, 1, 199, 101, 0, '2025-08-14 10:01:36', '2025-08-14 10:01:36');

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
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fun_admin_result`
--

CREATE TABLE `fun_admin_result` (
  `id` int(11) NOT NULL,
  `games_no` bigint(20) NOT NULL,
  `number` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fun_bets`
--

CREATE TABLE `fun_bets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `win_amount` double(10,2) NOT NULL DEFAULT 0.00,
  `win_number` int(11) DEFAULT NULL,
  `amount` double(10,2) NOT NULL,
  `games_no` int(11) NOT NULL,
  `description` varchar(111) NOT NULL DEFAULT 'Fun Target Bet',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending,1=win,2=loss',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fun_bet_logs`
--

CREATE TABLE `fun_bet_logs` (
  `id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `games_no` int(111) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `fun_bet_logs`
--

INSERT INTO `fun_bet_logs` (`id`, `game_id`, `number`, `games_no`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 211874, 0.00, '2024-07-16 09:46:48', '2024-07-16 09:46:48'),
(2, 2, 2, 211874, 0.00, '2024-07-16 09:46:48', '2024-07-16 09:46:48'),
(3, 3, 3, 211874, 0.00, '2024-07-16 09:46:48', '2024-07-16 09:46:48'),
(4, 4, 4, 211874, 0.00, '2024-07-16 09:46:48', '2024-07-16 09:46:48'),
(5, 5, 5, 211874, 0.00, '2024-07-16 09:46:48', '2024-07-16 09:46:48'),
(6, 6, 6, 211874, 0.00, '2024-07-16 09:46:48', '2024-07-16 09:46:48'),
(7, 7, 7, 211874, 0.00, '2024-07-16 09:46:48', '2024-07-16 09:46:48'),
(8, 8, 8, 211874, 0.00, '2024-07-16 09:46:48', '2024-07-16 09:46:48'),
(9, 9, 9, 211874, 0.00, '2024-07-16 09:46:48', '2024-07-16 09:46:48'),
(10, 10, 10, 211874, 0.00, '2024-07-16 09:46:48', '2024-07-16 09:46:48');

-- --------------------------------------------------------

--
-- Table structure for table `fun_game_settings`
--

CREATE TABLE `fun_game_settings` (
  `id` int(11) NOT NULL,
  `game_id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `multiplier` double(10,2) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `fun_game_settings`
--

INSERT INTO `fun_game_settings` (`id`, `game_id`, `number`, `multiplier`, `description`) VALUES
(1, 1, 1, 10.00, NULL),
(2, 2, 2, 10.00, NULL),
(3, 3, 3, 10.00, NULL),
(4, 4, 4, 10.00, NULL),
(5, 5, 5, 10.00, NULL),
(6, 6, 6, 10.00, NULL),
(7, 7, 7, 10.00, NULL),
(8, 8, 8, 10.00, NULL),
(9, 9, 9, 10.00, NULL),
(10, 10, 10, 10.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fun_results`
--

CREATE TABLE `fun_results` (
  `id` int(11) NOT NULL,
  `game_id` int(11) DEFAULT NULL,
  `games_no` int(64) NOT NULL DEFAULT 0,
  `number` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fun_wheel`
--

CREATE TABLE `fun_wheel` (
  `id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `index` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `fun_wheel`
--

INSERT INTO `fun_wheel` (`id`, `game_id`, `index`) VALUES
(1, 0, 0),
(2, 9, 2),
(3, 8, 4),
(4, 7, 6),
(5, 6, 8),
(6, 5, 10),
(7, 4, 12),
(8, 3, 14),
(9, 2, 16),
(10, 1, 18);

-- --------------------------------------------------------

--
-- Table structure for table `game_rules`
--

CREATE TABLE `game_rules` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `game_rules`
--

INSERT INTO `game_rules` (`id`, `name`, `value`, `created_at`, `updated_at`, `status`) VALUES
(2, 'min_bet_amount', '5', '2025-06-13 07:28:46', '2025-07-28 04:16:14', 0),
(3, 'max_bet_amount', '100000', '2025-06-13 07:28:46', '2025-06-13 07:28:46', 0),
(6, 'min_recharge', '1500', '2025-06-13 07:28:46', '2025-06-24 12:40:25', 0),
(16, 'min_win', '100', '2025-06-13 07:28:46', '2025-07-12 13:15:03', 0),
(17, 'max_win', '5000', '2025-06-13 07:28:46', '2025-07-12 13:14:54', 0);

-- --------------------------------------------------------

--
-- Table structure for table `game_settings`
--

CREATE TABLE `game_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `betting_fees` decimal(10,2) NOT NULL,
  `rules` text NOT NULL,
  `winning_percentage` decimal(5,2) NOT NULL,
  `time` time NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `game_settings`
--

INSERT INTO `game_settings` (`id`, `name`, `image`, `betting_fees`, `rules`, `winning_percentage`, `time`, `status`, `created_at`, `updated_at`) VALUES
(1, 'wingo 30 Second', '', 10.00, '', 10.00, '00:00:30', 0, NULL, NULL),
(2, 'wingo 1 Minute', '', 10.00, '', 20.00, '00:00:30', 0, NULL, NULL),
(3, 'wingo 3 Minute', '', 10.00, '', 20.00, '00:00:30', 0, NULL, NULL),
(4, 'wingo 5 Minute', '', 10.00, '', 20.00, '00:00:30', 0, NULL, NULL),
(5, 'Aviator', '', 10.00, '', 20.00, '00:00:30', 0, NULL, NULL),
(6, 'Trx 1 Minute', '', 10.00, '', 30.00, '00:00:30', 1, NULL, NULL),
(7, 'Trx 3 Minute', '', 10.00, '', 30.00, '00:00:30', 1, NULL, NULL),
(8, 'Trx 5 Minute', '', 10.00, '', 30.00, '00:00:30', 1, NULL, NULL),
(9, 'Trx 10 minute', '', 10.00, '', 30.00, '00:00:30', 1, NULL, NULL),
(10, 'Dragon Tiger', '', 10.00, '', 20.00, '00:00:30', 1, NULL, NULL),
(11, 'Plinko ', '', 10.00, '', 30.00, '00:00:30', 1, NULL, NULL),
(12, 'Mine Game', '', 10.00, '', 30.00, '00:00:30', 0, NULL, NULL),
(13, 'Andar Bahar', '', 10.00, '', 50.00, '00:00:30', 1, NULL, NULL),
(14, 'Head Tail', '', 10.00, '', 20.00, '00:00:30', 1, NULL, NULL),
(15, '7 Up Down', '', 10.00, '', 20.00, '00:00:30', 1, NULL, NULL),
(16, 'Red & Black', '', 10.00, '', 20.00, '00:00:30', 1, NULL, NULL),
(17, 'Keno', '', 10.00, '', 20.00, '00:00:30', 1, NULL, NULL),
(18, 'Teen Patti', '', 10.00, '', 30.00, '00:00:30', 1, NULL, NULL),
(20, 'Dice', '', 10.00, '', 20.00, '00:00:30', 1, NULL, NULL),
(21, 'Titli kabootar', '', 10.00, '', 20.00, '00:00:30', 1, NULL, NULL),
(22, 'jhandimunda', '', 10.00, '', 20.00, '00:00:30', 1, NULL, NULL),
(23, 'Hot Air Baloon', '', 10.00, '', 20.00, '00:00:30', 1, NULL, NULL),
(24, 'High Low', '', 10.00, '', 20.00, '00:00:30', 1, NULL, NULL),
(25, 'Jackpot', '', 10.00, '', 20.00, '00:00:30', 1, NULL, NULL),
(26, 'Mini Roullete', '', 10.00, '', 20.00, '00:00:30', 1, NULL, NULL),
(27, 'Blockchain Lottery 1Hrs', '', 10.00, '', 20.00, '00:00:30', 1, NULL, NULL),
(28, 'Blockchain Lottery 3Hrs', '', 10.00, '', 20.00, '00:00:30', 1, NULL, NULL),
(29, 'Blockchain Lottery 24Hrs', '', 10.00, '', 20.00, '00:00:30', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gift_cart`
--

CREATE TABLE `gift_cart` (
  `id` int(11) NOT NULL,
  `code` varchar(111) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `number_people` int(11) DEFAULT NULL,
  `availed_num` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `datetime` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `gift_cart`
--

INSERT INTO `gift_cart` (`id`, `code`, `amount`, `number_people`, `availed_num`, `status`, `datetime`) VALUES
(1, '965484240784174', 50, 2, 2, 1, '2025-07-03 17:28:20');

-- --------------------------------------------------------

--
-- Table structure for table `gift_claim`
--

CREATE TABLE `gift_claim` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `gift_code` varchar(250) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `gift_claim`
--

INSERT INTO `gift_claim` (`id`, `userid`, `gift_code`, `amount`, `status`, `datetime`) VALUES
(1, 1, '965484240784174', 50, 1, '2025-07-03 17:28:41'),
(2, 788, '965484240784174', 50, 1, '2025-07-03 17:29:03');

-- --------------------------------------------------------

--
-- Table structure for table `high_low_bets`
--

CREATE TABLE `high_low_bets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `commission` double NOT NULL DEFAULT 0,
  `trade_amount` double NOT NULL DEFAULT 0,
  `win_amount` double(20,2) NOT NULL DEFAULT 0.00,
  `number` int(11) NOT NULL COMMENT 'High=1,Low=2',
  `card_number` int(11) DEFAULT NULL,
  `result_card` int(11) DEFAULT NULL,
  `win_number` int(11) DEFAULT NULL,
  `games_no` varchar(555) NOT NULL,
  `game_id` int(11) NOT NULL,
  `userid` bigint(20) NOT NULL,
  `order_id` varchar(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending,1=win,2=lose',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invite_bonus`
--

CREATE TABLE `invite_bonus` (
  `id` int(11) NOT NULL,
  `no_of_user` int(11) NOT NULL,
  `amount` double NOT NULL,
  `claim_amount` double NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1=pending,0=expire',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `invite_bonus`
--

INSERT INTO `invite_bonus` (`id`, `no_of_user`, `amount`, `claim_amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 300, 38, 1, '2024-12-24 11:50:44', '2024-12-24 11:50:44'),
(2, 3, 300, 158, 1, '2024-12-24 11:50:44', '2024-12-24 11:50:44'),
(3, 10, 500, 580, 1, '2024-12-24 11:50:44', '2024-12-24 11:50:44'),
(4, 30, 800, 1800, 1, '2024-12-24 11:50:44', '2024-12-24 11:50:44'),
(5, 50, 1200, 2800, 1, '2024-12-24 11:50:44', '2024-12-24 11:50:44'),
(6, 75, 1200, 4500, 1, '2024-12-24 11:50:44', '2024-12-24 11:50:44'),
(7, 100, 1200, 5800, 1, '2024-12-24 11:50:44', '2024-12-24 11:50:44'),
(8, 200, 1200, 11800, 1, '2024-12-24 11:50:44', '2024-12-24 11:50:44'),
(9, 500, 1200, 29000, 1, '2024-12-24 11:50:44', '2024-12-24 11:50:44'),
(10, 1000, 1200, 58000, 1, '2024-12-24 11:50:44', '2024-12-24 11:50:44'),
(11, 2000, 1200, 118000, 1, '2024-12-24 11:50:44', '2024-12-24 11:50:44'),
(12, 5000, 1200, 3000000, 1, '2024-12-24 11:50:44', '2024-12-24 11:50:44');

-- --------------------------------------------------------

--
-- Table structure for table `invite_bonus_claim`
--

CREATE TABLE `invite_bonus_claim` (
  `id` bigint(20) NOT NULL,
  `userid` smallint(6) NOT NULL,
  `invite_id` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jackpots`
--

CREATE TABLE `jackpots` (
  `id` int(11) NOT NULL,
  `jackpot_duration` int(11) NOT NULL,
  `jackpot_count` int(11) NOT NULL,
  `jackpot_left` int(11) NOT NULL,
  `active_jackpot` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jackpots`
--

INSERT INTO `jackpots` (`id`, `jackpot_duration`, `jackpot_count`, `jackpot_left`, `active_jackpot`, `created_at`, `updated_at`) VALUES
(1, 5000, 3, 3, '\"[\\\"5\\\",\\\"10\\\",\\\"15\\\"]\"', '2024-11-21 10:34:16', '2024-11-22 18:50:00');

-- --------------------------------------------------------

--
-- Table structure for table `jackpot_multipliers`
--

CREATE TABLE `jackpot_multipliers` (
  `id` int(11) NOT NULL,
  `multiplier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jackpot_multipliers`
--

INSERT INTO `jackpot_multipliers` (`id`, `multiplier`) VALUES
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10),
(10, 11),
(11, 12),
(12, 13),
(13, 14),
(14, 15),
(15, 16),
(16, 17),
(17, 18),
(18, 19),
(19, 20);

-- --------------------------------------------------------

--
-- Table structure for table `keno_bet`
--

CREATE TABLE `keno_bet` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL,
  `games_no` varchar(155) NOT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `order_id` varchar(200) DEFAULT NULL,
  `trade_amount` double(10,2) DEFAULT NULL,
  `selected_numbers` varchar(200) NOT NULL,
  `number` text DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `risk_level` varchar(200) NOT NULL,
  `indexs` int(11) DEFAULT NULL,
  `multiplier` varchar(252) DEFAULT NULL,
  `win_amount` double(10,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keno_bet_result`
--

CREATE TABLE `keno_bet_result` (
  `id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `games_no` varchar(155) NOT NULL,
  `number` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keno_index_list`
--

CREATE TABLE `keno_index_list` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `multiplier` text NOT NULL,
  `number` int(11) NOT NULL,
  `risk_level` varchar(200) NOT NULL,
  `game_id` int(11) NOT NULL DEFAULT 23,
  `actual_number` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keno_index_list`
--

INSERT INTO `keno_index_list` (`id`, `type`, `multiplier`, `number`, `risk_level`, `game_id`, `actual_number`, `status`, `datetime`) VALUES
(1, '1', '[\"0.5\", \"2.38\"]', 1, 'low', 23, 1, 1, '2025-01-29 03:57:09'),
(2, '1', '[\"0.5\", \"1.19\", \"0.5\"]', 2, 'low', 23, 2, 1, '2025-01-31 06:12:49'),
(3, '1', '[\'0.5\', \'0.5\', \'2.2\', \'20\']', 3, 'low', 23, 3, 1, '2025-01-31 06:12:49'),
(4, '1', '[\'0.5\', \'0.5\', \'1.4\', \'5\', \'40\']', 4, 'low', 23, 4, 1, '2025-01-31 06:14:46'),
(5, '1', '[\'0.5\', \'0.5\', \'1\', \'2.4\', \'15\', \'100\']', 5, 'low', 23, 5, 1, '2025-01-31 06:14:46'),
(6, '1', '[\'0.5\', \'0.5\', \'0.5\', \'2.13\', \'7\', \'50\', \'200\']', 6, 'low', 23, 6, 1, '2025-01-31 06:17:24'),
(7, '1', '[\'0.5\',\'0.5\',\'0.5\',\'2\',\'3.48\',\'6\',\'100\',\'5000\']', 7, 'low', 23, 7, 1, '2025-01-31 06:17:24'),
(8, '1', '[\'1\',\'0.2\',\'0.2\',\'1\',\'5.21\',\'8\',\'30\',\'300\',\'5000\']', 8, 'low', 23, 8, 1, '2025-01-31 06:21:49'),
(9, '1', '[\'01\',\'0.5\',\'0.5\',\'0.5\',\'2\',\'5.5\',\'20\',\'400\',\'1000\',\'5000\']', 9, 'low', 23, 9, 1, '2025-01-31 06:21:49'),
(10, '1', '[\'2x\',\'0.5x\',\'0.5x\',\'0.5x\',\'0.5\',\'6.37\',\'15\',\'100\',\'500\',\'2000\',\'5000\']', 10, 'low', 23, 10, 1, '2025-01-31 06:23:38'),
(11, '2', '[\'0.2\',\'3.28\']', 1, 'medium', 23, 1, 1, '2025-01-31 06:23:38'),
(12, '2', '[\'0.2\', \'1.18\',7\']', 2, 'medium', 23, 2, 1, '2025-01-31 06:23:38'),
(13, '2', '[\"0.2\", \"0.2\", \"2.74\", \"3.5\"]', 3, 'medium', 23, 3, 1, '2025-01-31 06:23:38'),
(14, '2', '[\'0.2\', \'0.2\', \'1.5\', \'8\', \'80\']', 4, 'medium', 23, 4, 1, '2025-01-31 06:23:38'),
(15, '2', '[\'0.2\', \'0.2\', \'1\', \'3.5\', \'20\', \'250\']', 5, 'medium', 23, 5, 1, '2025-01-31 06:23:38'),
(16, '2', '[\'0.2\', \'0.2\', \'0.2\', \'2.56\', \'9\', \'120\', \'450\']', 6, 'medium', 23, 6, 1, '2025-01-31 06:23:38'),
(17, '2', '[\'1\',\'0.2\',\'0.2\',\'2\',\'5.3\',\'10\',\'200\',\'1000\']', 7, 'medium', 23, 7, 1, '2025-01-31 06:23:38'),
(18, '2', '[\'1\',\'0.2\',\'0.2\',\'1\',\'5.21\',\'8\',\'30\',\'300\',\'5000\']\r\n\r\n', 8, 'medium', 23, 8, 1, '2025-01-31 06:23:38'),
(19, '2', '[\'1.5\',\'0.2\',\'0.2\',\'0.2\',\'2\',\'10.07\',\'30\',\'800\',\'2000\',\'10000\']', 9, 'medium', 23, 9, 1, '2025-01-31 06:23:38'),
(20, '2', '[\'2\',\'0.3\',\'0.3\',\'0.3\',\'0.3\',\'6.2\',\'25\',\'300\',\'8000\',\'90000\',\'800000\']\r\n\r\n', 10, 'medium', 23, 10, 1, '2025-01-31 06:23:38'),
(21, '3', '[\'0\', \'3.88\']', 1, 'high', 23, 1, 1, '2025-01-31 06:23:38'),
(22, '3', '[\'0\', \'1.17\', \'9\']', 2, 'high', 23, 2, 1, '2025-01-31 06:23:38'),
(23, '3', '[\'0\',\'0\',\'2.65\',\'50\']', 3, 'high', 23, 3, 1, '2025-01-31 06:23:38'),
(24, '3', '[\'0\', \'0\', \'1.62\', \'10\', \'100\']', 4, 'high', 23, 4, 1, '2025-01-31 06:23:38'),
(25, '3', '[\'0\', \'0\', \'1\', \'3.78\', \'25\', \'400\']', 5, 'high', 23, 5, 1, '2025-01-31 06:23:38'),
(26, '3', '[\'0\', \'0\', \'0\', \'2.67\', \'10\', \'180\', \'700\']', 6, 'high', 23, 6, 1, '2025-01-31 06:23:38'),
(27, '3', '[\'1\',\'0\',\'0\',\'2\',\'5.3\',\'20\',\'400\',\'2000\']', 7, 'high', 23, 7, 1, '2025-01-31 06:23:38'),
(28, '3', '[\'1\',\'0\',\'0\',\'1\',\'5.38\',\'11\',\'50\',\'5000\',\'10000\']', 8, 'high', 23, 8, 1, '2025-01-31 06:23:38'),
(29, '3', '[\'2\',\'0\',\'0\',\'0\',\'2\',\'10.86\',\'50\',\'1000\',\'5000\',\'25000\']', 9, 'high', 23, 9, 1, '2025-01-31 06:23:38'),
(30, '3', '[\'2\',\'0\',\'0\',\'0\',\'1\',\'5.57\',\'30\',\'500\',\'1000\',\'5000\',\'10000\']', 10, 'high', 23, 10, 1, '2025-01-31 06:23:38');

-- --------------------------------------------------------

--
-- Table structure for table `keno_multipliers`
--

CREATE TABLE `keno_multipliers` (
  `id` int(11) NOT NULL,
  `risk_level` varchar(50) NOT NULL COMMENT '1=low, 2=medium, 3=high',
  `selections` int(11) NOT NULL,
  `multipliers` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keno_multipliers`
--

INSERT INTO `keno_multipliers` (`id`, `risk_level`, `selections`, `multipliers`) VALUES
(1, 'low', 1, '[\"0.5\", \"2.38\"]'),
(2, 'low', 2, '[\"0.5\", \"1.19\", \"0.5\"]'),
(3, 'low', 3, '[\"0.5\",\"0.5\",\"2.2\",\"20\"]'),
(4, 'low', 4, '[\"0.5\",\"0.5\",\"1.4\",\"5\",\"40\"]'),
(5, 'low', 5, '[\"0.5\",\"0.5\",\"1\",\"2.4\",\"15\",\"100\"]'),
(6, 'low', 6, '[\"0.5\",\"0.5\",\"0.5\",\"2.13\",\"7\",\"50\",\"200\"]'),
(7, 'low', 7, '[\"0.5\",\"0.5\",\"0.5\",\"2\",\"3.48\",\"6\",\"100\",\"5000\"]'),
(8, 'low', 8, '[\"1\",\"0.2\",\"0.2\",\"1\",\"5.21\",\"8\",\"30\",\"300\",\"5000\"]'),
(9, 'low', 9, '[\"01\",\"0.5\",\"0.5\",\"0.5\",\"2\",\"5.5\",\"20\",\"400\",\"1000\",\"5000\"]'),
(10, 'low', 10, '[\"2\",\"0.5\",\"0.5\",\"0.5\",\"0.5\",\"6.37\",\"15\",\"100\",\"500\",\"2000\",\"5000\"]'),
(11, 'medium', 1, '[\"0.2\",\"3.28\"]'),
(12, 'medium', 2, '[\"0.2\",\"1.18\",\"7\"]'),
(13, 'medium', 3, '[\"0.2\", \"0.2\", \"2.74\", \"3.5\"]'),
(14, 'medium', 4, '[\"0.2\",\"0.2\",\"1.5\",\"8\",\"80\"]'),
(15, 'medium', 5, '[\"0.2\",\"0.2\",\"1\",\"3.5\",\"20\", \"250\"]'),
(16, 'medium', 6, '[\'0.2\', \'0.2\', \'0.2\', \'2.56\', \'9\', \'120\', \'450\']'),
(17, 'medium', 7, '[\"1\",\"0.2\",\"0.2\",\"2\",\"5.3\",\"10\",\"200\",\"1000\"]'),
(18, 'medium', 8, '[\"1\",\"0.2\",\"0.2\",\"1\",\"5.21\",\"8\",\"30\",\"300\",\"5000\"]'),
(19, 'medium', 9, '[\"1.5\",\"0.2\",\"0.2\",\"0.2\",\"2\",\"10.07\",\"30\",\"800\",\"2000\",\"10000\"]'),
(20, 'medium', 10, '[\"2\",\"0.3\",\"0.3\",\"0.3\",\"0.3\",\"6.2\",\"25\",\"300\",\"8000\",\"90000\",\"800000\"]'),
(21, 'high', 1, '[\"0\",\"3.88\"]'),
(22, 'high', 2, '[\"0\",\"1.17\",\"9\"]'),
(23, 'high', 3, '[\"0\",\"0\",\"2.65\",\"50\"]'),
(24, 'high', 4, '[\"0\",\"0\",\"1.62\",\"10\",\"100\"]'),
(25, 'high', 5, '[\"0\",\"0\",\"1\",\"3.78\",\"25\",\"400\"]'),
(26, 'high', 6, '[\"0\",\"0\",\"0\",\"2.67\",\"10\",\"180\",\"700\"]'),
(27, 'high', 7, '[\"1\",\"0\",\"0\",\"2\",\"5.3\",\"20\",\"400\",\"2000\"]'),
(28, 'high', 8, '[\"1\",\"0\",\"0\",\"1\",\"5.38\",\"11\",\"50\",\"5000\",\"10000\"]'),
(29, 'high', 9, '[\"2\",\"0\",\"0\",\"0\",\"2\",\"10.86\",\"50\",\"1000\",\"5000\",\"25000\"]'),
(30, 'high', 10, '[\"2\",\"0\",\"0\",\"0\",\"1\",\"5.57\",\"30\",\"500\",\"1000\",\"5000\",\"10000\"]');

-- --------------------------------------------------------

--
-- Table structure for table `lottery_betlogs`
--

CREATE TABLE `lottery_betlogs` (
  `id` int(11) NOT NULL,
  `games_no` int(255) NOT NULL,
  `game_id` int(11) NOT NULL,
  `number` int(25) NOT NULL,
  `amount` int(25) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `lottery_betlogs`
--

INSERT INTO `lottery_betlogs` (`id`, `games_no`, `game_id`, `number`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 2025068415, 27, 1, 0, '0', '2025-04-17 06:45:51', '2025-04-17 06:45:51'),
(2, 2025068415, 27, 2, 0, '0', '2025-04-17 06:45:51', '2025-04-17 06:45:51'),
(3, 2025068415, 27, 3, 0, '0', '2025-04-17 06:45:51', '2025-04-17 06:45:51'),
(4, 2025068415, 27, 4, 0, '0', '2025-04-17 06:45:51', '2025-04-17 06:45:51'),
(5, 2025068415, 27, 5, 0, '0', '2025-04-17 06:45:51', '2025-04-17 06:45:51'),
(6, 2025068415, 27, 6, 0, '0', '2025-04-17 06:45:51', '2025-04-17 06:45:51'),
(7, 2025068415, 27, 7, 0, '0', '2025-04-17 06:45:51', '2025-04-17 06:45:51'),
(8, 2025068415, 27, 8, 0, '0', '2025-04-17 06:45:51', '2025-04-17 06:45:51'),
(9, 2025068415, 27, 9, 0, '0', '2025-04-17 06:45:51', '2025-04-17 06:45:51'),
(10, 2025068415, 27, 0, 0, '0', '2025-04-17 06:45:51', '2025-04-17 06:45:51'),
(11, 2025068386, 28, 1, 0, '0', '2025-04-17 06:45:51', '2025-04-17 06:45:51'),
(12, 2025068386, 28, 2, 0, '0', '2025-04-17 06:45:51', '2025-04-17 06:45:51'),
(13, 2025068386, 28, 3, 0, '0', '2025-04-17 06:45:51', '2025-04-17 06:45:51'),
(14, 2025068386, 28, 4, 0, '0', '2025-04-17 06:45:51', '2025-04-17 06:45:51'),
(15, 2025068386, 28, 5, 0, '0', '2025-04-17 06:45:51', '2025-04-17 06:45:51'),
(16, 2025068386, 28, 6, 0, '0', '2025-04-17 06:45:51', '2025-04-17 06:45:51'),
(17, 2025068386, 28, 7, 0, '0', '2025-04-17 06:45:51', '2025-04-17 06:45:51'),
(18, 2025068386, 28, 8, 0, '0', '2025-04-17 06:45:51', '2025-04-17 06:45:51'),
(19, 2025068386, 28, 9, 0, '0', '2025-04-17 06:45:51', '2025-04-17 06:45:51'),
(20, 2025068386, 28, 0, 0, '0', '2025-04-17 06:45:51', '2025-04-17 06:45:51'),
(21, 202506036, 29, 1, 0, '0', '2025-04-17 06:45:51', '2025-04-17 06:45:51'),
(22, 202506036, 29, 2, 0, '0', '2025-04-17 06:45:51', '2025-04-17 06:45:51'),
(23, 202506036, 29, 3, 0, '0', '2025-04-17 06:45:51', '2025-04-17 06:45:51'),
(24, 202506036, 29, 4, 0, '0', '2025-04-17 06:45:51', '2025-04-17 06:45:51'),
(25, 202506036, 29, 5, 0, '0', '2025-04-17 06:45:51', '2025-04-17 06:45:51'),
(26, 202506036, 29, 6, 0, '0', '2025-04-17 06:45:51', '2025-04-17 06:45:51'),
(27, 202506036, 29, 7, 0, '0', '2025-04-17 06:45:51', '2025-04-17 06:45:51'),
(28, 202506036, 29, 8, 0, '0', '2025-04-17 06:45:51', '2025-04-17 06:45:51'),
(29, 202506036, 29, 9, 0, '0', '2025-04-17 06:45:51', '2025-04-17 06:45:51'),
(30, 202506036, 29, 0, 0, '0', '2025-04-17 06:45:51', '2025-04-17 06:45:51');

-- --------------------------------------------------------

--
-- Table structure for table `lottery_bets`
--

CREATE TABLE `lottery_bets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `amount` int(255) NOT NULL,
  `win_amount` int(55) DEFAULT NULL,
  `games_no` int(25) NOT NULL,
  `selected_number` text NOT NULL,
  `win_number` text DEFAULT NULL,
  `status` varchar(255) NOT NULL COMMENT '0-Pending,1-Win,2-Loss\r\n',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lottery_bet_result`
--

CREATE TABLE `lottery_bet_result` (
  `id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `games_no` int(11) NOT NULL,
  `number` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lottery_setting`
--

CREATE TABLE `lottery_setting` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `bet_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `lottery_setting`
--

INSERT INTO `lottery_setting` (`id`, `name`, `bet_amount`) VALUES
(1, 'Lottery Bet Amount', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lucky12admin_winner_result`
--

CREATE TABLE `lucky12admin_winner_result` (
  `id` int(11) NOT NULL,
  `period_no` varchar(20) DEFAULT NULL,
  `number` tinyint(4) DEFAULT NULL,
  `jackpot` double(8,2) NOT NULL DEFAULT 1.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lucky12_betlogs`
--

CREATE TABLE `lucky12_betlogs` (
  `id` int(11) NOT NULL,
  `period_no` bigint(20) NOT NULL,
  `game_id` int(2) NOT NULL,
  `number` int(2) NOT NULL,
  `amount` double(5,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lucky12_betlogs`
--

INSERT INTO `lucky12_betlogs` (`id`, `period_no`, `game_id`, `number`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 276511, 1, 1, 0.00, 1, '2024-08-28 12:31:25', '2024-08-28 12:31:25'),
(2, 276511, 2, 2, 0.00, 1, '2024-08-28 12:31:25', '2024-08-28 12:31:25'),
(3, 276511, 3, 3, 0.00, 1, '2024-08-28 12:31:40', '2024-08-28 12:31:40'),
(4, 276511, 4, 4, 0.00, 1, '2024-08-28 12:31:40', '2024-08-28 12:31:40'),
(5, 276511, 5, 5, 0.00, 1, '2024-08-28 12:31:25', '2024-08-28 12:31:25'),
(6, 276511, 6, 6, 0.00, 1, '2024-08-28 12:31:25', '2024-08-28 12:31:25'),
(7, 276511, 7, 7, 0.00, 1, '2024-08-28 12:31:40', '2024-08-28 12:31:40'),
(8, 276511, 8, 8, 0.00, 1, '2024-08-28 12:31:40', '2024-08-28 12:31:40'),
(9, 276511, 9, 9, 0.00, 1, '2024-08-28 12:31:25', '2024-08-28 12:31:25'),
(10, 276511, 10, 10, 0.00, 1, '2024-08-28 12:31:25', '2024-08-28 12:31:25'),
(11, 276511, 11, 11, 0.00, 1, '2024-08-28 12:31:40', '2024-08-28 12:31:40'),
(12, 276511, 12, 12, 0.00, 1, '2024-08-28 12:31:40', '2024-08-28 12:31:40');

-- --------------------------------------------------------

--
-- Table structure for table `lucky12_bets`
--

CREATE TABLE `lucky12_bets` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `period_no` bigint(20) NOT NULL,
  `game_id` int(2) UNSIGNED NOT NULL,
  `amount` double(5,2) NOT NULL,
  `win_number` int(2) DEFAULT NULL,
  `win_amount` double(5,2) DEFAULT 0.00,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lucky12_game_settings`
--

CREATE TABLE `lucky12_game_settings` (
  `id` int(11) NOT NULL,
  `game_id` int(2) NOT NULL,
  `number` int(2) NOT NULL,
  `multiplier` double(4,2) NOT NULL,
  `description` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lucky12_game_settings`
--

INSERT INTO `lucky12_game_settings` (`id`, `game_id`, `number`, `multiplier`, `description`) VALUES
(1, 1, 1, 11.00, NULL),
(2, 2, 2, 11.00, NULL),
(3, 3, 3, 11.00, NULL),
(4, 4, 4, 11.00, NULL),
(5, 5, 5, 11.00, NULL),
(6, 6, 6, 11.00, NULL),
(7, 7, 7, 11.00, NULL),
(8, 8, 8, 11.00, NULL),
(9, 9, 9, 11.00, NULL),
(10, 10, 10, 11.00, NULL),
(11, 11, 11, 11.00, NULL),
(12, 12, 12, 11.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lucky12_index`
--

CREATE TABLE `lucky12_index` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `game_no` int(2) NOT NULL,
  `card_index` int(1) NOT NULL,
  `color_index` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lucky12_index`
--

INSERT INTO `lucky12_index` (`id`, `game_no`, `card_index`, `color_index`) VALUES
(1, 1, 1, 3),
(2, 2, 1, 2),
(3, 3, 1, 1),
(4, 4, 1, 0),
(5, 5, 0, 3),
(6, 6, 0, 2),
(7, 7, 0, 1),
(8, 8, 0, 0),
(9, 9, 2, 3),
(10, 10, 2, 2),
(11, 11, 2, 1),
(12, 12, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lucky12_results`
--

CREATE TABLE `lucky12_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `period_no` bigint(20) NOT NULL,
  `win_number` int(2) NOT NULL,
  `card_index` int(2) NOT NULL,
  `color_index` int(2) NOT NULL,
  `jackpot` double(8,2) NOT NULL DEFAULT 1.00,
  `status` tinyint(1) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lucky16admin_winner_result`
--

CREATE TABLE `lucky16admin_winner_result` (
  `id` int(11) NOT NULL,
  `period_no` varchar(20) DEFAULT NULL,
  `number` tinyint(4) DEFAULT NULL,
  `jackpot` double(8,2) NOT NULL DEFAULT 1.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lucky16_betlogs`
--

CREATE TABLE `lucky16_betlogs` (
  `id` int(11) NOT NULL,
  `period_no` bigint(20) NOT NULL,
  `game_id` int(2) NOT NULL,
  `number` int(2) NOT NULL,
  `amount` double(5,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lucky16_betlogs`
--

INSERT INTO `lucky16_betlogs` (`id`, `period_no`, `game_id`, `number`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 272379, 1, 1, 0.00, 1, '2024-08-28 12:31:25', '2024-08-28 12:31:25'),
(2, 272379, 2, 2, 0.00, 1, '2024-08-28 12:31:25', '2024-08-28 12:31:25'),
(3, 272379, 3, 3, 0.00, 1, '2024-08-28 12:31:40', '2024-08-28 12:31:40'),
(4, 272379, 4, 4, 0.00, 1, '2024-08-28 12:31:40', '2024-08-28 12:31:40'),
(5, 272379, 5, 5, 0.00, 1, '2024-08-28 12:31:25', '2024-08-28 12:31:25'),
(6, 272379, 6, 6, 0.00, 1, '2024-08-28 12:31:25', '2024-08-28 12:31:25'),
(7, 272379, 7, 7, 0.00, 1, '2024-08-28 12:31:40', '2024-08-28 12:31:40'),
(8, 272379, 8, 8, 0.00, 1, '2024-08-28 12:31:40', '2024-08-28 12:31:40'),
(9, 272379, 9, 9, 0.00, 1, '2024-08-28 12:31:25', '2024-08-28 12:31:25'),
(10, 272379, 10, 10, 0.00, 1, '2024-08-28 12:31:25', '2024-08-28 12:31:25'),
(11, 272379, 11, 11, 0.00, 1, '2024-08-28 12:31:40', '2024-08-28 12:31:40'),
(12, 272379, 12, 12, 0.00, 1, '2024-08-28 12:31:40', '2024-08-28 12:31:40'),
(13, 272379, 13, 13, 0.00, 1, '2024-08-28 12:31:25', '2024-08-28 12:31:25'),
(14, 272379, 14, 14, 0.00, 1, '2024-08-28 12:31:25', '2024-08-28 12:31:25'),
(15, 272379, 15, 15, 0.00, 1, '2024-08-28 12:31:40', '2024-08-28 12:31:40'),
(16, 272379, 16, 16, 0.00, 1, '2024-08-28 12:31:40', '2024-08-28 12:31:40');

-- --------------------------------------------------------

--
-- Table structure for table `lucky16_bets`
--

CREATE TABLE `lucky16_bets` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `period_no` bigint(20) NOT NULL,
  `game_id` int(2) UNSIGNED NOT NULL,
  `amount` double(5,2) NOT NULL,
  `win_number` int(2) DEFAULT NULL,
  `win_amount` double(5,2) DEFAULT 0.00,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lucky16_game_settings`
--

CREATE TABLE `lucky16_game_settings` (
  `id` int(11) NOT NULL,
  `game_id` int(2) NOT NULL,
  `number` int(2) NOT NULL,
  `multiplier` double(4,2) NOT NULL,
  `description` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lucky16_game_settings`
--

INSERT INTO `lucky16_game_settings` (`id`, `game_id`, `number`, `multiplier`, `description`) VALUES
(1, 1, 1, 15.00, NULL),
(2, 2, 2, 15.00, NULL),
(3, 3, 3, 15.00, NULL),
(4, 4, 4, 15.00, NULL),
(5, 5, 5, 15.00, NULL),
(6, 6, 6, 15.00, NULL),
(7, 7, 7, 15.00, NULL),
(8, 8, 8, 15.00, NULL),
(9, 9, 9, 15.00, NULL),
(10, 10, 10, 15.00, NULL),
(11, 11, 11, 15.00, NULL),
(12, 12, 12, 15.00, NULL),
(13, 13, 13, 15.00, NULL),
(14, 14, 14, 15.00, NULL),
(15, 15, 15, 15.00, NULL),
(16, 16, 16, 15.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lucky16_index`
--

CREATE TABLE `lucky16_index` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `game_no` int(2) NOT NULL,
  `card_index` int(1) NOT NULL,
  `color_index` int(1) NOT NULL,
  `card_name` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lucky16_index`
--

INSERT INTO `lucky16_index` (`id`, `game_no`, `card_index`, `color_index`, `card_name`) VALUES
(1, 1, 1, 0, 'AH'),
(2, 2, 1, 3, 'AS'),
(3, 3, 1, 2, 'AD'),
(4, 4, 1, 1, 'AC'),
(5, 5, 0, 0, 'KH'),
(6, 6, 0, 3, 'KS'),
(7, 7, 0, 2, 'KD'),
(8, 8, 0, 1, 'KC'),
(9, 9, 3, 0, 'QH'),
(10, 10, 3, 3, 'QS'),
(11, 11, 3, 2, 'QD'),
(12, 12, 3, 1, 'QC'),
(13, 13, 2, 0, 'JH'),
(14, 14, 2, 3, 'JS'),
(15, 15, 2, 2, 'JD'),
(16, 16, 2, 1, 'JC');

-- --------------------------------------------------------

--
-- Table structure for table `lucky16_results`
--

CREATE TABLE `lucky16_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `period_no` bigint(20) NOT NULL,
  `win_number` int(2) NOT NULL,
  `card_index` int(2) NOT NULL,
  `color_index` int(2) NOT NULL,
  `jackpot` double(8,2) NOT NULL DEFAULT 1.00,
  `status` tinyint(1) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_04_17_095804_create_bets_table', 2),
(6, '2024_04_17_102816_create_account_details_table', 3),
(7, '2024_04_17_195608_create_payins_table', 4),
(8, '2024_04_17_201514_create_withdraw_histories_table', 5),
(9, '2024_04_18_044926_create_bet_results_table', 6),
(10, '2024_04_18_050653_create_transaction_histories_table', 7),
(11, '2024_04_18_051239_create_bet_logs_table', 8),
(12, '2024_04_18_051737_create_all_images_table', 9),
(13, '2024_04_18_053627_create_amount_lists_table', 10),
(14, '2024_04_18_054957_create_cards_table', 11),
(15, '2024_04_18_055803_create_check_ins_table', 12),
(16, '2024_04_18_060320_create_coupons_table', 13),
(20, '2024_04_18_061442_create_game_settings_table', 14),
(21, '2024_04_18_063107_create_mlm_levels_table', 14),
(22, '2024_04_18_070052_create_rules_table', 15),
(23, '2024_04_18_071435_create_settings_table', 16),
(24, '2024_04_18_072406_create_sliders_table', 17),
(25, '2024_04_18_073202_create_types_table', 18),
(26, '2024_04_18_073813_create_virtual_games_table', 19),
(27, '2024_04_18_074637_create_withdraw_amoumts_table', 20),
(28, '2024_04_18_081307_create_admin_settings_table', 21),
(29, '2024_04_18_081937_create_checkin_redeems_table', 22);

-- --------------------------------------------------------

--
-- Table structure for table `minegame_bet`
--

CREATE TABLE `minegame_bet` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL,
  `amount` double NOT NULL,
  `multipler` varchar(155) DEFAULT NULL,
  `win_amount` double DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `tax` varchar(155) DEFAULT NULL,
  `after_tax` varchar(155) DEFAULT NULL,
  `orderid` varchar(155) DEFAULT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `minegame_bet`
--

INSERT INTO `minegame_bet` (`id`, `userid`, `game_id`, `amount`, `multipler`, `win_amount`, `status`, `tax`, `after_tax`, `orderid`, `datetime`, `created_at`, `updated_at`) VALUES
(1, 2, 12, 10, '1.10', 12.1, 1, '0', '10', '2025081415391811403', '2025-08-14 10:09:18', '2025-08-14 15:39:18', '2025-08-14 15:40:38'),
(2, 2, 12, 10, '1.10', 19.49, 1, '0', '10', '2025081415403299832', '2025-08-14 10:10:32', '2025-08-14 15:40:32', '2025-08-14 15:40:55'),
(3, 2, 12, 10, '1.10', 13.31, 1, '0', '10', '2025081415413378355', '2025-08-14 10:11:33', '2025-08-14 15:41:33', '2025-08-14 15:41:47');

-- --------------------------------------------------------

--
-- Table structure for table `mine_multipliers`
--

CREATE TABLE `mine_multipliers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `multiplier` double(5,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `mine_multipliers`
--

INSERT INTO `mine_multipliers` (`id`, `name`, `multiplier`, `created_at`, `updated_at`) VALUES
(1, 'Mines: 1', 1.01, '2024-10-18 11:30:43', '2024-10-18 11:30:43'),
(2, 'Mines: 2', 1.05, '2024-10-18 11:31:34', '2024-10-18 11:31:34'),
(3, 'Mines: 3', 1.10, '2024-10-18 11:32:13', '2024-10-18 11:32:13'),
(4, 'Mines: 4', 1.15, '2024-10-18 11:32:42', '2024-10-18 11:32:42'),
(5, 'Mines: 5', 1.20, '2024-10-18 11:33:14', '2024-10-18 11:33:14'),
(6, 'Mines: 6', 1.25, '2024-10-18 11:34:34', '2024-10-18 11:34:34'),
(7, 'Mines: 7', 1.30, '2024-10-18 11:34:34', '2024-10-18 11:34:34'),
(8, 'Mines: 8', 1.40, '2024-10-18 11:30:43', '2024-10-18 11:30:43'),
(9, 'Mines: 9', 1.45, '2024-10-18 11:31:34', '2024-10-18 11:31:34'),
(10, 'Mines: 10', 1.55, '2024-10-18 11:32:13', '2024-10-18 11:32:13'),
(11, 'Mines: 11', 1.60, '2024-10-18 11:32:42', '2024-10-18 11:32:42'),
(12, 'Mines: 12', 1.65, '2024-10-18 11:33:14', '2024-10-18 11:33:14'),
(13, 'Mines: 13', 1.70, '2024-10-18 11:34:34', '2024-10-18 11:34:34'),
(14, 'Mines: 14', 1.75, '2024-10-18 11:34:34', '2024-10-18 11:34:34'),
(15, 'Mines: 15', 1.80, '2024-10-18 11:32:13', '2024-10-18 11:32:13'),
(16, 'Mines: 16', 1.85, '2024-10-18 11:32:42', '2024-10-18 11:32:42'),
(17, 'Mines: 17', 1.90, '2024-10-18 11:33:14', '2024-10-18 11:33:14'),
(18, 'Mines: 18', 1.95, '2024-10-18 11:34:34', '2024-10-18 11:34:34'),
(19, 'Mines: 19', 2.00, '2024-10-18 11:34:34', '2024-10-18 11:34:34'),
(20, 'Mines: 20', 2.10, '2024-10-18 11:34:34', '2024-10-18 11:34:34'),
(21, 'Mines: 21', 2.00, '2024-10-18 11:34:34', '2024-10-18 11:34:34'),
(22, 'Mines: 22', 2.15, '2024-10-18 11:34:34', '2024-10-18 11:34:34'),
(23, 'Mines: 23', 2.30, '2024-10-18 11:34:34', '2024-10-18 11:34:34'),
(24, 'Mines: 24', 2.50, '2024-10-18 11:34:34', '2024-10-18 11:34:34'),
(25, 'Mines: 25', 3.00, '2024-10-18 11:34:34', '2024-10-18 11:34:34');

-- --------------------------------------------------------

--
-- Table structure for table `mini_roulette_bets`
--

CREATE TABLE `mini_roulette_bets` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `games_no` bigint(20) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `bets` text NOT NULL,
  `selected_number` text DEFAULT NULL,
  `total_amount` double NOT NULL,
  `win_amount` double DEFAULT NULL,
  `number` text NOT NULL,
  `win_number` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mini_roulette_multiplier`
--

CREATE TABLE `mini_roulette_multiplier` (
  `id` int(11) NOT NULL,
  `number` text NOT NULL,
  `multiplier` double NOT NULL DEFAULT 2,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mini_roulette_multiplier`
--

INSERT INTO `mini_roulette_multiplier` (`id`, `number`, `multiplier`, `created_at`, `updated_at`) VALUES
(1, '[{\"1\"}]', 2, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(2, '[{\"2\"}]', 2, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(3, '[{\"3\"}]', 2, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(4, '[{\"4\"}]', 3, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(5, '[{\"5\"}]', 3, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(6, '[{\"6\"}]', 4, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(7, '[{\"7\"}]', 4, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(8, '[{\"8\"}]', 5, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(9, '[{\"9\"}]', 5, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(10, '[{\"10\"}]', 6, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(11, '[{\"11\"}]', 7, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(12, '[{\"12\"}]', 8, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(13, '[{\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"}]', 9, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(14, '[{\"2\",\"4\",\"6\",\"8\",\"10\",\"12\"}]', 9, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(15, '[{\"2\",\"4\",\"6\",\"7\",\"9\",\"11\"}]', 10, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(16, '[{\"8\",\"10\",\"12\",\"1\",\"3\",\"5\"}]', 10, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(17, '[{\"1\",\"3\",\"5\",\"7\",\"9\",\"11\"}]', 12, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(18, '[{\"7\",\"8\",\"9\",\"10\",\"11\",\"12\"}]', 3, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(19, '[{\"1\",\"2\"}]', 5, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(20, '[{\"3\",\"4\"}]', 8, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(21, '[{\"5\",\"6\"}]', 9, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(22, '[{\"7\",\"8\"}]', 9, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(23, '[{\"9\",\"10\"}]', 10, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(24, '[{\"11\",\"12\"}]', 6, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(25, '[{\"2\",\"3\",\"4\"}]', 11, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(26, '[{\"4\",\"5\",\"6\"}]', 3, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(27, '[{\"6\",\"7\",\"8\"}]', 5, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(28, '[{\"8\",\"9\",\"10\"}]', 9, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(29, '[{\"10\",\"11\",\"12\"}]', 8, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(30, '[{\"1\",\"2\",\"3\"}]', 7, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(31, '[{\"3\",\"4\",\"5\"}]', 6, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(32, '[{\"5\",\"6\",\"7\"}]', 4, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(33, '[{\"7\",\"8\",\"9\"}]', 5, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(34, '[{\"9\",\"10\",\"11\"}]', 6, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(35, '[{\"1\",\"2\",\"3\",\"4\"}]', 7, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(36, '[{\"3\",\"4\",\"5\",\"6\"}]', 8, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(37, '[{\"5\",\"6\",\"7\",\"8\"}]', 9, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(38, '[{\"7\",\"8\",\"9\",\"10\"}]', 10, '2025-02-22 06:43:26', '2025-02-22 06:43:26'),
(39, '[{\"9\",\"10\",\"11\",\"12\"}]', 11, '2025-02-22 06:43:26', '2025-02-22 06:43:26');

-- --------------------------------------------------------

--
-- Table structure for table `mini_roulette_result`
--

CREATE TABLE `mini_roulette_result` (
  `id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `games_no` bigint(20) NOT NULL,
  `result_number` text NOT NULL,
  `type` int(11) NOT NULL,
  `multiplier` double NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mlm_levels`
--

CREATE TABLE `mlm_levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `commission` float NOT NULL,
  `cashback` decimal(10,2) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mlm_levels`
--

INSERT INTO `mlm_levels` (`id`, `name`, `count`, `commission`, `cashback`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Level1', 1, 1, NULL, 0, '2024-12-10 07:59:52', '2024-12-10 07:59:52'),
(2, 'Level2', 2, 3, NULL, 0, '2024-12-10 07:59:52', '2024-12-10 07:59:52'),
(3, 'Level3', 3, 2, NULL, 0, '2024-12-10 08:00:15', '2024-12-10 08:00:15'),
(4, 'Level4', 4, 1, NULL, 0, '2024-12-16 10:44:43', '2024-12-16 10:44:43'),
(5, 'Level5', 5, 0.5, NULL, 0, '2024-12-16 10:45:03', '2024-12-16 10:45:03'),
(6, 'Level6', 6, 0.25, NULL, 0, '2024-12-16 10:45:24', '2024-12-16 10:45:24'),
(7, 'Level7', 9, 0.15, NULL, 0, '2024-12-16 10:46:35', '2024-12-16 10:46:35'),
(19, 'level9', 9, 10, NULL, 0, '2025-07-03 12:24:01', '2025-07-03 12:24:01');

-- --------------------------------------------------------

--
-- Table structure for table `multiplier`
--

CREATE TABLE `multiplier` (
  `id` int(11) NOT NULL,
  `multiplier` decimal(20,2) DEFAULT NULL,
  `frequency` varchar(30) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '1-easy,2-medium,3-hard,4-hardcore',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multiplier`
--

INSERT INTO `multiplier` (`id`, `multiplier`, `frequency`, `type`, `created_at`, `updated`) VALUES
(3, 1.13, '1', 1, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(4, 1.17, '1', 1, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(5, 1.23, '1', 1, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(6, 1.29, '1', 1, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(7, 1.36, '1', 1, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(8, 1.43, '1', 1, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(9, 1.53, '1', 1, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(12, 1.88, '1', 1, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(13, 2.04, '1', 1, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(14, 2.22, '1', 1, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(15, 2.45, '1', 1, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(16, 2.72, '1', 1, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(17, 3.06, '1', 1, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(18, 3.50, '1', 1, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(19, 4.08, '1', 1, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(20, 4.90, '1', 1, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(21, 6.13, '1', 1, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(22, 6.61, '1', 1, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(23, 9.81, '1', 1, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(24, 19.44, '1', 1, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(25, 1.12, '1', 2, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(26, 1.28, '1', 2, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(27, 1.47, '1', 2, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(28, 1.70, '1', 2, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(29, 1.98, '1', 2, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(30, 2.33, '1', 2, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(31, 2.76, '1', 2, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(32, 3.32, '1', 2, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(33, 4.03, '1', 2, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(34, 4.96, '1', 2, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(35, 6.20, '1', 2, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(36, 6.91, '1', 2, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(37, 8.90, '1', 2, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(38, 11.74, '1', 2, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(39, 15.99, '1', 2, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(40, 22.61, '1', 2, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(41, 33.58, '1', 2, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(42, 53.20, '1', 2, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(43, 92.17, '1', 2, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(44, 180.51, '1', 2, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(45, 451.71, '1', 2, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(46, 1788.80, '1', 2, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(47, 1.23, '2', 3, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(48, 1.55, '2', 3, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(49, 1.98, '2', 3, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(50, 2.56, '2', 3, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(51, 3.36, '2', 3, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(52, 4.49, '2', 3, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(53, 5.49, '2', 3, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(54, 7.53, '2', 3, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(55, 10.56, '2', 3, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(56, 15.21, '2', 3, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(57, 22.59, '2', 3, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(58, 34.79, '2', 3, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(59, 55.97, '2', 3, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(60, 94.99, '2', 3, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(61, 172.42, '2', 3, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(62, 341.40, '2', 3, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(63, 760.46, '2', 3, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(64, 2007.63, '2', 3, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(65, 6956.47, '2', 3, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(66, 41321.43, '2', 3, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(67, 1.63, '3', 4, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(68, 2.80, '3', 4, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(69, 4.95, '3', 4, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(70, 9.08, '3', 4, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(71, 15.21, '3', 4, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(72, 30.12, '3', 4, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(73, 62.96, '3', 4, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(74, 140.24, '3', 4, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(75, 337.19, '3', 4, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(76, 890.19, '3', 4, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(77, 2643.89, '3', 4, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(78, 9161.05, '3', 4, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(79, 39301.05, '3', 4, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(80, 233448.29, '3', 4, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(81, 2542251.93, '3', 4, '2025-06-20 04:42:43', '2025-06-20 04:42:43'),
(82, 11.03, NULL, 1, '2025-06-20 16:32:31', '2025-06-20 16:32:31'),
(83, 11111.03, '2', 4, '2025-06-20 16:39:03', '2025-06-20 16:39:03'),
(84, 1.03, '1', 1, '2025-06-26 06:08:27', '2025-06-26 06:08:27'),
(85, 500.00, '500', 4, '2025-07-12 13:13:33', '2025-07-12 13:13:33');

-- --------------------------------------------------------

--
-- Table structure for table `multipliers`
--

CREATE TABLE `multipliers` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `multiplier` int(11) NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multipliers`
--

INSERT INTO `multipliers` (`id`, `name`, `multiplier`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Umbrella', 11, 'https://demo.globalbet786.live/public/images/Amrela.png', '2025-02-12 11:06:32', '2025-02-12 11:06:32'),
(2, 'Ball', 11, 'https://demo.globalbet786.live/public/images/Ball.png', '2025-02-12 11:06:32', '2025-02-12 11:06:32'),
(3, 'Sun', 11, 'https://demo.globalbet786.live/public/images/sun.png', '2025-02-12 11:07:05', '2025-02-12 11:07:05'),
(4, 'Lamp', 11, 'https://demo.globalbet786.live/public/images/Lamp.png', '2025-02-12 11:07:05', '2025-02-12 11:07:05'),
(5, 'Cow', 11, 'https://demo.globalbet786.live/public/images/Cow.png', '2025-02-12 11:14:06', '2025-02-12 11:14:06'),
(6, 'Bucket', 11, 'https://demo.globalbet786.live/public/images/WatterDoll.png', '2025-02-12 11:14:06', '2025-02-12 11:14:06'),
(7, 'Kite', 11, 'https://demo.globalbet786.live/public/images/Kite.png', '2025-02-12 11:14:06', '2025-02-12 11:14:06'),
(8, 'Gariyo', 11, 'https://demo.globalbet786.live/public/images/Gariyo.png', '2025-02-12 11:14:06', '2025-02-12 11:14:06'),
(9, 'Rose', 11, 'https://demo.globalbet786.live/public/images/Rose.png', '2025-02-12 11:22:34', '2025-02-12 11:22:34'),
(10, 'Butterfly', 11, 'https://demo.globalbet786.live/public/images/Butterfly.png', '2025-02-12 11:22:34', '2025-02-12 11:22:34'),
(11, 'Egle', 11, 'https://demo.globalbet786.live/public/images/Egle.png', '2025-02-12 11:22:34', '2025-02-12 11:22:34'),
(12, 'Rabit', 11, 'https://demo.globalbet786.live/public/images/Rebit.png', '2025-02-12 11:22:34', '2025-02-12 11:22:34');

-- --------------------------------------------------------

--
-- Table structure for table `Notice`
--

CREATE TABLE `Notice` (
  `id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `content` varchar(555) NOT NULL,
  `image` varchar(256) NOT NULL,
  `status` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Notice`
--

INSERT INTO `Notice` (`id`, `title`, `content`, `image`, `status`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Welcome', 'Welcome to the Game', 'https://root.globalbet24.club/notice/1741761887.png', 1, 1, '2025-02-22 11:34:31', '2025-02-22 11:34:31');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `disc` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `name`, `disc`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Notification', '<p>Welcome to Gameon.deals</p>', 1, 'https://globalbet24.live/admin/uploads/icons/icon1.png', '2024-12-10 08:22:28', '2024-12-10 08:22:28'),
(9, NULL, 'More Play More Win!', 1, NULL, '2024-12-10 08:22:28', '2024-12-10 08:22:28'),
(14, 'SIGN UP', 'Congratulations User\r\n\r\nWelcome to the ultimate gaming experience! You\'ve just unlocked a new level by joining Globalbet24.live, and we are glad to see you on our amazing gaming platform.\r\n\r\nGet ready to dive into epic gameplay, compete with players from around the world, and discover tons of exclusive content and rewards.\r\n\r\n Your adventure starts now!  Here’s to countless victories, unforgettable moments, and enjoy level achievement every day!\r\n\r\nLet the games begin! \r\n\r\nThe Globalbet24 Team\r\n       .....', 1, NULL, '2024-12-10 08:22:28', '2024-12-10 08:22:28'),
(15, 'Deposit', 'Dear users,\r\n\r\nPlease wait for some time after recharge, do not back or refresh the page until the payment is successful.\r\nThanks.', 1, NULL, '2025-01-16 14:19:48', '2025-01-16 14:19:48');

-- --------------------------------------------------------

--
-- Table structure for table `otp_sms`
--

CREATE TABLE `otp_sms` (
  `id` int(11) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `status` varchar(155) DEFAULT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payins`
--

CREATE TABLE `payins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `cash` decimal(10,2) NOT NULL,
  `usdt_amount` float DEFAULT NULL,
  `extra_cash` decimal(10,2) DEFAULT NULL,
  `bonus` varchar(20) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `redirect_url` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '1- Manual',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=pending,2=success,3=reject',
  `response` varchar(200) DEFAULT NULL,
  `typeimage` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(555) DEFAULT NULL COMMENT 'Hash id of ethereum',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `extra_fdb_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payins`
--

INSERT INTO `payins` (`id`, `user_id`, `cash`, `usdt_amount`, `extra_cash`, `bonus`, `order_id`, `redirect_url`, `type`, `status`, `response`, `typeimage`, `transaction_id`, `created_at`, `updated_at`, `extra_fdb_id`) VALUES
(1, 2, 499.00, NULL, NULL, '301.00', '2025080615504445318', NULL, 1, 2, NULL, 'https://root.king77.games/public/screenshot_image/ca8CFBzhlG.png', NULL, '2025-08-06 15:50:44', '2025-08-06 15:50:44', 2),
(2, 7, 200.00, NULL, NULL, NULL, '2025080709475745580', NULL, 1, 2, NULL, 'uploads/screenshot_1754540277_9758.png', NULL, '2025-08-07 09:47:57', '2025-08-07 09:47:57', NULL),
(3, 7, 300.00, NULL, NULL, NULL, '2025080709491038317', NULL, 1, 2, NULL, 'uploads/screenshot_1754540350_5190.png', NULL, '2025-08-07 09:49:10', '2025-08-07 09:49:10', NULL),
(5, 1, 200.00, NULL, NULL, NULL, 'TXT2025080710550945', NULL, 1, 2, NULL, NULL, NULL, '2025-08-07 10:55:09', '2025-08-07 10:55:09', NULL),
(7, 826, 100000.00, NULL, NULL, NULL, 'via Admin', NULL, 2, 2, NULL, NULL, NULL, '2025-08-07 11:13:21', '2025-08-07 05:43:21', NULL),
(8, 4, 100000.00, NULL, NULL, NULL, 'via Admin', NULL, 2, 2, NULL, NULL, NULL, '2025-08-07 11:16:08', '2025-08-07 05:46:08', NULL),
(20, 1, 110.00, NULL, NULL, NULL, 'TXT370626331', 'https://root.king77.games/api/checkPayment?order_id=TXT370626331', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-07 16:02:39', '2025-08-07 16:02:39', NULL),
(22, 2, 110.00, NULL, NULL, NULL, 'TXT506104291', 'https://root.king77.games/api/checkPayment?order_id=TXT506104291', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-07 16:07:48', '2025-08-07 16:07:48', NULL),
(23, 2, 199.00, NULL, NULL, NULL, 'TXT432176616', 'https://root.king77.games/api/checkPayment?order_id=TXT432176616', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-07 19:10:27', '2025-08-07 19:10:27', NULL),
(25, 2, 110.00, NULL, NULL, NULL, 'TXT234336062', 'https://root.king77.games/api/checkPayment?order_id=TXT234336062', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-08 11:37:44', '2025-08-08 11:37:44', NULL),
(26, 2, 110.00, NULL, NULL, NULL, 'TXT871244447', 'https://root.king77.games/api/checkPayment?order_id=TXT871244447', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-08 15:38:01', '2025-08-08 15:38:01', NULL),
(29, 7, 110.00, NULL, NULL, NULL, 'TXT878806898', 'https://root.king77.games/api/checkPayment?order_id=TXT878806898', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 11:31:02', '2025-08-12 11:31:02', NULL),
(30, 2, 300.00, NULL, NULL, NULL, '2025081214223523273', NULL, 1, 2, NULL, 'uploads/screenshot_1754988755_4662.png', NULL, '2025-08-12 14:22:35', '2025-08-12 14:22:35', NULL),
(31, 4, 110.00, NULL, NULL, NULL, 'TXT544720323', 'https://root.king77.games/api/checkPayment?order_id=TXT544720323', 3, 2, 'success', 'https://root.king77.games/uploads/fastpay_image.png', '0', '2025-08-12 14:45:42', '2025-08-12 14:45:42', NULL),
(32, 4, 5000.00, NULL, NULL, NULL, 'TXT950180815', 'https://root.king77.games/api/checkPayment?order_id=TXT950180815', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 14:47:04', '2025-08-12 14:47:04', NULL),
(33, 8, 110.00, NULL, NULL, NULL, 'TXT202270175', 'https://root.king77.games/api/checkPayment?order_id=TXT202270175', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 16:24:06', '2025-08-12 16:24:06', NULL),
(34, 2, 111.00, NULL, NULL, NULL, 'TXT714369527', 'https://root.king77.games/api/checkPayment?order_id=TXT714369527', 3, 2, '400', 'https://root.king77.games/uploads/fastpay_image.png', '0', '2025-08-12 16:44:10', '2025-08-12 16:44:10', NULL),
(35, 2, 111.00, NULL, NULL, NULL, 'TXT853813826', 'https://root.king77.games/api/checkPayment?order_id=TXT853813826', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 16:46:36', '2025-08-12 16:46:36', NULL),
(36, 2, 112.00, NULL, NULL, NULL, 'TXT838318956', 'https://root.king77.games/api/checkPayment?order_id=TXT838318956', 3, 2, '400', 'https://root.king77.games/uploads/fastpay_image.png', '0', '2025-08-12 16:47:01', '2025-08-12 16:47:01', NULL),
(37, 4, 10000.00, NULL, NULL, NULL, 'TXT244262434', 'https://root.king77.games/api/checkPayment?order_id=TXT244262434', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 17:11:25', '2025-08-12 17:11:25', NULL),
(38, 4, 10000.00, NULL, NULL, NULL, 'TXT726210573', 'https://root.king77.games/api/checkPayment?order_id=TXT726210573', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 17:11:30', '2025-08-12 17:11:30', NULL),
(39, 4, 300.00, NULL, NULL, NULL, 'TXT784457382', 'https://root.king77.games/api/checkPayment?order_id=TXT784457382', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 17:11:35', '2025-08-12 17:11:35', NULL),
(40, 826, 300.00, NULL, NULL, NULL, 'TXT357560934', 'https://root.king77.games/api/checkPayment?order_id=TXT357560934', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 17:12:41', '2025-08-12 17:12:41', NULL),
(41, 2, 110.00, NULL, NULL, NULL, 'TXT782336754', 'https://root.king77.games/api/checkPayment?order_id=TXT782336754', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 18:48:08', '2025-08-12 18:48:08', NULL),
(42, 2, 110.00, NULL, NULL, NULL, 'TXT730484195', 'https://root.king77.games/api/checkPayment?order_id=TXT730484195', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 18:48:12', '2025-08-12 18:48:12', NULL),
(43, 2, 110.00, NULL, NULL, NULL, 'TXT732206081', 'https://root.king77.games/api/checkPayment?order_id=TXT732206081', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 18:48:13', '2025-08-12 18:48:13', NULL),
(44, 2, 110.00, NULL, NULL, NULL, 'TXT651718709', 'https://root.king77.games/api/checkPayment?order_id=TXT651718709', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 18:48:14', '2025-08-12 18:48:14', NULL),
(45, 2, 110.00, NULL, NULL, NULL, 'TXT221760577', 'https://root.king77.games/api/checkPayment?order_id=TXT221760577', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 18:48:15', '2025-08-12 18:48:15', NULL),
(46, 2, 110.00, NULL, NULL, NULL, 'TXT704853053', 'https://root.king77.games/api/checkPayment?order_id=TXT704853053', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 18:48:16', '2025-08-12 18:48:16', NULL),
(47, 2, 110.00, NULL, NULL, NULL, 'TXT944954496', 'https://root.king77.games/api/checkPayment?order_id=TXT944954496', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 18:48:26', '2025-08-12 18:48:26', NULL),
(48, 2, 110.00, NULL, NULL, NULL, 'TXT803863140', 'https://root.king77.games/api/checkPayment?order_id=TXT803863140', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 18:48:28', '2025-08-12 18:48:28', NULL),
(49, 2, 110.00, NULL, NULL, NULL, 'TXT723981654', 'https://root.king77.games/api/checkPayment?order_id=TXT723981654', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 18:48:29', '2025-08-12 18:48:29', NULL),
(50, 2, 200.00, NULL, NULL, NULL, 'TXT446382414', 'https://root.king77.games/api/checkPayment?order_id=TXT446382414', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 18:48:31', '2025-08-12 18:48:31', NULL),
(51, 2, 110.00, NULL, NULL, NULL, 'TXT849445931', 'https://root.king77.games/api/checkPayment?order_id=TXT849445931', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 18:49:41', '2025-08-12 18:49:41', NULL),
(52, 2, 110.00, NULL, NULL, NULL, 'TXT581842415', 'https://root.king77.games/api/checkPayment?order_id=TXT581842415', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 18:53:07', '2025-08-12 18:53:07', NULL),
(53, 2, 110.00, NULL, NULL, NULL, 'TXT997911694', 'https://root.king77.games/api/checkPayment?order_id=TXT997911694', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 18:53:22', '2025-08-12 18:53:22', NULL),
(54, 2, 110.00, NULL, NULL, NULL, 'TXT269657756', 'https://root.king77.games/api/checkPayment?order_id=TXT269657756', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 18:55:05', '2025-08-12 18:55:05', NULL),
(55, 2, 110.00, NULL, NULL, NULL, 'TXT303249520', 'https://root.king77.games/api/checkPayment?order_id=TXT303249520', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 19:00:41', '2025-08-12 19:00:41', NULL),
(56, 2, 110.00, NULL, NULL, NULL, 'TXT123561162', 'https://root.king77.games/api/checkPayment?order_id=TXT123561162', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 19:15:27', '2025-08-12 19:15:27', NULL),
(57, 2, 110.00, NULL, NULL, NULL, 'TXT922598373', 'https://root.king77.games/api/checkPayment?order_id=TXT922598373', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 19:18:35', '2025-08-12 19:18:35', NULL),
(58, 830, 100000.00, NULL, NULL, NULL, 'via Admin', NULL, 2, 2, NULL, NULL, NULL, '2025-08-12 19:18:56', '2025-08-12 13:48:56', NULL),
(59, 829, 100000.00, NULL, NULL, NULL, 'via Admin', NULL, 2, 2, NULL, NULL, NULL, '2025-08-12 19:19:07', '2025-08-12 13:49:07', NULL),
(60, 828, 100000.00, NULL, NULL, NULL, 'via Admin', NULL, 2, 2, NULL, NULL, NULL, '2025-08-12 19:19:18', '2025-08-12 13:49:18', NULL),
(61, 827, 1000000.00, NULL, NULL, NULL, 'via Admin', NULL, 2, 2, NULL, NULL, NULL, '2025-08-12 19:19:26', '2025-08-12 13:49:26', NULL),
(62, 2, 110.00, NULL, NULL, NULL, 'TXT963394406', 'https://root.king77.games/api/checkPayment?order_id=TXT963394406', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 19:19:37', '2025-08-12 19:19:37', NULL),
(63, 826, 100000.00, NULL, NULL, NULL, 'via Admin', NULL, 2, 2, NULL, NULL, NULL, '2025-08-12 19:19:39', '2025-08-12 13:49:39', NULL),
(64, 2, 110.00, NULL, NULL, NULL, 'TXT974359695', 'https://root.king77.games/api/checkPayment?order_id=TXT974359695', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 19:20:18', '2025-08-12 19:20:18', NULL),
(65, 2, 110.00, NULL, NULL, NULL, 'TXT929382430', 'https://root.king77.games/api/checkPayment?order_id=TXT929382430', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 19:21:10', '2025-08-12 19:21:10', NULL),
(66, 2, 110.00, NULL, NULL, NULL, 'TXT559978335', 'https://root.king77.games/api/checkPayment?order_id=TXT559978335', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 19:23:19', '2025-08-12 19:23:19', NULL),
(67, 2, 110.00, NULL, NULL, NULL, 'TXT375550241', 'https://root.king77.games/api/checkPayment?order_id=TXT375550241', 3, 2, '400', 'https://root.king77.games/uploads/fastpay_image.png', '0', '2025-08-12 19:23:38', '2025-08-12 19:23:38', NULL),
(68, 2, 110.00, NULL, NULL, NULL, 'TXT931406668', 'https://root.king77.games/api/checkPayment?order_id=TXT931406668', 3, 2, '400', 'https://root.king77.games/uploads/fastpay_image.png', '0', '2025-08-12 19:28:00', '2025-08-12 19:28:00', NULL),
(69, 2, 110.00, NULL, NULL, NULL, 'TXT528705976', 'https://root.king77.games/api/checkPayment?order_id=TXT528705976', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 19:29:01', '2025-08-12 19:29:01', NULL),
(70, 2, 110.00, NULL, NULL, NULL, 'TXT277081404', 'https://root.king77.games/api/checkPayment?order_id=TXT277081404', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 19:29:20', '2025-08-12 19:29:20', NULL),
(71, 2, 110.00, NULL, NULL, NULL, 'TXT349577538', 'https://root.king77.games/api/checkPayment?order_id=TXT349577538', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 19:29:39', '2025-08-12 19:29:39', NULL),
(72, 2, 110.00, NULL, NULL, NULL, 'TXT442914818', 'https://root.king77.games/api/checkPayment?order_id=TXT442914818', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 19:29:41', '2025-08-12 19:29:41', NULL),
(73, 2, 110.00, NULL, NULL, NULL, 'TXT308791536', 'https://root.king77.games/api/checkPayment?order_id=TXT308791536', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 19:30:23', '2025-08-12 19:30:23', NULL),
(74, 2, 110.00, NULL, NULL, NULL, 'TXT723222779', 'https://root.king77.games/api/checkPayment?order_id=TXT723222779', 3, 2, '400', 'https://root.king77.games/uploads/fastpay_image.png', '0', '2025-08-12 19:30:59', '2025-08-12 19:30:59', NULL),
(75, 2, 110.00, NULL, NULL, NULL, 'TXT358650325', 'https://root.king77.games/api/checkPayment?order_id=TXT358650325', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 19:31:14', '2025-08-12 19:31:14', NULL),
(76, 2, 110.00, NULL, NULL, NULL, 'TXT698041749', 'https://root.king77.games/api/checkPayment?order_id=TXT698041749', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 19:32:30', '2025-08-12 19:32:30', NULL),
(77, 2, 110.00, NULL, NULL, NULL, 'TXT701455817', 'https://root.king77.games/api/checkPayment?order_id=TXT701455817', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 19:32:59', '2025-08-12 19:32:59', NULL),
(78, 8, 110.00, NULL, NULL, NULL, 'TXT500046174', 'https://root.king77.games/api/checkPayment?order_id=TXT500046174', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 19:42:55', '2025-08-12 19:42:55', NULL),
(79, 8, 110.00, NULL, NULL, NULL, 'TXT566414804', 'https://root.king77.games/api/checkPayment?order_id=TXT566414804', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 19:42:58', '2025-08-12 19:42:58', NULL),
(80, 2, 110.00, NULL, NULL, NULL, 'TXT694069318', 'https://root.king77.games/api/checkPayment?order_id=TXT694069318', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 19:47:25', '2025-08-12 19:47:25', NULL),
(81, 8, 110.00, NULL, NULL, NULL, 'TXT235240191', 'https://root.king77.games/api/checkPayment?order_id=TXT235240191', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-12 20:46:42', '2025-08-12 20:46:42', NULL),
(82, 2, 110.00, NULL, NULL, NULL, 'TXT641558490', 'https://root.king77.games/api/checkPayment?order_id=TXT641558490', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-13 07:06:50', '2025-08-13 07:06:50', NULL),
(83, 2, 110.00, NULL, NULL, NULL, 'TXT734784118', 'https://root.king77.games/api/checkPayment?order_id=TXT734784118', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-13 07:06:51', '2025-08-13 07:06:51', NULL),
(84, 2, 110.00, NULL, NULL, NULL, 'TXT299934230', 'https://root.king77.games/api/checkPayment?order_id=TXT299934230', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-13 07:07:01', '2025-08-13 07:07:01', NULL),
(85, 2, 110.00, NULL, NULL, NULL, 'TXT213891070', 'https://root.king77.games/api/checkPayment?order_id=TXT213891070', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-13 09:33:25', '2025-08-13 09:33:25', NULL),
(86, 2, 110.00, NULL, NULL, NULL, 'TXT505503178', 'https://root.king77.games/api/checkPayment?order_id=TXT505503178', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-13 09:35:54', '2025-08-13 09:35:54', NULL),
(87, 3, 110.00, NULL, NULL, NULL, 'TXT150459178', 'https://root.king77.games/api/checkPayment?order_id=TXT150459178', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-13 14:05:05', '2025-08-13 14:05:05', NULL),
(88, 2, 112.00, NULL, NULL, NULL, 'TXT301351446', 'https://root.king77.games/api/checkPayment?order_id=TXT301351446', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-13 14:05:27', '2025-08-13 14:05:27', NULL),
(89, 2, 112.00, NULL, NULL, NULL, 'TXT513345956', 'https://root.king77.games/api/checkPayment?order_id=TXT513345956', 3, 2, '400', 'https://root.king77.games/uploads/fastpay_image.png', '0', '2025-08-13 14:06:06', '2025-08-13 14:06:06', NULL),
(90, 3, 110.00, NULL, NULL, NULL, 'TXT192512194', 'https://root.king77.games/api/checkPayment?order_id=TXT192512194', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-13 14:07:14', '2025-08-13 14:07:14', NULL),
(91, 3, 1110.00, NULL, NULL, NULL, 'TXT796308355', 'https://root.king77.games/api/checkPayment?order_id=TXT796308355', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-13 14:08:16', '2025-08-13 14:08:16', NULL),
(92, 2, 112.00, NULL, NULL, NULL, 'TXT846429030', 'https://root.king77.games/api/checkPayment?order_id=TXT846429030', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-13 14:11:03', '2025-08-13 14:11:03', NULL),
(93, 3, 1110.00, NULL, NULL, NULL, 'TXT133915755', 'https://root.king77.games/api/checkPayment?order_id=TXT133915755', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-13 14:11:57', '2025-08-13 14:11:57', NULL),
(94, 3, 1110.00, NULL, NULL, NULL, 'TXT925894282', 'https://root.king77.games/api/checkPayment?order_id=TXT925894282', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-13 14:12:04', '2025-08-13 14:12:04', NULL),
(95, 2, 112.00, NULL, NULL, NULL, 'TXT380001274', 'https://root.king77.games/api/checkPayment?order_id=TXT380001274', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-13 14:14:15', '2025-08-13 14:14:15', NULL),
(96, 3, 110.00, NULL, NULL, NULL, 'TXT835386537', 'https://root.king77.games/api/checkPayment?order_id=TXT835386537', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-13 14:14:37', '2025-08-13 14:14:37', NULL),
(97, 2, 110.00, NULL, NULL, NULL, 'TXT533886797', 'https://root.king77.games/api/checkPayment?order_id=TXT533886797', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-13 14:20:54', '2025-08-13 14:20:54', NULL),
(98, 2, 110.00, NULL, NULL, NULL, 'TXT919641633', 'https://root.king77.games/api/checkPayment?order_id=TXT919641633', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-13 14:21:21', '2025-08-13 14:21:21', NULL),
(99, 2, 110.00, NULL, NULL, NULL, 'TXT212871752', 'https://root.king77.games/api/checkPayment?order_id=TXT212871752', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-13 14:29:39', '2025-08-13 14:29:39', NULL),
(100, 2, 110.00, NULL, NULL, NULL, 'TXT586540768', 'https://root.king77.games/api/checkPayment?order_id=TXT586540768', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-13 14:40:50', '2025-08-13 14:40:50', NULL),
(101, 2, 110.00, NULL, NULL, NULL, 'TXT166157660', 'https://root.king77.games/api/checkPayment?order_id=TXT166157660', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-13 14:41:01', '2025-08-13 14:41:01', NULL),
(102, 2, 110.00, NULL, NULL, NULL, 'TXT226394870', 'https://root.king77.games/api/checkPayment?order_id=TXT226394870', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-13 14:41:08', '2025-08-13 14:41:08', NULL),
(103, 2, 110.00, NULL, NULL, NULL, 'TXT868383439', 'https://root.king77.games/api/checkPayment?order_id=TXT868383439', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-13 14:45:51', '2025-08-13 14:45:51', NULL),
(104, 2, 110.00, NULL, NULL, NULL, 'TXT888340401', 'https://root.king77.games/api/checkPayment?order_id=TXT888340401', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-13 14:46:19', '2025-08-13 14:46:19', NULL),
(105, 2, 110.00, NULL, NULL, NULL, 'TXT748278153', 'https://root.king77.games/api/checkPayment?order_id=TXT748278153', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-13 14:46:47', '2025-08-13 14:46:47', NULL),
(106, 2, 110.00, NULL, NULL, NULL, 'TXT828209377', 'https://root.king77.games/api/checkPayment?order_id=TXT828209377', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-13 14:48:02', '2025-08-13 14:48:02', NULL),
(107, 2, 110.00, NULL, NULL, NULL, 'TXT281640232', 'https://root.king77.games/api/checkPayment?order_id=TXT281640232', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-13 15:13:46', '2025-08-13 15:13:46', NULL),
(108, 2, 110.00, NULL, NULL, NULL, 'TXT127563674', 'https://root.king77.games/api/checkPayment?order_id=TXT127563674', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-13 15:15:04', '2025-08-13 15:15:04', NULL),
(109, 2, 110.00, NULL, NULL, NULL, 'TXT157715697', 'https://root.king77.games/api/checkPayment?order_id=TXT157715697', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-13 17:17:32', '2025-08-13 17:17:32', NULL),
(110, 2, 110.00, NULL, NULL, NULL, 'TXT794253007', 'https://root.king77.games/api/checkPayment?order_id=TXT794253007', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-13 18:14:27', '2025-08-13 18:14:27', NULL),
(111, 2, 110.00, NULL, NULL, NULL, 'TXT275185803', 'https://root.king77.games/api/checkPayment?order_id=TXT275185803', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-13 18:16:38', '2025-08-13 18:16:38', NULL),
(112, 826, 10000000.00, NULL, NULL, NULL, 'via Admin', NULL, 2, 2, NULL, NULL, NULL, '2025-08-13 18:23:23', '2025-08-13 12:53:23', NULL),
(113, 2, 110.00, NULL, NULL, NULL, 'TXT158000919', 'https://root.king77.games/api/checkPayment?order_id=TXT158000919', 3, 1, NULL, 'https://root.king77.games/uploads/fastpay_image.png', NULL, '2025-08-14 09:20:18', '2025-08-14 09:20:18', NULL),
(114, 8, 110.00, NULL, NULL, NULL, 'TXT559914453', 'https://root.king77.games/api/checkPayment?order_id=TXT559914453', 3, 2, 'pending', 'https://root.king77.games/uploads/fastpay_image.png', '0', '2025-08-14 10:01:08', '2025-08-14 10:01:08', NULL),
(115, 8, 500.00, NULL, NULL, NULL, 'TXT270430529', 'https://root.king77.games/api/checkPayment?order_id=TXT270430529', 3, 2, 'pending', 'https://root.king77.games/uploads/fastpay_image.png', '0', '2025-08-14 10:09:37', '2025-08-14 10:09:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_limits`
--

CREATE TABLE `payment_limits` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` float(10,2) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `payment_limits`
--

INSERT INTO `payment_limits` (`id`, `name`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'INR_minimum_deposit', 110.00, 1, '2025-01-31 05:26:56', '2025-02-06 11:32:49'),
(2, 'INR_maximum_deposit', 100000.00, 1, '2025-01-31 05:28:13', '2025-02-06 11:33:26'),
(3, 'INR_minimum_withdraw', 500.00, 1, '2025-01-31 05:28:58', '2025-08-04 08:36:33'),
(4, 'INR_maximum_withdraw', 100000.00, 1, '2025-01-31 05:28:58', '2025-02-06 11:33:38'),
(9, 'USDT_minimum_deposit', 10.00, 1, '2025-01-31 05:28:58', '2025-01-31 09:25:17'),
(10, 'USDT_maximum_deposit', 5000.00, 1, '2025-01-31 05:28:58', '2025-01-31 10:21:16'),
(11, 'USDT_minimum_withdraw', 10.00, 1, '2025-01-31 05:28:58', '2025-01-31 09:25:31'),
(12, 'USDT_maximum_withdraw', 5000.00, 1, '2025-01-31 05:28:58', '2025-01-31 09:25:41'),
(13, 'deposit_conversion_rate', 95.00, 1, '2025-01-31 05:28:58', '2025-02-13 08:02:21'),
(14, 'withdraw_conversion_rate', 95.00, 1, '2025-01-31 05:28:58', '2025-02-13 08:03:09');

-- --------------------------------------------------------

--
-- Table structure for table `payzaar_callback`
--

CREATE TABLE `payzaar_callback` (
  `id` int(11) NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_modes`
--

CREATE TABLE `pay_modes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `pay_modes`
--

INSERT INTO `pay_modes` (`id`, `name`, `image`, `status`, `type`) VALUES
(1, 'USDT ', 'https://root.globalbet24.live/usdtIcon.png', 1, '2'),
(2, 'India Pay', 'https://root.king77.games/public/uploads/favicon1.png', 1, '3'),
(3, 'Manual Payment', 'https://root.king77.games/public/favicon1.png', 1, '0');

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plinko_bets`
--

CREATE TABLE `plinko_bets` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT 'type=1 green,type=2 yellow,type=3 red',
  `indexs` int(11) DEFAULT NULL,
  `multipler` varchar(255) DEFAULT NULL,
  `win_amount` double DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tax` varchar(155) DEFAULT NULL,
  `after_tax` varchar(155) DEFAULT NULL,
  `orderid` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plinko_index_lists`
--

CREATE TABLE `plinko_index_lists` (
  `id` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `multiplier` double DEFAULT NULL,
  `indexs` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `plinko_index_lists`
--

INSERT INTO `plinko_index_lists` (`id`, `type`, `multiplier`, `indexs`, `status`, `datetime`) VALUES
(1, 1, 2, '1', 1, '2024-06-12 10:06:29'),
(2, 1, 0.6, '2', 1, '2024-06-12 10:09:06'),
(3, 1, 1.1, '3', 1, '2024-06-12 10:09:06'),
(4, 1, 0.8, '4', 1, '2024-06-12 10:09:06'),
(5, 1, 1.2, '5', 1, '2024-06-12 10:09:06'),
(6, 1, 0.4, '6', 1, '2024-06-12 10:09:06'),
(7, 1, 0.3, '7', 1, '2024-06-12 10:09:06'),
(8, 1, 1.6, '8', 1, '2024-06-12 10:09:06'),
(9, 2, 1.5, '1', 1, '2024-06-12 10:13:31'),
(10, 2, 0.1, '2', 1, '2024-06-12 10:13:31'),
(11, 2, 0.9, '3', 1, '2024-06-12 10:13:31'),
(12, 2, 1.1, '4', 1, '2024-06-12 10:13:31'),
(13, 2, 0.7, '5', 1, '2024-06-12 10:13:31'),
(14, 2, 1.4, '6', 1, '2024-06-12 10:13:31'),
(15, 2, 0.6, '7', 1, '2024-06-12 10:13:31'),
(16, 2, 1.3, '8', 1, '2024-06-12 10:13:31'),
(17, 3, 1.7, '1', 1, '2024-06-12 10:16:24'),
(18, 3, 0.3, '2', 1, '2024-06-12 10:16:24'),
(19, 3, 1.2, '3', 1, '2024-06-12 10:16:24'),
(20, 3, 0.6, '4', 1, '2024-06-12 10:16:24'),
(21, 3, 1.3, '5', 1, '2024-06-12 10:16:24'),
(22, 3, 0.1, '6', 1, '2024-06-12 10:16:24'),
(23, 3, 0.7, '7', 1, '2024-06-12 10:16:24'),
(24, 3, 1.9, '8', 1, '2024-06-12 10:16:24'),
(25, 1, 0.6, '9', 1, '2024-06-12 10:16:24'),
(26, 1, 1.3, '10', 1, '2024-06-12 10:16:24'),
(27, 1, 0.1, '11', 1, '2024-06-12 10:16:24'),
(28, 1, 0.7, '12', 1, '2024-06-12 10:16:24'),
(29, 1, 1.9, '13', 1, '2024-06-12 10:16:24'),
(30, 2, 1.1, '9', 1, '2024-06-12 10:13:31'),
(31, 2, 0.7, '10', 1, '2024-06-12 10:13:31'),
(32, 2, 1.4, '11', 1, '2024-06-12 10:13:31'),
(33, 2, 0.6, '12', 1, '2024-06-12 10:13:31'),
(34, 2, 1.3, '13', 1, '2024-06-12 10:13:31'),
(35, 3, 0.6, '9', 1, '2024-06-12 10:16:24'),
(36, 3, 1.3, '10', 1, '2024-06-12 10:16:24'),
(37, 3, 0.1, '11', 1, '2024-06-12 10:16:24'),
(38, 3, 0.7, '12', 1, '2024-06-12 10:16:24'),
(39, 3, 1.9, '13', 1, '2024-06-12 10:16:24');

-- --------------------------------------------------------

--
-- Table structure for table `roast_control`
--

CREATE TABLE `roast_control` (
  `id` int(11) NOT NULL,
  `types` int(11) NOT NULL,
  `roast_multiplier` decimal(20,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roast_control`
--

INSERT INTO `roast_control` (`id`, `types`, `roast_multiplier`) VALUES
(1, 1, 0.00),
(2, 2, 0.00),
(3, 3, 0.00),
(4, 4, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `rules`
--

CREATE TABLE `rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `game_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `list` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rules`
--

INSERT INTO `rules` (`id`, `game_id`, `type`, `name`, `list`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Invitation Reward Rule', '[\"Only when the number of invited accounts is reached and each account can meet the recharge amount can you receive the bonus.\", \"The invitation account meets the requirements, but the recharge amount of the account does not meet the requirements, and the bonus cannot be claimed.\", \"Please claim the event bonus within the event period. All bonuses will be cleared after the event expires.\", \"Please complete the task within the event period. After the event expires, the invitation record will be cleared.\"]', 0, '2024-05-01 10:19:01', '2024-05-01 10:19:01'),
(2, 1, 2, 'Withdraw Rule', '[\"Withdraw time 00:00-23:59\", \"Inday Remaining Withdrawal Times 3\", \"Withdrawal amount range ₹200\", \"Please confirm your beneficial account information before withdrawing. If your information is incorrect, our company will not be liable for the amount of loss.\", \"If your beneficial information is incorrect, please contact customer service.\"]', 0, '2024-05-01 10:19:01', '2024-05-01 10:19:01'),
(3, 1, 3, 'Deposit Rule', '[\"If the transfer time is up, please fill out the deposit form again.\", \"The transfer amount must match the order you created, otherwise the money cannot be credited successfully.\", \"If you transfer the wrong amount, our company will not be responsible for the lost amount!\", \"Note: do not cancel the deposit order after the money has been transferred.\"]', 0, '2024-05-01 17:16:49', '2024-05-01 17:16:49'),
(4, 1, 4, 'Attendance Game Rule', '[\"The higher the number of consecutive login days, the more rewards you get, up to 7 consecutive days.\", \"During the activity, please check once a day.\", \"Players with no deposit history cannot claim the bonus\", \"Deposit requirements must be met from day one.\", \"The platform reserves the right to final interpretation of this activity.\", \"When you encounter problems, please contact customer service\"]', 0, '2024-05-01 17:16:49', '2024-05-01 17:16:49'),
(5, 1, 5, 'Home page animated text', '[\"Welcome to the GlobalBet-24 Games!  Greetings, Gamers and Enthusiasts!  The GlobalBet-24 Games is more than just a platform for gaming.  We invite you to join us, you\'ll find a variety of games, promo, bonus, luxury gold awards, Register now and win..\", \"If your deposit not receive, please send it directly to GlobalBet-24 Games Self-service Center (https://globalbet24.live/) wait till already get process, do not send to another person and trust anyone claiming to represent GlobalBet-24 Games. Always verify our website authenticity through the official community channels. Your safety and trust is our prority.\"]', 0, '2024-05-01 17:16:49', '2024-05-01 17:16:49'),
(6, 1, 6, 'Wingo animated text', '[\"Welcome to the GlobalBet-24 Games!  Greetings, Gamers and Enthusiasts!  The GlobalBet-24 Games is more than just a platform for gaming.  We invite you to join us, you\'ll find a variety of games, promo, bonus, luxury gold awards, Register now and win.\", \"If your deposit not receive, please send it directly to GlobalBet-24 Games Self-service Center (https://globalbet24.live/) wait till already get process, do not send to another person and trust anyone claiming to represent GlobalBet-24 Games. Always verify our website authenticity through the official community channels. Your safety and trust is our prority.\"]', 0, '2024-05-01 17:16:49', '2024-05-01 17:16:49');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `type`, `name`, `description`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'About us', 'Welcome to Gameon App. Gameon -24 is a dynamic gaming platform offering a multi-gaming experience that caters to enthusiasts of all kinds. Whether you enjoy strategic games like Dragon Tiger, thrilling games like Aviator, or fun games like Plinko and Color Prediction, Gameon -24 is your go-to destination for diverse and exciting gameplay. Our mission is to provide an engaging and fair gaming environment where players can compete, have fun, and win rewards. We are committed to continuous innovation, ensuring our platform stays fresh and captivating. Join us on this exciting journey and be a part of our growing community!</p>\r\n\r\n<p>Gameon -24 is operates its portal in India, which offers online fantasy sports, E-sports, casual games, and card-based games through the web portal&nbsp;{win4cash.club} and mobile application(s) available on Play Store and app store as well as on our official website (collectively referred to as the &ldquo;portal&rdquo;) (Gameon is a product of Gameon -24 Tech LLPreferred to herein as &ldquo;Gameon&rdquo; or &ldquo;we&rdquo; or &ldquo;us&rdquo; &ldquo;our&rdquo;).</p>\r\n\r\n<p>Gameon&nbsp;is considered a &ldquo;game of skill.&rdquo; The game of skills can be defined as a game wherein the skills of the individuals participating in any online e-sports gaming play a dominant role rather than the mere luck of the individuals.</p>\r\n\r\n<p>Gameon -&nbsp;respects the privacy of its users and is committed to protecting it in all respects. To offer an enriching and holistic internet experience to its users,&nbsp;Gameon offers a vast repository of amusement facilities. kindly take time to read the &#39;about us&#39; section to learn more about&nbsp;Gameon Most of the amusement facilities are offered for free but you may need registration to participate in&nbsp;Gameon online games.</p>\r\n\r\n<p>The information about the user is collected by&nbsp;Gameon  as (i) information supplied by users and (ii) information automatically tracked during the user&#39;s navigation on&nbsp;Gameon </p>\r\n\r\n<p>Before you submit any information to the portal, please read this privacy policy for an explanation of how we will treat your personal information. by using any part of the portal, you consent to the collection, use, disclosure, and transfer of your personal information for the purposes outlined in this privacy policy and to the collection, processing, and maintenance of this information. If you do not agree to this Privacy Policy, please do not use the portal. Your use of any part of the portal indicates your acceptance of this privacy policy and the collection, use, and disclosure of your personal information by this Privacy Policy. While you have the option not to provide us with certain information or withdraw consent to collect certain information, kindly note that in such an event you may not be able to take full advantage of the entire scope of features and services offered to you and we reserve the right not to provide you with our services.</p>\r\n\r\n<p>Purpose and Usage:<br />\r\nTo utilize certain services on the Portal, users are required to provide specific information during the registration process.</p>\r\n\r\n<p>This information includes-</p>\r\n\r\n<p>1. Profile Picture (the image that you upload from your device)&nbsp;<br />\r\n2. Name&nbsp;<br />\r\n3. Email address &nbsp;<br />\r\n4. Date of birth&nbsp;<br />\r\n5. State<br />\r\n6. Government ids such as aadhaar card or driver&#39;s license or voter id</p>\r\n\r\n<p>Furthermore, to grant you access to the features offered through the Portal, verify your identity, and safeguard your account, we may request your permission to capture and record device-related information, operating system details, network specifics, and location data. Additionally, we may seek your consent to gather information regarding the apps installed on your device. This allows us to enhance our services and improve your overall experience on the Portal. In certain cases, you may also be required to provide additional information, such as your Permanent Account Number (PAN).</p>\r\n\r\n<p>In specific instances, we may collect sensitive personal information (SPI) from you on the Portal. SPI refers to personal information that pertains to your financial details, such as the payment instrument or mode used for transactions. The collection of such SPI is solely to facilitate prompt and secure payments.</p>\r\n\r\n<p>It is important to note that aside from the financial information provided during payment for services on the&nbsp;&nbsp;Gameon&nbsp;does not collect any other SPI while delivering the services. Any SPI collected by&nbsp;Gameon will not be disclosed to any third-party service providers without your explicit consent, except as otherwise stated in this Privacy Policy or as required by law. This condition does not apply to publicly available information, including SPI related to you on the Portal.</p>\r\n\r\n<p>We collect and utilize personal information (i.e., information that can be used to identify you and is not publicly available) to operate, provide, develop, and enhance the services we offer. This includes keeping you informed about our offerings, as well as the products and services provided by our affiliates and group entities. Additionally, we may share this information with our affiliates and group entities, who may contact you regarding their products and services.</p>\r\n\r\n<p>While using the services, users may invite other existing users or new users (referred to as &quot;Invited Users&quot;) to participate in the services through various social media platforms such as Facebook, WhatsApp, Instagram, etc. The information provided for this purpose may be used to contact and invite the Invited Users to register with&nbsp;Gameon and participate in the relevant game. The participation of Invited Users in any game is subject to the terms outlined in this Privacy Policy and the Terms and Conditions for using the Portal. By inviting others, you confirm that the Invited Users have consented to and agreed with the disclosure of their information to us, our affiliates, and/or our group entities. Additionally, you may choose to invite your friends by synchronizing your phonebook and directly inviting them from the Portal to play the game and utilize the services.</p>\r\n\r\n<p>All the required information is specific to the type of game or services the user wishes to participate in or access. It will be utilized solely to provide the requested services and ensure a seamless user experience.</p>\r\n\r\n<p>Disclosure/Sharing:<br />\r\nGameon&nbsp;may share the information provided by you and data concerning your usage of the Services and participation in the Games with its affiliates and group entities. This sharing is intended to enable Gameon&rsquo;s affiliates and group entities to contact you regarding the products and services they offer. Additionally,&nbsp;Gameon may share such information with third-party service providers engaged by&nbsp;Gameon for purposes such as data analytics, storage, service improvements (including product enhancements), and to enhance your overall experience with Gameon. Any affiliate, group entity, or third-party service provider with whom the information is shared will be required to maintain the same standards as&nbsp;Gameon in terms of information security to the best of their abilities.</p>\r\n\r\n<p>By using the Portal, you explicitly agree and grant consent to the collection, use, and storage of your information by&nbsp;Gameon reserves the right to share, disclose, and transfer the information collected, including personal information, with its affiliates and group entities. If&nbsp;Gameon sells or transfers all or a portion of its business assets, consumer information may be shared, disclosed, or transferred as part of the transaction. Therefore, you expressly grant consent and permission to&nbsp;Gameon for the disclosure and transfer of personal information to such third parties.</p>\r\n\r\n<p>Gameon&nbsp;may share information and data regarding the usage of the Services and participation in the Game with its commercial partners to facilitate user engagement, marketing and promotional activities, and other related purposes. Furthermore,&nbsp;Gameon reserves the right to disclose or share information with affiliates, group entities, and third parties in limited circumstances. These circumstances include complying with applicable laws, responding to duly authorized legal processes or governmental requests, preventing fraud or imminent harm, and ensuring the security of our network and services.</p>\r\n\r\n<p>Use of cookies:<br />\r\nTo improve the effectiveness and usability of the portal for our users, we use &quot;cookies&quot;, or such similar electronic tools to collect information to assign each visitor a unique random number as a User Identification (User ID) to understand the User&#39;s interests using the identified computer. Unless the user voluntarily identifies himself/herself (e.g., through registration),&nbsp;Gameon has no way of knowing who the User is, even if we assign a cookie to the User&#39;s computer. The only personal information a cookie can contain is information supplied by the User. a cookie cannot read data off the user&#39;s hard drive.&nbsp;Gameon advertisers may also assign their cookies to the user&#39;s browser (if the User clicks on their ad banners), a process that&nbsp;Gameon does not control.</p>\r\n\r\n<p>Gameon&nbsp;web servers automatically collect limited information about a user&#39;s computer&#39;s connection to the internet, including the user&#39;s IP address, when the user visits the Portal. (The user&#39;s IP address is a number that lets computers attached to the Internet know where to send data to the User -- such as the web pages viewed by the User). The User&#39;s IP address does not identify the User personally.&nbsp;Gameon uses this information to deliver its web pages to Users upon request, to tailor its Portal to the interests of its users, to measure traffic within the Portal, and to let advertisers know the geographic locations from where&nbsp;Gameon visitors come.</p>\r\n\r\n<p>Links:<br />\r\nGameon&nbsp;also includes links to other websites. such websites are governed by their respective privacy policies, which are beyond Gameon&#39;s control. Once the User leaves&nbsp;Gameon servers (the User can tell where he/she is by checking the URL in the location bar on the User&#39;s browser), the use of any information provided by the User is governed by the privacy policy of the operator of the site which the User is visiting. That policy may differ from Gameon&#39;s own. If the user can&#39;t find the privacy policy of any of these sites via a link from the site&#39;s homepage, the user may contact the site directly for more information.&nbsp;Gameon is not responsible for the privacy practices or the content of such websites.</p>\r\n\r\n<p>Security procedures:<br />\r\nAll information gathered on&nbsp;Gameon has been securely stored within Gameon-controlled databases. The database is stored on servers secured behind a firewall; access to such servers is password-protected and strictly limited based on a need-to-know basis. However, we understand that as effective as our security measures are, no security system is impenetrable. Thus, we cannot guarantee the security of our database, nor can we guarantee that the information you supply will not be intercepted while being transmitted to us over the Internet. Further, any information you include in a posting to the discussion areas will be available to anyone with internet access. By using the portal, you understand and agree that your information may be used in or transferred to countries other than India.</p>\r\n\r\n<p>Gameon&nbsp;also believes that the internet is an ever-evolving medium. We may periodically review from time to time and change our privacy policy to incorporate such future changes as may be considered appropriate, without any notice to you. Our use of any information we gather will always be consistent with the policy under which the information was collected, regardless of what the new policy may be. Any changes to our privacy policy will be posted on this page, so you are always aware of what information we collect, how we use it, how we store it, and under what circumstances we disclose it.</p>\r\n\r\n<p>Advertising:<br />\r\nWhen&nbsp;Gameon presents information to its online advertisers -- to help them understand our audience and confirm the value of advertising on the portal -- it is usually in the form of aggregated statistics on traffic to various pages within our site. When you register with Gameon, we contact you from time to time about updating your content to provide features that we believe may benefit you. By registering on our portal, you agree to receive all communications from us including promotional messages relating to tournaments, contests, leagues &amp; bonuses through SMS, voice call, email &amp; push notifications.</p>\r\n\r\n<p>Disclaimer:<br />\r\nThere are deceptive emails, websites, blogs, and other online communications circulating on the internet that falsely claim to be associated with or from&nbsp;Gameon These deceptive communications may feature our logo, photos, links, content, or other information. Some of them may even contact users directly, asking for login credentials, passwords, or personal information. They may also falsely inform users that they have won a prize or offer a method to engage in illegal or unauthorized activities. We want to clarify that these deceptive communications and their accompanying materials are in no way associated with&nbsp;Gameon To ensure your safety, we strongly advise against responding to such deceptive communications. Please be aware that we will not be held responsible for any loss, damage, or harm that you may experience as a result of relying on or acting upon such deceptive communications.</p>\r\n\r\n<p>Please note that unless it is necessary for verification purposes as outlined in the Terms and Conditions, we and our employees will not contact you to request your sensitive personal information (SPI).</p>\r\n\r\n<p>Conditions of use:<br />\r\nGameon&nbsp;does not warrant that this portal, its servers, or emails sent by us or on our behalf are virus-free.&nbsp;Gameon will not be liable for any damages of any kind arising from the use of this portal, including, but not limited to compensatory, direct, indirect, incidental, punitive, special, and consequential damages, loss of data, goodwill, business opportunity, income or profit, loss of or damage to property and claims of third parties. In no event will&nbsp;Gameon be liable for any damages whatsoever in an amount over INR 100.</p>\r\n\r\n<p>User Account and Data Deletion:<br />\r\nUsers have the right to request the deletion of their user accounts and personal information from Gameon. To initiate this process, users can send a written request via email to&nbsp;info@Gameon.app</p>\r\n\r\n<p>We strive to respond to such requests promptly, within 60 days from either receiving the written request or any additional information requested to fulfill the request, whichever is later.</p>\r\n\r\n<p>&gt;In addition to account deletion, users also have the option to request suspension or temporary deactivation of their accounts by contacting&nbsp;info@Gameon.app</p>\r\n\r\n<p>&gt;With the suspension option, users will be unable to participate in paid contests on their user accounts but will retain access to other parts of the Portal. Alternatively, temporary deactivation prevents login access to the Portal but allows users to reactivate their accounts along with all associated data.</p>\r\n\r\n<p>&gt;If a user chooses to permanently deactivate their account, they will lose access to the Portal and its services, including any user data and personal information linked to their account. However, users may request account restoration within six (6) months from the date of receiving the account deletion notification from&nbsp;Gameon by contacting&nbsp;info@Gameon.app</p>\r\n\r\n<p>&gt;When a data deletion request is made, we follow a secure deletion process to ensure that the data is completely removed from our servers or retained only in anonymized form. We take precautions to protect information from accidental or malicious deletion. However, please note that there may be slight delays between the deletion request and the removal of data from both our active systems and backup systems.</p>\r\n\r\n<p>Applicable law and jurisdiction:<br />\r\nBy visiting this portal, you agree that the laws of the republic of india without regard to its conflict of laws principles, govern this privacy policy and any dispute arising in respect hereof shall be subject to and governed by the dispute resolution process set out in the&nbsp;terms and conditions.</p>\r\n\r\n<p>Updating information:<br />\r\nYou will promptly notify&nbsp;Gameon if there are any changes, updates or modifications to your information. further, you may also review, update or modify your information and user preferences by logging into your profile page on the portal.</p>\r\n\r\n<p>Contact us:<br />\r\nAny questions or clarifications with respect to this Policy or any complaints, comments, concerns or feedback can be sent to&nbsp;Gameon at: info@Gameon.app or by normal/physical mail addressed to:</p>\r\n\r\n<p>Attn: Gameon Team&nbsp;</p>\r\nThanks', '', NULL, 1, NULL, NULL),
(2, 2, 'Terms and Conditions (TnC)\n', '<p><strong>1. Introduction</strong></p>\n\n<p>Welcome to Gameon! By accessing or using our platform, you agree to comply with and be bound by these Terms and Conditions (&quot;Terms&quot;). If you do not agree, please do not use our platform.</p>\n\n<p><strong>2. Account Registration and Security</strong></p>\n\n<ul>\n	<li>Eligibility: Must be 18+.</li>\n	<li>Account Creation: Provide accurate information.</li>\n	<li>Account Security: Notify us of unauthorized use.o</li>\n</ul>\n\n<p><strong>3. User Conduct</strong></p>\n\n<ul>\n	<li>Prohibited Activities: No unlawful activities or harmful behavior.</li>\n	<li>User Content: Grant us a license to use your submitted content.</li>\n</ul>\n\n<p><strong>4. Intellectual Property</strong></p>\n\n<ul>\n	<li>Ownership: All platform content belongs to Gameon.</li>\n	<li>License: Limited, non-transferable license for personal use.</li>\n</ul>\n\n<p><strong>5. Payments and Refunds</strong></p>\n\n<ul>\n	<li>In-App Purchases: Final and non-refundable.</li>\n	<li>Payment Methods: Provide valid payment methods.</li>\n	<li>Refund Policy: No refunds, except as required by law.</li>\n</ul>\n\n<p><strong>6. Termination</strong></p>\n\n<ul>\n	<li>By Gameon: We can suspend or terminate accounts.</li>\n	<li>Effect of Termination: Rights to use cease immediately.</li>\n</ul>\n\n<p><strong>7. Disclaimers and Limitation of Liability</strong></p>\n\n<ul>\n	<li>No Warranties: Platform provided &quot;as is.&quot;</li>\n	<li>Limitation of Liability: Not liable for indirect damages.</li>\n</ul>\n\n<p><strong>8. Governing Law and Dispute Resolution</strong></p>\n\n<ul>\n	<li>Governing Law: Local jurisdiction laws apply.</li>\n	<li>Dispute Resolution: Binding arbitration for disputes.</li>\n</ul>\n\n<p><strong>9. Changes to Terms</strong></p>\n\n<ul>\n	<li>We may modify these Terms. Continued use means acceptance of changes.</li>\n</ul>\n\n<p><strong>10. Contact Information</strong></p>\n\n<ul>\n	<li>Email: help.Gameon@gmail.com</li>\n	<li>https://t.me/Gameon_official</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p><em>By using Gameon, you agree to these Terms and Conditions.</em></p>', '', NULL, 1, NULL, NULL),
(4, 3, ' Beginners Guide\n', '<p><strong>Welcome to Gameon: A Beginner&rsquo;s Guide</strong></p>\n\n<p>&nbsp;</p>\n\n<p><strong>1. Getting Started</strong></p>\n\n<p>&nbsp;&nbsp;&nbsp;Sign Up: Create your account with your email or social media.</p>\n\n<p>&nbsp;&nbsp;&nbsp;Profile Setup: Customize your profile with an avatar and username.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>2. Exploring Games</strong></p>\n\n<ul>\n	<li>&nbsp;&nbsp;&nbsp;Aviator: Predict the flight distance of the aviator and win rewards.</li>\n	<li>&nbsp;&nbsp;&nbsp;Color Prediction: Guess the correct color in a series of options.</li>\n	<li>&nbsp;&nbsp;&nbsp;Plinko: Drop the ball and win based on where it lands.</li>\n	<li>&nbsp;&nbsp;&nbsp;Dragon Tiger: Bet on which card (Dragon or Tiger) will be higher.</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p><strong>3. In-Game Currency</strong></p>\n\n<ul>\n	<li>&nbsp;&nbsp;&nbsp;Purchase coins to play games and enter tournaments.</li>\n	<li>&nbsp;&nbsp;&nbsp;Earn rewards through daily login bonuses and challenges.</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p><strong>4. Safety and Fair Play</strong></p>\n\n<ul>\n	<li>&nbsp;&nbsp;&nbsp;We use advanced algorithms to ensure fair play.</li>\n	<li>&nbsp;&nbsp;&nbsp;Report any suspicious activity to our support team.</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p><strong>5. Community and Support</strong></p>\n\n<ul>\n	<li>&nbsp;&nbsp;&nbsp;Join our forums to discuss strategies and meet other players.</li>\n	<li>&nbsp;&nbsp;&nbsp;Contact our support team for any issues or questions.</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p><em>Welcome to the Gameon community! Have fun and good luck!</em></p>', '', NULL, 1, NULL, NULL),
(5, 4, 'Invitation Rules\r\n', '<p><strong>Gameon Invitation Rules</strong></p>\n\n<p>&nbsp;</p>\n\n<p><strong>1. Eligibility:</strong></p>\n\n<p>&nbsp;&nbsp;&nbsp;- Only registered users can send invitations.</p>\n\n<p>&nbsp;&nbsp;&nbsp;- Invite friends who are 18 years or older.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>2. Invitation Process:</strong></p>\n\n<p>&nbsp;&nbsp;&nbsp;- Use the unique invitation link found in your profile.</p>\n\n<p>&nbsp;&nbsp;&nbsp;- Share via email, social media, or direct message.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>3. Rewards:</strong></p>\n\n<p>&nbsp;&nbsp;&nbsp;- Earn rewards for each successful referral who registers and plays.</p>\n\n<p>&nbsp;&nbsp;&nbsp;- Both the inviter and the invitee receive bonus coins.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>4. Fair Use:</strong></p>\n\n<p>&nbsp;&nbsp;&nbsp;- Do not spam or misuse the invitation system.</p>\n\n<p>&nbsp;&nbsp;&nbsp;- Invitations must be to genuine friends or contacts.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>5. Monitoring and Abuse:</strong></p>\n\n<p>&nbsp;&nbsp;&nbsp;- We monitor invitation activity.</p>\n\n<p>&nbsp;&nbsp;&nbsp;- Misuse can result in suspension of invitation privileges.</p>\n\n<p>&nbsp;</p>\n\n<p><em>Invite your friends and enjoy the Gameon experience together!</em></p>\n\n<p>&nbsp;</p>', '', NULL, 1, NULL, NULL),
(6, 5, 'Confidentiality Agreement', '<p><strong>Gameon Confidentiality Agreement</strong></p>\n\n<p>This Confidentiality Agreement (&ldquo;Agreement&rdquo;) is entered into by and between [Your Name], the &quot;Recipient,&quot; and Gameon Games, the &quot;Disclosing Party.&quot;</p>\n\n<p>&nbsp;</p>\n\n<p><strong>1. Definition of Confidential Information:</strong></p>\n\n<ul>\n	<li>Includes all non-public information disclosed, such as trade secrets, business plans, and user data.</li>\n</ul>\n\n<p><strong>2. Obligations of Recipient:</strong></p>\n\n<ul>\n	<li>Maintain the confidentiality of the information.</li>\n	<li>Do not disclose to third parties without written consent.</li>\n	<li>Use information solely for the purpose it was provided.</li>\n</ul>\n\n<p><strong>3. Exceptions:</strong></p>\n\n<ul>\n	<li>Information already known to the recipient.</li>\n	<li>Information that becomes public through no fault of the recipient.</li>\n	<li>Information independently developed or obtained by the recipient.</li>\n</ul>\n\n<p><strong>4. Term:</strong></p>\n\n<ul>\n	<li>This Agreement is effective as of the date signed and remains in effect until the confidential information no longer qualifies as confidential or five years, whichever is longer.</li>\n</ul>\n\n<p><strong>5. Miscellaneous:</strong></p>\n\n<ul>\n	<li>Governing Law: [Specify jurisdiction].</li>\n	<li>Amendments: Must be in writing and signed by both parties.</li>\n</ul>\n\n<p>By signing below, both parties agree to the terms of this Confidentiality Agreement.</p>\n\n<p>&nbsp;</p>\n\n<p>Signature: _______ &nbsp; &nbsp; &nbsp; Date: ______</p>\n\n<p>Recipient: _______</p>', '', NULL, 1, NULL, NULL),
(7, 6, 'Risk Disclosure Agreement', '<p><strong>Gameon Risk Disclosure Agreement</strong></p>\n\n<p>&nbsp;</p>\n\n<p><strong>1. General Risk Acknowledgment:</strong></p>\n\n<ul>\n	<li>Participation in games on Gameon involves financial risk.</li>\n	<li>You may lose some or all of your money while playing games.</li>\n</ul>\n\n<p><strong>2. No Guarantees:</strong></p>\n\n<ul>\n	<li>Gameon does not guarantee profits or winnings.</li>\n	<li>Outcomes of games are determined by algorithms and/or chance.</li>\n</ul>\n\n<p><strong>3. User Responsibility:</strong></p>\n\n<ul>\n	<li>You are responsible for all decisions made on the platform.</li>\n	<li>Only play with money you can afford to lose.</li>\n</ul>\n\n<p><strong>4. No Liability:</strong></p>\n\n<ul>\n	<li>Gameon is not responsible for any losses incurred.</li>\n	<li>We do not provide financial advice or recommendations.</li>\n</ul>\n\n<p><strong>5. Compliance with Laws:</strong></p>\n\n<ul>\n	<li>Ensure your use of Gameon complies with local laws.</li>\n	<li>It is your responsibility to know and understand the legalities in your jurisdiction.</li>\n</ul>\n\n<p><strong>6. Changes to Risks:</strong></p>\n\n<ul>\n	<li>Gameon may update this Risk Disclosure Agreement as needed.</li>\n	<li>Continued use of the platform constitutes acceptance of any changes.</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>By using Gameon, you acknowledge that you have read and understand this Risk Disclosure Agreement and accept the risks involved.</p>', '', NULL, 1, NULL, NULL),
(8, 7, 'GAMEON FAQs', '<p><strong>Gameon FAQs</strong></p>\n\n<p><strong>1. What is Gameon?</strong></p>\n\n<p>Gameon is a multi-gaming platform offering a variety of exciting games, including Aviator, Color Prediction, Plinko, and Dragon Tiger. Our platform provides a thrilling and fair gaming experience with numerous rewards and bonuses.</p>\n\n<p><strong>2. How do I sign up for Gameon?</strong></p>\n\n<p>Signing up is easy! Click on the &quot;Sign Up&quot; button on our homepage, fill in your details, and create your account. You can also sign up using your social media accounts for quicker access.</p>\n\n<p><strong>3. Is Gameon free to use?</strong></p>\n\n<p>Yes, creating an account and exploring the platform is free. However, some games and features may require in-app purchases or virtual currency.</p>\n\n<p><strong>4. How do I play the games on Gameon?</strong></p>\n\n<p>Each game has its own set of rules and instructions. You can find detailed guides within the platform by selecting the game you&rsquo;re interested in. Our Beginner&rsquo;s Guide is also a great resource to get started.</p>\n\n<p><strong>5. What rewards can I earn on Gameon?</strong></p>\n\n<p>You can earn virtual coins, bonuses, and exclusive prizes by playing games, participating in daily challenges, and inviting friends to join Gameon.</p>\n\n<p><strong>6. How do I invite friends to Gameon?</strong></p>\n\n<p>You can invite friends by sharing your unique invitation link found in your profile. Both you and your friend will receive bonus rewards when they sign up and start playing.</p>\n\n<p><strong>7. Are the games on Gameon fair?</strong></p>\n\n<p>Yes, we use advanced algorithms and random number generators to ensure that all games are fair and transparent. Our priority is to provide a secure and trustworthy gaming environment.</p>\n\n<p><strong>8. How can I purchase virtual currency?</strong></p>\n\n<p>You can purchase virtual currency through our in-app store using various payment methods, including credit/debit cards, PayPal, and more. Check the &quot;Shop&quot; section within the platform for more details.</p>\n\n<p><strong>9. What should I do if I encounter an issue with the platform?</strong></p>\n\n<p>If you experience any issues, please contact our support team via email at support@Gameon.com or use the live chat feature on our website. We are available 24/7 to assist you.</p>\n\n<p><strong>10. How is my personal information protected?</strong></p>\n\n<p>We take your privacy seriously. Gameon uses industry-standard encryption and security measures to protect your personal information. For more details, please read our Privacy Policy.</p>\n\n<p><strong>11. Can I close my Gameon account?</strong></p>\n\n<p>Yes, if you wish to close your account, please contact our support team. Keep in mind that closing your account is permanent, and you will lose access to all your progress and rewards.</p>\n\n<p><strong>12. How do I stay updated with Gameon&rsquo;s latest news and promotions?</strong></p>\n\n<p>Follow us on our social media channels (Facebook, Twitter, Instagram) and subscribe to our newsletter to stay updated on the latest news, promotions, and events.</p>\n\n<p><strong>13. Is there an age requirement to use Gameon?</strong></p>\n\n<p>Yes, you must be at least 18 years old to create an account and use the Gameon platform.</p>\n\n<p><strong>14. How do I update my account information?</strong></p>\n\n<p>You can update your account information by going to your profile settings within the platform. Make sure to save any changes you make.</p>\n\n<p><strong>15. Are there any community guidelines I should follow?</strong></p>\n\n<p>Yes, we have community guidelines to ensure a positive and respectful environment for all players. Please refer to our Terms and Conditions for detailed information on acceptable behavior.</p>\n\n<p><strong>16. What if I forget my password?</strong></p>\n\n<p>If you forget your password, click on the &quot;Forgot Password&quot; link on the login page and follow the instructions to reset it.</p>\n\n<p><strong>17. How do I report a bug or provide feedback?</strong></p>\n\n<p>We appreciate your feedback! You can report bugs or provide feedback by contacting our support team or using the feedback form available on the platform.</p>\n\n<p><strong>18. What happens if my account is suspended?</strong></p>\n\n<p>If your account is suspended, you will receive an email explaining the reason. Please contact our support team for further assistance and to resolve the issue.</p>\n\n<p>&nbsp;</p>\n\n<p><em>If you have any other questions or need further assistance, please don&#39;t hesitate to reach out to our support team. We&#39;re here to help you enjoy your Gameon experience to the fullest!</em></p>\n\n<p>&nbsp;</p>', '', NULL, 1, NULL, NULL),
(9, 8, 'GAMEON Game Rule', '<p>1 minutes 1 issue, 55 seconds to order, 5 seconds waiting for the draw. It opens all day. The total number of trade is 1440 issues.</p>\n  <p>If you spend 100 to trade, after deducting service fee 2%, contract amount : 98</p>\n  <ol>\n    <li>Select green: if the result shows 1,3,7,9 you will get (98*2)=196;If the result shows 5, you will get (98*1.5) 147</li>\n    <li>Select red: if the result shows 2,4,6,8 you will get</li>\n    <li>Select violet: if the result shows 0 or 5, you will get</li>\n    <li>Select number: if the result is the same as the number you selected, you will get</li>\n    <li>Select big: if the result shows 5,6,7,8,9 you will get</li>\n    <li>Select small: if the result shows 0,1,2,3,4 you will get</li>\n  </ol>', '', NULL, 1, NULL, NULL);
INSERT INTO `settings` (`id`, `type`, `name`, `description`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(10, 9, 'trx game rule', '<div data-v-73484f00=\"\" class=\"TimeLeft__C-PreSale-body\">\n    <div data-v-73484f00=\"\">\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\">\n                                        <font style=\"vertical-align: inherit;\">\n                                            <font style=\"vertical-align: inherit;\">\n                                                <font style=\"vertical-align: inherit;\">\n                                                    <font style=\"vertical-align: inherit;\">\n                                                        <font style=\"vertical-align: inherit;\">\n                                                            <font style=\"vertical-align: inherit;\">What is a hash value?\n                                                            </font>\n                                                        </font>\n                                                    </font>\n                                                </font>\n                                            </font>\n                                        </font>\n                                    </font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </font>\n            </font>\n        </p>\n        <p class=\"MsoNormal\"><span style=\"font-family: Verdana;\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\">Anyone who knows the basics of Bitcoin will\n                                        be exposed to a concept, a hash value. Bitcoin\'s block header has a hash of the\n                                        previous block in it, which is used to point to the previous block.</font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </font>\n            </span><br></p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\"><br></font>\n        </p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\">\n                                        <font style=\"vertical-align: inherit;\">\n                                            <font style=\"vertical-align: inherit;\">\n                                                <font style=\"vertical-align: inherit;\">\n                                                    <font style=\"vertical-align: inherit;\">\n                                                        <font style=\"vertical-align: inherit;\">\n                                                            <font style=\"vertical-align: inherit;\">Hash is the\n                                                                transliteration of English hash, we can also translate\n                                                                it into hash, so hash value is also called hash value. A\n                                                                hash value is a value calculated with a hash function\n                                                                (or hash function/hash algorithm). To understand hash\n                                                                values, one must understand the nature of hash\n                                                                functions. A hash function can computationally transform\n                                                                an input of arbitrary length into an output of fixed\n                                                                length.</font>\n                                                        </font>\n                                                    </font>\n                                                </font>\n                                            </font>\n                                        </font>\n                                    </font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </font>\n            </font>\n        </p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\"><br></font>\n        </p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\">\n                                        <font style=\"vertical-align: inherit;\">\n                                            <font style=\"vertical-align: inherit;\">\n                                                <font style=\"vertical-align: inherit;\">\n                                                    <font style=\"vertical-align: inherit;\">\n                                                        <font style=\"vertical-align: inherit;\">\n                                                            <font style=\"vertical-align: inherit;\">Every hash function\n                                                                has the property that if the input value is the same,\n                                                                the output hash value is the same. If the input values\n                                                                &ZeroWidthSpace;&ZeroWidthSpace;&ZeroWidthSpace;&ZeroWidthSpace;&ZeroWidthSpace;&ZeroWidthSpace;&ZeroWidthSpace;&ZeroWidthSpace;&ZeroWidthSpace;&ZeroWidthSpace;&ZeroWidthSpace;&ZeroWidthSpace;are\n                                                                different, the output hashes are usually different, but\n                                                                there is a very small chance of a hash collision . If a\n                                                                hash collision is ruled out with a slight change in the\n                                                                input value, a completely unrelated hash value is\n                                                                output. Since the hash function is irreversible and easy\n                                                                to verify, it is almost impossible to reverse the input\n                                                                value through the output hash value. If there is an\n                                                                input value, the corresponding hash value can be\n                                                                verified immediately.</font>\n                                                        </font>\n                                                    </font>\n                                                </font>\n                                            </font>\n                                        </font>\n                                    </font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </font>\n            </font>\n        </p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\"><br></font>\n        </p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\">\n                                        <font style=\"vertical-align: inherit;\">\n                                            <font style=\"vertical-align: inherit;\">\n                                                <font style=\"vertical-align: inherit;\">\n                                                    <font style=\"vertical-align: inherit;\">\n                                                        <font style=\"vertical-align: inherit;\">\n                                                            <font style=\"vertical-align: inherit;\">Therefore, the hash\n                                                                value of each block is unique, random, unbreakable,\n                                                                unforgeable, the block hash value is automatically\n                                                                identified, and the record cannot be tampered with.\n                                                            </font>\n                                                        </font>\n                                                    </font>\n                                                </font>\n                                            </font>\n                                        </font>\n                                    </font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </font>\n            </font>\n        </p>\n        <p class=\"MsoNormal\"><span style=\"font-family: Verdana;\"><br></span></p>\n        <p class=\"MsoNormal\"><span style=\"font-family: Verdana;\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\">How many types of USDT are there?</font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </font>\n            </span><br></p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\"><br></font>\n        </p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\">\n                                        <font style=\"vertical-align: inherit;\">\n                                            <font style=\"vertical-align: inherit;\">\n                                                <font style=\"vertical-align: inherit;\">\n                                                    <font style=\"vertical-align: inherit;\">\n                                                        <font style=\"vertical-align: inherit;\">\n                                                            <font style=\"vertical-align: inherit;\">1. Omni-USDT based on\n                                                                the Bitcoin network, the deposit address is the BTC\n                                                                address, and the deposit and withdrawal go through the\n                                                                BTC network;</font>\n                                                        </font>\n                                                    </font>\n                                                </font>\n                                            </font>\n                                        </font>\n                                    </font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </font>\n            </font>\n        </p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\"><br></font>\n        </p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\">\n                                        <font style=\"vertical-align: inherit;\">\n                                            <font style=\"vertical-align: inherit;\">\n                                                <font style=\"vertical-align: inherit;\">\n                                                    <font style=\"vertical-align: inherit;\">\n                                                        <font style=\"vertical-align: inherit;\">\n                                                            <font style=\"vertical-align: inherit;\">2. ERC20-USDT based\n                                                                on the Ethereum ERC20 protocol, the deposit address is\n                                                                the ETH address, and the deposit and withdrawal go\n                                                                through the ETH network;</font>\n                                                        </font>\n                                                    </font>\n                                                </font>\n                                            </font>\n                                        </font>\n                                    </font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </font>\n            </font>\n        </p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\"><br></font>\n        </p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\">\n                                        <font style=\"vertical-align: inherit;\">\n                                            <font style=\"vertical-align: inherit;\">\n                                                <font style=\"vertical-align: inherit;\">\n                                                    <font style=\"vertical-align: inherit;\">\n                                                        <font style=\"vertical-align: inherit;\">\n                                                            <font style=\"vertical-align: inherit;\">3. TRC20-USDT based\n                                                                on TRON TRC20 protocol and TRX (TRON) network, the\n                                                                deposit address is the TRON address, and the deposit and\n                                                                withdrawal go through the TRON network.</font>\n                                                        </font>\n                                                    </font>\n                                                </font>\n                                            </font>\n                                        </font>\n                                    </font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </font>\n            </font>\n        </p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\"><br></font>\n        </p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\">\n                                        <font style=\"vertical-align: inherit;\">\n                                            <font style=\"vertical-align: inherit;\">\n                                                <font style=\"vertical-align: inherit;\">\n                                                    <font style=\"vertical-align: inherit;\">\n                                                        <font style=\"vertical-align: inherit;\">\n                                                            <font style=\"vertical-align: inherit;\">TrxHash is the\n                                                                TRC20-USDT Block hash based on the TRON TRC20 protocol\n                                                                and TRX (TRON) network. The last number is used as the\n                                                                result of the lottery to determine whether you have won\n                                                                the lottery (click Block Height to go to the public\n                                                                chain to query the unique Block hash)</font>\n                                                        </font>\n                                                    </font>\n                                                </font>\n                                            </font>\n                                        </font>\n                                    </font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </font>\n            </font>\n        </p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\"><br></font>\n        </p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\"></font>\n        </p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\"><br></font>\n        </p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\">\n                                        <font style=\"vertical-align: inherit;\">\n                                            <font style=\"vertical-align: inherit;\">\n                                                <font style=\"vertical-align: inherit;\">\n                                                    <font style=\"vertical-align: inherit;\">\n                                                        <font style=\"vertical-align: inherit;\">\n                                                            <font style=\"vertical-align: inherit;\">The rules of play are\n                                                                as follows:</font>\n                                                        </font>\n                                                    </font>\n                                                </font>\n                                            </font>\n                                        </font>\n                                    </font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </font>\n            </font>\n        </p>\n        <p class=\"MsoNormal\"><span style=\"font-family: Verdana;\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">1. 1 lottery draw for 1 minute, purchase within 45\n                                seconds, and the result cannot be purchased within 15 seconds before opening.</font>\n                        </font>\n                    </font>\n                </font>\n            </span><br></p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\"><br></font>\n        </p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\">\n                                        <font style=\"vertical-align: inherit;\">\n                                            <font style=\"vertical-align: inherit;\">\n                                                <font style=\"vertical-align: inherit;\">\n                                                    <font style=\"vertical-align: inherit;\">\n                                                        <font style=\"vertical-align: inherit;\">\n                                                            <font style=\"vertical-align: inherit;\">2. Purchase All Day\n                                                                Unlock. The total number of purchases in one day is\n                                                                1440.</font>\n                                                        </font>\n                                                    </font>\n                                                </font>\n                                            </font>\n                                        </font>\n                                    </font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </font>\n            </font>\n        </p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\"><br></font>\n        </p>\n        <p class=\"MsoNormal\"><span style=\"font-family: Verdana;\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\">\n                                        <font style=\"vertical-align: inherit;\">\n                                            <font style=\"vertical-align: inherit;\">\n                                                <font style=\"vertical-align: inherit;\">\n                                                    <font style=\"vertical-align: inherit;\">3. 3 points 1 time, 5 points\n                                                        1 time, 10 points 1 time, the rules are the same as 1 point 1\n                                                        time except the draw time is different.</font>\n                                                </font>\n                                            </font>\n                                        </font>\n                                    </font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </font>\n            </span><br></p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\"><br></font>\n        </p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\">\n                                        <font style=\"vertical-align: inherit;\">\n                                            <font style=\"vertical-align: inherit;\">\n                                                <font style=\"vertical-align: inherit;\">\n                                                    <font style=\"vertical-align: inherit;\">\n                                                        <font style=\"vertical-align: inherit;\">\n                                                            <font style=\"vertical-align: inherit;\">4. The last digit of\n                                                                the Block hash is used as the lottery result:</font>\n                                                        </font>\n                                                    </font>\n                                                </font>\n                                            </font>\n                                        </font>\n                                    </font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </font>\n            </font>\n        </p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\"><br></font>\n        </p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\">\n                                        <font style=\"vertical-align: inherit;\">\n                                            <font style=\"vertical-align: inherit;\">\n                                                <font style=\"vertical-align: inherit;\">\n                                                    <font style=\"vertical-align: inherit;\">\n                                                        <font style=\"vertical-align: inherit;\">\n                                                            <font style=\"vertical-align: inherit;\">Eg:</font>\n                                                        </font>\n                                                    </font>\n                                                </font>\n                                            </font>\n                                        </font>\n                                    </font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </font>\n            </font>\n        </p>\n        <p class=\"MsoNormal\"><span style=\"font-family: Verdana;\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\">If the hash value is **b569, the lottery\n                                        result is 9</font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </font>\n            </span><br></p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\">\n                                        <font style=\"vertical-align: inherit;\">\n                                            <font style=\"vertical-align: inherit;\">\n                                                <font style=\"vertical-align: inherit;\">\n                                                    <font style=\"vertical-align: inherit;\">\n                                                        <font style=\"vertical-align: inherit;\">\n                                                            <font style=\"vertical-align: inherit;\">Hash value **d14c,\n                                                                the lottery result is 4</font>\n                                                        </font>\n                                                    </font>\n                                                </font><br>\n                                            </font>\n                                        </font>\n                                    </font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </font>\n            </font><span style=\"font-family: 宋体;\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\"> if you spend 100 to trade, after deducting service\n                                fee 2%, contract amount : 98</font>\n                        </font>\n                    </font>\n                </font>\n            </span>\n            <font face=\"Verdana\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\">\n                                        <font style=\"vertical-align: inherit;\">\n                                            <font style=\"vertical-align: inherit;\"><br></font>\n                                        </font>\n                                    </font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </font>\n            </font>\n        </p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\" class=\"\">\n                                        <font style=\"vertical-align: inherit;\">\n                                            <font style=\"vertical-align: inherit;\" class=\"\">\n                                                <font style=\"vertical-align: inherit;\">\n                                                    <font style=\"vertical-align: inherit;\" class=\"\">\n                                                        <font style=\"vertical-align: inherit;\">\n                                                            <font style=\"vertical-align: inherit;\">\n                                                                <font style=\"vertical-align: inherit;\">\n                                                                    <font style=\"vertical-align: inherit;\">l Choose\n                                                                        green: if the result shows 1,3,7,9, you will get\n                                                                    </font>\n                                                                </font>\n                                                            </font>\n                                                        </font>\n                                                    </font>\n                                                </font>\n                                            </font>\n                                        </font>\n                                    </font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </font>\n            </font><span style=\"font-family: Verdana;\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\" class=\"\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\" class=\"\">\n                                        <font style=\"vertical-align: inherit;\">\n                                            <font style=\"vertical-align: inherit;\" class=\"\">\n                                                <font style=\"vertical-align: inherit;\">\n                                                    <font style=\"vertical-align: inherit;\">\n                                                        <font style=\"vertical-align: inherit;\">\n                                                            <font style=\"vertical-align: inherit;\"> (98 * 2) =196</font>\n                                                        </font>\n                                                    </font>\n                                                </font>\n                                            </font>\n                                        </font>\n                                    </font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </font>\n            </span>\n            <font face=\"Verdana\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\" class=\"\">\n                                        <font style=\"vertical-align: inherit;\">\n                                            <font style=\"vertical-align: inherit;\" class=\"\">\n                                                <font style=\"vertical-align: inherit;\">\n                                                    <font style=\"vertical-align: inherit;\" class=\"\">\n                                                        <font style=\"vertical-align: inherit;\">\n                                                            <font style=\"vertical-align: inherit;\">\n                                                                <font style=\"vertical-align: inherit;\">\n                                                                    <font style=\"vertical-align: inherit;\"> ; if the\n                                                                        result shows 5, you will get</font>\n                                                                </font>\n                                                            </font>\n                                                        </font>\n                                                    </font>\n                                                </font>\n                                            </font>\n                                        </font>\n                                    </font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </font>\n            </font><span style=\"font-family: Verdana;\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\"> (98 * 2) = 196</font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </font>\n            </span><br>\n        </p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\"><br></font>\n        </p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\" class=\"\">\n                                        <font style=\"vertical-align: inherit;\">\n                                            <font style=\"vertical-align: inherit;\" class=\"goog-text-highlight\">\n                                                <font style=\"vertical-align: inherit;\">\n                                                    <font style=\"vertical-align: inherit;\">\n                                                        <font style=\"vertical-align: inherit;\">\n                                                            <font style=\"vertical-align: inherit;\">\n                                                                <font style=\"vertical-align: inherit;\">\n                                                                    <font style=\"vertical-align: inherit;\">l choose red:\n                                                                        if the result shows 2,4,6,8, you will get</font>\n                                                                </font>\n                                                            </font>\n                                                        </font>\n                                                    </font>\n                                                </font>\n                                            </font>\n                                        </font>\n                                    </font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </font>\n            </font><span style=\"font-family: Verdana;\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\"> (98 * 2) =196</font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </font>\n            </span>\n            <font face=\"Verdana\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\" class=\"\">\n                                        <font style=\"vertical-align: inherit;\">\n                                            <font style=\"vertical-align: inherit;\" class=\"\">\n                                                <font style=\"vertical-align: inherit;\">\n                                                    <font style=\"vertical-align: inherit;\">\n                                                        <font style=\"vertical-align: inherit;\">\n                                                            <font style=\"vertical-align: inherit;\">; if the result shows\n                                                                0, you will get</font>\n                                                        </font>\n                                                    </font>\n                                                </font>\n                                            </font>\n                                        </font>\n                                    </font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </font>\n            </font><span style=\"font-family: Verdana;\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\">(98 * 2) = 196</font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </font>\n            </span>\n        </p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\"><br></font>\n        </p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\" class=\"\">\n                                        <font style=\"vertical-align: inherit;\">\n                                            <font style=\"vertical-align: inherit;\">\n                                                <font style=\"vertical-align: inherit;\">\n                                                    <font style=\"vertical-align: inherit;\">\n                                                        <font style=\"vertical-align: inherit;\">\n                                                            <font style=\"vertical-align: inherit;\">l choose purple: if\n                                                                the result shows 0 or 5, you will get </font>\n                                                        </font>\n                                                    </font>\n                                                </font>\n                                            </font>\n                                        </font>\n                                    </font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </font>\n            </font><span style=\"font-family: Verdana;\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\"> (98 * 2) = 196</font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </font>\n            </span>\n        </p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\"><br></font>\n        </p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\" class=\"\">\n                                        <font style=\"vertical-align: inherit;\">\n                                            <font style=\"vertical-align: inherit;\" class=\"\">\n                                                <font style=\"vertical-align: inherit;\">\n                                                    <font style=\"vertical-align: inherit;\">\n                                                        <font style=\"vertical-align: inherit;\">\n                                                            <font style=\"vertical-align: inherit;\" class=\"\">l Select the\n                                                                number: If the result of opening is the same as the one\n                                                                you selected, you will get </font>\n                                                        </font>\n                                                    </font>\n                                                </font>\n                                            </font>\n                                        </font>\n                                    </font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </font>\n            </font><span style=\"font-family: Verdana;\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\" class=\"\"> (98 * 9) = 882</font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </font>\n            </span>\n        </p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\"><br></font>\n        </p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\" class=\"\">\n                                        <font style=\"vertical-align: inherit;\">\n                                            <font style=\"vertical-align: inherit;\" class=\"\">\n                                                <font style=\"vertical-align: inherit;\">\n                                                    <font style=\"vertical-align: inherit;\">\n                                                        <font style=\"vertical-align: inherit;\">\n                                                            <font style=\"vertical-align: inherit;\">l Choose Big: if the\n                                                                result shows 5,6,7,8,9 you will get </font>\n                                                        </font>\n                                                    </font>\n                                                </font>\n                                            </font>\n                                        </font>\n                                    </font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </font>\n            </font>\n            <font style=\"vertical-align: inherit;\"><span style=\"font-family: Verdana;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\"> (98 * 2) = 196</font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </span></font><span style=\"font-family: Verdana;\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\" class=\"\"></font>\n                        </font>\n                    </font>\n                </font>\n            </span><span style=\"font-family: Verdana;\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\"></font>\n                    </font>\n                </font>\n            </span>\n        </p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\"><br></font>\n        </p>\n        <p class=\"MsoNormal\">\n            <font face=\"Verdana\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\">\n                                        <font style=\"vertical-align: inherit;\">\n                                            <font style=\"vertical-align: inherit;\" class=\"\">\n                                                <font style=\"vertical-align: inherit;\">\n                                                    <font style=\"vertical-align: inherit;\">\n                                                        <font style=\"vertical-align: inherit;\">\n                                                            <font style=\"vertical-align: inherit;\">l Select Small: if\n                                                                the result shows 0,1,2,3,4 you will get </font>\n                                                        </font>\n                                                    </font>\n                                                </font>\n                                            </font>\n                                        </font>\n                                    </font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </font>\n            </font>\n            <font style=\"vertical-align: inherit;\"><span style=\"font-family: Verdana;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\">\n                                <font style=\"vertical-align: inherit;\">\n                                    <font style=\"vertical-align: inherit;\"> (98 * 2) = 196</font>\n                                </font>\n                            </font>\n                        </font>\n                    </font>\n                </span></font><span style=\"font-family: Verdana;\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\">\n                            <font style=\"vertical-align: inherit;\" class=\"\"></font>\n                        </font>\n                    </font>\n                </font>\n            </span><span style=\"font-family: Verdana;\">\n                <font style=\"vertical-align: inherit;\">\n                    <font style=\"vertical-align: inherit;\">\n                        <font style=\"vertical-align: inherit;\"></font>\n                    </font>\n                </font>\n            </span>\n        </p>\n    </div>\n</div>\n', '', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `activity_image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `image`, `activity_image`, `status`, `created_at`, `updated_at`) VALUES
(13, 'banner', 'https://root.gameon.deals/uploads/sliders/1747897882_Asset 1 (1).png', 'https://root.gameon.deals/uploads/sliders/1737034897_activity_br3_cleanup (1).png', 1, '2025-01-16 19:11:37', '2025-05-22 07:11:22'),
(14, 'Offer', 'https://root.gameon.deals/uploads/sliders/1747897892_Asset 1.png', 'https://root.gameon.deals/uploads/sliders/1740593215_activity_IMG_0234.jpeg', 1, '2025-02-26 23:36:55', '2025-05-22 07:11:32');

-- --------------------------------------------------------

--
-- Table structure for table `spingame_settings`
--

CREATE TABLE `spingame_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT 'on -1 , off - 2',
  `result_type` tinyint(3) UNSIGNED DEFAULT NULL COMMENT 'manual - 1, lucky draw - 2 , auto -3 ',
  `winning_per` int(11) DEFAULT NULL,
  `site_message` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spingame_settings`
--

INSERT INTO `spingame_settings` (`id`, `status`, `result_type`, `winning_per`, `site_message`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 75, 'Site is off due to some technical issues. Will remind it soon.', '2024-10-09 18:19:19', '2024-10-09 18:19:19');

-- --------------------------------------------------------

--
-- Table structure for table `spin_admin_results`
--

CREATE TABLE `spin_admin_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `period_no` varchar(32) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `jackpot` double(8,2) NOT NULL DEFAULT 1.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spin_betlogs`
--

CREATE TABLE `spin_betlogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `period_no` varchar(32) DEFAULT NULL,
  `game_id` longtext DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `amount` double(10,2) NOT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spin_betlogs`
--

INSERT INTO `spin_betlogs` (`id`, `period_no`, `game_id`, `number`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, '20240809497559', '0', 0, 0.00, 1, '2024-08-09 11:48:25', '2024-09-30 22:01:40'),
(2, '20240809497559', '[1,11]', 1, 0.00, 1, '2024-08-09 11:48:25', '2024-09-30 22:13:27'),
(3, '20240809497559', '[2,10]', 2, 0.00, 1, '2024-08-09 11:48:25', '2024-09-30 22:01:40'),
(4, '20240809497559', '[3,11]', 3, 0.00, 1, '2024-08-09 11:48:25', '2024-09-30 22:13:27'),
(5, '20240809497559', '[4,10]', 4, 0.00, 1, '2024-08-09 11:48:25', '2024-09-30 22:01:40'),
(6, '20240809497559', '[5,11]', 5, 0.00, 1, '2024-08-09 11:48:25', '2024-09-30 22:13:27'),
(7, '20240809497559', '[6,10]', 6, 0.00, 1, '2024-08-09 11:48:25', '2024-09-30 22:01:40'),
(8, '20240809497559', '[7,11]', 7, 0.00, 1, '2024-08-09 11:48:25', '2024-09-30 22:13:27'),
(9, '20240809497559', '[8,10]', 8, 0.00, 1, '2024-08-09 11:48:25', '2024-09-30 22:01:40'),
(10, '20240809497559', '[9,11]', 9, 0.00, 1, '2024-08-09 11:48:25', '2024-09-30 22:13:27');

-- --------------------------------------------------------

--
-- Table structure for table `spin_bets`
--

CREATE TABLE `spin_bets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `period_no` bigint(20) DEFAULT NULL,
  `game_id` int(2) DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `win_number` int(1) DEFAULT NULL,
  `win_amount` double(8,2) DEFAULT 0.00,
  `status` int(1) DEFAULT 1 COMMENT '0=pending,1=success,2=loss',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spin_game_settings`
--

CREATE TABLE `spin_game_settings` (
  `id` int(11) NOT NULL,
  `game_id` int(11) DEFAULT NULL,
  `number` int(10) DEFAULT NULL,
  `multiplier` double(10,2) NOT NULL,
  `description` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spin_game_settings`
--

INSERT INTO `spin_game_settings` (`id`, `game_id`, `number`, `multiplier`, `description`) VALUES
(1, 0, 0, 9.00, NULL),
(2, 1, 1, 9.00, NULL),
(3, 2, 2, 9.00, NULL),
(4, 3, 3, 9.00, NULL),
(5, 4, 4, 9.00, NULL),
(6, 5, 5, 9.00, NULL),
(7, 6, 6, 9.00, NULL),
(8, 7, 7, 9.00, NULL),
(9, 8, 8, 9.00, NULL),
(10, 9, 9, 9.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `spin_index`
--

CREATE TABLE `spin_index` (
  `id` int(11) NOT NULL,
  `game_no` int(12) DEFAULT NULL,
  `index` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spin_index`
--

INSERT INTO `spin_index` (`id`, `game_no`, `index`) VALUES
(1, 0, 0),
(2, 1, 1),
(3, 9, 2),
(4, 8, 3),
(5, 7, 4),
(6, 6, 5),
(7, 5, 6),
(8, 4, 7),
(9, 3, 8),
(10, 2, 9);

-- --------------------------------------------------------

--
-- Table structure for table `spin_results`
--

CREATE TABLE `spin_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `period_no` bigint(20) DEFAULT NULL,
  `win_number` int(1) DEFAULT NULL,
  `win_index` int(1) DEFAULT NULL,
  `jackpot` double(8,2) NOT NULL DEFAULT 1.00,
  `status` int(1) DEFAULT 1,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subtype`
--

CREATE TABLE `subtype` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `subtype`
--

INSERT INTO `subtype` (`id`, `name`, `status`) VALUES
(1, 'Intrest', 1),
(2, 'Red envelope', 0),
(3, 'Deposit', 1),
(4, 'Bet', 0),
(5, 'Bonus', 1),
(6, 'Win', 1),
(7, 'Withdrawal', 1),
(8, 'Cancel Withdrawal', 1),
(9, 'First Deposite', 1),
(10, 'First Deposite Rebate', 1),
(11, 'Daily Rewards', 1),
(12, 'Weekly Rewards', 1),
(13, 'Salary', 1),
(14, 'Attendance Bonus', 1),
(20, 'Girf card', 1),
(21, 'Activity_reward_daily', 0),
(22, 'Activity_reward_weekly', 0),
(23, 'commission', 1),
(24, 'aviator', 1),
(25, 'brtting rebate', 1),
(26, 'Invitation Bonus', 1),
(27, 'Level up rewards', 1),
(28, 'Monthly Rewards', 1);

-- --------------------------------------------------------

--
-- Table structure for table `support_setting`
--

CREATE TABLE `support_setting` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `socialmedia` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `support_setting`
--

INSERT INTO `support_setting` (`id`, `name`, `socialmedia`, `status`, `datetime`) VALUES
(1, 'Telegram ', '', 1, '2024-06-04 06:38:14'),
(2, 'Email', '', 1, '2024-06-04 06:38:14'),
(3, 'Channel', '', 1, '2024-06-04 06:38:14');

-- --------------------------------------------------------

--
-- Table structure for table `teen_patti_bet`
--

CREATE TABLE `teen_patti_bet` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `game_id` int(11) NOT NULL,
  `order_id` longtext NOT NULL,
  `amount` double NOT NULL,
  `games_no` varchar(55) DEFAULT NULL,
  `winner` varchar(200) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `win_amount` double DEFAULT NULL,
  `banker_cards` longtext NOT NULL,
  `player_cards` longtext NOT NULL,
  `win_number` int(11) DEFAULT NULL,
  `result_card` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL COMMENT '0=pending, 1=win, 2=lose',
  `trade_amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teen_patti_bet`
--

INSERT INTO `teen_patti_bet` (`id`, `userid`, `game_id`, `order_id`, `amount`, `games_no`, `winner`, `number`, `win_amount`, `banker_cards`, `player_cards`, `win_number`, `result_card`, `status`, `trade_amount`, `created_at`, `updated_at`) VALUES
(1, 1, 18, '2025072809580997006', 10.1, '20250614275664', 'banker', NULL, 0, '[\"11\",\"5\",\"8\"]', '[\"2\",\"6\",\"5\"]', NULL, NULL, 1, 10.1, '2025-07-28 09:58:09', '2025-07-28 04:28:09'),
(2, 1, 18, '2025072809584956725', 9, '20250614275665', 'player', NULL, 18, '[\"12\",\"8\",\"5\"]', '[\"2\",\"3\",\"1\"]', NULL, NULL, 1, 9, '2025-07-28 09:58:49', '2025-07-28 04:28:49'),
(3, 1, 18, '2025072913414431505', 12, '20250614278884', 'player', NULL, 24, '[\"6\",\"2\",\"14\"]', '[\"1\",\"3\",\"2\"]', NULL, NULL, 1, 12, '2025-07-29 13:41:44', '2025-07-29 08:11:44'),
(4, 1, 18, '2025072913421616636', 5, '20250614278885', 'player', NULL, 10, '[\"6\",\"12\",\"12\"]', '[\"2\",\"3\",\"1\"]', NULL, NULL, 1, 5, '2025-07-29 13:42:16', '2025-07-29 08:12:16'),
(5, 1, 18, '2025072913461063067', 4, '20250614278892', 'banker', NULL, 0, '[\"8\",\"7\",\"8\"]', '[\"1\",\"3\",\"5\"]', NULL, NULL, 1, 4, '2025-07-29 13:46:10', '2025-07-29 08:16:10'),
(6, 1, 18, '2025072913464421596', 10, '20250614278893', 'banker', NULL, 0, '[\"9\",\"7\",\"10\"]', '[\"1\",\"5\",\"2\"]', NULL, NULL, 1, 10, '2025-07-29 13:46:44', '2025-07-29 08:16:44'),
(7, 1, 18, '2025072913472079770', 5, '20250614278894', 'player', NULL, 10, '[\"7\",\"11\",\"2\"]', '[\"2\",\"3\",\"4\"]', NULL, NULL, 1, 5, '2025-07-29 13:47:20', '2025-07-29 08:17:20'),
(8, 803, 18, '2025072914024747525', 1.1, '20250614278925', 'player', NULL, 2.2, '[\"9\",\"2\",\"9\"]', '[\"4\",\"2\",\"3\"]', NULL, NULL, 1, 1.1, '2025-07-29 14:02:47', '2025-07-29 08:32:47'),
(9, 803, 18, '2025072914031994926', 1.1, '20250614278926', 'banker', NULL, 0, '[\"6\",\"11\",\"3\"]', '[\"4\",\"2\",\"1\"]', NULL, NULL, 1, 1.1, '2025-07-29 14:03:19', '2025-07-29 08:33:19'),
(10, 803, 18, '2025072914033913662', 1.1, '20250614278927', 'banker', NULL, 0, '[\"13\",\"13\",\"4\"]', '[\"4\",\"1\",\"3\"]', NULL, NULL, 1, 1.1, '2025-07-29 14:03:39', '2025-07-29 08:33:39'),
(11, 1, 18, '2025072917511562713', 0.1, '20250614279372', 'banker', NULL, 0, '[\"2\",\"13\",\"14\"]', '[\"6\",\"2\",\"4\"]', NULL, NULL, 1, 0.1, '2025-07-29 17:51:15', '2025-07-29 12:21:15'),
(12, 1, 18, '2025073007453785794', 10, '20250614280989', 'player', NULL, 20, '[\"3\",\"6\",\"10\"]', '[\"6\",\"5\",\"4\"]', NULL, NULL, 1, 10, '2025-07-30 07:45:37', '2025-07-30 02:15:37'),
(13, 4, 18, '2025080711480969313', 50, '20250614302392', 'player', NULL, 100, '[\"4\",\"3\",\"9\"]', '[\"4\",\"6\",\"5\"]', NULL, NULL, 1, 50, '2025-08-07 11:48:09', '2025-08-07 06:18:09'),
(14, 4, 18, '2025080711484968827', 50000, '20250614302393', 'player', NULL, 100000, '[\"2\",\"8\",\"5\"]', '[\"4\",\"6\",\"5\"]', NULL, NULL, 1, 50000, '2025-08-07 11:48:49', '2025-08-07 06:18:49'),
(15, 4, 18, '2025080711501134446', 0.1, '20250614302396', 'banker', NULL, 0, '[\"8\",\"4\",\"12\"]', '[\"1\",\"3\",\"4\"]', NULL, NULL, 1, 0.1, '2025-08-07 11:50:11', '2025-08-07 06:20:11'),
(16, 4, 18, '2025080712003623640', 0.1, '20250614302416', 'player', NULL, 0.2, '[\"3\",\"13\",\"14\"]', '[\"4\",\"6\",\"5\"]', NULL, NULL, 1, 0.1, '2025-08-07 12:00:36', '2025-08-07 06:30:36'),
(17, 4, 18, '2025080712013735240', 500, '20250614302418', 'player', NULL, 1000, '[\"3\",\"12\",\"3\"]', '[\"4\",\"5\",\"6\"]', NULL, NULL, 1, 500, '2025-08-07 12:01:37', '2025-08-07 06:31:37'),
(18, 4, 18, '2025080712023528715', 500, '20250614302419', 'player', NULL, 1000, '[\"12\",\"12\",\"3\"]', '[\"4\",\"5\",\"6\"]', NULL, NULL, 1, 500, '2025-08-07 12:02:35', '2025-08-07 06:32:35'),
(19, 2, 18, '2025080714051365423', 10, '20250614302614', 'banker', NULL, 0, '[\"4\",\"11\",\"8\"]', '[\"1\",\"3\",\"4\"]', NULL, NULL, 1, 10, '2025-08-07 14:05:13', '2025-08-07 08:35:13'),
(20, 2, 18, '2025080714121535946', 10, '20250614302628', 'tie', NULL, 0, '[\"2\",\"9\",\"10\"]', '[\"1\",\"6\",\"3\"]', NULL, NULL, 1, 10, '2025-08-07 14:12:15', '2025-08-07 08:42:15'),
(21, 2, 18, '2025080714131741904', 10, '20250614302630', 'tie', NULL, 0, '[\"8\",\"10\",\"7\"]', '[\"1\",\"3\",\"4\"]', NULL, NULL, 1, 10, '2025-08-07 14:13:17', '2025-08-07 08:43:17'),
(22, 2, 18, '2025080714201131360', 10, '20250614302644', 'banker', NULL, 0, '[\"8\",\"13\",\"13\"]', '[\"1\",\"2\",\"4\"]', NULL, NULL, 1, 10, '2025-08-07 14:20:11', '2025-08-07 08:50:11'),
(23, 2, 18, '2025080714211299437', 10, '20250614302646', 'player', NULL, 20, '[\"11\",\"13\",\"7\"]', '[\"1\",\"2\",\"3\"]', NULL, NULL, 1, 10, '2025-08-07 14:21:12', '2025-08-07 08:51:12'),
(24, 2, 18, '2025080714224092413', 10, '20250614302649', 'tie', NULL, 0, '[\"3\",\"8\",\"11\"]', '[\"1\",\"3\",\"4\"]', NULL, NULL, 1, 10, '2025-08-07 14:22:40', '2025-08-07 08:52:40'),
(25, 2, 18, '2025080714261978142', 10, '20250614302656', 'banker', NULL, 0, '[\"10\",\"14\",\"14\"]', '[\"2\",\"1\",\"4\"]', NULL, NULL, 1, 10, '2025-08-07 14:26:19', '2025-08-07 08:56:19'),
(26, 2, 18, '2025080714264486696', 10, '20250614302657', 'banker', NULL, 0, '[\"11\",\"5\",\"13\"]', '[\"1\",\"3\",\"4\"]', NULL, NULL, 1, 10, '2025-08-07 14:26:44', '2025-08-07 08:56:44'),
(27, 2, 18, '2025080714274318190', 10, '20250614302659', 'banker', NULL, 0, '[\"2\",\"6\",\"7\"]', '[\"1\",\"3\",\"5\"]', NULL, NULL, 1, 10, '2025-08-07 14:27:43', '2025-08-07 08:57:43'),
(28, 2, 18, '2025080714281369261', 10, '20250614302660', 'banker', NULL, 0, '[\"14\",\"6\",\"14\"]', '[\"1\",\"3\",\"5\"]', NULL, NULL, 1, 10, '2025-08-07 14:28:13', '2025-08-07 08:58:13'),
(29, 2, 18, '2025080714284137924', 10, '20250614302661', 'banker', NULL, 0, '[\"8\",\"3\",\"5\"]', '[\"5\",\"4\",\"1\"]', NULL, NULL, 1, 10, '2025-08-07 14:28:41', '2025-08-07 08:58:41'),
(30, 2, 18, '2025080714291655828', 10, '20250614302662', 'banker', NULL, 0, '[\"11\",\"14\",\"14\"]', '[\"1\",\"6\",\"3\"]', NULL, NULL, 1, 10, '2025-08-07 14:29:16', '2025-08-07 08:59:16'),
(31, 2, 18, '2025080714302170067', 10, '20250614302664', 'banker', NULL, 0, '[\"11\",\"10\",\"13\"]', '[\"1\",\"3\",\"5\"]', NULL, NULL, 1, 10, '2025-08-07 14:30:21', '2025-08-07 09:00:21'),
(32, 2, 18, '2025080714312114711', 10, '20250614302666', 'banker', NULL, 0, '[\"8\",\"6\",\"13\"]', '[\"2\",\"4\",\"5\"]', NULL, NULL, 1, 10, '2025-08-07 14:31:21', '2025-08-07 09:01:21'),
(33, 4, 18, '2025080814030794344', 10, '20250614305444', 'player', NULL, 20, '[\"14\",\"12\",\"13\"]', '[\"4\",\"5\",\"6\"]', NULL, NULL, 1, 10, '2025-08-08 14:03:07', '2025-08-08 08:33:07'),
(34, 4, 18, '2025080814050567984', 10, '20250614305448', 'player', NULL, 20, '[\"5\",\"13\",\"11\"]', '[\"6\",\"5\",\"4\"]', NULL, NULL, 1, 10, '2025-08-08 14:05:05', '2025-08-08 08:35:05'),
(35, 4, 18, '2025081017441736177', 100, '20250614311607', 'player', NULL, 200, '[\"11\",\"11\",\"13\"]', '[\"4\",\"5\",\"6\"]', NULL, NULL, 1, 100, '2025-08-10 17:44:17', '2025-08-10 12:14:17'),
(36, 4, 18, '2025081017443748409', 100, '20250614311608', 'player', NULL, 200, '[\"3\",\"8\",\"7\"]', '[\"4\",\"5\",\"6\"]', NULL, NULL, 1, 100, '2025-08-10 17:44:37', '2025-08-10 12:14:37'),
(37, 7, 18, '2025081211061615926', 10, '20250614316506', 'banker', NULL, 0, '[\"13\",\"5\",\"3\"]', '[\"4\",\"2\",\"5\"]', NULL, NULL, 1, 10, '2025-08-12 11:06:16', '2025-08-12 05:36:16'),
(38, 7, 18, '2025081211064215260', 10, '20250614316507', 'tie', NULL, 0, '[\"9\",\"11\",\"14\"]', '[\"4\",\"1\",\"3\"]', NULL, NULL, 1, 10, '2025-08-12 11:06:42', '2025-08-12 05:36:42'),
(39, 8, 18, '2025081215084181547', 10, '20250614316987', 'player', NULL, 20, '[\"11\",\"9\",\"6\"]', '[\"4\",\"2\",\"3\"]', NULL, NULL, 1, 10, '2025-08-12 15:08:41', '2025-08-12 09:38:41'),
(40, 8, 18, '2025081215091515124', 10, '20250614316988', 'player', NULL, 20, '[\"10\",\"10\",\"13\"]', '[\"4\",\"6\",\"5\"]', NULL, NULL, 1, 10, '2025-08-12 15:09:15', '2025-08-12 09:39:15'),
(41, 2, 18, '2025081217285068200', 10, '20250614317262', 'banker', NULL, 0, '[\"7\",\"2\",\"12\"]', '[\"2\",\"1\",\"4\"]', NULL, NULL, 1, 10, '2025-08-12 17:28:50', '2025-08-12 11:58:50'),
(42, 2, 18, '2025081217343920313', 10, '20250614317274', 'banker', NULL, 0, '[\"4\",\"6\",\"5\"]', '[\"2\",\"1\",\"4\"]', NULL, NULL, 1, 10, '2025-08-12 17:34:39', '2025-08-12 12:04:39'),
(43, 2, 18, '2025081217345071488', 10, '20250614317274', 'banker', NULL, 0, '[\"10\",\"6\",\"4\"]', '[\"2\",\"1\",\"4\"]', NULL, NULL, 1, 10, '2025-08-12 17:34:50', '2025-08-12 12:04:50'),
(44, 8, 18, '2025081317252158880', 10, '20250614320072', 'banker', NULL, 0, '[\"14\",\"14\",\"12\"]', '[\"4\",\"1\",\"3\"]', NULL, NULL, 1, 10, '2025-08-13 17:25:21', '2025-08-13 11:55:21'),
(45, 8, 18, '2025081317261452750', 10, '20250614320074', 'banker', NULL, 0, '[\"9\",\"4\",\"4\"]', '[\"4\",\"1\",\"3\"]', NULL, NULL, 1, 10, '2025-08-13 17:26:14', '2025-08-13 11:56:14'),
(46, 8, 18, '2025081317264577994', 10, '20250614320075', 'banker', NULL, 0, '[\"11\",\"7\",\"10\"]', '[\"4\",\"1\",\"6\"]', NULL, NULL, 1, 10, '2025-08-13 17:26:45', '2025-08-13 11:56:45'),
(47, 8, 18, '2025081317271453189', 10, '20250614320076', 'banker', NULL, 0, '[\"8\",\"10\",\"12\"]', '[\"4\",\"5\",\"1\"]', NULL, NULL, 1, 10, '2025-08-13 17:27:14', '2025-08-13 11:57:14'),
(48, 8, 18, '2025081317303967039', 10, '20250614320083', 'banker', NULL, 0, '[\"10\",\"9\",\"12\"]', '[\"1\",\"5\",\"2\"]', NULL, NULL, 1, 10, '2025-08-13 17:30:39', '2025-08-13 12:00:39'),
(49, 8, 18, '2025081317360978628', 10, '20250614320094', 'banker', NULL, 0, '[\"8\",\"8\",\"5\"]', '[\"1\",\"5\",\"2\"]', NULL, NULL, 1, 10, '2025-08-13 17:36:09', '2025-08-13 12:06:09'),
(50, 8, 18, '2025081317454026545', 10, '20250614320113', 'player', NULL, 20, '[\"10\",\"11\",\"11\"]', '[\"1\",\"2\",\"3\"]', NULL, NULL, 1, 10, '2025-08-13 17:45:40', '2025-08-13 12:15:40'),
(51, 8, 18, '2025081317464148252', 10, '20250614320115', 'player', NULL, 20, '[\"4\",\"4\",\"2\"]', '[\"4\",\"3\",\"2\"]', NULL, NULL, 1, 10, '2025-08-13 17:46:41', '2025-08-13 12:16:41'),
(52, 8, 18, '2025081317474140628', 10, '20250614320117', 'player', NULL, 20, '[\"9\",\"13\",\"7\"]', '[\"4\",\"6\",\"5\"]', NULL, NULL, 1, 10, '2025-08-13 17:47:41', '2025-08-13 12:17:41'),
(53, 2, 18, '2025081317481820874', 10, '20250614320118', 'player', NULL, 20, '[\"6\",\"4\",\"9\"]', '[\"1\",\"2\",\"3\"]', NULL, NULL, 1, 10, '2025-08-13 17:48:18', '2025-08-13 12:18:18'),
(54, 8, 18, '2025081317483921279', 20, '20250614320119', 'player', NULL, 40, '[\"6\",\"14\",\"11\"]', '[\"6\",\"5\",\"4\"]', NULL, NULL, 1, 20, '2025-08-13 17:48:39', '2025-08-13 12:18:39'),
(55, 8, 18, '2025081317504077351', 20, '20250614320123', 'banker', NULL, 0, '[\"10\",\"3\",\"10\"]', '[\"5\",\"2\",\"3\"]', NULL, NULL, 1, 20, '2025-08-13 17:50:40', '2025-08-13 12:20:40'),
(56, 2, 18, '2025081317521889692', 10, '20250614320126', 'banker', NULL, 0, '[\"11\",\"13\",\"9\"]', '[\"1\",\"2\",\"4\"]', NULL, NULL, 1, 10, '2025-08-13 17:52:18', '2025-08-13 12:22:18'),
(57, 2, 18, '2025081317535256310', 10, '20250614320128', 'player', NULL, 20, '[\"7\",\"11\",\"9\"]', '[\"1\",\"2\",\"3\"]', NULL, NULL, 1, 10, '2025-08-13 17:53:52', '2025-08-13 12:23:52'),
(58, 8, 18, '2025081318010819417', 20, '20250614320143', 'player', NULL, 40, '[\"10\",\"11\",\"3\"]', '[\"6\",\"5\",\"4\"]', NULL, NULL, 1, 20, '2025-08-13 18:01:08', '2025-08-13 12:31:08'),
(59, 8, 18, '2025081318015072598', 20, '20250614320144', 'banker', NULL, 0, '[\"10\",\"4\",\"6\"]', '[\"4\",\"1\",\"2\"]', NULL, NULL, 1, 20, '2025-08-13 18:01:50', '2025-08-13 12:31:50'),
(60, 8, 18, '2025081318020942978', 20, '20250614320145', 'player', NULL, 40, '[\"12\",\"6\",\"14\"]', '[\"6\",\"5\",\"4\"]', NULL, NULL, 1, 20, '2025-08-13 18:02:09', '2025-08-13 12:32:09'),
(61, 8, 18, '2025081318033876054', 20, '20250614320148', 'player', NULL, 40, '[\"4\",\"6\",\"3\"]', '[\"1\",\"2\",\"3\"]', NULL, NULL, 1, 20, '2025-08-13 18:03:38', '2025-08-13 12:33:38'),
(62, 2, 18, '2025081318153981054', 10, '20250614320172', 'player', NULL, 20, '[\"2\",\"8\",\"10\"]', '[\"1\",\"2\",\"3\"]', NULL, NULL, 1, 10, '2025-08-13 18:15:39', '2025-08-13 12:45:39'),
(63, 8, 18, '2025081411381652248', 10, '20250614322233', 'player', NULL, 20, '[\"13\",\"12\",\"5\"]', '[\"3\",\"2\",\"1\"]', NULL, NULL, 1, 10, '2025-08-14 11:38:16', '2025-08-14 06:08:16'),
(64, 8, 18, '2025081411384924153', 10, '20250614322234', 'player', NULL, 20, '[\"5\",\"9\",\"11\"]', '[\"5\",\"4\",\"6\"]', NULL, NULL, 1, 10, '2025-08-14 11:38:49', '2025-08-14 06:08:49'),
(65, 8, 18, '2025081411391633035', 10, '20250614322235', 'player', NULL, 20, '[\"7\",\"3\",\"6\"]', '[\"6\",\"5\",\"4\"]', NULL, NULL, 1, 10, '2025-08-14 11:39:16', '2025-08-14 06:09:16'),
(66, 8, 18, '2025081411471043913', 10, '20250614322251', 'banker', NULL, 0, '[\"9\",\"12\",\"10\"]', '[\"6\",\"5\",\"4\"]', NULL, NULL, 1, 10, '2025-08-14 11:47:10', '2025-08-14 06:17:10'),
(67, 8, 18, '2025081411474098742', 10, '20250614322252', 'player', NULL, 20, '[\"11\",\"10\",\"14\"]', '[\"6\",\"3\",\"2\"]', NULL, NULL, 1, 10, '2025-08-14 11:47:40', '2025-08-14 06:17:40'),
(68, 8, 18, '2025081411480920207', 10, '20250614322253', 'player', NULL, 20, '[\"6\",\"9\",\"8\"]', '[\"6\",\"5\",\"4\"]', NULL, NULL, 1, 10, '2025-08-14 11:48:09', '2025-08-14 06:18:09'),
(69, 8, 18, '2025081411491034293', 10, '20250614322255', 'banker', NULL, 0, '[\"2\",\"5\",\"7\"]', '[\"3\",\"6\",\"5\"]', NULL, NULL, 1, 10, '2025-08-14 11:49:10', '2025-08-14 06:19:10'),
(70, 8, 18, '2025081411494184881', 10, '20250614322256', 'banker', NULL, 0, '[\"10\",\"12\",\"8\"]', '[\"4\",\"5\",\"6\"]', NULL, NULL, 1, 10, '2025-08-14 11:49:41', '2025-08-14 06:19:41'),
(71, 8, 18, '2025081411501278177', 10, '20250614322257', 'banker', NULL, 0, '[\"14\",\"9\",\"7\"]', '[\"4\",\"5\",\"1\"]', NULL, NULL, 1, 10, '2025-08-14 11:50:12', '2025-08-14 06:20:12'),
(72, 8, 18, '2025081411501437314', 10, '20250614322257', 'banker', NULL, 0, '[\"5\",\"4\",\"9\"]', '[\"4\",\"5\",\"1\"]', NULL, NULL, 1, 10, '2025-08-14 11:50:14', '2025-08-14 06:20:14'),
(73, 8, 18, '2025081411504497664', 10, '20250614322258', 'banker', NULL, 0, '[\"9\",\"3\",\"12\"]', '[\"6\",\"2\",\"3\"]', NULL, NULL, 1, 10, '2025-08-14 11:50:44', '2025-08-14 06:20:44'),
(74, 8, 18, '2025081411511613625', 10, '20250614322259', 'player', NULL, 20, '[\"3\",\"8\",\"12\"]', '[\"4\",\"1\",\"6\"]', NULL, NULL, 1, 10, '2025-08-14 11:51:16', '2025-08-14 06:21:16'),
(75, 8, 18, '2025081411511793477', 10, '20250614322259', 'banker', NULL, 0, '[\"3\",\"9\",\"14\"]', '[\"4\",\"1\",\"6\"]', NULL, NULL, 1, 10, '2025-08-14 11:51:17', '2025-08-14 06:21:17'),
(76, 8, 18, '2025081411531020164', 10, '20250614322263', 'banker', NULL, 0, '[\"13\",\"5\",\"6\"]', '[\"3\",\"6\",\"2\"]', NULL, NULL, 1, 10, '2025-08-14 11:53:10', '2025-08-14 06:23:10'),
(77, 8, 18, '2025081411563963643', 10, '20250614322269', 'player', NULL, 20, '[\"13\",\"8\",\"10\"]', '[\"1\",\"2\",\"3\"]', NULL, NULL, 1, 10, '2025-08-14 11:56:39', '2025-08-14 06:26:39'),
(78, 8, 18, '2025081411570972256', 10, '20250614322270', 'banker', NULL, 0, '[\"8\",\"11\",\"13\"]', '[\"4\",\"1\",\"2\"]', NULL, NULL, 1, 10, '2025-08-14 11:57:09', '2025-08-14 06:27:09'),
(79, 8, 18, '2025081411584010312', 10, '20250614322273', 'banker', NULL, 0, '[\"5\",\"5\",\"8\"]', '[\"6\",\"3\",\"1\"]', NULL, NULL, 1, 10, '2025-08-14 11:58:40', '2025-08-14 06:28:40'),
(80, 8, 18, '2025081411590885425', 10, '20250614322274', 'banker', NULL, 0, '[\"10\",\"6\",\"10\"]', '[\"6\",\"2\",\"1\"]', NULL, NULL, 1, 10, '2025-08-14 11:59:08', '2025-08-14 06:29:08'),
(81, 8, 18, '2025081411593729837', 10, '20250614322275', 'player', NULL, 20, '[\"14\",\"11\",\"11\"]', '[\"4\",\"5\",\"1\"]', NULL, NULL, 1, 10, '2025-08-14 11:59:37', '2025-08-14 06:29:37'),
(82, 8, 18, '2025081412001715882', 10, '20250614322276', 'player', NULL, 20, '[\"10\",\"7\",\"8\"]', '[\"6\",\"5\",\"4\"]', NULL, NULL, 1, 10, '2025-08-14 12:00:17', '2025-08-14 06:30:17'),
(83, 8, 18, '2025081412013795778', 10, '20250614322279', 'banker', NULL, 0, '[\"11\",\"10\",\"6\"]', '[\"6\",\"5\",\"4\"]', NULL, NULL, 1, 10, '2025-08-14 12:01:37', '2025-08-14 06:31:37'),
(84, 8, 18, '2025081412045170110', 10, '20250614322285', 'banker', NULL, 0, '[\"10\",\"4\",\"14\"]', '[\"1\",\"3\",\"2\"]', NULL, NULL, 1, 10, '2025-08-14 12:04:51', '2025-08-14 06:34:51'),
(85, 8, 18, '2025081412052031572', 10, '20250614322286', 'player', NULL, 20, '[\"7\",\"2\",\"3\"]', '[\"2\",\"1\",\"3\"]', NULL, NULL, 1, 10, '2025-08-14 12:05:20', '2025-08-14 06:35:20'),
(86, 8, 18, '2025081414271496302', 10, '20250614322553', 'banker', NULL, 0, '[\"10\",\"9\",\"8\"]', '[\"5\",\"6\",\"4\"]', NULL, NULL, 1, 10, '2025-08-14 14:27:15', '2025-08-14 08:57:15'),
(87, 827, 18, '2025081414413829859', 200, '20250614322582', 'banker', NULL, 0, '[\"3\",\"7\",\"5\"]', '[\"4\",\"5\",\"6\"]', NULL, NULL, 1, 200, '2025-08-14 14:41:38', '2025-08-14 09:11:38'),
(88, 827, 18, '2025081414421247117', 200, '20250614322583', 'player', NULL, 400, '[\"13\",\"7\",\"9\"]', '[\"4\",\"5\",\"6\"]', NULL, NULL, 1, 200, '2025-08-14 14:42:12', '2025-08-14 09:12:12'),
(89, 827, 18, '2025081414424749674', 200, '20250614322584', 'player', NULL, 400, '[\"10\",\"13\",\"11\"]', '[\"4\",\"5\",\"6\"]', NULL, NULL, 1, 200, '2025-08-14 14:42:47', '2025-08-14 09:12:47');

-- --------------------------------------------------------

--
-- Table structure for table `teen_patti_bet_result`
--

CREATE TABLE `teen_patti_bet_result` (
  `id` int(11) NOT NULL,
  `number` int(100) DEFAULT NULL,
  `games_no` bigint(255) DEFAULT NULL,
  `game_id` int(11) NOT NULL,
  `json` varchar(255) DEFAULT NULL,
  `banker_cards` varchar(255) DEFAULT NULL,
  `player_cards` varchar(255) DEFAULT NULL,
  `random_card` int(11) DEFAULT NULL,
  `status` varchar(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teen_patti_multiplier`
--

CREATE TABLE `teen_patti_multiplier` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `multiplier` float NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teen_patti_multiplier`
--

INSERT INTO `teen_patti_multiplier` (`id`, `name`, `multiplier`, `created_at`, `updated_at`) VALUES
(1, 'show', 2, '2025-02-06 10:21:46', '2025-02-06 10:21:46'),
(2, 'see', 1.5, '2025-02-06 10:22:15', '2025-02-06 10:22:15'),
(3, 'pack', 0.5, '2025-02-06 10:22:15', '2025-02-06 10:22:15');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_histories`
--

CREATE TABLE `transaction_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `mobile` double NOT NULL DEFAULT 0,
  `description` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `actual_amount` bigint(20) NOT NULL DEFAULT 0,
  `type` int(10) UNSIGNED DEFAULT NULL,
  `account_id` int(10) UNSIGNED DEFAULT NULL,
  `payout` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(555) NOT NULL COMMENT 'Hash value of ethereum',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `triplechance_admin_winner_result`
--

CREATE TABLE `triplechance_admin_winner_result` (
  `id` int(11) UNSIGNED NOT NULL,
  `game_no` int(11) UNSIGNED NOT NULL,
  `number` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `triplechance_bets`
--

CREATE TABLE `triplechance_bets` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `games_no` bigint(20) NOT NULL,
  `game_id` int(4) DEFAULT NULL,
  `amount` double(5,2) DEFAULT NULL,
  `wheel_no` int(1) DEFAULT NULL,
  `win_amount` double(10,2) DEFAULT 0.00,
  `win_number` int(2) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=pending,1=success,2=loss	',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `triplechance_bet_logs`
--

CREATE TABLE `triplechance_bet_logs` (
  `id` int(11) NOT NULL,
  `game_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `number` int(11) NOT NULL,
  `games_no` varchar(20) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `triplechance_bet_logs`
--

INSERT INTO `triplechance_bet_logs` (`id`, `game_id`, `number`, `games_no`, `amount`, `created_at`, `updated_at`) VALUES
(1, '0', 0, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(2, '1', 1, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(3, '2', 2, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(4, '3', 3, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(5, '4', 4, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(6, '5', 5, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(7, '6', 6, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(8, '7', 7, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(9, '8', 8, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(10, '9', 9, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(11, '10', 10, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(12, '11', 11, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(13, '12', 12, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(14, '13', 13, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(15, '14', 14, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(16, '15', 15, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(17, '16', 16, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(18, '17', 17, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(19, '18', 18, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(20, '19', 19, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(21, '20', 20, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(22, '21', 21, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(23, '22', 22, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(24, '23', 23, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(25, '24', 24, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(26, '25', 25, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(27, '26', 26, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(28, '27', 27, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(29, '28', 28, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(30, '29', 29, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(31, '30', 30, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(32, '31', 31, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(33, '32', 32, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(34, '33', 33, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(35, '34', 34, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(36, '35', 35, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(37, '36', 36, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(38, '37', 37, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(39, '38', 38, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(40, '39', 39, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(41, '40', 40, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(42, '41', 41, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(43, '42', 42, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(44, '43', 43, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(45, '44', 44, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(46, '45', 45, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(47, '46', 46, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(48, '47', 47, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(49, '48', 48, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(50, '49', 49, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(51, '50', 50, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(52, '51', 51, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(53, '52', 52, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(54, '53', 53, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(55, '54', 54, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(56, '55', 55, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(57, '56', 56, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(58, '57', 57, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(59, '58', 58, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(60, '59', 59, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(61, '60', 60, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(62, '61', 61, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(63, '62', 62, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(64, '63', 63, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(65, '64', 64, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(66, '65', 65, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(67, '66', 66, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(68, '67', 67, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(69, '68', 68, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(70, '69', 69, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(71, '70', 70, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(72, '71', 71, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(73, '72', 72, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(74, '73', 73, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(75, '74', 74, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(76, '75', 75, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(77, '76', 76, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(78, '77', 77, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(79, '78', 78, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(80, '79', 79, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(81, '80', 80, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(82, '81', 81, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(83, '82', 82, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(84, '83', 83, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(85, '84', 84, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(86, '85', 85, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(87, '86', 86, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(88, '87', 87, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(89, '88', 88, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(90, '89', 89, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(91, '90', 90, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(92, '91', 91, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(93, '92', 92, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(94, '93', 93, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(95, '94', 94, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(96, '95', 95, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(97, '96', 96, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(98, '97', 97, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(99, '98', 98, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(100, '99', 99, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(101, '100', 100, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(102, '101', 101, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(103, '102', 102, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(104, '103', 103, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(105, '104', 104, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(106, '105', 105, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(107, '106', 106, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(108, '107', 107, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(109, '108', 108, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(110, '109', 109, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(111, '110', 110, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(112, '111', 111, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(113, '112', 112, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(114, '113', 113, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(115, '114', 114, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(116, '115', 115, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(117, '116', 116, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(118, '117', 117, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(119, '118', 118, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(120, '119', 119, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(121, '120', 120, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(122, '121', 121, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(123, '122', 122, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(124, '123', 123, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(125, '124', 124, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(126, '125', 125, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(127, '126', 126, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(128, '127', 127, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(129, '128', 128, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(130, '129', 129, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(131, '130', 130, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(132, '131', 131, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(133, '132', 132, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(134, '133', 133, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(135, '134', 134, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(136, '135', 135, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(137, '136', 136, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(138, '137', 137, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(139, '138', 138, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(140, '139', 139, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(141, '140', 140, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(142, '141', 141, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(143, '142', 142, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(144, '143', 143, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(145, '144', 144, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(146, '145', 145, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(147, '146', 146, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(148, '147', 147, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(149, '148', 148, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(150, '149', 149, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(151, '150', 150, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(152, '151', 151, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(153, '152', 152, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(154, '153', 153, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(155, '154', 154, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(156, '155', 155, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(157, '156', 156, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(158, '157', 157, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(159, '158', 158, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(160, '159', 159, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(161, '160', 160, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(162, '161', 161, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(163, '162', 162, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(164, '163', 163, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(165, '164', 164, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(166, '165', 165, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(167, '166', 166, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(168, '167', 167, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(169, '168', 168, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(170, '169', 169, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(171, '170', 170, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(172, '171', 171, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(173, '172', 172, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(174, '173', 173, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(175, '174', 174, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(176, '175', 175, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(177, '176', 176, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(178, '177', 177, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(179, '178', 178, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(180, '179', 179, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(181, '180', 180, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(182, '181', 181, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(183, '182', 182, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(184, '183', 183, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(185, '184', 184, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(186, '185', 185, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(187, '186', 186, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(188, '187', 187, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(189, '188', 188, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(190, '189', 189, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(191, '190', 190, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(192, '191', 191, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(193, '192', 192, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(194, '193', 193, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(195, '194', 194, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(196, '195', 195, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(197, '196', 196, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(198, '197', 197, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(199, '198', 198, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(200, '199', 199, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(201, '200', 200, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(202, '201', 201, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(203, '202', 202, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(204, '203', 203, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(205, '204', 204, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(206, '205', 205, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(207, '206', 206, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(208, '207', 207, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(209, '208', 208, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(210, '209', 209, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(211, '210', 210, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(212, '211', 211, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(213, '212', 212, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(214, '213', 213, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(215, '214', 214, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(216, '215', 215, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(217, '216', 216, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(218, '217', 217, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(219, '218', 218, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(220, '219', 219, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(221, '220', 220, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(222, '221', 221, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(223, '222', 222, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(224, '223', 223, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(225, '224', 224, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(226, '225', 225, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(227, '226', 226, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(228, '227', 227, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(229, '228', 228, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(230, '229', 229, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(231, '230', 230, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(232, '231', 231, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(233, '232', 232, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(234, '233', 233, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(235, '234', 234, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(236, '235', 235, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(237, '236', 236, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(238, '237', 237, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(239, '238', 238, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(240, '239', 239, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(241, '240', 240, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(242, '241', 241, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(243, '242', 242, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(244, '243', 243, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(245, '244', 244, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(246, '245', 245, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(247, '246', 246, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(248, '247', 247, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(249, '248', 248, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(250, '249', 249, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(251, '250', 250, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(252, '251', 251, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(253, '252', 252, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(254, '253', 253, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(255, '254', 254, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(256, '255', 255, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(257, '256', 256, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(258, '257', 257, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(259, '258', 258, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(260, '259', 259, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(261, '260', 260, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(262, '261', 261, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(263, '262', 262, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(264, '263', 263, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(265, '264', 264, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(266, '265', 265, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(267, '266', 266, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(268, '267', 267, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(269, '268', 268, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(270, '269', 269, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(271, '270', 270, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(272, '271', 271, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(273, '272', 272, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(274, '273', 273, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(275, '274', 274, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(276, '275', 275, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(277, '276', 276, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(278, '277', 277, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(279, '278', 278, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(280, '279', 279, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(281, '280', 280, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(282, '281', 281, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(283, '282', 282, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(284, '283', 283, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(285, '284', 284, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(286, '285', 285, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(287, '286', 286, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(288, '287', 287, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(289, '288', 288, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(290, '289', 289, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(291, '290', 290, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(292, '291', 291, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(293, '292', 292, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(294, '293', 293, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(295, '294', 294, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(296, '295', 295, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(297, '296', 296, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(298, '297', 297, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(299, '298', 298, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(300, '299', 299, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(301, '300', 300, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(302, '301', 301, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(303, '302', 302, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(304, '303', 303, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(305, '304', 304, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(306, '305', 305, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(307, '306', 306, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(308, '307', 307, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(309, '308', 308, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(310, '309', 309, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(311, '310', 310, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(312, '311', 311, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(313, '312', 312, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(314, '313', 313, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(315, '314', 314, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(316, '315', 315, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(317, '316', 316, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(318, '317', 317, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(319, '318', 318, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(320, '319', 319, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(321, '320', 320, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(322, '321', 321, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(323, '322', 322, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(324, '323', 323, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(325, '324', 324, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(326, '325', 325, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(327, '326', 326, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(328, '327', 327, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(329, '328', 328, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(330, '329', 329, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(331, '330', 330, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(332, '331', 331, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(333, '332', 332, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(334, '333', 333, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(335, '334', 334, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(336, '335', 335, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(337, '336', 336, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(338, '337', 337, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(339, '338', 338, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(340, '339', 339, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(341, '340', 340, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(342, '341', 341, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(343, '342', 342, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(344, '343', 343, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(345, '344', 344, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(346, '345', 345, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(347, '346', 346, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(348, '347', 347, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(349, '348', 348, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(350, '349', 349, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(351, '350', 350, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(352, '351', 351, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(353, '352', 352, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(354, '353', 353, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(355, '354', 354, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(356, '355', 355, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(357, '356', 356, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(358, '357', 357, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(359, '358', 358, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(360, '359', 359, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(361, '360', 360, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(362, '361', 361, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(363, '362', 362, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(364, '363', 363, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(365, '364', 364, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(366, '365', 365, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(367, '366', 366, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(368, '367', 367, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(369, '368', 368, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(370, '369', 369, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(371, '370', 370, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(372, '371', 371, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(373, '372', 372, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(374, '373', 373, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(375, '374', 374, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(376, '375', 375, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(377, '376', 376, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(378, '377', 377, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(379, '378', 378, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(380, '379', 379, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(381, '380', 380, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(382, '381', 381, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(383, '382', 382, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(384, '383', 383, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(385, '384', 384, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(386, '385', 385, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(387, '386', 386, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(388, '387', 387, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(389, '388', 388, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(390, '389', 389, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(391, '390', 390, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(392, '391', 391, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(393, '392', 392, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(394, '393', 393, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(395, '394', 394, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(396, '395', 395, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(397, '396', 396, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(398, '397', 397, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(399, '398', 398, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(400, '399', 399, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(401, '400', 400, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(402, '401', 401, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(403, '402', 402, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(404, '403', 403, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(405, '404', 404, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(406, '405', 405, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(407, '406', 406, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(408, '407', 407, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(409, '408', 408, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(410, '409', 409, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(411, '410', 410, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(412, '411', 411, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(413, '412', 412, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(414, '413', 413, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(415, '414', 414, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(416, '415', 415, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(417, '416', 416, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(418, '417', 417, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(419, '418', 418, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(420, '419', 419, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(421, '420', 420, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(422, '421', 421, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(423, '422', 422, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(424, '423', 423, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(425, '424', 424, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(426, '425', 425, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(427, '426', 426, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(428, '427', 427, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(429, '428', 428, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(430, '429', 429, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(431, '430', 430, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(432, '431', 431, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(433, '432', 432, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(434, '433', 433, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(435, '434', 434, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(436, '435', 435, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(437, '436', 436, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(438, '437', 437, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(439, '438', 438, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(440, '439', 439, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(441, '440', 440, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(442, '441', 441, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(443, '442', 442, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(444, '443', 443, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(445, '444', 444, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(446, '445', 445, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(447, '446', 446, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(448, '447', 447, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(449, '448', 448, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(450, '449', 449, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(451, '450', 450, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(452, '451', 451, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(453, '452', 452, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(454, '453', 453, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(455, '454', 454, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(456, '455', 455, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(457, '456', 456, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(458, '457', 457, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(459, '458', 458, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(460, '459', 459, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(461, '460', 460, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(462, '461', 461, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(463, '462', 462, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(464, '463', 463, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(465, '464', 464, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(466, '465', 465, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(467, '466', 466, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(468, '467', 467, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(469, '468', 468, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(470, '469', 469, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(471, '470', 470, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(472, '471', 471, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(473, '472', 472, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(474, '473', 473, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(475, '474', 474, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(476, '475', 475, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(477, '476', 476, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(478, '477', 477, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(479, '478', 478, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(480, '479', 479, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(481, '480', 480, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(482, '481', 481, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(483, '482', 482, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(484, '483', 483, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(485, '484', 484, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(486, '485', 485, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(487, '486', 486, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(488, '487', 487, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(489, '488', 488, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(490, '489', 489, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(491, '490', 490, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(492, '491', 491, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(493, '492', 492, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(494, '493', 493, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(495, '494', 494, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(496, '495', 495, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(497, '496', 496, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(498, '497', 497, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(499, '498', 498, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(500, '499', 499, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(501, '500', 500, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(502, '501', 501, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(503, '502', 502, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(504, '503', 503, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(505, '504', 504, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(506, '505', 505, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(507, '506', 506, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(508, '507', 507, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(509, '508', 508, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(510, '509', 509, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(511, '510', 510, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(512, '511', 511, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(513, '512', 512, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(514, '513', 513, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(515, '514', 514, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(516, '515', 515, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(517, '516', 516, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(518, '517', 517, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(519, '518', 518, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(520, '519', 519, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(521, '520', 520, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(522, '521', 521, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(523, '522', 522, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(524, '523', 523, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(525, '524', 524, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(526, '525', 525, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(527, '526', 526, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(528, '527', 527, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(529, '528', 528, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(530, '529', 529, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(531, '530', 530, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(532, '531', 531, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(533, '532', 532, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(534, '533', 533, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(535, '534', 534, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(536, '535', 535, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(537, '536', 536, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(538, '537', 537, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(539, '538', 538, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(540, '539', 539, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(541, '540', 540, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(542, '541', 541, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(543, '542', 542, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(544, '543', 543, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(545, '544', 544, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(546, '545', 545, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(547, '546', 546, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(548, '547', 547, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(549, '548', 548, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(550, '549', 549, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(551, '550', 550, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(552, '551', 551, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(553, '552', 552, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(554, '553', 553, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(555, '554', 554, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(556, '555', 555, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(557, '556', 556, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(558, '557', 557, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(559, '558', 558, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(560, '559', 559, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(561, '560', 560, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(562, '561', 561, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(563, '562', 562, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(564, '563', 563, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(565, '564', 564, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(566, '565', 565, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(567, '566', 566, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(568, '567', 567, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(569, '568', 568, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(570, '569', 569, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(571, '570', 570, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(572, '571', 571, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(573, '572', 572, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(574, '573', 573, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(575, '574', 574, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(576, '575', 575, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(577, '576', 576, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(578, '577', 577, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(579, '578', 578, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(580, '579', 579, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(581, '580', 580, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(582, '581', 581, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(583, '582', 582, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(584, '583', 583, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(585, '584', 584, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(586, '585', 585, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(587, '586', 586, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(588, '587', 587, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(589, '588', 588, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(590, '589', 589, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(591, '590', 590, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(592, '591', 591, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(593, '592', 592, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(594, '593', 593, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(595, '594', 594, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(596, '595', 595, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(597, '596', 596, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(598, '597', 597, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(599, '598', 598, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(600, '599', 599, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(601, '600', 600, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(602, '601', 601, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(603, '602', 602, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(604, '603', 603, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(605, '604', 604, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(606, '605', 605, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(607, '606', 606, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(608, '607', 607, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(609, '608', 608, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(610, '609', 609, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(611, '610', 610, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(612, '611', 611, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(613, '612', 612, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(614, '613', 613, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(615, '614', 614, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(616, '615', 615, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(617, '616', 616, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(618, '617', 617, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(619, '618', 618, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57');
INSERT INTO `triplechance_bet_logs` (`id`, `game_id`, `number`, `games_no`, `amount`, `created_at`, `updated_at`) VALUES
(620, '619', 619, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(621, '620', 620, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(622, '621', 621, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(623, '622', 622, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(624, '623', 623, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(625, '624', 624, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(626, '625', 625, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(627, '626', 626, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(628, '627', 627, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(629, '628', 628, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(630, '629', 629, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(631, '630', 630, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(632, '631', 631, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(633, '632', 632, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(634, '633', 633, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(635, '634', 634, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(636, '635', 635, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(637, '636', 636, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(638, '637', 637, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(639, '638', 638, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(640, '639', 639, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(641, '640', 640, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(642, '641', 641, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(643, '642', 642, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(644, '643', 643, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(645, '644', 644, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(646, '645', 645, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(647, '646', 646, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(648, '647', 647, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(649, '648', 648, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(650, '649', 649, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(651, '650', 650, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(652, '651', 651, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(653, '652', 652, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(654, '653', 653, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(655, '654', 654, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(656, '655', 655, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(657, '656', 656, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(658, '657', 657, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(659, '658', 658, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(660, '659', 659, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(661, '660', 660, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(662, '661', 661, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(663, '662', 662, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(664, '663', 663, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(665, '664', 664, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(666, '665', 665, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(667, '666', 666, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(668, '667', 667, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(669, '668', 668, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(670, '669', 669, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(671, '670', 670, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(672, '671', 671, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(673, '672', 672, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(674, '673', 673, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(675, '674', 674, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(676, '675', 675, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(677, '676', 676, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(678, '677', 677, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(679, '678', 678, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(680, '679', 679, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(681, '680', 680, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(682, '681', 681, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(683, '682', 682, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(684, '683', 683, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(685, '684', 684, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(686, '685', 685, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(687, '686', 686, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(688, '687', 687, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(689, '688', 688, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(690, '689', 689, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(691, '690', 690, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(692, '691', 691, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(693, '692', 692, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(694, '693', 693, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(695, '694', 694, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(696, '695', 695, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(697, '696', 696, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(698, '697', 697, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(699, '698', 698, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(700, '699', 699, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(701, '700', 700, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(702, '701', 701, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(703, '702', 702, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(704, '703', 703, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(705, '704', 704, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(706, '705', 705, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(707, '706', 706, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(708, '707', 707, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(709, '708', 708, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(710, '709', 709, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(711, '710', 710, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(712, '711', 711, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(713, '712', 712, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(714, '713', 713, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(715, '714', 714, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(716, '715', 715, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(717, '716', 716, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(718, '717', 717, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(719, '718', 718, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(720, '719', 719, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(721, '720', 720, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(722, '721', 721, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(723, '722', 722, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(724, '723', 723, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(725, '724', 724, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(726, '725', 725, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(727, '726', 726, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(728, '727', 727, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(729, '728', 728, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(730, '729', 729, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(731, '730', 730, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(732, '731', 731, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(733, '732', 732, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(734, '733', 733, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(735, '734', 734, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(736, '735', 735, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(737, '736', 736, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(738, '737', 737, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(739, '738', 738, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(740, '739', 739, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(741, '740', 740, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(742, '741', 741, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(743, '742', 742, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(744, '743', 743, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(745, '744', 744, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(746, '745', 745, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(747, '746', 746, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(748, '747', 747, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(749, '748', 748, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(750, '749', 749, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(751, '750', 750, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(752, '751', 751, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(753, '752', 752, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(754, '753', 753, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(755, '754', 754, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(756, '755', 755, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(757, '756', 756, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(758, '757', 757, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(759, '758', 758, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(760, '759', 759, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(761, '760', 760, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(762, '761', 761, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(763, '762', 762, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(764, '763', 763, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(765, '764', 764, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(766, '765', 765, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(767, '766', 766, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(768, '767', 767, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(769, '768', 768, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(770, '769', 769, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(771, '770', 770, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(772, '771', 771, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(773, '772', 772, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(774, '773', 773, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(775, '774', 774, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(776, '775', 775, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(777, '776', 776, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(778, '777', 777, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(779, '778', 778, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(780, '779', 779, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(781, '780', 780, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(782, '781', 781, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(783, '782', 782, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(784, '783', 783, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(785, '784', 784, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(786, '785', 785, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(787, '786', 786, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(788, '787', 787, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(789, '788', 788, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(790, '789', 789, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(791, '790', 790, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(792, '791', 791, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(793, '792', 792, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(794, '793', 793, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(795, '794', 794, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(796, '795', 795, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(797, '796', 796, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(798, '797', 797, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(799, '798', 798, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(800, '799', 799, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(801, '800', 800, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(802, '801', 801, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(803, '802', 802, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(804, '803', 803, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(805, '804', 804, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(806, '805', 805, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(807, '806', 806, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(808, '807', 807, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(809, '808', 808, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(810, '809', 809, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(811, '810', 810, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(812, '811', 811, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(813, '812', 812, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(814, '813', 813, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(815, '814', 814, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(816, '815', 815, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(817, '816', 816, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(818, '817', 817, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(819, '818', 818, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(820, '819', 819, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(821, '820', 820, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(822, '821', 821, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(823, '822', 822, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(824, '823', 823, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(825, '824', 824, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(826, '825', 825, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(827, '826', 826, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(828, '827', 827, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(829, '828', 828, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(830, '829', 829, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(831, '830', 830, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(832, '831', 831, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(833, '832', 832, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(834, '833', 833, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(835, '834', 834, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(836, '835', 835, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(837, '836', 836, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(838, '837', 837, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(839, '838', 838, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(840, '839', 839, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(841, '840', 840, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(842, '841', 841, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(843, '842', 842, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(844, '843', 843, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(845, '844', 844, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(846, '845', 845, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(847, '846', 846, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(848, '847', 847, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(849, '848', 848, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(850, '849', 849, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(851, '850', 850, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(852, '851', 851, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(853, '852', 852, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(854, '853', 853, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(855, '854', 854, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(856, '855', 855, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(857, '856', 856, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(858, '857', 857, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(859, '858', 858, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(860, '859', 859, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(861, '860', 860, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(862, '861', 861, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(863, '862', 862, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(864, '863', 863, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(865, '864', 864, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(866, '865', 865, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(867, '866', 866, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(868, '867', 867, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(869, '868', 868, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(870, '869', 869, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(871, '870', 870, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(872, '871', 871, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(873, '872', 872, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(874, '873', 873, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(875, '874', 874, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(876, '875', 875, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(877, '876', 876, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(878, '877', 877, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(879, '878', 878, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(880, '879', 879, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(881, '880', 880, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(882, '881', 881, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(883, '882', 882, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(884, '883', 883, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(885, '884', 884, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(886, '885', 885, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(887, '886', 886, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(888, '887', 887, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(889, '888', 888, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(890, '889', 889, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(891, '890', 890, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(892, '891', 891, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(893, '892', 892, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(894, '893', 893, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(895, '894', 894, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(896, '895', 895, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(897, '896', 896, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(898, '897', 897, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(899, '898', 898, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(900, '899', 899, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(901, '900', 900, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(902, '901', 901, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(903, '902', 902, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(904, '903', 903, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(905, '904', 904, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(906, '905', 905, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(907, '906', 906, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(908, '907', 907, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(909, '908', 908, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(910, '909', 909, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(911, '910', 910, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(912, '911', 911, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(913, '912', 912, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(914, '913', 913, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(915, '914', 914, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(916, '915', 915, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(917, '916', 916, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(918, '917', 917, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(919, '918', 918, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(920, '919', 919, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(921, '920', 920, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(922, '921', 921, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(923, '922', 922, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(924, '923', 923, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(925, '924', 924, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(926, '925', 925, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(927, '926', 926, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(928, '927', 927, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(929, '928', 928, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(930, '929', 929, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(931, '930', 930, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(932, '931', 931, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(933, '932', 932, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(934, '933', 933, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(935, '934', 934, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(936, '935', 935, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(937, '936', 936, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(938, '937', 937, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(939, '938', 938, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(940, '939', 939, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(941, '940', 940, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(942, '941', 941, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(943, '942', 942, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(944, '943', 943, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(945, '944', 944, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(946, '945', 945, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(947, '946', 946, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(948, '947', 947, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(949, '948', 948, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(950, '949', 949, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(951, '950', 950, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(952, '951', 951, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(953, '952', 952, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(954, '953', 953, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(955, '954', 954, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(956, '955', 955, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(957, '956', 956, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(958, '957', 957, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(959, '958', 958, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(960, '959', 959, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(961, '960', 960, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(962, '961', 961, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(963, '962', 962, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(964, '963', 963, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(965, '964', 964, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(966, '965', 965, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(967, '966', 966, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(968, '967', 967, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(969, '968', 968, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(970, '969', 969, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(971, '970', 970, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(972, '971', 971, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(973, '972', 972, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(974, '973', 973, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(975, '974', 974, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(976, '975', 975, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(977, '976', 976, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(978, '977', 977, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(979, '978', 978, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(980, '979', 979, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(981, '980', 980, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(982, '981', 981, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(983, '982', 982, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(984, '983', 983, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(985, '984', 984, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(986, '985', 985, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(987, '986', 986, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(988, '987', 987, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(989, '988', 988, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(990, '989', 989, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(991, '990', 990, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(992, '991', 991, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(993, '992', 992, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(994, '993', 993, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(995, '994', 994, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(996, '995', 995, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(997, '996', 996, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(998, '997', 997, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(999, '998', 998, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57'),
(1000, '999', 999, '11279725', 0.00, '2024-09-27 17:43:57', '2024-09-27 17:43:57');

-- --------------------------------------------------------

--
-- Table structure for table `triplechance_game_settings`
--

CREATE TABLE `triplechance_game_settings` (
  `id` int(11) NOT NULL,
  `game_id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `multiplier` double(10,2) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `triplechance_game_settings`
--

INSERT INTO `triplechance_game_settings` (`id`, `game_id`, `number`, `multiplier`, `description`) VALUES
(1, 0, 0, 9.00, 'single'),
(2, 1, 1, 9.00, 'single'),
(3, 2, 2, 9.00, 'single'),
(4, 3, 3, 9.00, 'single'),
(5, 4, 4, 9.00, 'single'),
(6, 5, 5, 9.00, 'single'),
(7, 6, 6, 9.00, 'single'),
(8, 7, 7, 9.00, 'single'),
(9, 8, 8, 9.00, 'single'),
(10, 9, 9, 9.00, 'single'),
(11, 0, 0, 90.00, 'double'),
(12, 1, 1, 90.00, 'double'),
(13, 2, 2, 90.00, 'double'),
(14, 3, 3, 90.00, 'double'),
(15, 4, 4, 90.00, 'double'),
(16, 5, 5, 90.00, 'double'),
(17, 6, 6, 90.00, 'double'),
(18, 7, 7, 90.00, 'double'),
(19, 8, 8, 90.00, 'double'),
(20, 9, 9, 90.00, 'double'),
(21, 10, 10, 90.00, 'double'),
(22, 11, 11, 90.00, 'double'),
(23, 12, 12, 90.00, 'double'),
(24, 13, 13, 90.00, 'double'),
(25, 14, 14, 90.00, 'double'),
(26, 15, 15, 90.00, 'double'),
(27, 16, 16, 90.00, 'double'),
(28, 17, 17, 90.00, 'double'),
(29, 18, 18, 90.00, 'double'),
(30, 19, 19, 90.00, 'double'),
(31, 20, 20, 90.00, 'double'),
(32, 21, 21, 90.00, 'double'),
(33, 22, 22, 90.00, 'double'),
(34, 23, 23, 90.00, 'double'),
(35, 24, 24, 90.00, 'double'),
(36, 25, 25, 90.00, 'double'),
(37, 26, 26, 90.00, 'double'),
(38, 27, 27, 90.00, 'double'),
(39, 28, 28, 90.00, 'double'),
(40, 29, 29, 90.00, 'double'),
(41, 30, 30, 90.00, 'double'),
(42, 31, 31, 90.00, 'double'),
(43, 32, 32, 90.00, 'double'),
(44, 33, 33, 90.00, 'double'),
(45, 34, 34, 90.00, 'double'),
(46, 35, 35, 90.00, 'double'),
(47, 36, 36, 90.00, 'double'),
(48, 37, 37, 90.00, 'double'),
(49, 38, 38, 90.00, 'double'),
(50, 39, 39, 90.00, 'double'),
(51, 40, 40, 90.00, 'double'),
(52, 41, 41, 90.00, 'double'),
(53, 42, 42, 90.00, 'double'),
(54, 43, 43, 90.00, 'double'),
(55, 44, 44, 90.00, 'double'),
(56, 45, 45, 90.00, 'double'),
(57, 46, 46, 90.00, 'double'),
(58, 47, 47, 90.00, 'double'),
(59, 48, 48, 90.00, 'double'),
(60, 49, 49, 90.00, 'double'),
(61, 50, 50, 90.00, 'double'),
(62, 51, 51, 90.00, 'double'),
(63, 52, 52, 90.00, 'double'),
(64, 53, 53, 90.00, 'double'),
(65, 54, 54, 90.00, 'double'),
(66, 55, 55, 90.00, 'double'),
(67, 56, 56, 90.00, 'double'),
(68, 57, 57, 90.00, 'double'),
(69, 58, 58, 90.00, 'double'),
(70, 59, 59, 90.00, 'double'),
(71, 60, 60, 90.00, 'double'),
(72, 61, 61, 90.00, 'double'),
(73, 62, 62, 90.00, 'double'),
(74, 63, 63, 90.00, 'double'),
(75, 64, 64, 90.00, 'double'),
(76, 65, 65, 90.00, 'double'),
(77, 66, 66, 90.00, 'double'),
(78, 67, 67, 90.00, 'double'),
(79, 68, 68, 90.00, 'double'),
(80, 69, 69, 90.00, 'double'),
(81, 70, 70, 90.00, 'double'),
(82, 71, 71, 90.00, 'double'),
(83, 72, 72, 90.00, 'double'),
(84, 73, 73, 90.00, 'double'),
(85, 74, 74, 90.00, 'double'),
(86, 75, 75, 90.00, 'double'),
(87, 76, 76, 90.00, 'double'),
(88, 77, 77, 90.00, 'double'),
(89, 78, 78, 90.00, 'double'),
(90, 79, 79, 90.00, 'double'),
(91, 80, 80, 90.00, 'double'),
(92, 81, 81, 90.00, 'double'),
(93, 82, 82, 90.00, 'double'),
(94, 83, 83, 90.00, 'double'),
(95, 84, 84, 90.00, 'double'),
(96, 85, 85, 90.00, 'double'),
(97, 86, 86, 90.00, 'double'),
(98, 87, 87, 90.00, 'double'),
(99, 88, 88, 90.00, 'double'),
(100, 89, 89, 90.00, 'double'),
(101, 90, 90, 90.00, 'double'),
(102, 91, 91, 90.00, 'double'),
(103, 92, 92, 90.00, 'double'),
(104, 93, 93, 90.00, 'double'),
(105, 94, 94, 90.00, 'double'),
(106, 95, 95, 90.00, 'double'),
(107, 96, 96, 90.00, 'double'),
(108, 97, 97, 90.00, 'double'),
(109, 98, 98, 90.00, 'double'),
(110, 99, 99, 90.00, 'double'),
(111, 0, 0, 900.00, 'triple'),
(112, 1, 1, 900.00, 'triple'),
(113, 2, 2, 900.00, 'triple'),
(114, 3, 3, 900.00, 'triple'),
(115, 4, 4, 900.00, 'triple'),
(116, 5, 5, 900.00, 'triple'),
(117, 6, 6, 900.00, 'triple'),
(118, 7, 7, 900.00, 'triple'),
(119, 8, 8, 900.00, 'triple'),
(120, 9, 9, 900.00, 'triple'),
(121, 10, 10, 900.00, 'triple'),
(122, 11, 11, 900.00, 'triple'),
(123, 12, 12, 900.00, 'triple'),
(124, 13, 13, 900.00, 'triple'),
(125, 14, 14, 900.00, 'triple'),
(126, 15, 15, 900.00, 'triple'),
(127, 16, 16, 900.00, 'triple'),
(128, 17, 17, 900.00, 'triple'),
(129, 18, 18, 900.00, 'triple'),
(130, 19, 19, 900.00, 'triple'),
(131, 20, 20, 900.00, 'triple'),
(132, 21, 21, 900.00, 'triple'),
(133, 22, 22, 900.00, 'triple'),
(134, 23, 23, 900.00, 'triple'),
(135, 24, 24, 900.00, 'triple'),
(136, 25, 25, 900.00, 'triple'),
(137, 26, 26, 900.00, 'triple'),
(138, 27, 27, 900.00, 'triple'),
(139, 28, 28, 900.00, 'triple'),
(140, 29, 29, 900.00, 'triple'),
(141, 30, 30, 900.00, 'triple'),
(142, 31, 31, 900.00, 'triple'),
(143, 32, 32, 900.00, 'triple'),
(144, 33, 33, 900.00, 'triple'),
(145, 34, 34, 900.00, 'triple'),
(146, 35, 35, 900.00, 'triple'),
(147, 36, 36, 900.00, 'triple'),
(148, 37, 37, 900.00, 'triple'),
(149, 38, 38, 900.00, 'triple'),
(150, 39, 39, 900.00, 'triple'),
(151, 40, 40, 900.00, 'triple'),
(152, 41, 41, 900.00, 'triple'),
(153, 42, 42, 900.00, 'triple'),
(154, 43, 43, 900.00, 'triple'),
(155, 44, 44, 900.00, 'triple'),
(156, 45, 45, 900.00, 'triple'),
(157, 46, 46, 900.00, 'triple'),
(158, 47, 47, 900.00, 'triple'),
(159, 48, 48, 900.00, 'triple'),
(160, 49, 49, 900.00, 'triple'),
(161, 50, 50, 900.00, 'triple'),
(162, 51, 51, 900.00, 'triple'),
(163, 52, 52, 900.00, 'triple'),
(164, 53, 53, 900.00, 'triple'),
(165, 54, 54, 900.00, 'triple'),
(166, 55, 55, 900.00, 'triple'),
(167, 56, 56, 900.00, 'triple'),
(168, 57, 57, 900.00, 'triple'),
(169, 58, 58, 900.00, 'triple'),
(170, 59, 59, 900.00, 'triple'),
(171, 60, 60, 900.00, 'triple'),
(172, 61, 61, 900.00, 'triple'),
(173, 62, 62, 900.00, 'triple'),
(174, 63, 63, 900.00, 'triple'),
(175, 64, 64, 900.00, 'triple'),
(176, 65, 65, 900.00, 'triple'),
(177, 66, 66, 900.00, 'triple'),
(178, 67, 67, 900.00, 'triple'),
(179, 68, 68, 900.00, 'triple'),
(180, 69, 69, 900.00, 'triple'),
(181, 70, 70, 900.00, 'triple'),
(182, 71, 71, 900.00, 'triple'),
(183, 72, 72, 900.00, 'triple'),
(184, 73, 73, 900.00, 'triple'),
(185, 74, 74, 900.00, 'triple'),
(186, 75, 75, 900.00, 'triple'),
(187, 76, 76, 900.00, 'triple'),
(188, 77, 77, 900.00, 'triple'),
(189, 78, 78, 900.00, 'triple'),
(190, 79, 79, 900.00, 'triple'),
(191, 80, 80, 900.00, 'triple'),
(192, 81, 81, 900.00, 'triple'),
(193, 82, 82, 900.00, 'triple'),
(194, 83, 83, 900.00, 'triple'),
(195, 84, 84, 900.00, 'triple'),
(196, 85, 85, 900.00, 'triple'),
(197, 86, 86, 900.00, 'triple'),
(198, 87, 87, 900.00, 'triple'),
(199, 88, 88, 900.00, 'triple'),
(200, 89, 89, 900.00, 'triple'),
(201, 90, 90, 900.00, 'triple'),
(202, 91, 91, 900.00, 'triple'),
(203, 92, 92, 900.00, 'triple'),
(204, 93, 93, 900.00, 'triple'),
(205, 94, 94, 900.00, 'triple'),
(206, 95, 95, 900.00, 'triple'),
(207, 96, 96, 900.00, 'triple'),
(208, 97, 97, 900.00, 'triple'),
(209, 98, 98, 900.00, 'triple'),
(210, 99, 99, 900.00, 'triple'),
(211, 100, 100, 900.00, 'triple'),
(212, 101, 101, 900.00, 'triple'),
(213, 102, 102, 900.00, 'triple'),
(214, 103, 103, 900.00, 'triple'),
(215, 104, 104, 900.00, 'triple'),
(216, 105, 105, 900.00, 'triple'),
(217, 106, 106, 900.00, 'triple'),
(218, 107, 107, 900.00, 'triple'),
(219, 108, 108, 900.00, 'triple'),
(220, 109, 109, 900.00, 'triple'),
(221, 110, 110, 900.00, 'triple'),
(222, 111, 111, 900.00, 'triple'),
(223, 112, 112, 900.00, 'triple'),
(224, 113, 113, 900.00, 'triple'),
(225, 114, 114, 900.00, 'triple'),
(226, 115, 115, 900.00, 'triple'),
(227, 116, 116, 900.00, 'triple'),
(228, 117, 117, 900.00, 'triple'),
(229, 118, 118, 900.00, 'triple'),
(230, 119, 119, 900.00, 'triple'),
(231, 120, 120, 900.00, 'triple'),
(232, 121, 121, 900.00, 'triple'),
(233, 122, 122, 900.00, 'triple'),
(234, 123, 123, 900.00, 'triple'),
(235, 124, 124, 900.00, 'triple'),
(236, 125, 125, 900.00, 'triple'),
(237, 126, 126, 900.00, 'triple'),
(238, 127, 127, 900.00, 'triple'),
(239, 128, 128, 900.00, 'triple'),
(240, 129, 129, 900.00, 'triple'),
(241, 130, 130, 900.00, 'triple'),
(242, 131, 131, 900.00, 'triple'),
(243, 132, 132, 900.00, 'triple'),
(244, 133, 133, 900.00, 'triple'),
(245, 134, 134, 900.00, 'triple'),
(246, 135, 135, 900.00, 'triple'),
(247, 136, 136, 900.00, 'triple'),
(248, 137, 137, 900.00, 'triple'),
(249, 138, 138, 900.00, 'triple'),
(250, 139, 139, 900.00, 'triple'),
(251, 140, 140, 900.00, 'triple'),
(252, 141, 141, 900.00, 'triple'),
(253, 142, 142, 900.00, 'triple'),
(254, 143, 143, 900.00, 'triple'),
(255, 144, 144, 900.00, 'triple'),
(256, 145, 145, 900.00, 'triple'),
(257, 146, 146, 900.00, 'triple'),
(258, 147, 147, 900.00, 'triple'),
(259, 148, 148, 900.00, 'triple'),
(260, 149, 149, 900.00, 'triple'),
(261, 150, 150, 900.00, 'triple'),
(262, 151, 151, 900.00, 'triple'),
(263, 152, 152, 900.00, 'triple'),
(264, 153, 153, 900.00, 'triple'),
(265, 154, 154, 900.00, 'triple'),
(266, 155, 155, 900.00, 'triple'),
(267, 156, 156, 900.00, 'triple'),
(268, 157, 157, 900.00, 'triple'),
(269, 158, 158, 900.00, 'triple'),
(270, 159, 159, 900.00, 'triple'),
(271, 160, 160, 900.00, 'triple'),
(272, 161, 161, 900.00, 'triple'),
(273, 162, 162, 900.00, 'triple'),
(274, 163, 163, 900.00, 'triple'),
(275, 164, 164, 900.00, 'triple'),
(276, 165, 165, 900.00, 'triple'),
(277, 166, 166, 900.00, 'triple'),
(278, 167, 167, 900.00, 'triple'),
(279, 168, 168, 900.00, 'triple'),
(280, 169, 169, 900.00, 'triple'),
(281, 170, 170, 900.00, 'triple'),
(282, 171, 171, 900.00, 'triple'),
(283, 172, 172, 900.00, 'triple'),
(284, 173, 173, 900.00, 'triple'),
(285, 174, 174, 900.00, 'triple'),
(286, 175, 175, 900.00, 'triple'),
(287, 176, 176, 900.00, 'triple'),
(288, 177, 177, 900.00, 'triple'),
(289, 178, 178, 900.00, 'triple'),
(290, 179, 179, 900.00, 'triple'),
(291, 180, 180, 900.00, 'triple'),
(292, 181, 181, 900.00, 'triple'),
(293, 182, 182, 900.00, 'triple'),
(294, 183, 183, 900.00, 'triple'),
(295, 184, 184, 900.00, 'triple'),
(296, 185, 185, 900.00, 'triple'),
(297, 186, 186, 900.00, 'triple'),
(298, 187, 187, 900.00, 'triple'),
(299, 188, 188, 900.00, 'triple'),
(300, 189, 189, 900.00, 'triple'),
(301, 190, 190, 900.00, 'triple'),
(302, 191, 191, 900.00, 'triple'),
(303, 192, 192, 900.00, 'triple'),
(304, 193, 193, 900.00, 'triple'),
(305, 194, 194, 900.00, 'triple'),
(306, 195, 195, 900.00, 'triple'),
(307, 196, 196, 900.00, 'triple'),
(308, 197, 197, 900.00, 'triple'),
(309, 198, 198, 900.00, 'triple'),
(310, 199, 199, 900.00, 'triple'),
(311, 200, 200, 900.00, 'triple'),
(312, 201, 201, 900.00, 'triple'),
(313, 202, 202, 900.00, 'triple'),
(314, 203, 203, 900.00, 'triple'),
(315, 204, 204, 900.00, 'triple'),
(316, 205, 205, 900.00, 'triple'),
(317, 206, 206, 900.00, 'triple'),
(318, 207, 207, 900.00, 'triple'),
(319, 208, 208, 900.00, 'triple'),
(320, 209, 209, 900.00, 'triple'),
(321, 210, 210, 900.00, 'triple'),
(322, 211, 211, 900.00, 'triple'),
(323, 212, 212, 900.00, 'triple'),
(324, 213, 213, 900.00, 'triple'),
(325, 214, 214, 900.00, 'triple'),
(326, 215, 215, 900.00, 'triple'),
(327, 216, 216, 900.00, 'triple'),
(328, 217, 217, 900.00, 'triple'),
(329, 218, 218, 900.00, 'triple'),
(330, 219, 219, 900.00, 'triple'),
(331, 220, 220, 900.00, 'triple'),
(332, 221, 221, 900.00, 'triple'),
(333, 222, 222, 900.00, 'triple'),
(334, 223, 223, 900.00, 'triple'),
(335, 224, 224, 900.00, 'triple'),
(336, 225, 225, 900.00, 'triple'),
(337, 226, 226, 900.00, 'triple'),
(338, 227, 227, 900.00, 'triple'),
(339, 228, 228, 900.00, 'triple'),
(340, 229, 229, 900.00, 'triple'),
(341, 230, 230, 900.00, 'triple'),
(342, 231, 231, 900.00, 'triple'),
(343, 232, 232, 900.00, 'triple'),
(344, 233, 233, 900.00, 'triple'),
(345, 234, 234, 900.00, 'triple'),
(346, 235, 235, 900.00, 'triple'),
(347, 236, 236, 900.00, 'triple'),
(348, 237, 237, 900.00, 'triple'),
(349, 238, 238, 900.00, 'triple'),
(350, 239, 239, 900.00, 'triple'),
(351, 240, 240, 900.00, 'triple'),
(352, 241, 241, 900.00, 'triple'),
(353, 242, 242, 900.00, 'triple'),
(354, 243, 243, 900.00, 'triple'),
(355, 244, 244, 900.00, 'triple'),
(356, 245, 245, 900.00, 'triple'),
(357, 246, 246, 900.00, 'triple'),
(358, 247, 247, 900.00, 'triple'),
(359, 248, 248, 900.00, 'triple'),
(360, 249, 249, 900.00, 'triple'),
(361, 250, 250, 900.00, 'triple'),
(362, 251, 251, 900.00, 'triple'),
(363, 252, 252, 900.00, 'triple'),
(364, 253, 253, 900.00, 'triple'),
(365, 254, 254, 900.00, 'triple'),
(366, 255, 255, 900.00, 'triple'),
(367, 256, 256, 900.00, 'triple'),
(368, 257, 257, 900.00, 'triple'),
(369, 258, 258, 900.00, 'triple'),
(370, 259, 259, 900.00, 'triple'),
(371, 260, 260, 900.00, 'triple'),
(372, 261, 261, 900.00, 'triple'),
(373, 262, 262, 900.00, 'triple'),
(374, 263, 263, 900.00, 'triple'),
(375, 264, 264, 900.00, 'triple'),
(376, 265, 265, 900.00, 'triple'),
(377, 266, 266, 900.00, 'triple'),
(378, 267, 267, 900.00, 'triple'),
(379, 268, 268, 900.00, 'triple'),
(380, 269, 269, 900.00, 'triple'),
(381, 270, 270, 900.00, 'triple'),
(382, 271, 271, 900.00, 'triple'),
(383, 272, 272, 900.00, 'triple'),
(384, 273, 273, 900.00, 'triple'),
(385, 274, 274, 900.00, 'triple'),
(386, 275, 275, 900.00, 'triple'),
(387, 276, 276, 900.00, 'triple'),
(388, 277, 277, 900.00, 'triple'),
(389, 278, 278, 900.00, 'triple'),
(390, 279, 279, 900.00, 'triple'),
(391, 280, 280, 900.00, 'triple'),
(392, 281, 281, 900.00, 'triple'),
(393, 282, 282, 900.00, 'triple'),
(394, 283, 283, 900.00, 'triple'),
(395, 284, 284, 900.00, 'triple'),
(396, 285, 285, 900.00, 'triple'),
(397, 286, 286, 900.00, 'triple'),
(398, 287, 287, 900.00, 'triple'),
(399, 288, 288, 900.00, 'triple'),
(400, 289, 289, 900.00, 'triple'),
(401, 290, 290, 900.00, 'triple'),
(402, 291, 291, 900.00, 'triple'),
(403, 292, 292, 900.00, 'triple'),
(404, 293, 293, 900.00, 'triple'),
(405, 294, 294, 900.00, 'triple'),
(406, 295, 295, 900.00, 'triple'),
(407, 296, 296, 900.00, 'triple'),
(408, 297, 297, 900.00, 'triple'),
(409, 298, 298, 900.00, 'triple'),
(410, 299, 299, 900.00, 'triple'),
(411, 300, 300, 900.00, 'triple'),
(412, 301, 301, 900.00, 'triple'),
(413, 302, 302, 900.00, 'triple'),
(414, 303, 303, 900.00, 'triple'),
(415, 304, 304, 900.00, 'triple'),
(416, 305, 305, 900.00, 'triple'),
(417, 306, 306, 900.00, 'triple'),
(418, 307, 307, 900.00, 'triple'),
(419, 308, 308, 900.00, 'triple'),
(420, 309, 309, 900.00, 'triple'),
(421, 310, 310, 900.00, 'triple'),
(422, 311, 311, 900.00, 'triple'),
(423, 312, 312, 900.00, 'triple'),
(424, 313, 313, 900.00, 'triple'),
(425, 314, 314, 900.00, 'triple'),
(426, 315, 315, 900.00, 'triple'),
(427, 316, 316, 900.00, 'triple'),
(428, 317, 317, 900.00, 'triple'),
(429, 318, 318, 900.00, 'triple'),
(430, 319, 319, 900.00, 'triple'),
(431, 320, 320, 900.00, 'triple'),
(432, 321, 321, 900.00, 'triple'),
(433, 322, 322, 900.00, 'triple'),
(434, 323, 323, 900.00, 'triple'),
(435, 324, 324, 900.00, 'triple'),
(436, 325, 325, 900.00, 'triple'),
(437, 326, 326, 900.00, 'triple'),
(438, 327, 327, 900.00, 'triple'),
(439, 328, 328, 900.00, 'triple'),
(440, 329, 329, 900.00, 'triple'),
(441, 330, 330, 900.00, 'triple'),
(442, 331, 331, 900.00, 'triple'),
(443, 332, 332, 900.00, 'triple'),
(444, 333, 333, 900.00, 'triple'),
(445, 334, 334, 900.00, 'triple'),
(446, 335, 335, 900.00, 'triple'),
(447, 336, 336, 900.00, 'triple'),
(448, 337, 337, 900.00, 'triple'),
(449, 338, 338, 900.00, 'triple'),
(450, 339, 339, 900.00, 'triple'),
(451, 340, 340, 900.00, 'triple'),
(452, 341, 341, 900.00, 'triple'),
(453, 342, 342, 900.00, 'triple'),
(454, 343, 343, 900.00, 'triple'),
(455, 344, 344, 900.00, 'triple'),
(456, 345, 345, 900.00, 'triple'),
(457, 346, 346, 900.00, 'triple'),
(458, 347, 347, 900.00, 'triple'),
(459, 348, 348, 900.00, 'triple'),
(460, 349, 349, 900.00, 'triple'),
(461, 350, 350, 900.00, 'triple'),
(462, 351, 351, 900.00, 'triple'),
(463, 352, 352, 900.00, 'triple'),
(464, 353, 353, 900.00, 'triple'),
(465, 354, 354, 900.00, 'triple'),
(466, 355, 355, 900.00, 'triple'),
(467, 356, 356, 900.00, 'triple'),
(468, 357, 357, 900.00, 'triple'),
(469, 358, 358, 900.00, 'triple'),
(470, 359, 359, 900.00, 'triple'),
(471, 360, 360, 900.00, 'triple'),
(472, 361, 361, 900.00, 'triple'),
(473, 362, 362, 900.00, 'triple'),
(474, 363, 363, 900.00, 'triple'),
(475, 364, 364, 900.00, 'triple'),
(476, 365, 365, 900.00, 'triple'),
(477, 366, 366, 900.00, 'triple'),
(478, 367, 367, 900.00, 'triple'),
(479, 368, 368, 900.00, 'triple'),
(480, 369, 369, 900.00, 'triple'),
(481, 370, 370, 900.00, 'triple'),
(482, 371, 371, 900.00, 'triple'),
(483, 372, 372, 900.00, 'triple'),
(484, 373, 373, 900.00, 'triple'),
(485, 374, 374, 900.00, 'triple'),
(486, 375, 375, 900.00, 'triple'),
(487, 376, 376, 900.00, 'triple'),
(488, 377, 377, 900.00, 'triple'),
(489, 378, 378, 900.00, 'triple'),
(490, 379, 379, 900.00, 'triple'),
(491, 380, 380, 900.00, 'triple'),
(492, 381, 381, 900.00, 'triple'),
(493, 382, 382, 900.00, 'triple'),
(494, 383, 383, 900.00, 'triple'),
(495, 384, 384, 900.00, 'triple'),
(496, 385, 385, 900.00, 'triple'),
(497, 386, 386, 900.00, 'triple'),
(498, 387, 387, 900.00, 'triple'),
(499, 388, 388, 900.00, 'triple'),
(500, 389, 389, 900.00, 'triple'),
(501, 390, 390, 900.00, 'triple'),
(502, 391, 391, 900.00, 'triple'),
(503, 392, 392, 900.00, 'triple'),
(504, 393, 393, 900.00, 'triple'),
(505, 394, 394, 900.00, 'triple'),
(506, 395, 395, 900.00, 'triple'),
(507, 396, 396, 900.00, 'triple'),
(508, 397, 397, 900.00, 'triple'),
(509, 398, 398, 900.00, 'triple'),
(510, 399, 399, 900.00, 'triple'),
(511, 400, 400, 900.00, 'triple'),
(512, 401, 401, 900.00, 'triple'),
(513, 402, 402, 900.00, 'triple'),
(514, 403, 403, 900.00, 'triple'),
(515, 404, 404, 900.00, 'triple'),
(516, 405, 405, 900.00, 'triple'),
(517, 406, 406, 900.00, 'triple'),
(518, 407, 407, 900.00, 'triple'),
(519, 408, 408, 900.00, 'triple'),
(520, 409, 409, 900.00, 'triple'),
(521, 410, 410, 900.00, 'triple'),
(522, 411, 411, 900.00, 'triple'),
(523, 412, 412, 900.00, 'triple'),
(524, 413, 413, 900.00, 'triple'),
(525, 414, 414, 900.00, 'triple'),
(526, 415, 415, 900.00, 'triple'),
(527, 416, 416, 900.00, 'triple'),
(528, 417, 417, 900.00, 'triple'),
(529, 418, 418, 900.00, 'triple'),
(530, 419, 419, 900.00, 'triple'),
(531, 420, 420, 900.00, 'triple'),
(532, 421, 421, 900.00, 'triple'),
(533, 422, 422, 900.00, 'triple'),
(534, 423, 423, 900.00, 'triple'),
(535, 424, 424, 900.00, 'triple'),
(536, 425, 425, 900.00, 'triple'),
(537, 426, 426, 900.00, 'triple'),
(538, 427, 427, 900.00, 'triple'),
(539, 428, 428, 900.00, 'triple'),
(540, 429, 429, 900.00, 'triple'),
(541, 430, 430, 900.00, 'triple'),
(542, 431, 431, 900.00, 'triple'),
(543, 432, 432, 900.00, 'triple'),
(544, 433, 433, 900.00, 'triple'),
(545, 434, 434, 900.00, 'triple'),
(546, 435, 435, 900.00, 'triple'),
(547, 436, 436, 900.00, 'triple'),
(548, 437, 437, 900.00, 'triple'),
(549, 438, 438, 900.00, 'triple'),
(550, 439, 439, 900.00, 'triple'),
(551, 440, 440, 900.00, 'triple'),
(552, 441, 441, 900.00, 'triple'),
(553, 442, 442, 900.00, 'triple'),
(554, 443, 443, 900.00, 'triple'),
(555, 444, 444, 900.00, 'triple'),
(556, 445, 445, 900.00, 'triple'),
(557, 446, 446, 900.00, 'triple'),
(558, 447, 447, 900.00, 'triple'),
(559, 448, 448, 900.00, 'triple'),
(560, 449, 449, 900.00, 'triple'),
(561, 450, 450, 900.00, 'triple'),
(562, 451, 451, 900.00, 'triple'),
(563, 452, 452, 900.00, 'triple'),
(564, 453, 453, 900.00, 'triple'),
(565, 454, 454, 900.00, 'triple'),
(566, 455, 455, 900.00, 'triple'),
(567, 456, 456, 900.00, 'triple'),
(568, 457, 457, 900.00, 'triple'),
(569, 458, 458, 900.00, 'triple'),
(570, 459, 459, 900.00, 'triple'),
(571, 460, 460, 900.00, 'triple'),
(572, 461, 461, 900.00, 'triple'),
(573, 462, 462, 900.00, 'triple'),
(574, 463, 463, 900.00, 'triple'),
(575, 464, 464, 900.00, 'triple'),
(576, 465, 465, 900.00, 'triple'),
(577, 466, 466, 900.00, 'triple'),
(578, 467, 467, 900.00, 'triple'),
(579, 468, 468, 900.00, 'triple'),
(580, 469, 469, 900.00, 'triple'),
(581, 470, 470, 900.00, 'triple'),
(582, 471, 471, 900.00, 'triple'),
(583, 472, 472, 900.00, 'triple'),
(584, 473, 473, 900.00, 'triple'),
(585, 474, 474, 900.00, 'triple'),
(586, 475, 475, 900.00, 'triple'),
(587, 476, 476, 900.00, 'triple'),
(588, 477, 477, 900.00, 'triple'),
(589, 478, 478, 900.00, 'triple'),
(590, 479, 479, 900.00, 'triple'),
(591, 480, 480, 900.00, 'triple'),
(592, 481, 481, 900.00, 'triple'),
(593, 482, 482, 900.00, 'triple'),
(594, 483, 483, 900.00, 'triple'),
(595, 484, 484, 900.00, 'triple'),
(596, 485, 485, 900.00, 'triple'),
(597, 486, 486, 900.00, 'triple'),
(598, 487, 487, 900.00, 'triple'),
(599, 488, 488, 900.00, 'triple'),
(600, 489, 489, 900.00, 'triple'),
(601, 490, 490, 900.00, 'triple'),
(602, 491, 491, 900.00, 'triple'),
(603, 492, 492, 900.00, 'triple'),
(604, 493, 493, 900.00, 'triple'),
(605, 494, 494, 900.00, 'triple'),
(606, 495, 495, 900.00, 'triple'),
(607, 496, 496, 900.00, 'triple'),
(608, 497, 497, 900.00, 'triple'),
(609, 498, 498, 900.00, 'triple'),
(610, 499, 499, 900.00, 'triple'),
(611, 500, 500, 900.00, 'triple'),
(612, 501, 501, 900.00, 'triple'),
(613, 502, 502, 900.00, 'triple'),
(614, 503, 503, 900.00, 'triple'),
(615, 504, 504, 900.00, 'triple'),
(616, 505, 505, 900.00, 'triple'),
(617, 506, 506, 900.00, 'triple'),
(618, 507, 507, 900.00, 'triple'),
(619, 508, 508, 900.00, 'triple'),
(620, 509, 509, 900.00, 'triple'),
(621, 510, 510, 900.00, 'triple'),
(622, 511, 511, 900.00, 'triple'),
(623, 512, 512, 900.00, 'triple'),
(624, 513, 513, 900.00, 'triple'),
(625, 514, 514, 900.00, 'triple'),
(626, 515, 515, 900.00, 'triple'),
(627, 516, 516, 900.00, 'triple'),
(628, 517, 517, 900.00, 'triple'),
(629, 518, 518, 900.00, 'triple'),
(630, 519, 519, 900.00, 'triple'),
(631, 520, 520, 900.00, 'triple'),
(632, 521, 521, 900.00, 'triple'),
(633, 522, 522, 900.00, 'triple'),
(634, 523, 523, 900.00, 'triple'),
(635, 524, 524, 900.00, 'triple'),
(636, 525, 525, 900.00, 'triple'),
(637, 526, 526, 900.00, 'triple'),
(638, 527, 527, 900.00, 'triple'),
(639, 528, 528, 900.00, 'triple'),
(640, 529, 529, 900.00, 'triple'),
(641, 530, 530, 900.00, 'triple'),
(642, 531, 531, 900.00, 'triple'),
(643, 532, 532, 900.00, 'triple'),
(644, 533, 533, 900.00, 'triple'),
(645, 534, 534, 900.00, 'triple'),
(646, 535, 535, 900.00, 'triple'),
(647, 536, 536, 900.00, 'triple'),
(648, 537, 537, 900.00, 'triple'),
(649, 538, 538, 900.00, 'triple'),
(650, 539, 539, 900.00, 'triple'),
(651, 540, 540, 900.00, 'triple'),
(652, 541, 541, 900.00, 'triple'),
(653, 542, 542, 900.00, 'triple'),
(654, 543, 543, 900.00, 'triple'),
(655, 544, 544, 900.00, 'triple'),
(656, 545, 545, 900.00, 'triple'),
(657, 546, 546, 900.00, 'triple'),
(658, 547, 547, 900.00, 'triple'),
(659, 548, 548, 900.00, 'triple'),
(660, 549, 549, 900.00, 'triple'),
(661, 550, 550, 900.00, 'triple'),
(662, 551, 551, 900.00, 'triple'),
(663, 552, 552, 900.00, 'triple'),
(664, 553, 553, 900.00, 'triple'),
(665, 554, 554, 900.00, 'triple'),
(666, 555, 555, 900.00, 'triple'),
(667, 556, 556, 900.00, 'triple'),
(668, 557, 557, 900.00, 'triple'),
(669, 558, 558, 900.00, 'triple'),
(670, 559, 559, 900.00, 'triple'),
(671, 560, 560, 900.00, 'triple'),
(672, 561, 561, 900.00, 'triple'),
(673, 562, 562, 900.00, 'triple'),
(674, 563, 563, 900.00, 'triple'),
(675, 564, 564, 900.00, 'triple'),
(676, 565, 565, 900.00, 'triple'),
(677, 566, 566, 900.00, 'triple'),
(678, 567, 567, 900.00, 'triple'),
(679, 568, 568, 900.00, 'triple'),
(680, 569, 569, 900.00, 'triple'),
(681, 570, 570, 900.00, 'triple'),
(682, 571, 571, 900.00, 'triple'),
(683, 572, 572, 900.00, 'triple'),
(684, 573, 573, 900.00, 'triple'),
(685, 574, 574, 900.00, 'triple'),
(686, 575, 575, 900.00, 'triple'),
(687, 576, 576, 900.00, 'triple'),
(688, 577, 577, 900.00, 'triple'),
(689, 578, 578, 900.00, 'triple'),
(690, 579, 579, 900.00, 'triple'),
(691, 580, 580, 900.00, 'triple'),
(692, 581, 581, 900.00, 'triple'),
(693, 582, 582, 900.00, 'triple'),
(694, 583, 583, 900.00, 'triple'),
(695, 584, 584, 900.00, 'triple'),
(696, 585, 585, 900.00, 'triple'),
(697, 586, 586, 900.00, 'triple'),
(698, 587, 587, 900.00, 'triple'),
(699, 588, 588, 900.00, 'triple'),
(700, 589, 589, 900.00, 'triple'),
(701, 590, 590, 900.00, 'triple'),
(702, 591, 591, 900.00, 'triple'),
(703, 592, 592, 900.00, 'triple'),
(704, 593, 593, 900.00, 'triple'),
(705, 594, 594, 900.00, 'triple'),
(706, 595, 595, 900.00, 'triple'),
(707, 596, 596, 900.00, 'triple'),
(708, 597, 597, 900.00, 'triple'),
(709, 598, 598, 900.00, 'triple'),
(710, 599, 599, 900.00, 'triple'),
(711, 600, 600, 900.00, 'triple'),
(712, 601, 601, 900.00, 'triple'),
(713, 602, 602, 900.00, 'triple'),
(714, 603, 603, 900.00, 'triple'),
(715, 604, 604, 900.00, 'triple'),
(716, 605, 605, 900.00, 'triple'),
(717, 606, 606, 900.00, 'triple'),
(718, 607, 607, 900.00, 'triple'),
(719, 608, 608, 900.00, 'triple'),
(720, 609, 609, 900.00, 'triple'),
(721, 610, 610, 900.00, 'triple'),
(722, 611, 611, 900.00, 'triple'),
(723, 612, 612, 900.00, 'triple'),
(724, 613, 613, 900.00, 'triple'),
(725, 614, 614, 900.00, 'triple'),
(726, 615, 615, 900.00, 'triple'),
(727, 616, 616, 900.00, 'triple'),
(728, 617, 617, 900.00, 'triple'),
(729, 618, 618, 900.00, 'triple'),
(730, 619, 619, 900.00, 'triple'),
(731, 620, 620, 900.00, 'triple'),
(732, 621, 621, 900.00, 'triple'),
(733, 622, 622, 900.00, 'triple'),
(734, 623, 623, 900.00, 'triple'),
(735, 624, 624, 900.00, 'triple'),
(736, 625, 625, 900.00, 'triple'),
(737, 626, 626, 900.00, 'triple'),
(738, 627, 627, 900.00, 'triple'),
(739, 628, 628, 900.00, 'triple'),
(740, 629, 629, 900.00, 'triple'),
(741, 630, 630, 900.00, 'triple'),
(742, 631, 631, 900.00, 'triple'),
(743, 632, 632, 900.00, 'triple'),
(744, 633, 633, 900.00, 'triple'),
(745, 634, 634, 900.00, 'triple'),
(746, 635, 635, 900.00, 'triple'),
(747, 636, 636, 900.00, 'triple'),
(748, 637, 637, 900.00, 'triple'),
(749, 638, 638, 900.00, 'triple'),
(750, 639, 639, 900.00, 'triple'),
(751, 640, 640, 900.00, 'triple'),
(752, 641, 641, 900.00, 'triple'),
(753, 642, 642, 900.00, 'triple'),
(754, 643, 643, 900.00, 'triple'),
(755, 644, 644, 900.00, 'triple'),
(756, 645, 645, 900.00, 'triple'),
(757, 646, 646, 900.00, 'triple'),
(758, 647, 647, 900.00, 'triple'),
(759, 648, 648, 900.00, 'triple'),
(760, 649, 649, 900.00, 'triple'),
(761, 650, 650, 900.00, 'triple'),
(762, 651, 651, 900.00, 'triple'),
(763, 652, 652, 900.00, 'triple'),
(764, 653, 653, 900.00, 'triple'),
(765, 654, 654, 900.00, 'triple'),
(766, 655, 655, 900.00, 'triple'),
(767, 656, 656, 900.00, 'triple'),
(768, 657, 657, 900.00, 'triple'),
(769, 658, 658, 900.00, 'triple'),
(770, 659, 659, 900.00, 'triple'),
(771, 660, 660, 900.00, 'triple'),
(772, 661, 661, 900.00, 'triple'),
(773, 662, 662, 900.00, 'triple'),
(774, 663, 663, 900.00, 'triple'),
(775, 664, 664, 900.00, 'triple'),
(776, 665, 665, 900.00, 'triple'),
(777, 666, 666, 900.00, 'triple'),
(778, 667, 667, 900.00, 'triple'),
(779, 668, 668, 900.00, 'triple'),
(780, 669, 669, 900.00, 'triple'),
(781, 670, 670, 900.00, 'triple'),
(782, 671, 671, 900.00, 'triple'),
(783, 672, 672, 900.00, 'triple'),
(784, 673, 673, 900.00, 'triple'),
(785, 674, 674, 900.00, 'triple'),
(786, 675, 675, 900.00, 'triple'),
(787, 676, 676, 900.00, 'triple'),
(788, 677, 677, 900.00, 'triple'),
(789, 678, 678, 900.00, 'triple'),
(790, 679, 679, 900.00, 'triple'),
(791, 680, 680, 900.00, 'triple'),
(792, 681, 681, 900.00, 'triple'),
(793, 682, 682, 900.00, 'triple'),
(794, 683, 683, 900.00, 'triple'),
(795, 684, 684, 900.00, 'triple'),
(796, 685, 685, 900.00, 'triple'),
(797, 686, 686, 900.00, 'triple'),
(798, 687, 687, 900.00, 'triple'),
(799, 688, 688, 900.00, 'triple'),
(800, 689, 689, 900.00, 'triple'),
(801, 690, 690, 900.00, 'triple'),
(802, 691, 691, 900.00, 'triple'),
(803, 692, 692, 900.00, 'triple'),
(804, 693, 693, 900.00, 'triple'),
(805, 694, 694, 900.00, 'triple'),
(806, 695, 695, 900.00, 'triple'),
(807, 696, 696, 900.00, 'triple'),
(808, 697, 697, 900.00, 'triple'),
(809, 698, 698, 900.00, 'triple'),
(810, 699, 699, 900.00, 'triple'),
(811, 700, 700, 900.00, 'triple'),
(812, 701, 701, 900.00, 'triple'),
(813, 702, 702, 900.00, 'triple'),
(814, 703, 703, 900.00, 'triple'),
(815, 704, 704, 900.00, 'triple'),
(816, 705, 705, 900.00, 'triple'),
(817, 706, 706, 900.00, 'triple'),
(818, 707, 707, 900.00, 'triple'),
(819, 708, 708, 900.00, 'triple'),
(820, 709, 709, 900.00, 'triple'),
(821, 710, 710, 900.00, 'triple'),
(822, 711, 711, 900.00, 'triple'),
(823, 712, 712, 900.00, 'triple'),
(824, 713, 713, 900.00, 'triple'),
(825, 714, 714, 900.00, 'triple'),
(826, 715, 715, 900.00, 'triple'),
(827, 716, 716, 900.00, 'triple'),
(828, 717, 717, 900.00, 'triple'),
(829, 718, 718, 900.00, 'triple'),
(830, 719, 719, 900.00, 'triple'),
(831, 720, 720, 900.00, 'triple'),
(832, 721, 721, 900.00, 'triple'),
(833, 722, 722, 900.00, 'triple'),
(834, 723, 723, 900.00, 'triple'),
(835, 724, 724, 900.00, 'triple'),
(836, 725, 725, 900.00, 'triple'),
(837, 726, 726, 900.00, 'triple'),
(838, 727, 727, 900.00, 'triple'),
(839, 728, 728, 900.00, 'triple'),
(840, 729, 729, 900.00, 'triple'),
(841, 730, 730, 900.00, 'triple'),
(842, 731, 731, 900.00, 'triple'),
(843, 732, 732, 900.00, 'triple'),
(844, 733, 733, 900.00, 'triple'),
(845, 734, 734, 900.00, 'triple'),
(846, 735, 735, 900.00, 'triple'),
(847, 736, 736, 900.00, 'triple'),
(848, 737, 737, 900.00, 'triple'),
(849, 738, 738, 900.00, 'triple'),
(850, 739, 739, 900.00, 'triple'),
(851, 740, 740, 900.00, 'triple'),
(852, 741, 741, 900.00, 'triple'),
(853, 742, 742, 900.00, 'triple'),
(854, 743, 743, 900.00, 'triple'),
(855, 744, 744, 900.00, 'triple'),
(856, 745, 745, 900.00, 'triple'),
(857, 746, 746, 900.00, 'triple'),
(858, 747, 747, 900.00, 'triple'),
(859, 748, 748, 900.00, 'triple'),
(860, 749, 749, 900.00, 'triple'),
(861, 750, 750, 900.00, 'triple'),
(862, 751, 751, 900.00, 'triple'),
(863, 752, 752, 900.00, 'triple'),
(864, 753, 753, 900.00, 'triple'),
(865, 754, 754, 900.00, 'triple'),
(866, 755, 755, 900.00, 'triple'),
(867, 756, 756, 900.00, 'triple'),
(868, 757, 757, 900.00, 'triple'),
(869, 758, 758, 900.00, 'triple'),
(870, 759, 759, 900.00, 'triple'),
(871, 760, 760, 900.00, 'triple'),
(872, 761, 761, 900.00, 'triple'),
(873, 762, 762, 900.00, 'triple'),
(874, 763, 763, 900.00, 'triple'),
(875, 764, 764, 900.00, 'triple'),
(876, 765, 765, 900.00, 'triple'),
(877, 766, 766, 900.00, 'triple'),
(878, 767, 767, 900.00, 'triple'),
(879, 768, 768, 900.00, 'triple'),
(880, 769, 769, 900.00, 'triple'),
(881, 770, 770, 900.00, 'triple'),
(882, 771, 771, 900.00, 'triple'),
(883, 772, 772, 900.00, 'triple'),
(884, 773, 773, 900.00, 'triple'),
(885, 774, 774, 900.00, 'triple'),
(886, 775, 775, 900.00, 'triple'),
(887, 776, 776, 900.00, 'triple'),
(888, 777, 777, 900.00, 'triple'),
(889, 778, 778, 900.00, 'triple'),
(890, 779, 779, 900.00, 'triple'),
(891, 780, 780, 900.00, 'triple'),
(892, 781, 781, 900.00, 'triple'),
(893, 782, 782, 900.00, 'triple'),
(894, 783, 783, 900.00, 'triple'),
(895, 784, 784, 900.00, 'triple'),
(896, 785, 785, 900.00, 'triple'),
(897, 786, 786, 900.00, 'triple'),
(898, 787, 787, 900.00, 'triple'),
(899, 788, 788, 900.00, 'triple'),
(900, 789, 789, 900.00, 'triple'),
(901, 790, 790, 900.00, 'triple'),
(902, 791, 791, 900.00, 'triple'),
(903, 792, 792, 900.00, 'triple'),
(904, 793, 793, 900.00, 'triple'),
(905, 794, 794, 900.00, 'triple'),
(906, 795, 795, 900.00, 'triple'),
(907, 796, 796, 900.00, 'triple'),
(908, 797, 797, 900.00, 'triple'),
(909, 798, 798, 900.00, 'triple'),
(910, 799, 799, 900.00, 'triple'),
(911, 800, 800, 900.00, 'triple'),
(912, 801, 801, 900.00, 'triple'),
(913, 802, 802, 900.00, 'triple'),
(914, 803, 803, 900.00, 'triple'),
(915, 804, 804, 900.00, 'triple'),
(916, 805, 805, 900.00, 'triple'),
(917, 806, 806, 900.00, 'triple'),
(918, 807, 807, 900.00, 'triple'),
(919, 808, 808, 900.00, 'triple'),
(920, 809, 809, 900.00, 'triple'),
(921, 810, 810, 900.00, 'triple'),
(922, 811, 811, 900.00, 'triple'),
(923, 812, 812, 900.00, 'triple'),
(924, 813, 813, 900.00, 'triple'),
(925, 814, 814, 900.00, 'triple'),
(926, 815, 815, 900.00, 'triple'),
(927, 816, 816, 900.00, 'triple'),
(928, 817, 817, 900.00, 'triple'),
(929, 818, 818, 900.00, 'triple'),
(930, 819, 819, 900.00, 'triple'),
(931, 820, 820, 900.00, 'triple'),
(932, 821, 821, 900.00, 'triple'),
(933, 822, 822, 900.00, 'triple'),
(934, 823, 823, 900.00, 'triple'),
(935, 824, 824, 900.00, 'triple'),
(936, 825, 825, 900.00, 'triple'),
(937, 826, 826, 900.00, 'triple'),
(938, 827, 827, 900.00, 'triple'),
(939, 828, 828, 900.00, 'triple'),
(940, 829, 829, 900.00, 'triple'),
(941, 830, 830, 900.00, 'triple'),
(942, 831, 831, 900.00, 'triple'),
(943, 832, 832, 900.00, 'triple'),
(944, 833, 833, 900.00, 'triple'),
(945, 834, 834, 900.00, 'triple'),
(946, 835, 835, 900.00, 'triple'),
(947, 836, 836, 900.00, 'triple'),
(948, 837, 837, 900.00, 'triple'),
(949, 838, 838, 900.00, 'triple'),
(950, 839, 839, 900.00, 'triple'),
(951, 840, 840, 900.00, 'triple'),
(952, 841, 841, 900.00, 'triple'),
(953, 842, 842, 900.00, 'triple'),
(954, 843, 843, 900.00, 'triple'),
(955, 844, 844, 900.00, 'triple'),
(956, 845, 845, 900.00, 'triple'),
(957, 846, 846, 900.00, 'triple'),
(958, 847, 847, 900.00, 'triple'),
(959, 848, 848, 900.00, 'triple'),
(960, 849, 849, 900.00, 'triple'),
(961, 850, 850, 900.00, 'triple'),
(962, 851, 851, 900.00, 'triple'),
(963, 852, 852, 900.00, 'triple'),
(964, 853, 853, 900.00, 'triple'),
(965, 854, 854, 900.00, 'triple'),
(966, 855, 855, 900.00, 'triple'),
(967, 856, 856, 900.00, 'triple'),
(968, 857, 857, 900.00, 'triple'),
(969, 858, 858, 900.00, 'triple'),
(970, 859, 859, 900.00, 'triple'),
(971, 860, 860, 900.00, 'triple'),
(972, 861, 861, 900.00, 'triple'),
(973, 862, 862, 900.00, 'triple'),
(974, 863, 863, 900.00, 'triple'),
(975, 864, 864, 900.00, 'triple'),
(976, 865, 865, 900.00, 'triple'),
(977, 866, 866, 900.00, 'triple'),
(978, 867, 867, 900.00, 'triple'),
(979, 868, 868, 900.00, 'triple'),
(980, 869, 869, 900.00, 'triple'),
(981, 870, 870, 900.00, 'triple'),
(982, 871, 871, 900.00, 'triple'),
(983, 872, 872, 900.00, 'triple'),
(984, 873, 873, 900.00, 'triple'),
(985, 874, 874, 900.00, 'triple'),
(986, 875, 875, 900.00, 'triple'),
(987, 876, 876, 900.00, 'triple'),
(988, 877, 877, 900.00, 'triple'),
(989, 878, 878, 900.00, 'triple'),
(990, 879, 879, 900.00, 'triple'),
(991, 880, 880, 900.00, 'triple'),
(992, 881, 881, 900.00, 'triple'),
(993, 882, 882, 900.00, 'triple'),
(994, 883, 883, 900.00, 'triple'),
(995, 884, 884, 900.00, 'triple'),
(996, 885, 885, 900.00, 'triple'),
(997, 886, 886, 900.00, 'triple'),
(998, 887, 887, 900.00, 'triple'),
(999, 888, 888, 900.00, 'triple'),
(1000, 889, 889, 900.00, 'triple'),
(1001, 890, 890, 900.00, 'triple'),
(1002, 891, 891, 900.00, 'triple'),
(1003, 892, 892, 900.00, 'triple'),
(1004, 893, 893, 900.00, 'triple'),
(1005, 894, 894, 900.00, 'triple'),
(1006, 895, 895, 900.00, 'triple'),
(1007, 896, 896, 900.00, 'triple'),
(1008, 897, 897, 900.00, 'triple'),
(1009, 898, 898, 900.00, 'triple'),
(1010, 899, 899, 900.00, 'triple'),
(1011, 900, 900, 900.00, 'triple'),
(1012, 901, 901, 900.00, 'triple'),
(1013, 902, 902, 900.00, 'triple'),
(1014, 903, 903, 900.00, 'triple'),
(1015, 904, 904, 900.00, 'triple'),
(1016, 905, 905, 900.00, 'triple'),
(1017, 906, 906, 900.00, 'triple'),
(1018, 907, 907, 900.00, 'triple'),
(1019, 908, 908, 900.00, 'triple'),
(1020, 909, 909, 900.00, 'triple'),
(1021, 910, 910, 900.00, 'triple'),
(1022, 911, 911, 900.00, 'triple'),
(1023, 912, 912, 900.00, 'triple'),
(1024, 913, 913, 900.00, 'triple'),
(1025, 914, 914, 900.00, 'triple'),
(1026, 915, 915, 900.00, 'triple'),
(1027, 916, 916, 900.00, 'triple'),
(1028, 917, 917, 900.00, 'triple'),
(1029, 918, 918, 900.00, 'triple'),
(1030, 919, 919, 900.00, 'triple'),
(1031, 920, 920, 900.00, 'triple'),
(1032, 921, 921, 900.00, 'triple'),
(1033, 922, 922, 900.00, 'triple'),
(1034, 923, 923, 900.00, 'triple'),
(1035, 924, 924, 900.00, 'triple'),
(1036, 925, 925, 900.00, 'triple'),
(1037, 926, 926, 900.00, 'triple'),
(1038, 927, 927, 900.00, 'triple'),
(1039, 928, 928, 900.00, 'triple'),
(1040, 929, 929, 900.00, 'triple'),
(1041, 930, 930, 900.00, 'triple'),
(1042, 931, 931, 900.00, 'triple'),
(1043, 932, 932, 900.00, 'triple'),
(1044, 933, 933, 900.00, 'triple'),
(1045, 934, 934, 900.00, 'triple'),
(1046, 935, 935, 900.00, 'triple'),
(1047, 936, 936, 900.00, 'triple'),
(1048, 937, 937, 900.00, 'triple'),
(1049, 938, 938, 900.00, 'triple'),
(1050, 939, 939, 900.00, 'triple'),
(1051, 940, 940, 900.00, 'triple'),
(1052, 941, 941, 900.00, 'triple'),
(1053, 942, 942, 900.00, 'triple'),
(1054, 943, 943, 900.00, 'triple'),
(1055, 944, 944, 900.00, 'triple'),
(1056, 945, 945, 900.00, 'triple'),
(1057, 946, 946, 900.00, 'triple'),
(1058, 947, 947, 900.00, 'triple'),
(1059, 948, 948, 900.00, 'triple'),
(1060, 949, 949, 900.00, 'triple'),
(1061, 950, 950, 900.00, 'triple'),
(1062, 951, 951, 900.00, 'triple'),
(1063, 952, 952, 900.00, 'triple'),
(1064, 953, 953, 900.00, 'triple'),
(1065, 954, 954, 900.00, 'triple'),
(1066, 955, 955, 900.00, 'triple'),
(1067, 956, 956, 900.00, 'triple'),
(1068, 957, 957, 900.00, 'triple'),
(1069, 958, 958, 900.00, 'triple'),
(1070, 959, 959, 900.00, 'triple'),
(1071, 960, 960, 900.00, 'triple'),
(1072, 961, 961, 900.00, 'triple'),
(1073, 962, 962, 900.00, 'triple'),
(1074, 963, 963, 900.00, 'triple'),
(1075, 964, 964, 900.00, 'triple'),
(1076, 965, 965, 900.00, 'triple'),
(1077, 966, 966, 900.00, 'triple'),
(1078, 967, 967, 900.00, 'triple'),
(1079, 968, 968, 900.00, 'triple'),
(1080, 969, 969, 900.00, 'triple'),
(1081, 970, 970, 900.00, 'triple'),
(1082, 971, 971, 900.00, 'triple'),
(1083, 972, 972, 900.00, 'triple'),
(1084, 973, 973, 900.00, 'triple'),
(1085, 974, 974, 900.00, 'triple'),
(1086, 975, 975, 900.00, 'triple'),
(1087, 976, 976, 900.00, 'triple'),
(1088, 977, 977, 900.00, 'triple'),
(1089, 978, 978, 900.00, 'triple'),
(1090, 979, 979, 900.00, 'triple'),
(1091, 980, 980, 900.00, 'triple'),
(1092, 981, 981, 900.00, 'triple'),
(1093, 982, 982, 900.00, 'triple'),
(1094, 983, 983, 900.00, 'triple'),
(1095, 984, 984, 900.00, 'triple'),
(1096, 985, 985, 900.00, 'triple'),
(1097, 986, 986, 900.00, 'triple'),
(1098, 987, 987, 900.00, 'triple'),
(1099, 988, 988, 900.00, 'triple'),
(1100, 989, 989, 900.00, 'triple'),
(1101, 990, 990, 900.00, 'triple'),
(1102, 991, 991, 900.00, 'triple'),
(1103, 992, 992, 900.00, 'triple'),
(1104, 993, 993, 900.00, 'triple'),
(1105, 994, 994, 900.00, 'triple'),
(1106, 995, 995, 900.00, 'triple'),
(1107, 996, 996, 900.00, 'triple'),
(1108, 997, 997, 900.00, 'triple'),
(1109, 998, 998, 900.00, 'triple'),
(1110, 999, 999, 900.00, 'triple');

-- --------------------------------------------------------

--
-- Table structure for table `triplechance_results`
--

CREATE TABLE `triplechance_results` (
  `id` int(11) NOT NULL,
  `games_no` bigint(20) DEFAULT NULL,
  `wheel1_index` int(1) NOT NULL,
  `wheel1_result` int(1) NOT NULL,
  `wheel2_index` int(1) NOT NULL,
  `wheel2_result` int(1) NOT NULL,
  `wheel3_index` int(1) NOT NULL,
  `wheel3_result` int(1) NOT NULL,
  `jackpot` double(8,2) NOT NULL DEFAULT 1.00,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `triplechance_wheel_index`
--

CREATE TABLE `triplechance_wheel_index` (
  `id` int(11) NOT NULL,
  `index` int(11) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `triplechance_wheel_index`
--

INSERT INTO `triplechance_wheel_index` (`id`, `index`, `value`) VALUES
(1, 0, 2),
(2, 1, 8),
(3, 2, 3),
(4, 3, 7),
(5, 4, 4),
(6, 5, 6),
(7, 6, 0),
(8, 7, 5),
(9, 8, 1),
(10, 9, 9);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usdt_qr`
--

CREATE TABLE `usdt_qr` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `qr_code` varchar(255) DEFAULT NULL,
  `wallet_address` varchar(64) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `usdt_qr`
--

INSERT INTO `usdt_qr` (`id`, `name`, `qr_code`, `wallet_address`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Manual Payment', 'https://root.king77.games/uploads/WhatsApp Image 2025-08-06 at 11.20.47 AM.jpeg', 'paytm.s193k4a@pty', 1, '2024-05-20 05:41:21', '2024-05-20 05:41:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(10) DEFAULT NULL,
  `u_id` varchar(10) DEFAULT NULL,
  `wallet` double(10,2) NOT NULL DEFAULT 0.00,
  `winning_wallet` double(10,2) NOT NULL DEFAULT 0.00,
  `withdraw_balance` double(10,2) NOT NULL DEFAULT 0.00,
  `country_code` varchar(10) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `password` varchar(24) DEFAULT NULL,
  `userimage` varchar(64) DEFAULT NULL,
  `referral_code` varchar(250) DEFAULT NULL,
  `referral_user_id` int(11) DEFAULT NULL,
  `third_party_wallet` double(10,2) NOT NULL DEFAULT 0.00,
  `commission` double(10,2) NOT NULL DEFAULT 0.00,
  `bonus` double(10,2) DEFAULT 0.00,
  `total_referral_bonus` double(10,2) NOT NULL DEFAULT 0.00,
  `turnover` double(10,2) NOT NULL DEFAULT 0.00,
  `today_turnover` double(10,2) NOT NULL DEFAULT 0.00,
  `totalbet` int(11) NOT NULL DEFAULT 0,
  `first_recharge` int(11) NOT NULL DEFAULT 0 COMMENT '0= first rechage pending,1=first recharge success',
  `salary_first_recharge` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `first_recharge_amount` double(10,2) DEFAULT NULL,
  `recharge` double(10,2) NOT NULL DEFAULT 0.00,
  `verification` int(11) NOT NULL DEFAULT 0,
  `role_id` int(11) NOT NULL DEFAULT 0,
  `dob` date DEFAULT NULL,
  `bonus_wallet` double(10,2) NOT NULL DEFAULT 0.00,
  `total_payin` double(10,2) DEFAULT 0.00,
  `total_payout` double(10,2) DEFAULT 0.00,
  `no_of_payin` int(11) DEFAULT 0,
  `no_of_payout` int(11) DEFAULT 0,
  `yesterday_payin` double(10,2) DEFAULT 0.00,
  `yesterday_register` int(11) DEFAULT 0,
  `yesterday_no_of_payin` int(11) DEFAULT 0,
  `yesterday_first_deposit` double(10,2) DEFAULT 0.00,
  `yesterday_total_commission` double(10,2) NOT NULL DEFAULT 0.00,
  `deposit_balance` double(10,2) NOT NULL DEFAULT 0.00,
  `win_loss` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=Active ,0=Inactive',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `login_token` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `u_id`, `wallet`, `winning_wallet`, `withdraw_balance`, `country_code`, `mobile`, `email`, `password`, `userimage`, `referral_code`, `referral_user_id`, `third_party_wallet`, `commission`, `bonus`, `total_referral_bonus`, `turnover`, `today_turnover`, `totalbet`, `first_recharge`, `salary_first_recharge`, `first_recharge_amount`, `recharge`, `verification`, `role_id`, `dob`, `bonus_wallet`, `total_payin`, `total_payout`, `no_of_payin`, `no_of_payout`, `yesterday_payin`, `yesterday_register`, `yesterday_no_of_payin`, `yesterday_first_deposit`, `yesterday_total_commission`, `deposit_balance`, `win_loss`, `status`, `created_at`, `updated_at`, `login_token`) VALUES
(1, 'Admin', '23SDFHH', 1415.93, 7464.46, 0.00, '+91', '1234567890', 'admin@gmail.com', '12345678', 'https://root.king77.games/uploads/profileimage/5.png', 'SWDEFD', 0, 0.00, 2153.77, 50.00, 0.00, 0.00, 16459.80, 0, 1, 1, NULL, 33.00, 2, 1, NULL, 0.00, NULL, 0.00, 12, 0, NULL, 4, 41, 1585.00, 33.00, 120986.00, 0, 1, '2025-08-06 15:51:31', '2025-08-14 13:57:47', 'fp2ja7qo84lv6kplxu5fg'),
(2, 'User_X6O8H', 'RZAY5352', 730.36, -1256.00, 0.00, '+91', '9140183315', NULL, '1234', 'https://root.king77.games/uploads/profileimage/4.png', 'ZUPUMARWK', 1, 0.00, 0.00, 0.00, 0.00, 0.00, 817.20, 0, 1, 1, NULL, 0.00, 0, 0, NULL, 0.00, 7682.00, 0.00, 11, 0, 0.00, 0, 0, 0.00, 0.00, 7682.00, 0, 1, '2025-07-30 09:39:05', '2025-08-14 13:57:47', 'ug81qtory5nts4880sz5yr'),
(3, 'User_AVLEQ', 'DZTD6726', 990003.00, 22.00, 0.00, '+91', '7570006440', NULL, '12345', 'https://root.king77.games/uploads/profileimage/3.png', 'ZUPMZNI8T', 1, 0.00, 11.00, 0.00, 0.00, 0.00, 12215.00, 0, 0, 1, NULL, 11.00, 0, 0, NULL, 0.00, 0.00, 0.00, 0, 0, 3526.00, 0, 12, 1009.00, 11.00, 0.00, 0, 1, '2025-08-05 17:47:35', '2025-08-14 13:57:47', '0f7siqldsv979y996x3k4wk'),
(4, 'User_DMOGZ', 'UGGL4740', 67100.87, 102527.60, 0.00, '+91', '9098239947', NULL, '1234', 'https://root.king77.games/uploads/profileimage/2.png', 'ZUPCEWJ2Y', 1, 0.00, 0.00, 0.00, 0.00, 0.00, 52960.20, 0, 1, 1, NULL, 110.00, 0, 0, NULL, 0.00, 100300.00, 0.00, 1, 0, 0.00, 0, 0, 0.00, 0.00, 100300.00, 0, 1, '2025-07-30 16:52:43', '2025-08-14 13:57:47', 'cuxqbgb4m39bnixons9dg'),
(6, 'User_3TQAV', 'YNMF3925', 0.00, 0.00, 0.00, '+91', '8090145106', NULL, '12345', 'https://root.king77.games/uploads/profileimage/6.png', 'ZUP7K6LBG', 5, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 1, NULL, 0.00, 0, 0, NULL, 0.00, 0.00, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0.00, 0.00, 0, 1, '2025-07-31 10:41:14', '2025-08-14 13:57:47', '0p9ogvmtzzb2nvltr15toe'),
(7, 'User_KIVJX', 'HVZM7480', 557.02, 31.60, 0.00, '+91', '9197591129', NULL, '12345', 'https://root.king77.games/uploads/profileimage/7.png', 'ZUPLWIXGX', 5, 0.00, 0.00, 0.00, 0.00, 0.00, 60.10, 0, 1, 1, NULL, 2800.00, 0, 0, NULL, 0.00, 500.00, 0.00, 2, 0, 0.00, 0, 0, 0.00, 0.00, 500.00, 0, 1, '2025-07-31 10:44:56', '2025-08-14 13:57:47', '7itxly1kmkpedsymq1jh7t'),
(8, 'User_DSMZU', 'JCYZ0783', 892.06, 22.00, 0.00, '+91', '7800302707', NULL, '12345', 'https://root.king77.games/uploads/profileimage/1.png', 'ZUPXRYBP2', 3, 0.00, 0.00, 0.00, 0.00, 0.00, 320.00, 0, 1, 1, NULL, 0.00, 0, 0, NULL, 0.00, 500.00, 0.00, 1, 0, 0.00, 0, 0, 0.00, 0.00, 500.00, 0, 1, '2025-08-04 15:29:02', '2025-08-14 13:57:47', 's9fbl0t65ug0mxcu7vjg8fb'),
(826, 'User_VDLGK', 'IGDC5474', 7092032.60, 987000.00, 0.00, '+91', '7070804988', NULL, '1234', 'https://root.globalbet24.live/uploads/profileimage/1.png', 'ZUPPPQ11E', 1, 0.00, 0.00, 0.00, 0.00, 0.00, 5477530.00, 0, 0, 1, NULL, 0.00, 0, 0, NULL, 0.00, 10200000.00, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0.00, 10200000.00, 0, 1, '2025-08-07 10:46:37', '2025-08-14 13:57:47', 'dg0283wx9t9sp4bujytrto'),
(827, 'User_9KQ3M', 'TWPS5257', 849698.42, 11870.00, 0.00, '+91', '8956439506', NULL, '1234', 'https://root.king77.games/uploads/profileimage/1.png', 'ZUPKV1FQH', 1, 0.00, 0.00, 0.00, 0.00, 0.00, 51600.00, 0, 0, 1, NULL, 0.00, 0, 0, NULL, 0.00, 1000000.00, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0.00, 1000000.00, 0, 1, '2025-08-12 17:13:45', '2025-08-14 13:57:47', 'da67924xsrnc31rijj6r8'),
(828, 'User_0HQYE', 'UQKJ0363', 75100.00, 0.00, 0.00, '+91', '7219503749', NULL, '1234', 'https://root.king77.games/uploads/profileimage/1.png', 'ZUPYLHOOE', 1, 0.00, 0.00, 0.00, 0.00, 0.00, 62000.00, 0, 0, 1, NULL, 0.00, 0, 0, NULL, 0.00, 100000.00, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0.00, 100000.00, 0, 1, '2025-08-12 17:15:42', '2025-08-14 13:57:47', 'nk2qpquqzaize0fywkutq'),
(829, 'User_QGXUU', 'NWLT4579', 105840.00, 6840.00, 0.00, '+91', '8968693734', NULL, '1234', 'https://root.king77.games/uploads/profileimage/1.png', 'ZUPKSHTJJ', 1, 0.00, 0.00, 0.00, 0.00, 0.00, 54000.00, 0, 0, 1, NULL, 0.00, 0, 0, NULL, 0.00, 100000.00, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0.00, 100000.00, 0, 1, '2025-08-12 17:18:44', '2025-08-14 13:57:47', '79eg6hd22afbyjsalh582w'),
(830, 'User_KWGIG', 'YRVQ0593', 101910.00, 3910.00, 0.00, '+91', '8196802445', NULL, '1234', 'https://root.king77.games/uploads/profileimage/1.png', 'ZUPQJVEQE', 1, 0.00, 0.00, 0.00, 0.00, 0.00, 55000.00, 0, 0, 1, NULL, 0.00, 0, 0, NULL, 0.00, 100000.00, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0.00, 100000.00, 0, 1, '2025-08-12 17:20:29', '2025-08-14 13:57:47', 'vu4pv7juzp4xo6lr376r');

-- --------------------------------------------------------

--
-- Table structure for table `versions`
--

CREATE TABLE `versions` (
  `id` int(11) NOT NULL,
  `version` varchar(100) DEFAULT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `versions`
--

INSERT INTO `versions` (`id`, `version`, `link`) VALUES
(1, '1.0.0', 'https://root.globalbet24.live/globalbet.apk');

-- --------------------------------------------------------

--
-- Table structure for table `vip_levels`
--

CREATE TABLE `vip_levels` (
  `id` int(11) NOT NULL,
  `name` varchar(28) NOT NULL,
  `betting_range` varchar(64) NOT NULL,
  `deposit_range` varchar(64) NOT NULL,
  `level_up_rewards` int(11) NOT NULL,
  `monthly_rewards` int(11) NOT NULL,
  `rebate_rate` double(10,2) NOT NULL,
  `safe_income` float NOT NULL,
  `my_exprience` int(11) NOT NULL DEFAULT 0,
  `days_count` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vip_levels`
--

INSERT INTO `vip_levels` (`id`, `name`, `betting_range`, `deposit_range`, `level_up_rewards`, `monthly_rewards`, `rebate_rate`, `safe_income`, `my_exprience`, `days_count`, `status`, `created_at`, `updated_at`) VALUES
(1, 'vip 1', '5000', '5000', 20, 38, 0.06, 0.2, 0, 1, 0, '2025-08-04 04:04:00', '2024-06-20 06:53:55'),
(2, 'vip 2', '10000', '10000', 25, 88, 0.06, 0.2, 0, 2, 0, '2025-08-04 04:04:04', '2024-06-20 06:55:48'),
(3, 'vip 3', '20000', '20000', 50, 188, 0.06, 0.25, 0, 3, 0, '2025-08-04 04:04:07', '2024-06-20 07:06:09'),
(4, 'vip 4', '50000', '30000', 100, 388, 0.65, 0.25, 0, 3, 0, '2025-08-04 04:04:10', '2024-06-20 07:06:09'),
(5, 'vip 5', '100000', '100000', 200, 588, 0.65, 0.3, 0, 3, 0, '2025-08-04 04:04:13', '2024-06-20 07:16:24'),
(6, 'vip 6', '200000', '200000', 300, 888, 0.65, 0.3, 0, 4, 0, '2025-08-04 04:04:19', '2024-06-20 07:16:24'),
(7, 'vip 7', '500000', '500000', 1000, 1888, 0.07, 0.325, 0, 5, 0, '2025-08-04 04:04:23', '2024-06-20 07:16:24'),
(8, 'vip 8', '1000000', '1000000', 2000, 3888, 0.07, 0.35, 0, 10, 0, '2025-08-04 04:04:28', '2024-06-20 07:16:24'),
(9, 'vip 9', '2000000', '2000000', 3000, 8888, 0.07, 0.35, 0, 10, 0, '2025-08-04 04:04:31', '2024-06-20 07:26:37'),
(10, 'vip 10', '5000000', '5000000', 10000, 28888, 0.08, 0.4, 0, 10, 0, '2025-08-04 04:04:37', '2024-06-20 07:26:37'),
(11, 'vip 11', '10000000', '10000000', 20000, 58888, 0.08, 0.4, 0, 10, 0, '2025-08-04 04:08:53', '2024-06-20 07:26:37'),
(12, 'vip 12', '20000000', '20000000', 30000, 88888, 0.08, 0.4, 0, 10, 0, '2025-08-04 04:08:56', '2024-06-20 07:26:37');

-- --------------------------------------------------------

--
-- Table structure for table `vip_levels_claim`
--

CREATE TABLE `vip_levels_claim` (
  `id` int(11) NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `vip_levels_id` int(10) UNSIGNED NOT NULL,
  `exp` varchar(32) DEFAULT '100',
  `status` tinyint(4) NOT NULL,
  `level_up_status` tinyint(4) NOT NULL DEFAULT 0,
  `monthly_rewards_status` tinyint(4) NOT NULL DEFAULT 0,
  `rebate_rate_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virtual_games`
--

CREATE TABLE `virtual_games` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `actual_number` int(11) NOT NULL,
  `game_id` bigint(20) UNSIGNED NOT NULL,
  `multiplier` decimal(10,2) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtual_games`
--

INSERT INTO `virtual_games` (`id`, `name`, `number`, `actual_number`, `game_id`, `multiplier`, `type`, `created_at`, `updated_at`) VALUES
(51, '0', 0, 0, 1, 9.00, '0', '2024-04-01 10:13:48', '2024-04-01 10:13:48'),
(52, '1', 1, 1, 1, 9.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(53, '2', 2, 2, 1, 9.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(54, '3', 3, 3, 1, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(55, '4', 4, 4, 1, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(56, '5', 5, 5, 1, 9.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(57, '6', 6, 6, 1, 9.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(58, '7', 7, 7, 1, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(59, '8', 8, 8, 1, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(60, '9', 9, 9, 1, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(61, 'Small', 50, 0, 1, 2.00, '0', '2024-04-01 10:13:48', '2024-04-01 10:13:48'),
(62, 'Small', 50, 1, 1, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(63, 'Small', 50, 2, 1, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(64, 'Small', 50, 3, 1, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(65, 'Small', 50, 4, 1, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(66, 'Big', 40, 5, 1, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(67, 'Big', 40, 6, 1, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(68, 'Big', 40, 7, 1, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(69, 'Big', 40, 8, 1, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(70, 'Big', 40, 9, 1, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(72, 'Green', 10, 1, 1, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(73, 'Red', 30, 2, 1, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(74, 'Green', 10, 3, 1, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(75, 'Red', 30, 4, 1, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(77, 'Red', 30, 6, 1, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(78, 'Green', 10, 7, 1, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(79, 'Red', 30, 8, 1, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(80, 'Green', 10, 9, 1, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(81, 'Voilet', 20, 0, 1, 5.00, '0', '2024-04-01 10:13:48', '2024-04-01 10:13:48'),
(82, 'Voilet', 20, 1, 1, 1.50, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(83, 'Voilet', 20, 2, 1, 1.50, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(84, 'Voilet', 20, 3, 1, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(85, 'Voilet', 20, 4, 1, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(86, 'Voilet', 20, 5, 1, 5.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(87, 'Voilet', 20, 6, 1, 1.50, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(88, 'Voilet', 20, 7, 1, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(89, 'Voilet', 20, 8, 1, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(90, 'Voilet', 20, 9, 1, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(91, 'Green', 10, 5, 1, 1.50, '1', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(92, 'Red', 30, 0, 1, 1.50, '1', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(93, '0', 0, 0, 2, 9.00, '0', '2024-04-01 10:13:48', '2024-04-01 10:13:48'),
(94, '1', 1, 1, 2, 9.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(95, '2', 2, 2, 2, 9.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(96, '3', 3, 3, 2, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(97, '4', 4, 4, 2, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(98, '5', 5, 5, 2, 9.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(99, '6', 6, 6, 2, 9.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(100, '7', 7, 7, 2, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(101, '8', 8, 8, 2, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(102, '9', 9, 9, 2, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(103, 'Small', 50, 0, 2, 2.00, '0', '2024-04-01 10:13:48', '2024-04-01 10:13:48'),
(104, 'Small', 50, 1, 2, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(105, 'Small', 50, 2, 2, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(106, 'Small', 50, 3, 2, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(107, 'Small', 50, 4, 2, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(108, 'Big', 40, 5, 2, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(109, 'Big', 40, 6, 2, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(110, 'Big', 40, 7, 2, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(111, 'Big', 40, 8, 2, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(112, 'Big', 40, 9, 2, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(113, 'Green', 10, 1, 2, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(114, 'Red', 30, 2, 2, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(115, 'Green', 10, 3, 2, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(116, 'Red', 30, 4, 2, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(117, 'Red', 30, 6, 2, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(118, 'Green', 10, 7, 2, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(119, 'Red', 30, 8, 2, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(120, 'Green', 10, 9, 2, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(121, 'Voilet', 20, 0, 2, 5.00, '0', '2024-04-01 10:13:48', '2024-04-01 10:13:48'),
(122, 'Voilet', 20, 1, 2, 1.50, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(123, 'Voilet', 20, 2, 2, 1.50, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(124, 'Voilet', 20, 3, 2, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(125, 'Voilet', 20, 4, 2, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(126, 'Voilet', 20, 5, 2, 5.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(127, 'Voilet', 20, 6, 2, 1.50, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(128, 'Voilet', 20, 7, 2, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(129, 'Voilet', 20, 8, 2, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(130, 'Voilet', 20, 9, 2, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(131, 'Green', 10, 5, 2, 1.50, '1', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(132, 'Red', 30, 0, 2, 1.50, '1', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(133, '0', 0, 0, 3, 9.00, '0', '2024-04-01 10:13:48', '2024-04-01 10:13:48'),
(134, '1', 1, 1, 3, 9.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(135, '2', 2, 2, 3, 9.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(136, '3', 3, 3, 3, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(137, '4', 4, 4, 3, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(138, '5', 5, 5, 3, 9.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(139, '6', 6, 6, 3, 9.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(140, '7', 7, 7, 3, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(141, '8', 8, 8, 3, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(142, '9', 9, 9, 3, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(143, 'Small', 50, 0, 3, 2.00, '0', '2024-04-01 10:13:48', '2024-04-01 10:13:48'),
(144, 'Small', 50, 1, 3, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(145, 'Small', 50, 2, 3, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(146, 'Small', 50, 3, 3, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(147, 'Small', 50, 4, 3, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(148, 'Big', 40, 5, 3, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(149, 'Big', 40, 6, 3, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(150, 'Big', 40, 7, 3, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(151, 'Big', 40, 8, 3, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(152, 'Big', 40, 9, 3, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(153, 'Green', 10, 1, 3, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(154, 'Red', 30, 2, 3, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(155, 'Green', 10, 3, 3, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(156, 'Red', 30, 4, 3, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(157, 'Red', 30, 6, 3, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(158, 'Green', 10, 7, 3, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(159, 'Red', 30, 8, 3, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(160, 'Green', 10, 9, 3, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(161, 'Voilet', 20, 0, 3, 5.00, '0', '2024-04-01 10:13:48', '2024-04-01 10:13:48'),
(162, 'Voilet', 20, 1, 3, 1.50, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(163, 'Voilet', 20, 2, 3, 1.50, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(164, 'Voilet', 20, 3, 3, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(165, 'Voilet', 20, 4, 3, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(166, 'Voilet', 20, 5, 3, 5.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(167, 'Voilet', 20, 6, 3, 1.50, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(168, 'Voilet', 20, 7, 3, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(169, 'Voilet', 20, 8, 3, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(170, 'Voilet', 20, 9, 3, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(171, 'Green', 10, 5, 3, 1.50, '1', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(172, 'Red', 30, 0, 3, 1.50, '1', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1293, '0', 0, 0, 4, 9.00, '0', '2024-04-01 10:13:48', '2024-04-01 10:13:48'),
(1294, '1', 1, 1, 4, 9.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1295, '2', 2, 2, 4, 9.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1296, '3', 3, 3, 4, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1297, '4', 4, 4, 4, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1298, '5', 5, 5, 4, 9.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1299, '6', 6, 6, 4, 9.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1300, '7', 7, 7, 4, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1301, '8', 8, 8, 4, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1302, '9', 9, 9, 4, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1303, 'Small', 50, 0, 4, 2.00, '0', '2024-04-01 10:13:48', '2024-04-01 10:13:48'),
(1304, 'Small', 50, 1, 4, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1305, 'Small', 50, 2, 4, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1306, 'Small', 50, 3, 4, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1307, 'Small', 50, 4, 4, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1308, 'Big', 40, 5, 4, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1309, 'Big', 40, 6, 4, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1310, 'Big', 40, 7, 4, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1311, 'Big', 40, 8, 4, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1312, 'Big', 40, 9, 4, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1313, 'Green', 10, 1, 4, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1314, 'Red', 30, 2, 4, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1315, 'Green', 10, 3, 4, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1316, 'Red', 30, 4, 4, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1317, 'Red', 30, 6, 4, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1318, 'Green', 10, 7, 4, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1319, 'Red', 30, 8, 4, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1320, 'Green', 10, 9, 4, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1321, 'Voilet', 20, 0, 4, 5.00, '0', '2024-04-01 10:13:48', '2024-04-01 10:13:48'),
(1322, 'Voilet', 20, 1, 4, 1.50, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1323, 'Voilet', 20, 2, 4, 1.50, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1324, 'Voilet', 20, 3, 4, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1325, 'Voilet', 20, 4, 4, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1326, 'Voilet', 20, 5, 4, 5.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1327, 'Voilet', 20, 6, 4, 1.50, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1328, 'Voilet', 20, 7, 4, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1329, 'Voilet', 20, 8, 4, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1330, 'Voilet', 20, 9, 4, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1331, 'Green', 10, 5, 4, 1.50, '1', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1332, 'Red', 30, 0, 4, 1.50, '1', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1334, '0', 0, 0, 6, 9.00, '0', '2024-04-01 10:13:48', '2024-04-01 10:13:48'),
(1335, '1', 1, 1, 6, 9.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1336, '2', 2, 2, 6, 9.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1337, '3', 3, 3, 6, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1338, '4', 4, 4, 6, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1339, '5', 5, 5, 6, 9.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1340, '6', 6, 6, 6, 9.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1341, '7', 7, 7, 6, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1342, '8', 8, 8, 6, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1343, '9', 9, 9, 6, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1344, 'Small', 50, 0, 6, 2.00, '0', '2024-04-01 10:13:48', '2024-04-01 10:13:48'),
(1345, 'Small', 50, 1, 6, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1346, 'Small', 50, 2, 6, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1347, 'Small', 50, 3, 6, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1348, 'Small', 50, 4, 6, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1349, 'Big', 40, 5, 6, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1350, 'Big', 40, 6, 6, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1351, 'Big', 40, 7, 6, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1352, 'Big', 40, 8, 6, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1353, 'Big', 40, 9, 6, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1354, 'Green', 10, 1, 6, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1355, 'Red', 30, 2, 6, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1356, 'Green', 10, 3, 6, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1357, 'Red', 30, 4, 6, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1358, 'Red', 30, 6, 6, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1359, 'Green', 10, 7, 6, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1360, 'Red', 30, 8, 6, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1361, 'Green', 10, 9, 6, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1362, 'Voilet', 20, 0, 6, 5.00, '0', '2024-04-01 10:13:48', '2024-04-01 10:13:48'),
(1363, 'Voilet', 20, 1, 6, 1.50, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1364, 'Voilet', 20, 2, 6, 1.50, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1365, 'Voilet', 20, 3, 6, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1366, 'Voilet', 20, 4, 6, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1367, 'Voilet', 20, 5, 6, 5.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1368, 'Voilet', 20, 6, 6, 1.50, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1369, 'Voilet', 20, 7, 6, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1370, 'Voilet', 20, 8, 6, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1371, 'Voilet', 20, 9, 6, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1372, 'Green', 10, 5, 6, 1.50, '1', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1373, 'Red', 30, 0, 6, 1.50, '1', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1374, '0', 0, 0, 7, 9.00, '0', '2024-04-01 10:13:48', '2024-04-01 10:13:48'),
(1375, '1', 1, 1, 7, 9.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1376, '2', 2, 2, 7, 9.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1377, '3', 3, 3, 7, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1378, '4', 4, 4, 7, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1379, '5', 5, 5, 7, 9.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1380, '6', 6, 6, 7, 9.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1381, '7', 7, 7, 7, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1382, '8', 8, 8, 7, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1383, '9', 9, 9, 7, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1384, 'Small', 50, 0, 7, 2.00, '0', '2024-04-01 10:13:48', '2024-04-01 10:13:48'),
(1385, 'Small', 50, 1, 7, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1386, 'Small', 50, 2, 7, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:06:00'),
(1387, 'Small', 50, 3, 7, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1388, 'Small', 50, 4, 7, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1389, 'Big', 40, 5, 7, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1390, 'Big', 40, 6, 7, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1391, 'Big', 40, 7, 7, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1392, 'Big', 40, 8, 7, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1393, 'Big', 40, 9, 7, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1394, 'Green', 10, 1, 7, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1395, 'Red', 30, 2, 7, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1396, 'Green', 10, 3, 7, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1397, 'Red', 30, 4, 7, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1398, 'Red', 30, 6, 7, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1399, 'Green', 10, 7, 7, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1400, 'Red', 30, 8, 7, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1401, 'Green', 10, 9, 7, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1402, 'Voilet', 20, 0, 7, 5.00, '0', '2024-04-01 10:13:48', '2024-04-01 10:13:48'),
(1403, 'Voilet', 20, 1, 7, 1.50, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1404, 'Voilet', 20, 2, 7, 1.50, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1405, 'Voilet', 20, 3, 7, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1406, 'Voilet', 20, 4, 7, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1407, 'Voilet', 20, 5, 7, 5.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1408, 'Voilet', 20, 6, 7, 1.50, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1409, 'Voilet', 20, 7, 7, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1410, 'Voilet', 20, 8, 7, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1411, 'Voilet', 20, 9, 7, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1412, 'Green', 10, 5, 7, 1.50, '1', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1413, 'Red', 30, 0, 7, 1.50, '1', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1414, '0', 0, 0, 8, 9.00, '0', '2024-04-01 10:13:48', '2024-04-01 10:13:48'),
(1415, '1', 1, 1, 8, 9.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1416, '2', 2, 2, 8, 9.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1417, '3', 3, 3, 8, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1418, '4', 4, 4, 8, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1419, '5', 5, 5, 8, 9.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1420, '6', 6, 6, 8, 9.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1421, '7', 7, 7, 8, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1422, '8', 8, 8, 8, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1423, '9', 9, 9, 8, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1424, 'Small', 50, 0, 8, 2.00, '0', '2024-04-01 10:13:48', '2024-04-01 10:13:48'),
(1425, 'Small', 50, 1, 8, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1426, 'Small', 50, 2, 8, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1427, 'Small', 50, 3, 8, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1428, 'Small', 50, 4, 8, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1429, 'Big', 40, 5, 8, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1430, 'Big', 40, 6, 8, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1431, 'Big', 40, 7, 8, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1432, 'Big', 40, 8, 8, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1433, 'Big', 40, 9, 8, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1434, 'Green', 10, 1, 8, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1435, 'Red', 30, 2, 8, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1436, 'Green', 10, 3, 8, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1437, 'Red', 30, 4, 8, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1438, 'Red', 30, 6, 8, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1439, 'Green', 10, 7, 8, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1440, 'Red', 30, 8, 8, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1441, 'Green', 10, 9, 8, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1442, 'Voilet', 20, 0, 8, 5.00, '0', '2024-04-01 10:13:48', '2024-04-01 10:13:48'),
(1443, 'Voilet', 20, 1, 8, 1.50, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1444, 'Voilet', 20, 2, 8, 1.50, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1445, 'Voilet', 20, 3, 8, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1446, 'Voilet', 20, 4, 8, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1447, 'Voilet', 20, 5, 8, 5.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1448, 'Voilet', 20, 6, 8, 1.50, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1449, 'Voilet', 20, 7, 8, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1450, 'Voilet', 20, 8, 8, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1451, 'Voilet', 20, 9, 8, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1452, 'Green', 10, 5, 8, 1.50, '1', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1453, 'Red', 30, 0, 8, 1.50, '1', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1454, '0', 0, 0, 9, 9.00, '0', '2024-04-01 10:13:48', '2024-04-01 10:13:48'),
(1455, '1', 1, 1, 9, 9.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1456, '2', 2, 2, 9, 9.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1457, '3', 3, 3, 9, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1458, '4', 4, 4, 9, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1459, '5', 5, 5, 9, 9.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1460, '6', 6, 6, 9, 9.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1461, '7', 7, 7, 9, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1462, '8', 8, 8, 9, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1463, '9', 9, 9, 9, 9.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1464, 'Small', 50, 0, 9, 2.00, '0', '2024-04-01 10:13:48', '2024-04-01 10:13:48'),
(1465, 'Small', 50, 1, 9, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1466, 'Small', 50, 2, 9, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1467, 'Small', 50, 3, 9, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1468, 'Small', 50, 4, 9, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1469, 'Big', 40, 5, 9, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1470, 'Big', 40, 6, 9, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1471, 'Big', 40, 7, 9, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1472, 'Big', 40, 8, 9, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1473, 'Big', 40, 9, 9, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1474, 'Green', 10, 1, 9, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1475, 'Red', 30, 2, 9, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1476, 'Green', 10, 3, 9, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1477, 'Red', 30, 4, 9, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1478, 'Red', 30, 6, 9, 2.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1479, 'Green', 10, 7, 9, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1480, 'Red', 30, 8, 9, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1481, 'Green', 10, 9, 9, 2.00, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1482, 'Voilet', 20, 0, 9, 5.00, '0', '2024-04-01 10:13:48', '2024-04-01 10:13:48'),
(1483, 'Voilet', 20, 1, 9, 1.50, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1484, 'Voilet', 20, 2, 9, 1.50, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1485, 'Voilet', 20, 3, 9, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1486, 'Voilet', 20, 4, 9, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1487, 'Voilet', 20, 5, 9, 5.00, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1488, 'Voilet', 20, 6, 9, 1.50, '0', '2024-04-14 09:01:06', '2024-04-14 09:01:06'),
(1489, 'Voilet', 20, 7, 9, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1490, 'Voilet', 20, 8, 9, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1491, 'Voilet', 20, 9, 9, 1.50, '0', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1492, 'Green', 10, 5, 9, 1.50, '1', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1493, 'Red', 30, 0, 9, 1.50, '1', '2024-04-14 09:02:05', '2024-04-14 09:02:05'),
(1494, 'Dragon', 1, 1, 10, 2.00, '0', '2025-05-07 12:27:18', '2025-05-07 12:27:22'),
(1495, 'Tiger', 2, 2, 10, 2.00, '0', '2025-05-07 12:27:14', '2025-05-07 12:27:26'),
(1496, 'Tie', 3, 3, 10, 5.00, '0', '2025-05-07 12:27:11', '2025-05-07 12:27:29'),
(1497, 'Andar', 1, 1, 13, 2.00, '0', '2025-05-07 12:27:08', '2025-05-07 12:27:32'),
(1498, 'Bahar', 2, 2, 13, 2.00, '0', '2025-05-07 12:27:04', '2025-05-07 12:27:35'),
(1499, 'Head', 1, 1, 14, 2.00, '0', '2025-05-07 12:26:31', '2025-05-07 12:26:38'),
(1500, 'Tail', 2, 2, 14, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1501, 'Low', 1, 1, 17, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1502, 'Medium', 2, 2, 17, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1503, 'High', 3, 3, 17, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1504, 'seven_down', 1, 1, 15, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1505, 'seven', 2, 2, 15, 5.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1506, 'seven_up', 3, 3, 15, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1507, 'Heart', 1, 1, 16, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1508, 'Club', 2, 2, 16, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1509, 'Spacdes', 3, 3, 16, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1510, 'Diamond', 4, 4, 16, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1511, 'Red', 5, 5, 16, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1512, 'Black', 6, 6, 16, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1513, '1', 1, 1, 20, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1514, '2', 2, 2, 20, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1515, '3', 3, 3, 20, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1516, '4', 4, 4, 20, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1517, '5', 5, 5, 20, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1518, '6', 6, 6, 20, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1519, 'Two', 4, 2, 15, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1520, 'Three', 5, 3, 15, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1521, 'Four', 6, 4, 15, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1522, 'Five', 7, 5, 15, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1523, 'Six', 8, 6, 15, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1524, 'Eight', 9, 8, 15, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1525, 'Nine', 10, 9, 15, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1526, 'Ten', 11, 10, 15, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1527, 'Eleven', 12, 11, 15, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1530, 'Twelve', 13, 12, 15, 2.00, '1', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1531, 'heart', 1, 1, 22, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1532, 'spades', 2, 2, 22, 4.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1533, 'diamond', 3, 3, 22, 6.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1534, 'club', 4, 4, 22, 8.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1535, 'face', 5, 5, 22, 10.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1536, 'flag', 6, 6, 22, 20.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1537, 'High', 1, 1, 24, 5.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1538, 'Low', 2, 2, 24, 5.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1539, 'set', 1, 1, 25, 3.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1540, 'pure seq', 2, 2, 25, 4.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1541, 'seq', 3, 3, 25, 5.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1542, 'colour', 4, 4, 25, 6.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1543, 'pair', 5, 5, 25, 10.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1544, 'highcard', 6, 6, 25, 20.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1545, 'Butterfly', 1, 1, 21, 10.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1546, 'Kite', 2, 2, 21, 8.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1547, 'Umbrella', 3, 3, 21, 7.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1548, 'Ball', 4, 4, 21, 4.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1549, 'Sun', 5, 5, 21, 3.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1550, 'Rabbit', 6, 6, 21, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1551, 'Bird', 7, 7, 21, 9.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1552, 'Bucket', 8, 8, 21, 0.50, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1553, 'Lamp', 9, 9, 21, 1.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1554, 'Bull', 10, 10, 21, 0.20, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1555, 'Rose', 11, 11, 21, 6.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1556, 'Football', 12, 12, 21, 5.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1557, 'Banker', 1, 1, 18, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1558, 'Player', 2, 2, 18, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1559, 'Mini Roullete 1', 1, 1, 26, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1560, 'Mini Roullete 2', 2, 2, 26, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1561, 'Mini Roullete 3', 3, 3, 26, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1562, 'Mini Roullete 4', 4, 4, 26, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1563, 'Mini Roullete 5', 5, 5, 26, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1564, 'Mini Roullete 6', 6, 6, 26, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1565, 'Mini Roullete 7', 7, 7, 26, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1566, 'Mini Roullete 8', 8, 8, 26, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1567, 'Mini Roullete 9', 9, 9, 26, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1568, 'Mini Roullete 10', 10, 10, 26, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1569, 'Mini Roullete 11', 11, 11, 26, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1570, 'Mini Roullete 12', 12, 12, 26, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1607, 'Blockchain Lottery 1 Hrs', 0, 0, 27, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1608, 'Blockchain Lottery 1 Hrs', 1, 1, 27, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1609, 'Blockchain Lottery 1 Hrs', 2, 2, 27, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1610, 'Blockchain Lottery 1 Hrs', 3, 3, 27, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1611, 'Blockchain Lottery 1 Hrs', 4, 4, 27, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1612, 'Blockchain Lottery 1 Hrs', 5, 5, 27, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1613, 'Blockchain Lottery 1 Hrs', 6, 6, 27, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1614, 'Blockchain Lottery 1 Hrs', 7, 7, 27, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1615, 'Blockchain Lottery 1 Hrs', 8, 8, 27, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1616, 'Blockchain Lottery 1 Hrs', 9, 9, 27, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1620, 'Blockchain Lottery 3 Hrs', 0, 0, 28, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1621, 'Blockchain Lottery 3 Hrs', 1, 1, 28, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1622, 'Blockchain Lottery 3 Hrs', 2, 2, 28, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1623, 'Blockchain Lottery 3 Hrs', 3, 3, 28, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1624, 'Blockchain Lottery 3 Hrs', 4, 4, 28, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1625, 'Blockchain Lottery 3 Hrs', 5, 5, 28, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1626, 'Blockchain Lottery 3 Hrs', 6, 6, 28, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1627, 'Blockchain Lottery 3 Hrs', 7, 7, 28, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1628, 'Blockchain Lottery 3 Hrs', 8, 8, 28, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1629, 'Blockchain Lottery 3 Hrs', 9, 9, 28, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1630, 'Blockchain Lottery 24 Hrs', 0, 0, 29, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1631, 'Blockchain Lottery 24 Hrs', 1, 1, 29, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1632, 'Blockchain Lottery 24 Hrs', 2, 2, 29, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1633, 'Blockchain Lottery 24 Hrs', 3, 3, 29, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1634, 'Blockchain Lottery 24 Hrs', 4, 4, 29, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1635, 'Blockchain Lottery 24 Hrs', 5, 5, 29, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1636, 'Blockchain Lottery 24 Hrs', 6, 6, 29, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1637, 'Blockchain Lottery 24 Hrs', 7, 7, 29, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1638, 'Blockchain Lottery 24 Hrs', 8, 8, 29, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46'),
(1639, 'Blockchain Lottery 24 Hrs', 9, 9, 29, 2.00, '0', '2025-05-07 12:26:43', '2025-05-07 12:26:46');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_history`
--

CREATE TABLE `wallet_history` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `subtypeid` int(11) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `description_2` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `wallet_history`
--

INSERT INTO `wallet_history` (`id`, `userid`, `amount`, `subtypeid`, `description`, `description_2`, `created_at`, `updated_at`) VALUES
(1, 1, 11.40, 24, NULL, NULL, '2025-07-28 09:55:20', '2025-07-28 09:55:20'),
(2, 1, 10.70, 24, NULL, NULL, '2025-07-28 09:56:01', '2025-07-28 09:56:01'),
(3, 1, 0.12, 24, NULL, NULL, '2025-07-29 13:01:48', '2025-07-29 13:01:48'),
(4, 1, 9.54, 24, NULL, NULL, '2025-07-29 13:37:23', '2025-07-29 13:37:23'),
(5, 1, 14.30, 24, NULL, NULL, '2025-07-29 13:38:18', '2025-07-29 13:38:18'),
(6, 803, 0.11, 24, NULL, NULL, '2025-07-29 14:01:48', '2025-07-29 14:01:48'),
(7, 803, 11.20, 24, NULL, NULL, '2025-07-29 14:02:05', '2025-07-29 14:02:05'),
(8, 1, 0.14, 24, NULL, NULL, '2025-07-29 18:45:49', '2025-07-29 18:45:49'),
(9, 1, 146.00, 24, NULL, NULL, '2025-07-29 18:46:40', '2025-07-29 18:46:40'),
(10, 1, 120.00, 24, NULL, NULL, '2025-07-30 07:48:10', '2025-07-30 07:48:10'),
(11, 1, 124.00, 24, NULL, NULL, '2025-07-30 07:48:11', '2025-07-30 07:48:11'),
(12, 1, 11.10, 5, 'Deposit Bonus', NULL, '2025-07-30 10:40:32', '2025-07-30 10:40:32'),
(13, 1, 150.00, 5, 'Deposit Bonus', NULL, '2025-07-30 10:43:34', '2025-07-30 10:43:34'),
(14, 1, 0.00, 5, 'Deposit Bonus', NULL, '2025-07-30 10:45:04', '2025-07-30 10:45:04'),
(15, 1, 0.00, 5, 'Deposit Bonus', NULL, '2025-07-30 11:05:06', '2025-07-30 11:05:06'),
(16, 819, 0.00, 5, 'Deposit Bonus', NULL, '2025-07-30 12:45:49', '2025-07-30 12:45:49'),
(17, 819, 0.00, 5, 'Deposit Bonus', NULL, '2025-07-30 12:45:59', '2025-07-30 12:45:59'),
(18, 1, 13.20, 24, NULL, NULL, '2025-07-30 13:44:30', '2025-07-30 13:44:30'),
(19, 1, 11.00, 24, NULL, NULL, '2025-07-30 13:44:53', '2025-07-30 13:44:53'),
(20, 1, 147.00, 24, NULL, NULL, '2025-07-30 14:07:54', '2025-07-30 14:07:54'),
(21, 1, 139.00, 24, NULL, NULL, '2025-07-30 14:08:19', '2025-07-30 14:08:19'),
(22, 1, 136.00, 24, NULL, NULL, '2025-07-30 14:08:20', '2025-07-30 14:08:20'),
(23, 1, 6.00, 14, NULL, NULL, '2025-07-30 21:15:41', '2025-07-30 21:15:41'),
(24, 1, 0.00, 23, NULL, NULL, '2025-08-04 09:04:19', '2025-08-04 09:04:19'),
(25, 819, 0.00, 23, NULL, NULL, '2025-08-04 09:04:19', '2025-08-04 09:04:19'),
(26, 820, 0.00, 23, NULL, NULL, '2025-08-04 09:04:19', '2025-08-04 09:04:19'),
(27, 821, 0.00, 23, NULL, NULL, '2025-08-04 09:04:19', '2025-08-04 09:04:19'),
(28, 823, 0.00, 23, NULL, NULL, '2025-08-04 09:04:19', '2025-08-04 09:04:19'),
(29, 824, 0.00, 23, NULL, NULL, '2025-08-04 09:04:19', '2025-08-04 09:04:19'),
(30, 5, 0.00, 5, 'Deposit Bonus', NULL, '2025-08-04 10:35:54', '2025-08-04 10:35:54'),
(31, 5, 10.00, 14, NULL, NULL, '2025-08-04 10:36:20', '2025-08-04 10:36:20'),
(32, 2, 10.00, 14, NULL, NULL, '2025-08-04 10:39:56', '2025-08-04 10:39:56'),
(33, 5, 10.00, 14, NULL, NULL, '2025-08-04 10:48:49', '2025-08-04 10:48:49'),
(34, 5, 0.00, 5, 'Deposit Bonus', NULL, '2025-08-04 11:24:39', '2025-08-04 11:24:39'),
(35, 5, 10.00, 14, NULL, NULL, '2025-08-04 11:25:43', '2025-08-04 11:25:43'),
(36, 825, 0.00, 5, 'Deposit Bonus', NULL, '2025-08-04 17:44:16', '2025-08-04 17:44:16'),
(37, 825, 30.00, 5, 'Deposit Bonus (10%)', NULL, '2025-08-04 17:47:45', '2025-08-04 17:47:45'),
(38, 825, 30.00, 5, 'Deposit Bonus (10%)', NULL, '2025-08-04 17:48:46', '2025-08-04 17:48:46'),
(39, 825, 20.00, 5, 'Deposit Bonus (10%)', NULL, '2025-08-04 17:53:34', '2025-08-04 17:53:34'),
(40, 825, 19.90, 5, 'Deposit Bonus (10%)', NULL, '2025-08-05 10:26:20', '2025-08-05 10:26:20'),
(41, 8, 19.90, 5, 'Deposit Bonus (10%)', NULL, '2025-08-05 11:37:58', '2025-08-05 11:37:58'),
(42, 8, 19.90, 5, 'Deposit Bonus (10%)', NULL, '2025-08-05 11:39:31', '2025-08-05 11:39:31'),
(43, 8, 49.90, 5, 'Deposit Bonus (10%)', NULL, '2025-08-05 12:01:23', '2025-08-05 12:01:23'),
(44, 8, 11.00, 5, 'Deposit Bonus (10%)', NULL, '2025-08-05 12:03:25', '2025-08-05 12:03:25'),
(45, 8, 49.90, 5, 'Deposit Bonus (10%)', NULL, '2025-08-05 17:20:21', '2025-08-05 17:20:21'),
(46, 8, 11.00, 5, 'Deposit Bonus (10%)', NULL, '2025-08-05 17:47:35', '2025-08-05 17:47:35'),
(47, 2, 99.90, 5, 'Deposit Bonus (10%)', NULL, '2025-08-05 18:15:56', '2025-08-05 18:15:56'),
(48, 2, 499.90, 5, 'Deposit Bonus (10%)', NULL, '2025-08-06 10:51:19', '2025-08-06 10:51:19'),
(49, 2, 12.10, 24, NULL, NULL, '2025-08-06 15:18:16', '2025-08-06 15:18:16'),
(50, 2, 49.90, 5, 'Deposit Bonus (10%)', NULL, '2025-08-06 15:51:31', '2025-08-06 15:51:31'),
(51, 7, 20.00, 5, 'Deposit Bonus (10%)', NULL, '2025-08-07 09:48:23', '2025-08-07 09:48:23'),
(52, 7, 30.00, 5, 'Deposit Bonus (10%)', NULL, '2025-08-07 09:49:20', '2025-08-07 09:49:20'),
(53, 7, 10.00, 14, NULL, NULL, '2025-08-07 09:54:54', '2025-08-07 09:54:54'),
(54, 7, 26.60, 24, NULL, NULL, '2025-08-07 10:20:21', '2025-08-07 10:20:21'),
(55, 826, 1670.00, 24, NULL, NULL, '2025-08-07 11:15:41', '2025-08-07 11:15:41'),
(56, 2, 14.10, 24, NULL, NULL, '2025-08-07 12:15:07', '2025-08-07 12:15:07'),
(57, 4, 1240.00, 24, NULL, NULL, '2025-08-08 14:02:06', '2025-08-08 14:02:06'),
(58, 4, 12.70, 24, NULL, NULL, '2025-08-10 22:10:08', '2025-08-10 22:10:08'),
(59, 7, 17.10, 24, NULL, NULL, '2025-08-12 10:22:08', '2025-08-12 10:22:08'),
(60, 2, 12.60, 24, NULL, NULL, '2025-08-12 11:07:14', '2025-08-12 11:07:14'),
(61, 2, 11.80, 24, NULL, NULL, '2025-08-12 11:08:06', '2025-08-12 11:08:06'),
(62, 7, 17.90, 24, NULL, NULL, '2025-08-12 11:44:43', '2025-08-12 11:44:43'),
(63, 830, 19270.00, 24, NULL, NULL, '2025-08-12 19:24:00', '2025-08-12 19:24:00'),
(64, 829, 22680.00, 24, NULL, NULL, '2025-08-12 19:24:04', '2025-08-12 19:24:04'),
(65, 827, 1630.00, 24, NULL, NULL, '2025-08-12 19:25:16', '2025-08-12 19:25:16'),
(66, 829, 2940.00, 24, NULL, NULL, '2025-08-12 19:25:20', '2025-08-12 19:25:20'),
(67, 828, 4340.00, 24, NULL, NULL, '2025-08-12 19:25:24', '2025-08-12 19:25:24'),
(68, 826, 7720.00, 24, NULL, NULL, '2025-08-12 19:25:31', '2025-08-12 19:25:31'),
(69, 830, 1890.00, 24, NULL, NULL, '2025-08-12 19:26:02', '2025-08-12 19:26:02'),
(70, 826, 1250.00, 24, NULL, NULL, '2025-08-12 19:26:48', '2025-08-12 19:26:48'),
(71, 828, 1350.00, 24, NULL, NULL, '2025-08-12 19:27:11', '2025-08-12 19:27:11'),
(72, 827, 1770.00, 24, NULL, NULL, '2025-08-12 19:27:14', '2025-08-12 19:27:14'),
(73, 830, 1870.00, 24, NULL, NULL, '2025-08-12 19:27:15', '2025-08-12 19:27:15'),
(74, 829, 2260.00, 24, NULL, NULL, '2025-08-12 19:27:16', '2025-08-12 19:27:16'),
(75, 826, 1910.00, 24, NULL, NULL, '2025-08-12 19:30:40', '2025-08-12 19:30:40'),
(76, 829, 2460.00, 24, NULL, NULL, '2025-08-12 19:30:41', '2025-08-12 19:30:41'),
(77, 830, 2900.00, 24, NULL, NULL, '2025-08-12 19:30:43', '2025-08-12 19:30:43'),
(78, 828, 1630.00, 24, NULL, NULL, '2025-08-12 19:31:07', '2025-08-12 19:31:07'),
(79, 826, 1290.00, 24, NULL, NULL, '2025-08-12 19:36:11', '2025-08-12 19:36:11'),
(80, 829, 1530.00, 24, NULL, NULL, '2025-08-12 19:36:13', '2025-08-12 19:36:13'),
(81, 826, 1650.00, 24, NULL, NULL, '2025-08-12 19:36:36', '2025-08-12 19:36:36'),
(82, 829, 2940.00, 24, NULL, NULL, '2025-08-12 19:36:40', '2025-08-12 19:36:40'),
(83, 830, 3340.00, 24, NULL, NULL, '2025-08-12 19:36:41', '2025-08-12 19:36:41'),
(84, 828, 4060.00, 24, NULL, NULL, '2025-08-12 19:36:43', '2025-08-12 19:36:43'),
(85, 827, 4740.00, 24, NULL, NULL, '2025-08-12 19:36:44', '2025-08-12 19:36:44'),
(86, 829, 1350.00, 24, NULL, NULL, '2025-08-12 19:37:51', '2025-08-12 19:37:51'),
(87, 830, 1610.00, 24, NULL, NULL, '2025-08-12 19:37:52', '2025-08-12 19:37:52'),
(88, 828, 1910.00, 24, NULL, NULL, '2025-08-12 19:37:54', '2025-08-12 19:37:54'),
(89, 827, 2380.00, 24, NULL, NULL, '2025-08-12 19:37:55', '2025-08-12 19:37:55'),
(90, 826, 2900.00, 24, NULL, NULL, '2025-08-12 19:37:57', '2025-08-12 19:37:57'),
(91, 826, 1610.00, 24, NULL, NULL, '2025-08-12 19:39:13', '2025-08-12 19:39:13'),
(92, 829, 1970.00, 24, NULL, NULL, '2025-08-12 19:39:15', '2025-08-12 19:39:15'),
(93, 830, 2500.00, 24, NULL, NULL, '2025-08-12 19:39:16', '2025-08-12 19:39:16'),
(94, 828, 3100.00, 24, NULL, NULL, '2025-08-12 19:39:18', '2025-08-12 19:39:18'),
(95, 827, 3700.00, 24, NULL, NULL, '2025-08-12 19:39:20', '2025-08-12 19:39:20'),
(96, 826, 1370.00, 24, NULL, NULL, '2025-08-12 19:40:33', '2025-08-12 19:40:33'),
(97, 829, 1630.00, 24, NULL, NULL, '2025-08-12 19:40:34', '2025-08-12 19:40:34'),
(98, 830, 1870.00, 24, NULL, NULL, '2025-08-12 19:40:36', '2025-08-12 19:40:36'),
(99, 828, 2260.00, 24, NULL, NULL, '2025-08-12 19:40:38', '2025-08-12 19:40:38'),
(100, 827, 3020.00, 24, NULL, NULL, '2025-08-12 19:40:40', '2025-08-12 19:40:40'),
(101, 828, 1670.00, 24, NULL, NULL, '2025-08-12 19:41:53', '2025-08-12 19:41:53'),
(102, 827, 2060.00, 24, NULL, NULL, '2025-08-12 19:41:54', '2025-08-12 19:41:54'),
(103, 826, 2620.00, 24, NULL, NULL, '2025-08-12 19:41:56', '2025-08-12 19:41:56'),
(104, 829, 3220.00, 24, NULL, NULL, '2025-08-12 19:41:58', '2025-08-12 19:41:58'),
(105, 830, 3740.00, 24, NULL, NULL, '2025-08-12 19:41:59', '2025-08-12 19:41:59'),
(106, 826, 1830.00, 24, NULL, NULL, '2025-08-12 19:42:27', '2025-08-12 19:42:27'),
(107, 829, 2140.00, 24, NULL, NULL, '2025-08-12 19:42:28', '2025-08-12 19:42:28'),
(108, 828, 2140.00, 24, NULL, NULL, '2025-08-12 19:42:30', '2025-08-12 19:42:30'),
(109, 830, 3260.00, 24, NULL, NULL, '2025-08-12 19:42:32', '2025-08-12 19:42:32'),
(110, 827, 4740.00, 24, NULL, NULL, '2025-08-12 19:42:35', '2025-08-12 19:42:35'),
(111, 826, 5980.00, 24, NULL, NULL, '2025-08-12 19:43:37', '2025-08-12 19:43:37'),
(112, 829, 6760.00, 24, NULL, NULL, '2025-08-12 19:43:39', '2025-08-12 19:43:39'),
(113, 830, 7360.00, 24, NULL, NULL, '2025-08-12 19:43:41', '2025-08-12 19:43:41'),
(114, 828, 7420.00, 24, NULL, NULL, '2025-08-12 19:43:54', '2025-08-12 19:43:54'),
(115, 827, 8080.00, 24, NULL, NULL, '2025-08-12 19:43:57', '2025-08-12 19:43:57'),
(116, 828, 6220.00, 24, NULL, NULL, '2025-08-12 19:45:09', '2025-08-12 19:45:09'),
(117, 830, 7300.00, 24, NULL, NULL, '2025-08-12 19:45:11', '2025-08-12 19:45:11'),
(118, 829, 7960.00, 24, NULL, NULL, '2025-08-12 19:45:13', '2025-08-12 19:45:13'),
(119, 826, 8860.00, 24, NULL, NULL, '2025-08-12 19:45:15', '2025-08-12 19:45:15'),
(120, 827, 10150.00, 24, NULL, NULL, '2025-08-12 19:45:16', '2025-08-12 19:45:16'),
(121, 8, 2500.00, 24, NULL, NULL, '2025-08-13 09:36:36', '2025-08-13 09:36:36'),
(122, 8, 16.90, 24, NULL, NULL, '2025-08-13 09:37:47', '2025-08-13 09:37:47'),
(123, 8, 2580.00, 24, NULL, NULL, '2025-08-13 09:38:18', '2025-08-13 09:38:18'),
(124, 8, 159.00, 24, NULL, NULL, '2025-08-13 10:24:03', '2025-08-13 10:24:03'),
(125, 8, 147.00, 24, NULL, NULL, '2025-08-13 10:24:45', '2025-08-13 10:24:45'),
(126, 3, 13.50, 24, NULL, NULL, '2025-08-13 10:42:16', '2025-08-13 10:42:16'),
(127, 3, 388.00, 24, NULL, NULL, '2025-08-13 11:09:00', '2025-08-13 11:09:00'),
(128, 4, 14.70, 24, NULL, NULL, '2025-08-13 11:40:49', '2025-08-13 11:40:49'),
(129, 3, 11.90, 24, NULL, NULL, '2025-08-13 11:57:19', '2025-08-13 11:57:19'),
(130, 3, 15.50, 24, NULL, NULL, '2025-08-13 14:39:28', '2025-08-13 14:39:28'),
(131, 3, 28.80, 24, NULL, NULL, '2025-08-13 15:34:39', '2025-08-13 15:34:39'),
(132, 3, 54.70, 24, NULL, NULL, '2025-08-13 15:37:12', '2025-08-13 15:37:12'),
(133, 3, 11.90, 24, NULL, NULL, '2025-08-13 15:56:46', '2025-08-13 15:56:46'),
(134, 3, 11.00, 24, NULL, NULL, '2025-08-13 16:50:23', '2025-08-13 16:50:23'),
(135, 3, 11.00, 24, NULL, NULL, '2025-08-13 16:50:23', '2025-08-13 16:50:23'),
(136, 826, 11000.00, 24, NULL, NULL, '2025-08-13 16:51:46', '2025-08-13 16:51:46'),
(137, 826, 1100.00, 24, NULL, NULL, '2025-08-13 18:19:48', '2025-08-13 18:19:48'),
(138, 826, 11000.00, 24, NULL, NULL, '2025-08-13 18:22:22', '2025-08-13 18:22:22'),
(139, 826, 11000.00, 24, NULL, NULL, '2025-08-13 18:22:39', '2025-08-13 18:22:39'),
(140, 826, 11000.00, 24, NULL, NULL, '2025-08-13 18:23:11', '2025-08-13 18:23:11'),
(141, 826, 11000.00, 24, NULL, NULL, '2025-08-13 18:23:26', '2025-08-13 18:23:26'),
(142, 826, 11.00, 24, NULL, NULL, '2025-08-13 18:27:33', '2025-08-13 18:27:33'),
(143, 826, 11.00, 24, NULL, NULL, '2025-08-13 18:27:48', '2025-08-13 18:27:48'),
(144, 826, 11000.00, 24, NULL, NULL, '2025-08-13 18:28:04', '2025-08-13 18:28:04'),
(145, 826, 11000.00, 24, NULL, NULL, '2025-08-13 18:28:20', '2025-08-13 18:28:20'),
(146, 826, 11000.00, 24, NULL, NULL, '2025-08-13 18:28:36', '2025-08-13 18:28:36'),
(147, 826, 11000.00, 24, NULL, NULL, '2025-08-13 18:28:52', '2025-08-13 18:28:52'),
(148, 826, 11000.00, 24, NULL, NULL, '2025-08-13 18:29:08', '2025-08-13 18:29:08'),
(149, 826, 11000.00, 24, NULL, NULL, '2025-08-13 18:29:25', '2025-08-13 18:29:25'),
(150, 826, 11000.00, 24, NULL, NULL, '2025-08-13 18:29:58', '2025-08-13 18:29:58'),
(151, 8, 11.00, 24, NULL, NULL, '2025-08-14 09:33:13', '2025-08-14 09:33:13'),
(152, 8, 11.00, 24, NULL, NULL, '2025-08-14 09:38:11', '2025-08-14 09:38:11'),
(153, 8, 101.00, 5, 'Deposit Bonus (10%)', NULL, '2025-08-14 10:01:36', '2025-08-14 10:01:36'),
(154, 8, 50.00, 5, 'Deposit Bonus (10%)', NULL, '2025-08-14 10:09:55', '2025-08-14 10:09:55'),
(155, 826, 11000.00, 24, NULL, NULL, '2025-08-14 11:54:31', '2025-08-14 11:54:31'),
(156, 826, 11000.00, 24, NULL, NULL, '2025-08-14 11:54:47', '2025-08-14 11:54:47'),
(157, 826, 11000.00, 24, NULL, NULL, '2025-08-14 11:55:20', '2025-08-14 11:55:20'),
(158, 826, 11000.00, 24, NULL, NULL, '2025-08-14 11:55:36', '2025-08-14 11:55:36'),
(159, 826, 11000.00, 24, NULL, NULL, '2025-08-14 11:55:52', '2025-08-14 11:55:52'),
(160, 826, 11000.00, 24, NULL, NULL, '2025-08-14 11:56:09', '2025-08-14 11:56:09'),
(161, 826, 11000.00, 24, NULL, NULL, '2025-08-14 11:56:25', '2025-08-14 11:56:25'),
(162, 826, 11000.00, 24, NULL, NULL, '2025-08-14 11:56:42', '2025-08-14 11:56:42'),
(163, 826, 11000.00, 24, NULL, NULL, '2025-08-14 11:56:57', '2025-08-14 11:56:57'),
(164, 826, 11000.00, 24, NULL, NULL, '2025-08-14 11:57:13', '2025-08-14 11:57:13'),
(165, 826, 11000.00, 24, NULL, NULL, '2025-08-14 11:57:30', '2025-08-14 11:57:30'),
(166, 826, 11000.00, 24, NULL, NULL, '2025-08-14 11:57:46', '2025-08-14 11:57:46'),
(167, 826, 11000.00, 24, NULL, NULL, '2025-08-14 11:58:20', '2025-08-14 11:58:20'),
(168, 826, 11000.00, 24, NULL, NULL, '2025-08-14 11:58:36', '2025-08-14 11:58:36'),
(169, 826, 11000.00, 24, NULL, NULL, '2025-08-14 11:58:53', '2025-08-14 11:58:53'),
(170, 826, 11000.00, 24, NULL, NULL, '2025-08-14 11:59:09', '2025-08-14 11:59:09'),
(171, 8, 11.00, 24, NULL, NULL, '2025-08-14 12:32:46', '2025-08-14 12:32:46'),
(172, 8, 11.00, 24, NULL, NULL, '2025-08-14 12:32:46', '2025-08-14 12:32:46'),
(173, 8, 11.00, 24, NULL, NULL, '2025-08-14 12:49:37', '2025-08-14 12:49:37'),
(174, 8, 11.00, 24, NULL, NULL, '2025-08-14 12:56:14', '2025-08-14 12:56:14'),
(175, 8, 11.00, 24, NULL, NULL, '2025-08-14 12:56:14', '2025-08-14 12:56:14'),
(176, 1, 33.00, 23, NULL, NULL, '2025-08-14 13:57:47', '2025-08-14 13:57:47'),
(177, 2, 0.00, 23, NULL, NULL, '2025-08-14 13:57:47', '2025-08-14 13:57:47'),
(178, 3, 11.00, 23, NULL, NULL, '2025-08-14 13:57:47', '2025-08-14 13:57:47'),
(179, 4, 0.00, 23, NULL, NULL, '2025-08-14 13:57:47', '2025-08-14 13:57:47'),
(180, 6, 0.00, 23, NULL, NULL, '2025-08-14 13:57:47', '2025-08-14 13:57:47'),
(181, 7, 0.00, 23, NULL, NULL, '2025-08-14 13:57:47', '2025-08-14 13:57:47'),
(182, 8, 0.00, 23, NULL, NULL, '2025-08-14 13:57:47', '2025-08-14 13:57:47'),
(183, 826, 0.00, 23, NULL, NULL, '2025-08-14 13:57:47', '2025-08-14 13:57:47'),
(184, 827, 0.00, 23, NULL, NULL, '2025-08-14 13:57:47', '2025-08-14 13:57:47'),
(185, 828, 0.00, 23, NULL, NULL, '2025-08-14 13:57:47', '2025-08-14 13:57:47'),
(186, 829, 0.00, 23, NULL, NULL, '2025-08-14 13:57:47', '2025-08-14 13:57:47'),
(187, 830, 0.00, 23, NULL, NULL, '2025-08-14 13:57:47', '2025-08-14 13:57:47');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_histories`
--

CREATE TABLE `withdraw_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `commission` decimal(10,2) NOT NULL DEFAULT 0.00,
  `usdt_amount` float DEFAULT NULL,
  `actual_amount` double NOT NULL DEFAULT 0,
  `mobile` varchar(255) DEFAULT NULL,
  `account_id` varchar(555) DEFAULT NULL,
  `type` int(10) UNSIGNED DEFAULT NULL,
  `usdt_wallet_address` varchar(100) DEFAULT NULL,
  `upi_id` varchar(64) DEFAULT NULL,
  `order_id` varchar(100) DEFAULT NULL,
  `payout` int(10) UNSIGNED DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `response` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=Pending,2=success,3=reject',
  `typeimage` varchar(255) DEFAULT NULL,
  `referenceId` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `rejectmsg` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw_histories`
--

INSERT INTO `withdraw_histories` (`id`, `user_id`, `amount`, `commission`, `usdt_amount`, `actual_amount`, `mobile`, `account_id`, `type`, `usdt_wallet_address`, `upi_id`, `order_id`, `payout`, `remark`, `response`, `status`, `typeimage`, `referenceId`, `created_at`, `updated_at`, `rejectmsg`) VALUES
(2, 8, 475, 25.00, NULL, 0, NULL, '5', 1, NULL, NULL, '2025081410300711881', NULL, NULL, NULL, 1, 'https://root.king11.live/uploads/fastpay_image.png', NULL, '2025-08-14 10:30:07', '2025-08-14 10:30:07', NULL),
(3, 2, 760, 40.00, NULL, 0, NULL, '4', 1, NULL, NULL, '2025081414105017524', NULL, NULL, NULL, 3, 'https://root.king11.live/uploads/fastpay_image.png', NULL, '2025-08-14 14:10:50', '2025-08-14 14:10:50', 'hii'),
(4, 2, 475, 25.00, NULL, 0, NULL, '4', 3, NULL, NULL, '2025081414350062462', NULL, NULL, NULL, 1, 'https://root.king11.live/uploads/fastpay_image.png', NULL, '2025-08-14 14:35:00', '2025-08-14 14:35:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_details`
--
ALTER TABLE `account_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_rewards`
--
ALTER TABLE `activity_rewards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_rewards_claim`
--
ALTER TABLE `activity_rewards_claim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_settings`
--
ALTER TABLE `admin_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_winner_results`
--
ALTER TABLE `admin_winner_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `all_images`
--
ALTER TABLE `all_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amount_lists`
--
ALTER TABLE `amount_lists`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `at_claim`
--
ALTER TABLE `at_claim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aviator_admin_result`
--
ALTER TABLE `aviator_admin_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aviator_bet`
--
ALTER TABLE `aviator_bet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aviator_result`
--
ALTER TABLE `aviator_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aviator_setting`
--
ALTER TABLE `aviator_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `balloon_admin_result`
--
ALTER TABLE `balloon_admin_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `balloon_bet`
--
ALTER TABLE `balloon_bet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `balloon_image`
--
ALTER TABLE `balloon_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `balloon_result`
--
ALTER TABLE `balloon_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `balloon_setting`
--
ALTER TABLE `balloon_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `betlogs`
--
ALTER TABLE `betlogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bets`
--
ALTER TABLE `bets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bet_results`
--
ALTER TABLE `bet_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bet_values`
--
ALTER TABLE `bet_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkin_redeems`
--
ALTER TABLE `checkin_redeems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `check_ins`
--
ALTER TABLE `check_ins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chicken_bets`
--
ALTER TABLE `chicken_bets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_services`
--
ALTER TABLE `customer_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit_category`
--
ALTER TABLE `deposit_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extra_first_deposit_bonus`
--
ALTER TABLE `extra_first_deposit_bonus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extra_first_deposit_bonus_claim`
--
ALTER TABLE `extra_first_deposit_bonus_claim`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `fun_admin_result`
--
ALTER TABLE `fun_admin_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fun_bets`
--
ALTER TABLE `fun_bets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fun_bet_logs`
--
ALTER TABLE `fun_bet_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fun_game_settings`
--
ALTER TABLE `fun_game_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fun_results`
--
ALTER TABLE `fun_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fun_wheel`
--
ALTER TABLE `fun_wheel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_rules`
--
ALTER TABLE `game_rules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `game_settings`
--
ALTER TABLE `game_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_cart`
--
ALTER TABLE `gift_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_claim`
--
ALTER TABLE `gift_claim`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `high_low_bets`
--
ALTER TABLE `high_low_bets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invite_bonus`
--
ALTER TABLE `invite_bonus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invite_bonus_claim`
--
ALTER TABLE `invite_bonus_claim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jackpots`
--
ALTER TABLE `jackpots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jackpot_multipliers`
--
ALTER TABLE `jackpot_multipliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keno_bet`
--
ALTER TABLE `keno_bet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keno_bet_result`
--
ALTER TABLE `keno_bet_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keno_index_list`
--
ALTER TABLE `keno_index_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keno_multipliers`
--
ALTER TABLE `keno_multipliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lottery_betlogs`
--
ALTER TABLE `lottery_betlogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lottery_bets`
--
ALTER TABLE `lottery_bets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lottery_bet_result`
--
ALTER TABLE `lottery_bet_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lottery_setting`
--
ALTER TABLE `lottery_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lucky12admin_winner_result`
--
ALTER TABLE `lucky12admin_winner_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lucky12_betlogs`
--
ALTER TABLE `lucky12_betlogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lucky12_bets`
--
ALTER TABLE `lucky12_bets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lucky12_game_settings`
--
ALTER TABLE `lucky12_game_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lucky12_index`
--
ALTER TABLE `lucky12_index`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lucky12_results`
--
ALTER TABLE `lucky12_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lucky16admin_winner_result`
--
ALTER TABLE `lucky16admin_winner_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lucky16_betlogs`
--
ALTER TABLE `lucky16_betlogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lucky16_bets`
--
ALTER TABLE `lucky16_bets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lucky16_game_settings`
--
ALTER TABLE `lucky16_game_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lucky16_index`
--
ALTER TABLE `lucky16_index`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lucky16_results`
--
ALTER TABLE `lucky16_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `minegame_bet`
--
ALTER TABLE `minegame_bet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mine_multipliers`
--
ALTER TABLE `mine_multipliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mini_roulette_bets`
--
ALTER TABLE `mini_roulette_bets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mini_roulette_multiplier`
--
ALTER TABLE `mini_roulette_multiplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mini_roulette_result`
--
ALTER TABLE `mini_roulette_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mlm_levels`
--
ALTER TABLE `mlm_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multiplier`
--
ALTER TABLE `multiplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multipliers`
--
ALTER TABLE `multipliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Notice`
--
ALTER TABLE `Notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_sms`
--
ALTER TABLE `otp_sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payins`
--
ALTER TABLE `payins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_limits`
--
ALTER TABLE `payment_limits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payzaar_callback`
--
ALTER TABLE `payzaar_callback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_modes`
--
ALTER TABLE `pay_modes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `plinko_bets`
--
ALTER TABLE `plinko_bets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plinko_index_lists`
--
ALTER TABLE `plinko_index_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roast_control`
--
ALTER TABLE `roast_control`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rules`
--
ALTER TABLE `rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spingame_settings`
--
ALTER TABLE `spingame_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spin_admin_results`
--
ALTER TABLE `spin_admin_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spin_betlogs`
--
ALTER TABLE `spin_betlogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spin_bets`
--
ALTER TABLE `spin_bets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `spin_bets_user_id_foreign` (`user_id`),
  ADD KEY `game_id` (`game_id`);

--
-- Indexes for table `spin_game_settings`
--
ALTER TABLE `spin_game_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spin_index`
--
ALTER TABLE `spin_index`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spin_results`
--
ALTER TABLE `spin_results`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `spin_results_gamesno_unique` (`period_no`);

--
-- Indexes for table `subtype`
--
ALTER TABLE `subtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_setting`
--
ALTER TABLE `support_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teen_patti_bet`
--
ALTER TABLE `teen_patti_bet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teen_patti_bet_result`
--
ALTER TABLE `teen_patti_bet_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teen_patti_multiplier`
--
ALTER TABLE `teen_patti_multiplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_histories`
--
ALTER TABLE `transaction_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `triplechance_admin_winner_result`
--
ALTER TABLE `triplechance_admin_winner_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `triplechance_bets`
--
ALTER TABLE `triplechance_bets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `triplechance_bet_logs`
--
ALTER TABLE `triplechance_bet_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `triplechance_game_settings`
--
ALTER TABLE `triplechance_game_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `triplechance_results`
--
ALTER TABLE `triplechance_results`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `games_no` (`games_no`);

--
-- Indexes for table `triplechance_wheel_index`
--
ALTER TABLE `triplechance_wheel_index`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usdt_qr`
--
ALTER TABLE `usdt_qr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_u_id_index` (`u_id`);

--
-- Indexes for table `versions`
--
ALTER TABLE `versions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vip_levels`
--
ALTER TABLE `vip_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vip_levels_claim`
--
ALTER TABLE `vip_levels_claim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `virtual_games`
--
ALTER TABLE `virtual_games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_history`
--
ALTER TABLE `wallet_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_histories`
--
ALTER TABLE `withdraw_histories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_details`
--
ALTER TABLE `account_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `activity_rewards`
--
ALTER TABLE `activity_rewards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `activity_rewards_claim`
--
ALTER TABLE `activity_rewards_claim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_settings`
--
ALTER TABLE `admin_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `admin_winner_results`
--
ALTER TABLE `admin_winner_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `amount_lists`
--
ALTER TABLE `amount_lists`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `at_claim`
--
ALTER TABLE `at_claim`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `aviator_admin_result`
--
ALTER TABLE `aviator_admin_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `aviator_bet`
--
ALTER TABLE `aviator_bet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `aviator_result`
--
ALTER TABLE `aviator_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aviator_setting`
--
ALTER TABLE `aviator_setting`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `balloon_admin_result`
--
ALTER TABLE `balloon_admin_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `balloon_bet`
--
ALTER TABLE `balloon_bet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `balloon_image`
--
ALTER TABLE `balloon_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `balloon_result`
--
ALTER TABLE `balloon_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `balloon_setting`
--
ALTER TABLE `balloon_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `betlogs`
--
ALTER TABLE `betlogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `bets`
--
ALTER TABLE `bets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `bet_results`
--
ALTER TABLE `bet_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bet_values`
--
ALTER TABLE `bet_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `checkin_redeems`
--
ALTER TABLE `checkin_redeems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `check_ins`
--
ALTER TABLE `check_ins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chicken_bets`
--
ALTER TABLE `chicken_bets`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_services`
--
ALTER TABLE `customer_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `deposit_category`
--
ALTER TABLE `deposit_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `extra_first_deposit_bonus`
--
ALTER TABLE `extra_first_deposit_bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `extra_first_deposit_bonus_claim`
--
ALTER TABLE `extra_first_deposit_bonus_claim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fun_admin_result`
--
ALTER TABLE `fun_admin_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fun_bets`
--
ALTER TABLE `fun_bets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fun_bet_logs`
--
ALTER TABLE `fun_bet_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `fun_game_settings`
--
ALTER TABLE `fun_game_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `fun_results`
--
ALTER TABLE `fun_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fun_wheel`
--
ALTER TABLE `fun_wheel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `game_rules`
--
ALTER TABLE `game_rules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `game_settings`
--
ALTER TABLE `game_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `gift_cart`
--
ALTER TABLE `gift_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gift_claim`
--
ALTER TABLE `gift_claim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `high_low_bets`
--
ALTER TABLE `high_low_bets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invite_bonus`
--
ALTER TABLE `invite_bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `invite_bonus_claim`
--
ALTER TABLE `invite_bonus_claim`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jackpots`
--
ALTER TABLE `jackpots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jackpot_multipliers`
--
ALTER TABLE `jackpot_multipliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `keno_bet`
--
ALTER TABLE `keno_bet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keno_bet_result`
--
ALTER TABLE `keno_bet_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keno_index_list`
--
ALTER TABLE `keno_index_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `keno_multipliers`
--
ALTER TABLE `keno_multipliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `lottery_betlogs`
--
ALTER TABLE `lottery_betlogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `lottery_bets`
--
ALTER TABLE `lottery_bets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lottery_bet_result`
--
ALTER TABLE `lottery_bet_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lottery_setting`
--
ALTER TABLE `lottery_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lucky12admin_winner_result`
--
ALTER TABLE `lucky12admin_winner_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lucky12_betlogs`
--
ALTER TABLE `lucky12_betlogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `lucky12_bets`
--
ALTER TABLE `lucky12_bets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lucky12_game_settings`
--
ALTER TABLE `lucky12_game_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `lucky12_index`
--
ALTER TABLE `lucky12_index`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `lucky12_results`
--
ALTER TABLE `lucky12_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lucky16admin_winner_result`
--
ALTER TABLE `lucky16admin_winner_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lucky16_betlogs`
--
ALTER TABLE `lucky16_betlogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `lucky16_bets`
--
ALTER TABLE `lucky16_bets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lucky16_game_settings`
--
ALTER TABLE `lucky16_game_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `lucky16_index`
--
ALTER TABLE `lucky16_index`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `lucky16_results`
--
ALTER TABLE `lucky16_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `minegame_bet`
--
ALTER TABLE `minegame_bet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mine_multipliers`
--
ALTER TABLE `mine_multipliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `mini_roulette_bets`
--
ALTER TABLE `mini_roulette_bets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mini_roulette_multiplier`
--
ALTER TABLE `mini_roulette_multiplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `mini_roulette_result`
--
ALTER TABLE `mini_roulette_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mlm_levels`
--
ALTER TABLE `mlm_levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `multiplier`
--
ALTER TABLE `multiplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `multipliers`
--
ALTER TABLE `multipliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `Notice`
--
ALTER TABLE `Notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `otp_sms`
--
ALTER TABLE `otp_sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payins`
--
ALTER TABLE `payins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `payment_limits`
--
ALTER TABLE `payment_limits`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payzaar_callback`
--
ALTER TABLE `payzaar_callback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pay_modes`
--
ALTER TABLE `pay_modes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plinko_bets`
--
ALTER TABLE `plinko_bets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plinko_index_lists`
--
ALTER TABLE `plinko_index_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `roast_control`
--
ALTER TABLE `roast_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rules`
--
ALTER TABLE `rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `spingame_settings`
--
ALTER TABLE `spingame_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spin_admin_results`
--
ALTER TABLE `spin_admin_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spin_betlogs`
--
ALTER TABLE `spin_betlogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `spin_bets`
--
ALTER TABLE `spin_bets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spin_game_settings`
--
ALTER TABLE `spin_game_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `spin_index`
--
ALTER TABLE `spin_index`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `spin_results`
--
ALTER TABLE `spin_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subtype`
--
ALTER TABLE `subtype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `support_setting`
--
ALTER TABLE `support_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teen_patti_bet`
--
ALTER TABLE `teen_patti_bet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `teen_patti_bet_result`
--
ALTER TABLE `teen_patti_bet_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teen_patti_multiplier`
--
ALTER TABLE `teen_patti_multiplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction_histories`
--
ALTER TABLE `transaction_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `triplechance_admin_winner_result`
--
ALTER TABLE `triplechance_admin_winner_result`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `triplechance_bets`
--
ALTER TABLE `triplechance_bets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `triplechance_bet_logs`
--
ALTER TABLE `triplechance_bet_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `triplechance_game_settings`
--
ALTER TABLE `triplechance_game_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1111;

--
-- AUTO_INCREMENT for table `triplechance_results`
--
ALTER TABLE `triplechance_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `triplechance_wheel_index`
--
ALTER TABLE `triplechance_wheel_index`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usdt_qr`
--
ALTER TABLE `usdt_qr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=831;

--
-- AUTO_INCREMENT for table `versions`
--
ALTER TABLE `versions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vip_levels`
--
ALTER TABLE `vip_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vip_levels_claim`
--
ALTER TABLE `vip_levels_claim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `virtual_games`
--
ALTER TABLE `virtual_games`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1640;

--
-- AUTO_INCREMENT for table `wallet_history`
--
ALTER TABLE `wallet_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `withdraw_histories`
--
ALTER TABLE `withdraw_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
