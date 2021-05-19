-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 21, 2019 at 01:01 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
CREATE TABLE IF NOT EXISTS `attendance` (
  `Name` text NOT NULL,
  `RollNumber` varchar(15) NOT NULL,
  `Course` text NOT NULL,
  `Section` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Present` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`Name`, `RollNumber`, `Course`, `Section`, `Date`, `Present`) VALUES
('Harsh mange', '130', 'OOP', 1, '2019-04-06', '1'),
('Harsh mange', '130', 'OOP', 1, '2019-04-06', '1'),
('Harsh mange', '130', 'OOP', 1, '2019-04-06', '0'),
('Harsh mange', '130', 'MAT100', 1, '2019-04-06', '0');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `Name` text NOT NULL,
  `RollNumber` varchar(15) NOT NULL,
  `Programme` text NOT NULL,
  `Mail` mediumtext NOT NULL,
  `Course` text NOT NULL,
  `Section` int(11) NOT NULL,
  `Attendance` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`Name`, `RollNumber`, `Programme`, `Mail`, `Course`, `Section`, `Attendance`) VALUES
('Harsh mange', '130', 'btech', 'harshm44', 'OOP', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
CREATE TABLE IF NOT EXISTS `faculty` (
  `Name` text NOT NULL,
  `Mail` mediumtext NOT NULL,
  `Course` text NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` text NOT NULL,
  PRIMARY KEY (`UserName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`Name`, `Mail`, `Course`, `UserName`, `Password`) VALUES
('Kuntal Patel', 'kuntalpatel@ahduni.edu.in', 'OOP Lab', 'Kuntalpatel', 'Kuntalpatel'),
('Aditya Patel', 'adityapatel@ahduni.edu.in', 'OOP', 'Adityapatel', 'Adityapatel'),
('Faculty', 'Faculty', 'xyz', 'Faculty', 'Faculty');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
CREATE TABLE IF NOT EXISTS `quiz` (
  `QuizNo` tinytext NOT NULL,
  `Course` text NOT NULL,
  `Section` tinytext NOT NULL,
  `Question` text NOT NULL,
  `OptA` text NOT NULL,
  `OptB` text NOT NULL,
  `OptC` text NOT NULL,
  `OptD` text NOT NULL,
  `Answer` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`QuizNo`, `Course`, `Section`, `Question`, `OptA`, `OptB`, `OptC`, `OptD`, `Answer`) VALUES
('1', 'MAT100', '1', 'what is java?', 'language', 'oop language', 'programming', 'all', 'all'),
('1', 'MAT100', '1', 'what is c?', 'language', 'oop language', 'programming', 'all', 'programming'),
('1', 'MAT100', '1', 'what is maths', 'subject', 'best sub', 'logical sub', 'queen of physics', 'queen of physics'),
('1', 'MAT100', '1', 'why to learn maths', 'subject', 'best sub', 'logical sub', 'maths is love', 'maths is love'),
('1', 'MAT100', '1', 'why to learn physics', 'subject', 'best sub', 'logical sub', 'king of maths', 'king of maths'),
('2', 'null', '1', 'what is sin30', 'func', 'algo', '1/2', 'all', '1/2'),
('2', 'null', '1', 'what is sin90', 'func', 'algo', '1', 'all', '1');

-- --------------------------------------------------------

--
-- Table structure for table `quizresult`
--

DROP TABLE IF EXISTS `quizresult`;
CREATE TABLE IF NOT EXISTS `quizresult` (
  `QuizNo` tinytext NOT NULL,
  `Course` text NOT NULL,
  `Section` text NOT NULL,
  `Marks` tinytext NOT NULL,
  `RollNumber` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quizresult`
--

INSERT INTO `quizresult` (`QuizNo`, `Course`, `Section`, `Marks`, `RollNumber`) VALUES
('1', 'MAT100', '1', '2', '130'),
('1', 'MAT100', '1', '2', '130'),
('1', 'MAT100', '1', '2', '130'),
('1', 'MAT100', '1', '2', '130'),
('1', 'MAT100', '1', '4', '130'),
('1', 'MAT100', '1', '2', '130'),
('1', 'MAT100', '1', '3', '130');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `Name` text,
  `RollNumber` varchar(15) NOT NULL,
  `Address` longtext,
  `Programme` text,
  `Mail` mediumtext,
  `Password` mediumtext,
  PRIMARY KEY (`RollNumber`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Name`, `RollNumber`, `Address`, `Programme`, `Mail`, `Password`) VALUES
('Harsh mange', '130', 'avb', 'btech', 'harshm44', '12345'),
('preyanshu sukhadia', '140', 'azxcvds', 'btech ict', 'preyanshu.s', '12345'),
('Student', '1841100', 'abc', 'b.tech', 'Student', 'Student');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
