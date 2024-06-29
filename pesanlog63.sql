-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2024 at 06:23 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pesanlog63`
--

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `idpesan` int(11) NOT NULL,
  `waktupesan` datetime NOT NULL DEFAULT current_timestamp(),
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`idpesan`, `waktupesan`, `pesan`) VALUES
(1, '2024-06-29 10:36:11', 'Contoh pesan 1'),
(2, '2024-06-29 10:45:42', 'Ini pesan ke 2 yang diinput dengan metoder  url paramter'),
(3, '2024-06-29 10:46:37', '<iframe src=\"https://harrywitriyono.com\"></iframe>'),
(4, '2024-06-29 10:48:01', '<iframe src=\"https://ft.umb.ac.id\"></iframe>'),
(5, '2024-06-29 10:49:28', 'union 1 select 1,2,3,4,5 from mysqli.user-- -'),
(6, '2024-06-29 10:50:02', '<union 1 select 1,2,3,4,5 from mysqli.user-- -'),
(7, '2024-06-29 10:51:14', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`idpesan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `idpesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
