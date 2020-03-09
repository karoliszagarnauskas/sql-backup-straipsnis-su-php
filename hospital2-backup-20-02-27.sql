-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 27, 2020 at 07:26 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital2`
--
CREATE DATABASE IF NOT EXISTS `hospital2` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `hospital2`;

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `lastname` varchar(60) NOT NULL,
  `area` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `lastname`, `area`) VALUES
(1, 'TIM', 'Logan', 'A1'),
(2, 'Litas', 'Litaite', 'A3'),
(3, 'Ona', 'Onute', 'B1'),
(4, 'Lite', 'Rene', 'Z1'),
(6, 'TIM', 'Logan', 'A1'),
(7, 'Paul', 'LEO', 'A3'),
(8, 'Ona', 'Onute', 'B1'),
(9, 'Lite', 'Rene', 'Z1');

-- --------------------------------------------------------

--
-- Table structure for table `img`
--

CREATE TABLE `img` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `patient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `img`
--

INSERT INTO `img` (`ID`, `name`, `patient_id`) VALUES
(1, 'foto1.jpg', 3),
(2, '222.png', 4),
(3, 'foto1.jpg', 3),
(4, '222.png', 4),
(5, 'foto1.jpg', 3),
(6, '222.png', 4);

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `ID` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `lastname` varchar(60) NOT NULL,
  `doctor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`ID`, `name`, `lastname`, `doctor_id`) VALUES
(1, 'Mark', 'JOhn', 2),
(2, 'Toom', 'Karlos', 2),
(3, 'Aris', 'Tiedo', 1),
(4, 'Tomas', 'Kori', 3),
(5, 'Co', 'Jo', 1),
(6, 'Tomas', 'Marco', 5),
(8, '3', 'foto22.gif', 3),
(9, '4', '1.jpg', 1),
(10, '3', 'foto22.gif', 3),
(11, '4', '1.jpg', 1),
(12, '3', 'foto22.gif', 3),
(13, '4', '1.jpg', 1),
(14, '3', 'foto22.gif', 3),
(15, '4', '1.jpg', 1),
(16, 'Mark', 'JOhn', 2),
(17, 'Tomas', 'Karlos', 2),
(18, 'Aris', 'Tiedo', 1),
(19, 'Tomas', 'Kori', 3),
(20, 'Co', 'Jo', 1),
(21, 'Tomas', 'Marco', 5),
(22, 'Phil', 'Joli', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `img`
--
ALTER TABLE `img`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
