-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 09, 2024 at 05:58 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flask`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`) VALUES
(1, 'momo yvan', 'yvangodimomo@gmail.com', 'hello world');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `price` varchar(150) NOT NULL,
  `id` int NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `image` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `minimum_qty` int NOT NULL,
  `max_qty` int NOT NULL,
  `qty` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`price`, `id`, `name`, `image`, `minimum_qty`, `max_qty`, `qty`) VALUES
('786.0', 1, 'momo godi yvan', 'oms2.png', 10, 332, 654),
('152.0', 7, 'wemayi', 'new new.jpg', 10, 50, 9),
('500000.0', 42, 'hcfchvxc', 'yvan.jpg', 66, 200, 40),
('152', 62, 'YVAN MOMO GODI', '20220205_111153.jpg', 0, 0, 0),
('152983.0', 66, 'YVAN MOMO GODI 222', '-5821207242467293692_121.jpg', 9, 99, 120);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `role`) VALUES
(24, 'wemayi', 'yvangodimomo@gmail.com', 'scrypt:32768:8:1$8CWjFfQ9wtC2Axq5$212888d484956128a5e850090cdf9aa5d35b275e28219512b4a644dbd6d1fa56dddb577661b4e0198ed7efd103d562d43f8074d820ba1e482f3a32b901dae6f3', 'user'),
(25, 'hcfchvxc', 'momomarlyse@gmail.com', 'scrypt:32768:8:1$D3mLDtjrYoBjQRdT$8bc2af74ad1b111366c2c432784654dda896accc46505b8f5a9bc50f4b60b731fe52250292f7c14c8f1fa62b216741613891b4b95981ad08e5c308a8ecd05cf0', 'user'),
(26, 'momo', 'momomoi@yahoo.fr', 'scrypt:32768:8:1$62DmnKvWpQ1Wg3c5$f88fd84b4aeec85cb0bc0ffc41c1e39599ff2c766653237566886c95db9cb3babc15698c3fb2197786f0901e977397be8862a198dd81536aecdf7dcf817dec69', 'user'),
(27, 'momo godi yvan', 'admin@gmail.com', 'scrypt:32768:8:1$W0daTSssEpePV7C2$616144ed78b2fa3c1a879c165d977d010743f1cdf90b1335d4d93d84e504e014df63e4807f9b0f3f1e7dc18bc7f8a6aa5b6980698b33a774c85e64b3b1de65c3', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `picture` (`image`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
