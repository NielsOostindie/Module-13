-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 24, 2023 at 05:12 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fake_youtube`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `ID` int(100) NOT NULL,
  `email` varchar(80) NOT NULL,
  `name` varchar(80) NOT NULL,
  `comment` varchar(225) NOT NULL,
  `date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`ID`, `email`, `name`, `comment`, `date`) VALUES
(1, 'niels@oostindie.com', 'Niels  Antwerpen', 'test', '2023-10-24 16:58:23.000000'),
(2, 'niels@oostindie.com', 'Niels  Antwerpen', 'test', '2023-10-24 16:58:56.000000'),
(3, 'niels@oostindie.com', 'Niels  Antwerpen', 'test', '2023-10-24 17:01:00.000000'),
(4, 'hoi@gmail.com', 'richard oostindie', 'test', '2023-10-24 17:01:10.000000'),
(5, 'hoi@gmail.com', 'richard oostindie', 'test', '2023-10-24 17:04:14.000000'),
(6, 'hoi@gmail.com', 'richard oostindie', 'test', '2023-10-24 17:05:01.000000'),
(7, 'hoi@gmail.com', 'richard oostindie', 'test', '2023-10-24 17:05:22.000000'),
(8, 'hoi@gmail.com', 'richard oostindie', 'test', '2023-10-24 17:05:55.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
