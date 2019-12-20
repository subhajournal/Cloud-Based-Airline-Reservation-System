-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2019 at 03:08 PM
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
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `routeID` int(11) NOT NULL,
  `airlineID` int(11) DEFAULT NULL,
  `departureAirportID` int(11) DEFAULT NULL,
  `arrivalAirportID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`routeID`, `airlineID`, `departureAirportID`, `arrivalAirportID`) VALUES
(1, 1, 1, 2),
(2, 1, 1, 3),
(3, 4, 1, 4),
(4, 1, 1, 5),
(5, 1, 2, 1),
(6, 8, 2, 3),
(7, 9, 2, 4),
(8, 10, 2, 5),
(9, 1, 3, 1),
(10, 8, 3, 2),
(11, 12, 3, 4),
(12, 11, 3, 5),
(13, 4, 4, 1),
(14, 2, 4, 2),
(15, 13, 4, 3),
(16, 2, 4, 5),
(17, 7, 5, 1),
(18, 10, 5, 2),
(19, 8, 5, 3),
(20, 14, 5, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`routeID`),
  ADD KEY `airlineID` (`airlineID`),
  ADD KEY `departureAirportID` (`departureAirportID`),
  ADD KEY `arrivalAirportID` (`arrivalAirportID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `routeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `route`
--
ALTER TABLE `route`
  ADD CONSTRAINT `route_ibfk_1` FOREIGN KEY (`airlineID`) REFERENCES `airline` (`airlineID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `route_ibfk_2` FOREIGN KEY (`departureAirportID`) REFERENCES `airport` (`airportID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `route_ibfk_3` FOREIGN KEY (`arrivalAirportID`) REFERENCES `airport` (`airportID`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
