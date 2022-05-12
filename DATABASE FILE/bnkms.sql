-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2021 at 12:24 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bnkms`
--

-- --------------------------------------------------------

--
-- Table structure for table `atm`
--

CREATE TABLE `atm` (
  `id` int(10) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `account_no` int(10) NOT NULL,
  `atm_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `atm`
--

INSERT INTO `atm` (`id`, `cust_name`, `account_no`, `atm_status`) VALUES
(15, 'Demo Name', 696969, 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `bank_customers`
--

CREATE TABLE `bank_customers` (
  `Username` varchar(20) DEFAULT NULL,
  `Password` varchar(15) DEFAULT NULL,
  `Customer_ID` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
--
-- Dumping data for table `bank_customers`
--

INSERT INTO `bank_customers` ( `Username`, `Password`, `Customer_ID`) VALUES
( 'Liam Moore', 'password', '1010112'),
( 'William Richards', 'password', '1011046'),
( 'Christine Moore', 'password', '1011426'),
( 'Romona Weiss', 'password', '1011742'   ),
( 'Trevor Russo', 'password', '1011439'   ),
( 'Kathryn White', 'password', '1011768'  ),
( 'Premier Internet', 'password', '1011722'),
( 'Edward Weese', 'password', '1011950'   );

-- --------------------------------------------------------

--
-- Table structure for table `bank_staff`
--

CREATE TABLE `bank_staff` (
  `Id` int(255) NOT NULL,
  `staff_name` varchar(50) DEFAULT NULL,
  `staff_id` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Mobile_no` varchar(50) DEFAULT NULL,
  `Email_id` varchar(50) DEFAULT 'Nill',
  `Gender` varchar(50) DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL,
  `DOB` varchar(50) DEFAULT NULL,
  `CITIZENSHIP` varchar(50) DEFAULT NULL,
  `PAN` varchar(50) DEFAULT NULL,
  `Home_addr` varchar(50) DEFAULT NULL,
  `Last_login` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_staff`
--

INSERT INTO `bank_staff` (`Id`, `staff_name`, `staff_id`, `Password`, `Mobile_no`, `Email_id`, `Gender`, `Department`, `DOB`, `CITIZENSHIP`, `PAN`, `Home_addr`, `Last_login`) VALUES
(1, 'Sean Smith', '210001', 'password', '7412225696', 'ssmith@gmail.com', 'Male', 'Revenue', '10121995', '379145632000', '14569855', '445 Woodlawn Drive', '27/07/21 03:53:18 PM');

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary_1010112`
--

CREATE TABLE `beneficiary_1010112` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `beneficiary_1010112`
--

INSERT INTO `beneficiary_1010112` (`id`, `Beneficiary_name`, `Beneficiary_ac_no`, `IFSC_code`, `Account_type`, `Status`, `Date_added`) VALUES
(2, 'William Richards', '1011801011046', '1011', 'Saving', 'ACTIVE', '26/07/21 11:02:55 PM'),
(3, 'Trevor Russo', '1011951011439', '1011', 'Saving', 'ACTIVE', '27/07/21 02:45:39 PM');

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary_1011046`
--

CREATE TABLE `beneficiary_1011046` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `beneficiary_1011046`
--

INSERT INTO `beneficiary_1011046` (`id`, `Beneficiary_name`, `Beneficiary_ac_no`, `IFSC_code`, `Account_type`, `Status`, `Date_added`) VALUES
(1, 'Trevor Russo', '1011951011439', '1011', 'Saving', 'ACTIVE', '27/07/21 10:32:58 AM');

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary_1011426`
--

CREATE TABLE `beneficiary_1011426` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beneficiary_1011426`
--

INSERT INTO `beneficiary_1011426` (`id`, `Beneficiary_name`, `Beneficiary_ac_no`, `IFSC_code`, `Account_type`, `Status`, `Date_added`) VALUES
(1, 'Trevor Russo', '1011951011439', '1011', 'Saving', 'ACTIVE', '26/07/21 11:56:42 PM');

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary_1011439`
--

CREATE TABLE `beneficiary_1011439` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beneficiary_1011439`
--

INSERT INTO `beneficiary_1011439` (`id`, `Beneficiary_name`, `Beneficiary_ac_no`, `IFSC_code`, `Account_type`, `Status`, `Date_added`) VALUES
(1, 'Kathryn White', '1011921011768', '1011', 'Saving', 'ACTIVE', '27/07/21 02:32:43 PM'),
(2, 'Romona Weiss', '1011751011742', '1011', 'Saving', 'ACTIVE', '27/07/21 02:59:41 PM'),
(3, 'Christine Moore', '1011411011426', '1011', 'Saving', 'ACTIVE', '27/07/21 03:12:14 PM'),
(4, 'Premier Internet', '1011591011722', '1011', 'Saving', 'ACTIVE', '27/07/21 03:23:54 PM');

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary_1011722`
--

CREATE TABLE `beneficiary_1011722` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary_1011742`
--

CREATE TABLE `beneficiary_1011742` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beneficiary_1011742`
--

INSERT INTO `beneficiary_1011742` (`id`, `Beneficiary_name`, `Beneficiary_ac_no`, `IFSC_code`, `Account_type`, `Status`, `Date_added`) VALUES
(1, 'Trevor Russo', '1011951011439', '1011', 'Saving', 'ACTIVE', '27/07/21 03:02:08 PM');

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary_1011768`
--

CREATE TABLE `beneficiary_1011768` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary_1011950`
--

CREATE TABLE `beneficiary_1011950` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beneficiary_1011950`
--

INSERT INTO `beneficiary_1011950` (`id`, `Beneficiary_name`, `Beneficiary_ac_no`, `IFSC_code`, `Account_type`, `Status`, `Date_added`) VALUES
(1, 'Kathryn White', '1011921011768', '1011', 'Saving', 'ACTIVE', '27/07/21 03:48:44 PM'),
(2, 'Premier Internet', '1011591011722', '1011', 'Saving', 'ACTIVE', '27/07/21 03:50:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `cheque_book`
--

CREATE TABLE `cheque_book` (
  `id` int(10) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `account_no` int(10) NOT NULL,
  `cheque_book_status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cheque_book`
--

INSERT INTO `cheque_book` (`id`, `cust_name`, `account_no`, `cheque_book_status`) VALUES
(8, 'Thom Yorke', 960010101, 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `passbook_1010112`
--

CREATE TABLE `passbook_1010112` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `passbook_1010112`
--

INSERT INTO `passbook_1010112` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '589306552', '26/12/20 02:55:43 PM', 'Account Opening', '0', '0', '0', NULL),
(2, '583402470', '26/12/20 03:01:35 PM', 'Cash Deposit/583402470572', '55000', '0', '55000', 'Cash Deposit'),
(5, '841496557', '26/07/21 11:08:04 PM', 'William Richards/1011801011046/1011', '0', '250', '4750', 'Billings'),
(6, '491178166', '27/07/21 02:46:16 PM', 'Trevor Russo/1011951011439/1011', '0', '1100', '3650', 'Personal');

-- --------------------------------------------------------

--
-- Table structure for table `passbook_1011046`
--

CREATE TABLE `passbook_1011046` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `passbook_1011046`
--

INSERT INTO `passbook_1011046` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '117402234543', '26/07/21 10:34:49 PM', 'Account Opening', '0', '0', '0', NULL),
(2, '406194305816', '26/07/21 10:50:56 PM', 'Cash Deposit/406194305816', '7500', '0', '7500', 'Cash Deposit'),
(3, '841496557790', '26/07/21 11:08:04 PM', 'Liam Moore/101107741010112/1011', '250', '0', '7750', 'Billings'),
(4, '429360631', '27/07/21 10:35:20 AM', 'Trevor Russo/1011951011439/1011', '0', '660', '7090', 'Sales');

-- --------------------------------------------------------

--
-- Table structure for table `passbook_1011426`
--

CREATE TABLE `passbook_1011426` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook_1011426`
--

INSERT INTO `passbook_1011426` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '206288618472', '26/07/21 11:24:10 PM', 'Account Opening', '0', '0', '0', NULL),
(2, '807477284', '26/07/21 11:32:55 PM', 'Cash Deposit/807477284', '2100', '0', '2100', 'Cash Deposit'),
(3, '983840333', '26/07/21 11:57:18 PM', 'Trevor Russo/1011951011439/1011', '0', '175', '1925', 'Rst Bills'),
(4, '200212796', '27/07/21 03:14:13 PM', 'Trevor Russo/1011951011439/1011', '37', '0', '1962', 'domain and stuff');

-- --------------------------------------------------------

--
-- Table structure for table `passbook_1011439`
--

CREATE TABLE `passbook_1011439` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook_1011439`
--

INSERT INTO `passbook_1011439` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '975444354', '26/07/21 11:52:58 PM', 'Account Opening', '0', '0', '0', NULL),
(2, '983840333', '26/07/21 11:57:18 PM', 'Christine Moore/1011411011426/1011', '175', '0', '175', 'Rst Bills'),
(3, '429360631', '27/07/21 10:35:20 AM', 'William Richards/1011801011046/1011', '660', '0', '835', 'Sales'),
(4, '613135262', '27/07/21 02:33:10 PM', 'Kathryn White/1011921011768/1011', '0', '50', '785', 'Rbills'),
(5, '491178166', '27/07/21 02:46:16 PM', 'Liam Moore/1011071010112/1011', '1100', '0', '1885', 'Personal'),
(6, '384183921', '27/07/21 03:00:04 PM', 'Romona Weiss/1011751011742/1011', '0', '113', '1772', 'sales'),
(7, '123457098', '27/07/21 03:07:47 PM', 'Romona Weiss/1011751011742/1011', '2', '0', '1774', 'cashback'),
(8, '200212796', '27/07/21 03:14:13 PM', 'Christine Moore/1011411011426/1011', '0', '37', '1737', 'domain and stuff'),
(9, '238728498', '27/07/21 03:15:46 PM', 'Cash Deposit/238728498', '3650', '0', '5387', 'Cash Deposit'),
(10, '350533416', '27/07/21 03:25:05 PM', 'Premier Internet/1011591011722/1011', '0', '113', '5274', 'Monthly Internet Bill Payment');

-- --------------------------------------------------------

--
-- Table structure for table `passbook_1011722`
--

CREATE TABLE `passbook_1011722` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook_1011722`
--

INSERT INTO `passbook_1011722` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '146191935', '27/07/21 03:20:32 PM', 'Account Opening', '0', '0', '0', NULL),
(2, '350533416', '27/07/21 03:25:05 PM', 'Trevor Russo/1011951011439/1011', '113', '0', '113', 'Monthly Internet Bill Payment'),
(3, '265493438', '27/07/21 03:50:25 PM', 'Edward Weese/1011801011950/1011', '97', '0', '210', 'Internet Bills Payment');

-- --------------------------------------------------------

--
-- Table structure for table `passbook_1011742`
--

CREATE TABLE `passbook_1011742` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook_1011742`
--

INSERT INTO `passbook_1011742` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '877580638', '27/07/21 02:55:25 PM', 'Account Opening', '0', '0', '0', NULL),
(2, '384183921', '27/07/21 03:00:04 PM', 'Trevor Russo/1011951011439/1011', '113', '0', '113', 'sales'),
(3, '123457098', '27/07/21 03:07:47 PM', 'Trevor Russo/1011951011439/1011', '0', '2', '111', 'cashback');

-- --------------------------------------------------------

--
-- Table structure for table `passbook_1011768`
--

CREATE TABLE `passbook_1011768` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook_1011768`
--

INSERT INTO `passbook_1011768` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '492641662', '27/07/21 10:44:50 AM', 'Account Opening', '0', '0', '0', NULL),
(2, '613135262', '27/07/21 02:33:10 PM', 'Trevor Russo/1011951011439/1011', '50', '0', '50', 'Rbills'),
(3, '693782042', '27/07/21 03:49:15 PM', 'Edward Weese/1011801011950/1011', '165', '0', '215', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `passbook_1011950`
--

CREATE TABLE `passbook_1011950` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook_1011950`
--

INSERT INTO `passbook_1011950` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '470459348', '27/07/21 03:42:57 PM', 'Account Opening', '0', '0', '0', NULL),
(2, '618213240', '27/07/21 03:47:09 PM', 'Cash Deposit/618213240', '6000', '0', '6000', 'Cash Deposit'),
(3, '693782042', '27/07/21 03:49:15 PM', 'Kathryn White/1011921011768/1011', '0', '165', '5835', 'none'),
(4, '265493438', '27/07/21 03:50:25 PM', 'Premier Internet/1011591011722/1011', '0', '97', '5738', 'Internet Bills Payment');

-- --------------------------------------------------------

--
-- Table structure for table `pending_accounts`
--

CREATE TABLE `pending_accounts` (
  `Application_no` varchar(50) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `Mobile_no` varchar(50) DEFAULT NULL,
  `Email_id` varchar(50) DEFAULT 'Nil',
  `Landline_no` varchar(50) DEFAULT 'Nil',
  `DOB` varchar(50) DEFAULT NULL,
  `PAN` varchar(50) DEFAULT NULL,
  `CITIZENSHIP` varchar(50) DEFAULT NULL,
  `Home_Addr` varchar(100) DEFAULT NULL,
  `Office_Addr` varchar(100) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Pin` varchar(50) DEFAULT NULL,
  `Area_Loc` varchar(255) DEFAULT NULL,
  `Nominee_ac_no` varchar(255) DEFAULT NULL,
  `Account_type` varchar(50) DEFAULT NULL,
  `Application_Date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `relationship` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `doj` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `gender` char(1) NOT NULL,
  `lastlogin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `dob`, `relationship`, `department`, `doj`, `address`, `mobile`, `email`, `pwd`, `gender`, `lastlogin`) VALUES
(1, 'Ethel C Dziedzic', '1990-05-05', 'married', 'revenue', '1999-11-11', '1293 Public Works Drive', '7854444444', 'etttt@gmail.com', 'qwerty', 'M', '2015-01-11 10:29:48'),
(2, 'Ronald L Braun', '1998-08-21', 'unmarried', 'revenue', '2013-08-03', '4112 Grove Street', '7410000020', 'rlbb@gmail.com', 'qweer', 'M', '2015-01-10 21:22:59'),
(4, 'Debra S Chavez\n', '1989-05-31', 'married', 'revenue', '2015-01-04', '4937 Edington Drive', '8542221010', 'debr@gmail.com', '6969', 'M', '2019-03-04 05:11:00'),
(5, 'Denise R Lemus', '1980-04-21', 'married', 'revenue', '1991-01-01', '4920 Hickory Street', '7850001256', 'denise@gmail.com', '9600pass', 'M', '2020-03-01 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atm`
--
ALTER TABLE `atm`
  ADD PRIMARY KEY (`id`);



--
-- Indexes for table `bank_staff`
--
ALTER TABLE `bank_staff`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `beneficiary_1010112`
--
ALTER TABLE `beneficiary_1010112`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiary_1011046`
--
ALTER TABLE `beneficiary_1011046`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiary_1011426`
--
ALTER TABLE `beneficiary_1011426`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiary_1011439`
--
ALTER TABLE `beneficiary_1011439`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiary_1011722`
--
ALTER TABLE `beneficiary_1011722`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiary_1011742`
--
ALTER TABLE `beneficiary_1011742`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiary_1011768`
--
ALTER TABLE `beneficiary_1011768`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiary_1011950`
--
ALTER TABLE `beneficiary_1011950`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cheque_book`
--
ALTER TABLE `cheque_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbook_1010112`
--
ALTER TABLE `passbook_1010112`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbook_1011046`
--
ALTER TABLE `passbook_1011046`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbook_1011426`
--
ALTER TABLE `passbook_1011426`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbook_1011439`
--
ALTER TABLE `passbook_1011439`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbook_1011722`
--
ALTER TABLE `passbook_1011722`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbook_1011742`
--
ALTER TABLE `passbook_1011742`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbook_1011768`
--
ALTER TABLE `passbook_1011768`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbook_1011950`
--
ALTER TABLE `passbook_1011950`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pending_accounts`
--
ALTER TABLE `pending_accounts`
  ADD PRIMARY KEY (`Application_no`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atm`
--
ALTER TABLE `atm`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `bank_staff`
--
ALTER TABLE `bank_staff`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `beneficiary_1010112`
--
ALTER TABLE `beneficiary_1010112`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `beneficiary_1011046`
--
ALTER TABLE `beneficiary_1011046`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `beneficiary_1011426`
--
ALTER TABLE `beneficiary_1011426`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `beneficiary_1011439`
--
ALTER TABLE `beneficiary_1011439`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `beneficiary_1011722`
--
ALTER TABLE `beneficiary_1011722`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `beneficiary_1011742`
--
ALTER TABLE `beneficiary_1011742`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `beneficiary_1011768`
--
ALTER TABLE `beneficiary_1011768`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `beneficiary_1011950`
--
ALTER TABLE `beneficiary_1011950`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cheque_book`
--
ALTER TABLE `cheque_book`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `passbook_1010112`
--
ALTER TABLE `passbook_1010112`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `passbook_1011046`
--
ALTER TABLE `passbook_1011046`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `passbook_1011426`
--
ALTER TABLE `passbook_1011426`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `passbook_1011439`
--
ALTER TABLE `passbook_1011439`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `passbook_1011722`
--
ALTER TABLE `passbook_1011722`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `passbook_1011742`
--
ALTER TABLE `passbook_1011742`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `passbook_1011768`
--
ALTER TABLE `passbook_1011768`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `passbook_1011950`
--
ALTER TABLE `passbook_1011950`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
