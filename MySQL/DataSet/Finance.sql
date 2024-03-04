-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 19, 2024 at 11:12 AM
-- Server version: 5.6.51
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dssaiai_financial_predictive_analytics`
--

-- --------------------------------------------------------

--
-- Table structure for table `DSAI_M_Account_Group`
--

CREATE TABLE `DSAI_M_Account_Group` (
  `Account_Group_Code` varchar(3) DEFAULT NULL,
  `Account_Group_Name` varchar(17) DEFAULT NULL,
  `Reporting_Category` varchar(2) DEFAULT NULL,
  `Created_User` varchar(9) DEFAULT NULL,
  `Created_DT` datetime DEFAULT NULL,
  `Updated_User` varchar(9) DEFAULT NULL,
  `Updated_DT` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DSAI_M_Account_Group`
--

INSERT INTO `DSAI_M_Account_Group` (`Account_Group_Code`, `Account_Group_Name`, `Reporting_Category`, `Created_User`, `Created_DT`, `Updated_User`, `Updated_DT`) VALUES
('INC', 'Income account', 'PL', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('EXP', 'Expenses Account', 'PL', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('AST', 'Asset Account', 'BL', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('LIB', 'Liability Account', 'BL', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `DSAI_M_Company`
--

CREATE TABLE `DSAI_M_Company` (
  `Country_Code` varchar(3) DEFAULT NULL,
  `Company_Code` varchar(13) DEFAULT NULL,
  `Company_Name` varchar(40) DEFAULT NULL,
  `Subsidiary` varchar(1) DEFAULT NULL,
  `Parent_Company` varchar(8) DEFAULT NULL,
  `Created_User` varchar(9) DEFAULT NULL,
  `Created_DT` datetime DEFAULT NULL,
  `Updated_User` varchar(9) DEFAULT NULL,
  `Updated_DT` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DSAI_M_Company`
--

INSERT INTO `DSAI_M_Company` (`Country_Code`, `Company_Code`, `Company_Name`, `Subsidiary`, `Parent_Company`, `Created_User`, `Created_DT`, `Updated_User`, `Updated_DT`) VALUES
('USA', 'DSAI-INC', 'DeepSphere.AI Incorporation', 'N', '', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('IND', 'DSAI-IN-PTLD', 'DeepSphere.AI India Private Limited ', 'Y', 'DSAI-INC', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('SIN', 'DSAI-SIN-PTLD', 'DeepSphere.AI Singapore Private Limited ', 'Y', 'DSAI-INC', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `DSAI_M_Cost_Center`
--

CREATE TABLE `DSAI_M_Cost_Center` (
  `Cost_Center_Code` varchar(8) DEFAULT NULL,
  `Cost_Center_Name` varchar(19) DEFAULT NULL,
  `Company_Code` varchar(3) DEFAULT NULL,
  `Created_User` varchar(9) DEFAULT NULL,
  `Created_DT` datetime DEFAULT NULL,
  `Updated_User` varchar(9) DEFAULT NULL,
  `Updated_DT` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DSAI_M_Cost_Center`
--

INSERT INTO `DSAI_M_Cost_Center` (`Cost_Center_Code`, `Cost_Center_Name`, `Company_Code`, `Created_User`, `Created_DT`, `Updated_User`, `Updated_DT`) VALUES
('PAYROLL1', 'PAYROLL Cost Cnter ', 'USA', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('PAYROLL2', 'PAYROLL Cost Cnter ', 'IND', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('PAYROLL3', 'PAYROLL Cost Cnter ', 'SIN', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('LEGAL1', 'Legal Cost Cnter ', 'USA', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('LEGAL2', 'Legal Cost Cnter ', 'IND', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('LEGAL3', 'Legal Cost Cnter ', 'SIN', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('ADMIN 1', 'Admin Cost Center ', 'USA', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('ADMIN 2', 'Admin Cost Center ', 'IND', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('ADMIN 3', 'Admin Cost Center ', 'SIN', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `DSAI_M_Country`
--

CREATE TABLE `DSAI_M_Country` (
  `Country_Code` varchar(3) DEFAULT NULL,
  `Country_Name` varchar(22) DEFAULT NULL,
  `Created_User` varchar(9) DEFAULT NULL,
  `Created_DT` datetime DEFAULT NULL,
  `Updated_User` varchar(9) DEFAULT NULL,
  `Updated_DT` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DSAI_M_Country`
--

INSERT INTO `DSAI_M_Country` (`Country_Code`, `Country_Name`, `Created_User`, `Created_DT`, `Updated_User`, `Updated_DT`) VALUES
('USA', 'United Stas of America', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('IND', 'India', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('SIN', 'Singapore', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `DSAI_M_Exchange_Rate`
--

CREATE TABLE `DSAI_M_Exchange_Rate` (
  `From_Currency` varchar(3) DEFAULT NULL,
  `To_Currency` varchar(3) DEFAULT NULL,
  `Historical_Exchange_Rates` decimal(4,3) DEFAULT NULL,
  `Month_End_Average_Rate` decimal(4,3) DEFAULT NULL,
  `Created_User` varchar(9) DEFAULT NULL,
  `Created_DT` datetime DEFAULT NULL,
  `Updated_User` varchar(9) DEFAULT NULL,
  `Updated_DT` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DSAI_M_Exchange_Rate`
--

INSERT INTO `DSAI_M_Exchange_Rate` (`From_Currency`, `To_Currency`, `Historical_Exchange_Rates`, `Month_End_Average_Rate`, `Created_User`, `Created_DT`, `Updated_User`, `Updated_DT`) VALUES
('INR', 'USD', 0.011, 0.015, 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('SDG', 'USD', 0.720, 0.740, 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `DSAI_M_Fiscal_Year`
--

CREATE TABLE `DSAI_M_Fiscal_Year` (
  `Fiscal_Year` varchar(3) DEFAULT NULL,
  `From_Month` varchar(3) DEFAULT NULL,
  `To_Month` varchar(3) DEFAULT NULL,
  `Created_User` varchar(9) DEFAULT NULL,
  `Created_DT` datetime DEFAULT NULL,
  `Updated_User` varchar(9) DEFAULT NULL,
  `Updated_DT` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DSAI_M_Fiscal_Year`
--

INSERT INTO `DSAI_M_Fiscal_Year` (`Fiscal_Year`, `From_Month`, `To_Month`, `Created_User`, `Created_DT`, `Updated_User`, `Updated_DT`) VALUES
('FY1', 'JUN', 'MAY', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `DSAI_M_GL_Account`
--

CREATE TABLE `DSAI_M_GL_Account` (
  `GL_Account_Number` int(6) DEFAULT NULL,
  `Account_Group_Code` varchar(3) DEFAULT NULL,
  `GL_Account_Name` varchar(21) DEFAULT NULL,
  `Created_User` varchar(9) DEFAULT NULL,
  `Created_DT` datetime DEFAULT NULL,
  `Updated_User` varchar(9) DEFAULT NULL,
  `Updated_DT` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DSAI_M_GL_Account`
--

INSERT INTO `DSAI_M_GL_Account` (`GL_Account_Number`, `Account_Group_Code`, `GL_Account_Name`, `Created_User`, `Created_DT`, `Updated_User`, `Updated_DT`) VALUES
(999991, 'INC', 'Product Revenue', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
(999992, 'INC', 'Services Revenue ', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
(999993, 'INC', 'Bank Revenue ', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
(999994, 'INC', 'Investment Revenue ', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
(999994, 'INC', 'Other Revenue ', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
(888881, 'EXP', 'Operating Expense ', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
(888882, 'EXP', 'Labor Expense', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
(888883, 'EXP', 'Foreign Expense', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
(888884, 'EXP', 'Rent Expense', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
(888885, 'EXP', 'Misleasance Expense', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
(777771, 'LIB', 'Payable  Liabilities ', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
(777772, 'LIB', 'Lease  Liabilities ', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
(777773, 'LIB', 'Vendor  Liabilities ', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
(777774, 'LIB', 'Tax Liabilities ', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
(777775, 'LIB', 'Mortgage Liabilities ', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
(666661, 'AST', 'Cash', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
(666662, 'AST', 'Building', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
(666663, 'AST', 'Materials ', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
(666664, 'AST', 'Inventory', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
(666665, 'AST', 'Bank Deposits ', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `DSAI_M_Local_Currency`
--

CREATE TABLE `DSAI_M_Local_Currency` (
  `Country_Code` varchar(3) DEFAULT NULL,
  `Local_Currency_Code` varchar(3) DEFAULT NULL,
  `Local_Currency_Name` varchar(17) DEFAULT NULL,
  `Created_User` varchar(9) DEFAULT NULL,
  `Created_DT` datetime DEFAULT NULL,
  `Updated_User` varchar(9) DEFAULT NULL,
  `Updated_DT` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DSAI_M_Local_Currency`
--

INSERT INTO `DSAI_M_Local_Currency` (`Country_Code`, `Local_Currency_Code`, `Local_Currency_Name`, `Created_User`, `Created_DT`, `Updated_User`, `Updated_DT`) VALUES
('USA', 'USD', 'American Dollars', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('IND', 'INR', 'Indian Rupees ', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('SIN', 'SDG', 'Singapore Dollars', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `DSAI_M_Posting_Period`
--

CREATE TABLE `DSAI_M_Posting_Period` (
  `Period` int(2) DEFAULT NULL,
  `Month` varchar(3) DEFAULT NULL,
  `Created_User` varchar(9) DEFAULT NULL,
  `Created_DT` datetime DEFAULT NULL,
  `Updated_User` varchar(9) DEFAULT NULL,
  `Updated_DT` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DSAI_M_Posting_Period`
--

INSERT INTO `DSAI_M_Posting_Period` (`Period`, `Month`, `Created_User`, `Created_DT`, `Updated_User`, `Updated_DT`) VALUES
(1, 'JUN', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
(2, 'JUL', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
(3, 'AUG', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
(4, 'SEP', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
(5, 'OCT', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
(6, 'NOV', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
(7, 'DEC', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
(8, 'JAN', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
(9, 'FEB', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
(10, 'MAR', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
(11, 'APR', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
(12, 'MAY', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `DSAI_M_Reporting_Currency`
--

CREATE TABLE `DSAI_M_Reporting_Currency` (
  `Reporting_Currency_Code` varchar(3) DEFAULT NULL,
  `Reporting_Currency_Name` varchar(17) DEFAULT NULL,
  `Created_User` varchar(9) DEFAULT NULL,
  `Created_DT` datetime DEFAULT NULL,
  `Updated_User` varchar(9) DEFAULT NULL,
  `Updated_DT` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DSAI_M_Reporting_Currency`
--

INSERT INTO `DSAI_M_Reporting_Currency` (`Reporting_Currency_Code`, `Reporting_Currency_Name`, `Created_User`, `Created_DT`, `Updated_User`, `Updated_DT`) VALUES
('USD', 'American Dollars', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('SDG', 'Singapore Dollars', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `DSAI_T_GL_Posting`
--

CREATE TABLE `DSAI_T_GL_Posting` (
  `GL_Account_Number` varchar(6) DEFAULT NULL,
  `Country_Code` varchar(3) DEFAULT NULL,
  `Company_Code` varchar(12) DEFAULT NULL,
  `Reporting_Currency_Code` varchar(3) DEFAULT NULL,
  `Period` varchar(2) DEFAULT NULL,
  `Fiscal_Year` varchar(4) DEFAULT NULL,
  `Cost_Center_Code` varchar(8) DEFAULT NULL,
  `Amount_in_Local Currency` varchar(16) DEFAULT NULL,
  `Created_User` varchar(9) DEFAULT NULL,
  `Created_DT` datetime DEFAULT NULL,
  `Updated_User` varchar(9) DEFAULT NULL,
  `Updated_DT` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DSAI_T_GL_Posting`
--

INSERT INTO `DSAI_T_GL_Posting` (`GL_Account_Number`, `Country_Code`, `Company_Code`, `Reporting_Currency_Code`, `Period`, `Fiscal_Year`, `Cost_Center_Code`, `Amount_in_Local Currency`, `Created_User`, `Created_DT`, `Updated_User`, `Updated_DT`) VALUES
('999991', 'USA', 'DSAI-INC', 'USD', '1', 'FY1', '', '$1,000,000.00', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('999992', 'USA', 'DSAI-INC', 'USD', '1', 'FY1', '', '$1,003,450.00', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('999993', 'USA', 'DSAI-INC', 'USD', '1', 'FY1', '', '$1,006,911.90', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('999994', 'USA', 'DSAI-INC', 'USD', '1', 'FY1', '', '$1,010,385.75', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('999994', 'USA', 'DSAI-INC', 'USD', '1', 'FY1', '', '$1,013,871.58', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('888881', 'USA', 'DSAI-INC', 'USD', '1', 'FY1', 'PAYROLL1', '$1,010,373.72', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('888882', 'USA', 'DSAI-INC', 'USD', '1', 'FY1', 'PAYROLL2', '$1,006,887.93', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('888883', 'USA', 'DSAI-INC', 'USD', '1', 'FY1', 'PAYROLL3', '$1,003,414.17', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('888884', 'USA', 'DSAI-INC', 'USD', '1', 'FY1', 'PAYROLL4', '$999,952.39', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('888885', 'USA', 'DSAI-INC', 'USD', '1', 'FY1', 'PAYROLL5', '$996,502.56', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('777771', 'USA', 'DSAI-INC', 'USD', '1', 'FY1', '', '$993,064.62', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('777772', 'USA', 'DSAI-INC', 'USD', '1', 'FY1', '', '$989,638.55', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('777773', 'USA', 'DSAI-INC', 'USD', '1', 'FY1', '', '$986,224.30', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('777774', 'USA', 'DSAI-INC', 'USD', '1', 'FY1', '', '$982,821.82', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('777775', 'USA', 'DSAI-INC', 'USD', '1', 'FY1', '', '$979,431.09', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('666661', 'USA', 'DSAI-INC', 'USD', '1', 'FY1', '', '$976,052.05', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('666662', 'USA', 'DSAI-INC', 'USD', '1', 'FY1', '', '$972,684.67', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('666663', 'USA', 'DSAI-INC', 'USD', '1', 'FY1', '', '$969,328.91', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('666664', 'USA', 'DSAI-INC', 'USD', '1', 'FY1', '', '$965,984.72', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('666665', 'USA', 'DSAI-INC', 'USD', '1', 'FY1', '', '$962,652.08', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('999991', 'USA', 'DSAI-INC', 'USD', '2', 'FY1', '', '$1,001,107.05', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('999992', 'USA', 'DSAI-INC', 'USD', '2', 'FY1', '', '$1,003,450.00', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('999993', 'USA', 'DSAI-INC', 'USD', '2', 'FY1', '', '$1,008,063.18', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('999994', 'USA', 'DSAI-INC', 'USD', '2', 'FY1', '', '$1,011,539.72', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('999994', 'USA', 'DSAI-INC', 'USD', '2', 'FY1', '', '$1,015,030.85', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('888881', 'USA', 'DSAI-INC', 'USD', '2', 'FY1', 'PAYROLL1', '$1,011,536.99', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('888882', 'USA', 'DSAI-INC', 'USD', '2', 'FY1', 'PAYROLL2', '$1,005,720.65', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('888883', 'USA', 'DSAI-INC', 'USD', '2', 'FY1', 'PAYROLL3', '$1,004,577.44', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('888884', 'USA', 'DSAI-INC', 'USD', '2', 'FY1', 'PAYROLL4', '$1,001,108.97', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('888885', 'USA', 'DSAI-INC', 'USD', '2', 'FY1', 'PAYROLL5', '$997,657.82', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('777771', 'USA', 'DSAI-INC', 'USD', '2', 'FY1', '', '$994,215.90', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('777772', 'USA', 'DSAI-INC', 'USD', '2', 'FY1', '', '$990,785.85', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('777773', 'USA', 'DSAI-INC', 'USD', '2', 'FY1', '', '$987,367.64', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('777774', 'USA', 'DSAI-INC', 'USD', '2', 'FY1', '', '$983,961.23', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('777775', 'USA', 'DSAI-INC', 'USD', '2', 'FY1', '', '$980,566.56', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('666661', 'USA', 'DSAI-INC', 'USD', '2', 'FY1', '', '$977,183.60', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('666662', 'USA', 'DSAI-INC', 'USD', '2', 'FY1', '', '$973,812.32', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('666663', 'USA', 'DSAI-INC', 'USD', '2', 'FY1', '', '$970,452.67', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('666664', 'USA', 'DSAI-INC', 'USD', '2', 'FY1', '', '$967,104.61', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('666665', 'USA', 'DSAI-INC', 'USD', '2', 'FY1', '', '$963,768.10', 'DSAI User', '2024-01-23 10:00:00', 'DSAI User', '2024-01-23 10:00:00'),
('999991', 'IND', 'DSAI-IN-PTLD', 'USD', '3', 'FY1', '', 'INR 1,006,070.46', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('999992', 'IND', 'DSAI-IN-PTLD', 'USD', '3', 'FY1', '', 'INR 1,003,450.00', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('999993', 'IND', 'DSAI-IN-PTLD', 'USD', '3', 'FY1', '', 'INR 1,013,244.44', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('999994', 'IND', 'DSAI-IN-PTLD', 'USD', '3', 'FY1', '', 'INR 1,016,707.48', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('999994', 'IND', 'DSAI-IN-PTLD', 'USD', '3', 'FY1', '', 'INR 1,020,249.06', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('888881', 'IND', 'DSAI-IN-PTLD', 'USD', '3', 'FY1', 'PAYROLL1', 'INR 1,016,773.04', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('888882', 'IND', 'DSAI-IN-PTLD', 'USD', '3', 'FY1', 'PAYROLL2', 'INR 1,010,974.93', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('888883', 'IND', 'DSAI-IN-PTLD', 'USD', '3', 'FY1', 'PAYROLL3', 'INR 1,009,813.82', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('888884', 'IND', 'DSAI-IN-PTLD', 'USD', '3', 'FY1', 'PAYROLL4', 'INR 1,006,315.49', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('888885', 'IND', 'DSAI-IN-PTLD', 'USD', '3', 'FY1', 'PAYROLL5', 'INR 1,002,858.36', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('777771', 'IND', 'DSAI-IN-PTLD', 'USD', '3', 'FY1', '', 'INR 999,398.42', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('777772', 'IND', 'DSAI-IN-PTLD', 'USD', '3', 'FY1', '', 'INR 995,950.58', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('777773', 'IND', 'DSAI-IN-PTLD', 'USD', '3', 'FY1', '', 'INR 992,514.55', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('777774', 'IND', 'DSAI-IN-PTLD', 'USD', '3', 'FY1', '', 'INR 989,090.37', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('777775', 'IND', 'DSAI-IN-PTLD', 'USD', '3', 'FY1', '', 'INR 985,678.01', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('666661', 'IND', 'DSAI-IN-PTLD', 'USD', '3', 'FY1', '', 'INR 982,277.42', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('666662', 'IND', 'DSAI-IN-PTLD', 'USD', '3', 'FY1', '', 'INR 978,888.56', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('666663', 'IND', 'DSAI-IN-PTLD', 'USD', '3', 'FY1', '', 'INR 975,511.40', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('666664', 'IND', 'DSAI-IN-PTLD', 'USD', '3', 'FY1', '', 'INR 972,145.88', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('666665', 'IND', 'DSAI-IN-PTLD', 'USD', '3', 'FY1', '', 'INR 968,791.98', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('999991', 'IND', 'DSAI-IN-PTLD', 'USD', '4', 'FY1', '', '$1,007,184.57', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('999992', 'IND', 'DSAI-IN-PTLD', 'USD', '4', 'FY1', '', '$1,003,450.00', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('999993', 'IND', 'DSAI-IN-PTLD', 'USD', '4', 'FY1', '', '$1,014,402.70', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('999994', 'IND', 'DSAI-IN-PTLD', 'USD', '4', 'FY1', '', '$1,017,861.45', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('999994', 'IND', 'DSAI-IN-PTLD', 'USD', '4', 'FY1', '', '$1,021,415.62', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('888881', 'IND', 'DSAI-IN-PTLD', 'USD', '4', 'FY1', 'PAYROLL1', '$1,017,943.58', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('888882', 'IND', 'DSAI-IN-PTLD', 'USD', '4', 'FY1', 'PAYROLL2', '$1,012,149.56', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('888883', 'IND', 'DSAI-IN-PTLD', 'USD', '4', 'FY1', 'PAYROLL3', '$1,010,984.45', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('888884', 'IND', 'DSAI-IN-PTLD', 'USD', '4', 'FY1', 'PAYROLL4', '$1,007,479.46', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('888885', 'IND', 'DSAI-IN-PTLD', 'USD', '4', 'FY1', 'PAYROLL5', '$1,004,020.99', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('777771', 'IND', 'DSAI-IN-PTLD', 'USD', '4', 'FY1', '', '$1,000,557.02', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('777772', 'IND', 'DSAI-IN-PTLD', 'USD', '4', 'FY1', '', '$997,105.20', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('777773', 'IND', 'DSAI-IN-PTLD', 'USD', '4', 'FY1', '', '$993,665.19', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('777774', 'IND', 'DSAI-IN-PTLD', 'USD', '4', 'FY1', '', '$990,237.04', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('777775', 'IND', 'DSAI-IN-PTLD', 'USD', '4', 'FY1', '', '$986,820.72', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('666661', 'IND', 'DSAI-IN-PTLD', 'USD', '4', 'FY1', '', '$983,416.19', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('666662', 'IND', 'DSAI-IN-PTLD', 'USD', '4', 'FY1', '', '$980,023.41', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('666663', 'IND', 'DSAI-IN-PTLD', 'USD', '4', 'FY1', '', '$976,642.33', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('666664', 'IND', 'DSAI-IN-PTLD', 'USD', '4', 'FY1', '', '$973,272.91', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('666665', 'IND', 'DSAI-IN-PTLD', 'USD', '4', 'FY1', '', '$969,915.12', 'DSAI User', '2024-01-24 10:00:00', 'DSAI User', '2024-01-24 10:00:00'),
('999991', 'USA', 'DSAI-INC', 'USD', '5', 'FY1', '', '$1,000,000.00', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('999992', 'USA', 'DSAI-INC', 'USD', '5', 'FY1', '', '$1,003,450.00', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('999993', 'USA', 'DSAI-INC', 'USD', '5', 'FY1', '', '$1,006,911.90', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('999994', 'USA', 'DSAI-INC', 'USD', '5', 'FY1', '', '$1,010,385.75', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('999994', 'USA', 'DSAI-INC', 'USD', '5', 'FY1', '', '$1,013,871.58', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('888881', 'USA', 'DSAI-INC', 'USD', '5', 'FY1', 'PAYROLL1', '$1,010,373.72', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('888882', 'USA', 'DSAI-INC', 'USD', '5', 'FY1', 'PAYROLL2', '$1,006,887.93', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('888883', 'USA', 'DSAI-INC', 'USD', '5', 'FY1', 'PAYROLL3', '$1,003,414.17', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('888884', 'USA', 'DSAI-INC', 'USD', '5', 'FY1', 'PAYROLL4', '$999,952.39', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('888885', 'USA', 'DSAI-INC', 'USD', '5', 'FY1', 'PAYROLL5', '$996,502.56', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('777771', 'USA', 'DSAI-INC', 'USD', '5', 'FY1', '', '$993,064.62', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('777772', 'USA', 'DSAI-INC', 'USD', '5', 'FY1', '', '$989,638.55', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('777773', 'USA', 'DSAI-INC', 'USD', '5', 'FY1', '', '$986,224.30', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('777774', 'USA', 'DSAI-INC', 'USD', '5', 'FY1', '', '$982,821.82', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('777775', 'USA', 'DSAI-INC', 'USD', '5', 'FY1', '', '$979,431.09', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('666661', 'USA', 'DSAI-INC', 'USD', '5', 'FY1', '', '$976,052.05', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('666662', 'USA', 'DSAI-INC', 'USD', '5', 'FY1', '', '$972,684.67', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('666663', 'USA', 'DSAI-INC', 'USD', '5', 'FY1', '', '$969,328.91', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('666664', 'USA', 'DSAI-INC', 'USD', '5', 'FY1', '', '$965,984.72', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('666665', 'USA', 'DSAI-INC', 'USD', '5', 'FY1', '', '$962,652.08', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('999991', 'USA', 'DSAI-INC', 'USD', '6', 'FY1', '', '$1,000,000.00', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('999992', 'USA', 'DSAI-INC', 'USD', '6', 'FY1', '', '$1,003,450.00', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('999993', 'USA', 'DSAI-INC', 'USD', '6', 'FY1', '', '$1,006,911.90', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('999994', 'USA', 'DSAI-INC', 'USD', '6', 'FY1', '', '$1,010,385.75', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('999994', 'USA', 'DSAI-INC', 'USD', '6', 'FY1', '', '$1,013,871.58', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('888881', 'USA', 'DSAI-INC', 'USD', '6', 'FY1', 'PAYROLL1', '$1,010,373.72', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('888882', 'USA', 'DSAI-INC', 'USD', '6', 'FY1', 'PAYROLL2', '$1,006,887.93', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('888883', 'USA', 'DSAI-INC', 'USD', '6', 'FY1', 'PAYROLL3', '$1,003,414.17', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('888884', 'USA', 'DSAI-INC', 'USD', '6', 'FY1', 'PAYROLL4', '$999,952.39', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('888885', 'USA', 'DSAI-INC', 'USD', '6', 'FY1', 'PAYROLL5', '$996,502.56', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('777771', 'USA', 'DSAI-INC', 'USD', '6', 'FY1', '', '$993,064.62', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('777772', 'USA', 'DSAI-INC', 'USD', '6', 'FY1', '', '$989,638.55', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('777773', 'USA', 'DSAI-INC', 'USD', '6', 'FY1', '', '$986,224.30', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('777774', 'USA', 'DSAI-INC', 'USD', '6', 'FY1', '', '$982,821.82', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('777775', 'USA', 'DSAI-INC', 'USD', '6', 'FY1', '', '$979,431.09', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('666661', 'USA', 'DSAI-INC', 'USD', '6', 'FY1', '', '$976,052.05', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('666662', 'USA', 'DSAI-INC', 'USD', '6', 'FY1', '', '$972,684.67', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('666663', 'USA', 'DSAI-INC', 'USD', '6', 'FY1', '', '$969,328.91', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('666664', 'USA', 'DSAI-INC', 'USD', '6', 'FY1', '', '$965,984.72', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('666665', 'USA', 'DSAI-INC', 'USD', '6', 'FY1', '', '$962,652.08', 'DSAI User', '2024-01-25 10:00:00', 'DSAI User', '2024-01-25 10:00:00'),
('999991', 'IND', 'DSAI-IN-PTLD', 'USD', '7', 'FY1', '', '$1,000,000.00', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('999992', 'IND', 'DSAI-IN-PTLD', 'USD', '7', 'FY1', '', '$1,003,450.00', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('999993', 'IND', 'DSAI-IN-PTLD', 'USD', '7', 'FY1', '', '$1,006,911.90', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('999994', 'IND', 'DSAI-IN-PTLD', 'USD', '7', 'FY1', '', '$1,010,385.75', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('999994', 'IND', 'DSAI-IN-PTLD', 'USD', '7', 'FY1', '', '$1,013,871.58', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('888881', 'IND', 'DSAI-IN-PTLD', 'USD', '7', 'FY1', 'PAYROLL1', '$1,010,373.72', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('888882', 'IND', 'DSAI-IN-PTLD', 'USD', '7', 'FY1', 'PAYROLL2', '$1,006,887.93', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('888883', 'IND', 'DSAI-IN-PTLD', 'USD', '7', 'FY1', 'PAYROLL3', '$1,003,414.17', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('888884', 'IND', 'DSAI-IN-PTLD', 'USD', '7', 'FY1', 'PAYROLL4', '$999,952.39', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('888885', 'IND', 'DSAI-IN-PTLD', 'USD', '7', 'FY1', 'PAYROLL5', '$996,502.56', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('777771', 'IND', 'DSAI-IN-PTLD', 'USD', '7', 'FY1', '', '$993,064.62', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('777772', 'IND', 'DSAI-IN-PTLD', 'USD', '7', 'FY1', '', '$989,638.55', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('777773', 'IND', 'DSAI-IN-PTLD', 'USD', '7', 'FY1', '', '$986,224.30', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('777774', 'IND', 'DSAI-IN-PTLD', 'USD', '7', 'FY1', '', '$982,821.82', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('777775', 'IND', 'DSAI-IN-PTLD', 'USD', '7', 'FY1', '', '$979,431.09', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('666661', 'IND', 'DSAI-IN-PTLD', 'USD', '7', 'FY1', '', '$976,052.05', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('666662', 'IND', 'DSAI-IN-PTLD', 'USD', '7', 'FY1', '', '$972,684.67', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('666663', 'IND', 'DSAI-IN-PTLD', 'USD', '7', 'FY1', '', '$969,328.91', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('666664', 'IND', 'DSAI-IN-PTLD', 'USD', '7', 'FY1', '', '$965,984.72', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('666665', 'IND', 'DSAI-IN-PTLD', 'USD', '7', 'FY1', '', '$962,652.08', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('999991', 'IND', 'DSAI-IN-PTLD', 'USD', '8', 'FY1', '', '$1,000,000.00', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('999992', 'IND', 'DSAI-IN-PTLD', 'USD', '8', 'FY1', '', '$1,003,450.00', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('999993', 'IND', 'DSAI-IN-PTLD', 'USD', '8', 'FY1', '', '$1,006,911.90', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('999994', 'IND', 'DSAI-IN-PTLD', 'USD', '8', 'FY1', '', '$1,010,385.75', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('999994', 'IND', 'DSAI-IN-PTLD', 'USD', '8', 'FY1', '', '$1,013,871.58', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('888881', 'IND', 'DSAI-IN-PTLD', 'USD', '8', 'FY1', 'PAYROLL1', '$1,010,373.72', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('888882', 'IND', 'DSAI-IN-PTLD', 'USD', '8', 'FY1', 'PAYROLL2', '$1,006,887.93', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('888883', 'IND', 'DSAI-IN-PTLD', 'USD', '8', 'FY1', 'PAYROLL3', '$1,003,414.17', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('888884', 'IND', 'DSAI-IN-PTLD', 'USD', '8', 'FY1', 'PAYROLL4', '$999,952.39', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('888885', 'IND', 'DSAI-IN-PTLD', 'USD', '8', 'FY1', 'PAYROLL5', '$996,502.56', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('777771', 'IND', 'DSAI-IN-PTLD', 'USD', '8', 'FY1', '', '$993,064.62', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('777772', 'IND', 'DSAI-IN-PTLD', 'USD', '8', 'FY1', '', '$989,638.55', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('777773', 'IND', 'DSAI-IN-PTLD', 'USD', '8', 'FY1', '', '$986,224.30', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('777774', 'IND', 'DSAI-IN-PTLD', 'USD', '8', 'FY1', '', '$982,821.82', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('777775', 'IND', 'DSAI-IN-PTLD', 'USD', '8', 'FY1', '', '$979,431.09', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('666661', 'IND', 'DSAI-IN-PTLD', 'USD', '8', 'FY1', '', '$976,052.05', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('666662', 'IND', 'DSAI-IN-PTLD', 'USD', '8', 'FY1', '', '$972,684.67', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('666663', 'IND', 'DSAI-IN-PTLD', 'USD', '8', 'FY1', '', '$969,328.91', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('666664', 'IND', 'DSAI-IN-PTLD', 'USD', '8', 'FY1', '', '$965,984.72', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('666665', 'IND', 'DSAI-IN-PTLD', 'USD', '8', 'FY1', '', '$962,652.08', 'DSAI User', '2024-01-26 10:00:00', 'DSAI User', '2024-01-26 10:00:00'),
('999991', 'USA', 'DSAI-INC', 'USD', '9', 'FY1', '', '$1,000,000.00', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('999992', 'USA', 'DSAI-INC', 'USD', '9', 'FY1', '', '$1,003,450.00', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('999993', 'USA', 'DSAI-INC', 'USD', '9', 'FY1', '', '$1,006,911.90', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('999994', 'USA', 'DSAI-INC', 'USD', '9', 'FY1', '', '$1,010,385.75', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('999994', 'USA', 'DSAI-INC', 'USD', '9', 'FY1', '', '$1,013,871.58', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('888881', 'USA', 'DSAI-INC', 'USD', '9', 'FY1', 'PAYROLL1', '$1,010,373.72', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('888882', 'USA', 'DSAI-INC', 'USD', '9', 'FY1', 'PAYROLL2', '$1,006,887.93', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('888883', 'USA', 'DSAI-INC', 'USD', '9', 'FY1', 'PAYROLL3', '$1,003,414.17', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('888884', 'USA', 'DSAI-INC', 'USD', '9', 'FY1', 'PAYROLL4', '$999,952.39', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('888885', 'USA', 'DSAI-INC', 'USD', '9', 'FY1', 'PAYROLL5', '$996,502.56', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('777771', 'USA', 'DSAI-INC', 'USD', '9', 'FY1', '', '$993,064.62', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('777772', 'USA', 'DSAI-INC', 'USD', '9', 'FY1', '', '$989,638.55', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('777773', 'USA', 'DSAI-INC', 'USD', '9', 'FY1', '', '$986,224.30', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('777774', 'USA', 'DSAI-INC', 'USD', '9', 'FY1', '', '$982,821.82', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('777775', 'USA', 'DSAI-INC', 'USD', '9', 'FY1', '', '$979,431.09', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('666661', 'USA', 'DSAI-INC', 'USD', '9', 'FY1', '', '$976,052.05', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('666662', 'USA', 'DSAI-INC', 'USD', '9', 'FY1', '', '$972,684.67', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('666663', 'USA', 'DSAI-INC', 'USD', '9', 'FY1', '', '$969,328.91', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('666664', 'USA', 'DSAI-INC', 'USD', '9', 'FY1', '', '$965,984.72', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('666665', 'USA', 'DSAI-INC', 'USD', '9', 'FY1', '', '$962,652.08', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('999991', 'IND', 'DSAI-IN-PTLD', 'USD', '10', 'FY1', '', '$1,000,000.00', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('999992', 'IND', 'DSAI-IN-PTLD', 'USD', '10', 'FY1', '', '$1,003,450.00', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('999993', 'IND', 'DSAI-IN-PTLD', 'USD', '10', 'FY1', '', '$1,006,911.90', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('999994', 'IND', 'DSAI-IN-PTLD', 'USD', '10', 'FY1', '', '$1,010,385.75', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('999994', 'IND', 'DSAI-IN-PTLD', 'USD', '10', 'FY1', '', '$1,013,871.58', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('888881', 'IND', 'DSAI-IN-PTLD', 'USD', '10', 'FY1', 'PAYROLL1', '$1,010,373.72', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('888882', 'IND', 'DSAI-IN-PTLD', 'USD', '10', 'FY1', 'PAYROLL2', '$1,006,887.93', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('888883', 'IND', 'DSAI-IN-PTLD', 'USD', '10', 'FY1', 'PAYROLL3', '$1,003,414.17', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('888884', 'IND', 'DSAI-IN-PTLD', 'USD', '10', 'FY1', 'PAYROLL4', '$999,952.39', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('888885', 'IND', 'DSAI-IN-PTLD', 'USD', '10', 'FY1', 'PAYROLL5', '$996,502.56', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('777771', 'IND', 'DSAI-IN-PTLD', 'USD', '10', 'FY1', '', '$993,064.62', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('777772', 'IND', 'DSAI-IN-PTLD', 'USD', '10', 'FY1', '', '$989,638.55', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('777773', 'IND', 'DSAI-IN-PTLD', 'USD', '10', 'FY1', '', '$986,224.30', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('777774', 'IND', 'DSAI-IN-PTLD', 'USD', '10', 'FY1', '', '$982,821.82', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('777775', 'IND', 'DSAI-IN-PTLD', 'USD', '10', 'FY1', '', '$979,431.09', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('666661', 'IND', 'DSAI-IN-PTLD', 'USD', '10', 'FY1', '', '$976,052.05', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('666662', 'IND', 'DSAI-IN-PTLD', 'USD', '10', 'FY1', '', '$972,684.67', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('666663', 'IND', 'DSAI-IN-PTLD', 'USD', '10', 'FY1', '', '$969,328.91', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('666664', 'IND', 'DSAI-IN-PTLD', 'USD', '10', 'FY1', '', '$965,984.72', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('666665', 'IND', 'DSAI-IN-PTLD', 'USD', '10', 'FY1', '', '$962,652.08', 'DSAI User', '2024-01-27 10:00:00', 'DSAI User', '2024-01-27 10:00:00'),
('999991', 'USA', 'DSAI-INC', 'USD', '11', 'FY1', '', '$1,000,000.00', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('999992', 'USA', 'DSAI-INC', 'USD', '11', 'FY1', '', '$1,003,450.00', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('999993', 'USA', 'DSAI-INC', 'USD', '11', 'FY1', '', '$1,006,911.90', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('999994', 'USA', 'DSAI-INC', 'USD', '11', 'FY1', '', '$1,010,385.75', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('999994', 'USA', 'DSAI-INC', 'USD', '11', 'FY1', '', '$1,013,871.58', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('888881', 'USA', 'DSAI-INC', 'USD', '11', 'FY1', 'PAYROLL1', '$1,010,373.72', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('888882', 'USA', 'DSAI-INC', 'USD', '11', 'FY1', 'PAYROLL2', '$1,006,887.93', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('888883', 'USA', 'DSAI-INC', 'USD', '11', 'FY1', 'PAYROLL3', '$1,003,414.17', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('888884', 'USA', 'DSAI-INC', 'USD', '11', 'FY1', 'PAYROLL4', '$999,952.39', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('888885', 'USA', 'DSAI-INC', 'USD', '11', 'FY1', 'PAYROLL5', '$996,502.56', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('777771', 'USA', 'DSAI-INC', 'USD', '11', 'FY1', '', '$993,064.62', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('777772', 'USA', 'DSAI-INC', 'USD', '11', 'FY1', '', '$989,638.55', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('777773', 'USA', 'DSAI-INC', 'USD', '11', 'FY1', '', '$986,224.30', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('777774', 'USA', 'DSAI-INC', 'USD', '11', 'FY1', '', '$982,821.82', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('777775', 'USA', 'DSAI-INC', 'USD', '11', 'FY1', '', '$979,431.09', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('666661', 'USA', 'DSAI-INC', 'USD', '11', 'FY1', '', '$976,052.05', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('666662', 'USA', 'DSAI-INC', 'USD', '11', 'FY1', '', '$972,684.67', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('666663', 'USA', 'DSAI-INC', 'USD', '11', 'FY1', '', '$969,328.91', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('666664', 'USA', 'DSAI-INC', 'USD', '11', 'FY1', '', '$965,984.72', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('666665', 'USA', 'DSAI-INC', 'USD', '11', 'FY1', '', '$962,652.08', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('999991', 'IND', 'DSAI-IN-PTLD', 'USD', '12', 'FY1', '', '$1,000,000.00', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('999992', 'IND', 'DSAI-IN-PTLD', 'USD', '12', 'FY1', '', '$1,003,450.00', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('999993', 'IND', 'DSAI-IN-PTLD', 'USD', '12', 'FY1', '', '$1,006,911.90', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('999994', 'IND', 'DSAI-IN-PTLD', 'USD', '12', 'FY1', '', '$1,010,385.75', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('999994', 'IND', 'DSAI-IN-PTLD', 'USD', '12', 'FY1', '', '$1,013,871.58', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('888881', 'IND', 'DSAI-IN-PTLD', 'USD', '12', 'FY1', 'PAYROLL1', '$1,010,373.72', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('888882', 'IND', 'DSAI-IN-PTLD', 'USD', '12', 'FY1', 'PAYROLL2', '$1,006,887.93', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('888883', 'IND', 'DSAI-IN-PTLD', 'USD', '12', 'FY1', 'PAYROLL3', '$1,003,414.17', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('888884', 'IND', 'DSAI-IN-PTLD', 'USD', '12', 'FY1', 'PAYROLL4', '$999,952.39', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('888885', 'IND', 'DSAI-IN-PTLD', 'USD', '12', 'FY1', 'PAYROLL5', '$996,502.56', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('777771', 'IND', 'DSAI-IN-PTLD', 'USD', '12', 'FY1', '', '$993,064.62', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('777772', 'IND', 'DSAI-IN-PTLD', 'USD', '12', 'FY1', '', '$989,638.55', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('777773', 'IND', 'DSAI-IN-PTLD', 'USD', '12', 'FY1', '', '$986,224.30', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('777774', 'IND', 'DSAI-IN-PTLD', 'USD', '12', 'FY1', '', '$982,821.82', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('777775', 'IND', 'DSAI-IN-PTLD', 'USD', '12', 'FY1', '', '$979,431.09', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('666661', 'IND', 'DSAI-IN-PTLD', 'USD', '12', 'FY1', '', '$976,052.05', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('666662', 'IND', 'DSAI-IN-PTLD', 'USD', '12', 'FY1', '', '$972,684.67', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('666663', 'IND', 'DSAI-IN-PTLD', 'USD', '12', 'FY1', '', '$969,328.91', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('666664', 'IND', 'DSAI-IN-PTLD', 'USD', '12', 'FY1', '', '$965,984.72', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00'),
('666665', 'IND', 'DSAI-IN-PTLD', 'USD', '12', 'FY1', '', '$962,652.08', 'DSAI User', '2024-01-28 10:00:00', 'DSAI User', '2024-01-28 10:00:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
