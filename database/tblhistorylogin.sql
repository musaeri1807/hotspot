-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2021 at 07:58 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbcrudoop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblhistorylogin`
--

CREATE TABLE `tblhistorylogin` (
  `field_idnet` int(11) NOT NULL,
  `field_mac` varchar(50) NOT NULL,
  `field_username` varchar(50) NOT NULL,
  `field_password` varchar(50) NOT NULL,
  `field_name` varchar(50) NOT NULL,
  `field_handphone` varchar(50) NOT NULL,
  `field_profile` varchar(50) NOT NULL,
  `field_date` date NOT NULL,
  `field_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblhistorylogin`
--

INSERT INTO `tblhistorylogin` (`field_idnet`, `field_mac`, `field_username`, `field_password`, `field_name`, `field_handphone`, `field_profile`, `field_date`, `field_time`) VALUES
(1, '90:60:F1:85:F4:40', 'MUSAERI', 'MUSAERI', 'name User', '081210003701', 'Harian', '2021-05-22', '11:40:16'),
(2, '90:60:F1:85:F4:40', 'Musa', 'musa', 'name User', '081210003701', 'Harian', '2021-05-22', '11:44:43'),
(3, 'FC:A5:D0:94:1C:AD', 'adam', 'adam', 'name User', '085799990456', 'Harian', '2021-05-22', '11:52:15'),
(4, '90:60:F1:85:F4:40', 'musaeri', 'musaeri', 'name User', '081210003700000001', 'Harian', '2021-05-23', '07:23:42'),
(5, '$(mac)', 'gavin', 'gavin', 'name User', '081210003702', 'Harian', '2021-05-23', '09:30:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblhistorylogin`
--
ALTER TABLE `tblhistorylogin`
  ADD PRIMARY KEY (`field_idnet`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblhistorylogin`
--
ALTER TABLE `tblhistorylogin`
  MODIFY `field_idnet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
