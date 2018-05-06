-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2018 at 08:20 PM
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
  `authorCountry` int(11) NOT NULL COMMENT 'References an ID',
  `authorDescription` varchar(225) NOT NULL,
  `authorImg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`authorID`, `authorName`, `authorLastName`, `authorCountry`, `authorDescription`, `authorImg`) VALUES
(1, 'George', 'Orwell', 6, 'Eric Arthur Blair, better known by his pen name George Orwell, was an English novelist, essayist, journalist, and critic.', 'https://upload.wikimedia.org/wikipedia/commons/7/7e/George_Orwell_press_photo.jpg'),
(2, 'Antoine', 'de Saint-Exupery', 4, 'Antoine Marie Jean-Baptiste Roger was a French writer, poet, aristocrat, journalist, and pioneering aviator. He became a laureate of several of France\'s highest literary awards and won the U.S. National Book Award.', 'https://www.biografiasyvidas.com/biografia/s/fotos/saint_exupery.jpg'),
(3, 'Aldous', 'Huxley', 6, 'Aldous Leonard Huxley was an English writer, novelist, philosopher. He graduated from Balliol College at the University of Oxford with a first-class honours degree in English literature.', 'https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTE5NDg0MDU1MDA2NzA5MjYz/aldous-huxley-9348198-1-402.jpg'),
(4, 'Agatha', 'Christie', 6, 'Dame Agatha Mary Clarissa Christie was an English writer. She is known for her 66 detective novels and 14 short story collections, particularly those revolving around her fictional detectives Hercule Poirot and Miss Marple.', 'https://ia.media-imdb.com/images/M/MV5BMTU3OTYzMzY4NV5BMl5BanBnXkFtZTcwMDIxOTIyOA@@._V1_UY317_CR8,0,214,317_AL_.jpg'),
(5, 'Douglas', 'Adams', 6, 'Douglas Noel Adams was an English author, scriptwriter, essayist, humorist, satirist and dramatist. Adams was author of The Hitchhiker\'s Guide to the Galaxy, which originated in 1978 as a BBC radio ', 'https://images.gr-assets.com/authors/1189120061p5/4.jpg'),
(6, 'Ursula K.', 'Le Guin', 3, 'Ursula Kroeber Le Guin was an American novelist. She worked mainly in the genres of fantasy and science fiction. She also authored children\'s books, short stories, poetry, and essays.', 'http://e00-elmundo.uecdn.es/assets/multimedia/imagenes/2017/02/24/14879567791531.jpg'),
(7, 'Andy', 'Weir', 3, 'Andrew Taylor Weir is an American novelist whose debut novel, The Martian, was later adapted into a film of the same name directed by Ridley Scott in 2015. He also worked as a computer programmer for much of his life.', 'https://images.gr-assets.com/authors/1382592903p8/6540057.jpg'),
(8, 'Jaron', 'Lanier', 3, 'Jaron Zepel Lanier is an American computer philosophy writer, computer scientist, visual artist, and composer of classical music.', 'http://cfile9.uf.tistory.com/image/262C284F574A90480FA654'),
(9, 'Max', 'Brooks', 3, 'Maximillian Michael Brooks is an American author. He is the son of comedy filmmaker Mel Brooks and actress Anne Bancroft. Much of Brooks\'s writing focuses on zombie stories. ', 'https://ia.media-imdb.com/images/M/MV5BMTQ0NzM5NDM4NV5BMl5BanBnXkFtZTcwMTczNzMwNg@@._V1_UY317_CR120,0,214,317_AL_.jpg'),
(10, 'Sun', 'Tzu', 5, 'Sun Tzu was a Chinese general, military strategist, writer, and philosopher who lived in the Eastern Zhou period of ancient China.', 'https://pbs.twimg.com/profile_images/810085342258888704/mM1Zbf_s_400x400.jpg'),
(11, 'Stephen', 'Hawking', 6, 'Stephen William Hawking CH CBE FRS FRSA was an English theoretical physicist, cosmologist, author, and director of research at the Centre for Theoretical Cosmology at the University of Cambridge.', 'http://www.hawking.org.uk/uploads/1/2/2/1/12210141/swh-1-web.jpg?233'),
(12, 'Neil Degrasse', 'Tyson', 3, 'Neil deGrasse Tyson is an American astrophysicist, author, and science communicator. Since 1996, he has been the Frederick P. Rose Director of the Hayden Planetarium at the Rose Center for Earth and Space in New York City.', 'https://mediamass.net/jdd/public/documents/celebrities/7211.jpg'),
(13, 'Wizards RPG Team', '', 7, '', 'https://images-na.ssl-images-amazon.com/images/G/01/author-pages/no-profile-image-placeholder-na._UX250_.png'),
(14, 'Wizards of the Coast', '', 3, 'Wizards of the Coast LLC is an American publisher of games, primarily based on fantasy and science fiction themes, and formerly an operator of retail stores for games.', 'https://images-na.ssl-images-amazon.com/images/G/01/author-pages/no-profile-image-placeholder-na._UX250_.png'),
(15, 'Becky', 'Albertalli', 3, 'Becky Albertalli is an award-winning American author of young adult fiction. She earned the American Library Association\'s William C. Morris Award as 2015\'s best debut novel written for teens.', 'http://yallfest.org/content/uploads/2016/10/headshot.8fcb31914f1e.jpg'),
(16, 'Eric', 'Matthes', 3, 'Eric Matthes teaches math and science at a small alternative school in southeast Alaska. When he\'s not teaching or writing he can often be found up in the mountains or out on the ocean.', 'https://www.sitkaschools.org/cms/lib/AK01001710/Centricity/Domain/484/Matthes.PNG'),
(17, 'Cathy', 'Yardley', 3, 'Since her first paid gig as a writer in 1999, she\'s written fun love stories. Even when she tried to write angsty, she couldn\'t keep the humor out -- it\'s hard-wired. Now she rolls with it.', 'https://images.gr-assets.com/authors/1284900222p5/6777.jpg'),
(18, 'Diane', 'Setterfield', 6, 'Diane Setterfield is a British author whose 2006 debut novel, The Thirteenth Tale, became a New York Times No. 1 best-seller. It is written in the Gothic tradition, with echoes of Jane Eyre and Wuthering Heights', 'http://www.webbiography.com/Images/Authors/Diane-Setterfield.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookID` int(11) NOT NULL,
  `bookName` varchar(255) NOT NULL,
  `bookAuthor` int(11) NOT NULL COMMENT 'References an ID',
  `bookAmount` int(11) NOT NULL,
  `bookPrintType` varchar(255) NOT NULL,
  `bookLanguage` varchar(255) NOT NULL,
  `bookCategory` int(11) NOT NULL COMMENT 'References an ID',
  `bookPrice` float NOT NULL,
  `bookImg` varchar(255) NOT NULL,
  `bookCountry` int(11) NOT NULL COMMENT 'References an ID',
  `bookPublisher` int(11) NOT NULL COMMENT 'References an ID',
  `bookIsBestseller` int(11) NOT NULL COMMENT 'References an ID, 0 is no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookID`, `bookName`, `bookAuthor`, `bookAmount`, `bookPrintType`, `bookLanguage`, `bookCategory`, `bookPrice`, `bookImg`, `bookCountry`, `bookPublisher`, `bookIsBestseller`) VALUES
(1, 'Nineteen Eighty-four', 1, 142, 'Paperback', 'English', 27, 10.76, 'https://i0.wp.com/obeygiant.com/images/2015/07/poster_1984_lrg.jpg?fit=416%2C680&ssl=1', 6, 1, 1),
(2, 'The Little Prince', 2, 32, 'Paperback', 'English', 5, 5.62, 'http://flavorwire.files.wordpress.com/2013/04/the-little-prince-original.jpg', 4, 2, 1),
(3, 'Brave New World', 3, 49, 'Paperback', 'English', 27, 10.27, 'https://images-na.ssl-images-amazon.com/images/I/41l%2B4UobkRL._SX325_BO1,204,203,200_.jpg', 6, 3, 1),
(4, 'Murder on the Orient Express', 4, 157, 'Paperback', 'English', 8, 9.76, 'https://images-na.ssl-images-amazon.com/images/I/51%2B2QZIRWfL._SX308_BO1,204,203,200_.jpg', 6, 4, 1),
(5, 'The Hitchhiker\'s Guide to the Galaxy', 5, 134, 'Paperback', 'English', 27, 8.57, 'https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9780/3453/9780345391803.jpg', 3, 5, 1),
(6, 'Earthsea : The First Four Books: A Wizard of Earthsea * The Tombs of Atuan * The Farthest Shore * Tehanu', 6, 160, 'Paperback', 'English', 27, 22.35, 'https://images-na.ssl-images-amazon.com/images/I/91LNLpM2skL.jpg', 6, 1, 0),
(7, 'Artemis', 7, 128, 'Paperback', 'English', 27, 21.06, 'https://images.gr-assets.com/books/1494273579l/34928122.jpg', 6, 6, 0),
(8, 'Dawn of the New Everything : A Journey Through Virtual Reality', 8, 190, 'Paperback', 'English', 32, 20.06, 'https://www.penguin.co.uk/content/dam/catalogue/pim/editions/154/9781847923523/cover.jpg', 6, 3, 0),
(9, 'World War Z : An Oral History of the Zombie War', 9, 8, 'Paperback', 'English', 27, 11.03, 'https://upload.wikimedia.org/wikipedia/en/7/76/World_War_Z_book_cover.jpg', 3, 3, 0),
(10, 'The Zombie Survival Guide', 9, 87, 'Paperback', 'English', 21, 16.75, 'https://images-na.ssl-images-amazon.com/images/I/51P-197df6L._SX331_BO1,204,203,200_.jpg', 3, 3, 0),
(11, 'The Art of War', 10, 85, 'Paperback', 'English', 36, 5.48, 'https://images-na.ssl-images-amazon.com/images/I/41eTYPIKfwL._SX367_BO1,204,203,200_.jpg', 10, 4, 0),
(12, 'A Brief History Of Time : From Big Bang To Black Holes', 11, 50, 'Paperback', 'English', 26, 12.93, 'https://images-na.ssl-images-amazon.com/images/I/51XWyS363pL._SX311_BO1,204,203,200_.jpg', 6, 7, 0),
(13, 'Welcome to the Universe : An Astrophysical Tour', 12, 139, 'Paperback', 'English', 26, 40.49, 'https://images-na.ssl-images-amazon.com/images/I/81%2Bb0bnYzPL.jpg', 3, 8, 0),
(14, 'Xanathar\'s Guide to Everything', 13, 105, 'Hardback', 'English', 38, 39.13, 'https://images-na.ssl-images-amazon.com/images/I/61%2BQF%2BzcsRL._SX379_BO1,204,203,200_.jpg', 3, 9, 0),
(15, 'Dungeons & Dragons Player\'s Handbook (Dungeons & Dragons Core Rulebooks)', 14, 71, 'Hardback', 'English', 38, 42.84, 'https://www.docdroid.net/file/view/diJShFA/dd-5e-players-handbook.jpg', 3, 9, 0),
(16, 'Simon vs. the Homo Sapiens Agenda', 15, 164, 'Hardback', 'English', 25, 15.74, 'https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9780/0628/9780062839701.jpg', 3, 10, 1),
(17, 'Astrophysics for People in a Hurry', 12, 99, 'Hardback', 'English', 26, 17.04, 'https://images-na.ssl-images-amazon.com/images/I/51kyOGIHeIL._SX306_BO1,204,203,200_.jpg', 3, 11, 0),
(18, 'Python Crash Course', 16, 69, 'Paperback', 'English', 32, 33, 'https://images-na.ssl-images-amazon.com/images/I/51PZ6YIfe9L._SX376_BO1,204,203,200_.jpg', 3, 12, 0),
(19, 'Turning Japanese', 17, 64, 'Paperback', 'English', 25, 23.37, 'https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9780/3123/9780312378806.jpg', 3, 13, 0),
(20, 'The Thirteenth Tale', 18, 174, 'Hardback', 'English', 8, 16.39, 'https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9780/7432/9780743298032.jpg', 6, 14, 1);

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
(9, 'Wizards of the Coast', 3),
(10, 'Balzer & Bray/Harperteen', 3),
(11, 'WW Norton & Co', 3),
(12, 'No Starch Press', 3),
(13, 'Thomas Dunne Books', 3),
(14, 'SIMON & SCHUSTER', 6);

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
  MODIFY `authorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bookID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  MODIFY `pubID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
