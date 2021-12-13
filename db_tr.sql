-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2021 at 02:56 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tr`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_classes`
--

CREATE TABLE `table_classes` (
  `id` int(11) NOT NULL,
  `subject_id` varchar(255) NOT NULL,
  `lecturer_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `end_time` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_classes`
--

INSERT INTO `table_classes` (`id`, `subject_id`, `lecturer_id`, `name`, `room`, `day`, `start_time`, `end_time`, `size`, `is_active`) VALUES
(1, 'IN315', '972019012', 'A', 'FTI464', 'Selasa', '08:30', '10:30', 40, 1),
(2, 'PS312', '972019012', 'S', 'FTI363', 'Rabu', '09:00', '10:00', 40, 1),
(3, 'IG316', '972019012', 'T', 'FTI469', 'Selasa', '07:00', '08:00', 35, 1),
(4, 'IN315', '972019012', 'C', 'FTI464', 'Jumat', '07:00', '08:00', 40, 1),
(5, 'PS312', '972019252', 'A', 'FTI363', 'Senin', '07:00', '08:00', 40, 1);

-- --------------------------------------------------------

--
-- Table structure for table `table_class_users`
--

CREATE TABLE `table_class_users` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `status` varchar(5) NOT NULL,
  `mark` varchar(5) DEFAULT NULL,
  `is_taken` tinyint(1) NOT NULL,
  `year_taken` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `table_subjects`
--

CREATE TABLE `table_subjects` (
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `major` varchar(255) NOT NULL,
  `sks_a` int(11) NOT NULL,
  `sks_b` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_subjects`
--

INSERT INTO `table_subjects` (`code`, `name`, `major`, `sks_a`, `sks_b`) VALUES
('IG316', 'Pengkajian Prosa Inggris', '39 - S1 Sastra Inggris', 3, 4),
('IN315', 'Pemrograman Berbasis Platform', '67 - S1 Teknik Informatika', 4, 5),
('PS312', 'Psikologi Klinis', '80 - S1 Psikologi', 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `table_users`
--

CREATE TABLE `table_users` (
  `nim` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `origin` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_users`
--

INSERT INTO `table_users` (`nim`, `password`, `name`, `address`, `origin`, `contact`, `role`) VALUES
('672019012', 'test1234', 'Evan', 'tes', 'tes', 'tes', 0),
('802019031', 'test1234', 'Alvin', 'tes', 'tes', 'tes', 0),
('972019012', 'test1234', 'DJ Evan', 'tes', 'Surabaya', 'tes', 2),
('972019252', 'test1234', 'Gruda Sakti', 'Jl Diponegoro', 'Klaseman', '08123456789', 2),
('admin', 'test1234', 'admin', 'tes', 'tes', 'tes', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_classes`
--
ALTER TABLE `table_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `table_classes_fk0` (`subject_id`),
  ADD KEY `table_classes_fk1` (`lecturer_id`);

--
-- Indexes for table `table_class_users`
--
ALTER TABLE `table_class_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `table_class_details_fk0` (`class_id`),
  ADD KEY `table_class_details_fk1` (`student_id`);

--
-- Indexes for table `table_subjects`
--
ALTER TABLE `table_subjects`
  ADD PRIMARY KEY (`code`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `table_users`
--
ALTER TABLE `table_users`
  ADD PRIMARY KEY (`nim`),
  ADD UNIQUE KEY `nim` (`nim`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_classes`
--
ALTER TABLE `table_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `table_class_users`
--
ALTER TABLE `table_class_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `table_classes`
--
ALTER TABLE `table_classes`
  ADD CONSTRAINT `table_classes_fk0` FOREIGN KEY (`subject_id`) REFERENCES `table_subjects` (`code`) ON DELETE CASCADE,
  ADD CONSTRAINT `table_classes_fk1` FOREIGN KEY (`lecturer_id`) REFERENCES `table_users` (`nim`) ON DELETE CASCADE;

--
-- Constraints for table `table_class_users`
--
ALTER TABLE `table_class_users`
  ADD CONSTRAINT `table_class_details_fk0` FOREIGN KEY (`class_id`) REFERENCES `table_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `table_class_details_fk1` FOREIGN KEY (`student_id`) REFERENCES `table_users` (`nim`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
