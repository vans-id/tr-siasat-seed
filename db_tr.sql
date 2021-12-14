-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2021 at 07:49 AM
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
(4, 'EN123', '0625038501', 'A', 'F333', 'Kamis', '09:00', '11:00', 40, 0),
(6, 'EN123', '0604117201', 'B', 'F333', 'Kamis', '11:00', '13:00', 40, 0),
(7, 'EN351', '0626077302', 'A', 'F333', 'Senin', '15:00', '17:00', 40, 0),
(8, 'EN351', '0604089201', 'B', 'F200', 'Rabu', '15:00', '17:00', 40, 0),
(9, 'EN263', '0628096202', 'A', 'F117', 'Selasa', '13:00', '15:00', 40, 0),
(10, 'EN263', '0608039101', 'B', 'F117', 'Selasa', '10:00', '12:00', 40, 0),
(11, 'EN121', '0627098702', 'A', 'F200', 'Rabu', '10:00', '12:00', 40, 0),
(12, 'EN121', '0627098702', 'B', 'F329', 'Senin', '15:00', '17:00', 40, 0),
(13, 'EN472', '0621028502', 'A', 'F111', 'Kamis', '16:00', '18:00', 40, 0),
(14, 'EN472', '0626098001', 'B', 'F329', 'Senin', '09:00', '11:00', 40, 0),
(15, 'EN477', '0626077302', 'A', 'F231', 'Senin', '11:00', '13:00', 40, 0),
(16, 'EN477', '0625038501', 'B', 'F329', 'Kamis', '07:00', '09:00', 40, 0),
(17, 'EN355', '0624078905', 'A', 'F306', 'Kamis', '09:00', '11:00', 40, 1),
(18, 'EN355', '0624078905', 'B', 'F306', 'Rabu', '09:00', '11:00', 40, 1),
(19, 'EN218', '0622018001', 'A', 'F331', 'Jumat', '13:00', '15:00', 40, 1),
(20, 'EN218', '0602018901', 'B', 'F455', 'Jumat', '15:00', '17:00', 40, 1),
(21, 'EN324', '0626098001', 'A', 'F455', 'Selasa', '09:00', '12:00', 40, 1),
(22, 'EN324', '0604107403', 'B', 'F455', 'Rabu', '13:00', '15:00', 40, 1),
(23, 'EN342', '0604117201', 'A', 'F331', 'Rabu', '08:00', '10:00', 40, 1),
(24, 'EN342', '0604089201', 'B', 'F111', 'Senin', '07:00', '09:00', 40, 1),
(25, 'IN131', '55905', 'A', 'FTI504', 'Kamis', '09:00', '11:00', 40, 0),
(26, 'IN131', '55906', 'B', 'FTI300', 'Kamis', '11:00', '13:00', 40, 0),
(27, 'IN335', '80508', 'A', 'FTI329', 'Selasa', '13:00', '16:00', 40, 1),
(28, 'IN335', '67507', 'B', 'FTI306', 'Jumat', '13:00', '16:00', 40, 1),
(29, 'IN234', '67938', 'A', 'FTI331', 'Kamis', '16:00', '19:00', 40, 0),
(30, 'IN234', '67938', 'B', 'FTI331', 'Rabu', '10:00', '13:00', 40, 0),
(31, 'IN315', '67005', 'A', 'FTI455', 'Rabu', '09:00', '12:00', 40, 1),
(32, 'IN315', '67005', 'B', 'FTI455', 'Kamis', '07:00', '10:00', 40, 1),
(33, 'IN231', '67530', 'A', 'FTI308', 'Jumat', '09:00', '12:00', 40, 0),
(34, 'IN231', '67501', 'B', 'FTI457', 'Kamis', '07:00', '10:00', 40, 0),
(35, 'IN232', '67507', 'A', 'FTI464', 'Jumat', '07:00', '10:00', 40, 0),
(36, 'IN232', '67507', 'B', 'FTI464', 'Rabu', '13:00', '15:00', 40, 0),
(37, 'IN133', '67973', 'A', 'FTI431', 'Rabu', '07:00', '09:00', 40, 0),
(38, 'IN133', '80502', 'B', 'FTI465', 'Senin', '07:00', '09:00', 40, 0),
(39, 'IN324', '80503', 'A', 'FTI504', 'Senin', '10:00', '13:00', 40, 1),
(40, 'IN324', '67002', 'B', 'FTI300', 'Selasa', '07:00', '09:00', 40, 1),
(41, 'IN334', '80002', 'A', 'FTI306', 'Selasa', '10:00', '13:00', 41, 1),
(42, 'IN334', '80513', 'B', 'FTI329', 'Jumat', '15:00', '17:00', 40, 1),
(43, 'IN314', '67501', 'A', 'FTI431', 'Selasa', '09:00', '12:00', 40, 1),
(44, 'IN314', '67530', 'B', 'FTI431', 'Kamis', '16:00', '16:00', 40, 1),
(45, 'PG322', '0625038501', 'A', 'G300', 'Senin', '09:00', '12:00', 40, 0),
(46, 'PG322', '13809', 'B', 'G311', 'Kamis', '09:00', '12:00', 40, 0),
(47, 'PG432', '0621028502', 'A', 'G321', 'Selasa', '15:00', '18:00', 40, 0),
(48, 'PG432', '0621028502', 'B', 'G321', 'Selasa', '09:00', '12:00', 40, 0),
(49, 'PG436', '55002', 'A', 'G430', 'Jumat', '13:00', '16:00', 41, 1),
(50, 'PG436', '55002', 'B', 'G430', 'Rabu', '13:00', '16:00', 39, 1),
(51, 'PG224', '0608039101', 'A', 'G400', 'Kamis', '13:00', '16:00', 40, 0),
(52, 'PG224', '67983', 'B', 'G345', 'Senin', '09:00', '12:00', 40, 0),
(53, 'PG233', '55904', 'A', 'G341', 'Rabu', '13:00', '16:00', 40, 0),
(54, 'PG233', '67973', 'B', 'G355', 'Jumat', '09:00', '12:00', 40, 0),
(55, 'PG427', '80502', 'A', 'G355', 'Jumat', '13:00', '15:00', 40, 1),
(56, 'PG427', '13809', 'B', 'G431', 'Selasa', '09:00', '12:00', 40, 1),
(57, 'PG434', '55906', 'A', 'G431', 'Selasa', '13:00', '15:00', 40, 1),
(58, 'PG434', '80514', 'B', 'G311', 'Rabu', '10:00', '13:00', 40, 1),
(59, 'PG523', '0626077302', 'A', 'G311', 'Rabu', '07:00', '10:00', 40, 1),
(60, 'PG523', '67001', 'B', 'G442', 'Jumat', '07:00', '10:00', 40, 1),
(61, 'PG527', '0013027701', 'A', 'G109', 'Rabu', '10:00', '13:00', 40, 1),
(62, 'PG527', '80522', 'B', 'G477', 'Selasa', '07:00', '9:00', 40, 1),
(63, 'PG222', '68948', 'A', 'G294', 'Kamis', '15:00', '17:00', 40, 0),
(64, 'PG222', '67528', 'B', 'G442', 'Senin', '07:00', '9:00', 40, 0);

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

--
-- Dumping data for table `table_class_users`
--

INSERT INTO `table_class_users` (`id`, `class_id`, `student_id`, `status`, `mark`, `is_taken`, `year_taken`) VALUES
(2, 11, '392019012', 'B', 'A', 0, '2019-2020/2'),
(4, 4, '392019012', 'B', 'A', 0, '2019-2020/1'),
(6, 19, '392019012', 'B', NULL, 1, '2019-2020/3'),
(8, 9, '392019012', 'B', 'A', 0, '2019-2020/1'),
(10, 21, '392019012', 'B', NULL, 1, '2019-2020/3'),
(12, 23, '392019012', 'B', NULL, 1, '2019-2020/3'),
(14, 7, '392019012', 'B', 'A', 0, '2019-2020/1'),
(18, 13, '392019012', 'B', 'A', 0, '2019-2020/2'),
(20, 15, '392019012', 'B', 'AB', 0, '2019-2020/2'),
(22, 25, '672019026', 'B', 'A', 0, '2019-2020/1'),
(23, 37, '672019026', 'B', 'A', 0, '2019-2020/2'),
(24, 33, '672019026', 'B', 'AB', 0, '2019-2020/2'),
(25, 35, '672019026', 'B', 'A', 0, '2019-2020/2'),
(26, 29, '672019026', 'B', 'AB', 0, '2019-2020/1'),
(27, 43, '672019026', 'B', NULL, 1, '2019-2020/3'),
(28, 31, '672019026', 'B', NULL, 1, '2019-2020/3'),
(29, 39, '672019026', 'B', NULL, 1, '2019-2020/3'),
(32, 63, '802019252', 'B', 'A', 0, '2019-2020/2'),
(33, 51, '802019252', 'B', 'A', 0, '2019-2020/1'),
(34, 53, '802019252', 'B', 'B', 0, '2019-2020/2'),
(35, 45, '802019252', 'B', 'A', 0, '2019-2020/1'),
(36, 55, '802019252', 'B', NULL, 1, '2019-2020/3'),
(37, 47, '802019252', 'B', 'AB', 0, '2019-2020/1'),
(38, 57, '802019252', 'B', NULL, 1, '2019-2020/3'),
(40, 59, '802019252', 'B', NULL, 1, '2019-2020/3'),
(41, 61, '802019252', 'B', NULL, 1, '2019-2020/3'),
(45, 17, '392019012', 'B', NULL, 0, '2020 - 2021 / 1'),
(47, 27, '672019026', 'B', NULL, 0, '2020 - 2021 / 1'),
(58, 50, '802019252', 'B', NULL, 0, '2020 - 2021 / 1');

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
('EN121', 'INTEGRATED COURSE', '39 - S1 Sastra Inggris', 3, 3),
('EN123', 'ADVANCED GRAMMAR', '39 - S1 Sastra Inggris', 3, 3),
('EN218', 'WRITING SKILLS', '39 - S1 Sastra Inggris', 3, 3),
('EN231', 'INTRO TO LITERATURE', '39 - S1 Sastra Inggris', 3, 4),
('EN232', 'INTRO TO PHILOSOPHY', '39 - S1 Sastra Inggris', 3, 3),
('EN263', 'CROSS CULTURAL UNDERSTANDING', '39 - S1 Sastra Inggris', 3, 4),
('EN324', 'RESEARCH METHODS ', '39 - S1 Sastra Inggris', 3, 4),
('EN325', 'RESEARCH METHODS', '39 - S1 Sastra Inggris', 3, 4),
('EN335', 'WORLDLIT.IN MULTICULTURAL PERSP', '39 - S1 Sastra Inggris', 3, 3),
('EN342', 'TRANSLATION THEORIES', '39 - S1 Sastra Inggris', 3, 4),
('EN351', 'CREATIVE WRITING: POETRY', '39 - S1 Sastra Inggris', 3, 4),
('EN354', 'JOURNALISM', '39 - S1 Sastra Inggris', 3, 3),
('EN355', 'TRAVEL WRITING', '39 - S1 Sastra Inggris', 3, 4),
('EN472', 'FINAL PROJECT/THESIS', '39 - S1 Sastra Inggris', 4, 5),
('EN477', 'INTERSHIP', '39 - S1 Sastra Inggris', 3, 3),
('IN131', 'BAHASA INDONESIA', '67 - S1 Teknik Informatika', 2, 2),
('IN132', 'PENDIDIKAN KEWARGANEGARAAN', '67 - S1 Teknik Informatika', 2, 2),
('IN133', 'SISTEM OPERASI', '67 - S1 Teknik Informatika', 4, 5),
('IN134', 'SISTEM DIGITAL', '67 - S1 Teknik Informatika', 4, 5),
('IN231', 'TEKNOLOGI JARINGAN', '67 - S1 Teknik Informatika', 3, 4),
('IN232', 'GRAFIKA KOMPUTER', '67 - S1 Teknik Informatika', 3, 4),
('IN233', 'REKAYASA PERANGKAT LUNAK', '67 - S1 Teknik Informatika', 3, 4),
('IN234', 'INTERAKSI MANUSIA DAN KOMPUTER', '67 - S1 Teknik Informatika', 3, 4),
('IN314', 'RSNA 1 (SERTIFIKASI)', '67 - S1 Teknik Informatika', 3, 3),
('IN315', 'PEMROGRAMAN BERORIENTASI PLATFORM', '67 - S1 Teknik Informatika', 3, 4),
('IN318', 'SISTEM BASIS DATA 2', '67 - S1 Teknik Informatika', 3, 4),
('IN322', 'RSNA 2 (SERTIFIKASI)', '67 - S1 Teknik Informatika', 3, 3),
('IN324', 'SISTEM TERDISTRIBUSI', '67 - S1 Teknik Informatika', 3, 3),
('IN333', 'PENGUJIAN SISTEM', '67 - S1 Teknik Informatika', 3, 4),
('IN334', 'MANAJEMEN PROYEK', '67 - S1 Teknik Informatika', 3, 3),
('IN335', 'BUSINESS INTELLIGENT', '67 - S1 Teknik Informatika', 3, 4),
('IN336', 'TEKNIK OPTIMALISASI', '67 - S1 Teknik Informatika', 3, 4),
('IN412', 'TUGAS AKHIR 1', '67 - S1 Teknik Informatika', 3, 4),
('IN422', 'TUGAS AKHIR 2', '67 - S1 Teknik Informatika', 3, 4),
('IN431', 'TUGAS AKHIR 3', '67 - S1 Teknik Informatika', 3, 3),
('PG135', 'PSIKOLOGI & KEARIFAN LOKAL', '80 - S1 Psikologis', 2, 2),
('PG137', 'PENGEMBANGAN DIRI', '80 - S1 Psikologis', 2, 2),
('PG211', 'OBSERVASI & INTERVIEW ', '80 - S1 Psikologis', 4, 5),
('PG222', 'PSIKOLOGI KOGNITIF', '80 - S1 Psikologis', 3, 3),
('PG224', 'STATISTIK PSIKOLOGI', '80 - S1 Psikologis', 3, 3),
('PG231', 'PENYUSUNAN SKALA PSIKOLOGI', '80 - S1 Psikologis', 3, 3),
('PG233', 'PSIKOTERAPI', '80 - S1 Psikologis', 3, 3),
('PG311', 'PSIKOLOGI KLINIS', '80 - S1 Psikologis', 3, 3),
('PG322', 'KEWIRAUSAHAAN', '80 - S1 Psikologis', 3, 3),
('PG427', 'PSIKOLOGI KEWIRAUSAHAAN', '80 - S1 Psikologis', 3, 3),
('PG432', 'METODOLOGI PENELITIAN KUANTITATIF', '80 - S1 Psikologis', 3, 4),
('PG434', 'PL 1 : TRAINING & PENGEMBANGAN', '80 - S1 Psikologis', 4, 5),
('PG436', 'PSIKOLOGI INDUSTRI DAN ORGANISASI', '80 - S1 Psikologis', 3, 3),
('PG437', 'PSIKOLOGI KEWIRAUSAHAAN', '80 - S1 Psikologis', 3, 3),
('PG509', 'PL 1 : HAMBATAN PERKEMBANGAN', '80 - S1 Psikologis', 4, 5),
('PG523', 'PL 1 : PSIKOLOGI FORENSIK', '80 - S1 Psikologis', 4, 5),
('PG525', 'PL 1 : KONSELING KLINIS', '80 - S1 Psikologis', 4, 5),
('PG527', 'PL 1 : BIMBINGAN KONSELING DI SEKOLAH', '80 - S1 Psikologis', 4, 5);

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
('0013027701', 'test1234', 'Ervin Suryaningsih,S.S,M.Hum', 'Jl Ngagel Dadi III 27 Surabaya', 'Salatiga', '08811218969', 2),
('0602018901', 'test1234', 'Dwi Setya Ariani,S.Psi,M.Psi', 'Kompl Laguna Indah Bl P-3/23 ', 'Salatiga', '081318798182', 2),
('0604089201', 'test1234', 'Arthur Huwae,M.Psi., Psikolog', 'Jl Rungkut Lor III 67 Surabaya', 'Salatiga', '082133883017', 2),
('0604107403', 'test1234', 'Esriaty S Kendenan,S.S,M.Hum', 'Jl Pacar Kembang V-E 26 Surabaya', 'Salatiga', '085842388740', 2),
('0604117201', 'test1234', 'Wahyu Seno Aji,S.S.,M.Hum', 'Jl Gemblongan 65 Surabaya', 'Salatiga', '08121062476', 2),
('0608039101', 'test1234', 'Maria Nugraheni Mardi Rahayu,S.Psi, M.Psi', 'Jl Kranggan 59 Surabaya', 'Salatiga', '08129343477', 2),
('0612037801', 'test1234', 'Anna Sriastuti, S.Pd,M.Hum', 'Jl Kupang Gunung 4 Surabaya', 'Salatiga', '081218398182', 2),
('0621028502', 'test1234', 'Doddy Hendro Wibowo,S.Psi., M.Psi.', 'Jl Merak III Bl P-2/99 Surabaya', 'Salatiga', '081514188106', 2),
('0622018001', 'test1234', 'Erio Rahadian P Fanggidae,S.S.,M.Hum', 'Jl Raya Kalirungkut 5 Pert Rungkut Megah Raya Bl D/39 Surabaya', 'Salatiga', '08156662152', 2),
('0624078905', 'test1234', 'Dewita Karema Sarajar,S.Psi., M.Psi.', 'Jl Manyar 8 Surabaya', 'Salatiga', '085276196124', 2),
('0625038501', 'test1234', 'Ajeng Ayu Widiastuti,S.S., M.A.', 'Jl Pacuan Kuda 2 Surabaya', 'Salatiga', '08163114237', 2),
('0626077302', 'test1234', 'Yulius Y. Ranimpi,S.Psi., M.Si., PhD.,Psikolog', 'Jl Raya Mulyosari 358 Surabaya', 'Salatiga', '085850489095', 2),
('0626098001', 'test1234', 'Deta Maria Sri Darta,S.Pd,M.Hum', 'Jl Bendul Merisi 71 Surabaya', 'Salatiga', '085223397945', 2),
('0627098702', 'test1234', 'Andry Putra Pratama,S.Psi,M.Psi', 'Jl Pasar Waru 22 Surabaya', 'Salatiga', '085223400234', 2),
('0628096202', 'test1234', 'Drs. Tritjahjo Danny Soesilo,M.Si.', 'Jl Jend Urip Sumoharjo 49 A Surabaya', 'Salatiga', '087877269839', 2),
('13809', 'test1234', 'Drs. Aloysius Lukas Soenarjo Soesil,M.A.', 'Jl Panglima Sudirman 2-C Surabaya', 'Salatiga', '085221340772', 2),
('392019012', 'test1234', 'David Jonathan Evan', 'Jl. Amarta Salatiga', 'Surabaya', '089688184183', 0),
('55002', 'test1234', 'Purwanto, SE., M.Cs.', 'Psr Soponyono I A/9 Surabaya', 'Salatiga', '085223013123', 2),
('55904', 'test1234', 'Endang Haryani, S.E., MMSI., Ph.D.', 'Pus Grosir Jembatan Merah Bl GA-29 Surabaya', 'Salatiga', '085223213854', 2),
('55905', 'test1234', 'Ariya Dwika Cahyono, S.Kom., MT.', 'Jl Songoyudan 11 Surabaya', 'Salatiga', '085223358018', 2),
('55906', 'test1234', 'Dr. Evi Maria. S.E., M.Acc.Ak.', 'Jl Songoyudan 31 Surabaya', 'Salatiga', '085310769599', 2),
('55907', 'test1234', 'Purwanto, SE., M.Cs.', 'Jl Kenjeran 38 Surabaya', 'Salatiga', '085927767988', 2),
('56907', 'test1234', 'Budhi Kristianto ,S.Kom., M.Sc.,Ph.D.', 'Jl Kramat Gantung 159 Surabaya', 'Salatiga', '085221601738', 2),
('67001', 'test1234', 'Prof.Ir. Daniel Herman Fredy Manongga,M.Sc., Ph.D.', 'Jl Gebang Lor 107 Surabaya', 'Salatiga', '085323033801', 2),
('67002', 'test1234', 'Magdalena A I Pakereng,S.Kom., M.Kom.', 'Jl Gebang Lor 107 Surabaya', 'Salatiga', '085223751509', 2),
('67004', 'test1234', 'Dr. Kristoko Dwi Hartomo, S.Kom., M.Kom.', 'Psr Turi Baru Thp IV St R-7 Surabaya', 'Salatiga', '085223586011', 2),
('67005', 'test1234', 'Felix David,S.Kom. M.Cs', 'Jl Kebonsari Tgh 65', 'Salatiga', '081323847878', 2),
('672019026', 'test1234', 'Angeline Septhiani', 'Perumahan Sertivia', 'Lampung', '083160718687', 0),
('67501', 'test1234', 'Theophilus Yohanis Hermanus Wellem,S.T., M.S.', 'Jl Manyar Tirtomoyo 44 Surabaya', 'Salatiga', '081384982097', 2),
('67507', 'test1234', 'Dr. Wiwin Sulistyo,ST., M.Kom.', 'Jl Arief Rachman Hakim 53 Surabaya', 'Salatiga', '081327994858', 2),
('67508', 'test1234', 'T Arie Styawan P,S.T., M.Cs.', 'Jl Rungkut Lor III 43-A Surabaya', 'Salatiga', '085323096273', 2),
('67528', 'test1234', 'Rudy Latuperissa', 'Jl.teluk palu smp 135 no.15b pondok bambu', 'Salatiga', '081327284833', 2),
('67530', 'test1234', 'Dian Widiyanto Chandra,S.Kom., M.Cs.', 'Jl. Boulevard Bukit Gading Raya Blok B No. 17', 'Salatiga', '085282748226', 2),
('67557', 'test1234', 'Adriyanto Juliastomo Gundo, S.Si., M.Pd.', 'Jl. Terusan Sinabung Jakarta', 'Salatiga', '085223545602', 2),
('67560', 'test1234', 'Charitas Fibriani, S.Kom., M.Eng.', 'Jl. Raya Pasar Minggu Km 17 No 12', 'Salatiga', '085223247579', 2),
('67566', 'test1234', 'Suharyadi, S.Kom., M.Cs.', 'Jl. Raya Otitsa No. 141', 'Salatiga', '085223784825', 2),
('67938', 'test1234', 'Nina Setiyawati, S.Kom., M.Cs.', 'Jl.Raya Pasar Minggu Km.17 No.12', 'Salatiga', '081909733633', 2),
('67973', 'test1234', 'Zon Vanel, S.Sos., M.Si', 'Jln. Nusa Indah 21 No. 6, Kapuk', 'Salatiga', '08522313133', 2),
('67983', 'test1234', 'Pramukti Narendra', 'Jl. Kirana no 6 Petisah Medan', 'Salatiga', '081389451100', 2),
('68948', 'test1234', 'Tintien Koerniawati', 'Jl Tamalate I No. 27 MKS Lebaksiu Kidul Rt03/Rw03 Lebaksiu', 'Salatiga', '08122296151', 2),
('80001', 'test1234', 'Dr. Drs. Sutarto Wijono,M.A.', 'Perumahan Bina Griya Utama jl. Cut Nyak Dien Blok D-37, Kalisapu', 'Salatiga', '081323600975', 2),
('80002', 'test1234', 'Dr. Dra. Christiana Hari Soetjiningsih,M.S', 'Permata Regency blok E2/110 Tambun Bekasi', 'Salatiga', '081323712712', 2),
('802019252', 'test1234', 'Gruda Sakti Krida Prastya', 'Papringan32', 'Sleman', '085792624604', 0),
('80502', 'test1234', 'Wahyuni Kristinawati,S.Psi., M.Si.', 'Jl H. Ahyar No. 49 Durn Sawit Jakarta Timur', 'Salatiga', '081323986400', 2),
('80503', 'test1234', 'Berta Esti Prasetya,S.Psi., M.A.', 'Jl Menteng Tenggulun No. 14 Jakarta Pusat', 'Salatiga', '081323753659', 2),
('80504', 'test1234', 'Ratriana Yuliastuti Endang K,S.Psi., M.Si.', 'Jl Slamet No. 1 Rt02/Rw01 Dukuh Salam Slawi', 'Salatiga', '085223902333', 2),
('80508', 'test1234', 'Sri Aryanti Kristianingsih,S.Psi., M.Si.', 'Ds. Depok Rt01/Rw02 Kec. Pangkah Kab. Tegal', 'Salatiga', '081323749555', 2),
('80513', 'test1234', 'Krismi Diah Ambarwati,S.Psi.', 'Grand Wisata Cluster Spring Fiesta Blok Ak3 no. 26 Tambun Bekasi', 'Salatiga', '085223009029', 2),
('80514', 'test1234', 'Jusuf Tjahjo Purnomo,S.Psi., MA.', 'Kalibata Residence Blok Akasia A/18/BE', 'Salatiga', '085223354804', 2),
('80522', 'test1234', 'Margaretta Erna Setjaningrum,S.Psi.', 'Mediterania Regency Blok B. No. 88 Jati Bening', 'Salatiga', '085227944219', 2),
('admin', 'test1234', 'Super Admin', 'Cloud Server', 'Asia-Pacific', '08123456789', 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `table_class_users`
--
ALTER TABLE `table_class_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

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
