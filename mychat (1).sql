-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2020 at 07:20 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mychat`
--
CREATE DATABASE IF NOT EXISTS `mychat` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mychat`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `user_pass` varchar(50) NOT NULL,
  `user_email` varchar(60) NOT NULL,
  `user_profile` varchar(100) NOT NULL,
  `user_country` varchar(20) NOT NULL,
  `user_gender` varchar(20) NOT NULL,
  `forgotten_answer` varchar(100) NOT NULL,
  `log_in` varchar(80) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_pass`, `user_email`, `user_profile`, `user_country`, `user_gender`, `forgotten_answer`, `log_in`) VALUES
(1, 'karan_13', 'karan@1234', 'rustagi.karan191@gmail.com', 'images/karan.jpeg.76', 'India', 'Male', 'bb group', 'Offline'),
(2, 'mithilesh_1', 'mithilesh1', 'mithilesh1@gmail.com', 'images/mithilesh.jpeg.75', 'India', 'Male', '', 'Online'),
(3, 'rebel_rajat', 'rebel@12345', 'rajat.kumar@gmail.com', 'images/rajat.jpeg.73', 'India', 'Male', '', 'Offline'),
(4, 'sourabh_cr7', 'sourabh@12345', 'sourabh7@gmail.com', 'images/sourabh.jpeg.94', 'India', 'Male', '', 'Offline'),
(5, 'shivam_30', 'shivam@12345', 'shivam30@gmail.com', 'images/shivam.jpeg.83', 'India', 'Male', '', 'Offline'),
(6, 'prince_k', 'prince@12345', 'prince.kumar@gmail.com', 'images/prince.jpeg.97', 'India', 'Male', '', 'Offline');

-- --------------------------------------------------------

--
-- Table structure for table `users_chats`
--

CREATE TABLE IF NOT EXISTS `users_chats` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_username` varchar(100) NOT NULL,
  `receiver_username` varchar(100) NOT NULL,
  `msg_content` varchar(255) NOT NULL,
  `msg_status` varchar(30) NOT NULL,
  `msg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `users_chats`
--

INSERT INTO `users_chats` (`msg_id`, `sender_username`, `receiver_username`, `msg_content`, `msg_status`, `msg_date`) VALUES
(1, 'prince_k', 'prince_k', 'hii prince', 'read', '2020-04-12 12:13:16'),
(2, 'prince_k', 'karan_13', 'hii karan', 'read', '2020-04-12 12:13:56'),
(3, 'prince_k', 'karan_13', 'hii karan', 'read', '2020-04-12 12:14:06'),
(4, 'prince_k', 'karan_13', 'hii karan', 'read', '2020-04-12 12:14:35'),
(5, 'prince_k', 'prince_k', 'hii prince', 'read', '2020-04-12 12:14:51'),
(6, 'prince_k', 'karan_13', 'hii karan', 'read', '2020-04-12 12:15:01'),
(7, 'prince_k', 'prince_k', 'hii prince', 'unread', '2020-04-12 12:15:26'),
(8, 'karan_13', 'mithilesh_1', 'hii', 'unread', '2020-04-12 12:21:30'),
(9, 'karan_13', 'mithilesh_1', 'hii', 'unread', '2020-04-12 12:21:40'),
(10, 'karan_13', 'karan_13', 'hii', 'read', '2020-04-12 12:29:30'),
(11, 'karan_13', 'karan_13', 'hii', 'unread', '2020-04-12 12:29:42'),
(12, 'karan_13', 'mithilesh_1', 'hii', 'unread', '2020-04-12 12:29:51'),
(13, 'karan_13', 'prince_k', 'hii prince', 'unread', '2020-04-12 12:32:14'),
(14, 'karan_13', 'prince_k', 'hii prince', 'unread', '2020-04-12 12:32:22');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
