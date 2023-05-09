-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 16, 2023 at 10:27 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eindopdracht`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `voornaam` varchar(255) DEFAULT NULL,
  `achternaam` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `subject` varchar(800) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `voornaam`, `achternaam`, `email`, `country`, `subject`) VALUES
(1, 'Verdie', 'Cumen', 'cumenferdi@gmail.com', 'aanmelden', 'site site'),
(2, 'Nathon', 'ten Bronk', 'nathan@hetemail.com', 'feedback', 'leuke website'),
(3, 'Ferdi', 'Ã‡Ã¼men', 'cumenferdi@gmail.com', 'klacht', 'hhgdrfx');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
CREATE TABLE IF NOT EXISTS `teams` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `content`) VALUES
(1, 'A1', '<ul>\r\n      <li>Matas Lutz</li>\r\n      <li>Hester Merritt</li>\r\n      <li>Anabella Wolf</li>\r\n      <li>Madeline Mcpherson</li>\r\n      <li>Charmaine Maynard Heath</li>\r\n      <li>Bobbie Vance</li>\r\n      <li>Rio Sharples</li>\r\n      <li>Elsa Butler</li>\r\n      <li>Nusaybah Oliver</li>\r\n      <li>Ananya Oconnor</li>\r\n      <li>Gertrude Rollins</li>\r\n</ul>'),
(2, 'B1', '<ul>\n      <li>Ifrah Barton</li>\n      <li>Khaleesi Legge</li>\n      <li>Bernadette Russell</li>\n      <li>Damon Gordon</li>\n      <li>Ava Heath</li>\n      <li>Dan Howell</li>\n      <li>Zion Bass</li>\n      <li>Menna Naylor</li>\n      <li>Zarah Newton</li>\n      <li>Allan Hogg</li>\n      <li>Luther Cairns</li>\n    </ul>'),
(3, 'C1', '<ul>\n        <li>Benn Gordon</li>\n        <li>Wendy Zavala</li>\n        <li>Arda Suarez</li>\n        <li>Tabitha Petersen</li>\n        <li>Manal Cortez</li>\n        <li>Adrienne Callaghan</li>\n        <li>Anderson Bruce</li>\n        <li>Taha Ware</li>\n        <li>Marian Salgado</li>\n        <li>Sana Cortes</li>\n        <li>Karan Russo</li>\n    </ul>'),
(4, 'D1', '<ul>\n        <li>Kajol Crouch</li>\n        <li>Katy Cross</li>\n        <li>Drew Gates</li>\n        <li>Lola-Mae Nunez</li>\n        <li>Axl Schaefer</li>\n        <li>Luca Navarro</li>\n        <li>Mariyah Stephenson</li>\n        <li>Dimitri Magana</li>\n        <li>Arron Herrera</li>\n        <li>Isaac Farmer</li>\n        <li>Bea Burn</li>\n    </ul>'),
(5, 'E1', '<ul>     \n        <li>Dua Neville</li>\n        <li>Caine Barton</li>\n        <li>Wilson Prince</li>\n        <li>Jolene Gutierrez</li>\n        <li>Spencer Traynor</li>\n        <li>Faiza Kramer</li>\n        <li>Evie Downs</li>\n        <li>Huxley Crawford</li>\n        <li>Jaylan Piper</li>\n        <li>Ivor Ratcliffe</li>\n        <li>Awais Prosser</li>\n    </ul>');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
