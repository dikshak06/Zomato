-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2024 at 10:49 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zomatodb`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE `aboutus` (
  `aboutid` int(10) NOT NULL,
  `companyname` varchar(1000) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(1000) NOT NULL,
  `inserttime` datetime NOT NULL DEFAULT current_timestamp(),
  `updatetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aboutus`
--

INSERT INTO `aboutus` (`aboutid`, `companyname`, `description`, `image`, `inserttime`, `updatetime`) VALUES
(2, 'Zomato', '<p style=\"text-align: justify; color: rgb(74, 8, 45);font-family: Arial; font-weight: bold;\">Zomato is                     an online Indian food delivery platform that connects customers, restaurant partners, and delivery                     partners serving their multiple needs. Zomato was founded by Deepinder Goyal and Dilip Chaddah in                     July 2008 in Gurugram, Haryana, India. The headquarters of Zomato is in Gurugram, Haryana, India.                     Currently, the CEO of Zomato is Deepinder Goyal and has a net worth of about $ 650 Million.                      According to reports, it is said that Zomato has 29.6 Million active monthly users and with the                     launch of Zomato Pro, the platform has 1.4 Million members with over 25000 plus restaurant partners.                     It provides its delivery services across 63 cities and 24 countries.</p>                 <p style=\"text-align: justify; color: rgb(74, 8, 45);font-family: Arial;font-weight: bold;\">It all                     started in 2008 when the founders saw people standing in a queue at lunchtime to order their food at                     the company they were working at. From there, they got the idea of this startup which was the                     stepping stone of Zomato. To execute their idea, they listed all the menus and restaurants on the                     website of Foodiebay and they got huge traffic on their website so they increased their operations                     in Mumbai, Kolkata, etc.                      Soon, words spread around the company in which they were working and people started using the                     website. They expanded more and thousands of people started using their website to get food from the                     best restaurants. </p>', 'aboutimg/4489742024-01-08-12-28-49.jpg', '2024-01-08 12:28:49', '2024-01-08 12:57:53');

-- --------------------------------------------------------

--
-- Table structure for table `adminuser`
--

CREATE TABLE `adminuser` (
  `adminid` int(6) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `otp` varchar(6) NOT NULL,
  `inserttime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminuser`
--

INSERT INTO `adminuser` (`adminid`, `username`, `password`, `otp`, `inserttime`) VALUES
(1, 'admin', 'admin1206', '985487', '2024-01-01 13:52:19'),
(2, 'diksha', 'diksha123', '517743', '2024-01-04 12:18:48');

-- --------------------------------------------------------

--
-- Table structure for table `bikeride`
--

CREATE TABLE `bikeride` (
  `id` int(10) NOT NULL,
  `fname` varchar(1000) NOT NULL,
  `femail` varchar(1000) NOT NULL,
  `faddress` varchar(1000) NOT NULL,
  `inserttime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `updatetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bookingform`
--

CREATE TABLE `bookingform` (
  `contactid` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `femail` varchar(100) NOT NULL,
  `fmobile` varchar(10) NOT NULL,
  `fmessage` varchar(500) NOT NULL,
  `freview` varchar(1000) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookingform`
--

INSERT INTO `bookingform` (`contactid`, `fname`, `femail`, `fmobile`, `fmessage`, `freview`, `datetime`) VALUES
(2, 'Diksha', 'dikshakulkarni88@gmail.com', '8552945385', '4', 'i want to eat chinese noodles.', '0000-00-00 00:00:00'),
(4, 'raj', 'raj@gmail.com', '9087665432', 'Burger', 'wanna it delecious burger', '2024-01-01 07:11:47'),
(5, 'niraj', 'niraj@gmail.com', '6754328976', 'French-frice', 'hjj', '2024-01-03 11:21:22'),
(6, 'Diksha', 'dikshakulkarni88@gmail.com', '8552945385', '4', 'i want to eat chinese noodles.', '0000-00-00 00:00:00'),
(7, 'raj', 'raj@gmail.com', '9087665432', 'Burger', 'wanna it delecious burger', '2024-01-01 07:11:47'),
(8, 'niraj', 'niraj@gmail.com', '6754328976', 'French-frice', 'hjj', '2024-01-03 11:21:22');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `galleryid` int(10) NOT NULL,
  `category` varchar(1000) NOT NULL,
  `image` varchar(10000) NOT NULL,
  `video` varchar(1000) NOT NULL,
  `inserttime` datetime NOT NULL,
  `updatetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`galleryid`, `category`, `image`, `video`, `inserttime`, `updatetime`) VALUES
(2, 'video', '', 'https://www.youtube.com/embed/VlPiVmYuoqw?si=fuMo3Y6SwN6Xq9dM', '0000-00-00 00:00:00', '2024-01-10 12:42:59'),
(3, 'image', 'galleryimg/6324642024-01-10-12-45-55.webp', '', '0000-00-00 00:00:00', '2024-01-10 12:45:55');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `serviceid` int(10) NOT NULL,
  `feature` varchar(1000) NOT NULL,
  `servicedesc` longtext NOT NULL,
  `simage` varchar(1000) NOT NULL,
  `inserttime` datetime NOT NULL,
  `updatetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`serviceid`, `feature`, `servicedesc`, `simage`, `inserttime`, `updatetime`) VALUES
(1, 'Delivery Services', 'Yes, Zomato offers online food delivery in over 1000 cities across India¹³. You can order food from a variety of cuisines and restaurants, and track your order live on the Zomato app¹. Zomato also provides reviews, ratings, and offers for its users². 🛒', 'serviceimg/5195692024-01-08-13-41-45.jpg', '2024-01-08 13:41:45', '2024-01-08 14:47:47'),
(2, 'Product Availibility', 'Zomato provides information, menus and user-reviews of restaurants as well as food delivery options from partner restaurants in more than 1,000 Indian cities and towns, as of 2022–23 Zomato rivals Swiggy in food delivery and hyperlocal space.', 'serviceimg/46502024-01-08-14-49-22.jpg', '2024-01-08 14:49:22', '2024-01-08 14:49:22'),
(3, 'Delicious Food', 'Zomato Provides delicios food all over india. zomato provides tasty as well as various types of foods such as fast-food, veg, Nonveg. speciallity of zomato is pizza, burger, chiken lolipops, momos as well as various types of mocktails.', 'serviceimg/5302962024-01-08-14-50-08.jpg', '2024-01-08 14:50:08', '2024-01-08 14:50:08'),
(4, 'Business Model', 'The Zomato business model represents innovation and transformation in the food technology industry. The company is an Indian multinational restaurant aggregator and food delivery company. Zomato has revolutionized....read more', 'serviceimg/6945222024-01-08-14-50-50.jpg', '2024-01-08 14:50:50', '2024-01-08 14:50:50');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `shopid` int(10) NOT NULL,
  `foodname` varchar(1000) NOT NULL,
  `price` float(15,2) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `category` varchar(1000) NOT NULL,
  `inserttime` datetime NOT NULL,
  `updatetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`shopid`, `foodname`, `price`, `image`, `category`, `inserttime`, `updatetime`) VALUES
(4, 'paneer Tikka', 99.00, 'shopimg/5814772024-01-09-12-37-17.webp', 'veg', '0000-00-00 00:00:00', '2024-01-09 12:37:45'),
(5, 'Panipuri', 49.00, 'shopimg/9705402024-01-09-12-38-40.jpg', 'veg', '0000-00-00 00:00:00', '2024-01-09 12:38:40'),
(6, 'Barbeque', 59.00, 'shopimg/502122024-01-09-12-39-22.jfif', 'veg', '0000-00-00 00:00:00', '2024-01-09 12:39:22'),
(7, 'Cutlet', 100.00, 'shopimg/1934252024-01-09-12-39-51.jfif', 'veg', '0000-00-00 00:00:00', '2024-01-09 12:39:51'),
(8, 'Salad', 110.00, 'shopimg/131132024-01-09-12-40-51.jfif', 'veg', '0000-00-00 00:00:00', '2024-01-09 12:40:51'),
(9, 'Veg Noodles', 99.00, 'shopimg/292992024-01-09-12-41-43.jpg', 'veg', '0000-00-00 00:00:00', '2024-01-09 12:57:12'),
(10, 'Pizza', 199.00, 'shopimg/6384002024-01-09-12-42-37.webp', 'veg', '0000-00-00 00:00:00', '2024-01-09 12:42:37'),
(11, 'Burger', 149.00, 'shopimg/4869052024-01-09-12-43-05.avif', 'veg', '0000-00-00 00:00:00', '2024-01-09 12:43:05'),
(12, 'Chicken Tandoor', 180.00, 'shopimg/12202024-01-09-12-45-35.jpg', 'Nonveg', '0000-00-00 00:00:00', '2024-01-09 12:45:35'),
(18, 'CHicken Thali', 120.00, 'shopimg/9296802024-01-09-13-00-42.webp', 'Nonveg', '0000-00-00 00:00:00', '2024-01-09 13:00:42'),
(19, 'Chicken Handi', 160.00, 'shopimg/3182902024-01-09-13-02-13.jpg', 'Nonveg', '0000-00-00 00:00:00', '2024-01-09 13:02:13'),
(20, 'Chicken Biryani', 200.00, 'shopimg/9425932024-01-09-13-02-51.avif', 'Nonveg', '0000-00-00 00:00:00', '2024-01-09 13:02:51'),
(21, 'Chicken Pahadi', 240.00, 'shopimg/6674512024-01-09-13-03-22.jfif', 'Nonveg', '0000-00-00 00:00:00', '2024-01-09 13:03:22'),
(22, 'Chicken Soup', 120.00, 'shopimg/5339922024-01-09-13-03-50.jpg', 'Nonveg', '0000-00-00 00:00:00', '2024-01-09 13:03:50'),
(23, 'Chicken Barbeque', 90.00, 'shopimg/5827972024-01-09-13-04-22.jpg', 'Nonveg', '0000-00-00 00:00:00', '2024-01-09 13:04:22'),
(24, 'Chicken Lolipop', 149.00, 'shopimg/1468932024-01-09-13-04-51.jpg', 'Nonveg', '0000-00-00 00:00:00', '2024-01-09 13:04:51'),
(25, 'Viskey', 120.00, 'shopimg/254362024-01-09-13-06-50.jpg', 'Drink', '0000-00-00 00:00:00', '2024-01-09 13:08:08'),
(26, 'Icecream mix juice', 49.00, 'shopimg/6669152024-01-09-13-07-51.jfif', 'Drink', '0000-00-00 00:00:00', '2024-01-09 13:07:51'),
(27, 'Rum', 160.00, 'shopimg/2102462024-01-09-13-09-37.jpg', 'Drink', '0000-00-00 00:00:00', '2024-01-09 13:09:37'),
(28, 'Mocktails', 100.00, 'shopimg/3214432024-01-09-13-11-11.jpg', 'Drink', '0000-00-00 00:00:00', '2024-01-09 13:11:11'),
(29, 'Viskey Mocktails', 110.00, 'shopimg/6633652024-01-09-13-11-47.jpg', 'Drink', '0000-00-00 00:00:00', '2024-01-09 13:11:47'),
(30, 'Fruit Juice', 99.00, 'shopimg/7684422024-01-09-13-12-41.jpg', 'Drink', '0000-00-00 00:00:00', '2024-01-09 13:12:41'),
(31, 'Smockey Vodka', 199.00, 'shopimg/6511602024-01-09-13-13-05.jfif', 'Drink', '0000-00-00 00:00:00', '2024-01-09 13:13:05'),
(32, 'Pomogranet Juice', 70.00, 'shopimg/9756272024-01-09-13-14-10.jpg', 'Drink', '0000-00-00 00:00:00', '2024-01-09 13:14:10');

-- --------------------------------------------------------

--
-- Table structure for table `speciallity`
--

CREATE TABLE `speciallity` (
  `idproduct` int(10) NOT NULL,
  `productname` varchar(256) NOT NULL,
  `salesrate` decimal(15,2) NOT NULL,
  `mrp` decimal(15,2) NOT NULL,
  `productdesc` varchar(1000) NOT NULL,
  `productimage` varchar(1000) NOT NULL,
  `inserttime` datetime NOT NULL DEFAULT current_timestamp(),
  `updatetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `speciallity`
--

INSERT INTO `speciallity` (`idproduct`, `productname`, `salesrate`, `mrp`, `productdesc`, `productimage`, `inserttime`, `updatetime`) VALUES
(3, 'burger', '199.00', '140.00', 'Chissy, crunchy, delicious, tasty burger only rs.149 taste it...', 'specialityimg/7481612024-01-07-12-15-52.avif', '2024-01-06 15:07:55', '2024-01-07 12:15:52'),
(4, 'pizza', '250.00', '199.00', 'Chissy, crunchy, delicious, tasty, double layer pizza only rs.199', 'specialityimg/9824612024-01-07-12-17-23.webp', '2024-01-07 12:17:23', '2024-01-07 12:17:23'),
(5, 'Noodles', '200.00', '170.00', 'yummy, Crispy Chinese noodles only rs 170 only for 2 days', 'specialityimg/6227372024-01-07-12-18-24.jpg', '2024-01-07 12:18:24', '2024-01-07 12:18:24'),
(6, 'Mocktails', '100.00', '70.00', 'Tasty Juicy Mocktails offer start only for 2 days', 'specialityimg/394322024-01-07-12-19-16.jpg', '2024-01-07 12:19:16', '2024-01-07 12:19:16'),
(7, 'Chicken Lolipop', '299.00', '250.00', 'spicy, cruncy, tasty Chicken Lolipop offer start', 'specialityimg/4964472024-01-07-12-21-50.jpg', '2024-01-07 12:21:50', '2024-01-07 12:21:50'),
(8, 'Pancakes', '150.00', '99.00', 'Simple and sweet pancackes available', 'specialityimg/9167162024-01-07-12-22-58.jpg', '2024-01-07 12:22:58', '2024-01-07 12:37:06'),
(9, 'burger', '199.00', '140.00', 'Chissy, crunchy, delicious, tasty burger only rs.149 taste it...', 'specialityimg/7481612024-01-07-12-15-52.avif', '2024-01-06 15:07:55', '2024-01-07 12:15:52'),
(10, 'pizza', '250.00', '199.00', 'Chissy, crunchy, delicious, tasty, double layer pizza only rs.199', 'specialityimg/9824612024-01-07-12-17-23.webp', '2024-01-07 12:17:23', '2024-01-07 12:17:23'),
(11, 'Noodles', '200.00', '170.00', 'yummy, Crispy Chinese noodles only rs 170 only for 2 days', 'specialityimg/6227372024-01-07-12-18-24.jpg', '2024-01-07 12:18:24', '2024-01-07 12:18:24'),
(12, 'Mocktails', '100.00', '70.00', 'Tasty Juicy Mocktails offer start only for 2 days', 'specialityimg/394322024-01-07-12-19-16.jpg', '2024-01-07 12:19:16', '2024-01-07 12:19:16'),
(13, 'Chicken Lolipop', '299.00', '250.00', 'spicy, cruncy, tasty Chicken Lolipop offer start', 'specialityimg/4964472024-01-07-12-21-50.jpg', '2024-01-07 12:21:50', '2024-01-07 12:21:50'),
(14, 'Pancakes', '150.00', '99.00', 'Simple and sweet pancackes available', 'specialityimg/9167162024-01-07-12-22-58.jpg', '2024-01-07 12:22:58', '2024-01-07 12:37:06');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `id` int(10) NOT NULL,
  `studentname` varchar(100) NOT NULL,
  `studentaddress` varchar(100) NOT NULL,
  `studentemail` varchar(100) NOT NULL,
  `studentmobile` varchar(100) NOT NULL,
  `profileimage` varchar(100) NOT NULL,
  `updatetime` datetime NOT NULL,
  `insertdatetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`id`, `studentname`, `studentaddress`, `studentemail`, `studentmobile`, `profileimage`, `updatetime`, `insertdatetime`) VALUES
(3, 'a', 'b', 'abc@gmail.com', '7788554411', 'images/1162382024-01-03-15-07-13.jpeg', '2024-01-03 15:07:13', '2024-01-03 15:07:13'),
(4, 'sads', 'fhgjh', 'fhg@gmail.com', '7788665544', 'images/542302024-01-03-15-11-04.jpeg', '2024-01-03 15:11:04', '2024-01-03 15:11:04');

-- --------------------------------------------------------

--
-- Table structure for table `tblupload`
--

CREATE TABLE `tblupload` (
  `id` int(10) NOT NULL,
  `image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblupload`
--

INSERT INTO `tblupload` (`id`, `image`) VALUES
(1, 'upload/Radha-Krishna-Lord-Image-Love.webp'),
(2, 'upload/Radha-Krishna-Lord-Image-Love.webp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`aboutid`);

--
-- Indexes for table `adminuser`
--
ALTER TABLE `adminuser`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `bikeride`
--
ALTER TABLE `bikeride`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookingform`
--
ALTER TABLE `bookingform`
  ADD PRIMARY KEY (`contactid`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`galleryid`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`serviceid`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`shopid`);

--
-- Indexes for table `speciallity`
--
ALTER TABLE `speciallity`
  ADD PRIMARY KEY (`idproduct`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblupload`
--
ALTER TABLE `tblupload`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutus`
--
ALTER TABLE `aboutus`
  MODIFY `aboutid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bikeride`
--
ALTER TABLE `bikeride`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookingform`
--
ALTER TABLE `bookingform`
  MODIFY `contactid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `galleryid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `serviceid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `shopid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `speciallity`
--
ALTER TABLE `speciallity`
  MODIFY `idproduct` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblupload`
--
ALTER TABLE `tblupload`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
