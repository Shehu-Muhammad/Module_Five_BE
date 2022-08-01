-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 01, 2022 at 03:47 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Movies_Module_Five`
--

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `movieId` int(11) NOT NULL,
  `genreId` int(11) NOT NULL,
  `ratingId` int(11) NOT NULL,
  `releaseYear` int(11) NOT NULL,
  `run_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `movieId`, `genreId`, `ratingId`, `releaseYear`, `run_time`) VALUES
(1, 1, 3, 2, 2022, 101),
(2, 2, 3, 2, 2022, 122),
(3, 3, 2, 3, 2021, 148),
(4, 4, 8, 3, 2021, 131),
(5, 5, 15, 3, 2021, 158),
(6, 6, 7, 2, 2021, 148),
(7, 7, 2, 2, 2021, 97),
(8, 8, 7, 2, 2021, 156),
(9, 9, 1, 2, 2021, 168),
(10, 10, 3, 2, 2021, 121);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `name`) VALUES
(1, 'Horror'),
(2, 'Sci-Fi'),
(3, 'Action'),
(4, 'Comedy'),
(5, 'Drama'),
(6, 'Thriller'),
(7, 'Fantasy'),
(8, 'Adventure'),
(9, 'Psychological Thriller'),
(10, 'War'),
(11, 'Mystery'),
(12, 'Anime'),
(13, 'Documentary'),
(14, 'Western'),
(15, 'Crime'),
(16, 'Superhero'),
(17, 'Musical'),
(18, 'Suspense'),
(19, 'Coming of Age'),
(20, 'History'),
(21, 'Family'),
(22, 'Romance'),
(23, 'Biography'),
(24, 'Dark Comedy'),
(25, 'Gangster');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`) VALUES
(1, 'Dog'),
(2, '355'),
(3, 'Matrix Resurrections'),
(4, 'The King\'s Man'),
(5, 'House of Gucci'),
(6, 'Spider-man: No Way Home'),
(7, 'Venom: Let There Be Carnage'),
(8, 'Eternals'),
(9, 'Old'),
(10, 'Snake Eyes');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `rating` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `rating`) VALUES
(1, 'PG'),
(2, 'PG-13'),
(3, 'R'),
(4, 'G'),
(5, 'NC-17');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `movieId` int(11) NOT NULL,
  `score` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `userId`, `movieId`, `score`) VALUES
(1, 1, 1, 6.8),
(2, 2, 2, 5.2),
(3, 3, 3, 5.7),
(4, 4, 4, 6.4),
(5, 5, 5, 6.7),
(6, 6, 6, 8.7),
(7, 7, 7, 6),
(8, 8, 8, 6.4),
(9, 9, 9, 5.8),
(10, 10, 10, 5.4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`) VALUES
(1, 'Jorge', 'Ellis', 'ellis@gmail.com'),
(2, 'Erma', 'Jefferson', 'jefferson@gmail.com'),
(3, 'Marlon', 'Gross', 'gross@gmail.com'),
(4, 'Jessie', 'Burton', 'burton@gmail.com'),
(5, 'Otis', 'Morris', 'morris@gmail.com'),
(6, 'Judy', 'Alvarado', 'alvarado@gmail.com'),
(7, 'Tommy', 'Green', 'green@gmail.com'),
(8, 'William', 'Banks', 'banks@gmail.com'),
(9, 'Garry', 'Hawkins', 'hawkins@gmail.com'),
(10, 'Viola', 'Steele', 'steele@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movieId` (`movieId`),
  ADD KEY `genreId` (`genreId`),
  ADD KEY `ratingId` (`ratingId`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `movieId` (`movieId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `details`
--
ALTER TABLE `details`
  ADD CONSTRAINT `details_ibfk_1` FOREIGN KEY (`movieId`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `details_ibfk_2` FOREIGN KEY (`genreId`) REFERENCES `genre` (`id`),
  ADD CONSTRAINT `details_ibfk_3` FOREIGN KEY (`ratingId`) REFERENCES `ratings` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`movieId`) REFERENCES `movies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
