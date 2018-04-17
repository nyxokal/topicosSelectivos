-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2018 at 03:04 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstoredb`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `authorID` int(11) NOT NULL,
  `authorName` varchar(255) NOT NULL,
  `authorLastName` varchar(255) NOT NULL,
  `authorCountry` int(11) NOT NULL COMMENT 'References an ID'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`authorID`, `authorName`, `authorLastName`, `authorCountry`) VALUES
(1, 'George', 'Orwell', 6),
(2, 'Antoine', 'de Saint-Exupery', 4),
(3, 'Aldous', 'Huxley', 6),
(4, 'Agatha', 'Christie', 6),
(5, 'Douglas', 'Adams', 6),
(6, 'Ursula K.', 'Le Guin', 3),
(7, 'Andy', 'Weir', 3),
(8, 'Jaron', 'Lanier', 3),
(9, 'Max', 'Brooks', 3),
(10, 'Sun', 'Tzu', 5),
(11, 'Stephen', 'Hawking', 6),
(12, 'Neil Degrasse', 'Tyson', 3),
(13, 'Wizards RPG Team', '', 7),
(14, 'Wizards of the Coast', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookID` int(11) NOT NULL,
  `bookName` varchar(255) NOT NULL,
  `bookAuthor` int(11) NOT NULL COMMENT 'References an ID',
  `bookPrintType` varchar(255) NOT NULL,
  `bookLanguage` varchar(255) NOT NULL,
  `bookCategory` int(11) NOT NULL COMMENT 'References an ID',
  `bookPrice` float NOT NULL,
  `bookCountry` int(11) NOT NULL COMMENT 'References an ID',
  `bookPublisher` int(11) NOT NULL COMMENT 'References an ID',
  `bookIsBestseller` int(11) NOT NULL COMMENT 'References an ID, 0 is no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookID`, `bookName`, `bookAuthor`, `bookPrintType`, `bookLanguage`, `bookCategory`, `bookPrice`, `bookCountry`, `bookPublisher`, `bookIsBestseller`) VALUES
(1, 'Nineteen Eighty-four', 1, 'Paperback', 'English', 27, 10.76, 6, 1, 1),
(2, 'The Little Prince', 2, 'Paperback', 'English', 5, 5.62, 4, 2, 1),
(3, 'Brave New World', 3, 'Paperback', 'English', 27, 10.27, 6, 3, 1),
(4, 'Murder on the Orient Express', 4, 'Paperback', 'English', 8, 9.76, 6, 4, 1),
(5, 'The Hitchhiker\'s Guide to the Galaxy', 5, 'Paperback', 'English', 27, 8.57, 3, 5, 1),
(6, 'Earthsea : The First Four Books: A Wizard of Earthsea * The Tombs of Atuan * The Farthest Shore * Tehanu', 6, 'Paperback', 'English', 27, 22.35, 6, 1, 0),
(7, 'Artemis', 7, 'Paperback', 'English', 27, 21.06, 6, 6, 0),
(8, 'Dawn of the New Everything : A Journey Through Virtual Reality', 8, 'Paperback', 'English', 32, 20.06, 6, 3, 0),
(9, 'World War Z : An Oral History of the Zombie War', 9, 'Paperback', 'English', 27, 11.03, 3, 3, 0),
(10, 'The Zombie Survival Guide', 9, 'Paperback', 'English', 21, 16.75, 3, 3, 0),
(11, 'The Art of War', 10, 'Paperback', 'English', 36, 5.48, 10, 4, 0),
(12, 'A Brief History Of Time : From Big Bang To Black Holes', 11, 'Paperback', 'English', 26, 12.93, 6, 7, 0),
(13, 'Welcome to the Universe : An Astrophysical Tour', 12, 'Paperback', 'English', 26, 40.49, 3, 8, 0),
(14, 'Xanathar\'s Guide to Everything', 13, 'Hardback', 'English', 38, 39.13, 3, 9, 0),
(15, 'Dungeons & Dragons Player\'s Handbook (Dungeons & Dragons Core Rulebooks)', 14, 'Hardback', 'English', 38, 42.84, 3, 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `catID` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`catID`, `catName`) VALUES
(1, 'Art & Photography'),
(2, 'Audio Books'),
(3, 'Biography'),
(4, 'Business, Finance & Law'),
(5, 'Children\'s Books'),
(6, 'Computing'),
(7, 'Crafts & Hobbies'),
(8, 'Crime & Thriller'),
(9, 'Dictionaries & Languages'),
(10, 'Entertainment'),
(11, 'Fiction'),
(12, 'Food & Drink'),
(13, 'Graphic Novels, Anime & Manga'),
(14, 'Health'),
(15, 'History & Archaeology'),
(16, 'Home & Garden'),
(17, 'Humour'),
(18, 'Medical'),
(19, 'Mind, Body & Spirit'),
(20, 'Natural History'),
(21, 'Personal Development'),
(22, 'Poetry & Drama'),
(23, 'Reference'),
(24, 'Religion'),
(25, 'Romance'),
(26, 'Science & Geography'),
(27, 'Science Fiction, Fantasy & Horror'),
(28, 'Society & Social Sciences'),
(29, 'Sport'),
(30, 'Stationery'),
(31, 'Teaching Resources & Education'),
(32, 'Technology & Engineering'),
(33, 'Teen & Young Adult'),
(34, 'Transport'),
(35, 'Travel & Holiday Guides'),
(36, 'Military Tactics'),
(37, 'Philosophy'),
(38, 'Hobby & Gaming');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `countryID` int(11) NOT NULL,
  `countryName` varchar(255) NOT NULL,
  `countryCurrency` varchar(255) NOT NULL,
  `countryMoneySymbol` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`countryID`, `countryName`, `countryCurrency`, `countryMoneySymbol`) VALUES
(1, 'Mexico', 'Mexican Peso', '$'),
(2, 'Scotland', 'Pound sterling', '£'),
(3, 'United States', 'US Dollar', '$'),
(4, 'France', 'Euro', '€'),
(5, 'China', 'Renminbi', '¥'),
(6, 'United Kingdom', 'Pound sterling', '£'),
(7, 'Canada', 'Canadian Dollar', '$');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ordID` int(11) NOT NULL,
  `userID` int(11) NOT NULL COMMENT 'References an ID',
  `orderDate` date NOT NULL,
  `orderBookList` int(11) NOT NULL COMMENT 'References book ID',
  `orderCurrency` int(11) NOT NULL COMMENT 'References currency '
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `pubID` int(11) NOT NULL,
  `pubName` varchar(255) NOT NULL,
  `pubCountry` int(11) NOT NULL COMMENT 'References country ID'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`pubID`, `pubName`, `pubCountry`) VALUES
(1, 'Penguin Books Ltd', 6),
(2, 'Wordsworth Editions Ltd', 6),
(3, 'Vintage Publishing', 3),
(4, 'HarperCollins Publishers', 3),
(5, 'Random House USA Inc', 3),
(6, 'Ebury Publishing', 6),
(7, ' Transworld Publishers Ltd', 6),
(8, 'Princeton University Press', 3),
(9, 'Wizards of the Coast', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `userLastName` varchar(255) NOT NULL,
  `userUsername` varchar(255) NOT NULL,
  `userPwd` varchar(255) NOT NULL,
  `userCategory` int(11) NOT NULL COMMENT 'Shopper, Admin',
  `userCountry` int(11) NOT NULL COMMENT 'References an ID'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `userName`, `userLastName`, `userUsername`, `userPwd`, `userCategory`, `userCountry`) VALUES
(1, 'Ruri', 'Flores', 'netflixvania', 'password123', 2, 1),
(2, 'Chii', 'Bee', 'chiibee', '7um!0s3', 1, 3),
(3, 'Zadius', 'Nedor', 'smok_da_erb', 'totalbitch69', 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`authorID`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookID`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`catID`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`countryID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ordID`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`pubID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `authorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bookID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `catID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `countryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ordID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `pubID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
