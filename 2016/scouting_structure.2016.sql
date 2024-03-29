-- phpMyAdmin SQL Dump
-- version 3.3.10.4
-- http://www.phpmyadmin.net
--
-- Host: mysql.yetirobotics.org
-- Generation Time: Mar 16, 2016 at 01:31 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.18

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `yetirobotics_org_scouting`
--

-- --------------------------------------------------------

--
-- Table structure for table `defenses`
--

CREATE TABLE IF NOT EXISTS `defenses` (
  `id` int(11) NOT NULL,
  `low_bar` int(11) NOT NULL,
  `portcullis` int(11) NOT NULL,
  `cheval_de_frise` int(11) NOT NULL,
  `moat` int(11) NOT NULL,
  `ramparts` int(11) NOT NULL,
  `drawbridge` int(11) NOT NULL,
  `sally_port` int(11) NOT NULL,
  `rock_wall` int(11) NOT NULL,
  `rough_terrain` int(11) NOT NULL,
  `gametime` text NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pit_comments`
--

CREATE TABLE IF NOT EXISTS `pit_comments` (
  `pit_scout_data_id` int(11) NOT NULL AUTO_INCREMENT,
  `team_number` int(11) NOT NULL,
  `pit_comments` mediumtext NOT NULL,
  `scouter_name` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pit_scout_data_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `pit_pictures`
--

CREATE TABLE IF NOT EXISTS `pit_pictures` (
  `pit_scout_data_id` int(11) NOT NULL AUTO_INCREMENT,
  `team_number` int(11) NOT NULL,
  `pic_num` int(11) DEFAULT NULL,
  `scouter_name` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pit_scout_data_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `rankings`
--

CREATE TABLE IF NOT EXISTS `rankings` (
  `team_number` int(11) NOT NULL,
  `event_key` tinytext,
  `team_name` text NOT NULL,
  `event_name` text NOT NULL,
  `qual_rank` smallint(6) NOT NULL,
  `wins` tinyint(4) NOT NULL,
  `losses` tinyint(4) NOT NULL,
  `ties` tinyint(4) NOT NULL,
  `next_match_number` tinyint(4) DEFAULT NULL,
  `next_match_time` datetime DEFAULT NULL,
  `lastmodified` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `scouters`
--

CREATE TABLE IF NOT EXISTS `scouters` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `username` text NOT NULL,
  `pswd` tinytext NOT NULL,
  `byteCoins` int(11) NOT NULL DEFAULT '200',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

-- --------------------------------------------------------

--
-- Table structure for table `scout_data`
--

CREATE TABLE IF NOT EXISTS `scout_data` (
  `scout_data_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `match_number` int(11) NOT NULL,
  `team` int(11) NOT NULL,
  `robot_moved` tinyint(1) NOT NULL,
  `auto_balls_crossed` int(11) NOT NULL,
  `auto_balls_high` int(11) NOT NULL,
  `auto_balls_low` int(11) NOT NULL,
  `teleop_balls_high` int(11) NOT NULL,
  `teleop_balls_low` int(11) NOT NULL,
  `robot_defended` tinyint(1) NOT NULL,
  `end_game` text NOT NULL,
  `rating` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `comments` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`scout_data_id`),
  KEY `team` (`team`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=270 ;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` int(11) NOT NULL,
  `token` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `team_info`
--

CREATE TABLE IF NOT EXISTS `team_info` (
  `team_number` int(11) DEFAULT NULL,
  `team_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wagers`
--

CREATE TABLE IF NOT EXISTS `wagers` (
  `associatedId` int(11) NOT NULL,
  `wagerType` text NOT NULL,
  `wageredByteCoins` int(11) NOT NULL,
  `matchPredicted` int(11) NOT NULL,
  `alliancePredicted` text,
  `withenPoints` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
