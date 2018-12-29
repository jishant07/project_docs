-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2018 at 01:34 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `prods`
--

CREATE TABLE `prods` (
  `prod_name` varchar(50) NOT NULL,
  `id` varchar(5) NOT NULL,
  `pri` int(5) NOT NULL,
  `dis_pri` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prods`
--

INSERT INTO `prods` (`prod_name`, `id`, `pri`, `dis_pri`) VALUES
('Great Black Panda', 'P001', 2000, 1800),
('Boring Car', 'P002', 1500, 1300),
('Cute Dog', 'P003', 8000, 7500),
('Refrigerator', 'P004', 2500, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `email` varchar(50) NOT NULL,
  `prodid` varchar(5) NOT NULL,
  `qty` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`email`, `prodid`, `qty`) VALUES
('prashtij@gmail.com', 'P001', 1),
('prashtij@gmail.com', 'P003', 1),
('prashtij@gmail.com', 'P004', 1);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `email` varchar(50) NOT NULL,
  `code` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`email`, `code`) VALUES
('jishanta@gmail.com', 0),
('jishantacharya@gmail.com', 0),
('prashtij@gmail.com', 0),
('abcd@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `age` int(5) NOT NULL,
  `gen` varchar(7) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pwd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`fname`, `lname`, `age`, `gen`, `email`, `pwd`) VALUES
('Jishant', 'Acharya', 20, 'male', 'jishanta@gmail.com', '123456789'),
('Prashant', 'Acharya', 51, 'male', 'prashtij@gmail.com', 'Jish@nt07'),
('Acharya', 'Prashant ', 20, 'male', 'jishantacharya@gmail.com', '123456789'),
('Jishant', 'Acharya', 20, 'male', 'abcd@gmail.com', '123456');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
