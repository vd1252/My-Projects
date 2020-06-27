-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2018 at 11:00 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `evedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `addtocart`
--

CREATE TABLE IF NOT EXISTS `addtocart` (
  `cartid` int(10) NOT NULL AUTO_INCREMENT,
  `pid` int(10) NOT NULL,
  `pname` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `tcost` int(10) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `uname` varchar(500) NOT NULL,
  PRIMARY KEY (`cartid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `catid` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catid`, `name`) VALUES
(4, 'Electronic Product'),
(5, 'product for boys'),
(6, 'product for girls'),
(7, 'product for women'),
(8, 'product for men');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE IF NOT EXISTS `checkout` (
  `orderid` int(10) NOT NULL AUTO_INCREMENT,
  `hname` varchar(100) DEFAULT NULL,
  `cname` varchar(100) NOT NULL,
  `expy` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(500) NOT NULL,
  `mode` varchar(10) NOT NULL,
  `tcost` int(10) NOT NULL,
  `uname` varchar(100) NOT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`orderid`, `hname`, `cname`, `expy`, `name`, `phone`, `address`, `mode`, `tcost`, `uname`) VALUES
(3, '', '', '', 'anchal', '63256345', 'shdg ksdhgkjfdh kjhgfdjkg', 'cod', 30480, 'aman@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `contactid` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `msg` varchar(500) NOT NULL,
  PRIMARY KEY (`contactid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=105 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contactid`, `name`, `email`, `msg`) VALUES
(101, 'aman', 'kaur@gmail.com', 'hsjf hsjkhfjkhsjkfh'),
(102, 'Kiran', 'kiran@gmail.com', 'Hello I want to buy grocery at discount prices.'),
(103, 'Kiran', 'kiran@gmail.com', 'Hello I want to buy grocery at discount prices.'),
(104, 'Kiran2', 'kiran2@gmail.com', 'Hello I want to buy grocery at discount prices.');

-- --------------------------------------------------------

--
-- Table structure for table `orderhistory`
--

CREATE TABLE IF NOT EXISTS `orderhistory` (
  `orderhistoryid` int(10) NOT NULL AUTO_INCREMENT,
  `oid` int(10) NOT NULL,
  `pid` int(10) NOT NULL,
  `pname` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `tcost` int(10) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `uname` varchar(500) NOT NULL,
  PRIMARY KEY (`orderhistoryid`),
  KEY `oid` (`oid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `orderhistory`
--

INSERT INTO `orderhistory` (`orderhistoryid`, `oid`, `pid`, `pname`, `price`, `qty`, `tcost`, `image`, `uname`) VALUES
(1, 3, 1, 'Soft White Teddy', 14700, 2, 29400, '153978201482441x5OeC3mSL.jpg', 'aman@gmail.com'),
(2, 3, 2, 'Duck', 360, 3, 1080, '15402144333633.jpg', 'aman@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `pid` int(10) NOT NULL AUTO_INCREMENT,
  `catid` int(10) NOT NULL,
  `subcatid` int(10) NOT NULL,
  `pname` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `discount` int(10) NOT NULL,
  `stock` int(10) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `image` varchar(500) NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `catid` (`catid`,`subcatid`),
  KEY `subcatid` (`subcatid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `catid`, `subcatid`, `pname`, `price`, `discount`, `stock`, `description`, `image`) VALUES
(1, 4, 1, 'Soft White Teddy', 15000, 2, 8, 'Big Teddy Bear.\r\nNon-Toxic And Soft Fabric\r\nHuggable And Loveable For Someone Special\r\nSoft And Cuddly Filling\r\nWashable"', '153978201482441x5OeC3mSL.jpg'),
(2, 4, 1, 'Duck', 400, 10, 47, 'Key Features:\r\n Mini friction toy scooter\r\n Free wheel action\r\n Cute design and attractive colors\r\n Develops motor skills, eye hand coordination', '15402144333633.jpg'),
(3, 4, 1, 'Taddy', 500, 10, 60, 'Key Features:\r\n Mini friction toy scooter\r\n Free wheel action\r\n Cute design and attractive colors\r\n Develops motor skills, eye hand coordination', '15402144552581.jpg'),
(4, 4, 1, 'Teddy with toys', 700, 3, 4, 'Key Features:\r\n Mini friction toy scooter\r\n Free wheel action\r\n Cute design and attractive colors\r\n Develops motor skills, eye hand coordination', '15402144867912.jpg'),
(5, 5, 6, 'Blue Jeans', 3000, 10, 50, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '1540904191167download (1).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE IF NOT EXISTS `signup` (
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(300) NOT NULL,
  `utype` varchar(10) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`name`, `email`, `pass`, `utype`) VALUES
('admin', 'admin@gmail.com', '123', 'admin'),
('aman kaur', 'aman@gmail.com', '123', 'user'),
('aman kaur', 'aman@gmail.com1', '123', 'user'),
('manpreet 123', 'amit@gmail.com', 'd82d18ef56f5ea0559f7df8ad34cb91b', 'user'),
('rahul gupta', 'rahul5@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
('aman aman', 'raman@gmail.com', '123', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `subcatid` int(10) NOT NULL AUTO_INCREMENT,
  `catid` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`subcatid`),
  KEY `catid` (`catid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`subcatid`, `catid`, `name`) VALUES
(1, 4, 'Toys'),
(2, 4, 'Computers'),
(6, 5, 'Jeans'),
(7, 5, 'T-Shirt');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderhistory`
--
ALTER TABLE `orderhistory`
  ADD CONSTRAINT `orderhistory_ibfk_1` FOREIGN KEY (`oid`) REFERENCES `checkout` (`orderid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fsd` FOREIGN KEY (`catid`) REFERENCES `category` (`catid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hg` FOREIGN KEY (`subcatid`) REFERENCES `subcategory` (`subcatid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `category` (`catid`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
