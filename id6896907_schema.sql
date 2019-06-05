-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 21, 2019 at 03:56 AM
-- Server version: 10.3.12-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id6896907_schema`
--

-- --------------------------------------------------------

--
-- Table structure for table `autocomplete`
--

CREATE TABLE `autocomplete` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `autocomplete`
--

INSERT INTO `autocomplete` (`id`, `name`, `email`) VALUES
(1, 'Arunkumar', 'arunkumar@2my4edge.com'),
(2, 'karthick', 'karthick@2my4edge.com'),
(3, 'pandiya', 'pandiya@2my4edge.com'),
(4, 'ramkumar', 'ramkumar@2my4edge.com'),
(5, 'shanmu', 'shanmu@2my4edge.com'),
(6, 'vicky', 'vicky@2my4edge.com');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `size` int(11) NOT NULL,
  `type` varchar(256) NOT NULL,
  `location` varchar(256) NOT NULL,
  `user` varchar(256) NOT NULL,
  `token` varchar(256) NOT NULL,
  `usertoken` varchar(256) NOT NULL,
  `UTime` time(4) DEFAULT NULL,
  `Etime` time(4) NOT NULL,
  `hash` char(255) NOT NULL,
  `u_user` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload`
--

INSERT INTO `upload` (`id`, `name`, `size`, `type`, `location`, `user`, `token`, `usertoken`, `UTime`, `Etime`, `hash`, `u_user`) VALUES
(145, 'Penguins.jpg', 777835, 'image/jpeg', 'uploads/Penguins.jpg', 'siva', '57hFjnIlRM', '2EgHqP6217', '10:09:32.0000', '01:00:00.0000', '$2y$10$b/1UomafG0HG02mcfCqj/..zPeW0QKrpTqyVqfP7WejTJVOdlbrLC', 'apsel');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_id`, `name`, `hash`) VALUES
(1, 'sivaram_t1', 'sivaram', '$2a$07$d0xbIuOhkAp8iS8zR2Dbv.ybIdwM6i7BPI1LQ3KmLfEpJrkBeeGYu'),
(2, 'siva_t2', 'ram', '0'),
(3, 'markem_t2', 'markboucher', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autocomplete`
--
ALTER TABLE `autocomplete`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autocomplete`
--
ALTER TABLE `autocomplete`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
