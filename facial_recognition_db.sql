-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:8080
-- Generation Time: Mar 27, 2024 at 10:48 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `facial_recognition_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `user_id`, `timestamp`, `status`) VALUES
(1, 1, '2024-03-27 05:41:45', 'Present'),
(2, 9, '2024-03-27 09:07:04', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `name`, `start_date`, `end_date`) VALUES
(1, 'Computer Science BSc', '2023-10-16 13:05:04', '2024-03-30 13:05:04'),
(2, 'Business Analytics', '2024-03-03 00:00:00', '2025-02-27 00:00:00'),
(3, 'Social Sciences', '2023-07-03 00:00:00', '2025-11-27 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `user_id`, `name`, `email`, `year`, `course_id`) VALUES
(1, 1, 'Faran Zafar', 'farandeadz@gmail.com', 2023, 1),
(2, 5, 'Abdullah', 'testzdasdasd@gmail.com', 2023, 1),
(3, 6, 'asdfasdf', 'asdfasdfasdf@gmai.com', 2023, 1),
(4, 7, 'humpty', 'asdfasdfasdsfsdfdf@gmai.com', 2020, 1),
(5, 8, 'Faran', 'gucci@gmail.com', 2024, 1),
(6, 9, 'Elon Musk', 'elonMusk@gmail.com', 2024, 1),
(7, 10, 'Abdullah', 'info@purijet.com', 2025, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `user_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `user_type`) VALUES
(1, 'faran', '$2b$12$n00jFxWt3pNFZdRi3fiV5O8nxTI.0qS2bQ6535106hwc/KXCxnZMC', 'student'),
(2, 'test@gmail.com', '$2b$12$EBgL3BqTX5m02bktSnO78.3dt4XiGY8c3T5wkd2vS6kpaJSkvoqmq', 'student'),
(3, 'admin', '$2b$12$cXNX2pZaN45E5UBxWEu3Vuf2lNs4SKPsYi38kqIeNXZ1OVWw6haiW', 'admin'),
(5, 'testzdasdasd@gmail.com', '$2b$12$s1avQwlTfftTW/ss48zkrekuIc7BMfk0Qvddbbbbnt47ZzokaVfbG', 'student'),
(6, 'asdfasdfasdf@gmai.com', '$2b$12$bwsYl8Y7ZQ.bVsrhu9alpe9.gd30HE8GuSeB8i5IZWXHyvfzeMZoG', 'student'),
(7, 'asdfasdfasdsfsdfdf@gmai.com', '$2b$12$WIQjUF1kbMZKJ/GuAHlvku.mXh0rMbkLQhaAu3jgCPE6USVzwkRDS', 'student'),
(8, 'gucci@gmail.com', '$2b$12$.x9jiggTZbXBy5gr1tAKyOUjBZ/1Znj9J.XOjCC.Wea0VMJ3ixjTq', 'student'),
(9, 'elonMusk@gmail.com', '$2b$12$xAo3C4MzP/OLAOolOreIcu66OCRiGnEZH4oXFtUzuBuzZ4gEJnx0q', 'student'),
(10, 'info@purijet.com', '$2b$12$H2oj3BfMCq5Dj8ttxmSsr.4Goi/wQipOxlP0CbL8qRN.Ydysadga6', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`);

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
