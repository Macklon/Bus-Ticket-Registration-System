-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2019 at 05:54 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `btrs`
--

-- --------------------------------------------------------

--
-- Table structure for table `bodr`
--

CREATE TABLE `bodr` (
  `bd_id` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `boarding` varchar(25) NOT NULL,
  `droping` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bodr`
--

INSERT INTO `bodr` (`bd_id`, `bid`, `boarding`, `droping`) VALUES
(1, 1, 'Majestic', 'Margao'),
(2, 1, 'Yeshwantpur', 'Panaji'),
(3, 2, 'Panaji', 'Marathahalli'),
(4, 2, 'Mapusa', 'Majestic'),
(5, 3, 'Mapusa', '8th Mile'),
(6, 3, 'Ponda', 'Rajajinagar');

-- --------------------------------------------------------

--
-- Table structure for table `bus_info`
--

CREATE TABLE `bus_info` (
  `bid` int(11) NOT NULL,
  `bname` char(15) NOT NULL,
  `bsource` char(15) NOT NULL,
  `bdestination` char(15) NOT NULL,
  `bstart_time` varchar(10) NOT NULL,
  `bend_time` varchar(10) NOT NULL,
  `price` int(5) NOT NULL,
  `seats` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_info`
--

INSERT INTO `bus_info` (`bid`, `bname`, `bsource`, `bdestination`, `bstart_time`, `bend_time`, `price`, `seats`) VALUES
(1, 'Sugama Tourist', 'Bangalore', 'Goa', '11:30', '04:00', 500, 20),
(2, 'VRL Travels', 'Goa', 'Bangalore', '06:00', '12:00', 700, 20),
(3, 'SRS Travels', 'Goa', 'Bangalore', '18:00', '09:20', 1200, 20);

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `sid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `s1` tinyint(1) NOT NULL,
  `s2` tinyint(1) NOT NULL,
  `s3` tinyint(1) NOT NULL,
  `s4` tinyint(1) NOT NULL,
  `s5` tinyint(1) NOT NULL,
  `s6` tinyint(1) NOT NULL,
  `s7` tinyint(1) NOT NULL,
  `s8` tinyint(1) NOT NULL,
  `s9` tinyint(1) NOT NULL,
  `s10` tinyint(1) NOT NULL,
  `s11` tinyint(1) NOT NULL,
  `s12` tinyint(1) NOT NULL,
  `s13` tinyint(1) NOT NULL,
  `s14` tinyint(1) NOT NULL,
  `s15` tinyint(1) NOT NULL,
  `s16` tinyint(1) NOT NULL,
  `s17` tinyint(1) NOT NULL,
  `s18` tinyint(1) NOT NULL,
  `s19` tinyint(1) NOT NULL,
  `s20` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`sid`, `bid`, `s1`, `s2`, `s3`, `s4`, `s5`, `s6`, `s7`, `s8`, `s9`, `s10`, `s11`, `s12`, `s13`, `s14`, `s15`, `s16`, `s17`, `s18`, `s19`, `s20`) VALUES
(1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 3, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `tid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `bd_id` int(11) NOT NULL,
  `phno` bigint(10) NOT NULL,
  `email` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `age` int(2) NOT NULL,
  `gender` char(10) NOT NULL,
  `seats` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`tid`, `bid`, `uid`, `bd_id`, `phno`, `email`, `name`, `age`, `gender`, `seats`, `price`, `date`) VALUES
(1, 1, 2, 1, 9987568932, 'Raja34@gmail.com', 'Raja', 21, 'Male', 1, 500, '2019-05-20'),
(2, 2, 1, 4, 8807635678, 'Lorence@gmail.com', 'Lorence', 20, 'Female', 2, 1400, '2019-05-21'),
(3, 2, 2, 3, 9637893217, 'mack@gmail.com', 'macklon', 22, 'Male', 2, 1400, '2019-05-20'),
(4, 3, 3, 6, 9876543221, 'test@gmail.com', 'test', 20, 'Male', 1, 1200, '2019-05-28'),
(5, 3, 5, 6, 7760102927, 'test@gmail.com', 'test', 23, 'Male', 1, 1200, '2019-05-28');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `uid` int(11) NOT NULL,
  `phno` bigint(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pass` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`uid`, `phno`, `email`, `pass`) VALUES
(1, 8806922528, 'mack@gmail.com', '1pass'),
(2, 9637893217, 'j@gmail.com', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bodr`
--
ALTER TABLE `bodr`
  ADD PRIMARY KEY (`bd_id`);

--
-- Indexes for table `bus_info`
--
ALTER TABLE `bus_info`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bus_info`
--
ALTER TABLE `bus_info`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
