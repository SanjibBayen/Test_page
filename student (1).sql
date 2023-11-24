-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 23, 2023 at 01:53 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `stu_id` varchar(6) NOT NULL,
  `s_name` varchar(20) NOT NULL,
  `f_name` varchar(20) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `address` text NOT NULL,
  `ph_no` bigint NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `dob` date NOT NULL,
  `adm_date` datetime NOT NULL,
  `state` char(8) NOT NULL,
  PRIMARY KEY (`stu_id`),
  UNIQUE KEY `ph_no` (`ph_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_id`, `s_name`, `f_name`, `gender`, `address`, `ph_no`, `email`, `dob`, `adm_date`, `state`) VALUES
('STU001', 'Sundar Samanta', 'Samir Samanta', 'Male', 'Natshal, Mahishadal, Purba Medinipur', 9874521023, 'sundar@gmail.com', '2005-09-14', '2023-11-11 05:58:49', 'Active'),
('STU002', 'Anup Samanta', 'Joyanta Samanta', 'Male', 'Pahalanpur, Mahishadal, Purba Medinipur', 7874521023, 'anup@gmail.com', '2001-05-23', '2023-11-11 05:58:49', 'Active'),
('STU316', 'Sanjib Bayen', 'Biswajit Bayen', 'on', 'Mahishadal', 9800000231, 'sanjibbayen11@gmail.', '2001-01-01', '0000-00-00 00:00:00', 'Active'),
('STU825', 'Sk Mainul', 'Sk Sanuyar Ali', 'Male', 'Keshabpur Jalpai', 980002378, 'mainul@gmail.com', '2023-11-02', '0000-00-00 00:00:00', 'Active');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
