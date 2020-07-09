-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2020 at 10:23 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookreturn`
--

CREATE TABLE `bookreturn` (
  `BookID` int(11) NOT NULL,
  `BookName` varchar(30) NOT NULL,
  `StudentID` varchar(20) NOT NULL,
  `StudentName` varchar(30) NOT NULL,
  `Qty` int(11) NOT NULL,
  `DateofReturn` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookreturn`
--

INSERT INTO `bookreturn` (`BookID`, `BookName`, `StudentID`, `StudentName`, `Qty`, `DateofReturn`) VALUES
(0, 'App Development', '', '', 1, '08/02/2020'),
(0, 'Software Development', '', '', 1, '08/02/2020'),
(0, '', '', '', 1, '08/02/2020'),
(1, 'App Development', '8', 'Neeta Sapkota', 1, '08/02/2020'),
(1, 'App Development', '8', 'Neeta Sapkota', 1, '08/02/2020'),
(2, 'Software Development', '8', 'Neeta Sapkota', 1, '08/02/2020'),
(1999, 'Personal Development', '6', 'Aayub Bista', 1, '07/07/2020');

-- --------------------------------------------------------

--
-- Table structure for table `booktable`
--

CREATE TABLE `booktable` (
  `BookID` varchar(15) NOT NULL,
  `BookTitle` varchar(50) NOT NULL,
  `Author` varchar(50) NOT NULL,
  `Price` varchar(10) NOT NULL,
  `Qty` int(11) NOT NULL,
  `EnteredBy` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booktable`
--

INSERT INTO `booktable` (`BookID`, `BookTitle`, `Author`, `Price`, `Qty`, `EnteredBy`) VALUES
('1', 'App Development', 'Nischal', '9999', 30, 'sajal35'),
('1999', 'Personal Development', 'Nischal Ghimire', '989', 50, 'sajal35'),
('2', 'Software Development', 'Nischal', '456', 40, 'sajal35'),
('3', 'Java Devs', 'Nnischal', '9999', 40, 'sajal35'),
('GR12', 'computer fundamental', 'sashi', '699', 56, 'sajal35');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `ID` int(11) NOT NULL,
  `Faculty` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`ID`, `Faculty`) VALUES
(1, 'BCA'),
(2, 'BBS'),
(3, 'Science'),
(4, 'Management');

-- --------------------------------------------------------

--
-- Table structure for table `issuetabe`
--

CREATE TABLE `issuetabe` (
  `Date` varchar(15) NOT NULL,
  `StudentID` varchar(20) NOT NULL,
  `BookID` varchar(15) NOT NULL,
  `Qty` int(11) NOT NULL,
  `IsReturn` tinyint(1) NOT NULL,
  `EnteredBy` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issuetabe`
--

INSERT INTO `issuetabe` (`Date`, `StudentID`, `BookID`, `Qty`, `IsReturn`, `EnteredBy`) VALUES
('02/38/2020', '2', '2', 1, 0, 'sajal35'),
('07/43/2020', '6', '1', 1, 0, 'sajal35'),
('07/02/2020', '3', '2', 1, 0, 'sajal35');

-- --------------------------------------------------------

--
-- Table structure for table `studenttable`
--

CREATE TABLE `studenttable` (
  `StudentID` varchar(20) NOT NULL,
  `Fullname` varchar(30) NOT NULL,
  `City` varchar(30) NOT NULL,
  `Mobile` varchar(15) NOT NULL,
  `Faculty` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `useraccounttable`
--

CREATE TABLE `useraccounttable` (
  `Fullname` varchar(50) NOT NULL,
  `City` varchar(30) NOT NULL,
  `Mobile` varchar(15) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `useraccounttable`
--

INSERT INTO `useraccounttable` (`Fullname`, `City`, `Mobile`, `Username`, `Password`) VALUES
('Registered User', 'Street 123, City', '98********', 'admin', 'password');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booktable`
--
ALTER TABLE `booktable`
  ADD PRIMARY KEY (`BookID`),
  ADD KEY `EnteredBy` (`EnteredBy`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`Faculty`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `issuetabe`
--
ALTER TABLE `issuetabe`
  ADD KEY `StudentID` (`StudentID`),
  ADD KEY `BookID` (`BookID`),
  ADD KEY `EnteredBy` (`EnteredBy`);

--
-- Indexes for table `studenttable`
--
ALTER TABLE `studenttable`
  ADD PRIMARY KEY (`StudentID`),
  ADD KEY `Faculty` (`Faculty`);

--
-- Indexes for table `useraccounttable`
--
ALTER TABLE `useraccounttable`
  ADD PRIMARY KEY (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
