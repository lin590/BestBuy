-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 07, 2020 at 06:32 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `best_buy`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `all_orders`
-- (See below for the actual view)
--
CREATE TABLE `all_orders` (
`orderID` int(11)
,`fulfillment` varchar(50)
,`Date_` varchar(50)
,`bastreet` varchar(50)
,`baunit_number` int(11)
,`bacity` varchar(50)
,`bastate` varchar(50)
,`bazip` varchar(5)
,`sastreet` varchar(50)
,`saunit_number` int(11)
,`sacity` varchar(50)
,`sastate` varchar(50)
,`sazip` int(5)
,`customerID` int(11)
,`Name` varchar(50)
,`Street` varchar(50)
,`Unit_Number` int(11)
,`City` varchar(50)
,`Zip` varchar(5)
,`State` varchar(50)
,`Email` varchar(50)
,`Customer_Type` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Street` varchar(50) DEFAULT NULL,
  `Unit_Number` int(11) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Zip` varchar(5) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Customer_Type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `Name`, `Street`, `Unit_Number`, `City`, `Zip`, `State`, `Email`, `Customer_Type`) VALUES
(1, 'Alyssa Rowe', '562 West Ivy St.', 4, 'Jonesboro', '30236', 'Georgia', 'a.rowe@hotmail.com', 'Guest'),
(2, 'Emmett Hart', '7318 East Washington Street', 745, 'Royersford', '19468', 'Pennsylvania', 'ehart@gmail.com', 'Guest'),
(3, 'Jeanette Harper', '9002 Roosevelt Street', 1, 'Malvern', '19355', 'Pennsylvania', 'jean.h@outlook.com', 'Guest'),
(4, 'Natasha Edwards', '8925 Old Iroquois Ave.', 16, 'Boca Raton', '33428', 'Florida', 'n_Edwards@hotmail.com', 'Guest'),
(5, 'Casey Martinez', '55 Shore Ave.', 601, 'Laurel', '20707', 'Maryland', 'c.martinez@yahoo.com', 'Rewards Member'),
(6, 'Louise Morton', '7024 Miles Ave.', 555, 'Gulfport', '39503', 'Mississippi', 'lmorton@yahoo.com', 'Rewards Member'),
(7, 'Frankie Neal', '716 Myrtle Street', 74, 'Lake Jackson', '77566', 'Texas', 'frankie_n@aol.com', 'Guest'),
(8, 'Mike Andrews', '2 Bedford Dr.', 123, 'Norwood', '2062', 'Maryland', 'M_Andrews@aol.com', 'Rewards Member'),
(9, 'Jean Maldonado', '32 Meadow Lame', 33, 'Carpentersville', '60110', 'Illinois', 'jean.m34@hotmail.com', 'Rewards Member'),
(10, 'Jeanne Figueroa', '513 Westport Avenue', 465, 'Mason City', '50401', 'Iowa', 'jf777@outlook.com', 'Rewards Member'),
(11, 'Randall Morales', '785 Shipley Ave.', 22, 'Tualatin', '97062', 'Oregon', 'randall.mor01@gmail.com', 'Guest'),
(12, 'Pauline Nichols', '7257 Pennington Lane', 812, 'Hopkins', '55343', 'Minnesota', 'Nichols.p@gmail.com', 'Guest'),
(13, 'Kim James', '26 Selby Circle', 26, 'North Olmsted', '44070', 'Ohio', 'kjames@gmail.com', 'Rewards Member'),
(14, 'Omar Alvarez', '890 Schoolhouse Ave.', 5, 'Barberton', '44203', 'Ohio', 'omar.alvarez@aol.com', 'Guest'),
(15, 'Cory Wong', '724 Brickyard Street', 632, 'Hoboken', '7030', 'New Jersey', 'c_wong@aol.com', 'Guest'),
(16, 'Vincent Malone', '463 Greenrose Street', 98, 'Chesterfield', '23832', 'Virginia', 'vincent_malone@outlook.com', 'Guest'),
(17, 'Harold Cole', '7365 W. Alderwood Drive', 365, 'Staunton', '24401', 'Virginia', 'h.cole42@outlook.com', 'Guest'),
(18, 'Lloyd Collins', '7974 S. Rockcrest Drive', 974, 'Sanducky', '44870', 'Ohio', 'llcollins@mac.com', 'Rewards Member'),
(19, 'Alvin Garner', '8284 Logan St.', 222, 'Cumberland', '2864', 'Rhode Island', 'alvin.g@comcast.net', 'Guest'),
(20, 'Jeanne Figueroa', '561 Woodland Street', 16, 'Bowie', '20715', 'Maryland', 'j.fig635@verizon.net', 'Guest'),
(21, 'Randall Morales', '9068 Wild Horse St.', 68, 'Oxnard', '93035', 'California', 'randall_m@mac.com', 'Rewards Member'),
(22, 'Pauline Nichols', '8897 East Bayport Avenue', 512, 'Canandaigua', '14424', 'New York', 'pnichols@gmail.com', 'Rewards Member'),
(23, 'Kim James', '7201 Devon Ave.', 102, 'Oak Forest', '60452', 'Illinois', 'kim.james@outlook.com', 'Guest'),
(24, 'Omar Alvarez', '685 Grand Street', 9, 'Douglasville', '30134', 'Georgia', 'omar_alvarez@verizon.net', 'Guest'),
(25, 'Cory Wong', '65 Ramblewood St.', 232, 'Rego Park', '11374', 'New York', 'c.wong@comcast.net', 'Guest'),
(26, 'Vincent Malone', '8301 Franklin Street', 103, 'San Antonio', '78213', 'Texas', 'vincent-malone@mac.com', 'Guest'),
(27, 'Harold Cole', '28 Country Street', 288, 'Lorton', '22079', 'Virginia', 'h.cole@gmail.com', 'Guest'),
(28, 'Lloyd Collins', '759 Logan St.', 59, 'Beaver Falls', '15010', 'Pennsylvania', 'llcollins19@yahoo.com', 'Rewards Member'),
(29, 'Alvin Garner', '52 E. Lancaster Street', 418, 'Reidsville', '27320', 'North Carolina', 'alvin_garner003@yahoo.com', 'Rewards Member'),
(30, 'Jeanne Figueroa', '39 Holly Street', 841, 'North Augusta', '29481', 'South Carolina', 'j.figueroa@hotmail.com', 'Guest'),
(31, 'Randall Morales', '40 Brewery St.', 366, 'Hillsboro', '97124', 'Oregon', 'r_morales@hotmail.com', 'Rewards Member'),
(32, 'Pauline Nichols', '792 Newcastle Lane', 55, 'Millville', '8332', 'New Jersey', 'pauline.nichols@yahoo.com', 'Guest'),
(33, 'Kim James', '90 Morris Court', 500, 'Belmont', '2478', 'Massachusetts', 'KJames411@outlook.com', 'Guest'),
(34, 'Omar Alvarez', '618 N. Joy Ridge Street', 411, 'Forest Hills', '11375', 'New York', 'o.alvarez@gmail.com', 'Rewards Member'),
(35, 'Cory Wong', '8143 Elm Rd.', 314, 'Hickory', '28601', 'North Carolina', 'cory.wong@gmail.com', 'Guest'),
(36, 'Vincent Malone', '73 Devon St.', 510, 'Saint Paul', '55104', 'Minnesota', 'vince.malone@gmail.com', 'Guest'),
(37, 'Harold Cole', '819 Heritage Lane', 918, 'Troy', '12180', 'New York', 'harold_c551@hotmail.com', 'Rewards Member'),
(38, 'Lloyd Collins', '7806 South Constitution Dr.', 806, 'Cockeysville', '21030', 'Maryland', 'llyod.collins@mac.com', 'Rewards Member'),
(39, 'Alvin Garner', '71 Pulaski Rd.', 67, 'Reading', '1867', 'Maryland', 'alvin-garner@mac.com', 'Guest'),
(40, 'Devin Mack', '8 Water Lane', 8, 'Reynoldsburg', '43068', 'Ohio', 'd.mack@verizon.net', 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `customer_phone_number`
--

CREATE TABLE `customer_phone_number` (
  `customerID` int(11) NOT NULL,
  `phone_number` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_phone_number`
--

INSERT INTO `customer_phone_number` (`customerID`, `phone_number`) VALUES
(1, '9036098961'),
(2, '52064246030'),
(3, '3157716283'),
(4, '8285338173'),
(5, '7135407505'),
(6, '8147063906'),
(7, '3203745238'),
(8, '8597451141'),
(9, '3476549011'),
(10, '9096290882'),
(11, '8174935558'),
(12, '2816620499'),
(13, '3213548663'),
(14, '6055632328'),
(15, '5868053965'),
(16, '7044670788'),
(17, '4434752786'),
(18, '9168962249'),
(19, '4122582031'),
(20, '4846818306'),
(21, '2678508081'),
(22, '2488161326'),
(23, '7654815997'),
(24, '6305217056'),
(25, '9286274203'),
(26, '8012182116'),
(27, '7196942955'),
(28, '9187234590'),
(29, '6174373033'),
(30, '8154301036'),
(31, '2568449455'),
(32, '5075825184'),
(33, '3138977899'),
(34, '2162895009'),
(35, '5868064997'),
(36, '6108732205'),
(37, '928272545'),
(38, '8012187258'),
(39, '7196945745'),
(40, '9187234402');

-- --------------------------------------------------------

--
-- Table structure for table `district_manager`
--

CREATE TABLE `district_manager` (
  `managerID` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `storeID` int(11) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `salaryID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `district_manager`
--

INSERT INTO `district_manager` (`managerID`, `name`, `storeID`, `location`, `salaryID`) VALUES
(402, 'Christopher Dawson', 2225, 'Florida', 40356),
(405, 'Jessi Burke', 2397, 'Oregon', 43139),
(411, 'Lynda Turner', 2010, 'Minnesota', 60446),
(422, 'Jill Bowers', 2700, 'Texas', 61421),
(435, 'Anna Edwards', 2131, 'Illinois', 63601),
(444, 'Kent Fleming', 2144, 'Mississippi', 43537),
(446, 'Kathryn Anderson', 2509, 'New York', 62072),
(456, 'Rodolfo Carpenter', 2999, 'Maryland', 41420),
(465, 'Wade Franklin', 2859, 'California', 55044),
(475, 'Lynette Henderson', 2089, 'Ohio', 54911),
(480, 'Sammy Morris', 2466, 'Virginia', 45044),
(481, 'Blake Reynolds', 2580, 'Iowa', 52186),
(487, 'Dewey Williams', 2371, 'Pennsylvania', 43010),
(489, 'Billy Carson', 2976, 'Georgia', 42174),
(499, 'Martha Webster', 2111, 'New Jersey', 41784);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employeeID` int(11) NOT NULL,
  `street` varchar(50) DEFAULT NULL,
  `unit_number` int(11) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zip` int(5) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `salaryID` int(11) DEFAULT NULL,
  `managerID` int(11) DEFAULT NULL,
  `stockID` int(11) DEFAULT NULL,
  `storeID` int(11) DEFAULT NULL,
  `serviceID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employeeID`, `street`, `unit_number`, `city`, `zip`, `state`, `salaryID`, `managerID`, `stockID`, `storeID`, `serviceID`) VALUES
(301, '7973 Henry Avenua', 373, 'Ridgecrest', 93555, 'California', 3421, 465, 32230, 2859, 92083),
(306, '391 Union St.', 244, 'Staunton', 44070, 'Ohio', 35221, 475, 36715, 2089, 93724),
(309, '97 Garfield Lane', 851, 'Mason City', 97062, 'Oregon', 37315, 405, 36415, 2397, 96330),
(311, '7924 Cemetery Street', 197, 'Westford', 1886, 'Maryland', 35407, 456, 38739, 2999, 92750),
(314, '7558 Hill Road', 503, 'Des Moines', 50310, 'Iowa', 33968, 481, 39603, 2580, 95203),
(321, '9078 Foxrun Dr.', 32, 'Dacula', 30019, 'Georgia', 39164, 489, 36885, 2976, 90961),
(325, '8941 Brewery St.', 5, 'Yorktown Heights', 10598, 'New York', 37653, 446, 39032, 2509, 99973),
(329, '5 John Dr.', 42, 'King of Prussia', 19406, 'Pennsylvania', 37751, 487, 30800, 2371, 96592),
(333, '9255 Glendale Lane', 61, 'Hopewell', 23860, 'Virginia', 31381, 480, 39725, 2466, 92586),
(343, '453 Yukon Avenue', 106, 'Anoka', 55303, 'Minnesota', 38416, 411, 30410, 2010, 99775),
(344, '4 Stillwater Lane', 72, 'Pewaukee', 77566, 'Texas', 35244, 422, 37852, 2700, 93873),
(349, '34 South St.', 39, 'Natchez', 33428, 'Florida', 30105, 402, 34763, 2225, 99374),
(366, '16 W. Monroe Street', 91, 'Wilmette', 60091, 'Illinois', 31658, 435, 38488, 2131, 98643),
(386, '366 Holly Drive', 550, 'Owatonna', 39503, 'Mississippi', 38041, 444, 37539, 2144, 94454),
(391, '2 Augusta Dr.', 714, 'Hickory', 7030, 'New Jersey', 37696, 499, 33143, 2111, 93298);

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `GcustomerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`GcustomerID`) VALUES
(1),
(2),
(3),
(4),
(7),
(11),
(12),
(14),
(15),
(16),
(17),
(19),
(20),
(23),
(24),
(25),
(26),
(27),
(30),
(32),
(33),
(35),
(36),
(39),
(40);

-- --------------------------------------------------------

--
-- Table structure for table `have`
--

CREATE TABLE `have` (
  `supplierID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `have`
--

INSERT INTO `have` (`supplierID`, `orderID`) VALUES
(102630, 1321),
(102630, 1957),
(104248, 1540),
(104248, 1609),
(104248, 1873),
(104525, 1311),
(104525, 1346),
(104525, 1970),
(104742, 1705),
(104742, 1837),
(105439, 1154),
(105439, 1698),
(105439, 1700),
(118844, 1179),
(118844, 1851),
(130305, 1092),
(130305, 1862),
(130305, 1918),
(137752, 1227),
(137752, 1867),
(152753, 1586),
(152753, 1810),
(155295, 1203),
(155295, 1966),
(155295, 1972),
(160454, 1649),
(160454, 1704),
(160454, 1735),
(170291, 1039),
(170291, 1733),
(170291, 1767),
(178891, 1366),
(178891, 1369),
(178891, 1757),
(182614, 1063),
(182614, 1394),
(182614, 1675),
(189950, 1033),
(189950, 1420),
(189950, 1893);

-- --------------------------------------------------------

--
-- Table structure for table `maintenance`
--

CREATE TABLE `maintenance` (
  `serviceID` int(11) NOT NULL,
  `service_type` varchar(50) DEFAULT NULL,
  `operating_hours` varchar(50) DEFAULT NULL,
  `cost` mediumint(255) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `customerID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `maintenance`
--

INSERT INTO `maintenance` (`serviceID`, `service_type`, `operating_hours`, `cost`, `location`, `customerID`) VALUES
(90961, 'Installation', '2 hours', 75, 'In-Home', 22),
(92083, 'IT', '1 hours', 88, 'In-Home', 1),
(92586, 'Appliance', '0.4 hours', 75, 'In-Home', 6),
(92750, 'Installation', '1.5 hours', 45, 'Store', 8),
(93298, 'Computer Service', '2 hours', 60, 'In-Home', 30),
(93724, 'Computer Service', '0.3 hours', 20, 'Store', 19),
(93873, 'IT', '1.5 hours', 55, 'Store', 32),
(94454, 'Computer Service', '0.25 hours', 20, 'Store', 9),
(95203, 'Appliance', '1.5 hours', 100, 'In-Home', 31),
(96330, 'IT', '0.5 hours', 20, 'Store', 10),
(96592, 'Appliance', '1.5 hours', 120, 'In-Home', 34),
(98643, 'IT', '0.4 hours', 2, 'Store', 14),
(99374, 'IT', '1 hours', 50, 'In-Home', 26),
(99775, 'Computer Service', '0.15 hours', 54, 'Store', 11),
(99973, 'Installation', '0.25 hours', 20, 'Store', 40);

-- --------------------------------------------------------

--
-- Table structure for table `make`
--

CREATE TABLE `make` (
  `supplierID` int(11) NOT NULL,
  `productID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `make`
--

INSERT INTO `make` (`supplierID`, `productID`) VALUES
(182614, 20435),
(130305, 20891),
(118844, 21929),
(104742, 22006),
(152753, 22228),
(160454, 22906),
(170291, 23019),
(102630, 23526),
(155295, 23958),
(189950, 25617),
(105439, 26292),
(104525, 27822),
(137752, 27874),
(178891, 27917),
(104248, 27992);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL,
  `fulfillment` varchar(50) DEFAULT NULL,
  `Date_` varchar(50) DEFAULT NULL,
  `bastreet` varchar(50) DEFAULT NULL,
  `baunit_number` int(11) DEFAULT NULL,
  `bacity` varchar(50) DEFAULT NULL,
  `bastate` varchar(50) DEFAULT NULL,
  `bazip` varchar(5) DEFAULT NULL,
  `sastreet` varchar(50) DEFAULT NULL,
  `saunit_number` int(11) DEFAULT NULL,
  `sacity` varchar(50) DEFAULT NULL,
  `sastate` varchar(50) DEFAULT NULL,
  `sazip` int(5) DEFAULT NULL,
  `customerID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderID`, `fulfillment`, `Date_`, `bastreet`, `baunit_number`, `bacity`, `bastate`, `bazip`, `sastreet`, `saunit_number`, `sacity`, `sastate`, `sazip`, `customerID`) VALUES
(1033, 'Delivery', '0.000228824224590976', '52 E. Lancaster Street', 418, 'Reidsville', 'North Carolina', '27320', '52 E. Lancaster Street', 418, 'Reidsville', 'North Carolina', 27320, 29),
(1039, 'Delivery', '0.000090142876053544', '9068 Wild Horse St.', 68, 'Oxnard', 'California', '93035', '9068 Wild Horse St.', 68, 'Oxnard', 'California', 93035, 21),
(1063, 'Delivery', '0.001188118811881188', '2 Bedford Dr.', 123, 'Norwood', 'Maryland', '2062', '2 Bedford Dr.', 123, 'Norwood', 'Maryland', 2062, 8),
(1092, 'Delivery', '0.000661047760535448', '90 Morris Court', 500, 'Belmont', 'Massachusetts', '2478', '90 Morris Court', 500, 'Belmont', 'Massachusetts', 2478, 33),
(1154, 'Pickup', '0.000023573785643564', '9002 Roosevelt Street', 1, 'Malvern', 'Pennsylvania', '19355', '9002 Roosevelt Street', 1, 'Malvern', 'Pennsylvania', 19355, 3),
(1179, 'Delivery', '0.000212164073267326', '7974 S. Rockcrest Drive', 974, 'Sanducky', 'Ohio', '44870', '7974 S. Rockcrest Drive', 974, 'Sanducky', 'Ohio', 44870, 18),
(1203, 'Delivery', '0.000194773000495785', '32 Meadow Lame', 33, 'Carpentersville', 'Illinois', '60110', '32 Meadow Lame', 33, 'Carpentersville', 'Illinois', 60110, 9),
(1227, 'Pickup', '0.000278603268945022', '890 Schoolhouse Ave.', 5, 'Barberton', 'Ohio', '44203', '890 Schoolhouse Ave.', 5, 'Barberton', 'Ohio', 44203, 14),
(1311, 'Pickup', '0.000381373707982151', '7806 South Constitution Dr.', 806, 'Cockeysville', 'Maryland', '21030', '7806 South Constitution Dr.', 806, 'Cockeysville', 'Maryland', 21030, 38),
(1321, 'Pickup', '0.000206577424888448', '463 Greenrose Street', 98, 'Chesterfield', 'Virginia', '23832', '463 Greenrose Street', 98, 'Chesterfield', 'Virginia', 23832, 16),
(1346, 'Pickup', '0.000258799171626984', '562 West Ivy St.', 10, 'Jonesboro', 'Georgia', '30236', '562 West Ivy St.', 10, 'Jonesboro', 'Georgia', 30236, 1),
(1366, 'Pickup', '0.000743678730788299', '819 Heritage Lane', 918, 'Troy', 'New York', '12180', '819 Heritage Lane', 918, 'Troy', 'Mew York', 12180, 37),
(1369, 'Delivery', '0.000495540138751238', '685 Grand Street', 9, 'Douglasville', 'Georgia', '30134', '685 Grand Street', 9, 'Douglasville', 'Georgia', 30134, 24),
(1394, 'Delivery', '0.000038099591877166', '7201 Devon Ave.', 102, 'Oak Forest', 'Illinois', '60452', '7201 Devon Ave.', 102, 'Oak Forest', 'Illinois', 60452, 23),
(1420, 'Pickup', '0.000212269157008420', '8 Water Lane', 8, 'Reynoldsburg', 'Ohio', '43068', '8 Water Lane', 8, 'Reynoldsburg', 'Ohio', 43068, 40),
(1493, 'Pickup', '0.000099157164105106', '618 N. Joy Ridge Street', 411, 'Forest Hills', 'New York', '11375', '618 N. Joy Ridge Street', 411, 'Forest Hills', 'New York', 11375, 34),
(1540, 'Delivery', '0.000174983230540406', '792 Newcastle Lane', 55, 'Millville', 'New Jersey', '8332', '792 Newcastle Lane', 55, 'Millville', 'New Jersey', 8332, 32),
(1586, 'Pickup', '0.000908490254212091', '8284 Logan St.', 222, 'Cumberland', 'Rhode Island', '2864', '8284 Logan St.', 222, 'Cumberland', 'Rhode Island', 2864, 19),
(1609, 'Delivery', '0.000104220948019801', '65 Ramblewood St.', 232, 'Rego Park', 'New York', '11374', '65 Ramblewood St.', 232, 'Rego Park', 'New York', 11374, 25),
(1620, 'Delivery', '0.000017070672277227', '8301 Franklin Street', 103, 'San Antonio', 'Texas', '78213', '8301 Franklin Street', 103, 'San Antonio', 'Texas', 78213, 26),
(1649, 'Delivery', '0.000090098206640237', '55 Shore Ave.', 601, 'Laurel', 'Maryland', '20707', '55 Shore Ave.', 601, 'Laurel', 'Maryland', 20707, 5),
(1675, 'Pickup', '0.000282885431188118', '40 Brewery St.', 366, 'Hillsboro', 'Oregon', '97124', '40 Brewery St.', 366, 'Hillsboro', 'Oregon', 97124, 31),
(1698, 'Pickup', '0.000114298776622090', '71 Pulaski Rd.', 67, 'Reading', 'Maryland', '1867', '71 Pulaski Rd.', 67, 'Reading', 'Maryland', 1867, 39),
(1700, 'Delivery', '0.000495049504950495', '759 Logan St.', 59, 'Beaver Falls', 'Pennsylvania', '15010', '759 Logan St.', 59, 'Beaver Falls', 'Pennsylvania', 15010, 28),
(1704, 'Delivery', '0.000053041018316831', '55 Shore Ave.', 601, 'Laurel', 'Maryland', '20707', '55 Shore Ave.', 601, 'Laurel', 'Maryland', 20707, 5),
(1705, 'Delivery', '0.000123885034687809', '785 Shipley Ave.', 22, 'Tualatin', 'Oregon', '97062', '785 Shipley Ave.', 22, 'Tualatin', 'Oregon', 97062, 11),
(1733, 'Delivery', '0.000035360678712871', '513 Westport Avenue', 465, 'Mason City', 'Iowa', '50401', '513 Westport Avenue', 465, 'Mason City', 'Iowa', 50401, 10),
(1735, 'Pickup', '0.000495294700346706', '8301 Franklin Street', 103, 'San Antonio', 'Texas', '78213', '8301 Franklin Street', 103, 'San Antonio', 'Texas', 78213, 26),
(1757, 'Pickup', '0.000354132728805156', '716 Myrtle Street', 74, 'Lake Jackson', 'Texas', '77566', '716 Myrtle Street', 74, 'Lake Jackson', 'Texas', 77566, 7),
(1767, 'Pickup', '0.000233079858841010', '73 Devon St.', 510, 'Saint Paul', 'Minnesota', '55104', '73 Devon St.', 510, 'Saint Paul', 'Minnesota', 55104, 36),
(1810, 'Pickup', '0.000743310208126858', '7257 Pennington Lane', 812, 'Hopkins', 'Minnesota', '55343', '7257 Pennington Lane', 812, 'Hopkins', 'Minnesota', 55343, 12),
(1812, 'Pickup', '0.000225245517343904', '8143 Elm Rd.', 314, 'Hickory', 'North Carolina', '28601', '8143 Elm Rd.', 314, 'Hickory', 'North Carolina', 28601, 35),
(1837, 'Pickup', '0.000278741328047571', '561 Woodland Street', 16, 'Bowie', 'Maryland', '20715', '561 Woodland Street', 16, 'Bowie', 'Maryland', 20715, 20),
(1851, 'Pickup', '0.000544554455445544', '26 Selby Circle', 26, 'North Olmsted', 'Ohio', '44070', '26 Selby Circle', 26, 'North Olmsted', 'Ohio', 44070, 13),
(1862, 'Pickup', '0.000247892910262766', '8925 Old Iroquois Ave.', 16, 'Boca Raton', 'Florida', '33428', '8925 Old Iroquois Ave.', 16, 'Boca Raton', 'Florida', 33428, 4),
(1867, 'Pickup', '0.000270428629152206', '7365 W. Alderwood Drive', 365, 'Staunton', 'Virginia', '24401', '7365 W. Alderwood Drive', 365, 'Staunton', 'Virginia', 24401, 17),
(1873, 'Delivery', '0.000062003968253968', '7024 Miles Ave.', 555, 'Gulfport', 'Mississippi', '39503', '7024 Miles Ave.', 555, 'Gulfport', 'Mississippi', 39503, 6),
(1893, 'Pickup', '0.000237859266600594', '7318 East Washington Street', 745, 'Royersford', 'Pennsylvania', '19468', '7318 East Washington Street', 745, 'Royersford', 'Pennsylvania', 19468, 2),
(1918, 'Delivery', '0.000027516371966319', '28 Country Street', 288, 'Lorton', 'Virginia', '22079', '28 Country Street', 288, 'Lorton', 'Virginia', 22079, 27),
(1957, 'Delivery', '0.000283446711805555', '724 Brickyard Street', 632, 'Hoboken', 'New Jersey', '7030', '724 Brickyard Street', 632, 'Hoboken', 'New Jersey', 7030, 15),
(1966, 'Delivery', '0.001320785867261020', '2 Bedford Dr.', 123, 'Norwood', 'Maryland', '2062', '2 Bedford Dr.', 123, 'Norwood', 'Maryland', 2062, 8),
(1970, 'Delivery', '0.000228710833002973', '39 Holly Street', 841, 'North Augusta', 'South Carolina', '29481', '39 Holly Street', 841, 'North Augusta', 'South Carolina', 29481, 30),
(1972, 'Delivery', '0.000165098233283803', '8897 East Bayport Avenue', 512, 'Canandaigua', 'New York', '14424', '8897 East Bayport Avenue', 512, 'Canandaigua', 'New York', 14424, 22);

-- --------------------------------------------------------

--
-- Table structure for table `order_line`
--

CREATE TABLE `order_line` (
  `orderID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `quantity` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_line`
--

INSERT INTO `order_line` (`orderID`, `productID`, `quantity`) VALUES
(1493, 27874, 10),
(1620, 22906, 26),
(1812, 23526, 15);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentID` int(11) NOT NULL,
  `payment_type` varchar(50) DEFAULT NULL,
  `expiration` varchar(50) DEFAULT NULL,
  `cvd` int(3) DEFAULT NULL,
  `customerID` int(11) DEFAULT NULL,
  `card_number` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentID`, `payment_type`, `expiration`, `cvd`, `customerID`, `card_number`) VALUES
(201820, 'Debit', '0.428571428', 211, 37, '4291484938270432'),
(202450, 'Credit', '0.125000000', 556, 22, '5162107957114958'),
(205154, 'Credit', '0.136363636', 450, 15, '6011412559773370'),
(205240, 'Debit', '0.040000000', 783, 31, '374912847012517'),
(205773, 'Credit', '0.545454545', 706, 7, '6011439279929081'),
(208195, 'Credit', '0.380952380', 820, 12, '370363110122797'),
(208834, 'Credit', '0.454545454', 712, 32, '4221174944083581'),
(211451, 'Credit', '0.500000000', 659, 23, '6011844805408457'),
(212371, 'Apple Pay', '0.125000000', 679, 29, '345002461445322'),
(212481, 'Debit', '0.454545454', 951, 11, '346617510136068'),
(214627, 'Apple Pay', '0.379310344', 364, 5, '343056331388841'),
(222602, 'Debit', '0.200000000', 902, 1, '486030571038'),
(222630, 'Credit', '0.041666666', 147, 24, '6011723732468807'),
(226578, 'Credit', '0.480000000', 698, 21, '4181296477198763'),
(229180, 'Credit', '0.153846153', 977, 6, '348577603428085'),
(229802, 'Debit', '0.037037037', 882, 10, '6011415185654237'),
(233724, 'Apple Pay', '0.038461538', 569, 40, '5180497431921245'),
(233837, 'Apple Pay', '0.360000000', 435, 18, '6011842060282703'),
(237933, 'Debit', '0.423076923', 933, 26, '5109178935453780'),
(238488, 'Debit', '0.136363636', 851, 17, '5517680705790016'),
(240272, 'Credit', '0.227272727', 134, 25, '5429796693054095'),
(241797, 'Debit', '0.227272727', 890, 2, '4971475460795447'),
(242954, 'Debit', '0.347826086', 742, 30, '346902767737976'),
(249282, 'Credit', '0.040000000', 552, 38, '4258949028368750'),
(251483, 'Credit', '0.040000000', 382, 4, '488625348412022'),
(253530, 'Debit', '0.272727272', 714, 36, '371756547492072'),
(254370, 'Apple Pay', '0.280000000', 706, 39, '5122959288806754'),
(257160, 'Debit', '0.142857142', 106, 34, '4069846930619792'),
(258841, 'Apple Pay', '0.227272727', 700, 14, '374453226517208'),
(266933, 'Credit', '0.440000000', 768, 33, '4487206235222756'),
(270387, 'Credit', '0.208333333', 391, 13, '4326095806139654'),
(275009, 'Debit', '0.080000000', 786, 3, '4073032894227492'),
(275835, 'Apple Pay', '0.090909090', 941, 27, '4636485126263158'),
(277694, 'Debit', '0.045454545', 990, 20, '5402690894654087'),
(281343, 'Debit', '0.222222222', 830, 16, '5387845717099014'),
(281758, 'Debit', '0.269230769', 292, 35, '5523488318487588'),
(291291, 'Debit', '0.370370370', 864, 9, '6011480931385692'),
(291880, 'Apple Pay', '0.103448275', 398, 8, '349920443947170'),
(294195, 'Apple Pay', '0.434782608', 921, 19, '6011850085636100'),
(294925, 'Apple Pay', '0.200000000', 672, 28, '5463545528109872');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productID` int(11) NOT NULL,
  `manufacturer` varchar(50) DEFAULT NULL,
  `serial_number` int(9) DEFAULT NULL,
  `price` int(255) DEFAULT NULL,
  `warranty` varchar(50) DEFAULT NULL,
  `stockID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productID`, `manufacturer`, `serial_number`, `price`, `warranty`, `stockID`) VALUES
(20435, 'Finity', 33576987, 37, 'No Warranty', 36885),
(20891, 'US', 99583342, 222, 'No Warranty', 36885),
(21929, 'Movist', 68765648, 300, 'Warranty', 36885),
(22006, 'Isovu', 33284683, 500, 'Warranty', 36885),
(22228, 'Divalane', 27655334, 75, 'No Warranty', 36885),
(22906, 'Leetude', 44442924, 25, 'No Warranty', 36885),
(23019, 'Yagen', 92888764, 175, 'Warranty', 36885),
(23526, 'Protoloo', 67365259, 15, 'No Warranty', 36885),
(23958, 'Kilium', 53989868, 20, 'No Warranty', 36885),
(25617, 'Zoojo', 37248463, 800, 'Warranty', 36885),
(26292, 'Dexo', 53893535, 488, 'No Warranty', 36885),
(27822, 'Quado', 88965778, 450, 'Warranty', 36885),
(27874, 'Autofy', 46327372, 600, 'Warranty', 36885),
(27917, 'Symil', 27499658, 92, 'Warranty', 36885);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `customerID` int(11) NOT NULL,
  `productID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`customerID`, `productID`) VALUES
(1, 27822),
(2, 25617),
(3, 26292),
(4, 20891),
(5, 22906),
(6, 27992),
(7, 27917),
(8, 20435),
(9, 23958),
(10, 23019),
(11, 22006),
(12, 22228),
(13, 21929),
(14, 27874),
(15, 23526),
(16, 23526),
(17, 27874),
(18, 21929),
(19, 22228),
(20, 22006),
(21, 23019),
(22, 23958),
(23, 20435),
(24, 27917),
(25, 27992),
(26, 22906),
(27, 20891),
(28, 26292),
(29, 25617),
(30, 27822),
(31, 20435),
(32, 27992),
(33, 20891),
(34, 27874),
(35, 23526),
(36, 23019),
(37, 27917),
(38, 27822),
(39, 26292),
(40, 25617);

-- --------------------------------------------------------

--
-- Table structure for table `rewards_member`
--

CREATE TABLE `rewards_member` (
  `memberID` int(11) NOT NULL,
  `RMcustomerID` int(11) NOT NULL,
  `reward_balance` int(255) DEFAULT NULL,
  `member_since` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rewards_member`
--

INSERT INTO `rewards_member` (`memberID`, `RMcustomerID`, `reward_balance`, `member_since`) VALUES
(205, 13, 10501, '0.000082630969757064'),
(217, 37, 10305, '0.000159280758671952'),
(218, 31, 10809, '0.000095485447864945'),
(219, 5, 10863, '0.000449326010983524'),
(234, 9, 10036, '0.000076312575892857'),
(239, 22, 10947, '0.000048242369391824'),
(241, 29, 10658, '0.000623441396508728'),
(247, 8, 10639, '0.000213007667992047'),
(248, 21, 10002, '0.000180554301390268'),
(250, 10, 10686, '0.000193862855433698'),
(252, 18, 10906, '0.000152398368994551'),
(257, 38, 10609, '0.001329345297108673'),
(262, 28, 10917, '0.000366117490264603'),
(265, 34, 10591, '0.000144604197322756'),
(279, 6, 10367, '0.000062375249500998');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `salaryID` int(11) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `status_` varchar(50) DEFAULT NULL,
  `benefit` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`salaryID`, `role`, `status_`, `benefit`) VALUES
(30105, 'Team Member', 'Part Time', 'Dental Vision'),
(30421, 'Team Member', 'Part Time', 'Dental Vision'),
(31381, 'Team Member', 'Seasonal', 'Vision'),
(31420, 'District Manager', 'Full Time', 'Health Dental Vision 401k'),
(31658, 'Team Member', 'Seasonal', 'Vision'),
(33968, '3rd Key', 'Full Time', 'Health Dental Vision'),
(35221, 'Supervisor', 'Part Time', 'Health Dental Vision'),
(35244, 'Supervisor', 'Seasonal', 'Vision'),
(35407, 'Supervisor', 'Part Time', 'Dental Vision'),
(37315, 'Advisor', 'Seasonal', 'Vision'),
(37653, 'Advisor', 'Part Time', 'Health Dental Vision'),
(37696, 'Advisor', 'Seasonal', 'Vision'),
(37751, 'Advisor', 'Seasonal', 'Vision'),
(38041, 'Manager', 'Full Time', 'Health Dental Vision 401k'),
(38416, 'Manager', 'Full Time', 'Health Dental Vision 401k'),
(39164, 'Manager', 'Full time', 'Health Dental Vision 401k'),
(40356, 'District Manager', 'Full Time', 'Health Dental Vision 401k'),
(41784, 'District Manager', 'Full Time', 'Health Dental Vision 401k'),
(42174, 'District Manager', 'Full Time', 'Health Dental Vision 401k'),
(43010, 'District Manager', 'Full Time', 'Health Dental Vision 401k'),
(43139, 'District Manager', 'Full Time', 'Health Dental Vision 401k'),
(43537, 'District Manager', 'Full Time', 'Health Dental Vision 401k'),
(45044, 'District Manager', 'Full Time', 'Health Dental Vision 401k'),
(52186, 'District Manager', 'Full Time', 'Health Dental Vision 401k'),
(54911, 'District Manager', 'Full Time', 'Health Dental Vision 401k'),
(55044, 'District Manager', 'Full Time', 'Health Dental Vision 401k'),
(60446, 'District Manager', 'Full Time', 'Health Dental Vision 401k'),
(61421, 'District Manager', 'Full Time', 'Health Dental Vision 401k'),
(62072, 'District Manager', 'Full Time', 'Health Dental Vision 401k'),
(63601, 'District manager', 'Full time', 'Health Dental Vision 401k');

-- --------------------------------------------------------

--
-- Table structure for table `sell`
--

CREATE TABLE `sell` (
  `storeID` int(11) NOT NULL,
  `productID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sell`
--

INSERT INTO `sell` (`storeID`, `productID`) VALUES
(2010, 23958),
(2089, 27822),
(2111, 23019),
(2131, 23526),
(2144, 20891),
(2225, 25617),
(2371, 22228),
(2397, 20435),
(2466, 22006),
(2509, 27874),
(2580, 27917),
(2700, 27992),
(2859, 21929),
(2976, 26292),
(2999, 22906);

-- --------------------------------------------------------

--
-- Stand-in structure for view `sold_items`
-- (See below for the actual view)
--
CREATE TABLE `sold_items` (
`productID` int(11)
,`quantity` int(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stockID` int(11) NOT NULL,
  `quantity` int(255) DEFAULT NULL,
  `managerID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stockID`, `quantity`, `managerID`) VALUES
(30410, 108, 411),
(30800, 30, 487),
(32230, 200, 465),
(33143, 89, 499),
(34763, 50, 402),
(36415, 119, 405),
(36715, 49, 475),
(36885, 216, 489),
(37539, 101, 444),
(37852, 204, 422),
(38488, 169, 435),
(38739, 31, 456),
(39032, 62, 446),
(39603, 201, 481),
(39725, 183, 480);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `storeID` int(11) NOT NULL,
  `street` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip` int(6) DEFAULT NULL,
  `hours` varchar(50) DEFAULT NULL,
  `stockID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`storeID`, `street`, `city`, `state`, `zip`, `hours`, `stockID`) VALUES
(2010, '3 Old York Street', 'Hastings', 'Minnesota', 55033, '8am-7pm', 30410),
(2089, '9416 8th Dr.', 'Findlay', 'Ohio', 45840, '9am-9pm', 36715),
(2111, '185 Logan St.', 'Little Falls', 'New Jersey', 7424, '8am-7pm', 33143),
(2131, '7014 Brickell St.', 'Northbrook', 'Illinois', 60062, '9am-10pm', 38488),
(2144, '9336 Bowman Court', 'Fort Dodge', 'Mississippi', 38041, '9am-10pm', 37539),
(2225, '3 Pheasant Dr.', 'Bonita Springs', 'Florida', 34135, '9am-9pm', 34763),
(2371, '8363 South Fremont Lane', 'Wilkes Barre', 'Pennsylvania', 18702, '9am-9pm', 30800),
(2397, '9015 Miller Road', 'Norwich', 'Oregon', 97062, '9am-9pm', 36415),
(2466, '559 Helen Rd.', 'Winchester', 'Virginia', 22601, '9am-10pm', 39725),
(2509, '8609 Park St.', 'Centereach', 'New York', 11720, '9am-9pm', 39032),
(2580, '88 S. Delaware Drive', 'Anaheim', 'Iowa', 50401, '8am-7pm', 39603),
(2700, '9015 Miller Road', 'Norwich', 'Texas', 77566, '9am-10pm', 37852),
(2859, '95 Trusel Lane', 'Bakersfield', 'California', 93306, '9am-9pm', 32230),
(2976, '733 Fremont Ave.', 'Hinesville', 'Georgia', 31313, '8am-7pm', 36885),
(2999, '178 San Pablo Ave.', 'Brockton', 'Maryland', 20707, '9am-10pm', 38739);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplierID` int(11) NOT NULL,
  `street` varchar(50) DEFAULT NULL,
  `unit_number` int(11) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip` int(5) DEFAULT NULL,
  `company_name` varchar(50) DEFAULT NULL,
  `manufactured_product` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplierID`, `street`, `unit_number`, `city`, `state`, `zip`, `company_name`, `manufactured_product`) VALUES
(102630, '66 Forest Drive', 103, 'Hazleton', 'Pennsylvania', 18201, 'Protoloo', 'HDMI'),
(104248, '57 Henry Smith St.', 86, 'Glenside', 'Pennsylvania', 19038, 'Sufend', 'SSD'),
(104525, '8264 Myrtle Rd.', 38, 'Clifton Park', 'New York', 12065, 'Quado', 'laptop'),
(104742, '9424 Mayflower St.', 274, 'Dearborn Heights', 'Michigan', 48127, 'Isovu', 'Fax Machine'),
(105439, '9 Wilson St.', 115, 'Norristown', 'Pennsylvania', 19401, 'Dexo', 'Hard Drive'),
(118844, '7884 Gates Lane', 451, 'Hopkinsville', 'Kentucky', 42240, 'Movist', 'Tablet'),
(130305, '93 Central Street', 120, 'Westford', 'Massachusetts', 1886, 'US', 'Graphics Card'),
(137752, '22 School St.', 347, 'Patchogue', 'New York', 11772, 'Autofy', 'Desktop'),
(152753, '72 Pineknoll St.', 779, 'Longwood', 'Florida', 32779, 'Divalane', 'Shredder'),
(155295, '349 Oak Street', 707, 'Charlottesville', 'Virginia', 22901, 'Kilium', 'Mouse'),
(160454, '7179 Circle Street', 11, 'Logansport', 'Indiana', 46947, 'Leetude', 'USB'),
(170291, '806 Pumpkin Hill Road', 32, 'Buffalo Grove', 'Illinois', 60089, 'Yagen', 'Printer'),
(178891, '463 Edgewood Drive', 600, 'Wyoming', 'Michigan', 49506, 'Symil', 'Monitor'),
(182614, '9298 Chapel Road', 27, 'Riverdale', 'Georgia', 30274, 'Finity', 'Keyboard'),
(189950, '903 Greenview Street', 401, 'New Orleans', 'Louisiana', 70115, 'Zoojo', 'air pods');

-- --------------------------------------------------------

--
-- Table structure for table `uses`
--

CREATE TABLE `uses` (
  `productID` int(11) NOT NULL,
  `serviceID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `uses`
--

INSERT INTO `uses` (`productID`, `serviceID`) VALUES
(20435, 93724),
(20891, 98643),
(21929, 965920),
(22006, 92856),
(22228, 99775),
(22906, 93298),
(23019, 95203),
(23526, 96330),
(23958, 94454),
(25617, 99973),
(26292, 92750),
(27822, 90961),
(27874, 92083),
(27917, 93873),
(27992, 99374);

-- --------------------------------------------------------

--
-- Table structure for table `visit`
--

CREATE TABLE `visit` (
  `storeID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `visit`
--

INSERT INTO `visit` (`storeID`, `customerID`) VALUES
(2010, 12),
(2089, 14),
(2111, 32),
(2131, 9),
(2144, 6),
(2225, 4),
(2371, 2),
(2397, 31),
(2466, 17),
(2509, 34),
(2580, 10),
(2700, 26),
(2859, 21),
(2976, 1),
(2999, 8);

-- --------------------------------------------------------

--
-- Structure for view `all_orders`
--
DROP TABLE IF EXISTS `all_orders`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `all_orders`  AS  (select `orders`.`orderID` AS `orderID`,`orders`.`fulfillment` AS `fulfillment`,`orders`.`Date_` AS `Date_`,`orders`.`bastreet` AS `bastreet`,`orders`.`baunit_number` AS `baunit_number`,`orders`.`bacity` AS `bacity`,`orders`.`bastate` AS `bastate`,`orders`.`bazip` AS `bazip`,`orders`.`sastreet` AS `sastreet`,`orders`.`saunit_number` AS `saunit_number`,`orders`.`sacity` AS `sacity`,`orders`.`sastate` AS `sastate`,`orders`.`sazip` AS `sazip`,`orders`.`customerID` AS `customerID`,`customer`.`Name` AS `Name`,`customer`.`Street` AS `Street`,`customer`.`Unit_Number` AS `Unit_Number`,`customer`.`City` AS `City`,`customer`.`Zip` AS `Zip`,`customer`.`State` AS `State`,`customer`.`Email` AS `Email`,`customer`.`Customer_Type` AS `Customer_Type` from (`orders` left join `customer` on((`orders`.`customerID` = `customer`.`customerID`)))) ;

-- --------------------------------------------------------

--
-- Structure for view `sold_items`
--
DROP TABLE IF EXISTS `sold_items`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sold_items`  AS  (select `product`.`productID` AS `productID`,`order_line`.`quantity` AS `quantity` from (`product` left join `order_line` on((`product`.`productID` = `order_line`.`productID`)))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `customer_phone_number`
--
ALTER TABLE `customer_phone_number`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `district_manager`
--
ALTER TABLE `district_manager`
  ADD PRIMARY KEY (`managerID`),
  ADD KEY `district_manager_fk` (`salaryID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeID`),
  ADD KEY `employee_fk1` (`salaryID`),
  ADD KEY `employee_fk2` (`managerID`),
  ADD KEY `employee_fk3` (`stockID`),
  ADD KEY `employee_fk4` (`storeID`),
  ADD KEY `employee_fk5` (`serviceID`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`GcustomerID`);

--
-- Indexes for table `have`
--
ALTER TABLE `have`
  ADD PRIMARY KEY (`supplierID`,`orderID`);

--
-- Indexes for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD PRIMARY KEY (`serviceID`),
  ADD KEY `maintenance_fk` (`customerID`);

--
-- Indexes for table `make`
--
ALTER TABLE `make`
  ADD PRIMARY KEY (`productID`,`supplierID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `orders_fk` (`customerID`);

--
-- Indexes for table `order_line`
--
ALTER TABLE `order_line`
  ADD PRIMARY KEY (`orderID`,`productID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentID`),
  ADD KEY `payment_fk` (`customerID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productID`),
  ADD KEY `product_fk` (`stockID`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`customerID`,`productID`);

--
-- Indexes for table `rewards_member`
--
ALTER TABLE `rewards_member`
  ADD PRIMARY KEY (`memberID`,`RMcustomerID`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`salaryID`);

--
-- Indexes for table `sell`
--
ALTER TABLE `sell`
  ADD PRIMARY KEY (`storeID`,`productID`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stockID`),
  ADD KEY `stock_fk` (`managerID`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`storeID`),
  ADD KEY `store_fk` (`stockID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplierID`);

--
-- Indexes for table `uses`
--
ALTER TABLE `uses`
  ADD PRIMARY KEY (`productID`,`serviceID`);

--
-- Indexes for table `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`storeID`,`customerID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_fk2` FOREIGN KEY (`managerID`) REFERENCES `district_manager` (`managerID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_fk3` FOREIGN KEY (`stockID`) REFERENCES `stock` (`stockID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_fk4` FOREIGN KEY (`storeID`) REFERENCES `store` (`storeID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_fk5` FOREIGN KEY (`serviceID`) REFERENCES `maintenance` (`serviceID`) ON UPDATE CASCADE;

--
-- Constraints for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD CONSTRAINT `maintenance_fk` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_fk` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_fk` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_fk` FOREIGN KEY (`stockID`) REFERENCES `stock` (`stockID`) ON UPDATE CASCADE;

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_fk` FOREIGN KEY (`managerID`) REFERENCES `district_manager` (`managerID`) ON UPDATE CASCADE;

--
-- Constraints for table `store`
--
ALTER TABLE `store`
  ADD CONSTRAINT `store_fk` FOREIGN KEY (`stockID`) REFERENCES `stock` (`stockID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
