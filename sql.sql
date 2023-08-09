-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql9.freesqldatabase.com
-- Generation Time: Aug 09, 2023 at 12:30 PM
-- Server version: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql9638144`
--
CREATE DATABASE IF NOT EXISTS `sql9638144` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sql9638144`;

-- --------------------------------------------------------

--
-- Table structure for table `Cart`
--

CREATE TABLE `Cart` (
  `Cart_ID` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price_Per_Product` int(11) NOT NULL,
  `Total_Cost` int(11) NOT NULL,
  `Hair_Length_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Hair_Length`
--

CREATE TABLE `Hair_Length` (
  `Hair_Length_ID` int(50) NOT NULL,
  `Length` int(100) NOT NULL,
  `Quantity` int(100) NOT NULL,
  `Price` int(100) NOT NULL,
  `Product_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Hair_Length`
--

INSERT INTO `Hair_Length` (`Hair_Length_ID`, `Length`, `Quantity`, `Price`, `Product_ID`) VALUES
(1, 10, 5, 500, 1),
(2, 12, 10, 900, 1),
(3, 14, 5, 1500, 1),
(4, 16, 5, 2200, 1),
(5, 18, 5, 2500, 1),
(6, 20, 5, 3000, 1),
(7, 22, 5, 3200, 1),
(8, 24, 5, 3500, 1),
(9, 26, 5, 3800, 1),
(10, 28, 5, 4000, 1),
(11, 30, 5, 4300, 1),
(12, 10, 10, 500, 2),
(13, 12, 10, 900, 2),
(14, 14, 10, 1500, 2),
(15, 16, 10, 220, 2),
(16, 18, 10, 2500, 2),
(17, 20, 10, 3000, 2),
(18, 22, 10, 3200, 2),
(19, 24, 10, 3500, 2),
(20, 26, 10, 3800, 2),
(21, 28, 10, 4000, 2),
(22, 30, 10, 4300, 2),
(23, 10, 10, 500, 3),
(24, 12, 10, 900, 3),
(25, 14, 10, 1500, 3),
(26, 16, 10, 220, 3),
(27, 18, 10, 2500, 3),
(28, 20, 10, 3000, 3),
(29, 22, 10, 3200, 3),
(30, 24, 10, 3500, 3),
(31, 26, 10, 3800, 3),
(32, 28, 10, 4000, 3),
(33, 30, 10, 4300, 3),
(34, 10, 10, 500, 4),
(35, 12, 10, 900, 4),
(36, 14, 10, 1500, 4),
(37, 16, 10, 220, 4),
(38, 18, 10, 2500, 4),
(39, 20, 10, 3000, 4),
(40, 22, 10, 3200, 4),
(41, 24, 10, 3500, 4),
(42, 26, 10, 3800, 4),
(43, 28, 10, 4000, 4),
(44, 30, 10, 4300, 4),
(45, 10, 10, 500, 5),
(46, 12, 10, 900, 5),
(47, 14, 10, 1500, 5),
(48, 16, 10, 220, 5),
(49, 18, 10, 2500, 5),
(50, 20, 10, 3000, 5),
(51, 22, 10, 3200, 5),
(52, 24, 10, 3500, 5),
(53, 26, 10, 3800, 5),
(54, 28, 10, 4000, 5),
(55, 30, 10, 4300, 5),
(56, 10, 10, 500, 6),
(57, 12, 10, 900, 6),
(58, 14, 10, 1500, 6),
(59, 16, 10, 220, 6),
(60, 18, 10, 2500, 6),
(61, 20, 10, 3000, 6),
(62, 22, 10, 3200, 6),
(63, 24, 10, 3500, 6),
(64, 26, 10, 3800, 6),
(65, 28, 10, 4000, 6),
(66, 30, 10, 4300, 6),
(67, 10, 10, 500, 7),
(68, 12, 10, 900, 7),
(69, 14, 10, 1500, 7),
(70, 16, 10, 220, 7),
(71, 18, 10, 2500, 7),
(72, 20, 10, 3000, 7),
(73, 22, 10, 3200, 7),
(74, 24, 10, 3500, 7),
(75, 26, 10, 3800, 7),
(76, 28, 10, 4000, 7),
(77, 30, 10, 4300, 7),
(78, 10, 10, 500, 8),
(79, 12, 10, 900, 8),
(80, 14, 10, 1500, 8),
(81, 16, 10, 220, 8),
(82, 18, 10, 2500, 8),
(83, 20, 10, 3000, 8),
(84, 22, 10, 3200, 8),
(85, 24, 10, 3500, 8),
(86, 26, 10, 3800, 8),
(87, 28, 10, 4000, 8),
(88, 30, 10, 4300, 8),
(89, 10, 10, 500, 9),
(90, 12, 10, 900, 9),
(91, 14, 10, 1500, 9),
(92, 16, 10, 220, 9),
(93, 18, 10, 2500, 9),
(94, 20, 10, 3000, 9),
(95, 22, 10, 3200, 9),
(96, 24, 10, 3500, 9),
(97, 26, 10, 3800, 9),
(98, 28, 10, 4000, 9),
(99, 30, 10, 4300, 9);

-- --------------------------------------------------------

--
-- Table structure for table `Product_Category`
--

CREATE TABLE `Product_Category` (
  `Category_ID` int(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Image` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Product_Category`
--

INSERT INTO `Product_Category` (`Category_ID`, `Name`, `Image`) VALUES
(1, 'Straight Lace Wig', 'https://i.ibb.co/Dpc46f4/category-image-1.jpg'),
(2, 'Kinky Straight Wig', 'https://i.ibb.co/23GHJZt/category-image-2.jpg'),
(3, 'Body Lace Wig', 'https://i.ibb.co/1T5xjPQ/category-image-3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Product_Details`
--

CREATE TABLE `Product_Details` (
  `Product_ID` int(11) DEFAULT NULL,
  `Description` varchar(5000) DEFAULT NULL,
  `Image` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Product_Details`
--

INSERT INTO `Product_Details` (`Product_ID`, `Description`, `Image`) VALUES
(1, 'Body wave Pre Plucked lace Human hair front wig 150% density', 'https://i.ibb.co/C2ZX9CH/Rectangle-40.png'),
(2, 'Straight red color lace front human hair wig 150% density', 'https://i.ibb.co/RDjJJB4/Rectangle-42.png'),
(4, 'Brazilian Straight Pre Plucked lace Human hair front wig 180% density', 'https://i.ibb.co/Bnq8sm9/Rectangle-46.png'),
(5, 'Kinky Straight Pre Plucked lace Human hair front wig 180% density', 'https://i.ibb.co/WgG5frv/Rectangle-48.png'),
(6, 'Straight Pre Plucked lace Human hair front bob wig 150% density', 'https://i.ibb.co/Vqx7FgK/Rectangle-50.png'),
(7, 'Honey Blond Kinky Straight Pre Plucked lace Human hair front wig 150% density', 'https://i.ibb.co/sC77FY0/Rectangle-52.png'),
(8, 'Kinky Straight Pre Plucked lace Human hair front wig 150% density', 'https://i.ibb.co/pdnZTnW/Rectangle-54.png'),
(9, 'Ombre Curly Pre Plucked lace Human hair front wig 150% density', 'https://i.ibb.co/7yxTGzj/Rectangle-56.png'),
(3, 'Body wave Pre Plucked lace Human hair front wig 150% density', 'https://i.ibb.co/qsfz7Vs/Rectangle-44.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
