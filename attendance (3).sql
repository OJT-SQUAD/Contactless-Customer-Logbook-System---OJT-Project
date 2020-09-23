-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2020 at 11:53 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`, `date`) VALUES
(1, 'Warlo', 'admin', 'admin', '2019-12-11 11:27:22');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `lecture` int(11) NOT NULL,
  `regno` varchar(15) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `code` varchar(7) NOT NULL,
  `department` int(11) NOT NULL,
  `unit` tinyint(4) NOT NULL,
  `semester` tinyint(1) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `name`, `code`, `department`, `unit`, `semester`, `date`) VALUES
(1, 'Advanced Programming', 'CSC419', 2, 2, 1, '2019-01-20 23:31:06'),
(3, 'Industrial Microbiology', 'AMB412', 3, 3, 2, '2019-01-20 23:36:07'),
(4, 'Introduction to Computer Appreciation', 'CSC101', 2, 3, 1, '2019-02-23 10:25:40');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `code` varchar(3) NOT NULL,
  `faculty` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `code`, `faculty`, `date`) VALUES
(1, 'Department Store', 'DTS', 1, '2019-01-20 22:02:34'),
(2, 'Greenwich', 'GRN', 1, '2019-01-20 22:02:56');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `name`, `date`) VALUES
(1, 'SM City Bacolod', '2019-01-20 18:44:22'),
(2, 'Robinson\'s Bacolod', '2019-01-20 18:44:22'),
(6, 'Jolibee Lacson', '2019-02-23 10:22:56');

-- --------------------------------------------------------

--
-- Table structure for table `lecture`
--

CREATE TABLE `lecture` (
  `id` int(11) NOT NULL,
  `lecturer` int(11) NOT NULL,
  `Location` int(11) NOT NULL,
  `Shop` int(11) NOT NULL,
  `tblDate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecture`
--

INSERT INTO `lecture` (`id`, `lecturer`, `Location`, `Shop`, `tblDate`) VALUES
(1, 5, 1, 1, '2020-09-23');

-- --------------------------------------------------------

--
-- Table structure for table `lecture3`
--

CREATE TABLE `lecture3` (
  `id` int(11) NOT NULL,
  `course` int(11) NOT NULL,
  `lecturer` int(11) NOT NULL,
  `session` varchar(10) NOT NULL,
  `duration` tinyint(4) NOT NULL DEFAULT 1,
  `semester` tinyint(4) NOT NULL,
  `in_progress` tinyint(1) NOT NULL,
  `start` datetime NOT NULL DEFAULT current_timestamp(),
  `stop` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecture3`
--

INSERT INTO `lecture3` (`id`, `course`, `lecturer`, `session`, `duration`, `semester`, `in_progress`, `start`, `stop`) VALUES
(11, 1, 5, '2018/2019', 2, 1, 1, '2019-03-03 03:42:50', '2019-03-03 03:42:50'),
(12, 1, 5, '2020/2021', 1, 1, 1, '2020-09-18 05:53:01', '2020-09-18 05:53:01'),
(13, 1, 5, '2020/2021', 1, 1, 1, '2020-09-18 05:59:21', '2020-09-18 05:59:21'),
(14, 1, 5, '2020/2021', 1, 1, 1, '2020-09-18 06:00:57', '2020-09-18 06:00:57'),
(15, 1, 5, '2017/2017', 1, 1, 1, '2020-09-19 07:55:37', '2020-09-19 07:55:37'),
(16, 1, 5, '2020/2021', 1, 1, 1, '2020-09-22 05:53:45', '2020-09-22 05:53:45'),
(17, 1, 5, '2020/2021', 3, 1, 1, '2020-09-22 06:10:36', '2020-09-22 06:10:36'),
(18, 4, 5, '2017/2017', 1, 1, 1, '2020-09-22 17:53:35', '2020-09-22 17:53:35'),
(19, 1, 5, '2017/2017', 1, 1, 1, '2020-09-22 17:56:57', '2020-09-22 17:56:57');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `department` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`id`, `name`, `department`, `username`, `password`, `date`) VALUES
(5, 'Warlo Jesser D. Belandres', 2, 'warlo', 'warlo', '2019-12-12 10:27:43');

-- --------------------------------------------------------

--
-- Table structure for table `registered_course`
--

CREATE TABLE `registered_course` (
  `id` int(11) NOT NULL,
  `course` int(11) NOT NULL,
  `regno` varchar(15) NOT NULL,
  `session` varchar(10) NOT NULL,
  `semester` tinyint(4) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registered_course`
--

INSERT INTO `registered_course` (`id`, `course`, `regno`, `session`, `semester`, `date`) VALUES
(7, 1, 'ebsu/2014/71860', '2019/2020', 1, '2019-03-01 14:20:55');

-- --------------------------------------------------------

--
-- Table structure for table `regno`
--

CREATE TABLE `regno` (
  `id` int(11) NOT NULL,
  `regID` int(11) NOT NULL,
  `regNum` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phoneNum` varchar(11) NOT NULL,
  `address` varchar(256) NOT NULL,
  `regNo` varchar(40) DEFAULT NULL,
  `department` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `barangay` varchar(55) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `phoneNum`, `address`, `regNo`, `department`, `image`, `barangay`, `date`) VALUES
(42, 'Lanilyn Tingson', '09876543211', 'Bagong Dalan Street, Prk. Mapinalanggaon, Bacolod City', 'bd0e88702b8c9a19860b250e5d34259aeadbb7fc', 0, 'lanilyn tingson.jpg', '35', '2020-09-21 19:01:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lecture`
--
ALTER TABLE `lecture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forLocation` (`Location`),
  ADD KEY `forShop` (`Shop`);

--
-- Indexes for table `lecture3`
--
ALTER TABLE `lecture3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registered_course`
--
ALTER TABLE `registered_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regno`
--
ALTER TABLE `regno`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forRegNo` (`regID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lecture`
--
ALTER TABLE `lecture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `lecture3`
--
ALTER TABLE `lecture3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `lecturer`
--
ALTER TABLE `lecturer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `registered_course`
--
ALTER TABLE `registered_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `regno`
--
ALTER TABLE `regno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lecture`
--
ALTER TABLE `lecture`
  ADD CONSTRAINT `forLocation` FOREIGN KEY (`Location`) REFERENCES `faculty` (`id`),
  ADD CONSTRAINT `forShop` FOREIGN KEY (`Shop`) REFERENCES `department` (`id`);

--
-- Constraints for table `regno`
--
ALTER TABLE `regno`
  ADD CONSTRAINT `forRegNo` FOREIGN KEY (`regID`) REFERENCES `student` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
