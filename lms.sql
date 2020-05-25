-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 13, 2020 at 03:58 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `confirm_password` varchar(100) NOT NULL,
  `admin_image` varchar(100) NOT NULL,
  `admin_type` varchar(100) NOT NULL,
  `admin_added` datetime NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `confirm_password`, `admin_image`, `admin_type`, `admin_added`) VALUES
(1, 'Admin', 'A', 'Admin', 'admin', 'admin', 'admin', '', 'Admin', '2015-09-05 11:40:50'),
(2, 'Pradeep', 'Pradeep', 'Pradeep', 'encoder', 'encoder', 'encoder', '', 'Encoder', '2015-09-29 11:40:50'),
(3, 'Anonymous', 'Anonymous', 'Anonymous', 'anonymous', 'anonymous', 'anonymous', '', 'Encoder', '2015-11-25 15:21:01');

-- --------------------------------------------------------

--
-- Table structure for table `allowed_book`
--

CREATE TABLE IF NOT EXISTS `allowed_book` (
  `allowed_book_id` int(11) NOT NULL AUTO_INCREMENT,
  `qntty_books` int(11) NOT NULL,
  PRIMARY KEY (`allowed_book_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `allowed_book`
--

INSERT INTO `allowed_book` (`allowed_book_id`, `qntty_books`) VALUES
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `allowed_days`
--

CREATE TABLE IF NOT EXISTS `allowed_days` (
  `allowed_days_id` int(11) NOT NULL AUTO_INCREMENT,
  `no_of_days` int(11) NOT NULL,
  PRIMARY KEY (`allowed_days_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `allowed_days`
--

INSERT INTO `allowed_days` (`allowed_days_id`, `no_of_days`) VALUES
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `barcode`
--

CREATE TABLE IF NOT EXISTS `barcode` (
  `barcode_id` int(11) NOT NULL AUTO_INCREMENT,
  `pre_barcode` varchar(100) NOT NULL,
  `mid_barcode` int(100) NOT NULL,
  `suf_barcode` varchar(100) NOT NULL,
  PRIMARY KEY (`barcode_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `barcode`
--

INSERT INTO `barcode` (`barcode_id`, `pre_barcode`, `mid_barcode`, `suf_barcode`) VALUES
(1, 'APSIT', 1, 'LMS'),
(2, 'APSIT', 2, 'LMS'),
(3, 'APSIT', 3, 'LMS'),
(4, 'APSIT', 4, 'LMS'),
(5, 'APSIT', 5, 'LMS'),
(6, 'APSIT', 6, 'LMS'),
(7, 'APSIT', 7, 'LMS');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_title` varchar(100) NOT NULL,
  `category_id` int(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `author_2` varchar(100) NOT NULL,
  `author_3` varchar(100) NOT NULL,
  `author_4` varchar(100) NOT NULL,
  `author_5` varchar(100) NOT NULL,
  `book_copies` int(11) NOT NULL,
  `book_pub` varchar(100) NOT NULL,
  `publisher_name` varchar(100) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `copyright_year` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `book_barcode` varchar(100) NOT NULL,
  `book_image` varchar(100) NOT NULL,
  `date_added` datetime NOT NULL,
  `remarks` varchar(100) NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `book_title`, `category_id`, `author`, `author_2`, `author_3`, `author_4`, `author_5`, `book_copies`, `book_pub`, `publisher_name`, `isbn`, `copyright_year`, `status`, `book_barcode`, `book_image`, `date_added`, `remarks`) VALUES
(1, 'English Expressways : Second Year', 1, 'Virginia F. Bermudez', 'Remedios F. Nery', 'Josephine M. Cruz', 'Milagrosa A. San Juan', '', 14, '2010', 'SD Publications, INC.', '978-971-0315-72-7', 2010, 'Old', 'APSIT1LMS', 'IMG_0019.JPG', '2015-12-14 01:06:46', 'Available'),
(2, 'DAYBOOK of Critical Reading and Writing', 8, 'Fran Claggett', 'Louann Reid', 'Ruth Vinz', '', '', 20, '1978', 'Doubleday Canada Limited', '0-669-46432-5', 1978, 'Old', 'APSIT2LMS', 'IMG_0006 - Copy.JPG', '2015-12-14 01:11:06', 'Available'),
(3, 'Getting to Know-Puerto Rico', 2, 'Frances Robins', '', '', '', '', 1, 'Coward-McCann', '1967', '', 0, 'Old', 'APSIT3LMS', '', '2015-12-14 01:21:47', 'Available'),
(4, 'Lotta on Troublemaker Street', 2, 'Astrid Lindgren', '', '', '', '', 0, 'Aladdin Paperbacks', '2001', '0-689-84673-8', 1962, 'Replacement', 'APSIT4LMS', '', '2015-12-14 01:43:06', 'Not Available'),
(5, 'Great Days of Whailing', 8, 'Henry Beetle Hough', '', '', '', '', 1, '', '', '', 0, 'Damaged', 'APSIT5LMS', '', '2015-12-14 02:05:16', 'Not Available'),
(6, 'Even Big Guys Cry', 2, 'Alex Karras', '', '', '', '', 1, '', '', '', 0, 'Lost', 'APSIT6LMS', '', '2015-12-14 02:05:47', 'Not Available'),
(7, 'Gintong Pamana Wika at Panitikan - Ikalawang Taon', 6, 'Lolita R. Nakpil', 'Leticia F. Dominguez', '', '', '', 12, '2000', 'SD Publications, INC.', '971-07-1885-1', 2000, 'Old', 'APSIT7LMS', 'IMG_0029 - Copy.JPG', '2015-12-14 02:20:36', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `borrow_book`
--

CREATE TABLE IF NOT EXISTS `borrow_book` (
  `borrow_book_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `date_borrowed` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `date_returned` datetime NOT NULL,
  `borrowed_status` varchar(100) NOT NULL,
  `book_penalty` varchar(100) NOT NULL,
  PRIMARY KEY (`borrow_book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `borrow_book`
--


-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `classname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_id` (`category_id`),
  KEY `classid` (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=801 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `classname`) VALUES
(1, 'Textbook'),
(2, 'English'),
(3, 'Math'),
(4, 'Science'),
(5, 'Encyclopedia'),
(6, 'Filipiniana'),
(7, 'Novel'),
(8, 'General'),
(9, 'References');

-- --------------------------------------------------------

--
-- Table structure for table `item_rating`
--

CREATE TABLE IF NOT EXISTS `item_rating` (
  `ratingId` int(11) NOT NULL AUTO_INCREMENT,
  `itemId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `ratingNumber` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = Block, 0 = Unblock',
  PRIMARY KEY (`ratingId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `item_rating`
--

INSERT INTO `item_rating` (`ratingId`, `itemId`, `userId`, `ratingNumber`, `title`, `comments`, `created`, `modified`, `status`) VALUES
(3, 1, 41, 2, 'This is test', 'This is test', '2019-11-08 02:12:40', '2019-11-08 02:12:40', 1),
(4, 1, 41, 2, 'this is test', 'ddsadsd', '2019-11-08 02:15:58', '2019-11-08 02:15:58', 1),
(5, 1, 41, 2, 'sasasa', 'sasas', '2019-11-08 02:16:43', '2019-11-08 02:16:43', 1),
(6, 1, 41, 3, 'this is test', 'sasasa', '2019-11-08 02:17:56', '2019-11-08 02:17:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `penalty`
--

CREATE TABLE IF NOT EXISTS `penalty` (
  `penalty_id` int(11) NOT NULL AUTO_INCREMENT,
  `penalty_amount` int(11) NOT NULL,
  PRIMARY KEY (`penalty_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `penalty`
--

INSERT INTO `penalty` (`penalty_id`, `penalty_amount`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE IF NOT EXISTS `report` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `detail_action` varchar(100) NOT NULL,
  `date_transaction` datetime NOT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `report`
--


-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE IF NOT EXISTS `request` (
  `rId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `Description` longtext NOT NULL,
  `request_reply` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL,
  `req_date` datetime NOT NULL,
  PRIMARY KEY (`rId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`rId`, `userId`, `book_id`, `Description`, `request_reply`, `status`, `req_date`) VALUES
(1, 41, 1, '', '0', '1', '2019-11-07 08:35:12');

-- --------------------------------------------------------

--
-- Table structure for table `return_book`
--

CREATE TABLE IF NOT EXISTS `return_book` (
  `return_book_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `date_borrowed` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `date_returned` datetime NOT NULL,
  `book_penalty` varchar(100) NOT NULL,
  PRIMARY KEY (`return_book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `return_book`
--


-- --------------------------------------------------------

--
-- Table structure for table `stream`
--

CREATE TABLE IF NOT EXISTS `stream` (
  `sId` int(11) NOT NULL AUTO_INCREMENT,
  `sName` varchar(500) NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`sId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `stream`
--

INSERT INTO `stream` (`sId`, `sName`, `status`) VALUES
(1, 'Computer Science', '1'),
(2, 'Information Technology', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_number` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `user_image` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `user_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `school_number`, `firstname`, `middlename`, `lastname`, `email`, `password`, `contact`, `gender`, `address`, `type`, `level`, `section`, `user_image`, `status`, `user_added`) VALUES
(41, '123', 'samir', 'f', 'tadvi', 'sam@gmail.com', '123', '11111111111', 'Female', 'eee', 'Student', '1', 'eeee', '', 'Active', '2019-10-29 14:43:11');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE IF NOT EXISTS `user_log` (
  `user_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `date_log` datetime NOT NULL,
  PRIMARY KEY (`user_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `user_log`
--

