-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2018 at 12:35 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `eventdb`
--
CREATE DATABASE IF NOT EXISTS `eventdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `eventdb`;

-- --------------------------------------------------------

--
-- Table structure for table `branchtable`
--

DROP TABLE IF EXISTS `branchtable`;
CREATE TABLE IF NOT EXISTS `branchtable` (
  `coursename` varchar(100) NOT NULL,
  `branchname` varchar(100) NOT NULL,
  PRIMARY KEY (`branchname`),
  KEY `coursename` (`coursename`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branchtable`
--

INSERT INTO `branchtable` (`coursename`, `branchname`) VALUES
('Btech', 'Btech(CSE)'),
('Btech', 'Btech(ECE)'),
('Btech', 'Btech(ME)'),
('Mtech', 'Mtech(automobile)'),
('Mtech', 'Mtech(civil)'),
('Mtech', 'Mtech(CSE)'),
('Mtech', 'Mtech(ECE)'),
('Mtech', 'Mtech(EE)'),
('Phd', 'Phd Chemistry'),
('Phd', 'Phd Maths');

-- --------------------------------------------------------

--
-- Table structure for table `college_univ_table`
--

DROP TABLE IF EXISTS `college_univ_table`;
CREATE TABLE IF NOT EXISTS `college_univ_table` (
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `college_univ_table`
--

INSERT INTO `college_univ_table` (`name`) VALUES
('Apeejay'),
('ct university'),
('ctit'),
('Dav'),
('daviet'),
('lallpur'),
('LPU'),
('mehar chand'),
('MIT'),
('nit jalandhar'),
('st solider'),
('thapar');

-- --------------------------------------------------------

--
-- Table structure for table `coursetable`
--

DROP TABLE IF EXISTS `coursetable`;
CREATE TABLE IF NOT EXISTS `coursetable` (
  `coursename` varchar(100) NOT NULL,
  PRIMARY KEY (`coursename`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coursetable`
--

INSERT INTO `coursetable` (`coursename`) VALUES
('Btech'),
('Mtech'),
('Phd'),
('post doctorate'),
('post graduate');

-- --------------------------------------------------------

--
-- Table structure for table `eventtable`
--

DROP TABLE IF EXISTS `eventtable`;
CREATE TABLE IF NOT EXISTS `eventtable` (
  `name` varchar(100) NOT NULL,
  `fees` int(100) NOT NULL,
  `venue` varchar(100) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventtable`
--

INSERT INTO `eventtable` (`name`, `fees`, `venue`) VALUES
('dancing', 150, 'auditorium'),
('hacking', 250, 'open air auditorium'),
('lan gaming', 250, 'computer lab2'),
('robo war', 200, 'computer lab'),
('singing', 150, 'auditorium2');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(100) NOT NULL,
  `password` int(100) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registrationtable`
--

DROP TABLE IF EXISTS `registrationtable`;
CREATE TABLE IF NOT EXISTS `registrationtable` (
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `college` varchar(100) NOT NULL,
  `event` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `totalfees` int(100) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `reg_date` datetime NOT NULL,
  `imagename` varchar(200) NOT NULL,
  PRIMARY KEY (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registrationtable`
--

INSERT INTO `registrationtable` (`name`, `phone`, `email_id`, `college`, `event`, `gender`, `totalfees`, `course_name`, `branch_name`, `dob`, `reg_date`, `imagename`) VALUES
('cdssdc', '', '', 'Choose College', 'Choose Event', 'Male', 0, '', '', '0000-00-00', '0000-00-00 00:00:00', '0'),
('harpreet', '2376273', 'harpreet@gmail.com', 'Apeejay', 'Robo War, Lan gaming, Artist', 'Male', 0, '', '', '0000-00-00', '0000-00-00 00:00:00', '0'),
('roy', '324362832', 'roy@gmail.com', 'LPU', 'Lan Gaming', 'Female', 0, '', '', '0000-00-00', '0000-00-00 00:00:00', '0'),
('chandler', '32436287932', 'chandler@gmail.com', 'MIT', 'Lan Gaming', 'Female', 0, '', '', '0000-00-00', '0000-00-00 00:00:00', '0'),
('anu', '325464754', 'anu@gmail.com', 'daviet', 'lan gaming', 'Female', 0, 'Btech', 'Btech(CSE)', '0000-00-00', '0000-00-00 00:00:00', '0'),
('any arora', '3283228832', 'anuarora@gmail.com', 'mehar chand', 'Lan Gaming', 'Female', 0, '', '', '0000-00-00', '0000-00-00 00:00:00', '0'),
('sirjana', '3287328832', 'sirjana@gmail.com', 'mehar chand', 'Lan Gaming', 'Female', 0, '', '', '0000-00-00', '0000-00-00 00:00:00', '0'),
('neeru', '34353225', 'neeru@gmail.com', 'ctit', 'robo war, singing', 'Female', 0, 'Mtech', 'Mtech(civil)', '0000-00-00', '0000-00-00 00:00:00', '0'),
('daisy', '378273', 'daisy@yahoo.com', 'mehar chand', 'Robo War, Artist, Singing', 'Female', 0, '', '', '0000-00-00', '0000-00-00 00:00:00', '0'),
('ayushi', '38347273', 'ayushi@gmaiul.com', 'LPU', 'Choose Event', 'Female', 0, '', '', '0000-00-00', '0000-00-00 00:00:00', '0'),
('kirtu', '387934879', 'kirtu@gmaiul.com', 'Apeejay', 'Choose Event', 'Female', 0, '', '', '0000-00-00', '0000-00-00 00:00:00', '0'),
('muskan', '38793733283', 'muskan@gmaiul.com', 'Dav', 'Choose Event', 'Female', 0, '', '', '0000-00-00', '0000-00-00 00:00:00', '0'),
('hxebj', '389278', 'djxnad', 'DAVIET', 'Robo War', 'Male', 0, '', '', '0000-00-00', '0000-00-00 00:00:00', '0'),
('navu', '647383492', 'navu@gmail.com', 'Dav', 'lan gaming, robo war', 'Female', 0, 'Btech', 'Btech(CSE)', '0000-00-00', '0000-00-00 00:00:00', '0'),
('komal', '673283182', 'komal@yahoo.com', 'MIT', 'lan gaming, robo war', 'Female', 450, 'Phd', 'Phd Chemistry', '0000-00-00', '0000-00-00 00:00:00', '0'),
('mayu', '673874392', 'mayu@gmail.com', 'LPU', 'lan gaming, robo war', 'Female', 450, 'Phd', 'Phd Maths', '2001-01-10', '2018-01-11 15:18:52', '0'),
('bs sbh', '678', 'bhaqja', 'ctit', 'robo war', 'Female', 0, 'Btech', 'Btech(CSE)', '2018-01-11', '2018-01-12 15:57:59', 'default.png'),
('mehga', '6782182112', '652128262', 'daviet', 'lan gaming, robo war', 'Female', 450, 'Btech', 'Btech(CSE)', '2018-01-04', '2018-01-12 16:38:32', '1515755311714city.jpg'),
('neeti', '678323292', 'neeti@gmail.com', 'nit jalandhar', 'lan gaming, robo war', 'Female', 450, 'Btech', 'Btech(CSE)', '1999-06-21', '2018-01-10 23:29:46', '0'),
('shubham', '6783278281', 'shubham@gmail.com', 'st solider', 'dancing, lan gaming, robo war', 'Male', 0, 'Mtech', 'Mtech(EE)', '0000-00-00', '0000-00-00 00:00:00', '0'),
('rohan', '6784389327', 'rohan@gmail.com', 'daviet', 'robo war', 'Male', 200, 'Btech', 'Btech(CSE)', '1994-01-05', '2018-01-11 16:46:54', '1515669413794city.jpg'),
('jas', '6837929121', 'jas@gmail.com', 'Dav', 'lan gaming, robo war', 'Male', 450, 'Btech', 'Btech(CSE)', '1999-08-30', '2018-01-11 19:39:24', '1515679764390window 7 pic.jpg'),
('dcjc', '739889239', 'cdnjnkj', 'NIT Jalandhar', 'Robo War', '', 0, '', '', '0000-00-00', '0000-00-00 00:00:00', '0'),
('Radha', '9876543223', 'radhas@gmail.com', 'CTIT', 'Robo War', 'Female', 0, '', '', '0000-00-00', '0000-00-00 00:00:00', '0');

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

DROP TABLE IF EXISTS `usertable`;
CREATE TABLE IF NOT EXISTS `usertable` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `usertype` varchar(100) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`username`, `password`, `name`, `phone`, `usertype`) VALUES
('pariva', '123', NULL, NULL, 'Admin');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `branchtable`
--
ALTER TABLE `branchtable`
  ADD CONSTRAINT `course_constraint` FOREIGN KEY (`coursename`) REFERENCES `coursetable` (`coursename`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
