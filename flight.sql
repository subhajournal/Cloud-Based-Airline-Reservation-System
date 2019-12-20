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
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `flightID` int(11) NOT NULL,
  `departure` varchar(45) NOT NULL,
  `arrival` varchar(45) NOT NULL,
  `airline` varchar(45) NOT NULL,
  `departureTime` time NOT NULL DEFAULT '00:00:00',
  `departureDate` date NOT NULL DEFAULT '0000-00-00',
  `arrivalTime` time NOT NULL DEFAULT '00:00:00',
  `arrivalDate` date NOT NULL DEFAULT '0000-00-00',
  `routeID` int(11) DEFAULT NULL,
  `updatedAT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`flightID`, `departure`, `arrival`, `airline`, `departureTime`, `departureDate`, `arrivalTime`, `arrivalDate`, `routeID`, `updatedAT`) VALUES
(1, 'Mumbai', 'London', 'Air India', '07:00:00', '2019-12-10', '11:30:00', '2019-12-10', 1, '2019-12-04 12:40:00'),
(2, 'Mumbai', 'London', 'Air India', '07:00:00', '2019-12-11', '11:30:00', '2019-12-11', 1, '2019-12-04 12:45:00'),
(3, 'Mumbai', 'New York', 'Air India', '01:30:00', '2019-12-10', '07:15:00', '2019-12-10', 2, '2019-12-04 12:46:00'),
(4, 'Mumbai', 'New York', 'Air India', '01:30:00', '2019-12-11', '07:15:00', '2019-12-11', 2, '2019-12-04 12:47:00'),
(5, 'Mumbai', 'Sydney', 'Malindo Air', '23:15:00', '2019-12-10', '06:15:00', '2019-12-11', 3, '2019-12-04 12:52:00'),
(6, 'Mumbai', 'Sydney', 'Malindo Air', '23:15:00', '2019-12-11', '06:15:00', '2019-12-12', 3, '2019-12-04 00:54:00'),
(7, 'Mumbai', 'Paris', 'Air India', '09:00:00', '2019-12-10', '17:55:00', '2019-12-11', 4, '2019-12-04 12:58:00'),
(8, 'Mumbai', 'Paris', 'Air India', '09:00:00', '2019-12-11', '17:55:00', '2019-12-12', 4, '2019-12-04 13:00:00'),
(9, 'London', 'Mumbai', 'Air India', '13:30:00', '2019-12-10', '04:00:00', '2019-12-11', 5, '2019-12-04 13:09:00'),
(10, 'London', 'Mumbai', 'Air India', '13:30:00', '2019-12-11', '04:00:00', '2019-12-12', 5, '2019-12-04 13:11:00'),
(11, 'London', 'New York', 'Norwegian Air UK', '11:10:00', '2019-12-10', '18:11:00', '2019-12-10', 6, '2019-12-04 13:25:00'),
(12, 'London', 'New York', 'Norwegian Air UK', '10:00:00', '2019-12-11', '15:25:00', '2019-12-11', 6, '2019-12-04 13:27:00'),
(13, 'London', 'Sydney', 'Malaysia Airlines', '13:35:00', '2019-12-10', '22:30:00', '2019-12-11', 7, '2019-12-04 14:22:00'),
(14, 'London', 'Sydney', 'Malaysia Airlines', '13:35:00', '2019-12-11', '22:30:00', '2019-12-12', 7, '2019-12-04 14:23:00'),
(15, 'London', 'Paris', 'Vueling', '21:25:00', '2019-12-10', '23:35:00', '2019-12-10', 8, '2019-12-04 14:25:00'),
(16, 'London', 'Paris', 'Vueling', '21:25:00', '2019-12-11', '23:35:00', '2019-12-11', 8, '2019-12-04 14:26:00'),
(17, 'New York', 'Mumbai', 'Air India', '11:45:00', '2019-12-10', '13:00:00', '2019-12-11', 9, '2019-12-04 14:27:00'),
(18, 'New York', 'Mumbai', 'Air India', '11:45:00', '2019-12-11', '13:00:00', '2019-12-12', 9, '2019-12-04 14:28:00'),
(19, 'New York', 'London', 'Norwegian Air UK', '14:55:00', '2019-12-10', '09:10:00', '2019-12-11', 10, '2019-12-04 14:30:00'),
(20, 'New York', 'London', 'Norwegian Air UK', '14:55:00', '2019-12-11', '09:10:00', '2019-12-12', 10, '2019-12-04 14:31:00'),
(21, 'New York', 'Sydney', 'Delta Airlines', '18:00:00', '2019-12-10', '08:10:00', '2019-12-12', 11, '2019-12-04 14:32:00'),
(22, 'New York', 'Sydney', 'Delta Airlines', '18:00:00', '2019-12-11', '08:10:00', '2019-12-13', 11, '2019-12-04 14:33:00'),
(23, 'New York', 'Paris', 'Iberia', '21:10:00', '2019-12-10', '12:40:00', '2019-12-11', 12, '2019-12-04 14:34:00'),
(24, 'New York', 'Paris', 'Iberia', '21:10:00', '2019-12-11', '12:40:00', '2019-12-12', 12, '2019-12-04 14:35:00'),
(25, 'Sydney', 'Mumbai', 'Malindo Air', '14:30:00', '2019-12-10', '02:10:00', '2019-12-11', 13, '2019-12-04 14:36:00'),
(26, 'Sydney', 'Mumbai', 'Malindo Air', '14:30:00', '2019-12-11', '02:10:00', '2019-12-12', 13, '2019-12-04 14:38:00'),
(27, 'Sydney', 'London', 'Emirates', '06:00:00', '2019-12-10', '18:20:00', '2019-12-10', 14, '2019-12-04 14:39:00'),
(28, 'Sydney', 'London', 'Emirates', '06:00:00', '2019-12-11', '18:20:00', '2019-12-11', 14, '2019-12-04 14:38:00'),
(29, 'Sydney', 'New York', 'United Airlines', '11:50:00', '2019-12-10', '16:15:00', '2019-12-10', 15, '2019-12-04 14:40:00'),
(30, 'Sydney', 'New York', 'United Airlines', '11:50:00', '2019-12-11', '16:15:00', '2019-12-11', 15, '2019-12-04 14:41:00'),
(31, 'Sydney', 'Paris', 'Emirates', '06:00:00', '2019-12-10', '19:30:00', '2019-12-10', 16, '2019-12-04 14:42:00'),
(32, 'Sydney', 'Paris', 'Emirates', '06:00:00', '2019-12-11', '19:30:00', '2019-12-11', 16, '2019-12-04 14:43:00'),
(33, 'Paris', 'Mumbai', 'Lufthansa', '21:00:00', '2019-12-10', '15:10:00', '2019-12-11', 17, '2019-12-04 14:45:00'),
(34, 'Paris', 'Mumbai', 'Lufthansa', '21:00:00', '2019-12-11', '15:10:00', '2019-12-12', 17, '2019-12-04 14:46:00'),
(35, 'Paris', 'London', 'Vueling', '12:10:00', '2019-12-10', '12:15:00', '2019-12-10', 18, '2019-12-04 14:46:00'),
(36, 'Paris', 'London', 'Vueling', '12:10:00', '2019-12-11', '12:15:00', '2019-12-11', 18, '2019-12-04 14:47:00'),
(37, 'Paris', 'New York', 'Norwegian Air UK', '14:25:00', '2019-12-10', '22:30:00', '2019-12-11', 19, '2019-12-04 14:48:00'),
(38, 'Paris', 'New York', 'Norwegian Air UK', '14:25:00', '2019-12-11', '22:30:00', '2019-12-12', 19, '2019-12-04 14:49:00'),
(39, 'Paris', 'Sydney', 'Qatar Airways', '12:05:00', '2019-12-10', '18:20:00', '2019-12-10', 20, '2019-12-04 14:50:00'),
(40, 'Paris', 'Sydney', 'Qatar Airways', '12:05:00', '2019-12-11', '18:20:00', '2019-12-11', 20, '2019-12-04 14:51:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flightID`),
  ADD KEY `routeID` (`routeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
  MODIFY `flightID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`routeID`) REFERENCES `route` (`routeID`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
