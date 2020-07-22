-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 22, 2020 at 08:34 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `firstmvc`
--

-- --------------------------------------------------------

--
-- Table structure for table `makale`
--

CREATE TABLE `makale` (
  `id` int(11) NOT NULL,
  `baslik` varchar(70) COLLATE utf8_turkish_ci NOT NULL,
  `icerik` varchar(70) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `makale`
--

INSERT INTO `makale` (`id`, `baslik`, `icerik`) VALUES
(1, 'baslik1', 'icerik1'),
(3, 'baslik2', 'icerik2'),
(4, 'baslik4', 'icerik4'),
(5, 'baslik5', 'icerik5'),
(6, 'baslik6', 'icerik6'),
(7, 'baslik3', 'icerik3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `makale`
--
ALTER TABLE `makale`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `makale`
--
ALTER TABLE `makale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
