-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2014 at 04:29 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `agri-research-profiles`
--

-- --------------------------------------------------------

--
-- Table structure for table `city_municipality`
--

CREATE TABLE IF NOT EXISTS `city_municipality` (
  `city_municipality_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `province_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`city_municipality_id`),
  UNIQUE KEY `cit_municipality_id_UNIQUE` (`city_municipality_id`),
  KEY `province_id_idx` (`province_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `city_municipality`
--

INSERT INTO `city_municipality` (`city_municipality_id`, `name`, `province_id`) VALUES
(1, 'Alamada', 1),
(2, 'Aleosan', 1),
(3, 'Antipas', 1),
(4, 'Arakan', 1),
(5, 'Banisilan', 1),
(6, 'Carmen', 1),
(7, 'Kabacan', 1),
(8, 'Kidapawan City', 1),
(9, 'Libungan', 1),
(10, 'Magpet', 1),
(11, 'Makilala', 1),
(12, 'Matalam', 1),
(13, 'Midsayap', 1),
(14, 'M''lang', 1),
(15, 'Pigcawayan', 1),
(16, 'Pikit', 1),
(17, 'President Roxas', 1),
(18, 'Tulunan', 1),
(19, 'Alabel', 2),
(20, 'Glan', 2),
(21, 'Kiamba', 2),
(22, 'Maasim', 2),
(23, 'Maitum', 2),
(24, 'Malapatan', 2),
(25, 'Malungon', 2),
(26, 'Banga', 3),
(27, 'Koronadal', 3),
(28, 'Lake Sebu', 3),
(29, 'Norala', 3),
(30, 'Polomolok', 3),
(31, 'Sto. Niño', 3),
(32, 'Surallah', 3),
(33, 'Tampakan', 3),
(34, 'Tantangan', 3),
(35, 'T''Boli ', 3),
(36, 'Tupi', 3),
(37, 'Tacurong City', 4),
(38, 'Bagumbayan', 4),
(39, 'Columbio', 4),
(40, 'Esperanza', 4),
(41, 'Isulan', 4),
(42, 'Kalamansig', 4),
(43, 'Lambayong', 4),
(44, 'Lebak', 4),
(45, 'Lutayan', 4),
(46, 'Palimbang', 4),
(47, 'President Quirino', 4),
(48, 'Sen. Ninoy Aquino', 4),
(49, 'Cotabato', 5),
(50, 'GenSan', 6);

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE IF NOT EXISTS `designation` (
  `designation_id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`designation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`designation_id`, `type`) VALUES
(1, 'Agriculturist I'),
(2, 'Agriculturist II'),
(3, 'Sr. Agriculturist'),
(4, 'Agricultural Center Chief III'),
(5, 'Chief Agriculturist');

-- --------------------------------------------------------

--
-- Table structure for table `funding_agency`
--

CREATE TABLE IF NOT EXISTS `funding_agency` (
  `agency_id` int(11) NOT NULL AUTO_INCREMENT,
  `agency_name` varchar(150) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`agency_id`),
  UNIQUE KEY `fundsource_id_UNIQUE` (`agency_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `implementing_agency`
--

CREATE TABLE IF NOT EXISTS `implementing_agency` (
  `agency_id` int(11) NOT NULL AUTO_INCREMENT,
  `agency_name` varchar(150) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`agency_id`),
  UNIQUE KEY `agency_id_UNIQUE` (`agency_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE IF NOT EXISTS `province` (
  `province_id` int(11) NOT NULL AUTO_INCREMENT,
  `province_name` varchar(45) NOT NULL,
  PRIMARY KEY (`province_id`),
  UNIQUE KEY `province_id_UNIQUE` (`province_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`province_id`, `province_name`) VALUES
(1, 'North Cotabato'),
(2, 'Sarangani'),
(3, 'South Cotabato'),
(4, 'Sultan Kudarat'),
(5, 'Cotabato City'),
(6, 'General Santos City');

-- --------------------------------------------------------

--
-- Table structure for table `research`
--

CREATE TABLE IF NOT EXISTS `research` (
  `research_id` int(11) NOT NULL AUTO_INCREMENT,
  `research_title` text NOT NULL,
  `date` date NOT NULL,
  `location_address` text NOT NULL,
  `location_city` int(11) NOT NULL,
  `approved_budget` decimal(20,2) NOT NULL,
  `duration_start` varchar(50) DEFAULT NULL,
  `duration_end` varchar(50) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `status` varchar(45) NOT NULL,
  `abstract` text,
  `rationale` text NOT NULL,
  `objectives` text NOT NULL,
  `methodology` text NOT NULL,
  `results_and_discussions` text NOT NULL,
  `recommendation` text NOT NULL,
  PRIMARY KEY (`research_id`),
  UNIQUE KEY `research_id_UNIQUE` (`research_id`),
  KEY `status_idx` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

-- --------------------------------------------------------

--
-- Table structure for table `researcher`
--

CREATE TABLE IF NOT EXISTS `researcher` (
  `researcher_id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` int(11) DEFAULT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `mname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `marital_status` varchar(45) NOT NULL,
  `company_office` varchar(100) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `contact_number` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`researcher_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `research_funder`
--

CREATE TABLE IF NOT EXISTS `research_funder` (
  `research_funder_id` int(11) NOT NULL AUTO_INCREMENT,
  `research_id` int(11) NOT NULL,
  `funding_agency_id` int(11) NOT NULL,
  PRIMARY KEY (`research_funder_id`),
  UNIQUE KEY `reserach_funder_id_UNIQUE` (`research_funder_id`),
  KEY `research_idx` (`research_id`),
  KEY `funder_idx` (`funding_agency_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

-- --------------------------------------------------------

--
-- Table structure for table `research_implementor`
--

CREATE TABLE IF NOT EXISTS `research_implementor` (
  `research_implementor_id` int(11) NOT NULL AUTO_INCREMENT,
  `research_id` int(11) NOT NULL,
  `implementing_agency_id` int(11) NOT NULL,
  PRIMARY KEY (`research_implementor_id`),
  UNIQUE KEY `research_implementor_id_UNIQUE` (`research_implementor_id`),
  KEY `research_idx` (`research_id`),
  KEY `implementor_idx` (`implementing_agency_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

-- --------------------------------------------------------

--
-- Table structure for table `study_researchers`
--

CREATE TABLE IF NOT EXISTS `study_researchers` (
  `study_researchers_id` int(11) NOT NULL AUTO_INCREMENT,
  `research_id` int(11) DEFAULT NULL,
  `researcher_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`study_researchers_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE IF NOT EXISTS `user_account` (
  `user_id` int(10) unsigned NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_account`
--

INSERT INTO `user_account` (`user_id`, `username`, `password`) VALUES
(1, 'admin', '94a23e7604b7acf8df74c429b397fffe');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `city_municipality`
--
ALTER TABLE `city_municipality`
  ADD CONSTRAINT `province_id` FOREIGN KEY (`province_id`) REFERENCES `province` (`province_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `research_funder`
--
ALTER TABLE `research_funder`
  ADD CONSTRAINT `funder` FOREIGN KEY (`funding_agency_id`) REFERENCES `funding_agency` (`agency_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `research_id` FOREIGN KEY (`research_id`) REFERENCES `research` (`research_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `research_implementor`
--
ALTER TABLE `research_implementor`
  ADD CONSTRAINT `implementor` FOREIGN KEY (`implementing_agency_id`) REFERENCES `implementing_agency` (`agency_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `research` FOREIGN KEY (`research_id`) REFERENCES `research` (`research_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
