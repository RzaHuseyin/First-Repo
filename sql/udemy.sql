-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2017 at 11:54 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `udemyrmv`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Development'),
(2, 'Business'),
(3, 'ItSoftware'),
(4, 'Office productivity'),
(5, 'Personal Development'),
(6, 'Design'),
(7, 'Marketing'),
(8, 'Lifestyle');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `comment_text` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `comment_text`, `user_id`) VALUES
(2, '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `name` text,
  `price_ID` int(11) DEFAULT NULL,
  `description` text,
  `adddate` datetime DEFAULT NULL,
  `update` datetime DEFAULT NULL,
  `requiement` text,
  `feature` text,
  `language_ID` int(11) DEFAULT NULL,
  `category_ID` int(11) NOT NULL,
  `subcategory_ID` int(11) DEFAULT NULL,
  `user_ID` int(11) DEFAULT NULL,
  `comment_ID` int(11) DEFAULT NULL,
  `view_ID` int(11) DEFAULT NULL,
  `editor_ID` int(11) DEFAULT NULL,
  `instructor_ID` int(11) DEFAULT NULL,
  `curiculum_ID` int(11) DEFAULT NULL,
  `mediafile_ID` int(11) DEFAULT NULL,
  `rating_ID` int(11) DEFAULT NULL,
  `access_mobil_TV` tinyint(1) DEFAULT NULL,
  `certificate` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `title`, `name`, `price_ID`, `description`, `adddate`, `update`, `requiement`, `feature`, `language_ID`, `category_ID`, `subcategory_ID`, `user_ID`, `comment_ID`, `view_ID`, `editor_ID`, `instructor_ID`, `curiculum_ID`, `mediafile_ID`, `rating_ID`, `access_mobil_TV`, `certificate`) VALUES
(1, 'The Web Developer Bootcamp', 'The only course you need to learn web development - HTML, CSS, JS, Node, and More!', 1, 'Hi! Welcome to the Web Developer Bootcamp, the only course you need to learn web development. There are a lot of options for online developer training, but this course is without a doubt the most comprehensive and effective on the market. Here\'s why:\r\n\r\nThis is the only online course taught by a professional bootcamp instructor.\r\n94% of my bootcamp students go on to get full-time developer jobs. Most of them are complete beginners when I start working with them.\r\nThe previous 2 bootcamp programs that I taught cost $14,000 and $21,000. This course is just as comprehensive but with brand new content for a fraction of the price.', '2017-05-12 00:00:00', '2017-05-13 00:00:00', 'Have a computer with Internet\r\nBe ready to learn an insane amount of awesome stuff\r\nPrepare to build real web apps!\r\nBrace yourself for stupid jokes about my dog Rusty', 'Make REAL web applications using cutting-edge technologies\r\nContinue to learn and grow as a developer, long after the course ends\r\nCreate a blog application from scratch using Express, MongoDB, and Semantic ', 1, 1, 6, 1, 2, 1, 1, 2, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `curiculum`
--

CREATE TABLE `curiculum` (
  `id` int(11) NOT NULL,
  `introduction` text,
  `plan_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `curiculum`
--

INSERT INTO `curiculum` (`id`, `introduction`, `plan_ID`) VALUES
(1, 'Intermediate CSS', 1),
(2, 'Creating a Tic Tac Toe Board', 2),
(3, 'Introduction to JavaScript', 3),
(4, 'Bootstrap', 4);

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id` int(11) NOT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id`, `count`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `editor`
--

CREATE TABLE `editor` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` text,
  `email` text,
  `adddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `editor`
--

INSERT INTO `editor` (`id`, `name`, `surname`, `password`, `phone`, `address`, `email`, `adddate`) VALUES
(1, 'Con ', 'Bon', '61456245', '26545234645', 'asdcfcs45d6f4', 'a6s54das6d4', '2017-04-11 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` text,
  `email` text,
  `add_date` datetime DEFAULT NULL,
  `view_ID` int(11) DEFAULT NULL,
  `user_ID` int(11) DEFAULT NULL,
  `rating_ID` int(11) DEFAULT NULL,
  `comment_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`id`, `name`, `surname`, `password`, `phone`, `address`, `email`, `add_date`, `view_ID`, `user_ID`, `rating_ID`, `comment_ID`) VALUES
(2, 'Adam', 'Jarvis', '5157524', '24523445', 'dsacrfsfdxsd', 'sefc4sdf', '2017-05-01 00:00:00', 1, 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `captions` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `name`, `captions`) VALUES
(1, '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `mediafile`
--

CREATE TABLE `mediafile` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `cover_photo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mediafile`
--

INSERT INTO `mediafile` (`id`, `name`, `type`, `cover_photo`) VALUES
(1, '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id`, `name`, `description`, `time`) VALUES
(1, 'HTML Basics', '\r\nIntroduction to MDN', '01:12:11'),
(2, 'HTML Boilerplate and Comments', 'HTML Boilerplate and Comments\r\n09:42\r\nBasic Tags', '00:09:42'),
(3, ' HTML Lists', 'HTML Lists Assignment  HTML Lists Assignment: SOLUTION', '00:08:11'),
(4, 'Text and Fonts', 'More Text and Fonts\r\nNote about Google Fonts', '00:07:13');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `free` tinyint(1) DEFAULT NULL,
  `discount` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`id`, `price`, `free`, `discount`) VALUES
(1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `avg_count` int(11) DEFAULT NULL,
  `user_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `avg_count`, `user_ID`) VALUES
(1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `category_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `name`, `category_ID`) VALUES
(6, 'All Development', 1),
(7, 'Web Development', 1),
(8, 'Mobile Apps', 1),
(9, 'Programming Languages`', 1),
(10, 'Game Development', 1),
(11, 'Databases', 1),
(12, 'Software', 1),
(13, 'Finance', 2),
(14, 'Sales', 2),
(15, 'IT cerfitication', 3),
(16, 'Hardware', 3),
(17, 'Microsoft', 4),
(18, 'Apple', 4),
(19, 'Google', 4),
(20, 'Productivity', 5);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` text,
  `email` text,
  `add_date` datetime DEFAULT NULL,
  `download_ID` int(11) DEFAULT NULL,
  `view_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `surname`, `password`, `phone`, `address`, `email`, `add_date`, `download_ID`, `view_ID`) VALUES
(1, 'Baba', 'Babayev', '20888846', '0515605650', 'Ismayilli. R.Soltanov kuc. ev 36', 'rzah1998@gmail.com', '2017-05-01 18:11:16', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `view`
--

CREATE TABLE `view` (
  `id` int(11) NOT NULL,
  `count` int(11) DEFAULT NULL,
  `set_view` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `view`
--

INSERT INTO `view` (`id`, `count`, `set_view`) VALUES
(1, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `price_ID` (`price_ID`,`language_ID`,`subcategory_ID`,`user_ID`,`comment_ID`,`view_ID`,`editor_ID`,`instructor_ID`,`curiculum_ID`,`mediafile_ID`,`rating_ID`),
  ADD KEY `language_ID` (`language_ID`),
  ADD KEY `subcategory_ID` (`subcategory_ID`),
  ADD KEY `view_ID` (`view_ID`),
  ADD KEY `user_ID` (`user_ID`),
  ADD KEY `instructor_ID` (`instructor_ID`),
  ADD KEY `rating_ID` (`rating_ID`),
  ADD KEY `comment_ID` (`comment_ID`),
  ADD KEY `mediafile_ID` (`mediafile_ID`),
  ADD KEY `curiculum_ID` (`curiculum_ID`),
  ADD KEY `editor_ID` (`editor_ID`),
  ADD KEY `category_ID` (`category_ID`);

--
-- Indexes for table `curiculum`
--
ALTER TABLE `curiculum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plan_ID` (`plan_ID`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `editor`
--
ALTER TABLE `editor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `view_ID` (`view_ID`,`user_ID`,`rating_ID`,`comment_ID`),
  ADD KEY `rating_ID` (`rating_ID`),
  ADD KEY `comment_ID` (`comment_ID`),
  ADD KEY `user_ID` (`user_ID`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mediafile`
--
ALTER TABLE `mediafile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_ID` (`user_ID`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_ID` (`category_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `download_ID` (`download_ID`,`view_ID`),
  ADD KEY `view_ID` (`view_ID`);

--
-- Indexes for table `view`
--
ALTER TABLE `view`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `curiculum`
--
ALTER TABLE `curiculum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `editor`
--
ALTER TABLE `editor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mediafile`
--
ALTER TABLE `mediafile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `view`
--
ALTER TABLE `view`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`price_ID`) REFERENCES `price` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `course_ibfk_10` FOREIGN KEY (`curiculum_ID`) REFERENCES `curiculum` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `course_ibfk_11` FOREIGN KEY (`editor_ID`) REFERENCES `editor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `course_ibfk_12` FOREIGN KEY (`category_ID`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `course_ibfk_2` FOREIGN KEY (`language_ID`) REFERENCES `language` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `course_ibfk_3` FOREIGN KEY (`subcategory_ID`) REFERENCES `subcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `course_ibfk_4` FOREIGN KEY (`view_ID`) REFERENCES `view` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `course_ibfk_5` FOREIGN KEY (`user_ID`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `course_ibfk_6` FOREIGN KEY (`instructor_ID`) REFERENCES `instructor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `course_ibfk_7` FOREIGN KEY (`rating_ID`) REFERENCES `rating` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `course_ibfk_8` FOREIGN KEY (`comment_ID`) REFERENCES `comment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `course_ibfk_9` FOREIGN KEY (`mediafile_ID`) REFERENCES `mediafile` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `curiculum`
--
ALTER TABLE `curiculum`
  ADD CONSTRAINT `curiculum_ibfk_1` FOREIGN KEY (`plan_ID`) REFERENCES `plan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `instructor`
--
ALTER TABLE `instructor`
  ADD CONSTRAINT `instructor_ibfk_1` FOREIGN KEY (`rating_ID`) REFERENCES `rating` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `instructor_ibfk_2` FOREIGN KEY (`comment_ID`) REFERENCES `comment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `instructor_ibfk_3` FOREIGN KEY (`view_ID`) REFERENCES `view` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `instructor_ibfk_4` FOREIGN KEY (`user_ID`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`category_ID`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`download_ID`) REFERENCES `download` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`view_ID`) REFERENCES `view` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
