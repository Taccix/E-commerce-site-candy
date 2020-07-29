-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 13, 2019 at 10:28 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: Tashji_ecommerce
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `user_id` int(10) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`user_id`, `user_email`, `user_pass`) VALUES
(1, 'tashjianrichard16@gmail.com', '123'),
(2, 'tashjianr2@montclair.edu', '123');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Godiva'),
(2, 'The Hershey Company'),
(3, 'Cadbury'),
(4, 'Blow Pop'),
(5, 'Bonomo'),
(6, 'Nestle'),
(7, 'Spangler'),
(8, 'The Jelly Belly Candy Company'),
(9, 'Pixy Stix'),
(10, 'Orbit'),
(11, 'Warheads');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Chocolate'),
(2, 'Brownies'),
(3, 'Lollipops'),
(4, 'Jellybeans'),
(5, 'Candy'),
(6, 'Jelly'),
(7, 'Gum');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_name` text NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_pass` varchar(100) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_ip`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`) VALUES
(1, '::1', 'Richard Tashjian', 'tashjianrichard16@gmail.com', '123', 'United States', 'Paramus', '723', '317 East Greystone Rd', 'montclairclub.jpg'),
(3, '69.122.213.160', 'sdfgh', 'something@yahoo.com', 'sdfgh', 'United States', 'Oradell', '234', '201 Baker St', 'BFS5.png'),
(4, '69.122.213.160', 'sdfgh', 'something@yahoo.com', 'sdfgh', 'United States', 'Oradell', '234', '201 Baker St', 'BFS5.png'),
(5, '69.122.213.160', 'sdfgh', 'something@yahoo.com', '123', 'United States', 'Oradell', '234', '201 Baker St', 'BFS5.png');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `order_date` int(11) NOT NULL,
  `status` char(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(225) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 2, 'Dark Non Pareils', 3, '<p>Made in USA. Homemade pure dark chocolate. 30%&nbsp;</p>', 'Nonpareils.jpg', 'pareils'),
(2, 2, 3, 'Brownies', 5, '<p>Made in USA&nbsp;</p>\r\n<p>&nbsp;</p>', 'Brownies .jpg', 'Brownies'),
(3, 1, 2, 'Hershey\'s chocolate', 2, '', 'hersheychocolate.jpg', 'chocolate'),
(6, 1, 2, 'Kisses', 2, '<p>Kisses Made by Hershey\'s', 'kissess.jpg', 'kisses'),
(8, 3, 1, 'Lollipop', 5, '<p>Lollipop made of chocolate.</p>', 'lollipop.jpg', 'lollipop'),
(9, 3, 4, 'Blow Pop ', 1, '<p>Sweet and sour.&nbsp;</p>', 'blow pop.jpg', 'lollipop'),
(10, 1, 3, 'Dark chocolate Kisses', 2, '<p>Made by cadbury</p>', 'dark Kisses.jpg.png', 'chocolate '),
(12, 4, 3, 'Jelly Bean Chocolate', 3, '<p>Jelleybeans and chocolate</p>', 'jellybean chocolate.jpg', 'jelly bean '),
(13, 1, 1, 'Truffles', 20, '<p>Made by Godiva</p>', 'Truffles.jpg', 'Chocolate '),
(14, 5, 5, 'Turkish Taffy', 5, '<p>Made is USA, Candy</p>', 'Taffy.jpg', 'Candy'),
(15, 1, 3, 'Fudge', 2, '<p>Made by Cadbury.</p>', 'fudge.jpg', 'Fudge'),
(16, 1, 3, 'Chocolate Eggs', 8, '<p>Made by Cafbury.&nbsp;</p>\r\n<p>Each box has 5 eggs.&nbsp;</p>', 'Mini Eggs.jpg', 'Eggs'),
(17, 1, 2, 'Chocolate Eggs', 10, '<p>Made by The Hershey Company</p>', 'Eggs.jpg', 'Eggs'),
(18, 1, 6, 'KitKat', 3, '<p>Made by Nestle.</p>', 'KitKat.png', 'Chocolate '),
(19, 1, 6, 'KitKat Dark', 3, '<p>Made by Nestle.&nbsp;</p>\r\n<p>Dark Chocolate.</p>', 'KitKat Dark.jpg', 'chocolate '),
(20, 5, 7, 'Candy Cane', 10, '<p>Made by Spangler</p>', 'Candy Cane.jpg', 'Candy Cane'),
(21, 6, 8, 'Gummy Bear', 3, '<p>Made by Jelly Belly.</p>', 'Gummy Bear.jpg', 'Gummy Bear'),
(22, 5, 9, 'Suger Stix', 5, '<p>Made by Pixy Stix.</p>', 'Suger Stix.jpg', 'suger stix'),
(23, 1, 1, 'Chocolate Almonds', 10, '<p>Made by Godiva.&nbsp;</p>\r\n<p>Product contains nuts.</p>', 'Almonds.jpg', 'Chocolate '),
(24, 1, 3, 'White Chocolate', 2, '<p>Made by Cadbury</p>', 'white Chocolate.jpg', 'chocolate '),
(25, 1, 3, 'Mint Chocolate', 2, '<p>Made by Cadbury</p>', 'chocolate.jpg', 'chocolate '),
(26, 5, 7, 'Rock Candy', 5, '<p>Made by Spangler</p>', 'Rock Candy.jp2', 'Candy'),
(27, 6, 8, 'GumDrops', 5, '<p>Made by Jelly Belly.</p>', 'GumDrops.jpg', 'jelly bean '),
(28, 5, 6, 'Liquorice Twizzler', 3, '<p>Made by Nestle</p>', 'Twizzlers.jpg', 'candy'),
(29, 5, 8, 'Candy Corn', 5, '<p>Made by JellyBelly.</p>', 'candy corn.png', 'candy'),
(30, 1, 1, 'Chocolate Coins', 9, '<p>Made By Godiva</p>', 'coins .jpg', 'chocolate '),
(31, 1, 3, 'Gold Coins', 5, '<p>Made By Cadbury.</p>', 'chocolate coins.jpg', 'Chocolate '),
(32, 3, 7, 'Dum.Dums', 10, '<p>Made by Spangler</p>', 'Dum.Dums.jpg', 'lollipop'),
(33, 7, 10, 'Bubble Gum ', 3, '<p>Made By Orbit.</p>', 'bubble Gum.jpg', 'Gum'),
(34, 5, 11, 'Spray Candy', 5, '<p>Made by Warheads</p>', 'spray_candy.png', 'Candy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`ip_add`,`qty`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`invoice_no`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
