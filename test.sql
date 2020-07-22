-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 18, 2020 at 06:02 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `art`
--

CREATE TABLE `art` (
  `ART_ID` int(11) NOT NULL,
  `ARTIST_ID` varchar(10) DEFAULT NULL,
  `ART_GENRE` varchar(15) NOT NULL,
  `ART_PRICE` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `art`
--

INSERT INTO `art` (`ART_ID`, `ARTIST_ID`, `ART_GENRE`, `ART_PRICE`) VALUES
(1, '2', 'Comedy', 2),
(2, '2', 'Horror', 4000),
(3, '3', 'Commical', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `ARTIST_ID` int(11) NOT NULL,
  `ARTIST_LNAME` varchar(15) NOT NULL,
  `ARTIST_FNAME` varchar(15) NOT NULL,
  `ARTIST_PHONE` varchar(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`ARTIST_ID`, `ARTIST_LNAME`, `ARTIST_FNAME`, `ARTIST_PHONE`) VALUES
(1, 'Shafeeq', 'Muhammad', '03142299543'),
(2, 'Azhar', 'Muhammad', '030090865443'),
(3, 'maqsood', 'anwar', '5523'),
(4, 'Munir', 'Mehmood', '04189794'),
(5, 'nain', 'zille', '46356'),
(6, 'one', 'some', '5425');

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `BUYER_ID` int(11) NOT NULL,
  `BUYER_FNAME` varchar(15) NOT NULL,
  `BUYER_LNAME` varchar(15) NOT NULL,
  `PHONE_NO` varchar(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`BUYER_ID`, `BUYER_FNAME`, `BUYER_LNAME`, `PHONE_NO`) VALUES
(1, 'Husnain', 'Ali', '4523525'),
(2, 'Ullah', 'Zaki', '2543');

-- --------------------------------------------------------

--
-- Table structure for table `sold`
--

CREATE TABLE `sold` (
  `ORDER_ID` varchar(10) NOT NULL,
  `ARTIST_ID` varchar(10) DEFAULT NULL,
  `BUYER_ID` varchar(10) DEFAULT NULL,
  `ART_ID` varchar(10) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `art`
--
ALTER TABLE `art`
  ADD PRIMARY KEY (`ART_ID`),
  ADD KEY `FK_ARTIST_ID` (`ARTIST_ID`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`ARTIST_ID`);

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`BUYER_ID`);

--
-- Indexes for table `sold`
--
ALTER TABLE `sold`
  ADD PRIMARY KEY (`ORDER_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `art`
--
ALTER TABLE `art`
  MODIFY `ART_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `ARTIST_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `BUYER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
