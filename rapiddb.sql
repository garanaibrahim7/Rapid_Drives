-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2024 at 08:05 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rapiddb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `full_name` varchar(50) NOT NULL DEFAULT 'admin',
  `phone` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `full_name`, `phone`, `password`) VALUES
(1, 'iggarana7@gmail.com', 'Ibrahim Garana', '9724115337', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `book_id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `lcno` varchar(20) NOT NULL,
  `place` varchar(50) NOT NULL,
  `car_name` varchar(50) NOT NULL,
  `rent` int(10) NOT NULL,
  `date` date NOT NULL,
  `days` int(10) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Proccessing'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `fuel` varchar(10) NOT NULL,
  `capacity` int(5) NOT NULL,
  `rent` int(10) NOT NULL,
  `available` varchar(10) NOT NULL DEFAULT 'YES',
  `image` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `name`, `fuel`, `capacity`, `rent`, `available`, `image`) VALUES
(2, 'Mahindra Thar 4x4', 'Diesel', 5, 5000, 'YES', 'cars/thar.jpg'),
(3, 'BMW X7', 'Petrol', 6, 15000, 'YES', 'cars/bmw-x7.jpg'),
(4, 'Mahindra XUV 700', 'Petrol', 7, 5000, 'YES', 'cars/xuv-700.jpg'),
(5, 'Toyota Fortuner', 'Diesel', 7, 8000, 'YES', 'cars/Fortuner_TRD.jpg'),
(6, 'Ford Endeavour', 'Diesel', 7, 12000, 'YES', 'cars/endeavour_sport.jpg'),
(7, 'Toyota Innova', 'Petrol', 7, 6000, 'YES', 'cars/innova-crysta.jpg'),
(8, 'Suzuki Swift', 'Petrol', 5, 3000, 'YES', 'cars/swift.jpg'),
(9, 'Range Rover Velar', 'Petrol', 5, 14000, 'YES', 'cars/range-rover-velar.jpg'),
(10, 'Ford Mustang', 'Petrol', 4, 18000, 'YES', 'cars/mustang.jpg'),
(11, 'Suzuki Eeco', 'CNG', 9, 2500, 'YES', 'cars/eeco.jpg'),
(1, 'Tata Harrier', 'Diesel', 5, 7000, 'YES', 'cars/harrier.jpg'),
(12, 'Mahindra Scorpio N', 'Petrol', 7, 8000, 'YES', 'cars/scorpio.jpg'),
(13, 'Suzuki Alto', 'Petrol', 5, 2000, 'YES', 'cars/alto.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `resp` varchar(10) NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`name`, `email`, `resp`, `comment`) VALUES
('Ibrahim Garana', 'iggarana7@gmail.com', 'Good', 'This is Best Website for Rent a Car,\r\ni am Fully Satisfied with this.'),
('Sagir Halepotra', 'sagirhalepotra05@gmail.com', 'Average', 'This is Best Website for Rent a Car,\r\nbut Rent is Little High.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fnm` varchar(50) NOT NULL,
  `lnm` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `ph` varchar(10) NOT NULL,
  `lcno` varchar(20) NOT NULL,
  `gen` varchar(6) NOT NULL,
  `pw` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fnm`, `lnm`, `email`, `ph`, `lcno`, `gen`, `pw`) VALUES
(1, 'Ibrahim', 'Garana', 'iggarana7@gmail.com', '9724115337', 'GJ11 20240000876', 'male', 'Ibrahim@7604'),
(3, 'Naeem', 'Bakali', 'naeem123@gmail.com', '9867584682', 'GJ03 2023767487', 'male', 'Naeem@123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
