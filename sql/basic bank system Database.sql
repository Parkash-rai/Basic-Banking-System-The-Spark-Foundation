-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2021 at 03:56 AM
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
-- Database: `sparks_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Padam Rai', 'Akash Rai', 480, '2021-02-13 18:07:13'),
(2, 'Parkash Rai', 'Preet Rathi', 640, '2021-02-14 20:44:53'),
(7, 'Parkash Rai', 'Rabia Ali', 455, '2021-02-15 07:34:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Parkash Rai', 'parkashrai@gmail.com', 48955),
(2, 'Akash Rai', 'akashrai@gmail.com', 35000),
(3, 'Padam Rai', 'raipadam@gmail.com', 40691),
(4, 'Preet Rathi', 'preetrathi@gmail.com', 48590),
(5, 'Muskan Kumari', 'kumarimuskan@gmail.com', 40050),
(6, 'Rabia Ali', 'rabiaali@gmail.com', 30555),
(7, 'Pardeep Kumar', 'pardeep@gmail.com', 49877),
(8, 'Junaid Ali', 'junaid@gmail.com', 36825),
(9, 'Avinash Kumar', 'avinash@gmail.com', 30000),
(10, 'Kelash Kumar', 'kelash@gmail.com', 50096);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
