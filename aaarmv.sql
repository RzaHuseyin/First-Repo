-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2017 at 04:28 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `udemy`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `Cat_Name` varchar(50) NOT NULL,
  `level` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `Cat_Name`, `level`) VALUES
(1, 'Development', 0),
(2, 'Business', 0),
(3, 'IT & Software', 0),
(4, 'Office Productivity', 0),
(5, 'Personal Development', 0),
(6, 'Design', 0),
(7, 'Marketing', 0),
(8, 'Lifestyle', 0),
(9, 'Photography', 0),
(10, 'Health&Fitness', 0),
(11, 'Teacher Traninig', 0),
(12, 'All development', 1),
(13, 'Web development', 1),
(14, 'Mobile apps', 1),
(15, 'Programing language', 1),
(16, 'Game development', 1),
(17, 'Finance', 2),
(18, 'Sales', 2),
(19, 'Strategy', 2),
(20, 'Operatinons', 2),
(21, 'IT certfication', 2),
(22, 'Hardware', 3),
(23, 'Microsoft', 3),
(24, 'Apple', 3),
(25, 'Google', 3),
(26, 'Operating system', 3),
(27, 'Oracle', 4);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `Commentary_Text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `User_id`, `Commentary_Text`) VALUES
(1, 2, 'bu mali beyendim'),
(2, 1, 'beyenmedim'),
(3, 3, 'eladi'),
(4, 2, 'super'),
(5, 2, 'Super'),
(6, 3, 'Bele de'),
(7, 4, 'Ela'),
(8, 1, 'Danisa eladi');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Price_ID` int(11) NOT NULL,
  `Description` text NOT NULL,
  `AddDate` datetime NOT NULL,
  `UpDate` datetime NOT NULL,
  `requirements` text NOT NULL,
  `Features` varchar(50) NOT NULL,
  `Language_id` int(11) NOT NULL,
  `CatName_id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `comment_lists_id` int(11) NOT NULL,
  `View_id` int(11) NOT NULL,
  `Editor_id` int(11) NOT NULL,
  `Instructor_id` int(11) NOT NULL,
  `CuriculumForCourse_id` int(11) NOT NULL,
  `MediaFile_id` int(11) NOT NULL,
  `rating_id` int(11) NOT NULL,
  `enrolled` int(11) NOT NULL,
  `access mobile&TV` tinyint(1) NOT NULL,
  `cerfficate` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `Name`, `Price_ID`, `Description`, `AddDate`, `UpDate`, `requirements`, `Features`, `Language_id`, `CatName_id`, `User_id`, `comment_lists_id`, `View_id`, `Editor_id`, `Instructor_id`, `CuriculumForCourse_id`, `MediaFile_id`, `rating_id`, `enrolled`, `access mobile&TV`, `cerfficate`) VALUES
(0, 'Complete Java Masterclass', 'Learn to master Java 8 core development step', 1, 'Join over 75,000 students just like you who’re having massive success with their Java 8 programs using this exact course (and learning to code the right way)', '2013-04-11 06:21:00', '2013-06-18 00:00:00', 'A computer with either Windows, Mac or Linux to install all the free software and tools needed to build your new apps (I provide specific videos on installations for each platform)', 'How to build creative, fully-functional', 4, 1, 9, 4, 2, 4, 4, 3, 1, 4, 0, 1, 1),
(2, 'Learn to Code by Making Games', 'Learn C# using Unity ', 3, 'The course is continually updated, a major improvement was made in Glitch Garden in March 2016, and over 30 new quiz questions were added in June 2016.\r\n\r\nThis is the online game development school that was a runaway success on Kickstarter. As a result there are English closed-captions throughout.', '2015-04-12 00:00:00', '2015-06-04 00:00:00', 'Mac or PC capable of running Unity 3D.\r\nA copy of Unity 4.6.3 for early content, free from Unity.\r\nA copy of Unity 5 for later content, also free.', 'Learn C#, a powerful modern language.', 6, 1, 12, 5, 5, 5, 6, 3, 2, 5, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `curiculumcourse`
--

CREATE TABLE `curiculumcourse` (
  `id` int(11) NOT NULL,
  `introduction` text NOT NULL,
  `plan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `curiculumcourse`
--

INSERT INTO `curiculumcourse` (`id`, `introduction`, `plan_id`) VALUES
(1, 'Setup', 1),
(2, 'First Steps', 2),
(3, 'Expressions, Statements, Code blocks, Methods and more', 3),
(4, 'Classes, Constructors and Inheritance', 6),
(5, 'Abstract Classes & Interfaces', 5);

-- --------------------------------------------------------

--
-- Table structure for table `editor`
--

CREATE TABLE `editor` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Surname` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `E-mail` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `AddDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `editor`
--

INSERT INTO `editor` (`id`, `Name`, `Surname`, `Password`, `Phone`, `E-mail`, `Address`, `AddDate`) VALUES
(1, 'Con ', 'Bon', '456456', '0154684', 'asds@asd.com', 'asdasd242', '2016-03-15 02:10:13'),
(2, 'Ted', 'Bon', '54654', '564564', 'sadasd@csa.com', 'asdsfdga', '2017-04-10 12:13:31'),
(3, 'Maxililian', 'Schwarz', '5461324', '324134', 'sdfs@cvmnn.com', 'assdf54361', '2015-10-14 06:30:25'),
(4, 'Alan', 'Jarvis', '21545', '65462357', 'asdfs@sad.az', 'asd36', '2016-12-14 10:25:25'),
(5, 'Jeri', 'Hill', '521475132', '3453434', 'fdhvbh@sds.as', 'sdf4554153', '2017-04-10 08:24:25'),
(6, 'Henry', 'Edwards', '234234', '32453245', 'dfgtwerg@dsf.sdf', '234ref', '2001-11-28 09:21:26'),
(7, 'Venessa', 'Van', '2345435', '34534534', 'dfvge@dfg.ss', 'aser453', '2003-04-09 08:18:00');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `id` int(11) NOT NULL,
  `Adi` varchar(50) NOT NULL,
  `rating_id` int(11) NOT NULL,
  `reviews` int(11) NOT NULL,
  `students` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`id`, `Adi`, `rating_id`, `reviews`, `students`) VALUES
(1, 'Keith', 4, 23423, 23),
(2, 'Helen', 3, 6142, 22),
(3, 'Ben', 5, 156, 33),
(4, 'Jon', 3, 135, 99),
(5, 'Keyt', 5, 3123, 6),
(6, 'Holmes', 4, 5466, 102),
(7, 'Sharlck', 4, 654, 36);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `Choose_Language` varchar(50) NOT NULL,
  `captions` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `Choose_Language`, `captions`) VALUES
(1, 'Turkish', 'English'),
(2, 'Turkish', 'Russian'),
(3, 'English', 'Turkish'),
(4, 'Russian', 'Turkish'),
(5, 'English', 'Russian'),
(6, 'Russian', 'English'),
(7, 'Arabic', 'Turkish'),
(8, 'Arabic', 'French'),
(9, 'Russian', 'Arabic'),
(10, 'Arabic', 'Russian'),
(11, 'Arabic', 'Latin'),
(12, 'Russian', 'French'),
(13, 'Arabic', 'Azerbaijani'),
(14, 'French', 'Azerbaijani'),
(15, 'Russian', 'Azerbaijani');

-- --------------------------------------------------------

--
-- Table structure for table `mediafiles`
--

CREATE TABLE `mediafiles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `cover_foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mediafiles`
--

INSERT INTO `mediafiles` (`id`, `name`, `type`, `cover_foto`) VALUES
(1, 'Video1', 'mp4', 'foto1'),
(2, 'Video1', 'mp4', 'foto2'),
(3, 'Video1', 'mp4', 'foti5'),
(4, 'Video1', 'mp4', 'foto 3'),
(5, 'text1', 'txt', 'foto 4'),
(6, 'text2', 'txt', 'foto 3'),
(7, 'text3', 'txt', 'foto 3'),
(8, 'Sound2', 'mp3', 'foto 3'),
(9, 'Sound4', 'mp3', 'foto 6'),
(10, 'Sound5', 'mp3', 'foto 5');

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id`, `name`, `description`, `time`) VALUES
(1, 'How to Use This Section Of The Course', 'In this video we will go through an overview of the Java Development Kit (JDK) and IntelliJ, the Integrated Development Environment (IDE) we are using in the course.\r\n', '09:25:25'),
(2, 'First Steps', 'An introduction to this section on downloading and installing the tools for Java development.', '00:09:23'),
(3, 'Variables, Datatypes and Operators', 'In this video we will be talking about the most common data types use in Java which are the primitive data types. We will focus on byte, short, int and long. You will learn how to declare and use these, and what they are used for, and the range of values you can store in them. Finally, you will get to test your new found knowledge with a challenge at the end.', '00:03:25'),
(4, 'Expressions, Statements, Code blocks', 'An introduction to this section of the course dealing with Expressions, Statements, Code blocks and Methods.', '08:03:36'),
(5, 'Control Flow Statements', 'Get the basic understanding on what this section will cover with regards to Control Flow Statments', '08:03:00'),
(6, 'Classes, Constructors and Inheritance', 'An introduction to this section of the course dealing with Object Oriented Programming, specifically, Classes, Objects, Constructors and Inheritance.', '00:16:22');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `id` int(11) NOT NULL,
  `price` int(50) NOT NULL,
  `free` tinyint(1) NOT NULL,
  `discount` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`id`, `price`, `free`, `discount`) VALUES
(1, 56, 0, 0),
(2, 32, 0, 0),
(3, 34, 0, 0),
(4, 543, 0, 0),
(5, 34, 0, 0),
(6, 534, 0, 0),
(7, 545, 0, 0),
(8, 0, 1, 0),
(9, 0, 1, 0),
(10, 343, 0, 36),
(11, 233, 0, 50),
(12, 654, 0, 60),
(13, 65, 0, 20),
(14, 645, 0, 33);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `count` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `count`) VALUES
(1, 5),
(2, 4),
(3, 4),
(4, 4),
(5, 5),
(6, 2),
(7, 3),
(8, 3),
(9, 2),
(10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Surname` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `E-mail` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `AddDate` datetime NOT NULL,
  `download_id` int(11) NOT NULL,
  `view_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Name`, `Surname`, `Phone`, `E-mail`, `Address`, `Password`, `AddDate`, `download_id`, `view_id`) VALUES
(7, 'Ahmed', 'Baba', '3146343', 'asdasd@asd.a', 'sadas4d45a', '331687', '2011-04-11 06:17:20', 5, 1),
(8, 'Fehle', 'Baba', '9644554', 'sdssdf@sdf.com', 'asf978', '63456', '2010-03-11 00:59:00', 5, 2),
(9, 'Sahmar', 'Oruclu', '6872643', 'sdfsdf@gmail.com', 'sdf879', 'sd6f879', '2013-04-02 00:00:00', 7, 2),
(10, 'Surxay', 'Balayev', '97864531', 'asdasd.box.az', 'awd6879aw', 'as5d5ad', '2011-04-10 00:00:00', 8, 1),
(11, 'Medine', 'Hesenova', '654689', 'asdasd@asdad.com', 'asd789a', 'sdf456sd4f`', '2017-04-11 00:00:00', 4, 1),
(12, 'Zulfiye', 'Mescidova', '6263', 'asdasd@asd.cds', 'asdasd56', 'asd46as6d', '2017-04-18 09:24:24', 4, 2),
(13, 'Sehribanu', 'Mamedova', '6843456', 'asdsad@asd.ad', 'asdasd96', 'asd45as', '2017-04-09 07:19:21', 4, 2),
(14, 'Ferhad', 'Taqiyev', '6874633', 'asdasd@adsd.cs', 'as6d4', 'as6d45sa5d', '2014-04-10 08:44:53', 5, 1),
(15, 'Sahib', 'Qarayev', '987645', 'ljkhkd@cddf.cf', 'sadf9879', '9876451', '2017-04-05 10:22:23', 4, 2),
(16, 'Tebriz', 'Babayev', '8787964532', 'sadff@asd.com', 'asdf987', '9879645', '2009-04-05 12:33:32', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_download_lists`
--

CREATE TABLE `user_download_lists` (
  `id` int(11) NOT NULL,
  `Yukleme_sayi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_download_lists`
--

INSERT INTO `user_download_lists` (`id`, `Yukleme_sayi`) VALUES
(1, 234),
(2, 234),
(3, 4234),
(4, 23),
(5, 23423),
(6, 324),
(7, 567),
(8, 5675);

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `set_views` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `views`, `set_views`) VALUES
(1, 232, 0),
(2, 123, 0),
(3, 324, 1),
(4, 234234, 1),
(5, 234, 1),
(6, 4353, 0),
(7, 3423, 0);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Courses_fk0` (`Price_ID`),
  ADD KEY `Courses_fk1` (`Language_id`),
  ADD KEY `Courses_fk3` (`CatName_id`),
  ADD KEY `Courses_fk4` (`User_id`),
  ADD KEY `Courses_fk5` (`comment_lists_id`),
  ADD KEY `Courses_fk6` (`View_id`),
  ADD KEY `Courses_fk7` (`Editor_id`),
  ADD KEY `Courses_fk8` (`Instructor_id`),
  ADD KEY `Courses_fk9` (`CuriculumForCourse_id`),
  ADD KEY `Courses_fk10` (`MediaFile_id`),
  ADD KEY `Courses_fk11` (`rating_id`);

--
-- Indexes for table `curiculumcourse`
--
ALTER TABLE `curiculumcourse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plan_id` (`plan_id`);

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
  ADD KEY `rating_id` (`rating_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mediafiles`
--
ALTER TABLE `mediafiles`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `download_id` (`download_id`),
  ADD KEY `view_id` (`view_id`);

--
-- Indexes for table `user_download_lists`
--
ALTER TABLE `user_download_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `curiculumcourse`
--
ALTER TABLE `curiculumcourse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `editor`
--
ALTER TABLE `editor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `mediafiles`
--
ALTER TABLE `mediafiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `user_download_lists`
--
ALTER TABLE `user_download_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`Price_ID`) REFERENCES `price` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `courses_ibfk_10` FOREIGN KEY (`View_id`) REFERENCES `views` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `courses_ibfk_11` FOREIGN KEY (`comment_lists_id`) REFERENCES `comment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `courses_ibfk_12` FOREIGN KEY (`Language_id`) REFERENCES `language` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `courses_ibfk_13` FOREIGN KEY (`CuriculumForCourse_id`) REFERENCES `curiculumcourse` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `courses_ibfk_3` FOREIGN KEY (`CatName_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `courses_ibfk_4` FOREIGN KEY (`Editor_id`) REFERENCES `editor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `courses_ibfk_5` FOREIGN KEY (`Instructor_id`) REFERENCES `instructor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `courses_ibfk_6` FOREIGN KEY (`MediaFile_id`) REFERENCES `mediafiles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `courses_ibfk_7` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `courses_ibfk_9` FOREIGN KEY (`User_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `curiculumcourse`
--
ALTER TABLE `curiculumcourse`
  ADD CONSTRAINT `curiculumcourse_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `plan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `instructor`
--
ALTER TABLE `instructor`
  ADD CONSTRAINT `instructor_ibfk_1` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`download_id`) REFERENCES `user_download_lists` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`view_id`) REFERENCES `views` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
