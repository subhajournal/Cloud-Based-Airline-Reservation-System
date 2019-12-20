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
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `airportID` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airport`
--

INSERT INTO `airport` (`airportID`, `name`, `city`, `country`, `code`) VALUES
(1, 'Chatrapati Shivaji International Airport', 'Mumbai', 'India', 'BOM'),
(2, 'London-Heathrow', 'London', 'UK', 'LHR'),
(3, 'John F Kennedy International Airport', 'New York', 'USA', 'JFK'),
(4, 'Kingsford Smith Airport', 'Sydney', 'Australia', 'SYD'),
(5, 'Aéroport de Paris-Charles-de-Gaulle', 'Paris', 'France', 'CDG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`airportID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airport`
--
ALTER TABLE `airport`
  MODIFY `airportID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
