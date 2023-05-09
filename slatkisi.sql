-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 9, 2023 at 12:10 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slatkisi`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `idCat` int(11) NOT NULL,
  `nameCat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`idCat`, `nameCat`) VALUES
(1, 'torta'),
(2, 'cokolada'),
(3, 'cookie'),
(4, 'bombona'),
(5, 'lizalica'),
(6, 'sladoled'),
(7, 'ostalo');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL,
  `image` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `image`, `price`, `category`) VALUES
(1, 'cokoladna torta', 'ukusna cokoladna torta punjena najfinijom cokoladom idealna za sve prilike ', 'chocolatecake.jfif', 1599, 1),
(2, 'sarena lizalica', 'rucno napravljena lizalica ', 'lizalica.jfif', 300, 5),
(3, 'ljubicasti sladoled', 'sladoled boje lavande ', 'purple ice cream.jfif', 500, 6),
(4, 'cokoladni kolacici', 'spolja hrskavi, unutra mekani', 'kuki.jfif', 800, 3),
(5, 'cake pops', ' elegantni cake popsi idealni za bilo koju priliku', 'popsi.jpeg', 599, 7),
(6, 'torta', 'rodjendanska torta sa ukusom jagode', 'rodjendanska.jfif', 2999, 1);

-- --------------------------------------------------------
 
--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`idCat`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

 

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `idCat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

 

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
