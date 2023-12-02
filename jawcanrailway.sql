-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2023 at 01:49 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jawcanrailway`
--

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `pno` int(11) NOT NULL,
  `splace` varchar(255) NOT NULL,
  `eplace` varchar(255) NOT NULL,
  `tno` int(11) NOT NULL,
  `tname` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `ticket` int(11) NOT NULL,
  `tot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`pno`, `splace`, `eplace`, `tno`, `tname`, `price`, `date`, `ticket`, `tot`) VALUES
(3, 'Pasay', 'Baguio', 10258, 'TRose', 1200, '2023-11-30', 3, 3600),
(4, 'Pasay', 'Calamba', 38205, 'Jaw Can Railway', 740, '2023-12-03', 5, 3700);

-- --------------------------------------------------------

--
-- Table structure for table `traindetails`
--

CREATE TABLE `traindetails` (
  `tno` int(11) NOT NULL,
  `tname` varchar(255) NOT NULL,
  `startplace` varchar(255) NOT NULL,
  `destinationplace` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `traindetails`
--

INSERT INTO `traindetails` (`tno`, `tname`, `startplace`, `destinationplace`, `price`) VALUES
(10023, 'Sauza Railway', 'Lucena', 'Olongapo', 2100),
(10258, 'TRose', 'Pasay', 'Baguio', 1200),
(21391, 'Jack Express', 'Manila', 'Sorsogon', 2450),
(29045, 'Cuervo Monorail', 'Cabanatuan', 'Moron', 1250),
(38205, 'Jaw Can Railway', 'Pasay', 'Calamba', 740),
(59231, 'Epsolon Transit', 'Dagupan', 'San Fernando', 890),
(71281, 'Clique Monorail', 'Pasig', 'Bacoor', 175),
(81024, 'Margarita Lines', 'Aparri', 'Quezon City', 3880),
(92183, 'Belaya Express', 'Dinalupahan', 'Marikina', 1125);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`pno`);

--
-- Indexes for table `traindetails`
--
ALTER TABLE `traindetails`
  ADD PRIMARY KEY (`tno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
