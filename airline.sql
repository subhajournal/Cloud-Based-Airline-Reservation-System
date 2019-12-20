-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2019 at 03:07 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airline`
--

-- --------------------------------------------------------

--
-- Table structure for table `airline`
--

CREATE TABLE `airline` (
  `airlineID` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airline`
--

INSERT INTO `airline` (`airlineID`, `name`, `code`, `country`) VALUES
(1, 'Air India', 'AI', 'India'),
(2, 'Emirates', 'EK', 'Dubai'),
(3, 'Air China', 'AC', 'China'),
(4, 'Malindo Air', 'OD', 'Malaysia'),
(5, 'Thai Airways', 'TG', 'Thailand'),
(6, 'Turkish Airlines', 'TK', 'Turkey'),
(7, 'Lufthansa', 'LH', 'Germany'),
(8, 'Norwegian Air UK', 'NW', 'Gatwick'),
(9, 'Malaysia Airlines', 'MH', 'Malaysia'),
(10, 'Vueling', 'VU', 'Spain'),
(11, 'Iberia', 'IB', 'Spain'),
(12, 'Delta Airlines', 'DL', 'Georgia'),
(13, 'United Airlines', 'UA', 'Chicago'),
(14, 'Qatar Airways', 'QR', 'Qatar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airline`
--
ALTER TABLE `airline`
  ADD PRIMARY KEY (`airlineID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airline`
--
ALTER TABLE `airline`
  MODIFY `airlineID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
