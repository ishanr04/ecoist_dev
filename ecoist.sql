-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2021 at 05:47 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecoist`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `nic` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tel` int(15) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `nic`, `email`, `tel`, `username`, `password`) VALUES
(1, 'Uditha Adikari', '9523456789V', 'udithaA@gmail.com', 362231556, 'uditha', 'uditha123'),
(2, 'Ishan Ranasinghe', '988381402V', 'ishan@gmail.com', 774177738, 'ishan', ' 123'),
(5, 'Tharuka akshan', '200011001531', 'tharuka@gmail.com', 77451897, 'tharuka', 'tharuka123'),
(12, 'Miuru Hansaja', '913070011V', 'miuruhansaja@gmail.com', 712061735, 'hansaja', 'hansaja123');

-- --------------------------------------------------------

--
-- Table structure for table `admin_discussion_forum`
--

CREATE TABLE `admin_discussion_forum` (
  `admin_id` int(11) NOT NULL,
  `forum_id` int(11) NOT NULL,
  `CreatedOn` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_discussion_forum`
--

INSERT INTO `admin_discussion_forum` (`admin_id`, `forum_id`, `CreatedOn`) VALUES
(20, 18, '2021-09-30 20:27:53.000000');

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `nic` varchar(15) NOT NULL,
  `tel` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `usename` varchar(15) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`id`, `fname`, `lname`, `address`, `nic`, `tel`, `email`, `usename`, `password`) VALUES
(1, 'Namal', 'Pathirana', 'No. 250/B, Maradana road, Borella', '845236981V', 712356987, 'namalpathirana@gmail.com', 'namal', '456123'),
(12, 'Amila', 'Silva', 'No. 85, Janatha Road, Kottawa', '905682412V', 718082402, 'chamodhirangika@gmail.com', 'amila', '123456 '),
(13, 'Chamodhi', 'Rangika', 'No. 84, Sunrise Road, Mattumagala, Ragama', '938381402V', 717165972, 'chamodhirangika@gmail.com', 'chamodhi', 'chamo1'),
(14, 'Nilantha', 'Ranasinghe', 'No. 45/B, Sri Ramawickrama Road, Colombo 05', '828653105V', 718082402, 'nilantha@gmail.com', 'chamodhi', '789456 '),
(15, 'Buddhika', 'Perera', 'No. 458, Nugagaha Road, Kirulapana', '782365891V', 112940909, 'buddhikadahanayaka@gmail.com', 'buddi', '023456 '),
(16, 'Himashi ', 'Ruwanpathirana', 'No. 78/C, Lesli ranagala mawatha, Colombo 08', '905632105V', 778965310, 'himashi@ymail.com', 'himashi', '1234567 '),
(19, 'Miuru', 'gunathilaka', 'No. 138/8, Ukwaththa, Avissawella', '913070011V', 362231556, 'miuruhansaja@yahoo.com', 'miuruH', '12#Miuru ');

-- --------------------------------------------------------

--
-- Table structure for table `buyer_payment`
--

CREATE TABLE `buyer_payment` (
  `buyer_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `amount` varchar(10) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `discussionforum`
--

CREATE TABLE `discussionforum` (
  `ForumId` int(11) NOT NULL,
  `Title` varchar(150) NOT NULL,
  `Description` longtext DEFAULT NULL,
  `UserId` int(11) NOT NULL,
  `UserType` varchar(150) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedOn` datetime(6) NOT NULL,
  `ModifiedOn` datetime(6) NOT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `Status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discussionforum`
--

INSERT INTO `discussionforum` (`ForumId`, `Title`, `Description`, `UserId`, `UserType`, `CreatedBy`, `CreatedOn`, `ModifiedOn`, `ModifiedBy`, `Status`) VALUES
(18, 'Hi...', 'Is your service available ???', 19, 'buyer', 19, '2021-09-30 20:27:53.000000', '0000-00-00 00:00:00.000000', 0, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `discussionforumreply`
--

CREATE TABLE `discussionforumreply` (
  `ReplyId` int(11) NOT NULL,
  `MessageId` int(11) NOT NULL,
  `Description` longtext DEFAULT NULL,
  `UserId` int(11) NOT NULL,
  `UserType` varchar(150) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedOn` datetime(6) NOT NULL,
  `ModifiedOn` datetime(6) NOT NULL,
  `ModifiedBy` int(11) NOT NULL,
  `Status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discussionforumreply`
--

INSERT INTO `discussionforumreply` (`ReplyId`, `MessageId`, `Description`, `UserId`, `UserType`, `CreatedBy`, `CreatedOn`, `ModifiedOn`, `ModifiedBy`, `Status`) VALUES
(13, 18, 'yes we are available', 12, 'admin', 12, '2021-10-03 19:20:48.000000', '2021-10-03 19:21:02.000000', 12, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `driver_id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `nic` varchar(50) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `vehicle_no` varchar(10) NOT NULL,
  `vehicle_type` varchar(256) NOT NULL,
  `drivinglicenseno` varchar(10) NOT NULL,
  `prefferedroute` varchar(256) NOT NULL,
  `email` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driver_id`, `fname`, `lname`, `nic`, `tel`, `vehicle_no`, `vehicle_type`, `drivinglicenseno`, `prefferedroute`, `email`) VALUES
(1, 'Shanthan', 'Silva', '898952369V', '+94703697679', 'KJ-3323', 'Motor Tricycle (500-1000kg)', 'B2656235', 'AB008', 'chamodhirangika@gmail.com'),
(3, 'Janaka', 'Munasinghe', '938381402V', '+94717165972', 'WE-4566', 'Light Motor Lorry (3500-17000kg)', 'C2607108', 'AA026', 'buddhikadahanayaka@gmail.com'),
(8, 'Chamodh', 'Withanage', '905682412V', '+94717165972', '602-4566', 'Motor Lorry (More than 17000kg)', 'D2607108', 'AA022', 'chamodhirangika@gmail.com'),
(9, 'Narmadan', 'Warunajeewa', '895623412V', '+94717165972', '202-6020', 'Motor Lorry (More than 17000kg)', 'C3056235', 'AA016', 'narmadanwarunajeewa@gmail.com '),
(10, 'Nilantha', 'Saroja', '938381402V', '+94766498816', '4566', 'Motor Lorry (More than 17000kg)', '9885', 'AA026', 'chamodhirangika@gmail.com ');

-- --------------------------------------------------------

--
-- Table structure for table `grn`
--

CREATE TABLE `grn` (
  `grn_id` int(11) NOT NULL,
  `amount` varchar(10) NOT NULL,
  `date` varchar(50) NOT NULL,
  `seller_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `amount` varchar(10) NOT NULL,
  `date` varchar(50) NOT NULL,
  `buyer_id` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `amount`, `date`, `buyer_id`) VALUES
(1, '20', '2021-09-03 07:5:22', '12'),
(2, '1590', '2021-09-03 19:03:57', '16'),
(3, '1225', '2021-09-05 15:08:41', '17'),
(4, '800', '2021-09-24 13:08:48', '12'),
(5, '105', '2021-09-01 11:43:44', '12'),
(6, '105', '2021-09-01 11:44:57', '12'),
(7, '200', '2021-09-13 16:53:59', '12'),
(8, '200', '2021-09-13 16:55:44', '12'),
(9, '200', '2021-09-13 17:02:25', '12'),
(10, '200', '2021-09-13 17:03:33', '12'),
(11, '195', '2021-09-14 11:19:43', '18'),
(12, '265', '2021-09-14 17:53:31', '15');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_item`
--

CREATE TABLE `invoice_item` (
  `invoice_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `sup_price` varchar(10) NOT NULL,
  `total` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_item`
--

INSERT INTO `invoice_item` (`invoice_id`, `item_id`, `item_name`, `quantity`, `sup_price`, `total`) VALUES
(1, 1, 'Mixed Paper', '1', '20.00', '20'),
(2, 4, 'Plastic Containers', '25', '25.00', '625'),
(2, 5, 'Scrap Metal', '15', '55.00', '825'),
(2, 6, 'Coconut Shell', '14', '10.00', '140'),
(3, 6, 'Coconut Shell', '25', '10.00', '250'),
(3, 2, 'Corrugated Paper', '65', '15.00', '975'),
(4, 1, 'Mixed Paper', '40', '20.00', '800'),
(5, 1, 'Mixed Paper', '5', '20.00', '100'),
(5, 3, 'Clear Glass', '1', '5.00', '5'),
(6, 1, 'Mixed Paper', '5', '20.00', '100'),
(6, 3, 'Clear Glass', '1', '5.00', '5'),
(7, 1, 'Mixed Paper', '10', '20.00', '200'),
(8, 1, 'Mixed Paper', '10', '20.00', '200'),
(9, 1, 'Mixed Paper', '10', '20.00', '200'),
(10, 1, 'Mixed Paper', '10', '20.00', '200'),
(11, 2, 'Corrugated Paper', '13', '15.00', '195'),
(12, 3, 'Clear Glass', '13', '5.00', '65'),
(12, 1, 'Mixed Paper', '10', '20.00', '200');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `quantity` varchar(15) NOT NULL,
  `selling_price` varchar(15) NOT NULL,
  `buying_price` varchar(15) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_name`, `quantity`, `selling_price`, `buying_price`, `admin_id`) VALUES
(1, 'Mixed Paper', '10', '25', '50', 0),
(2, 'Corrugated Paper', '50', '', '', 0),
(3, 'Clear Glass', '50', '', '', 0),
(4, 'Plastic Containers', '60', '', '', 0),
(5, 'Scrap Metal', '40', '', '', 0),
(6, 'Coconut Shell', '200', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `itemrequestdrivermap`
--

CREATE TABLE `itemrequestdrivermap` (
  `DriverId` int(10) DEFAULT NULL,
  `ItemRequestId` int(10) DEFAULT NULL,
  `CreatedOn` datetime(6) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `itemrequestdrivermap`
--

INSERT INTO `itemrequestdrivermap` (`DriverId`, `ItemRequestId`, `CreatedOn`, `Status`) VALUES
(1, 24, '2020-06-14 17:46:54.000000', 1),
(1, 4, '2021-10-02 20:49:52.000000', 1),
(1, 3, '2021-10-02 20:54:47.000000', 1),
(1, 8, '2021-10-03 18:17:07.000000', 1),
(1, 9, '2021-10-04 05:10:45.000000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `item_request`
--

CREATE TABLE `item_request` (
  `request_id` int(11) NOT NULL,
  `item_name` int(10) DEFAULT NULL,
  `Quantity` int(10) DEFAULT NULL,
  `collection_day` timestamp(6) NULL DEFAULT NULL,
  `location` varchar(100) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `PlaceId` varchar(256) DEFAULT NULL,
  `Latitude` varchar(256) DEFAULT NULL,
  `Longitude` varchar(256) DEFAULT NULL,
  `CreatedOn` datetime(6) DEFAULT NULL,
  `ModifiedBy` int(10) DEFAULT NULL,
  `ModifiedOn` datetime(6) DEFAULT NULL,
  `Status` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_request`
--

INSERT INTO `item_request` (`request_id`, `item_name`, `Quantity`, `collection_day`, `location`, `seller_id`, `PlaceId`, `Latitude`, `Longitude`, `CreatedOn`, `ModifiedBy`, `ModifiedOn`, `Status`) VALUES
(3, 4, 100, '2021-09-27 18:30:00.000000', ' 51 D S Senanayake Mw Colombo 08,Sri Lanka', 18, 'EiI4NCBCYWR1bGxhIFJkLCBIYWxpLWVsYSwgU3JpIExhbmthIjASLgoUChIJregtBahj5DoRrOVS4SNAYj8QVCoUChIJBzmMGAxl5DoR0-LjIIQGrls', '6.953908699999999', '81.031855', '2020-05-05 08:45:21.000000', 13, '2021-10-02 20:54:48.000000', 4),
(4, 5, 10, '2021-09-28 18:30:00.000000', '223 Old Moor Street, 12, Colombo, Sri Lanka', 17, 'ChIJhTokHAFw5DoRZ5hObIp7T9k', '6.825877999999999', '80.9981576', '2020-05-05 08:58:45.000000', 13, '2021-10-02 20:49:52.000000', 4),
(5, 1, 50, '2021-09-29 18:30:00.000000', '279, K. Cyril C. Perera Mw, Colombo 13, Colombo, Sri Lanka', 20, 'EiJTb3JhbmF0aG90YSBSZCwgQmFkdWxsYSwgU3JpIExhbmthIi4qLAoUChIJx-XwJsaJ5DoRnEN0bX44vJUSFAoSCdnapn8WYuQ6EUaiKsNy0NOE', '7.0294368', '81.0383555', '2020-05-05 16:29:49.000000', 13, '2020-05-05 20:00:39.000000', 2),
(6, 6, 450, '2021-09-29 18:30:00.000000', '333E, Wakwella Road, maradana, Sri Lanka', 19, '', '', '', '2020-05-05 20:54:52.000000', 13, '2020-05-05 20:56:33.000000', 2),
(7, 3, 11, '2021-09-29 18:30:00.000000', '223 DIGGALA ROAD KEDELWATHTHA, Sri Lanka', 19, 'EiRCYWR1bGxhIFJkLCBNYWhpeWFuZ2FuYXlhLCBTcmkgTGFua2EiLiosChQKEglL-eaB-ZfkOhF4et-e2_5ilxIUChIJ8cylzfuX5DoRKWflRubTtHo', '7.339310299999998', '80.9915619', '2020-05-06 16:48:34.000000', 13, '2020-06-01 15:15:29.000000', 2),
(8, 4, 10, '2021-09-29 18:30:00.000000', 'No 507/A, \r\nAvissawella Road,\r\nKaduwela,\r\nSri Lanka, Sri Lanka', 18, 'ChIJ2dqmfxZi5DoRRqIqw3LQ04Q', '6.993400899999999', '81.0549815', '2020-05-06 20:35:30.000000', 13, '2021-10-03 18:17:07.000000', 4),
(9, 2, 20, '2021-09-29 18:30:00.000000', 'NO.244, 1/1 B, GALLE ROAD, 06, Colombo, Sri Lanka', 18, 'EiRCYWR1bGxhIFJkLCBNYWhpeWFuZ2FuYXlhLCBTcmkgTGFua2EiLiosChQKEglL-eaB-ZfkOhF4et-e2_5ilxIUChIJ8cylzfuX5DoRKWflRubTtHo', '7.339310299999998', '80.9915619', '2020-05-24 13:05:29.000000', 13, '2021-10-04 05:10:45.000000', 4),
(10, 6, 54, '2021-10-01 18:30:00.000000', 'Phoenix Industries Ltd.,\r\n3rd Floor,\r\n409 Galle Road,\r\nColombo 03,\r\nSri Lanka., Sri Lanka', 18, 'ChIJFeQhgk6K4zoRYKMsdJVym8s', '6.718399', '80.7740912', '2020-06-01 12:46:47.000000', 13, '2020-06-01 15:05:51.000000', 2),
(11, 1, 125, '2021-10-01 18:30:00.000000', '419\r\nR.A. De Mel Mawatha\r\nColombo 03\r\n, Sri Lanka', 20, 'EiJTb3JhbmF0aG90YSBSZCwgQmFkdWxsYSwgU3JpIExhbmthIi4qLAoUChIJx-XwJsaJ5DoRnEN0bX44vJUSFAoSCdnapn8WYuQ6EUaiKsNy0NOE', '7.0294368', '81.0383555', '2020-06-13 07:47:13.000000', 13, '2020-06-13 12:18:18.000000', 2),
(14, 4, 85, '2021-10-02 18:30:00.000000', '37\r\nManning Pl\r\nWellawatta\r\nColombo-06  , Sri Lanka', 20, 'ChIJayPEPZN55DoRHjjCPkpGbxI', '6.8568541', '80.88343669999999', '2020-06-13 12:26:31.000000', 13, '2020-06-13 12:30:41.000000', 2),
(24, 5, 120, '2021-10-01 18:30:00.000000', 'No 103/01,\r\nAvissawella Road,\r\nKotikawatta,\r\nMulleriyawa New Town, Sri Lanka', 21, '', '', '', '2020-06-14 15:57:37.000000', 13, '2020-06-14 17:47:11.000000', 2),
(25, 2, 450, '2021-10-02 18:30:00.000000', 'No23/Borella Road, Sri Lanka', 21, 'ChIJb4z9uqlj5DoR0Tq3ZVCs0Vs', '6.956584599999998', '81.03406009999999', '2020-06-14 17:49:08.000000', NULL, NULL, 1),
(26, 5, 54, '2021-10-04 18:30:00.000000', '4D,\r\nDickman\'s Path,\r\nColombo 4,\r\nSri Lanka, Sri Lanka', 18, 'ChIJF8vZ7Nly5DoRRtKyEGpoB4A', '6.760283499999999', '80.8809283', '2020-06-14 17:49:41.000000', 18, '2020-06-14 17:49:49.000000', 1),
(27, 6, 54, '2021-10-04 18:30:00.000000', 'No: 63,\r\nD.S.Senanayake Mawatha,\r\nBorella.\r\nSri Lanka., Sri Lanka', 18, 'ChIJFeQhgk6K4zoRYKMsdJVym8s', '6.718399', '80.7740912', '2020-06-01 12:46:47.000000', 13, '2020-06-01 15:05:51.000000', 2);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(11) NOT NULL,
  `user_type` varchar(50) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `user_type`, `username`, `password`, `email`) VALUES
(15, 'buyer', 'buddi', '023456 ', 'buddikadahanayaka@gmail.com'),
(13, 'buyer', 'chamodhi', 'chamo123', 'chamodhirangika@gmail.com'),
(18, 'buyer', 'dila', 'dilantha', 'dilantha@gmail.com '),
(12, 'admin', 'hansaja', 'hansaja123', 'miuruhansaja@gmail.com'),
(16, 'buyer', 'himashi', '1234567', 'himashi@ymail.com'),
(22, 'admin', 'ishan', '123', 'ishan@gdmail.com '),
(19, 'seller', 'janaka', 'acdef5 ', 'janakamo@gmail.com'),
(19, 'buyer', 'miuruH', '12#Miuru', 'miuruhansaja@yahoo.com '),
(21, 'seller', 'nimashi', 'nima', 'pradeepaalgampitige@gmail.com '),
(20, 'seller', 'ranjan85', 'ranjan', 'ranjanmuthu1985@gmail.com '),
(17, 'seller', 'shanaz123', 'shanaz', 'shanaz12@gmail.com'),
(18, 'seller', 'sunil', '456789 ', 'sunilnilantharaj@gmail.com'),
(17, 'admin', 'tharuka', 'tharuka123', 'tharuka@hotmail.com'),
(6, 'admin', 'uditha', 'uditha123', 'udithaA@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(255) NOT NULL,
  `prod_price` decimal(6,0) NOT NULL,
  `prod_img` varchar(255) NOT NULL,
  `prod_Selling_Price` decimal(10,0) DEFAULT NULL,
  `Description` varchar(512) DEFAULT NULL,
  `Quantity` int(10) DEFAULT NULL,
  `CreatedOn` datetime(6) DEFAULT NULL,
  `CreatedBy` int(10) DEFAULT NULL,
  `ModifiedOn` datetime(6) DEFAULT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prod_id`, `prod_name`, `prod_price`, `prod_img`, `prod_Selling_Price`, `Description`, `Quantity`, `CreatedOn`, `CreatedBy`, `ModifiedOn`, `ModifiedBy`, `Status`) VALUES
(1, 'Mixed Paper', '20', 'paper.jpg', '15', 'Mixed is different types of paper mixed together.', 74, '2021-09-14 19:40:10.000000', 13, '2021-09-15 17:53:32.000000', 15, 2),
(2, 'Corrugated Paper', '15', 'cardboard.jpg', '10', 'Corrugated fiberboard is a material.', 7, '2021-09-14 19:40:10.000000', 13, '2021-09-15 11:19:43.000000', 18, 2),
(3, 'Clear Glass', '5', 'glass.jpg', '2', 'Clear glass products can be recycled.', 206, '2021-09-17 04:30:18.000000', 13, '2021-09-17 17:53:32.000000', 15, 2),
(4, 'Plastic Containers', '25', 'plastic.jpg', '20', 'Used plastics are versatile and adaptable.', 270, '2021-09-18 19:40:10.000000', 13, '2021-09-19 12:30:41.000000', 13, 2),
(5, 'Scrap Metal', '55', 'metal.jpg', '40', 'Scrap metals are alloys. Good to reuse.', 130, '2021-09-22 19:40:10.000000', 13, '2021-09-23 17:47:12.000000', 13, 2),
(6, 'Coconut Shell', '10', 'coconutshell.jpeg', '5', 'Coconut husk and shells are an attractive biomass fuel.', 465, '2021-09-25 19:40:10.000000', 13, '2021-09-26 15:05:52.000000', 13, 2);

-- --------------------------------------------------------

--
-- Table structure for table `resetpassword`
--

CREATE TABLE `resetpassword` (
  `Id` int(10) NOT NULL,
  `Code` varchar(256) DEFAULT NULL,
  `Email` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resetpassword`
--

INSERT INTO `resetpassword` (`Id`, `Code`, `Email`) VALUES
(1, '15e933c1f35175', 'buddhikadahanayaka@gmail.com'),
(2, '15e933e6c2d468', 'buddhikadahanayaka@gmail.com'),
(3, '15e934aba97d7c', 'ad@gmail.com'),
(4, '15e934af6c2f39', 'buddhikadahanayaka@gmail.com'),
(5, '15eada02b6b269', 'chamodhirangika@gmail.com'),
(6, '15eaef148300b2', 'harry@den.com'),
(7, '15eca57fe22774', 'chamodhirangika@gmail.com'),
(8, '15eca580a944a5', 'chamodhirangika@gmail.com'),
(9, '15ed4d3a7d391d', 'chamodhirangika@gmail.com'),
(10, '15ee4df06570a2', 'chamodhirangika@gmail.com'),
(11, '15ee4e25cbbcde', 'buddhikadahanayaka@gmail.com'),
(12, '15ee4e2d9c8bad', 'buddhikadahanayaka@gmail.com'),
(13, '15ee4e2edddae3', 'buddhikadahanayaka@gmail.com'),
(14, '15ee508eb2d06e', 'chamodhirangika@gmail.com'),
(15, '15ee5091456eda', 'chamodhirangika@gmail.com'),
(16, '15ee5e5e4d6e5e', 'pradeepaalgampitige@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `nic` varchar(15) NOT NULL,
  `tel` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`id`, `fname`, `lname`, `address`, `nic`, `tel`, `email`, `username`, `password`) VALUES
(16, 'Chamodhi', 'Rangika', '51 D S Senanayake Mw Colombo 08', '965652142V', 718082402, 'chamodhirangika@gmail.com', 'chamodhi', '123456 '),
(17, 'Shanaz', 'Mohammed', 'No. 256, National Housing Scheme, Wattala', '605236924V', 766082702, 'shanaz12@gmail.com', 'shanaz123', 'shanaz'),
(18, 'Sunil ', 'Nilantharaj', '223 Old Moor Street, 12, Colombo', '78856213V', 756362428, 'sunilnilantharaj@gmail.com', 'sunil', '456789'),
(19, 'Janaka ', 'Mohan', '279, K. Cyril C. Perera Mw, Colombo 13, Colombo', '914586486V', 718082402, 'janakamo@gmail.com', 'janaka', 'acdef5 '),
(20, 'Muthuhewa', 'Ranjan', 'NO.244, 1/1 B, GALLE ROAD, 06, Colombo', '8545621582V', 115986254, 'ranjanmuthu1985@gmail.com', 'ranjan85', 'ranjan '),
(21, 'Nimashi', 'Devasurendra', '36, D. R. WIJEWARDENA MAWATHACOLOMBO 10, Horana', '896352142V', 717165972, 'pradeepaalgampitige@gmail.com', 'nimashi', 'nima'),
(22, 'Ishan', '', '223 DIGGALA ROAD KEDELWATHTHA, Moratuwa', '123456789123', 712064548, 'miuru999@gdmail.com', 'ishan', '12#Ishan ');

-- --------------------------------------------------------

--
-- Table structure for table `wish_list`
--

CREATE TABLE `wish_list` (
  `wishlist_id` int(11) NOT NULL,
  `wlitem_name` varchar(50) NOT NULL,
  `quantity` varchar(15) NOT NULL,
  `date` varchar(200) NOT NULL,
  `buyer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wish_list`
--

INSERT INTO `wish_list` (`wishlist_id`, `wlitem_name`, `quantity`, `date`, `buyer_id`) VALUES
(9, 'Scrap Metal', '11', '2021-09-21', 12),
(10, 'Clear Glass', '10', '2021-09-23', 15),
(11, 'Plastic Containers', '10000', '2021-09-01', 13),
(17, 'Corrugated Paper', '10000', '2021-09-20', 1),
(31, 'Clear Glass', '5', '2021-10-01', 16),
(32, 'Plastic Containers', '5', '2021-10-03', 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `admin_discussion_forum`
--
ALTER TABLE `admin_discussion_forum`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buyer_payment`
--
ALTER TABLE `buyer_payment`
  ADD KEY `fk_buyer_payment` (`buyer_id`);

--
-- Indexes for table `discussionforum`
--
ALTER TABLE `discussionforum`
  ADD PRIMARY KEY (`ForumId`),
  ADD KEY `fk_discussion-forum` (`UserId`);

--
-- Indexes for table `discussionforumreply`
--
ALTER TABLE `discussionforumreply`
  ADD PRIMARY KEY (`ReplyId`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driver_id`);

--
-- Indexes for table `grn`
--
ALTER TABLE `grn`
  ADD PRIMARY KEY (`grn_id`),
  ADD KEY `fk_grn` (`seller_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `fk_item` (`admin_id`);

--
-- Indexes for table `item_request`
--
ALTER TABLE `item_request`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `fk_item-request` (`seller_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `resetpassword`
--
ALTER TABLE `resetpassword`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wish_list`
--
ALTER TABLE `wish_list`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `fk_wishlist` (`buyer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `admin_discussion_forum`
--
ALTER TABLE `admin_discussion_forum`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `discussionforum`
--
ALTER TABLE `discussionforum`
  MODIFY `ForumId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `discussionforumreply`
--
ALTER TABLE `discussionforumreply`
  MODIFY `ReplyId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `driver_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `grn`
--
ALTER TABLE `grn`
  MODIFY `grn_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `item_request`
--
ALTER TABLE `item_request`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `resetpassword`
--
ALTER TABLE `resetpassword`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wish_list`
--
ALTER TABLE `wish_list`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buyer_payment`
--
ALTER TABLE `buyer_payment`
  ADD CONSTRAINT `fk_buyer_payment` FOREIGN KEY (`buyer_id`) REFERENCES `buyer` (`id`);

--
-- Constraints for table `grn`
--
ALTER TABLE `grn`
  ADD CONSTRAINT `fk_grn` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`id`);

--
-- Constraints for table `item_request`
--
ALTER TABLE `item_request`
  ADD CONSTRAINT `fk_item-request` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`id`);

--
-- Constraints for table `wish_list`
--
ALTER TABLE `wish_list`
  ADD CONSTRAINT `fk_wishlist` FOREIGN KEY (`buyer_id`) REFERENCES `buyer` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
