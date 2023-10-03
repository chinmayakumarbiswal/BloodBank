-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2023 at 04:34 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `admindata`
--

CREATE TABLE `admindata` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admindata`
--

INSERT INTO `admindata` (`id`, `email`, `password`) VALUES
(1, 'situ@situ.in', 'situ');

-- --------------------------------------------------------

--
-- Table structure for table `recepient`
--

CREATE TABLE `recepient` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Hospital` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recepient`
--

INSERT INTO `recepient` (`id`, `email`, `password`, `Hospital`) VALUES
(1, 'situ@situ.in', 'situ', 'Sai');

-- --------------------------------------------------------

--
-- Table structure for table `registerdata`
--

CREATE TABLE `registerdata` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `bloodgroup` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registerdata`
--

INSERT INTO `registerdata` (`id`, `name`, `number`, `Address`, `dob`, `weight`, `bloodgroup`) VALUES
(1, 'situ', '6370183009', 'Hatabaradihi,Gainada,Balugaon,752027', '2000-09-17', '78', 'O+'),
(3, 'ram', '06370183009', 'Hatabaradihi,Gainada,Balugaon,752027', '', '', 'O+'),
(4, 'hari', '06370183009', 'Hatabaradihi,Gainada,Balugaon,752027', '2023-04-10', '50', 'A+'),
(5, 'situ', '06370183009', 'Hatabaradihi,Gainada,Balugaon,752027', '2023-04-10', '56', 'AB+'),
(6, 'Chinmaya Kumar Biswal', '6370183009', 'Chilika', '2000-09-17', '78', 'O+'),
(7, 'situ', '06370183009', ',Balugaon', '2000-09-17', '85', 'O+');

-- --------------------------------------------------------

--
-- Table structure for table `requestdata`
--

CREATE TABLE `requestdata` (
  `id` int(11) NOT NULL,
  `BloodGroup` varchar(255) NOT NULL,
  `Hospital` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requestdata`
--

INSERT INTO `requestdata` (`id`, `BloodGroup`, `Hospital`) VALUES
(3, 'B+', 'Sai'),
(4, 'O+', 'Sai'),
(5, 'A+', 'Sai'),
(6, 'AB+', 'Sai'),
(7, 'AB+', 'Sai'),
(8, 'AB+', 'Sai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admindata`
--
ALTER TABLE `admindata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recepient`
--
ALTER TABLE `recepient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registerdata`
--
ALTER TABLE `registerdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requestdata`
--
ALTER TABLE `requestdata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admindata`
--
ALTER TABLE `admindata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `recepient`
--
ALTER TABLE `recepient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `registerdata`
--
ALTER TABLE `registerdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `requestdata`
--
ALTER TABLE `requestdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
