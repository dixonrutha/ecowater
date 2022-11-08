-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2022 at 10:23 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecowater`
--

-- --------------------------------------------------------

--
-- Table structure for table `eco_access_rights`
--

CREATE TABLE `eco_access_rights` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `sub_view` tinyint(1) DEFAULT NULL,
  `sub_add` tinyint(1) DEFAULT NULL,
  `sub_edit` tinyint(1) DEFAULT NULL,
  `sub_delete` tinyint(1) DEFAULT NULL,
  `sub_topup` tinyint(1) DEFAULT NULL,
  `sub_sms` tinyint(1) DEFAULT NULL,
  `sub_mail` tinyint(1) DEFAULT NULL,
  `sub_statement` tinyint(1) DEFAULT NULL,
  `stat_view` tinyint(1) DEFAULT NULL,
  `stat_add` tinyint(1) DEFAULT NULL,
  `stat_edit` tinyint(1) DEFAULT NULL,
  `stat_delete` tinyint(1) DEFAULT NULL,
  `stat_statement` tinyint(1) DEFAULT NULL,
  `stat_sales` tinyint(1) DEFAULT NULL,
  `stat_start` tinyint(1) DEFAULT NULL,
  `stat_shutdown` tinyint(1) DEFAULT NULL,
  `stat_restart` tinyint(1) DEFAULT NULL,
  `topup_view` tinyint(1) DEFAULT NULL,
  `topup_add` tinyint(1) DEFAULT NULL,
  `topup_edit` tinyint(1) DEFAULT NULL,
  `topup_delete` tinyint(1) DEFAULT NULL,
  `topup_pos` tinyint(1) DEFAULT NULL,
  `card_view` tinyint(1) DEFAULT NULL,
  `card_add` tinyint(1) DEFAULT NULL,
  `card_edit` tinyint(1) DEFAULT NULL,
  `card_delete` tinyint(1) DEFAULT NULL,
  `filter_view` tinyint(1) DEFAULT NULL,
  `filter_add` tinyint(1) DEFAULT NULL,
  `filter_edit` tinyint(1) DEFAULT NULL,
  `filter_delete` tinyint(1) DEFAULT NULL,
  `filter_maint_view` tinyint(1) DEFAULT NULL,
  `filter_maint_add` tinyint(1) DEFAULT NULL,
  `filter_maint_edit` tinyint(1) DEFAULT NULL,
  `filter_maint_delete` tinyint(1) DEFAULT NULL,
  `filter_maint_statement` tinyint(1) DEFAULT NULL,
  `branch_view` tinyint(1) DEFAULT NULL,
  `branch_add` tinyint(1) DEFAULT NULL,
  `branch_edit` tinyint(1) DEFAULT NULL,
  `branch_delete` tinyint(1) DEFAULT NULL,
  `campus_view` tinyint(1) DEFAULT NULL,
  `campus_add` tinyint(1) DEFAULT NULL,
  `campus_edit` tinyint(1) DEFAULT NULL,
  `campus_delete` tinyint(1) DEFAULT NULL,
  `campus_invoice_add` tinyint(1) DEFAULT NULL,
  `campus_invoice_pay` tinyint(1) DEFAULT NULL,
  `campus_invoice_delete` tinyint(1) DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eco_access_rights`
--

INSERT INTO `eco_access_rights` (`id`, `group_id`, `sub_view`, `sub_add`, `sub_edit`, `sub_delete`, `sub_topup`, `sub_sms`, `sub_mail`, `sub_statement`, `stat_view`, `stat_add`, `stat_edit`, `stat_delete`, `stat_statement`, `stat_sales`, `stat_start`, `stat_shutdown`, `stat_restart`, `topup_view`, `topup_add`, `topup_edit`, `topup_delete`, `topup_pos`, `card_view`, `card_add`, `card_edit`, `card_delete`, `filter_view`, `filter_add`, `filter_edit`, `filter_delete`, `filter_maint_view`, `filter_maint_add`, `filter_maint_edit`, `filter_maint_delete`, `filter_maint_statement`, `branch_view`, `branch_add`, `branch_edit`, `branch_delete`, `campus_view`, `campus_add`, `campus_edit`, `campus_delete`, `campus_invoice_add`, `campus_invoice_pay`, `campus_invoice_delete`, `date_registered`, `date_updated`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2019-06-17 08:46:54', '2020-02-16 11:52:56'),
(12, 17, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-17 08:46:54', '2022-04-09 21:16:21'),
(13, 18, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-17 08:46:54', '2021-09-09 10:10:53'),
(14, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, 1, '2019-06-17 08:46:54', '2020-02-16 11:39:14'),
(16, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-17 08:46:54', '2021-05-16 15:06:57'),
(18, 8, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, '2019-06-17 08:46:54', NULL),
(19, 9, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-17 08:46:54', '2022-09-14 10:51:46'),
(21, 11, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-17 08:46:54', '2021-09-11 21:11:18'),
(23, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-13 10:16:00', '2021-09-11 21:15:16'),
(24, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-17 06:37:17', '2020-11-08 15:19:42'),
(25, 15, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, 1, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-16 09:34:16', '2022-03-18 10:49:14'),
(26, 16, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-02 00:57:33', '2021-05-16 20:45:03'),
(27, 17, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-16 15:10:20', '2022-04-09 21:16:21'),
(28, 18, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-06 08:43:17', '2021-09-09 10:10:53'),
(29, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-09 09:50:11', NULL),
(30, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 13:33:47', NULL),
(31, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-13 13:28:16', NULL),
(32, 22, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-15 09:10:11', '2022-02-22 22:01:24');

-- --------------------------------------------------------

--
-- Table structure for table `eco_ambassadors`
--

CREATE TABLE `eco_ambassadors` (
  `id` int(11) NOT NULL,
  `card_no` varchar(15) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `date_uploaded` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_audittrails`
--

CREATE TABLE `eco_audittrails` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `action_type` enum('Read','Create','Update','Remove','Login','Logout') NOT NULL,
  `action` text NOT NULL,
  `ip` varchar(55) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_bi_campus_reports`
--

CREATE TABLE `eco_bi_campus_reports` (
  `id` int(11) NOT NULL,
  `campus_id` int(11) NOT NULL,
  `campus_name` varchar(70) DEFAULT NULL,
  `recharge` decimal(20,2) NOT NULL,
  `trans_count` int(11) NOT NULL,
  `card_sale` decimal(20,2) NOT NULL,
  `cash_sale` decimal(20,2) NOT NULL,
  `sub_fee` decimal(20,2) NOT NULL,
  `sub_count_new` int(11) NOT NULL,
  `sub_count_all` int(11) DEFAULT NULL,
  `sub_perf_count` int(11) NOT NULL,
  `paid_sub_count` int(11) NOT NULL,
  `free_sub_count` int(11) NOT NULL,
  `water_volume` decimal(20,2) NOT NULL,
  `bottle_saved` int(11) NOT NULL,
  `money_saved` decimal(20,2) NOT NULL,
  `carbon_avoid` decimal(20,2) NOT NULL,
  `yearmonth` int(11) NOT NULL,
  `as_on_date` date NOT NULL,
  `report_run_by` varchar(50) DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_bi_daily_revenue`
--

CREATE TABLE `eco_bi_daily_revenue` (
  `id` int(11) NOT NULL,
  `report_date` date NOT NULL,
  `sub_fee` decimal(20,5) DEFAULT 0.00000,
  `sub_fee_count` int(11) DEFAULT 0,
  `pos_recharges` decimal(20,5) DEFAULT 0.00000,
  `pos_recharges_count` int(11) DEFAULT 0,
  `mob_recharges` decimal(20,5) DEFAULT 0.00000,
  `mob_recharges_count` int(11) DEFAULT 0,
  `val_recharge` decimal(20,5) DEFAULT 0.00000,
  `val_recharge_count` int(11) DEFAULT 0,
  `cash_sales` decimal(20,5) DEFAULT 0.00000,
  `cash_sales_count` int(11) DEFAULT 0,
  `card_renewal` decimal(20,5) DEFAULT 0.00000,
  `card_renewal_count` int(11) DEFAULT 0,
  `total_rev` decimal(20,5) DEFAULT NULL,
  `date_registered` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='this tabe will be updated daily contains daily revenue';

-- --------------------------------------------------------

--
-- Table structure for table `eco_bi_pos_report`
--

CREATE TABLE `eco_bi_pos_report` (
  `id` int(11) NOT NULL,
  `pos_id` int(11) NOT NULL,
  `pos_name` varchar(50) NOT NULL,
  `campus_id` int(11) NOT NULL,
  `campus_name` varchar(70) NOT NULL,
  `recharge` decimal(20,2) NOT NULL,
  `trans_count` int(11) NOT NULL,
  `as_on_date` date NOT NULL,
  `yearmonth` int(11) NOT NULL,
  `report_run_by` varchar(30) DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_bi_report_export`
--

CREATE TABLE `eco_bi_report_export` (
  `id` int(11) NOT NULL,
  `report_name` varchar(45) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_yearmonth` int(11) DEFAULT NULL,
  `end_yearmonth` int(11) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `date_registered` datetime DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_bi_report_names`
--

CREATE TABLE `eco_bi_report_names` (
  `id` int(11) NOT NULL,
  `report_name` text NOT NULL,
  `short_desc` varchar(70) NOT NULL,
  `report_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_bi_station_mob_validation`
--

CREATE TABLE `eco_bi_station_mob_validation` (
  `id` int(11) NOT NULL,
  `report_date` date DEFAULT NULL,
  `station_id` int(11) DEFAULT NULL,
  `station_name` varchar(50) DEFAULT NULL,
  `validator_id` varchar(40) DEFAULT NULL,
  `trn_count` int(11) DEFAULT NULL,
  `trn_amount` decimal(20,5) DEFAULT NULL,
  `date_registered` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_blacklist_cards`
--

CREATE TABLE `eco_blacklist_cards` (
  `id` int(11) NOT NULL,
  `card_luhn` varchar(15) DEFAULT NULL,
  `maker` varchar(30) DEFAULT NULL,
  `date_registered` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_blocked_ip`
--

CREATE TABLE `eco_blocked_ip` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_bottles`
--

CREATE TABLE `eco_bottles` (
  `id` int(11) NOT NULL,
  `bottle_name` varchar(50) DEFAULT NULL,
  `litres` decimal(6,2) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `loan_rate` decimal(6,2) NOT NULL,
  `max_sell` int(11) NOT NULL,
  `date_registered` datetime DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_bottles_otp`
--

CREATE TABLE `eco_bottles_otp` (
  `id` int(11) NOT NULL,
  `sub_id` int(11) DEFAULT NULL,
  `card_no` varchar(15) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `cashier` varchar(30) DEFAULT NULL,
  `sub_otp` int(11) DEFAULT NULL,
  `cashier_otp` int(11) DEFAULT NULL,
  `date_registered` datetime DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_bottles_repayment`
--

CREATE TABLE `eco_bottles_repayment` (
  `id` int(11) NOT NULL,
  `loan_id` int(11) NOT NULL,
  `amount` decimal(20,5) DEFAULT NULL,
  `mobile_payment_id` int(11) DEFAULT NULL,
  `reversed` enum('N','Y') DEFAULT 'N',
  `payment_date` date DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_bottles_sold`
--

CREATE TABLE `eco_bottles_sold` (
  `id` int(11) NOT NULL,
  `bottle_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_price` decimal(20,5) DEFAULT NULL,
  `loan_amount` decimal(20,5) DEFAULT NULL,
  `collected_amount` decimal(20,5) NOT NULL DEFAULT 0.00000,
  `mobile` varchar(20) DEFAULT NULL,
  `sub_id` int(11) DEFAULT NULL,
  `card_no` varchar(15) DEFAULT NULL,
  `rate` decimal(10,2) NOT NULL,
  `cashier` varchar(30) NOT NULL,
  `modified_by` varchar(30) DEFAULT NULL,
  `sell_date` date DEFAULT NULL,
  `loan_end_date` date DEFAULT NULL,
  `status` enum('Active','Full Paid','Loss','Fraud') NOT NULL DEFAULT 'Active',
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_branch`
--

CREATE TABLE `eco_branch` (
  `id` int(11) NOT NULL,
  `branch_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `branch_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `physical_addr` text COLLATE utf8_unicode_ci NOT NULL,
  `record_stat` enum('O','C','D') COLLATE utf8_unicode_ci NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eco_caf_test`
--

CREATE TABLE `eco_caf_test` (
  `id` int(11) NOT NULL,
  `terminal_id` varchar(50) DEFAULT NULL,
  `card_data` text DEFAULT NULL,
  `received_data` text DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_campus`
--

CREATE TABLE `eco_campus` (
  `id` int(11) NOT NULL,
  `campus_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `campus_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `branch_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `physical_addr` text COLLATE utf8_unicode_ci NOT NULL,
  `address_line1` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `address_line2` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_acc_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_acc_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inc_num` int(5) NOT NULL,
  `record_stat` enum('O','C','D') COLLATE utf8_unicode_ci NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eco_campus_royalty`
--

CREATE TABLE `eco_campus_royalty` (
  `id` int(11) NOT NULL,
  `campus_id` int(11) NOT NULL,
  `royalty` decimal(5,2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `registered_by` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `eco_campus_royalty_vw`
-- (See below for the actual view)
--
CREATE TABLE `eco_campus_royalty_vw` (
`sales_date` date
,`royalty` decimal(5,2)
,`sales` double(19,2)
,`royalty_amount` double(19,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `eco_campus_subscription_fee`
--

CREATE TABLE `eco_campus_subscription_fee` (
  `id` int(11) NOT NULL,
  `campus_id` int(11) DEFAULT NULL,
  `fee_amount` decimal(10,2) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `maker_id` varchar(30) DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_campus_utility_invoices`
--

CREATE TABLE `eco_campus_utility_invoices` (
  `id` int(11) NOT NULL,
  `campus_id` int(11) DEFAULT NULL,
  `invoice_no` varchar(15) DEFAULT NULL,
  `water` decimal(20,2) DEFAULT NULL,
  `electricity` decimal(20,2) DEFAULT NULL,
  `bill_month` varchar(45) DEFAULT NULL,
  `bill_yearmonth` int(11) DEFAULT NULL,
  `status` enum('Paid','Unpaid') NOT NULL DEFAULT 'Unpaid',
  `invoice_id` int(11) DEFAULT NULL,
  `maker_id` varchar(45) DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_cards`
--

CREATE TABLE `eco_cards` (
  `id` int(11) NOT NULL,
  `card_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `curr_balance` double(20,2) NOT NULL,
  `occupied` enum('N','Y') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `card_stat` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `lost` enum('N','Y') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `demaged` enum('N','Y') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `record_stat` enum('O','C','D') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'O',
  `maker_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_luhn` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_seq` int(11) DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eco_cards_luhn`
--

CREATE TABLE `eco_cards_luhn` (
  `id` int(11) NOT NULL,
  `card_no_og` int(11) DEFAULT NULL,
  `card_no_luhn` int(11) DEFAULT NULL,
  `card_complete` varchar(30) DEFAULT NULL,
  `maker_id` varchar(45) DEFAULT NULL,
  `card_len` int(11) DEFAULT NULL,
  `produced` enum('N','Y') NOT NULL DEFAULT 'N',
  `date_registered` datetime DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_card_stat`
--

CREATE TABLE `eco_card_stat` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eco_card_topup`
--

CREATE TABLE `eco_card_topup` (
  `id` int(11) NOT NULL,
  `card_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sub_id` int(11) DEFAULT NULL,
  `trn_ref_no` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `amount` double(20,2) NOT NULL,
  `trn_status` enum('SUCCESS','FAIL') COLLATE utf8_unicode_ci NOT NULL,
  `trn_date` date NOT NULL,
  `pos` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `maker_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SYSTEM',
  `tra_receipt_no` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tra_verification` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tra_response_time` timestamp NULL DEFAULT NULL,
  `tra_receipt_link` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tra_qrcode_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `vfd_api_req` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `vfd_api_res` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `vfd_posted` enum('Y','N') COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `checker` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eco_card_topup_dump`
--

CREATE TABLE `eco_card_topup_dump` (
  `id` int(11) NOT NULL,
  `card_no` varchar(45) DEFAULT NULL,
  `amount` varchar(45) DEFAULT NULL,
  `pos` varchar(45) DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `upload_status` enum('Pending','Success','Failed') DEFAULT 'Pending',
  `error` mediumtext DEFAULT NULL,
  `note` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_cashiers`
--

CREATE TABLE `eco_cashiers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pos_id` int(11) NOT NULL,
  `campus_id` int(11) NOT NULL,
  `current_float` decimal(25,2) DEFAULT NULL,
  `used_float` decimal(25,2) DEFAULT 0.00,
  `balance_float` decimal(25,2) DEFAULT 0.00,
  `card_balance` int(11) DEFAULT 0,
  `add_card` int(11) DEFAULT 0,
  `card_new_sold` int(11) DEFAULT 0,
  `card_renewal_sold` int(11) DEFAULT 0,
  `pay_mode` enum('POS','VALIDATOR','ALL') DEFAULT 'POS',
  `sell_bottle` enum('N','Y') DEFAULT 'N',
  `recharge` enum('Y','N') DEFAULT 'Y',
  `offer` enum('Y','N') DEFAULT 'N',
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `modified_by` varchar(45) DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eco_cashiers`
--

INSERT INTO `eco_cashiers` (`id`, `user_id`, `pos_id`, `campus_id`, `current_float`, `used_float`, `balance_float`, `card_balance`, `add_card`, `card_new_sold`, `card_renewal_sold`, `pay_mode`, `sell_bottle`, `recharge`, `offer`, `status`, `modified_by`, `date_registered`, `date_updated`) VALUES
(3, 13, 22, 70, '50000.00', '0.00', '0.00', 96, 0, 0, 0, 'VALIDATOR', 'Y', 'Y', 'N', 'Active', 'kessy2020', '2021-09-06 08:17:42', '2022-09-15 08:38:15'),
(4, 26, 2, 22, '0.00', '0.00', '0.00', 11, 0, 0, 0, 'POS', 'N', 'Y', 'N', 'Active', 'kessy2020', '2021-09-06 08:20:16', '2022-09-03 00:05:03'),
(5, 32, 22, 69, '0.00', '0.00', '0.00', 10, 0, 0, 0, 'VALIDATOR', 'N', 'N', 'N', 'Inactive', 'admin', '2021-09-06 08:20:45', '2022-07-02 00:05:03'),
(6, 34, 3, 7, '0.00', '0.00', '0.00', 0, 0, 0, 0, 'POS', 'N', 'Y', 'N', 'Inactive', 'kessy2020', '2021-09-06 08:21:46', '2022-02-01 00:05:02'),
(7, 39, 22, 1, '50000.00', '0.00', '0.00', 611, 0, 0, 0, 'VALIDATOR', 'N', 'Y', 'N', 'Active', 'kessy2020', '2021-09-06 08:25:37', '2022-09-15 08:37:20'),
(8, 40, 2, 22, '0.00', '0.00', '0.00', 0, 0, 0, 0, 'POS', 'N', 'Y', 'N', 'Inactive', 'kessy2020', '2021-09-06 08:30:07', '2022-03-02 00:05:02'),
(9, 42, 22, 72, '50000.00', '0.00', '0.00', 599, 0, 0, 0, 'VALIDATOR', 'N', 'Y', 'N', 'Active', 'kessy2020', '2021-09-06 08:42:12', '2022-09-15 08:37:27'),
(10, 41, 22, 65, '50000.00', '0.00', '0.00', 797, 0, 0, 0, 'VALIDATOR', 'Y', 'Y', 'N', 'Active', 'kessy2020', '2021-09-06 08:44:42', '2022-09-15 08:37:12'),
(11, 43, 10, 68, '0.00', '0.00', '0.00', 0, 0, 0, 0, 'POS', 'N', 'Y', 'N', 'Inactive', 'cathy2020', '2021-09-06 09:38:30', '2022-02-27 00:05:02'),
(12, 44, 7, 69, '0.00', '0.00', '0.00', 0, 0, 0, 0, 'VALIDATOR', 'N', 'Y', 'N', 'Inactive', 'kessy2020', '2021-09-06 15:53:15', '2022-03-23 00:05:02'),
(13, 45, 16, 69, '0.00', '0.00', '0.00', 0, 0, 0, 0, 'VALIDATOR', 'N', 'Y', 'N', 'Inactive', 'kessy2020', '2021-09-07 17:46:33', '2022-06-22 00:05:03'),
(16, 37, 22, 75, '0.00', '0.00', '0.00', 0, 0, 0, 0, 'VALIDATOR', 'Y', 'Y', 'N', 'Active', 'kessy2020', '2021-09-11 21:33:39', '2022-05-10 00:05:02'),
(17, 1, 1, 72, '70000.00', '50000.00', '0.00', 49, 0, 0, 0, 'ALL', 'Y', 'Y', 'N', 'Active', 'admin', '2021-09-12 19:00:34', '2022-06-22 08:25:17'),
(18, 47, 22, 70, '0.00', '0.00', '0.00', 0, 0, 0, 0, 'VALIDATOR', 'N', 'N', 'N', 'Inactive', 'smatiku', '2021-10-09 12:58:03', '2022-06-20 00:05:03'),
(19, 48, 22, 7, '50000.00', '2000.00', '0.00', 566, 0, 1, 0, 'VALIDATOR', 'N', 'Y', 'N', 'Active', 'kessy2020', '2021-10-10 08:35:36', '2022-09-15 09:32:05'),
(20, 31, 22, 71, '0.00', '0.00', '0.00', 15, 0, 0, 0, 'VALIDATOR', 'Y', 'Y', 'Y', 'Active', 'kessy2020', '2021-10-11 09:01:36', '2022-09-05 00:05:01'),
(21, 18, 9, 69, '0.00', '0.00', '0.00', 0, 0, 0, 0, 'VALIDATOR', 'Y', 'Y', 'N', 'Active', 'kessy2020', '2021-10-11 09:50:49', '2022-06-22 00:05:03'),
(22, 49, 10, 68, '0.00', '0.00', '0.00', 0, 0, 0, 0, 'POS', 'N', 'Y', 'N', 'Inactive', 'kessy2020', '2021-10-11 10:21:33', '2022-03-23 00:05:02'),
(23, 50, 4, 65, '0.00', '0.00', '0.00', 0, 0, 0, 0, 'POS', 'N', 'Y', 'N', 'Inactive', 'kessy2020', '2021-10-11 10:23:04', '2022-03-11 00:05:02'),
(24, 51, 22, 71, '0.00', '0.00', '0.00', 4, 0, 0, 0, 'VALIDATOR', 'Y', 'Y', 'N', 'Active', 'kessy2020', '2021-10-18 12:21:56', '2022-09-08 00:05:03'),
(25, 52, 18, 69, '0.00', '0.00', '0.00', 0, 0, 0, 0, 'POS', 'Y', 'Y', 'N', 'Active', 'cathy2020', '2021-10-25 12:22:17', '2022-03-06 00:05:02'),
(26, 53, 7, 69, '0.00', '0.00', '0.00', 0, 0, 0, 0, 'VALIDATOR', 'Y', 'Y', 'N', 'Active', 'cathy2020', '2021-10-30 10:25:23', '2022-03-11 00:05:02'),
(27, 54, 8, 69, '0.00', '0.00', '0.00', 0, 0, 0, 0, 'POS', 'N', 'Y', 'N', 'Active', 'cathy2020', '2021-10-30 10:26:17', '2022-01-19 00:05:02'),
(28, 55, 15, 70, '0.00', '0.00', '0.00', 0, 0, 0, 0, 'POS', 'N', 'Y', 'N', 'Active', 'cathy2020', '2021-11-01 13:59:29', '2021-11-10 01:00:04'),
(33, 56, 22, 71, '50000.00', '0.00', '0.00', 97, 0, 0, 0, 'VALIDATOR', 'Y', 'Y', 'N', 'Active', 'kessy2020', '2021-11-01 14:39:31', '2022-09-15 08:38:06'),
(34, 57, 22, 70, '50000.00', '0.00', '0.00', 132, 0, 0, 0, 'VALIDATOR', 'N', 'Y', 'N', 'Active', 'kessy2020', '2021-11-09 13:16:58', '2022-09-15 08:37:58'),
(35, 30, 22, 69, '0.00', '0.00', '0.00', 8, 0, 0, 0, 'VALIDATOR', 'N', 'Y', 'N', 'Active', 'kessy2020', '2021-11-09 17:29:35', '2022-06-30 00:05:02'),
(36, 58, 20, 1, '0.00', '0.00', '0.00', 0, 0, 0, 0, 'POS', 'N', 'N', 'N', 'Inactive', 'smatiku', '2021-11-10 07:18:54', '2022-06-20 00:05:03'),
(37, 59, 5, 46, '0.00', '0.00', '0.00', 0, 0, 0, 0, 'VALIDATOR', 'N', 'Y', 'N', 'Inactive', 'kessy2020', '2021-11-10 07:19:25', '2022-03-11 00:05:02'),
(38, 60, 22, 22, '50000.00', '0.00', '0.00', 298, 0, 0, 0, 'POS', 'Y', 'Y', 'N', 'Active', 'kessy2020', '2021-11-10 07:20:02', '2022-09-15 08:37:50'),
(39, 5, 22, 69, '0.00', '0.00', '0.00', 0, 0, 0, 0, 'VALIDATOR', 'Y', 'Y', 'Y', 'Active', 'smatiku', '2021-11-29 11:12:26', '2022-08-20 00:05:03'),
(40, 62, 10, 68, '0.00', '0.00', '0.00', 0, 0, 0, 0, 'POS', 'N', 'Y', 'N', 'Inactive', 'cathy2020', '2022-01-08 12:46:25', '2022-05-14 00:05:02'),
(41, 21, 9, 69, '0.00', '0.00', '0.00', 7, 0, 0, 0, 'VALIDATOR', 'Y', 'Y', 'N', 'Active', 'kessy2020', '2022-03-10 12:39:52', '2022-09-09 00:05:02'),
(43, 66, 22, 67, '50000.00', '0.00', '0.00', 53, 0, 0, 0, 'VALIDATOR', 'Y', 'Y', 'N', 'Active', 'kessy2020', '2022-04-11 15:58:51', '2022-09-15 08:38:32'),
(44, 67, 22, 69, '50000.00', '0.00', '0.00', 39, 0, 0, 0, 'VALIDATOR', 'Y', 'Y', 'N', 'Active', 'kessy2020', '2022-04-11 15:59:34', '2022-09-15 08:38:40'),
(45, 70, 22, 69, '0.00', '0.00', '0.00', 0, 0, 0, 0, 'VALIDATOR', 'N', 'N', 'N', 'Inactive', 'admin', '2022-05-06 11:19:29', '2022-06-20 00:05:03'),
(46, 71, 22, 69, '0.00', '0.00', '0.00', 0, 0, 0, 0, 'VALIDATOR', 'Y', 'Y', 'N', 'Inactive', 'kessy2020', '2022-05-06 11:21:52', '2022-07-20 00:05:03'),
(47, 72, 22, 75, '50000.00', '0.00', '0.00', 488, 0, 0, 0, 'VALIDATOR', 'Y', 'Y', 'N', 'Active', 'kessy2020', '2022-05-16 11:12:40', '2022-09-15 08:37:42'),
(50, 76, 22, 70, '0.00', '0.00', '0.00', 0, 0, 0, 0, 'VALIDATOR', 'N', 'Y', 'N', 'Active', 'kessy2020', '2022-06-19 16:23:04', '2022-07-30 00:05:03'),
(51, 73, 22, 69, '50000.00', '0.00', '0.00', 22, 0, 0, 0, 'VALIDATOR', 'N', 'Y', 'N', 'Active', 'kessy2020', '2022-06-19 16:25:01', '2022-09-15 08:38:49'),
(52, 74, 22, 71, '0.00', '0.00', '0.00', 0, 0, 0, 0, 'VALIDATOR', 'N', 'Y', 'N', 'Active', 'kessy2020', '2022-06-19 16:25:52', '2022-07-21 00:05:03'),
(53, 75, 22, 67, '50000.00', '0.00', '0.00', 85, 0, 0, 0, 'VALIDATOR', 'N', 'Y', 'N', 'Active', 'kessy2020', '2022-06-19 16:26:45', '2022-09-15 08:38:23'),
(54, 77, 22, 1, '50000.00', '0.00', '0.00', 19, 0, 0, 0, 'VALIDATOR', 'N', 'Y', 'N', 'Active', 'kessy2020', '2022-06-19 16:38:15', '2022-09-15 08:38:58'),
(55, 78, 22, 72, '0.00', '0.00', '0.00', 0, 0, 0, 0, 'VALIDATOR', 'N', 'Y', 'N', 'Active', 'smatiku', '2022-06-19 16:38:51', '2022-07-27 00:05:02'),
(56, 79, 22, 46, '0.00', '0.00', '0.00', 0, 0, 0, 0, 'VALIDATOR', 'N', 'Y', 'N', 'Active', 'kessy2020', '2022-06-19 16:39:36', '2022-07-30 00:05:03'),
(57, 80, 22, 68, '0.00', '0.00', '0.00', 0, 0, 0, 0, 'VALIDATOR', 'N', 'Y', 'N', 'Active', 'smatiku', '2022-06-19 16:40:08', '2022-07-27 00:05:02'),
(58, 81, 22, 65, '0.00', '0.00', '0.00', 0, 0, 0, 0, 'VALIDATOR', 'N', 'Y', 'N', 'Active', 'kessy2020', '2022-06-19 16:40:47', '2022-08-10 00:05:02'),
(59, 82, 22, 7, '0.00', '0.00', '0.00', 0, 0, 0, 0, 'VALIDATOR', 'N', 'Y', 'N', 'Active', 'smatiku', '2022-06-19 16:41:33', '2022-07-27 00:05:02');

-- --------------------------------------------------------

--
-- Table structure for table `eco_cashiers_float_logs`
--

CREATE TABLE `eco_cashiers_float_logs` (
  `id` int(11) NOT NULL,
  `cashier_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cashier_name` varchar(45) DEFAULT NULL,
  `float_date` date DEFAULT NULL,
  `assigned_float` decimal(25,2) DEFAULT 0.00,
  `used_float` decimal(25,2) DEFAULT 0.00,
  `remain_float` decimal(25,2) DEFAULT 0.00,
  `sub_fees` decimal(25,2) DEFAULT 0.00,
  `paid_plan_sub` int(11) DEFAULT 0,
  `free_plan_sub` int(11) DEFAULT 0,
  `total_revenue` decimal(25,2) DEFAULT 0.00,
  `card_new_sold` int(11) DEFAULT 0,
  `card_renewal_sold` int(11) DEFAULT 0,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_cashier_sub`
--

CREATE TABLE `eco_cashier_sub` (
  `cashier_name` varchar(45) DEFAULT NULL,
  `float_date` date DEFAULT NULL,
  `subscription_plan` enum('Fee','Free') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_count` bigint(21) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_ci_sessions`
--

CREATE TABLE `eco_ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` bigint(20) NOT NULL DEFAULT 0,
  `data` text NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eco_ci_sessions`
--

INSERT INTO `eco_ci_sessions` (`id`, `ip_address`, `timestamp`, `data`, `date_registered`) VALUES
('1cl1u47l6k3std917u9a8giqtpb8a19r', '::1', 1663401698, 'identity|s:5:\"admin\";username|s:5:\"admin\";email|s:20:\"rusekeinno@gmail.com\";user_id|s:1:\"1\";old_last_login|s:10:\"1663174636\";last_check|i:1663401698;__ci_last_regenerate|i:1663401698;', '2022-09-17 11:00:27'),
('73u2euisqdeaq2lc3lhaq5ajpmp82las', '::1', 1663402991, 'identity|s:5:\"admin\";username|s:5:\"admin\";email|s:20:\"rusekeinno@gmail.com\";user_id|s:2:\"01\";old_last_login|s:10:\"1663402537\";last_check|i:1663402567;__ci_last_regenerate|i:1663402567;id|s:1:\"1\";name|s:15:\"Innocent Ruseke\";usertypeid|s:1:\"1\";usertype|s:5:\"Admin\";campus|s:2:\"70\";photo|s:19:\"43s5ekzy8tusggg.jpg\";created|s:19:\"2016-04-24 21:00:00\";sub_view|s:1:\"1\";sub_add|s:1:\"1\";sub_edit|s:1:\"1\";sub_delete|s:1:\"1\";sub_topup|s:1:\"1\";sub_sms|s:1:\"1\";sub_mail|s:1:\"1\";sub_statement|s:1:\"1\";stat_view|s:1:\"1\";stat_add|s:1:\"1\";stat_edit|s:1:\"1\";stat_delete|s:1:\"1\";stat_sales|s:1:\"1\";stat_statement|s:1:\"1\";stat_start|s:1:\"1\";stat_shutdown|s:1:\"1\";stat_restart|s:1:\"1\";topup_view|s:1:\"1\";topup_add|s:1:\"1\";topup_edit|s:1:\"1\";topup_delete|s:1:\"1\";topup_pos|s:1:\"1\";card_view|s:1:\"1\";card_add|s:1:\"1\";card_edit|s:1:\"1\";card_delete|s:1:\"1\";filter_view|s:1:\"1\";filter_add|s:1:\"1\";filter_edit|s:1:\"1\";filter_delete|s:1:\"1\";filter_maint_view|s:1:\"1\";filter_maint_add|s:1:\"1\";filter_maint_edit|s:1:\"1\";filter_maint_delete|s:1:\"1\";filter_maint_statement|s:1:\"1\";branch_view|s:1:\"1\";branch_add|s:1:\"1\";branch_edit|s:1:\"1\";branch_delete|s:1:\"1\";campus_view|s:1:\"1\";campus_add|s:1:\"1\";campus_edit|s:1:\"1\";campus_delete|s:1:\"1\";campus_invoice_add|s:1:\"1\";campus_invoice_pay|s:1:\"1\";campus_invoice_delete|s:1:\"1\";session_id|s:32:\"73u2euisqdeaq2lc3lhaq5ajpmp82las\";loggedin|b:1;', '2022-09-17 11:16:07'),
('aka44ihadsore4r4ldefjo7ie9gajh16', '::1', 1663402567, 'identity|s:5:\"admin\";username|s:5:\"admin\";email|s:20:\"rusekeinno@gmail.com\";user_id|s:1:\"1\";old_last_login|s:10:\"1663402537\";last_check|i:1663402567;__ci_last_regenerate|i:1663402567;', '2022-09-17 11:15:57'),
('aqrtt69fmavcugj5jg4grolgn3d1bph9', '::1', 1663402537, '__ci_last_regenerate|i:1663402537;identity|s:5:\"admin\";username|s:5:\"admin\";email|s:20:\"rusekeinno@gmail.com\";user_id|s:1:\"1\";old_last_login|s:10:\"1663401698\";last_check|i:1663402537;', '2022-09-17 11:15:27'),
('nkio9jmj5rfvhn0ikdrhqkd3vnaee12n', '::1', 1663402578, '', '2022-09-17 11:16:18');

-- --------------------------------------------------------

--
-- Table structure for table `eco_commands_incoming`
--

CREATE TABLE `eco_commands_incoming` (
  `id` int(11) NOT NULL,
  `msisdn` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `code` text COLLATE utf8_unicode_ci NOT NULL,
  `code_processed` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eco_commands_incoming_purge`
--

CREATE TABLE `eco_commands_incoming_purge` (
  `id` int(11) NOT NULL DEFAULT 0,
  `reference` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `msisdn` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code_processed` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_cronjob_run_hist`
--

CREATE TABLE `eco_cronjob_run_hist` (
  `id` int(11) NOT NULL,
  `function_run` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `run_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `start_end_time` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remote_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eco_dashboards`
--

CREATE TABLE `eco_dashboards` (
  `id` int(11) NOT NULL,
  `dashboard` varchar(45) DEFAULT NULL,
  `url_link` varchar(70) DEFAULT NULL,
  `date_registered` datetime DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eco_dashboards`
--

INSERT INTO `eco_dashboards` (`id`, `dashboard`, `url_link`, `date_registered`, `date_updated`) VALUES
(1, 'campus_manager', 'dashboard/campusManager', '2020-02-09 13:31:50', NULL),
(2, 'quality_assurance', 'dashboard/qualityAssurance', '2020-02-09 13:33:19', NULL),
(3, 'finance', 'dashboard/finance', '2020-02-09 13:33:39', NULL),
(4, 'customer_relation', 'dashboard/customerRelation', '2020-02-09 13:34:05', NULL),
(5, 'admin_dashboard', 'dashboard/adminDashboard', '2020-02-16 12:27:04', NULL),
(6, 'Investor_Dashboard', 'dashboard/investorDashboard', '2020-10-17 06:38:11', '2020-11-08 14:20:20'),
(7, 'cashier_dashboard', 'dashboard/cashierDashboard', '2021-08-28 16:52:17', '2021-09-09 10:04:15');

-- --------------------------------------------------------

--
-- Table structure for table `eco_dev_api_logs`
--

CREATE TABLE `eco_dev_api_logs` (
  `id` int(11) NOT NULL,
  `remote_ip` varchar(20) DEFAULT NULL,
  `api_function` varchar(50) DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_update` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_dim_dates`
--

CREATE TABLE `eco_dim_dates` (
  `id` int(11) NOT NULL,
  `full_date` date DEFAULT NULL,
  `date_id` int(11) DEFAULT NULL,
  `date_year` int(11) DEFAULT NULL,
  `date_month` int(11) DEFAULT NULL,
  `date_month_desc` varchar(3) DEFAULT NULL,
  `date_day` int(11) DEFAULT NULL,
  `date_day_desc` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='dimension dates from 01 Jan 2018';

-- --------------------------------------------------------

--
-- Stand-in structure for view `eco_eom_campus_sales_vw`
-- (See below for the actual view)
--
CREATE TABLE `eco_eom_campus_sales_vw` (
`sales_yearmonth` int(1)
,`station_id` int(1)
,`campus_id` int(1)
,`card_sale` int(1)
,`cash_sale` int(1)
,`total_sale` int(1)
);

-- --------------------------------------------------------

--
-- Table structure for table `eco_eom_date`
--

CREATE TABLE `eco_eom_date` (
  `id` int(11) NOT NULL,
  `valid_eom_dates` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_filters`
--

CREATE TABLE `eco_filters` (
  `id` int(11) NOT NULL,
  `filter_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `filter_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `clean_days` int(11) DEFAULT NULL,
  `replace_days` int(11) NOT NULL,
  `record_stat` enum('O','C') COLLATE utf8_unicode_ci NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eco_filters_maintenance`
--

CREATE TABLE `eco_filters_maintenance` (
  `id` int(11) NOT NULL,
  `filter_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `station_gsm` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `station_id` int(11) DEFAULT NULL,
  `date_cleaned` date DEFAULT NULL,
  `next_cleaning` date DEFAULT NULL,
  `days_remain_clean` int(11) DEFAULT NULL,
  `per_remain_clean` decimal(5,2) DEFAULT NULL,
  `date_replaced` date DEFAULT NULL,
  `next_replacement` date DEFAULT NULL,
  `days_remain_replace` int(11) DEFAULT NULL,
  `per_remain_replace` decimal(5,2) DEFAULT NULL,
  `maker_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SYSTEM',
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eco_filters_maint_history`
--

CREATE TABLE `eco_filters_maint_history` (
  `id` int(11) NOT NULL,
  `filter_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `station_gsm` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `action` enum('Cleaned','Replaced') COLLATE utf8_unicode_ci NOT NULL,
  `date_serviced` date DEFAULT NULL,
  `maker_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eco_filters_maint_history_dump`
--

CREATE TABLE `eco_filters_maint_history_dump` (
  `id` int(11) NOT NULL,
  `filter_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `station_gsm` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `action` enum('Cleaned','Replaced') COLLATE utf8_unicode_ci NOT NULL,
  `date_serviced` date DEFAULT NULL,
  `maker_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eco_groups`
--

CREATE TABLE `eco_groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eco_hacker`
--

CREATE TABLE `eco_hacker` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(20) DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_id_types`
--

CREATE TABLE `eco_id_types` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_import`
--

CREATE TABLE `eco_import` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `contact_no` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_incoming_message`
--

CREATE TABLE `eco_incoming_message` (
  `id` int(11) NOT NULL,
  `sender` varchar(45) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `message_pro` mediumtext DEFAULT NULL,
  `status` enum('Pending','Processed') NOT NULL DEFAULT 'Pending',
  `date_registered` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_incoming_message_test`
--

CREATE TABLE `eco_incoming_message_test` (
  `id` int(11) NOT NULL,
  `from` varchar(45) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `vp` varchar(100) DEFAULT NULL,
  `destaddr` varchar(100) DEFAULT NULL,
  `sourceaddnpi` varchar(100) DEFAULT NULL,
  `sourceaddrton` varchar(100) DEFAULT NULL,
  `date_registered` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_investors`
--

CREATE TABLE `eco_investors` (
  `id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `middle_name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `physical_addr` tinytext NOT NULL,
  `next_of_kin` varchar(50) NOT NULL,
  `next_of_kin_mobile` varchar(45) NOT NULL,
  `next_of_kin_addr` tinytext NOT NULL,
  `sys_user_id` int(11) DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_investor_contracts`
--

CREATE TABLE `eco_investor_contracts` (
  `id` int(11) NOT NULL,
  `contract_no` varchar(45) DEFAULT NULL,
  `contract_date` date NOT NULL,
  `invested_amount` decimal(10,0) NOT NULL,
  `payback_pref` enum('Single','Monthly','Refund') NOT NULL,
  `exit_duration` enum('','1','2','3','4','5') DEFAULT NULL,
  `exit_start_date` date DEFAULT NULL,
  `inv_curr_stage` enum('Initial','Exit','Closed') DEFAULT NULL,
  `investor_id` int(11) NOT NULL,
  `monthly_rate` decimal(10,0) NOT NULL,
  `revise` enum('N','Y') NOT NULL DEFAULT 'N',
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_investor_exit_rates`
--

CREATE TABLE `eco_investor_exit_rates` (
  `id` int(11) NOT NULL,
  `contract_id` int(11) NOT NULL,
  `year_no` int(11) DEFAULT NULL,
  `int_rate` decimal(10,0) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_investor_invoice`
--

CREATE TABLE `eco_investor_invoice` (
  `id` int(11) NOT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `invoice_no` varchar(45) DEFAULT NULL,
  `status` enum('Unpaid','Paid') NOT NULL DEFAULT 'Unpaid',
  `date_registered` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_investor_statements_hist`
--

CREATE TABLE `eco_investor_statements_hist` (
  `id` int(11) NOT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `maker_id` varchar(45) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_investor_stations`
--

CREATE TABLE `eco_investor_stations` (
  `id` int(11) NOT NULL,
  `station_id` int(11) NOT NULL,
  `contract_id` int(11) NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_investor_station_sales`
--

CREATE TABLE `eco_investor_station_sales` (
  `id` int(11) NOT NULL,
  `sale_date` date DEFAULT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `total_sales` decimal(10,0) DEFAULT NULL,
  `inv_rate` decimal(10,0) DEFAULT NULL,
  `inv_payment` decimal(10,2) DEFAULT NULL,
  `stage` enum('Initial','Exit') DEFAULT NULL,
  `status` enum('Transfered','Untransfered') DEFAULT NULL,
  `transfer_id` int(11) DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_investor_station_sales_rev`
--

CREATE TABLE `eco_investor_station_sales_rev` (
  `id` int(11) NOT NULL,
  `sale_date` date DEFAULT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `total_sales` decimal(10,2) DEFAULT NULL,
  `inv_rate` decimal(10,2) DEFAULT NULL,
  `inv_payment` decimal(10,2) DEFAULT NULL,
  `stage` enum('Initial','Exit') DEFAULT NULL,
  `status` enum('Transfered','Untransfered') DEFAULT NULL,
  `transfer_id` int(11) DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_investor_transfers_hist`
--

CREATE TABLE `eco_investor_transfers_hist` (
  `id` int(11) NOT NULL,
  `contract_id` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `invoice_no` varchar(45) DEFAULT NULL,
  `maker_id` varchar(45) DEFAULT NULL,
  `date_registered` datetime DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_items`
--

CREATE TABLE `eco_items` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_login_attempts`
--

CREATE TABLE `eco_login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eco_meal_cafeteria`
--

CREATE TABLE `eco_meal_cafeteria` (
  `id` int(11) NOT NULL,
  `cafeteria_name` varchar(30) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `campus_id` int(11) DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `date_registered` datetime DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_meal_coupon_buy`
--

CREATE TABLE `eco_meal_coupon_buy` (
  `id` int(11) NOT NULL,
  `purchase_id` varchar(15) DEFAULT NULL,
  `sub_id` int(11) NOT NULL,
  `card_no` varchar(20) DEFAULT NULL,
  `coupon_name` varchar(30) DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT NULL,
  `coupon_date` date DEFAULT NULL,
  `status` enum('Unpaid','Paid') DEFAULT 'Unpaid',
  `payment_id` int(11) DEFAULT NULL,
  `date_registered` datetime DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_meal_pos`
--

CREATE TABLE `eco_meal_pos` (
  `id` int(11) NOT NULL,
  `pos_id` varchar(50) DEFAULT NULL,
  `cafeteria_id` int(11) DEFAULT NULL,
  `date_registered` datetime DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_meal_purchase`
--

CREATE TABLE `eco_meal_purchase` (
  `id` int(11) NOT NULL,
  `log_id` varchar(10) DEFAULT NULL,
  `terminal_id` varchar(50) DEFAULT NULL,
  `cafeteria_id` int(11) DEFAULT NULL,
  `sub_id` int(11) DEFAULT NULL,
  `card_no` varchar(20) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `card_data` text DEFAULT NULL,
  `res_code` varchar(10) DEFAULT NULL,
  `date_registered` datetime DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_meal_terminal`
--

CREATE TABLE `eco_meal_terminal` (
  `id` int(11) NOT NULL,
  `terminal_id` varchar(50) NOT NULL,
  `terminal_code` int(11) DEFAULT NULL,
  `password` varchar(70) DEFAULT NULL,
  `cafeteria_id` int(11) DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT NULL,
  `date_registered` datetime DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_meal_term_res_code`
--

CREATE TABLE `eco_meal_term_res_code` (
  `id` int(11) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_meal_trans`
--

CREATE TABLE `eco_meal_trans` (
  `id` int(11) NOT NULL,
  `sub_id` int(11) DEFAULT NULL,
  `card_no` varchar(20) DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT NULL,
  `cafeteria_id` int(11) DEFAULT NULL,
  `meal_pos_id` int(11) DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `date_registered` datetime DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_menus`
--

CREATE TABLE `eco_menus` (
  `id` int(11) NOT NULL,
  `menu_name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `menu_icon` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_link` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `page_link_unencrypted` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `menu_title` int(11) NOT NULL,
  `sort` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `eco_menus`
--

INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `page_link_unencrypted`, `menu_title`, `sort`) VALUES
(1, 'Menus', NULL, 'settings/menus', '', 1, 4),
(2, 'Menu Titles', NULL, 'settings/menutitles', '', 1, 3),
(3, 'Users', NULL, 'settings/users', '', 1, 1),
(4, 'Users Groups', NULL, 'settings/usergroups', '', 1, 2),
(24, 'Branches List', NULL, '0064e2dae17ee8627f29554c8045f804', '', 10, 1),
(25, 'Campuses List', NULL, '69908164272db3c3ecb3958c51e814ab', 'campus/listCampus', 11, 1),
(26, 'Stations List', NULL, 'stations/listStations', 'stations/listStations', 12, 2),
(27, 'Filters', NULL, 'quality_controls/listFilters', '', 14, 3),
(28, 'Card', NULL, 'card/listCards', '', 15, 1),
(29, 'Add Subscriber', NULL, '71e166fa855a3ace69d42b1c62892571', 'subscribers/newSubscriber', 13, 2),
(30, 'Search Subscriber', NULL, 'a18769583d9f14d672803c80bcabf9a7', 'subscribers/listSubscribers', 13, 1),
(31, 'Sales History', NULL, 'stations/salesHistory', '', 12, 3),
(32, 'POS', NULL, 'topup/posList', '', 16, 3),
(33, 'All Topup', NULL, 'topup/cardTopup', '', 16, 1),
(36, 'Sub Categories', NULL, 'settings/subCategories', '', 1, 9),
(37, 'Subscribers Bulk SMS', NULL, 'sms/subscribersBulkSMS', '', 17, 1),
(38, 'Main BI', NULL, 'analytics/reports', '', 9, 1),
(39, 'Subscription Fees', NULL, '6c2b3b70f6a4b5c780f7a0792d36f727', 'subscribers/subscriptionFee', 13, 3),
(41, 'Price Config', NULL, 'settings/waterPrice', 'settings/waterPrice', 1, 6),
(43, 'Stations Bulk SMS', NULL, 'messagingcentre/stationsbulksms', '', 17, 3),
(44, 'Users Bulk SMS', NULL, 'messagingcentre/usersbulksms', '', 17, 4),
(46, 'Utility-Invoices', NULL, '66f0125330096302b596ef45f885b255', 'campus/utilityInvoices', 19, 3),
(51, 'SMS Templates', NULL, 'messagingcentre/smstemplates', '', 17, 5),
(53, 'POS Balances', 'fa fa-dollar', 'cbfe61202c372dbcc0208399dbf30cea', 'topup/posBalances', 16, 4),
(58, 'Cards Renewals', 'fa', 'subscribers/cardRenewals', '', 13, 5),
(59, 'Subscribers Bulk Email', NULL, 'sms/subscribersBulkEmail', '', 17, 2),
(60, 'Utility Config', NULL, 'settings/utilityConfig', 'settings/utilityConfig', 1, 5),
(62, 'All  Subscribers', NULL, '63af1019c3f8e05d1e0202c578aa50f0', 'subscribers/allSubscribers', 13, NULL),
(63, 'Streets', NULL, 'settings/street', 'settings/street', 1, 8),
(64, 'Sub Status', NULL, 'settings/subStatus', 'settings/subStatus', 1, 12),
(65, 'Royalty', NULL, '6b02549c5e3b0bb66286901b2a4f3021', 'campus/royaltyConfig', 20, 1),
(66, 'Subscription Plans', NULL, '2119d6e53554d6165666faed924b84f3', 'settings/subscriptionType', 1, 10),
(67, 'Royalties Config', NULL, '27519a766694c2cd37fa6b343e640c23', 'settings/royaltyConfig', 1, 11),
(68, 'System Parameters', NULL, '1e782707d31dbc3ada3b17c533376c16', 'settings/systemParameters', 1, 13),
(69, 'Utility Bills', NULL, 'cb063fe2c1ad14dc432e56c55ee9b331', 'campus/utilityBills', 11, 2),
(70, 'Home Dashboard', NULL, '2feb80ea5126598fd8dfdb428db22ec8', 'settings/dashboards', 1, 15),
(71, 'Invoices', NULL, 'e306393ad4d44b6d58d18545a6b2be52', 'campus/campusListTwo', 11, 3),
(73, 'Mobile Payment', NULL, '00e5a24f92f5b45aa4a6571b53d36745', 'settings/mobilePayParam', 1, 17),
(74, 'List Investors', NULL, '719e5fd2bcdea0c82f8b2d66823a071e', 'investors/listInvestors', 25, 1),
(75, 'Investor Contracts', NULL, '45e1a84d034d65a00bf29f525110c511', 'investors/investorContracts', 25, 2),
(76, 'Payment Transfer', NULL, '058cf4d83dc58e2fd7a8a3eeff03c61a', 'investors/transfers', 25, 3),
(77, 'Sales History Revised', NULL, 'stations/salesHistoryRev', '', 12, 4),
(78, 'Export Recharges', NULL, 'topup/exportTopup', '', 16, 5),
(80, 'Stations Dashboard', NULL, 'stations/stationDashboard', '', 12, 1),
(81, 'Uploads', NULL, '809e41f3c92e39b8a833737c57e29abf', '', 1, 7),
(82, 'BI- Dynamics', NULL, 'analytics/dynamics', '', 9, 2),
(83, 'Audit Trail', NULL, 'analytics/audit', '', 9, 3),
(84, 'Luhn Cards', NULL, 'card/luhnCards', '', 15, 9),
(85, 'Payments', NULL, 'topup/selcomPayments', '', 26, 2),
(87, 'All Validators', NULL, 'validators/listValidators', '', 27, 1),
(89, 'Cronjob Logs', NULL, 'settings/cronjobLogs', '', 1, 14),
(90, 'Student Courses', NULL, 'settings/studentCourses', '', 1, 16),
(91, 'Validator Logs', NULL, 'validators/validatorLogs', '', 27, 20),
(92, 'Cashiers', NULL, 'cashier/listCashiers', '', 29, 1),
(93, 'Float Logs', NULL, 'cashier/floatLogs', '', 29, 5),
(94, 'Mobile Dashboard', NULL, 'topup/paymentDashboard', '', 26, 1),
(95, 'Selcom Recon', NULL, 'topup/selcomRecon', '', 26, 20),
(96, 'Daily Revenue', NULL, 'analytics/dailyRevenue', '', 9, 5),
(97, 'Catalogue', NULL, 'shop/bottleConfig', '', 30, 2),
(98, 'Bottle Loans', NULL, 'shop/bottleLoans', '', 30, 3),
(99, ' Bottles Dashboard', NULL, 'shop/bottleDashboard', '', 30, 1),
(100, 'Test Reports', NULL, 'quality_controls/qualityControlMeasurements', '', 14, 1),
(101, 'Products', NULL, 'settings/products', '', 1, 18),
(102, 'Coupon Purchases', NULL, 'ecobox/couponPurchased', '', 33, 1),
(103, 'Vendor Logs', NULL, 'ecobox/cafeteriaLogs', '', 33, 2),
(104, 'Vendors', NULL, 'ecobox/cafeteria', '', 33, NULL),
(105, 'Terminals', NULL, 'ecobox/terminals', '', 33, NULL),
(106, 'Blacklist Cards', NULL, 'settings/blacklistCards', '', 1, 19),
(107, 'Customers', NULL, 'majik/customers', '', 34, 1),
(108, 'Drivers', NULL, 'majik/drivers', '', 34, 2),
(109, 'Orders', NULL, 'majik/orders', '', 34, 3),
(110, 'Inventories', NULL, 'inventories/majik', '', 34, 4);

-- --------------------------------------------------------

--
-- Table structure for table `eco_menutitles`
--

CREATE TABLE `eco_menutitles` (
  `id` int(11) NOT NULL,
  `title_name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `title_icon` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `feather_icon` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `eco_menutitles`
--

INSERT INTO `eco_menutitles` (`id`, `title_name`, `title_icon`, `feather_icon`, `sort`) VALUES
(1, 'Configurations', 'fa fa-cogs', 'settings', 100),
(9, 'Analytics', 'fa fa-book', 'bar-chart-2', 14),
(10, 'Branch', 'fa fa-bank', 'octagon', 13),
(11, 'Campuses', 'fa fa-square', 'grid', 8),
(12, 'Stations', 'fa fa-tint', 'droplet', 5),
(13, 'Subsribers', 'fa fa-users', 'users', 1),
(14, 'Quality Control', 'fa fa-tag', 'thermometer', 10),
(15, 'Card Centre', 'fa fa-credit-card', 'credit-card', 9),
(16, 'Top Up', 'fa fa-money', 'dollar-sign', 7),
(17, 'Messaging Centre', 'fa fa-envelope', 'message-square', 11),
(25, 'Investors Panel', 'fa fa-users', 'briefcase', 12),
(26, 'Payments', 'fa fa-mobile', 'smartphone', 3),
(27, 'Validators', 'fa fa-qrcode', 'check-square', 4),
(29, 'Cashiers', 'fa fa-navicon', 'meh', 2),
(30, 'Shop', 'gift', 'shopping-cart', 6),
(33, 'ecoBox', 'fa fa-box', 'box', 15),
(34, 'MajiK', 'smartphone', 'truck', 3);

-- --------------------------------------------------------

--
-- Table structure for table `eco_pos_balances`
--

CREATE TABLE `eco_pos_balances` (
  `id` int(11) NOT NULL,
  `pos_id` int(11) DEFAULT NULL,
  `pos_balance` decimal(20,2) DEFAULT NULL,
  `pos_balance_opening` decimal(20,2) DEFAULT NULL,
  `pos_balance_net` decimal(20,2) DEFAULT NULL,
  `topup_balance` decimal(20,2) DEFAULT NULL,
  `variance` decimal(20,2) DEFAULT NULL,
  `report_date` date DEFAULT NULL,
  `maker_id` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `date_registered` datetime DEFAULT current_timestamp(),
  `date_update` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_quality_control`
--

CREATE TABLE `eco_quality_control` (
  `id` int(11) NOT NULL,
  `station_id` int(11) NOT NULL,
  `qc_category` enum('Internal','External') DEFAULT NULL,
  `lab_name` varchar(50) DEFAULT NULL,
  `qc_date` date DEFAULT NULL,
  `tds` decimal(10,2) DEFAULT NULL,
  `ph` decimal(5,2) DEFAULT NULL,
  `tss` decimal(10,2) DEFAULT NULL,
  `alkalinity` decimal(10,2) DEFAULT NULL,
  `chloride` decimal(10,2) DEFAULT NULL,
  `calcium` decimal(10,2) DEFAULT NULL,
  `hardness` decimal(10,2) DEFAULT NULL,
  `conductivity` decimal(10,2) DEFAULT NULL,
  `fluoride` decimal(10,2) DEFAULT NULL,
  `zinc` decimal(10,2) DEFAULT NULL,
  `iron` decimal(10,2) DEFAULT NULL,
  `copper` decimal(10,2) DEFAULT NULL,
  `coliforms` decimal(10,2) DEFAULT NULL,
  `e_coli` decimal(10,2) DEFAULT NULL,
  `salmonella` decimal(10,2) DEFAULT NULL,
  `enterococcus` decimal(10,2) DEFAULT NULL,
  `staphylococcus_aureus` decimal(10,2) DEFAULT NULL,
  `pseudomonas_aeruginosa` decimal(10,2) DEFAULT NULL,
  `maker_id` varchar(30) DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `eco_recharges_vw`
-- (See below for the actual view)
--
CREATE TABLE `eco_recharges_vw` (
`trn_date` int(1)
,`recharges` int(1)
);

-- --------------------------------------------------------

--
-- Table structure for table `eco_rest_api_codes`
--

CREATE TABLE `eco_rest_api_codes` (
  `id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `code_type` enum('Success','Error') DEFAULT NULL,
  `description` varchar(70) DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Genaral REST API response codes';

-- --------------------------------------------------------

--
-- Table structure for table `eco_rest_api_keys`
--

CREATE TABLE `eco_rest_api_keys` (
  `id` int(11) NOT NULL,
  `cert` varchar(150) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT 0,
  `is_private_key` tinyint(1) NOT NULL DEFAULT 0,
  `ip_addresses` text DEFAULT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eco_rest_api_logs`
--

CREATE TABLE `eco_rest_api_logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text DEFAULT NULL,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT 0,
  `date_registered` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stand-in structure for view `eco_revenue_vw`
-- (See below for the actual view)
--
CREATE TABLE `eco_revenue_vw` (
`revenue` varchar(12)
,`amount` double(34,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `eco_royalty_invoices`
--

CREATE TABLE `eco_royalty_invoices` (
  `id` int(11) NOT NULL,
  `campus_id` int(11) NOT NULL,
  `invoice_no` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `status` enum('Unpaid','Paid','Pending','Expired') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Unpaid',
  `maker_id` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `eco_sales_rev_vw`
-- (See below for the actual view)
--
CREATE TABLE `eco_sales_rev_vw` (
`date` int(1)
,`station_gsm` int(1)
,`card_sale` int(1)
,`cash_sale` int(1)
,`total_sale` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `eco_sales_vw`
-- (See below for the actual view)
--
CREATE TABLE `eco_sales_vw` (
`date` int(1)
,`station_gsm` int(1)
,`card_sale` int(1)
,`cash_sale` int(1)
,`total_sale` int(1)
);

-- --------------------------------------------------------

--
-- Table structure for table `eco_selcom_json`
--

CREATE TABLE `eco_selcom_json` (
  `id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `reference_selcom` varchar(45) DEFAULT NULL,
  `validation_request` mediumtext DEFAULT NULL,
  `validation_response` mediumtext DEFAULT NULL,
  `notification_request` mediumtext DEFAULT NULL,
  `notification_response` mediumtext DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_selcom_operators`
--

CREATE TABLE `eco_selcom_operators` (
  `id` int(11) NOT NULL,
  `sno` int(11) NOT NULL,
  `operator` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_selcom_payments`
--

CREATE TABLE `eco_selcom_payments` (
  `id` int(11) NOT NULL,
  `eco_ref` varchar(45) DEFAULT NULL,
  `operator` varchar(45) DEFAULT NULL,
  `msisdn` varchar(45) DEFAULT NULL,
  `transid_operator` varchar(45) DEFAULT NULL,
  `reference_selcom` varchar(45) DEFAULT NULL,
  `utilityref_card_no` varchar(45) DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `prom_amt` decimal(15,2) DEFAULT 0.00,
  `timestamp_selcom` datetime DEFAULT NULL,
  `v_status` varchar(15) DEFAULT NULL,
  `n_status` varchar(10) DEFAULT NULL,
  `sub_id` int(11) DEFAULT NULL,
  `remote_ip` varchar(45) DEFAULT NULL,
  `validator_status` varchar(5) NOT NULL DEFAULT '104',
  `val_comm_ref` varchar(100) DEFAULT NULL,
  `reversed` enum('N','Y') NOT NULL DEFAULT 'N',
  `comment` tinytext DEFAULT NULL,
  `maker_id` varchar(45) NOT NULL DEFAULT 'SYSTEM',
  `channel_id` varchar(20) NOT NULL DEFAULT 'SELCOM',
  `sweep` char(1) DEFAULT NULL,
  `recon_post` varchar(50) DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_selcom_payments_arch`
--

CREATE TABLE `eco_selcom_payments_arch` (
  `id` int(11) NOT NULL,
  `eco_ref` varchar(45) DEFAULT NULL,
  `operator` varchar(45) DEFAULT NULL,
  `msisdn` varchar(45) DEFAULT NULL,
  `transid_operator` varchar(45) DEFAULT NULL,
  `reference_selcom` varchar(45) DEFAULT NULL,
  `utilityref_card_no` varchar(45) DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `prom_amt` decimal(15,2) DEFAULT 0.00,
  `timestamp_selcom` datetime DEFAULT NULL,
  `v_status` varchar(15) DEFAULT NULL,
  `n_status` varchar(10) DEFAULT NULL,
  `sub_id` int(11) DEFAULT NULL,
  `remote_ip` varchar(45) DEFAULT NULL,
  `validator_status` varchar(5) NOT NULL DEFAULT '104',
  `val_comm_ref` varchar(100) DEFAULT NULL,
  `reversed` enum('N','Y') NOT NULL DEFAULT 'N',
  `comment` tinytext DEFAULT NULL,
  `maker_id` varchar(45) NOT NULL DEFAULT 'SYSTEM',
  `channel_id` varchar(20) NOT NULL DEFAULT 'SELCOM',
  `sweep` char(1) DEFAULT NULL,
  `recon_post` varchar(50) DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `arch_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_selcom_recon`
--

CREATE TABLE `eco_selcom_recon` (
  `id` int(11) NOT NULL,
  `report_date` varchar(30) DEFAULT NULL,
  `transtype` varchar(10) DEFAULT NULL,
  `transid` varchar(50) DEFAULT NULL,
  `reference` varchar(30) DEFAULT NULL,
  `amount` decimal(20,3) DEFAULT NULL,
  `obal` decimal(20,3) DEFAULT NULL,
  `cbal` decimal(20,3) DEFAULT NULL,
  `charge` decimal(15,3) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `Channel` varchar(30) DEFAULT NULL,
  `matched` enum('Y','N') DEFAULT NULL,
  `processed` enum('Y','N') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_selcom_response_code`
--

CREATE TABLE `eco_selcom_response_code` (
  `id` int(11) NOT NULL,
  `e_code` varchar(45) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_sms_outgoing`
--

CREATE TABLE `eco_sms_outgoing` (
  `id` int(11) NOT NULL,
  `receiver` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `maker_id` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eco_stations`
--

CREATE TABLE `eco_stations` (
  `id` int(11) NOT NULL,
  `station_no` int(11) DEFAULT NULL,
  `station_code` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` enum('2 Doors','1 Door') COLLATE utf8_unicode_ci DEFAULT '2 Doors',
  `gsm` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `station_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `tfda_permit_no` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `campus_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `inst_type` enum('University','Community','Merchant') COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_water` enum('Fresh Water','Salty Water') COLLATE utf8_unicode_ci DEFAULT NULL,
  `operational_status` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `record_stat` enum('O','C','D') COLLATE utf8_unicode_ci NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eco_station_maint_statements_hist`
--

CREATE TABLE `eco_station_maint_statements_hist` (
  `id` int(11) NOT NULL,
  `station_gsm` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `statement_no` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eco_station_operate_stat`
--

CREATE TABLE `eco_station_operate_stat` (
  `id` int(11) NOT NULL,
  `name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(3) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eco_station_sales_hist`
--

CREATE TABLE `eco_station_sales_hist` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `station_gsm` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `d1_open_bal_card` double(20,2) DEFAULT 0.00,
  `d1_closing_bal_card` double(20,2) DEFAULT 0.00,
  `d1_open_bal_cash` double(20,2) DEFAULT 0.00,
  `d1_closing_bal_cash` double(20,2) DEFAULT 0.00,
  `d2_open_bal_card` double(20,2) DEFAULT 0.00,
  `d2_closing_bal_card` double(20,2) DEFAULT 0.00,
  `d2_open_bal_cash` double(20,2) DEFAULT 0.00,
  `d2_closing_bal_cash` double(20,2) DEFAULT 0.00,
  `total_sales` decimal(30,2) DEFAULT NULL,
  `royalty` decimal(5,2) NOT NULL,
  `royalty_status` enum('Unpaid','Paid','Invoiced') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Unpaid',
  `royalty_invoice_id` int(11) DEFAULT NULL,
  `comments` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `maker_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eco_station_sales_hist_log`
--

CREATE TABLE `eco_station_sales_hist_log` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `sale_date` date DEFAULT NULL,
  `station_gsm` varchar(45) DEFAULT NULL,
  `action` varchar(45) DEFAULT NULL,
  `command` varchar(45) DEFAULT NULL,
  `d1_open_bal_card` decimal(10,0) DEFAULT NULL,
  `d1_open_bal_cash` decimal(10,0) DEFAULT NULL,
  `d2_open_bal_card` decimal(10,0) DEFAULT NULL,
  `d2_open_bal_cash` decimal(10,0) DEFAULT NULL,
  `d1_closing_bal_card` decimal(10,0) DEFAULT NULL,
  `d1_closing_bal_cash` decimal(10,0) DEFAULT NULL,
  `d2_closing_bal_card` decimal(10,0) DEFAULT NULL,
  `d2_closing_bal_cash` decimal(10,0) DEFAULT NULL,
  `total_sales` decimal(30,2) DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_station_sales_hist_rev`
--

CREATE TABLE `eco_station_sales_hist_rev` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `station_gsm` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `d1_open_bal_card` double(20,2) DEFAULT 0.00,
  `d1_closing_bal_card` double(20,2) DEFAULT 0.00,
  `d1_open_bal_cash` double(20,2) DEFAULT 0.00,
  `d1_closing_bal_cash` double(20,2) DEFAULT 0.00,
  `d2_open_bal_card` double(20,2) DEFAULT 0.00,
  `d2_closing_bal_card` double(20,2) DEFAULT 0.00,
  `d2_open_bal_cash` double(20,2) DEFAULT 0.00,
  `d2_closing_bal_cash` double(20,2) DEFAULT 0.00,
  `total_sales` decimal(30,2) DEFAULT 0.00,
  `royalty` decimal(5,2) DEFAULT 0.00,
  `royalty_status` enum('Unpaid','Paid','Invoiced') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Unpaid',
  `royalty_invoice_id` int(11) DEFAULT NULL,
  `comments` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `maker_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_station_utility_bills`
--

CREATE TABLE `eco_station_utility_bills` (
  `id` int(11) NOT NULL,
  `station_id` int(11) NOT NULL,
  `utility_type` varchar(10) DEFAULT NULL,
  `meter_readings_opening` decimal(20,2) DEFAULT NULL,
  `meter_readings` decimal(20,2) DEFAULT NULL,
  `units` decimal(10,2) DEFAULT NULL,
  `unit_price` decimal(20,2) DEFAULT NULL,
  `total_cost` decimal(20,2) DEFAULT NULL,
  `charge_month` varchar(10) DEFAULT NULL,
  `yearmonth` int(11) NOT NULL,
  `reading_date` date DEFAULT NULL,
  `status` enum('Unpaid','Invoiced','Paid') DEFAULT 'Unpaid',
  `invoice_id` int(11) DEFAULT NULL,
  `maker_id` varchar(45) NOT NULL,
  `date_registered` datetime DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_streets`
--

CREATE TABLE `eco_streets` (
  `id` int(11) NOT NULL,
  `street_name` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `district` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `region` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eco_student_courses`
--

CREATE TABLE `eco_student_courses` (
  `id` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_subscribers`
--

CREATE TABLE `eco_subscribers` (
  `id` int(11) NOT NULL,
  `enc_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `sub_account` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sub_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('M','F') COLLATE utf8_unicode_ci NOT NULL,
  `card_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `campus_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `household_size` int(3) DEFAULT NULL,
  `street` int(11) DEFAULT NULL,
  `sub_registration_date` date DEFAULT NULL,
  `date_last_topup` date DEFAULT NULL,
  `record_stat` enum('OPEN','CLOSED','SUSPENDED') COLLATE utf8_unicode_ci NOT NULL,
  `comments` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `registered_by` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sub_stat_dormancy` enum('G','N','D','E') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `subscription_plan` enum('Fee','Free') COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_fee_amount` decimal(10,2) DEFAULT NULL,
  `free_promo_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `curr_course_year` tinyint(1) DEFAULT NULL,
  `total_course_years` tinyint(1) DEFAULT NULL,
  `min_recharge_limit` decimal(20,2) DEFAULT NULL,
  `recharge_limit` decimal(20,2) NOT NULL DEFAULT 50000.00,
  `id_type` int(11) NOT NULL DEFAULT 6,
  `id_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ecobox_reg` enum('New','Existing') COLLATE utf8_unicode_ci DEFAULT 'New',
  `ecobox_pass` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ecobox_otp` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ecomeal_balance` decimal(20,5) DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eco_subscribers_dump`
--

CREATE TABLE `eco_subscribers_dump` (
  `id` int(11) NOT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `sub_name` varchar(70) DEFAULT NULL,
  `card_no` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `reg_date` date DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `campus` varchar(45) DEFAULT NULL,
  `reg_plan` enum('Fee','Free') DEFAULT NULL,
  `sub_fee_amt` decimal(10,2) DEFAULT NULL,
  `top_up` decimal(10,2) DEFAULT NULL,
  `pos` varchar(45) DEFAULT NULL,
  `topup_cat` varchar(45) DEFAULT NULL,
  `reg_timestamp` varchar(45) DEFAULT NULL,
  `reg_by` varchar(45) DEFAULT NULL,
  `upload_status` varchar(45) DEFAULT 'Pending',
  `error` text DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_update` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_sub_acc_statements_hist`
--

CREATE TABLE `eco_sub_acc_statements_hist` (
  `id` int(11) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `user_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `statement_no` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eco_sub_card_change_hist`
--

CREATE TABLE `eco_sub_card_change_hist` (
  `id` int(11) NOT NULL,
  `card_no` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `sub_id` int(11) DEFAULT NULL,
  `lost` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `damaged` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `maker_id` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eco_sub_card_renewal`
--

CREATE TABLE `eco_sub_card_renewal` (
  `id` int(11) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `old_card` varchar(45) NOT NULL,
  `new_card` varchar(45) NOT NULL,
  `plan` enum('Free','Paid') NOT NULL,
  `fee` decimal(10,2) DEFAULT NULL,
  `reason` int(11) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `cashier` varchar(30) DEFAULT NULL,
  `maker_id` varchar(45) NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_sub_card_renewal_reasons`
--

CREATE TABLE `eco_sub_card_renewal_reasons` (
  `id` int(11) NOT NULL,
  `reason` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `eco_sub_card_vw`
-- (See below for the actual view)
--
CREATE TABLE `eco_sub_card_vw` (
`sub_id` int(1)
,`sub_name` int(1)
,`card_no` int(1)
,`card_luhn` int(1)
,`min_recharge_limit` int(1)
,`recharge_limit` int(1)
,`card_status` int(1)
,`sub_status` int(1)
,`sub_category` int(1)
,`campus_code` int(1)
,`sub_mobile` int(1)
,`sub_email` int(1)
,`id_type` int(1)
,`id_number` int(1)
,`sub_record_stat` int(1)
,`ecobox_reg` int(1)
,`ecobox_pass` int(1)
,`ecomeal_balance` int(1)
);

-- --------------------------------------------------------

--
-- Table structure for table `eco_sub_category`
--

CREATE TABLE `eco_sub_category` (
  `id` int(11) NOT NULL,
  `category` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `eco_sub_fee_vw`
-- (See below for the actual view)
--
CREATE TABLE `eco_sub_fee_vw` (
`sub_registration_date` date
,`subscription_plan` enum('Fee','Free')
,`sub_count` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `eco_sub_inactive_status`
--

CREATE TABLE `eco_sub_inactive_status` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `record_stat` enum('CLOSED','SUSPENDED') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `eco_sub_stat_vw`
-- (See below for the actual view)
--
CREATE TABLE `eco_sub_stat_vw` (
`category` varchar(20)
,`sub_stat_dormancy` enum('G','N','D','E')
,`sub_count` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `eco_system_parameters`
--

CREATE TABLE `eco_system_parameters` (
  `id` int(11) NOT NULL,
  `system_name` varchar(30) NOT NULL,
  `company_name` varchar(70) NOT NULL,
  `address_line_1` varchar(50) NOT NULL,
  `address_line_2` varchar(50) DEFAULT NULL,
  `address_line_3` varchar(50) DEFAULT NULL,
  `address_line_4` varchar(50) DEFAULT NULL,
  `address_line_5` varchar(50) DEFAULT NULL,
  `physical_address` varchar(50) NOT NULL,
  `telephone_no` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `website` varchar(70) DEFAULT NULL,
  `customer_care_1` varchar(20) DEFAULT NULL,
  `customer_care_2` varchar(20) DEFAULT NULL,
  `ic_card_pid` int(11) DEFAULT 1299,
  `last_updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `maker_id` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_test`
--

CREATE TABLE `eco_test` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `date_reg` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `eco_test_vw`
-- (See below for the actual view)
--
CREATE TABLE `eco_test_vw` (
`id` int(1)
,`name` int(1)
,`username` int(1)
,`password` int(1)
,`department` int(1)
,`campus` int(1)
,`user_group` int(1)
,`mobile_no` int(1)
,`email` int(1)
,`photo` int(1)
,`status` int(1)
,`created` int(1)
,`updated` int(1)
,`ip_address` int(1)
,`salt` int(1)
,`activation_code` int(1)
,`forgotten_password_code` int(1)
,`forgotten_password_time` int(1)
,`remember_code` int(1)
,`created_on` int(1)
,`last_login` int(1)
,`active` int(1)
,`company` int(1)
,`date_last_login` int(1)
,`last_login_ip` int(1)
,`session_id` int(1)
,`date_created` int(1)
,`last_pass_change` int(1)
,`next_pass_change` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `eco_today_revenue_vw`
-- (See below for the actual view)
--
CREATE TABLE `eco_today_revenue_vw` (
`report_date` int(1)
,`sub_fee` int(1)
,`sub_fee_count` int(1)
,`pos_recharges` int(1)
,`pos_recharges_count` int(1)
,`mob_recharges` int(1)
,`mob_recharges_count` int(1)
,`val_recharge` int(1)
,`val_recharge_count` int(1)
,`cash_sales` int(1)
,`cash_sales_count` int(1)
,`card_renewal` int(1)
,`card_renewal_count` int(1)
);

-- --------------------------------------------------------

--
-- Table structure for table `eco_topup_category`
--

CREATE TABLE `eco_topup_category` (
  `id` int(11) NOT NULL,
  `category` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eco_topup_pos`
--

CREATE TABLE `eco_topup_pos` (
  `id` int(11) NOT NULL,
  `pos_name` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `campus_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('O','C') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'O',
  `sort` int(11) DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `eco_topup_vw`
-- (See below for the actual view)
--
CREATE TABLE `eco_topup_vw` (
`trn_date` date
,`total_topup` double(19,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `eco_transactions`
--

CREATE TABLE `eco_transactions` (
  `id` int(11) NOT NULL,
  `trn_ref_no` varchar(30) DEFAULT NULL,
  `sub_id` int(11) DEFAULT NULL,
  `card_no` varchar(15) DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `amount` decimal(20,5) DEFAULT NULL,
  `product_code` varchar(20) DEFAULT NULL,
  `channel` varchar(30) DEFAULT NULL,
  `maker` varchar(30) DEFAULT NULL,
  `maker_time` datetime DEFAULT NULL,
  `authorizer` varchar(30) DEFAULT NULL,
  `authorizer_time` datetime DEFAULT NULL,
  `tra_flag` enum('N','Y') DEFAULT 'N',
  `tra_receipt` varchar(30) DEFAULT NULL,
  `tra_qrcode` text DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_tra_request`
--

CREATE TABLE `eco_tra_request` (
  `id` int(11) NOT NULL,
  `request` text DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_tra_response`
--

CREATE TABLE `eco_tra_response` (
  `id` int(11) NOT NULL,
  `response` text DEFAULT NULL,
  `topup_id` int(11) DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_uat_bottles_repayment`
--

CREATE TABLE `eco_uat_bottles_repayment` (
  `id` int(11) NOT NULL,
  `loan_id` int(11) NOT NULL,
  `amount` decimal(20,5) DEFAULT NULL,
  `mobile_payment_id` int(11) DEFAULT NULL,
  `topup_recharge_id` int(11) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_uat_bottles_sold`
--

CREATE TABLE `eco_uat_bottles_sold` (
  `id` int(11) NOT NULL,
  `bottle_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_price` decimal(20,5) DEFAULT NULL,
  `loan_amount` decimal(20,5) DEFAULT NULL,
  `collected_amount` decimal(20,5) NOT NULL DEFAULT 0.00000,
  `mobile` varchar(20) DEFAULT NULL,
  `sub_id` int(11) DEFAULT NULL,
  `card_no` varchar(15) DEFAULT NULL,
  `rate` decimal(10,2) NOT NULL,
  `cashier` varchar(30) NOT NULL,
  `sell_date` date DEFAULT NULL,
  `loan_end_date` date DEFAULT NULL,
  `status` enum('Active','Full Paid','Loss','Fraud') NOT NULL DEFAULT 'Active',
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_uat_card_topup`
--

CREATE TABLE `eco_uat_card_topup` (
  `id` int(11) NOT NULL,
  `card_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sub_id` int(11) DEFAULT NULL,
  `trn_ref_no` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `amount` double(20,2) NOT NULL,
  `trn_status` enum('SUCCESS','FAIL') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trn_date` date NOT NULL,
  `pos` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `maker_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SYSTEM',
  `tra_receipt_no` varchar(30) DEFAULT NULL,
  `tra_verification` varchar(70) DEFAULT NULL,
  `tra_response_time` timestamp NULL DEFAULT NULL,
  `tra_receipt_link` text DEFAULT NULL,
  `tra_qrcode_url` text DEFAULT NULL,
  `vfd_api_req` text DEFAULT NULL,
  `vfd_api_res` text DEFAULT NULL,
  `vfd_posted` enum('Y','N') DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `checker` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_uat_selcom_json`
--

CREATE TABLE `eco_uat_selcom_json` (
  `id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `reference_selcom` varchar(45) DEFAULT NULL,
  `validation_request` mediumtext DEFAULT NULL,
  `validation_response` mediumtext DEFAULT NULL,
  `notification_request` mediumtext DEFAULT NULL,
  `notification_response` mediumtext DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_uat_selcom_payments`
--

CREATE TABLE `eco_uat_selcom_payments` (
  `id` int(11) NOT NULL,
  `eco_ref` varchar(45) DEFAULT NULL,
  `operator` varchar(45) DEFAULT NULL,
  `msisdn` varchar(45) DEFAULT NULL,
  `transid_operator` varchar(45) DEFAULT NULL,
  `reference_selcom` varchar(45) DEFAULT NULL,
  `utilityref_card_no` varchar(45) DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `prom_amt` decimal(15,2) DEFAULT 0.00,
  `timestamp_selcom` datetime DEFAULT NULL,
  `v_status` varchar(15) DEFAULT NULL,
  `n_status` varchar(10) DEFAULT NULL,
  `sub_id` int(11) DEFAULT NULL,
  `remote_ip` varchar(45) DEFAULT NULL,
  `validator_status` varchar(5) NOT NULL DEFAULT '104',
  `val_comm_ref` varchar(100) DEFAULT NULL,
  `reversed` enum('N','Y') NOT NULL DEFAULT 'N',
  `comment` tinytext DEFAULT NULL,
  `maker_id` varchar(45) NOT NULL DEFAULT 'SYSTEM',
  `recon_post` varchar(50) DEFAULT NULL,
  `channel_id` varchar(20) NOT NULL DEFAULT 'SELCOM',
  `sweep` char(1) DEFAULT NULL,
  `validation_request` text DEFAULT NULL,
  `validation_response` text DEFAULT NULL,
  `notification_request` text DEFAULT NULL,
  `notification_response` text DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_uat_sms_outgoing`
--

CREATE TABLE `eco_uat_sms_outgoing` (
  `id` int(11) NOT NULL,
  `receiver` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `maker_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_uat_transactions`
--

CREATE TABLE `eco_uat_transactions` (
  `id` int(11) NOT NULL,
  `trn_ref_no` varchar(30) DEFAULT NULL,
  `sub_id` int(11) DEFAULT NULL,
  `card_no` varchar(15) DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `amount` decimal(20,5) DEFAULT NULL,
  `product_code` varchar(20) DEFAULT NULL,
  `channel` varchar(30) DEFAULT NULL,
  `maker` varchar(30) DEFAULT NULL,
  `maker_time` datetime DEFAULT NULL,
  `authorizer` varchar(30) DEFAULT NULL,
  `authorizer_time` datetime DEFAULT NULL,
  `tra_flag` enum('N','Y') DEFAULT 'N',
  `tra_receipt` varchar(30) DEFAULT NULL,
  `tra_qrcode` text DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_uat_tra_response`
--

CREATE TABLE `eco_uat_tra_response` (
  `id` int(11) NOT NULL,
  `response` text DEFAULT NULL,
  `topup_id` int(11) DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_uat_udf_products`
--

CREATE TABLE `eco_uat_udf_products` (
  `id` int(11) NOT NULL DEFAULT 0,
  `product_name` varchar(50) DEFAULT NULL,
  `vat_enabled` enum('Y','N') DEFAULT NULL,
  `product_code` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_uat_white_list_ips`
--

CREATE TABLE `eco_uat_white_list_ips` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(30) DEFAULT NULL,
  `category` enum('MOBILE_PAYMENTS','OTHERS') DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_udf_products`
--

CREATE TABLE `eco_udf_products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `vat_enabled` enum('Y','N') DEFAULT NULL,
  `product_code` varchar(20) NOT NULL,
  `last_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_usergroups`
--

CREATE TABLE `eco_usergroups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `group_description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_dashboard` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `eco_usergroups`
--

INSERT INTO `eco_usergroups` (`id`, `group_name`, `group_description`, `group_dashboard`) VALUES
(1, 'Admin', 'System Administrator', 5),
(4, 'Correspondence Manager', 'A Representative of the hosting organization', 1),
(6, 'Instrumentation Officer', 'Attends all technical issues of the Branch', NULL),
(8, 'Administrative Assistant', 'Entitled to view everything', 5),
(9, 'Business Development Manager', 'Entitled to view everything', NULL),
(11, 'Director', 'For all Ecowater International Directors', 5),
(13, 'Sales Intern', 'For all sales interns', NULL),
(14, 'Investor', 'For all Partial Franchising Investors', 6),
(15, 'Quality Control', 'Quality control and monitoring officers', 5),
(16, 'Instrumentation Manager', 'Instrumentation', 5),
(17, 'Customers Support', 'All data officers', NULL),
(18, 'Cashier', 'Responsible for adding recharges and registration of new subscribers', 7),
(19, 'Test Group', 'Test Group', 7),
(20, 'Developer', 'For different development purposes', NULL),
(21, 'Sales Manager', 'For sales team', NULL),
(22, 'Sales and Marketing', 'For all sales and marketing team', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eco_usergroupsaccess`
--

CREATE TABLE `eco_usergroupsaccess` (
  `id` int(11) NOT NULL,
  `group_name` int(11) NOT NULL,
  `menu_name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `eco_usergroupsaccess`
--

INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES
(1, 1, 6),
(3, 2, 5),
(4, 2, 11),
(5, 2, 10),
(39, 19, 19),
(40, 19, 11),
(50, 21, 7),
(51, 21, 19),
(52, 21, 11),
(64, 24, 24),
(65, 24, 29),
(66, 25, 11),
(67, 26, 31),
(68, 24, 11),
(70, 24, 38),
(71, 27, 38),
(72, 27, 39),
(73, 24, 39),
(74, 24, 40),
(75, 24, 41),
(76, 24, 44),
(77, 24, 45),
(78, 27, 44),
(79, 27, 45),
(80, 27, 41),
(81, 24, 43),
(82, 27, 43),
(83, 24, 46),
(84, 23, 39),
(85, 28, 11),
(86, 28, 47),
(87, 23, 50),
(88, 27, 50),
(89, 29, 50),
(90, 30, 50),
(91, 31, 50),
(92, 24, 50),
(93, 24, 52),
(94, 6, 27),
(171, 10, 30),
(172, 10, 29),
(173, 10, 39),
(174, 10, 54),
(175, 10, 55),
(176, 10, 56),
(177, 10, 26),
(178, 10, 28),
(180, 10, 58),
(181, 10, 53),
(182, 10, 33),
(212, 12, 29),
(213, 12, 33),
(214, 12, 30),
(247, 17, 28),
(250, 17, 62),
(251, 17, 30),
(252, 17, 39),
(254, 17, 78),
(257, 11, 30),
(258, 11, 62),
(259, 11, 39),
(260, 11, 38),
(261, 11, 80),
(262, 11, 26),
(263, 11, 28),
(264, 11, 78),
(265, 11, 33),
(267, 11, 59),
(269, 11, 27),
(270, 11, 24),
(271, 11, 25),
(275, 17, 25),
(276, 17, 33),
(282, 15, 27),
(288, 9, 30),
(289, 9, 39),
(290, 9, 25),
(291, 9, 71),
(292, 9, 69),
(302, 8, 29),
(303, 8, 62),
(304, 8, 24),
(305, 8, 25),
(306, 8, 28),
(307, 8, 78),
(308, 8, 27),
(309, 8, 71),
(311, 8, 38),
(312, 8, 33),
(313, 8, 33),
(314, 8, 80),
(315, 8, 26),
(316, 8, 69),
(317, 8, 39),
(318, 8, 37),
(319, 8, 30),
(320, 16, 29),
(321, 16, 62),
(322, 16, 30),
(323, 16, 39),
(324, 16, 25),
(326, 16, 33),
(328, 16, 38),
(329, 16, 80),
(330, 16, 26),
(337, 11, 81),
(345, 11, 58),
(346, 17, 58),
(347, 11, 85),
(351, 11, 60),
(352, 11, 92),
(353, 11, 87),
(354, 11, 91),
(355, 11, 93),
(356, 17, 91),
(358, 17, 85),
(360, 9, 93),
(361, 9, 53),
(362, 8, 85),
(363, 8, 91),
(364, 11, 94),
(365, 8, 94),
(367, 8, 92),
(368, 8, 93),
(369, 11, 98),
(370, 11, 97),
(371, 17, 98),
(372, 17, 99),
(373, 22, 99),
(374, 22, 98),
(375, 22, 62),
(376, 22, 30),
(377, 22, 30),
(378, 9, 96),
(379, 9, 99),
(380, 9, 98),
(381, 9, 85),
(382, 9, 94),
(383, 9, 58),
(384, 17, 95),
(385, 15, 100),
(386, 15, 26),
(387, 15, 28),
(388, 17, 78),
(390, 17, 70),
(391, 9, 26),
(392, 9, 31),
(393, 9, 80);

-- --------------------------------------------------------

--
-- Table structure for table `eco_users`
--

CREATE TABLE `eco_users` (
  `id` int(11) NOT NULL,
  `name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `department` int(11) NOT NULL,
  `campus` int(11) NOT NULL DEFAULT 0,
  `user_group` int(11) NOT NULL,
  `mobile_no` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activation_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forgotten_password_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED NOT NULL,
  `remember_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `company` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_last_login` datetime DEFAULT NULL,
  `last_login_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_id` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `last_pass_change` date DEFAULT NULL,
  `next_pass_change` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `eco_users`
--

INSERT INTO `eco_users` (`id`, `name`, `username`, `password`, `department`, `campus`, `user_group`, `mobile_no`, `email`, `photo`, `status`, `created`, `updated`, `ip_address`, `salt`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `company`, `date_last_login`, `last_login_ip`, `session_id`, `date_created`, `last_pass_change`, `next_pass_change`) VALUES
(1, 'Innocent Ruseke', 'admin', '$2y$08$b6r.wtHGFxFsy0N5B.7E1u6nAGZNp3/a72fdWOlr8MyhRAbw5cK8O', 0, 70, 1, '255767821881', 'rusekeinno@gmail.com', '43s5ekzy8tusggg.jpg', 'Active', '2016-04-24 18:00:00', '2022-09-17 08:16:07', '', NULL, NULL, NULL, 0, NULL, 0, 1663402567, 1, NULL, '2022-09-17 11:16:07', '::1', '73u2euisqdeaq2lc3lhaq5ajpmp82las', '2019-06-17 12:03:42', '2022-04-09', '2025-12-23'),
(5, 'Steven Matiku', 'smatiku', '$2y$08$6DFcM1ufXk7GctO5q8fmseZvOwknGtJKjABN5/Wua3D5kEAHe7sNm', 1, 7, 1, '07111111111', 'stevenart@rocketmail.com', NULL, 'Active', '2018-02-06 18:00:00', '2022-09-15 02:24:35', '', NULL, NULL, NULL, 0, NULL, 0, 1663219475, 1, NULL, '2022-09-15 08:24:35', '197.250.226.66', '29bp14t4fpsgf5gr71anp3r04gfvm7h5', '2019-06-17 12:03:42', '2021-05-01', '2025-12-10'),
(6, 'Hellen Mamkwe', 'instrument', '$2y$08$g1yiJUx.PH4YZQWTcEcnmO9W64abL65r3EADzlLdmuyLZ1Utx5UHu', 0, 0, 6, NULL, 'maganga@smartfittanzania.co.tz', NULL, 'Active', '2018-08-24 13:08:07', '2019-07-13 15:40:44', '196.249.102.252', NULL, '346ad08b63503df4972130f04a07710ad866f092', NULL, 0, NULL, 1535126887, 1535126917, 0, NULL, NULL, NULL, NULL, '2019-06-17 12:03:42', NULL, '2019-07-15'),
(7, 'Nasra Nassor', 'nanah', '$2y$08$UWkJRD5aluJD.B3iZyyis.4kULgkwME86EJeMtoQXOidv1n5.Z9JS', 0, 0, 13, '', 'finance@smartfittanzania.co.tz', NULL, 'Active', '2018-09-10 13:18:33', '2021-09-11 15:24:21', '196.249.100.64', NULL, '969597b37f457d4d69db883ac0e8109b6dbdbfa8', NULL, 0, NULL, 1536596313, 1564138538, 0, NULL, '2019-07-26 13:55:38', NULL, NULL, '2019-06-17 12:03:42', '2019-07-17', '2019-08-16'),
(8, 'Faustine Matiku', 'fmatiku', '$2y$08$c3gQ1fHMER6yyq72N5WUq.SD6i.N5VL5HrHuW7R5nFTkjSMKejshu', 0, 0, 8, NULL, 'fmatiku@smartfittanzania.co.tz', NULL, 'Active', '2018-09-23 02:29:33', '2020-08-24 04:14:12', '169.255.184.84', NULL, '9df2061e32dd7dc89564cf4a49e90280c3f4eaab', NULL, 0, NULL, 1537680573, 1540097540, 0, NULL, NULL, NULL, NULL, '2019-06-17 12:03:42', NULL, '2019-07-15'),
(9, 'Gary Chang', 'gchang', '$2y$08$1fNnjVCLB4mQNM.hDNLb5OXPbw8JFJs1i//D6ySUcgTm6Mk2Er8Uy', 0, 0, 1, '', 'gchang@smartfittanzania.co.tz', NULL, 'Active', '2018-09-24 11:30:31', '2021-09-11 15:22:26', '169.255.184.171', NULL, 'e3facc9594754d6b37485d63ef88334988c861ff', NULL, 0, NULL, 1537799431, 1622365814, 0, NULL, '2021-05-30 12:10:14', NULL, 'aauu9sf0hjf87v0i5lkr0htfg2qub5bo', '2019-06-17 12:03:42', '2021-05-23', '2021-06-22'),
(10, 'Kelvin Daudi', 'kelvin', '$2y$08$LWbjL6oRJ5Vd7TCpQjaw8.SgHC459SZAWuz8cG6P832sRJ2J/JXe2', 0, 0, 11, NULL, 'kelvin@smartfitanzania.co.tz', NULL, 'Active', '2018-09-26 07:34:13', '2020-08-24 04:14:21', '169.255.184.204', NULL, '11a790c5f09cf5a174bae7bf7208af5860e53ae8', NULL, 0, NULL, 1537958053, 1580195408, 0, NULL, '2020-01-28 10:10:08', NULL, NULL, '2019-06-17 12:03:42', '2020-01-21', '2020-02-20'),
(11, 'Dennis Maganga', 'dmaganga', '$2y$08$sBpddajE7I9iEkc1huHTJOnNpUy/ca7FpUC6lx0JYiV5DH4jxFXKW', 0, 0, 9, NULL, 'magangad7@gmail.com', NULL, 'Active', '2018-10-03 13:22:11', '2021-04-29 06:01:13', '196.249.102.46', NULL, 'a5b7ad05bcabc9b6ea18b04f7ef8d0da269a6313', NULL, 0, NULL, 1538583731, 1554231732, 0, NULL, NULL, NULL, NULL, '2019-06-17 12:03:42', NULL, '2019-07-15'),
(12, 'Stanley Magesa', 'magesa', '$2y$08$HniBGYBuVJ9LU5IM.ZHZguACRecmbq05DA0nvAgdPGgIvZc.DfQaK', 0, 0, 1, '', 'stanleymagesa@gmail.com', NULL, 'Active', '2018-10-05 01:09:01', '2022-03-02 07:45:36', '196.249.103.12', NULL, '6edf5913e05a0d53fa952230658a595d8621d7b7', NULL, 0, NULL, 1538712541, 1643298369, 0, NULL, '2022-01-27 18:46:09', '197.250.97.83', '338ot8g8focbu3u218b34e5m3o2e4jrs', '2019-06-17 12:03:42', '2022-01-27', '2022-02-26'),
(13, 'Franco Bakari', 'bakari', '$2y$08$i4OLkEPbWVC9CwQKoXFkbuI75/vkKcuHb/BrcFw7qxJE3iQNMzdCG', 0, 1, 18, '', 'franco@smartfittanzania.co.tz', NULL, 'Active', '2018-10-12 01:06:44', '2022-09-14 09:43:04', '196.249.102.155', NULL, NULL, NULL, 0, NULL, 1539317204, 1663159383, 1, NULL, '2022-09-14 15:43:03', '197.250.229.212', '599m90fje3b3kb2imhu3gsfloiphrlh8', '2019-06-17 12:03:42', '2022-09-14', '2022-10-14'),
(14, 'Victor Venance', 'victor2018', '$2y$08$NR9kz8jp34SfTFLsbCtNmeWcIbSjS/t19Ge2hCiY2TVd.7vcJk1hK', 0, 1, 13, '', 'victor@ecowaterinternational.com', NULL, 'Active', '2018-10-12 01:10:08', '2021-09-11 15:20:12', '196.249.102.155', NULL, 'cd30f0eea3f73d9854e3317a8223f5dd7e270a17', NULL, 0, NULL, 1539317406, 1597154687, 0, NULL, '2020-08-11 17:04:47', NULL, NULL, '2019-06-17 12:03:42', '2020-08-11', '2020-09-10'),
(15, 'Magreth Semkuruto', 'saut1', '$2y$08$x5kEwU7YwQxp1FboflMvFuE20CAsDyD/irmE8qkGG/YKQUottoaRe', 0, 1, 4, '', 'semkurutom@gmail.com', NULL, 'Active', '2018-11-09 03:36:48', '2022-04-11 06:50:04', '196.249.102.31', NULL, NULL, NULL, 0, NULL, 1541745408, 1649670604, 1, NULL, '2022-04-11 12:50:04', '41.93.80.37', '1qokuu1u2j5ijjnq4pd809n9s8psf4ou', '2019-06-17 12:03:42', '2022-04-11', '2022-05-11'),
(16, 'Nitesh Shail', 'nshail2019', '$2y$08$2yDjRneJcZASOb8WWXvCQ.8R8tkcUaNbv5nIdtjMCwwtE11RfRBH.', 0, 0, 11, '', 'nshail@aquasolisglobal.com', NULL, 'Active', '2019-06-15 06:00:21', '2022-09-14 00:27:25', '197.250.231.174', NULL, NULL, NULL, 0, NULL, 1560589221, 1663126045, 1, NULL, '2022-09-14 06:27:25', '49.36.218.8', 't9clcm3goo0qebuvrccl6m24vq16ji2f', '2019-06-17 12:03:42', '2022-09-14', '2022-10-14'),
(17, 'Ole Bastian', 'ole2019', '$2y$08$HTnuuYz/o0riX18285G90usca79KyDckFyxpLfrDC9NB3Ed7hnJFS', 0, 0, 11, NULL, 'contact@aquasolisglobal.com', NULL, 'Active', '2019-06-15 06:35:37', '2019-08-03 03:55:31', '197.250.231.174', NULL, '32f1f322c0f30d94abb35737b8221927b62fa277', NULL, 0, NULL, 1560591337, 1561217166, 0, NULL, '2019-06-22 18:26:06', NULL, NULL, '2019-06-17 12:03:42', NULL, '2019-07-15'),
(18, 'Frank Mkunde', 'mkunde2019', '$2y$08$SOrTwcaV0JWXFrJ9lat9heUHG8NsvBwn9e2xE5wq2nrYJO23043Yy', 0, 0, 18, '', 'mkunde@ecowaterinternational.com', NULL, 'Active', '2019-08-06 06:08:26', '2022-04-08 04:13:35', '196.249.103.19', NULL, NULL, NULL, 0, NULL, 1565082506, 1649402015, 1, NULL, '2022-04-08 10:13:35', '197.250.61.208', '0car185tq63pip891vgclenp2ht0kofo', '2019-08-06 04:08:26', '2022-03-14', '2022-04-13'),
(19, 'Diana Humphrey', 'diana2019', '$2y$08$3MlhUrb3muITx.ACKD/dK./M//eOBSBHiB49Km3si/6I04siDljCi', 0, 0, 13, NULL, 'dianahumphrey@gmail.com', NULL, 'Active', '2019-10-13 07:18:37', '2019-10-18 09:30:23', '196.249.102.135', NULL, '472d7005f277968a164bd5adb9aa992d6bfc70f2', NULL, 0, NULL, 1570961917, 1571290989, 0, NULL, '2019-10-17 08:43:09', NULL, NULL, '2019-10-13 10:18:37', '2019-10-13', '2019-11-12'),
(20, 'Happiness Bazil', 'bazil2019', '$2y$08$Ar1ALrdskykT65MWMKiUa.bcqgJCeND8LwHv/KXEtJ5uatzrNQwpS', 0, 1, 13, NULL, 'hap2in1@gmail.com', NULL, 'Active', '2019-10-13 07:23:55', '2021-05-16 08:14:32', '196.249.102.135', NULL, NULL, NULL, 0, NULL, 1570962235, 1611915187, 0, NULL, '2021-01-29 13:13:07', NULL, NULL, '2019-10-13 10:23:55', '2021-01-29', '2021-02-28'),
(21, 'Glory Tarimo', 'gtarimo2019', '$2y$08$SU64os5ANyKRpb/89t4X6OkIqgMZ5kF1qbjDjDcURVmIiiZBB5Iie', 0, 0, 17, '', 'glorytarimo458@gmail.com', NULL, 'Active', '2019-10-14 05:59:49', '2022-09-15 05:26:53', '196.249.102.164', NULL, NULL, NULL, 0, NULL, 1571043589, 1663230413, 1, NULL, '2022-09-15 11:26:53', '197.250.227.233', 'hjut38qd9q7rg49umth6de8c6c4f1jfg', '2019-10-14 08:59:49', '2022-09-14', '2022-10-14'),
(22, 'Anna Tadei', 'anna2019', '$2y$08$V4ayGjlFyVNlgiRPhkiobOQsrBELqwRErv8kQAlYO39axSaG77xW6', 0, 0, 13, NULL, 'anna.gaudensi93@gmail.com', NULL, 'Active', '2019-12-02 07:37:20', '2019-12-04 13:35:09', '197.215.241.233', NULL, 'd8ea9f5549512539b0a65767f12a39f0f480e217', NULL, 0, NULL, 1575283040, 1575452297, 0, NULL, '2019-12-04 12:38:17', NULL, NULL, '2019-12-02 10:37:20', '2019-12-02', '2020-01-01'),
(25, 'Test User', 'test', '$2y$08$rjXfB5/o6NORpdsUyVqATu1Myn5dDAW2LIjYlux29xCEVExTdL0MK', 0, 0, 11, '', 'test@ecowatercloud.com', NULL, 'Active', '2020-02-16 09:29:58', '2021-11-09 07:08:53', '197.250.96.93', NULL, 'e4cfdfcd84c02d10e2f1b7496cf861160df5e46f', NULL, 0, NULL, 1581856198, 1636435272, 0, NULL, '2021-11-09 08:21:12', '197.250.100.44', 'vb22tb3tedndabqbn8rduc02i3ouqr6c', '2020-02-16 12:29:58', '2021-11-09', '2021-12-09'),
(26, 'Amina Hassan', 'amina2020', '$2y$08$fdrQ6PlJimA.3H9d.xfVF.hwvppNVb2b9tc7sJ3jov110aPuGHMEq', 0, 22, 18, '', 'amina@ecowaterinternational.com', NULL, 'Active', '2020-04-09 10:58:02', '2022-08-31 13:32:07', '197.250.230.199', NULL, NULL, NULL, 0, NULL, 1586440682, 1661963527, 1, NULL, '2022-08-31 19:32:07', '197.250.227.11', 's35u6r6pfqgrifu55iass9h2f8a3stmb', '2020-04-09 13:58:02', '2022-08-15', '2022-09-14'),
(27, 'Leticia Lutambi', 'must1', '$2y$08$jtjZ7CSC.AcBZ/VfUQq9GO6NoobdvnKkKhvKSO.WdVUgyGbFq/ZNy', 0, 7, 4, '', 'lucymagese33@gmail.com', NULL, 'Active', '2020-04-30 08:45:01', '2022-09-14 03:21:10', '197.250.101.185', NULL, NULL, NULL, 0, NULL, 1588247101, 1663136470, 1, NULL, '2022-09-14 09:21:10', '41.59.86.254', 'd3ft1d4q23shah50l3of7ideil1vao3k', '2020-04-30 11:45:01', '2022-08-16', '2022-09-15'),
(28, 'Egra Patrick', 'egra2020', '$2y$08$Xjn9EfstCSk5iGxbCmghOOtmtEVEPBehZK83GhcNVufPVOtkV3Meq', 0, 0, 13, '', 'ngoyaegra@gmail.com', NULL, 'Active', '2020-06-08 05:09:32', '2021-10-09 07:11:46', '197.250.226.105', NULL, 'a68abeb79a8896cb776cd9570232227b17e75724', NULL, 0, NULL, 1591603772, 1591697604, 0, NULL, '2020-06-09 13:13:24', NULL, NULL, '2020-06-08 08:09:32', '2020-06-08', '2020-07-08'),
(29, 'Johnson Shoo', 'UOI2020', '$2y$08$YGmCnB/wrbhNaxxwP2q2tuBQpSfy.ggMcr8TOxGSM900W/qlBDMte', 0, 65, 4, '255768162081', 'johnsonshoo166@gmail.com', NULL, 'Active', '2020-06-10 00:53:48', '2022-08-01 10:19:59', '197.250.226.39', NULL, NULL, NULL, 0, NULL, 1591761228, 1659359999, 1, NULL, '2022-08-01 16:19:59', '41.93.47.131', 'n9jc75rnssnuvmalgo92v26qlr6c1gri', '2020-06-10 03:53:48', '2022-07-25', '2022-08-24'),
(30, 'Catherine Elias', 'cathy2020', '$2y$08$5eDsLraVPCYP4eC5PAXsNui31FjJQTP3jwqUgvVDum.MYT9iiXXWy', 0, 69, 9, '', 'cathy@ecowaterinternational.com', NULL, 'Active', '2020-06-11 04:11:09', '2022-09-14 06:23:32', '197.250.230.135', NULL, NULL, NULL, 0, NULL, 1591859469, 1663147412, 1, NULL, '2022-09-14 12:23:32', '197.250.227.233', 'n2i15d4kpnpkahsljplkhq95vbmm9gin', '2020-06-11 07:11:09', '2022-08-27', '2022-09-26'),
(31, 'Sarah Kessy', 'kessy2020', '$2y$08$rZFSYPJEB6o/HVB63KhyYuUIzXsTLVNXcJMVQxLHBoPWPsmsd18n2', 0, 69, 1, '255762596547', 'sarahkessy123@gmail.com', NULL, 'Active', '2020-06-12 15:20:09', '2022-09-15 02:36:56', '197.215.244.143', NULL, NULL, NULL, 0, NULL, 1591986009, 1663220216, 1, NULL, '2022-09-15 08:36:56', '197.250.101.218', 'laqmsh8qmh34ndi9at7seuubd776ma69', '2020-06-12 18:20:09', '2022-09-01', '2022-10-01'),
(32, 'Juliana Henry', 'juliana2020', '$2y$08$L92zXkrRzzAw/Fequet40OIMq/0qKx1XObYu0OM3mF8sx/ZoazPsm', 0, 69, 17, '', 'juliana@ecowaterinternational.com', NULL, 'Active', '2020-06-14 10:32:20', '2022-07-01 01:31:19', '197.215.246.7', NULL, '569fee14f4b782507ef611629db2285f3dce6557', NULL, 0, NULL, 1592141540, 1656580507, 0, NULL, '2022-06-30 12:15:07', '197.250.230.227', '9hpucsua3jfmm43spp48s9iuk0r90o0j', '2020-06-14 13:32:20', '2022-06-20', '2022-07-20'),
(33, 'Amir R. Shimbo', 'CBE2020', '$2y$08$MJyYYm5F4KN.QKYlkiSx/u6BPENypiIV7pK.1XhDjGsB9p1ehTley', 0, 46, 4, '', 'a.shimbo@cbe.ac.tz', NULL, 'Active', '2020-06-26 04:28:01', '2022-03-28 10:23:02', '197.215.252.62', NULL, 'b8496afa1d9bb58ab00cf58a90765517369f50f3', NULL, 0, NULL, 1593156481, 1622716059, 0, NULL, '2021-06-03 13:27:39', NULL, 'kmud0g4qpp14dmnu1lf7955lqebln3nl', '2020-06-26 07:28:01', '2021-06-03', '2021-07-03'),
(34, 'Jacquiline Mmari', 'mmari2020', '$2y$08$motbNo1/lXr6qSvxWlgbmu711FMVxtSVP2gjN.e8s8QIraYoj3b7C', 0, 7, 18, '', 'jacquilinemmari@gmail.com', NULL, 'Active', '2020-11-05 02:21:21', '2021-11-09 07:09:17', '197.250.227.83', NULL, '348e41333608ab1732c21fb6b193754f02fc6b30', NULL, 0, NULL, 1604553681, 1634397321, 0, NULL, '2021-10-16 18:15:21', '41.204.146.199', 'nmqcpc8fu8dcr6sd90q4v8ahfjss2d9l', '2020-11-05 05:21:21', '2021-10-13', '2021-11-12'),
(35, 'Acquiline Makumbule', 'Makumbule', '$2y$08$j9.e9ENanvEoXP9q5rVqOOe6UkI0M7/5QCikOpdg87p.3BkpXIha6', 0, 67, 4, NULL, 'amakumbule@stju.ac.tz', NULL, 'Active', '2020-12-22 07:03:33', '2021-05-16 08:14:32', '197.250.103.193', NULL, NULL, NULL, 0, NULL, 1608631413, 1610089106, 0, NULL, '2021-01-08 09:58:26', NULL, NULL, '2020-12-22 10:03:33', '2020-12-22', '2021-01-21'),
(36, 'Fredrick Joseph Mkunde', 'fmkunde', '$2y$08$rS9vo56In7C/sZ8wsNHgjO/X/yMNNXA9akXNm3IGyydW15swYP5iG', 0, 0, 14, NULL, 'fredymkunde@yahoo.com', NULL, 'Active', '2021-01-01 12:05:28', '2022-05-16 04:57:53', '197.250.102.161', NULL, '5918aee77dad6583c6bff46ffa0d26f6d75378a7', NULL, 0, NULL, 1609513528, 1649228098, 0, NULL, '2022-04-06 09:54:58', '197.250.227.20', '94991pgjc06jvcrlkf58urehu6p9ncvm', '2021-01-01 15:05:28', '2022-03-18', '2022-04-17'),
(37, 'Mussa Elias', 'mussa2021', '$2y$08$2qpi5RnU7MJhE4TB5.maHuDwjJpZhsKaW2GLt8fQcxk4dgWrjT4sO', 0, 69, 15, '', 'mussa@ecowaterinternational.com', NULL, 'Active', '2021-02-16 06:35:39', '2022-05-31 04:24:09', '197.250.224.106', NULL, '627d6334d8735d319e712900fdca6ade65bb0757', NULL, 0, NULL, 1613468139, 1651218972, 0, NULL, '2022-04-29 10:56:12', '197.250.230.25', '6nab93f5lc8s20aek7ja18c1896g5bu4', '2021-02-16 09:35:39', '2022-04-15', '2022-05-15'),
(38, 'Bahati Mhadimu', 'rucu2020', '$2y$08$F0ipxLBeCu9zcE6ou2NS4.YQvIMk7mP2HsQV0YcQ2bgvDTxeCDUv.', 0, 68, 4, NULL, 'mhadimubahati@yahoo.com', NULL, 'Active', '2021-06-01 00:50:23', '2022-09-01 10:20:05', '197.250.99.21', NULL, NULL, NULL, 0, NULL, 1622519423, 1662038405, 1, NULL, '2022-09-01 16:20:05', '41.93.47.66', 'au5cmeaqvv0j53fp6ssll6udbbb2qmhc', '2021-06-01 03:50:23', '2022-09-01', '2022-10-01'),
(39, 'Charles Marando', 'marando2021', '$2y$08$3smKEPeQBpDn95MkgOaFVeNmFVkrdH4VH3LAcB8Lb9/JLZG1GZLSm', 0, 75, 18, '', 'marando@ecowaterinternational.com', NULL, 'Active', '2021-09-06 02:24:40', '2022-09-14 07:52:32', '197.250.230.253', NULL, NULL, NULL, 0, NULL, 1630905880, 1663152752, 1, NULL, '2022-09-14 13:52:32', '197.250.229.212', 'jddoc4ud5q51bko3ggvvvra8gbt7n2pp', '2021-09-06 08:24:40', '2022-08-20', '2022-09-19'),
(40, 'Clevina Julius', 'clevina2021', '$2y$08$FV5sQA08xxMpG./QFtkA6OZYfQSKMnD/KPUaAsqjSM0PTOLdjeQ9.', 0, 46, 18, '', 'clevina@ecowaterinternational.com', NULL, 'Active', '2021-09-06 02:27:44', '2022-03-02 07:38:28', '197.250.230.253', NULL, 'e942c60eaf5481a8136b668e4cbd6c4b9e651fda', NULL, 0, NULL, 1630906064, 1646078260, 0, NULL, '2022-02-28 22:57:40', '196.249.101.188', 'daa2patc5k7p9cm7tmlpvlcckjoglrr7', '2021-09-06 08:27:44', '2022-02-10', '2022-03-12'),
(41, 'Mathew Japhet', 'hiza2021', '$2y$08$MQ6kWwD17r72pofOK/aQiuwY7HXylSghtpQNUaXVQmzOC6VhD3ZhG', 0, 68, 18, '', 'mathew@ecowaterinternational.com', NULL, 'Active', '2021-09-06 02:35:46', '2022-09-09 21:32:28', '197.250.230.253', NULL, NULL, NULL, 0, NULL, 1630906546, 1662769948, 1, NULL, '2022-09-10 03:32:28', '41.222.181.57', '8js8j6bb05f2ljacuam4vtv9e03ribmd', '2021-09-06 08:35:46', '2022-09-10', '2022-10-10'),
(42, 'Yasin Mtinangi', 'yasin2021', '$2y$08$1Cd8/U4xsyZ4j4B12euE..nTlgt7XyO59QnfADUd3X8ELTkNR8aD6', 0, 69, 18, '', 'yasin@ecowaterinternational.com', NULL, 'Active', '2021-09-06 02:39:45', '2022-09-03 03:58:08', '197.250.230.253', NULL, NULL, NULL, 0, NULL, 1630906785, 1662188288, 1, NULL, '2022-09-03 09:58:08', '41.222.179.241', '1p04k9bn75r2bbv3nm34ld7esgu32726', '2021-09-06 08:39:45', '2022-09-03', '2022-10-03'),
(43, 'Jesca Victor', 'jesca2021', '$2y$08$.Ld.vi64wAR/69VPt3IbQuHiEcmZT8aX0KB0ZmoEDYOkT70LEmGJ6', 0, 65, 18, '', 'jesca@ecowaterinternational.com', NULL, 'Active', '2021-09-06 03:29:15', '2022-01-08 06:40:34', '197.250.101.230', NULL, 'e6f47aaaec79878a6083b90c451a60866c74e009', NULL, 0, NULL, 1630909755, 1641222291, 0, NULL, '2022-01-03 18:04:51', '169.255.185.15', 'e48j8dvpa4bpemrp0nh9nn7pr2k0srj7', '2021-09-06 09:29:15', '2021-12-10', '2022-01-09'),
(44, 'Loveness Mtui', 'mtui2021', '$2y$08$QW4DOU1lQVuqRaN4/22LG.LdHgWP418DE2P4Cw0DiyM.axbCWo9vi', 0, 69, 18, '', 'mtui@ecowaterinternational.com', NULL, 'Active', '2021-09-06 03:46:10', '2022-03-02 07:38:21', '197.215.248.133', NULL, 'a871f6d802a36f6de1dedd6419ec3ef74f1770cf', NULL, 0, NULL, 1630910770, 1646049904, 0, NULL, '2022-02-28 15:05:04', '197.186.1.101', '31gol4hdvvfhgu84jko0nicvkju9vnsq', '2021-09-06 09:46:10', '2022-02-14', '2022-03-16'),
(45, 'Emmanuel Kishai', 'kishai2021', '$2y$08$crJEW4FudsNBOZVrOOG24O2LOVPAfk7LXgbalywQBZ1tJ82hpfgrS', 0, 69, 18, '255744845067', 'kishai@ecowaterinternational.com', NULL, 'Active', '2021-09-06 09:54:37', '2022-06-24 10:13:09', '197.215.248.133', NULL, NULL, NULL, 0, NULL, 1630932877, 1656076389, 1, NULL, '2022-06-24 16:13:09', '41.222.180.179', 'tg7h9ad8m71jjr25c8lo2ubbjcdr37du', '2021-09-06 15:54:37', '2022-06-05', '2022-07-05'),
(46, 'Richard Mtindo', 'mazengo2020', '$2y$08$xSevR40uJl1knIDrHVu3FusK1Jf6DKWD7/PgpkDFh.NMLAhKQFv/K', 0, 67, 4, '', 'rmtindo@sjtu.ac.tz', NULL, 'Active', '2021-09-08 06:48:13', '2022-06-24 08:00:38', '197.215.244.66', NULL, NULL, NULL, 0, NULL, 1631094493, 1656068438, 1, NULL, '2022-06-24 14:00:38', '41.93.50.18', '156bi85cgvkvgj7ighcrrppfflq5geoi', '2021-09-08 12:48:13', '2022-06-09', '2022-07-09'),
(47, 'Brayton Mushi', 'mushi2021', '$2y$08$bd.awcTn1Nqtgy3lvEyz4.GMJolMYlAqLwiYREw/eBiZVWGVWxH.m', 0, 46, 18, NULL, 'brayton@ecowaterinternational.com', NULL, 'Active', '2021-10-09 06:54:49', '2022-04-02 08:58:41', '41.222.181.65', NULL, 'add1931de6f96d9e2876bc7760de1beb718ab7e9', NULL, 0, NULL, 1633773289, 1648490415, 0, NULL, '2022-03-28 21:00:15', '41.222.180.185', 'l75n2rciii773uq7pknlbnsnacndd25h', '2021-10-09 12:54:49', '2022-03-14', '2022-04-13'),
(48, 'Said Kitambulio', 'kitambulio2021', '$2y$08$hQFt6tfNKssi6eZtliK2w.Klr7wErUdFQVdxyiGGSH3cvxShivtIi', 0, 7, 18, '', 'kitambulio@ecowaterinternational.com', NULL, 'Active', '2021-10-10 02:32:31', '2022-09-15 03:23:37', '197.250.100.193', NULL, NULL, NULL, 0, NULL, 1633843951, 1663223016, 1, NULL, '2022-09-15 09:23:36', '197.250.97.77', '39aoij9keuoc1dg40c4laem0telsvrfh', '2021-10-10 08:32:31', '2022-09-14', '2022-10-14'),
(49, 'RUCU Registrations', 'rucu1', '$2y$08$6pwx0b6TuyQzUUfZ3FuOmeGsWec0BXTgyLeuFy6B.mzlePVxdHrLq', 0, 68, 18, NULL, 'registrations@ecowaterinternational.com', NULL, 'Active', '2021-10-11 04:12:19', '2021-11-09 07:08:00', '197.250.60.101', NULL, 'a30d4c4f84f52ddc783834f8768a1bfde789e62d', NULL, 0, NULL, 1633936339, 1633936537, 0, NULL, NULL, NULL, NULL, '2021-10-11 10:12:19', '2021-10-11', '2021-11-10'),
(50, 'Jacob Matipa', 'UOI1', '$2y$08$HCC9IgWH7RDA2D.8iB/OweAvwnGt6yK./oq.AGd5BV6qBtQm1a43C', 0, 65, 18, '', 'uoi@ecowaterinternational.com', NULL, 'Active', '2021-10-11 04:13:38', '2021-11-09 07:10:31', '197.250.60.101', NULL, '5ac3964875e1f08e05a31de49c2abd22971d6c33', NULL, 0, NULL, 1633936418, 1634979408, 0, NULL, '2021-10-23 11:56:48', '41.222.181.164', '5fc9a33fd7mm2msda4t8f3stp29hknd2', '2021-10-11 10:13:38', '2021-10-11', '2021-11-10'),
(51, 'Deogratias Lello', 'lello2021', '$2y$08$40RLLOeDCx85MADJRBmtleWRzRPIetVLo7mCtR12KFMSGpBuvNq1u', 0, 67, 9, '', 'lello@ecowaterinternational.com', NULL, 'Active', '2021-10-18 06:21:13', '2022-09-15 04:01:12', '197.250.60.66', NULL, NULL, NULL, 0, NULL, 1634548873, 1663225272, 1, NULL, '2022-09-15 10:01:12', '197.250.227.233', '8a27540rlgpmk7ou41fs9amr96d5c9bm', '2021-10-18 12:21:13', '2022-09-14', '2022-10-14'),
(52, 'Cashier Control', 'cashier2021', '$2y$08$tdSt.0Z4fvFZiVu.c4bUMurbNvXxIe/LR6PH9S9u.N609NzC5Op7S', 0, 0, 18, NULL, 'cashiers@ecowaterinternational.com', NULL, 'Active', '2021-10-25 06:18:01', '2022-03-02 07:39:50', '197.250.97.75', NULL, '54e0c3bfc6d1dd35623b251e34a74828a6089a82', NULL, 0, NULL, 1635153481, 1645109149, 0, NULL, '2022-02-17 17:45:49', '197.250.103.155', '5qqmn33uejuctil7foavfh7aqu21vum9', '2021-10-25 12:18:01', '2022-01-27', '2022-02-26'),
(53, 'Social Registration1', 'social1', '$2y$08$Q0yLIgIyDy.QCxM.CAfQze.1tTLa37Um4/xmstEisVoRJhVQaaDUO', 0, 69, 18, '', 'social@ecowaterinternational.com', NULL, 'Active', '2021-10-30 04:22:08', '2022-03-02 07:39:41', '197.250.97.119', NULL, '758f33c1513462ed50fdd488b5ae22914a24c1bd', NULL, 0, NULL, 1635578528, 1645280635, 0, NULL, '2022-02-19 17:23:55', '197.250.197.230', 'gttqenadls66oundge5nm7e09k5oea8o', '2021-10-30 10:22:08', '2022-02-19', '2022-03-21'),
(54, 'Social Registrations2', 'Social2', '$2y$08$zYAmvBp4Kh4xJDNLtFExS.D.b3leBX2EdOTlBuFHThp5s/tQLlGDK', 0, 69, 18, '', 'social2@ecowaterinternational.com', NULL, 'Active', '2021-10-30 04:23:05', '2021-11-09 07:07:34', '197.250.97.119', NULL, '48fe9361f3a7d839e3ef63668bb2084f8c165caf', NULL, 0, NULL, 1635578585, 1636399650, 0, NULL, '2021-11-08 22:27:30', '197.250.98.20', 'i6a7pnf5n6kirnj9pjoame48iphm54j0', '2021-10-30 10:23:05', '2021-10-30', '2021-11-29'),
(55, 'Social Registrations3', 'Social3', '$2y$08$WDfBHpobTTGiuoSliAHmN.A2UdYKmPf/HlBEC343NqIqgybJvbh9K', 0, 69, 18, NULL, 'social3@ecowaterinternational.com', NULL, 'Active', '2021-11-01 07:56:34', '2021-11-09 07:07:30', '197.250.99.2', NULL, '9327aef33b4b4d2ddf0d68a8c29197562c3af7e1', NULL, 0, NULL, 1635764194, 1636448732, 0, NULL, '2021-11-09 12:05:32', '196.249.97.120', '23dq8nt9knu82igeem2t4j9i7svittj9', '2021-11-01 13:56:34', '2021-11-01', '2021-12-01'),
(56, 'Hagrey Kilima', 'kilima2021', '$2y$08$SrHgqhKvRapxxMgjbQlfZuRTmTdN2.a8cNmF/puic040I2ATQy6/W', 0, 71, 18, '', 'kilima@ecowatrinternational.com', NULL, 'Active', '2021-11-01 08:38:38', '2022-09-14 15:04:33', '197.250.229.146', NULL, NULL, NULL, 0, NULL, 1635766718, 1663178673, 1, NULL, '2022-09-14 21:04:33', '41.222.181.59', 'sftvv6nakau5ajgsvs5u3nc0hdog1h8i', '2021-11-01 14:38:38', '2022-09-05', '2022-10-05'),
(57, 'Loserian Obedi', 'loserian2021', '$2y$08$BKf3SciN8MAwx2C3vfDzMeltSxStCsf/gaRYol38UYGAR0Fb/PEc.', 0, 70, 18, '', 'loserian@ecowaterinternational.com', NULL, 'Active', '2021-11-09 07:14:42', '2022-09-13 07:24:45', '197.250.226.88', NULL, NULL, NULL, 0, NULL, 1636452882, 1663064685, 1, NULL, '2022-09-13 13:24:45', '169.255.185.201', 'diqu1mmpjd2tvjoo42mgqm7aatc1pvpo', '2021-11-09 13:14:42', '2022-09-05', '2022-10-05'),
(58, 'Halima Ally', 'halima2021', '$2y$08$W8Tf3bt1F95Siexrc99El.NoURBMgLcwsJDn2YkA/Hk2VNTb3mK0.', 0, 1, 18, NULL, 'halima@ecowaterinternational.com', NULL, 'Active', '2021-11-10 01:06:45', '2022-03-02 07:39:19', '197.250.103.240', NULL, '899747a4b11384accd38c8562b1aae7d6ca2fe8d', NULL, 0, NULL, 1636517205, 1643659535, 0, NULL, '2022-01-31 23:05:35', '197.250.229.204', 't5s66egg3siro0n5i9q5p1lf1drpeipl', '2021-11-10 07:06:45', '2022-01-10', '2022-02-09'),
(59, 'Mohamed Luaga', 'luaga2021', '$2y$08$4icc4WConD.PzyubD6FRIerZXpbVqUApqkAnpk1Aa3sJtWpuOJjcy', 0, 1, 18, NULL, 'luaga@ecowaterinternational.com', NULL, 'Active', '2021-11-10 01:07:50', '2022-03-02 07:39:23', '197.250.103.240', NULL, '101a3a6930b4403093c9e16510caad6b2db3512b', NULL, 0, NULL, 1636517270, 1643447624, 0, NULL, '2022-01-29 12:13:44', '197.186.0.58', 'kkfr73i5h89i8shn2ri7o3jkv675p3ef', '2021-11-10 07:07:50', '2022-01-12', '2022-02-11'),
(60, 'Yusuph Shango', 'shango2021', '$2y$08$2AJgTDB2fwf4eV1pxJ313em3gy/UdbSdwojorEr3LIGO19UZd6FDC', 0, 75, 18, '', 'shango@ecowaterinternational.com', NULL, 'Active', '2021-11-10 01:10:18', '2022-09-15 02:50:25', '197.250.103.240', NULL, NULL, NULL, 0, NULL, 1636517418, 1663221025, 1, NULL, '2022-09-15 08:50:25', '197.250.99.0', 'iomo2k445ghiiu3d0p2eafgqj26hoi0p', '2021-11-10 07:10:18', '2022-09-08', '2022-10-08'),
(61, 'William Vedastus', 'william2021', '$2y$08$280fU6i0sTl7FZdrsVp4cuLY6RKLw1HZE0HX9iw67OgyjQBuJIckK', 0, 69, 20, NULL, 'william@ecowaterinternational.com', NULL, 'Active', '2021-12-09 07:35:10', '2022-01-08 06:42:01', '197.250.224.96', NULL, '356e163ac0845c16c768603ea9a841a8cfbdee6a', NULL, 0, NULL, 1639046110, 1639046524, 0, NULL, '2021-12-09 13:42:04', '197.250.224.96', 'n7k9hq8e45gbmhdps6d24o60ng29g479', '2021-12-09 13:35:10', '2021-12-09', '2022-01-08'),
(62, 'Anna Lyimo', 'anna2022', '$2y$08$TeGDo8sNOabLNIH9FHgRNeMK1ZacjWK.RBQWsPQicc6tcOPuXScIa', 0, 68, 18, NULL, 'anna@ecowaterinternational.com', NULL, 'Active', '2022-01-08 06:41:45', '2022-05-16 04:56:41', '197.250.100.117', NULL, '7a15226666b16c11f4b04366ca765cc5792a2816', NULL, 0, NULL, 1641634905, 1649797043, 0, NULL, '2022-03-05 12:34:58', '197.186.5.89', '9kufi2qifla9pljmqjus4k82fdpuvvmr', '2022-01-08 12:41:45', '2022-02-07', '2022-03-09'),
(63, 'Christian Kavishe', 'Kavishe2022', '$2y$08$A7KjAqTtz978lgr/UzTuf.E4zv.5M27o1LTLXRpbkMQYM91RUUQSO', 0, 0, 9, '', 'kavishe@ecowaterinternational.com', NULL, 'Active', '2022-02-13 07:18:10', '2022-03-11 02:22:20', '197.250.230.171', NULL, '74a83cf840366b78ee53b4d147c8436afd7ba3bc', NULL, 0, NULL, 1644747490, 1645556774, 0, NULL, '2022-02-22 22:06:14', '197.250.227.17', 'mjoe18nsprqbot00hj1em8percuab38p', '2022-02-13 13:18:10', '2022-02-15', '2022-03-17'),
(64, 'Ally Kindawite', 'Kindawite2022', '$2y$08$O2KvsVXwqDa9mfvWB9X8HO0KtnTFhXUsBaC2q4ByhPR1x8LnUZSGO', 0, 46, 4, NULL, 'kindawite2014@gmail.com', NULL, 'Active', '2022-03-28 10:26:10', '2022-06-23 07:23:08', '197.250.227.69', NULL, NULL, NULL, 0, NULL, 1648473970, 1655979788, 1, NULL, '2022-04-11 15:02:25', '154.72.90.234', 's35ejdtadf4ntkpj5s75j3q5logd9481', '2022-03-28 16:26:10', '2022-03-30', '2022-04-29'),
(65, 'Raymond Maganga', 'Maganga2022', '$2y$08$03bz1/b3W1qozZptcg6IguSos/1XdxLSy1RQnrMMnzX90kxqitVye', 0, 71, 4, NULL, 'r.maganga@cbe.ac.tz', NULL, 'Active', '2022-03-28 10:27:23', '2022-08-16 05:49:11', '197.250.227.69', NULL, NULL, NULL, 0, NULL, 1648474043, 1660639751, 1, NULL, '2022-08-16 11:49:11', '41.78.171.166', 'guo50p76vgdji9i88n0lgvttv5r2kokv', '2022-03-28 16:27:23', '2022-08-09', '2022-09-08'),
(66, 'Kitwana Iddy', 'kitwana2022', '$2y$08$1fJGD49Vomtj6WI6gMmtO.46qx6zKipXtEYcD/LNIiIGkPd0eN.da', 0, 69, 18, '', 'kitwana@ecowaterinternational.com', NULL, 'Active', '2022-04-11 09:51:19', '2022-09-14 09:43:07', '197.250.100.8', NULL, NULL, NULL, 0, NULL, 1649681479, 1663159387, 1, NULL, '2022-09-14 15:43:07', '41.222.181.63', '4jg208d1dh53gqqolv4p8iecjgdoa371', '2022-04-11 15:51:19', '2022-08-29', '2022-09-28'),
(67, 'Jumanne Kibika', 'kibika2022', '$2y$08$Q.tJiNbXiuHO4S7aNBWmiO.TzqrLUh.8.ItKdsaeKYrCKKfDgZyTO', 0, 69, 18, NULL, 'kibika@ecowaterinternational.com', NULL, 'Active', '2022-04-11 09:52:15', '2022-09-14 14:53:16', '197.250.100.8', NULL, NULL, NULL, 0, NULL, 1649681535, 1663177996, 1, NULL, '2022-09-14 20:53:16', '41.222.180.241', 's2st5jvkrlcvc7vlvjfmmh70mj3u3r8h', '2022-04-11 15:52:15', '2022-09-09', '2022-10-09'),
(68, 'Salim Chamshama', 'chamshama2022', '$2y$08$B0jRD4QLwmAyzrtflrpdieM4pAcTbrGTtXE3dCaxp/Yf8CKw6osom', 0, 70, 4, '255757043114', 'chamshama@sua.ac.tz', NULL, 'Active', '2022-04-12 03:27:08', '2022-08-22 01:29:33', '197.250.60.55', NULL, NULL, NULL, 0, NULL, 1649744828, 1661142573, 1, NULL, '2022-08-22 07:29:33', '41.59.57.226', 'fca60ntsks75nmtss9qn4bh6648j187t', '2022-04-12 09:27:08', '2022-08-20', '2022-09-19'),
(69, 'Grace Mungure', 'grace2020', '$2y$08$INWOg6Y.DcrONu9a3E7jNODUO3a6pEEJyuT8q1NvyVuKXCRLVNRhe', 0, 72, 4, '', 'grace@atc.ac.tz', NULL, 'Active', '2022-04-12 03:30:51', '2022-07-06 05:07:39', '197.250.60.55', NULL, NULL, NULL, 0, NULL, 1649745051, 1657094859, 1, NULL, '2022-07-06 11:07:39', '41.93.24.66', 'an169spd0nlech0fdpjl5gg7p0q7nve0', '2022-04-12 09:30:51', '2022-06-28', '2022-07-28'),
(70, 'Deus Polepole', 'polepole2022', '$2y$08$qNHBDonu7IVrWI07iaICCOFGCytawVmgc2NyIG.xZmGvx0yRdDE4G', 0, 69, 18, NULL, 'poledeus22@gmail.com', NULL, 'Active', '2022-05-06 05:14:05', '2022-06-19 09:14:35', '197.250.229.214', NULL, 'd998fd8c6894eec7b299beaa3cba3de1f89d2b58', NULL, 0, NULL, 1651824845, 1654699434, 0, NULL, '2022-06-08 17:43:54', '41.59.94.51', 'epq7rirumupf7h8iii22qoafnp35duqu', '2022-05-06 11:14:05', '2022-06-06', '2022-07-06'),
(71, 'Erasto Bukuru', 'bukuru2022', '$2y$08$UBKCYlvODa50Ly18ef87c.AREM4R38k66FSAJ5gT4yy8OGid0Ewte', 0, 69, 18, '', 'shulitsee@gmail.com', NULL, 'Active', '2022-05-06 05:15:22', '2022-07-25 02:45:35', '197.250.229.214', NULL, 'fa35a612f2a01f60f88e8c140e6a1934f2b40a37', NULL, 0, NULL, 1651824922, 1657169207, 0, NULL, '2022-06-29 18:58:43', '197.250.101.132', 'k6n4m3hingpjhs3h8pepdjnf7r9d3l7u', '2022-05-06 11:15:22', '2022-06-07', '2022-07-07'),
(72, 'Josephina Erick', 'josephina2022', '$2y$08$JXQJauxaBNm0A/1wuhPaou1MwHwwB1qYeg9Pb/WJUgPN9Bio4naMG', 0, 75, 18, NULL, 'josephina@ecowaterinternational.com', NULL, 'Active', '2022-05-16 04:48:43', '2022-09-12 08:50:35', '197.250.199.65', NULL, NULL, NULL, 0, NULL, 1652687323, 1662983435, 1, NULL, '2022-09-12 14:50:35', '197.250.102.90', 'ii9hlp5ve68h0iv6m3isso8t061n5h4r', '2022-05-16 10:48:43', '2022-08-16', '2022-09-15'),
(73, 'UDOM Ambassadors', 'udom2022', '$2y$08$lp8kQF5xY2n/YUahJt2hium/OzTcnQwK41BtknjNAhFhv8tuHGYfm', 0, 69, 18, '', 'udom@ecowaterinternational.com', NULL, 'Active', '2022-06-19 10:17:10', '2022-08-16 13:19:11', '197.250.101.235', NULL, NULL, NULL, 0, NULL, 1655644630, 1660666751, 1, NULL, '2022-08-16 19:19:11', '197.250.99.54', '0ohtckiicn7spkaljq1sn8pckktkb4ik', '2022-06-19 16:17:10', '2022-07-24', '2022-08-23'),
(74, 'CBEDOM Ambassadors', 'Cbedom2022', '$2y$08$V3RWdskdRGB0FOOfLoYdduejZRVbqg34s3gMaZiLn5LzM0IEmVEoy', 0, 71, 18, NULL, 'cbedom@ecowaterinternational.com', NULL, 'Active', '2022-06-19 10:18:26', '2022-07-14 03:28:10', '197.250.101.235', NULL, NULL, NULL, 0, NULL, 1655644706, 1657780090, 1, NULL, '2022-07-14 09:28:10', '41.222.179.171', 'ir41nu16fipgh98afii89vp8p8qd77eg', '2022-06-19 16:18:26', '2022-06-19', '2022-07-19'),
(75, 'STJU Ambassadors', 'john2022', '$2y$08$1b82/QoswjBXZQfdv8DMhOajRWV5JF05raSQ91r702V27lszfS596', 0, 67, 18, NULL, 'stju@ecowaterinternational.com', NULL, 'Active', '2022-06-19 10:20:08', '2022-09-08 12:58:49', '197.250.101.235', NULL, NULL, NULL, 0, NULL, 1655644808, 1662652729, 1, NULL, '2022-09-08 18:58:49', '197.250.230.209', 'n4h32gmqe4gl6hcj34art51trdb7st3l', '2022-06-19 16:20:08', '2022-08-31', '2022-09-30'),
(76, 'SUA Ambassadors', 'sua2022', '$2y$08$nwLYmxcPxlw.5tw99fjCoOD5Ky9zkv3MSgfpq6g6JEdRiTiHKlcqS', 0, 70, 18, '', 'sua@ecowaterinternational.com', NULL, 'Active', '2022-06-19 10:21:42', '2022-07-22 12:59:08', '197.250.101.235', NULL, NULL, NULL, 0, NULL, 1655644902, 1658505547, 1, NULL, '2022-07-22 18:59:08', '197.250.194.219', 'ut01r99t25vvplf6ef8t06qkg583ch8t', '2022-06-19 16:21:42', '2022-07-21', '2022-08-20'),
(77, 'SAUT Ambassadors', 'Saut2022', '$2y$08$BFRftPIX2HcaQ2Z17mE5buMtIQVIfxExS090M6V..VbjaqcypkHoW', 0, 1, 18, NULL, 'saut@ecowaterinternational.com', NULL, 'Active', '2022-06-19 10:29:47', '2022-06-25 09:22:26', '197.250.101.235', NULL, NULL, NULL, 0, NULL, 1655645387, 1656159746, 1, NULL, '2022-06-25 15:22:26', '197.250.197.95', 'l87h7dnqvj62asgs791nhlsqhtbif91g', '2022-06-19 16:29:47', '2022-06-19', '2022-07-19'),
(78, 'ATC Ambassadors', 'atc2022', '$2y$08$DmxqMD8EHx.syIYCUjVhGeUNxI7meH937BXQZk4Te4W0qpKgScIt.', 0, 72, 18, NULL, 'atc@ecowaterinternational.com', NULL, 'Active', '2022-06-19 10:31:46', '2022-08-25 09:19:25', '197.250.101.235', NULL, NULL, NULL, 0, NULL, 1655645506, 1661429965, 1, NULL, '2022-07-18 12:43:00', '197.250.101.149', 'b25kl77h7knqus0c1c3rcpm386v5aot3', '2022-06-19 16:31:46', '2022-06-19', '2022-07-19'),
(79, 'CBEMWZ Ambassadors', 'cbemwz2022', '$2y$08$yuel4wQrHqI1HPjcy4nY0O5lwMHnUfyi5dbrnl73fqejrlUyQ8SJS', 0, 46, 18, NULL, 'cbemwz@ecowaterinternational.com', NULL, 'Active', '2022-06-19 10:32:48', '2022-06-19 11:08:30', '197.250.101.235', NULL, NULL, NULL, 0, NULL, 1655645568, 1655647692, 1, NULL, NULL, NULL, NULL, '2022-06-19 16:32:48', '2022-06-19', '2022-07-19'),
(80, 'RUCU Ambassadors', 'rucu2022', '$2y$08$oaSVVaIlCfV773xS43qegu2ipNctxW655x9NY0b2YQMWbWE1dwRgy', 0, 68, 18, NULL, 'rucu@ecowaterinternational.com', NULL, 'Active', '2022-06-19 10:33:46', '2022-07-18 06:55:42', '197.250.101.235', NULL, NULL, NULL, 0, NULL, 1655645626, 1658138142, 1, NULL, '2022-07-18 12:55:42', '197.250.101.149', 'ul3offce38t1q2fm0jq0b5dvo64bvk5m', '2022-06-19 16:33:46', '2022-06-19', '2022-07-19'),
(81, 'UOI Ambassadors', 'uoi2022', '$2y$08$2h90R7u19/NzLwuh2cIeZ.VYkS4Y61JxuT9kjrxhUnw3p58PBuo/.', 0, 65, 18, NULL, 'uo@ecowaterinternational.com', NULL, 'Active', '2022-06-19 10:35:20', '2022-07-18 00:47:12', '197.250.101.235', NULL, NULL, NULL, 0, NULL, 1655645720, 1658116032, 1, NULL, '2022-07-18 06:47:12', '197.250.101.149', '24573vdidbdg14hc92jaaf2cjggbegof', '2022-06-19 16:35:20', '2022-06-19', '2022-07-19'),
(82, 'MUST Ambassadors', 'must2022', '$2y$08$cYsu66C3hoTL3OO2dMn4JOESMfJvgEbQez8CVdtRIWoOZsiZv/.nS', 0, 7, 18, NULL, 'must@ecowaterinternationa.com', NULL, 'Active', '2022-06-19 10:36:10', '2022-07-12 11:36:44', '197.250.101.235', NULL, NULL, NULL, 0, NULL, 1655645770, 1657636603, 1, NULL, '2022-07-12 17:36:44', '41.222.181.65', 'pnkfqaq5jpj67muhf2qa04pu48u9rs0k', '2022-06-19 16:36:10', '2022-06-19', '2022-07-19'),
(83, 'Valeria Aloyce', 'cuhas2022', '$2y$08$2zi8LSfYKl6qz2uiHrrij.DaRyBa2o/CLn/reKKmI7xPVQlT9gcQ6', 0, 75, 4, NULL, 'valeriaaloyce@yahoo.com', NULL, 'Active', '2022-08-31 02:11:59', '2022-09-14 06:23:11', '197.250.101.201', NULL, NULL, NULL, 0, NULL, 1661922719, 1663147391, 1, NULL, '2022-09-14 12:23:11', '41.59.201.3', 'unpfon6csk0el0vg9nuqaprfp5gprtul', '2022-08-31 08:11:59', '2022-08-31', '2022-09-30'),
(84, 'Dickson Rutha', 'drutha', '$2y$08$vV6oUVdxC.LaYmxmcOEAp.HjbIqXzLyZZ2CGMxp7R/ACz9WW7VhEm', 0, 69, 1, '', 'rutha@ecowaterinternational.com', NULL, 'Active', '2022-09-11 09:25:30', '2022-09-15 03:21:36', '197.250.227.136', NULL, NULL, NULL, 0, NULL, 1662899130, 1663222896, 1, NULL, '2022-09-15 09:21:36', '197.250.227.233', '2bc51arg6kojd7lt0b5i7qbs447elo72', '2022-09-11 15:25:30', '2022-09-11', '2022-10-11'),
(85, 'Annicent Mokoki', 'anicet', '$2y$08$aq9FIE4AezKJXNLUeMjnRe/vBO8rauKV72FMPh9ElY9H.YOG2JkNi', 0, 0, 9, '', 'anicet@ecowaterinternational.com', NULL, 'Active', '2022-09-14 08:30:48', '2022-09-14 13:57:45', '197.250.227.233', NULL, NULL, NULL, 0, NULL, 1663155048, 1663167803, 1, NULL, '2022-09-14 18:03:23', '197.250.227.233', '68lfnq66ucho4shbsljba06ldurfuaei', '2022-09-14 14:30:48', '2022-09-14', '2022-10-14');

-- --------------------------------------------------------

--
-- Table structure for table `eco_users_groups`
--

CREATE TABLE `eco_users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eco_users_groups`
--

INSERT INTO `eco_users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 37, 2),
(4, 38, 2),
(5, 39, 2),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 2),
(12, 12, 2),
(13, 13, 2),
(14, 14, 2),
(15, 15, 2),
(16, 16, 2),
(17, 17, 2),
(18, 18, 2),
(19, 19, 2),
(20, 20, 2),
(21, 21, 2),
(22, 22, 2),
(23, 23, 2),
(24, 24, 2),
(25, 25, 2),
(26, 26, 2),
(27, 27, 2),
(28, 28, 2),
(29, 29, 2),
(30, 30, 2),
(31, 31, 2),
(32, 32, 2),
(33, 33, 2),
(34, 34, 2),
(35, 35, 2),
(36, 36, 2),
(37, 37, 2),
(38, 38, 2),
(39, 39, 2),
(40, 40, 2),
(41, 41, 2),
(42, 42, 2),
(43, 43, 2),
(44, 44, 2),
(45, 45, 2),
(46, 46, 2),
(47, 47, 2),
(48, 48, 2),
(49, 49, 2),
(50, 50, 2),
(51, 51, 2),
(52, 52, 2),
(53, 53, 2),
(54, 54, 2),
(55, 55, 2),
(56, 56, 2),
(57, 57, 2),
(58, 58, 2),
(59, 59, 2),
(60, 60, 2),
(61, 61, 2),
(62, 62, 2),
(63, 63, 2),
(64, 64, 2),
(65, 65, 2),
(66, 66, 2),
(67, 67, 2),
(68, 68, 2),
(69, 69, 2),
(70, 70, 2),
(71, 71, 2),
(72, 72, 2),
(73, 73, 2),
(74, 74, 2),
(75, 75, 2),
(76, 76, 2),
(77, 77, 2),
(78, 78, 2),
(79, 79, 2),
(80, 80, 2),
(81, 81, 2),
(82, 82, 2),
(83, 83, 2),
(84, 84, 2),
(85, 85, 2);

-- --------------------------------------------------------

--
-- Table structure for table `eco_users_password`
--

CREATE TABLE `eco_users_password` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `date_changed` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eco_user_audit`
--

CREATE TABLE `eco_user_audit` (
  `id` int(11) NOT NULL,
  `action` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `changedat` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_utilities_config`
--

CREATE TABLE `eco_utilities_config` (
  `id` int(11) NOT NULL,
  `utility_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `campus_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `measurement` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `unit_price` double(20,2) NOT NULL,
  `effective_date` date NOT NULL,
  `maker_id` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci DEFAULT 'Active',
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eco_utility_types`
--

CREATE TABLE `eco_utility_types` (
  `id` int(11) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eco_val_messages`
--

CREATE TABLE `eco_val_messages` (
  `id` int(11) NOT NULL,
  `code` varchar(5) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_val_validators`
--

CREATE TABLE `eco_val_validators` (
  `id` int(11) NOT NULL,
  `validator_id` varchar(100) DEFAULT NULL,
  `gsm` varchar(45) DEFAULT NULL,
  `station_id` int(11) DEFAULT NULL,
  `status` enum('Operating','Closed') DEFAULT 'Operating',
  `comments` tinytext DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_val_validator_logs`
--

CREATE TABLE `eco_val_validator_logs` (
  `id` int(11) NOT NULL,
  `comm_ref` varchar(64) DEFAULT NULL,
  `data_old` varchar(70) DEFAULT NULL,
  `card_no` varchar(45) DEFAULT NULL,
  `sub_id` int(11) DEFAULT NULL,
  `curr_bal` decimal(10,2) DEFAULT NULL,
  `validator_id` varchar(45) DEFAULT NULL,
  `last_payment_id` int(11) DEFAULT NULL,
  `public_id` int(11) DEFAULT NULL,
  `data_new` varchar(70) DEFAULT NULL,
  `recharge` decimal(10,2) DEFAULT NULL,
  `new_bal` decimal(10,2) DEFAULT NULL,
  `next_payment_id` int(11) DEFAULT NULL,
  `request_status` varchar(45) DEFAULT NULL,
  `callback_status` varchar(45) DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_val_validator_logs_arch`
--

CREATE TABLE `eco_val_validator_logs_arch` (
  `id` int(11) NOT NULL,
  `comm_ref` varchar(64) DEFAULT NULL,
  `data_old` varchar(70) DEFAULT NULL,
  `card_no` varchar(45) DEFAULT NULL,
  `sub_id` int(11) DEFAULT NULL,
  `curr_bal` decimal(10,2) DEFAULT NULL,
  `validator_id` varchar(45) DEFAULT NULL,
  `last_payment_id` int(11) DEFAULT NULL,
  `public_id` int(11) DEFAULT NULL,
  `data_new` varchar(70) DEFAULT NULL,
  `recharge` decimal(10,2) DEFAULT NULL,
  `new_bal` decimal(10,2) DEFAULT NULL,
  `next_payment_id` int(11) DEFAULT NULL,
  `request_status` varchar(45) DEFAULT NULL,
  `callback_status` varchar(45) DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `arch_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_water_price`
--

CREATE TABLE `eco_water_price` (
  `id` int(11) NOT NULL,
  `campus` int(11) NOT NULL,
  `price_per_liter` decimal(6,2) NOT NULL,
  `maker_id` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eco_water_sales`
--

CREATE TABLE `eco_water_sales` (
  `id` int(11) NOT NULL,
  `eco_ref_no` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `card_no` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `units` double(3,2) NOT NULL,
  `amount` double(20,2) NOT NULL,
  `purchase_date` date NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `eco_water_sales_vw`
-- (See below for the actual view)
--
CREATE TABLE `eco_water_sales_vw` (
`sales_date` date
,`campus_id` int(11)
,`price_per_liter` decimal(6,2)
,`sales` double(19,2)
,`volume` double(17,0)
);

-- --------------------------------------------------------

--
-- Table structure for table `eco_website_impact_analysis`
--

CREATE TABLE `eco_website_impact_analysis` (
  `id` int(11) NOT NULL,
  `subscribers` int(11) DEFAULT NULL,
  `subscribers_factor` int(11) DEFAULT NULL,
  `bottles_saved` int(11) DEFAULT NULL,
  `bottles_saved_factor` int(11) DEFAULT NULL,
  `money_saved` decimal(20,2) DEFAULT NULL,
  `money_saved_factor` decimal(20,2) DEFAULT NULL,
  `carbon_prevented` int(11) DEFAULT NULL,
  `carbon_prevented_factor` int(11) DEFAULT NULL,
  `campuses` int(11) DEFAULT NULL,
  `campus_factor` int(11) DEFAULT NULL,
  `merchants` int(11) DEFAULT NULL,
  `merchants_factor` int(11) DEFAULT NULL,
  `last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eco_white_list_ips`
--

CREATE TABLE `eco_white_list_ips` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(30) DEFAULT NULL,
  `category` enum('MOBILE_PAYMENTS','OTHERS') DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure for view `eco_campus_royalty_vw`
--
DROP TABLE IF EXISTS `eco_campus_royalty_vw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `eco_campus_royalty_vw`  AS SELECT `eco_station_sales_hist`.`date` AS `sales_date`, `eco_station_sales_hist`.`royalty` AS `royalty`, sum(`eco_station_sales_hist`.`d1_closing_bal_card` - `eco_station_sales_hist`.`d1_open_bal_card` + (`eco_station_sales_hist`.`d1_closing_bal_cash` - `eco_station_sales_hist`.`d1_open_bal_cash`) + (`eco_station_sales_hist`.`d2_closing_bal_card` - `eco_station_sales_hist`.`d2_open_bal_card`) + (`eco_station_sales_hist`.`d2_closing_bal_cash` - `eco_station_sales_hist`.`d2_open_bal_cash`)) AS `sales`, round(sum(`eco_station_sales_hist`.`d1_closing_bal_card` - `eco_station_sales_hist`.`d1_open_bal_card` + (`eco_station_sales_hist`.`d1_closing_bal_cash` - `eco_station_sales_hist`.`d1_open_bal_cash`) + (`eco_station_sales_hist`.`d2_closing_bal_card` - `eco_station_sales_hist`.`d2_open_bal_card`) + (`eco_station_sales_hist`.`d2_closing_bal_cash` - `eco_station_sales_hist`.`d2_open_bal_cash`)) * (`eco_station_sales_hist`.`royalty` / 100),2) AS `royalty_amount` FROM `eco_station_sales_hist` WHERE `eco_station_sales_hist`.`date` between '2021-01-01' and '2022-09-17' GROUP BY `eco_station_sales_hist`.`date`, `eco_station_sales_hist`.`royalty``royalty`  ;

-- --------------------------------------------------------

--
-- Structure for view `eco_eom_campus_sales_vw`
--
DROP TABLE IF EXISTS `eco_eom_campus_sales_vw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `eco_eom_campus_sales_vw`  AS SELECT 1 AS `sales_yearmonth`, 1 AS `station_id`, 1 AS `campus_id`, 1 AS `card_sale`, 1 AS `cash_sale`, 1 AS `total_sale``total_sale`  ;

-- --------------------------------------------------------

--
-- Structure for view `eco_recharges_vw`
--
DROP TABLE IF EXISTS `eco_recharges_vw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `eco_recharges_vw`  AS SELECT 1 AS `trn_date`, 1 AS `recharges``recharges`  ;

-- --------------------------------------------------------

--
-- Structure for view `eco_revenue_vw`
--
DROP TABLE IF EXISTS `eco_revenue_vw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `eco_revenue_vw`  AS SELECT 'Subscription' AS `revenue`, sum(`eco_subscribers`.`sub_fee_amount`) AS `amount` FROM `eco_subscribers` WHERE `eco_subscribers`.`date_registered` between '2022-09-01' and '2022-09-17' union all select 'Topup' AS `Topup`,sum(`eco_card_topup`.`amount`) AS `SUM(amount)` from `eco_card_topup` where `eco_card_topup`.`trn_date` between '2022-09-01' and '2022-09-17' union all select 'Cash' AS `Cash`,sum(`eco_station_sales_hist`.`d1_closing_bal_cash` - `eco_station_sales_hist`.`d1_open_bal_cash` + (`eco_station_sales_hist`.`d2_closing_bal_cash` - `eco_station_sales_hist`.`d2_open_bal_cash`)) AS `Name_exp_2` from `eco_station_sales_hist` where `eco_station_sales_hist`.`date` between '2022-09-01' and '2022-09-17'  ;

-- --------------------------------------------------------

--
-- Structure for view `eco_sales_rev_vw`
--
DROP TABLE IF EXISTS `eco_sales_rev_vw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `eco_sales_rev_vw`  AS SELECT 1 AS `date`, 1 AS `station_gsm`, 1 AS `card_sale`, 1 AS `cash_sale`, 1 AS `total_sale``total_sale`  ;

-- --------------------------------------------------------

--
-- Structure for view `eco_sales_vw`
--
DROP TABLE IF EXISTS `eco_sales_vw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `eco_sales_vw`  AS SELECT 1 AS `date`, 1 AS `station_gsm`, 1 AS `card_sale`, 1 AS `cash_sale`, 1 AS `total_sale``total_sale`  ;

-- --------------------------------------------------------

--
-- Structure for view `eco_sub_card_vw`
--
DROP TABLE IF EXISTS `eco_sub_card_vw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `eco_sub_card_vw`  AS SELECT 1 AS `sub_id`, 1 AS `sub_name`, 1 AS `card_no`, 1 AS `card_luhn`, 1 AS `min_recharge_limit`, 1 AS `recharge_limit`, 1 AS `card_status`, 1 AS `sub_status`, 1 AS `sub_category`, 1 AS `campus_code`, 1 AS `sub_mobile`, 1 AS `sub_email`, 1 AS `id_type`, 1 AS `id_number`, 1 AS `sub_record_stat`, 1 AS `ecobox_reg`, 1 AS `ecobox_pass`, 1 AS `ecomeal_balance``ecomeal_balance`  ;

-- --------------------------------------------------------

--
-- Structure for view `eco_sub_fee_vw`
--
DROP TABLE IF EXISTS `eco_sub_fee_vw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `eco_sub_fee_vw`  AS SELECT `eco_subscribers`.`sub_registration_date` AS `sub_registration_date`, `eco_subscribers`.`subscription_plan` AS `subscription_plan`, count(`eco_subscribers`.`id`) AS `sub_count` FROM `eco_subscribers` WHERE `eco_subscribers`.`sub_registration_date` between '2022-01-01' and '2022-09-17' GROUP BY `eco_subscribers`.`sub_registration_date`, `eco_subscribers`.`subscription_plan``subscription_plan`  ;

-- --------------------------------------------------------

--
-- Structure for view `eco_sub_stat_vw`
--
DROP TABLE IF EXISTS `eco_sub_stat_vw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `eco_sub_stat_vw`  AS SELECT `eco_subscribers`.`category` AS `category`, `eco_subscribers`.`sub_stat_dormancy` AS `sub_stat_dormancy`, count(0) AS `sub_count` FROM `eco_subscribers` GROUP BY `eco_subscribers`.`category`, `eco_subscribers`.`sub_stat_dormancy``sub_stat_dormancy`  ;

-- --------------------------------------------------------

--
-- Structure for view `eco_test_vw`
--
DROP TABLE IF EXISTS `eco_test_vw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `eco_test_vw`  AS SELECT 1 AS `id`, 1 AS `name`, 1 AS `username`, 1 AS `password`, 1 AS `department`, 1 AS `campus`, 1 AS `user_group`, 1 AS `mobile_no`, 1 AS `email`, 1 AS `photo`, 1 AS `status`, 1 AS `created`, 1 AS `updated`, 1 AS `ip_address`, 1 AS `salt`, 1 AS `activation_code`, 1 AS `forgotten_password_code`, 1 AS `forgotten_password_time`, 1 AS `remember_code`, 1 AS `created_on`, 1 AS `last_login`, 1 AS `active`, 1 AS `company`, 1 AS `date_last_login`, 1 AS `last_login_ip`, 1 AS `session_id`, 1 AS `date_created`, 1 AS `last_pass_change`, 1 AS `next_pass_change``next_pass_change`  ;

-- --------------------------------------------------------

--
-- Structure for view `eco_today_revenue_vw`
--
DROP TABLE IF EXISTS `eco_today_revenue_vw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `eco_today_revenue_vw`  AS SELECT 1 AS `report_date`, 1 AS `sub_fee`, 1 AS `sub_fee_count`, 1 AS `pos_recharges`, 1 AS `pos_recharges_count`, 1 AS `mob_recharges`, 1 AS `mob_recharges_count`, 1 AS `val_recharge`, 1 AS `val_recharge_count`, 1 AS `cash_sales`, 1 AS `cash_sales_count`, 1 AS `card_renewal`, 1 AS `card_renewal_count``card_renewal_count`  ;

-- --------------------------------------------------------

--
-- Structure for view `eco_topup_vw`
--
DROP TABLE IF EXISTS `eco_topup_vw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `eco_topup_vw`  AS SELECT `eco_card_topup`.`trn_date` AS `trn_date`, sum(`eco_card_topup`.`amount`) AS `total_topup` FROM `eco_card_topup` WHERE `eco_card_topup`.`trn_date` between '2022-01-01' and '2022-09-17' GROUP BY `eco_card_topup`.`trn_date``trn_date`  ;

-- --------------------------------------------------------

--
-- Structure for view `eco_water_sales_vw`
--
DROP TABLE IF EXISTS `eco_water_sales_vw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `eco_water_sales_vw`  AS SELECT `a`.`date` AS `sales_date`, `c`.`id` AS `campus_id`, `d`.`price_per_liter` AS `price_per_liter`, sum(`a`.`d1_closing_bal_card` - `a`.`d1_open_bal_card` + (`a`.`d1_closing_bal_cash` - `a`.`d1_open_bal_cash`) + (`a`.`d2_closing_bal_card` - `a`.`d2_open_bal_card`) + (`a`.`d2_closing_bal_cash` - `a`.`d2_open_bal_cash`)) AS `sales`, round(sum(`a`.`d1_closing_bal_card` - `a`.`d1_open_bal_card` + (`a`.`d1_closing_bal_cash` - `a`.`d1_open_bal_cash`) + (`a`.`d2_closing_bal_card` - `a`.`d2_open_bal_card`) + (`a`.`d2_closing_bal_cash` - `a`.`d2_open_bal_cash`)) / `d`.`price_per_liter`,0) AS `volume` FROM (((`eco_station_sales_hist` `a` left join `eco_stations` `b` on(`a`.`station_gsm` = `b`.`gsm`)) left join `eco_campus` `c` on(`b`.`campus_code` = `c`.`campus_code`)) left join `eco_water_price` `d` on(`c`.`id` = `d`.`campus`)) WHERE `a`.`date` between '2022-01-01' and '2022-09-17' AND `d`.`status` = 'Active' GROUP BY `a`.`date`, `c`.`id`, `d`.`price_per_liter``price_per_liter`  ;

--
-- Indexes for dumped tables
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
