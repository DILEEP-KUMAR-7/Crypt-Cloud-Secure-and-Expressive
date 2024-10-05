-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2019 at 09:01 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cloud`
--

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE IF NOT EXISTS `reg` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`id`, `name`, `email`, `pass`, `gender`, `state`, `country`, `status`) VALUES
(1, 'kkk', 'sathish.coign@gmail.com', '123', 'male', 'ts', 'india', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE IF NOT EXISTS `request` (
  `id` int(10) unsigned NOT NULL,
  `fname` varchar(45) NOT NULL,
  `skey` longtext NOT NULL,
  `attri` varchar(45) NOT NULL,
  `oid` varchar(45) NOT NULL,
  `uid` varchar(45) NOT NULL,
  `uname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `fname`, `skey`, `attri`, `oid`, `uid`, `uname`, `email`, `state`, `country`, `status`) VALUES
(1, 'sa', '+SJ2+Us/Z2XiX74wVEP9qQ==', 'Java', '1', '1', 'nn', 'sathishburra10@gmail.com', 'ts', 'india', 'permission granted'),
(2, 'sa', '+SJ2+Us/Z2XiX74wVEP9qQ==', 'Java', '1', '1', 'nn', 'sathishburra10@gmail.com', 'ts', 'india', 'permission granted');

-- --------------------------------------------------------

--
-- Table structure for table `t_request`
--

CREATE TABLE IF NOT EXISTS `t_request` (
  `id` int(10) unsigned NOT NULL,
  `fname` varchar(45) NOT NULL,
  `skey` varchar(45) NOT NULL,
  `attri` varchar(45) NOT NULL,
  `oid` varchar(45) NOT NULL,
  `oname` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_request`
--

INSERT INTO `t_request` (`id`, `fname`, `skey`, `attri`, `oid`, `oname`, `status`) VALUES
(1, 'sa', '1', 'Java', '1', 'kkk', 'Permission Granted ');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE IF NOT EXISTS `upload` (
  `id` int(10) unsigned NOT NULL,
  `fname` varchar(45) NOT NULL,
  `filedata` longtext NOT NULL,
  `filename` varchar(45) NOT NULL,
  `utime` varchar(45) NOT NULL,
  `fkey` varchar(45) NOT NULL,
  `attri` varchar(45) NOT NULL,
  `skey` varchar(45) NOT NULL,
  `oid` varchar(45) NOT NULL,
  `owner` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload`
--

INSERT INTO `upload` (`id`, `fname`, `filedata`, `filename`, `utime`, `fkey`, `attri`, `skey`, `oid`, `owner`) VALUES
(1, 'sa', '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', 'desktop2.txt', '2019/03/12 11:54:06', 'kk', 'Java', 'KMFV4eugaJVnrKalkH81TA==', '1', 'kkk'),
(2, 'jj', '3SERHNE9mglN7KUYI1fvLA==', 'deletedatabeff.txt', '2019/03/12 12:35:24', 'jj', 'Java', 'bMbFDTeOZesD63Y7TPS4wA==', '1', 'kkk');

-- --------------------------------------------------------

--
-- Table structure for table `ureg`
--

CREATE TABLE IF NOT EXISTS `ureg` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `access` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ureg`
--

INSERT INTO `ureg` (`id`, `name`, `email`, `pass`, `gender`, `state`, `access`, `country`, `status`) VALUES
(1, 'nn', 'sathishburra10@gmail.com', '123', 'male', 'ts', 'Java', 'india', 'Yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reg`
--
ALTER TABLE `reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_request`
--
ALTER TABLE `t_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ureg`
--
ALTER TABLE `ureg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reg`
--
ALTER TABLE `reg`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `t_request`
--
ALTER TABLE `t_request`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ureg`
--
ALTER TABLE `ureg`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
