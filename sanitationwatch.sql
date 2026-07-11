-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2025 at 12:16 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sanitationwatch`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `cid` int(20) NOT NULL,
  `mid` int(11) NOT NULL,
  `uid` int(20) NOT NULL,
  `tid` int(20) NOT NULL,
  `cstatement` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`cid`, `mid`, `uid`, `tid`, `cstatement`, `date`) VALUES
(3, 1, 0, 0, 'dirty', '5-5-24'),
(4, 3, 4, 18, 'not maintained well', '05-11-27'),
(5, 3, 17, 19, 'not maintained well', '05-12-27'),
(6, 1, 4, 0, 'not maintained well', '05-12-27'),
(7, 4, 18, 23, 'not cleaned', '05-11-24'),
(8, 1, 18, 24, 'not cleaned', '05-11-24'),
(9, 1, 18, 24, 'not cleaned', '05-11-24');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `fid` int(20) NOT NULL,
  `uid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `mid` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fid`, `uid`, `tid`, `rating`, `comments`, `date`, `mid`) VALUES
(3, 1, 0, '4', 'excellent', '2025-06-05', 0),
(4, 3, 0, '5', 'Good', '2025-02-03', 0),
(5, 1, 0, '1', 'not cleaned', '2925-02-05', 0),
(6, 2, 0, '3', 'well maintained ', '2024-11-08', 0),
(7, 2, 5, '3', 'good', '2024-03-09', 0),
(8, 3, 5, '1', 'not cleaned', '2024-12-30', 0),
(9, 0, 0, '4', 'well maintained and cleaned', '2024-02-02', 0),
(10, 1, 0, '4', 'good', '2024-12-07', 4),
(11, 1, 7, '1', 'not cleaned', '2024-01-01', 6),
(12, 1, 0, '4', 'good', '2023-02-04', 5),
(13, 3, 18, '3', 'Hygenic', '2024-12-01', 4),
(14, 3, 19, '3', 'cleaned', '2025-05-05', 17),
(15, 1, 0, '4', 'good', '2024-12-04', 0),
(16, 4, 23, '3', 'cleaned', '2024-05-21', 18);

-- --------------------------------------------------------

--
-- Table structure for table `municipality`
--

CREATE TABLE `municipality` (
  `mid` int(11) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `mzone` varchar(100) NOT NULL,
  `mcontact` varchar(20) NOT NULL,
  `memail` varchar(100) NOT NULL,
  `mpassword` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `municipality`
--

INSERT INTO `municipality` (`mid`, `mname`, `mzone`, `mcontact`, `memail`, `mpassword`) VALUES
(1, 'Shirpur Nagar Parishad', 'shirpur', '8987675467', 'm@gmail.com', '123'),
(5, 'Shindkheda Nagar Parishad', 'shindkheda', '9856342578', 'shindkheda@gmail.com', '333'),
(6, 'Pune Municipal Corporation', 'Western Zone (Maharashtra)', '7465847234', 'Pune@gmail.com', '123'),
(8, 'Indore Municipal Corporation', 'Central Zone (Madhya Pradesh)', '8760123857', 'Indore@gmail.com', '123'),
(17, 'Mumbai Municipality Cooperation', 'Andheri', '6758694568', 'mumbai@gmail.com', '123'),
(18, 'Delhi Municipality Cooperation', 'Keshav Puram', '6758694568', 'delhi@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `toilet`
--

CREATE TABLE `toilet` (
  `tid` int(20) NOT NULL,
  `tlocation` varchar(255) NOT NULL,
  `ttype` varchar(255) NOT NULL,
  `tstatus` varchar(255) NOT NULL,
  `mid` int(11) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `toilet`
--

INSERT INTO `toilet` (`tid`, `tlocation`, `ttype`, `tstatus`, `mid`, `latitude`, `longitude`) VALUES
(1, 'Sector 12 Park', 'Public', 'Clean', 0, 0, 0),
(3, 'Shirpur', 'Public', 'Clean', 4, 0, 0),
(4, 'Shindkheda', 'Public', 'Clean', 4, 0, 0),
(5, 'Sector 20 Park', 'Public', 'Clean', 5, 0, 0),
(6, 'Pune Railway Station', 'Smart / e&#8209;toilets (public)', 'Clean', 6, 0, 0),
(7, 'katraj road', 'public', 'Clean', 6, 0, 0),
(8, 'mumbai', 'public', 'Clean', 4, 0, 0),
(9, 'indore', 'public', 'Clean', 0, 0, 0),
(10, 'indore', 'public', 'Clean', 0, 0, 0),
(11, 'indore', 'public', 'Clean', 0, 0, 0),
(12, 'Bus stand', 'public', 'Clean', 5, 0, 0),
(13, 'Bus stand', 'public', 'Clean', 5, 0, 0),
(14, 'Bus stand', 'public', 'Clean', 0, 0, 0),
(15, 'Shindkheda', 'Public', 'Clean', 4, 0, 0),
(16, 'indore', 'Public', 'Clean', 4, 0, 0),
(17, 'indore', 'Public', 'Clean', 0, 0, 0),
(18, 'indore', 'Public', 'Clean', 4, 0, 0),
(19, 'Swami Vivekananda Rd ', 'public', 'Clean', 17, 0, 0),
(20, 'MG Road Metro Station', 'Public Toilet', 'Active', 1, 28.474387, 77.068897),
(21, 'Swami Vivekananda Rd ', 'public', 'Clean', 3, 28.681169, 77.165237),
(22, ' Near BH Block Shalimar Bagh East, delhi', 'Public', 'Clean', 8, 28.717802, 77.158114),
(24, ' CC Block Shaimar Bagh ', 'Public', 'Active', 18, 28.718505, 77.158328);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(20) NOT NULL,
  `uname` varchar(125) NOT NULL,
  `ucontact` varchar(125) NOT NULL,
  `uemail` varchar(125) NOT NULL,
  `upassword` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `uname`, `ucontact`, `uemail`, `upassword`) VALUES
(1, 'Karuna Dnyaneshwar Girase', '8564756345', 'karunagirase2005@gmail.com', '4444'),
(2, 'vaishanvi bhavasar', '7564857643', 'vaishnavib0799@gmail.com', '123'),
(3, 'Neha Girase', '8765897065', 'neha@gmail.com', '123'),
(4, 'Swati Patil', '7656894578', 's@gmail.com', '55555'),
(5, 'mayuri patil', '7658987612', 'mayuri@gmail.com', '0000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `municipality`
--
ALTER TABLE `municipality`
  ADD PRIMARY KEY (`mid`),
  ADD UNIQUE KEY `unique_memail` (`memail`);

--
-- Indexes for table `toilet`
--
ALTER TABLE `toilet`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `cid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `municipality`
--
ALTER TABLE `municipality`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `toilet`
--
ALTER TABLE `toilet`
  MODIFY `tid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
