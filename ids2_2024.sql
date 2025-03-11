-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 08, 2024 at 06:44 AM
-- Server version: 8.3.0
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ids2_2024`
--

-- --------------------------------------------------------

--
-- Table structure for table `ids2_2024_file`
--

DROP TABLE IF EXISTS `ids2_2024_file`;
CREATE TABLE IF NOT EXISTS `ids2_2024_file` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `publickey` varchar(255) NOT NULL,
  `document` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ids2_2024_file`
--

INSERT INTO `ids2_2024_file` (`id`, `uid`, `user`, `username`, `date`, `file`, `filename`, `author`, `publickey`, `document`) VALUES
(10, 'DOC852678', 'user@user.com', 'user', '2024-07-06', 'D:\\wamp64\\www\\asp\\ID2S\\ID2S\\upload\\demo.txt', 'demo.txt', 'Author ', '212275', 'Document ');

-- --------------------------------------------------------

--
-- Table structure for table `ids2_2024_request`
--

DROP TABLE IF EXISTS `ids2_2024_request`;
CREATE TABLE IF NOT EXISTS `ids2_2024_request` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) NOT NULL,
  `fid` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `document` varchar(255) NOT NULL,
  `requestedby` varchar(255) NOT NULL,
  `requestedbyname` varchar(255) NOT NULL,
  `uploadedby` varchar(255) NOT NULL,
  `uploadedbyname` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ids2_2024_request`
--

INSERT INTO `ids2_2024_request` (`id`, `uid`, `fid`, `file`, `filename`, `document`, `requestedby`, `requestedbyname`, `uploadedby`, `uploadedbyname`, `date`, `status`) VALUES
(1, 'uid_afbc1032-f', 'DOC852678', 'D:wamp64wwwaspID2SID2Suploaddemo.txt', 'demo.txt', 'Document ', 'user2@user2.com', 'user2', 'user@user.com', 'user', '2024-07-06', 'accepted');

-- --------------------------------------------------------

--
-- Table structure for table `ids2_2024_user`
--

DROP TABLE IF EXISTS `ids2_2024_user`;
CREATE TABLE IF NOT EXISTS `ids2_2024_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ids2_2024_user`
--

INSERT INTO `ids2_2024_user` (`id`, `uid`, `name`, `email`, `password`, `phone`, `address`, `status`) VALUES
(21, 'uid_f5581d63-b', 'user', 'user@user.com', '04f8996da763b7a969b1028ee3007569eaf3a635486ddab211d512c85b9df8fb', '9876543210', 'address', 'accepted'),
(22, 'uid_00c4e32e-e', 'user2', 'user2@user2.com', '6025d18fe48abd45168528f18a82e265dd98d421a7084aa09f61b341703901a3', '9876543211', 'address', 'accepted');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
