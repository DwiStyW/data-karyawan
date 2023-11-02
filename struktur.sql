-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2023 at 10:34 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `personalia`
--

-- --------------------------------------------------------

--
-- Table structure for table `struktur`
--

CREATE TABLE `struktur` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `level` int(100) NOT NULL,
  `pid` varchar(100) NOT NULL,
  `tags` varchar(123) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `struktur`
--

INSERT INTO `struktur` (`id`, `nama`, `level`, `pid`, `tags`) VALUES
(1, 'GENERAL MANAGER', 1, '-', '-'),
(2, 'QUALITY MANAGER', 2, '1', '0'),
(3, 'ACCOUNTING MANAGER', 2, '1', '0'),
(4, 'PRODUCTION MANAGER', 2, '1', '0'),
(5, 'PURCHASING MANAGER', 2, '1', '0'),
(6, 'KABAG HRD', 3, '1', '1'),
(7, 'KABAG EXIM', 3, '1', '1'),
(8, 'KABAG QUALITY ASSURRANCE', 3, '2', '0'),
(9, 'KABAG KASIR', 3, '3', '0'),
(10, 'KABAG PPIC', 3, '4', '0'),
(11, 'KABAG PRODUKSI', 3, '4', '0'),
(12, 'KABAG TEKNIK OPERASIONAL', 3, '4', '0'),
(13, 'KABAG TEKNIK PROJEK', 3, '4', '0'),
(14, 'KASIE SATPAM', 4, '6', '0'),
(15, 'KASIE GA', 4, '6', '0'),
(16, 'KASIE REGISTRASI', 4, '2', '1'),
(17, 'KASIE R&D', 4, '2', '1'),
(18, 'KASIE IPC & STABILITAS', 4, '2', '1'),
(19, 'KASIE BAHAN AWAL,MICROBIOLOGI & TRANSPARANSI', 4, '2', '1'),
(20, 'KASIE PRODUCTION PLANNING', 4, '11', '0'),
(21, 'KASIE KOYO & OT', 4, '11', '0'),
(22, 'KASIE MIXING & KARET', 4, '11', '0'),
(23, 'KASIE GUDANG BAHAN BAKU & KEMAS', 4, '4', '1'),
(24, 'KASIE GUDANG JADI', 4, '4', '1'),
(25, 'KASIE UTILITY', 4, '4', '1'),
(26, 'KASIE OPERATOR & LINE MEKANIK', 4, '4', '1'),
(27, 'KOORDINATOR HSE', 5, '6', '1'),
(28, 'STAFF HRD', 5, '7', '1'),
(29, 'STAFF PERSONALIA', 5, '7', '1'),
(30, 'KOORDINATOR KEBERSIHAN', 5, '15', '0'),
(31, 'KOORDINATOR DRIVER', 5, '15', '0'),
(32, 'KOORDINATOR BANGUNAN', 5, '15', '0'),
(33, 'STAFF IT', 5, '1', '3'),
(34, 'STAFF QA', 5, '8', '1'),
(35, 'STAFF REGISTRASI', 5, '16', '0'),
(36, 'STAFF R&D', 5, '17', '0'),
(37, 'STAFF QC', 5, '18', '0'),
(38, 'STAFF ACCOUNTING', 5, '3', '2'),
(39, 'STAFF ACCOUNTING TRADING REG TIMUR', 5, '3', '2'),
(40, 'STAFF TRAINEE', 5, '3', '2'),
(41, 'STAFF KASIR', 5, '9', '1'),
(42, 'STAFF PPIC', 5, '10', '1'),
(43, 'STAFF ADM PRODUKSI', 5, '20', '0'),
(44, 'STAFF PRODUKSI', 5, '20', '0'),
(45, 'STAFF PRODUKSI JAMU', 5, '20', '0'),
(46, 'WAKIL KASIE KOYO', 5, '21', '0'),
(47, 'KAPOK PACK PRIMER', 5, '21', '0'),
(48, 'KAPOK PACK SEKUNDER KOYO', 5, '21', '0'),
(49, 'KEPALA REGU', 5, '22', '0'),
(50, 'KAPOK CHILI PLAST', 5, '22', '0'),
(51, 'KAPOK OT', 5, '22', '0'),
(52, 'KAPOK PACK MBP', 5, '22', '0'),
(53, 'STAFF GUDANG', 5, '22', '0'),
(54, 'STAFF ADM GUDANG JADI', 5, '24', '0'),
(55, 'STAFF ADM TEKNIK', 5, '12', '1'),
(56, 'STAFF OPR MAINTENANCE MESIN IMPORT', 5, '12', '1'),
(57, 'STAFF ADM PURCHASING', 5, '5', '2'),
(58, 'STAFF PURCHASING', 5, '5', '2'),
(59, 'HELPER DINAS LUAR', 6, '7', '2'),
(60, 'HELPER RECEPTIONIS', 6, '7', '2'),
(61, 'HELPER PERSONALIA', 6, '29', '0'),
(62, 'ANGGOTA SATPAM', 6, '14', '1'),
(63, 'TAMAN', 6, '30', '0'),
(64, 'TAMAN LUAR', 6, '30', '0'),
(65, 'ANGGOTA KEBERSIHAN', 6, '30', '0'),
(66, 'HELPER MESS', 6, '30', '0'),
(67, 'ANGGOTA DRIVER', 6, '31', '0'),
(68, 'ANGGOTA BANGUNAN', 6, '32', '0'),
(69, 'GLW QA', 6, '34', '0'),
(70, 'GLW R&D', 6, '36', '0'),
(71, 'INSPECTOR QC', 6, '19', '1'),
(72, 'ANALIS BAGIAN QC', 6, '19', '1'),
(73, 'GLW QC', 6, '19', '1'),
(74, 'TRAINEE ACCOUNTING', 6, '38', '0'),
(75, 'HELPER PPIC', 6, '42', '0'),
(76, 'ASS. OP JAMU', 6, '45', '0'),
(77, 'OPR. TKH', 6, '47', '0'),
(78, 'ASS. OPR TKH', 6, '47', '0'),
(79, 'ASISTEN OPERATOR KOYO', 6, '47', '0'),
(80, 'PACK SEK TAKAHI', 6, '47', '0'),
(81, 'ASS. OP PACKING KOYO', 6, '48', '0'),
(82, 'ASS. OPR KOYO', 6, '48', '0'),
(83, 'ASS. OP COATING PLASTER', 6, '48', '0'),
(84, 'GPW / COATING', 6, '48', '0'),
(85, 'OPR. COATING KOYO', 6, '48', '0'),
(86, 'GPP', 6, '48', '0'),
(87, 'ASS. OP PENIMBANGAN', 6, '49', '0'),
(88, 'ASS. OP MIXING', 6, '49', '0'),
(89, 'ASS. OPR PLONG', 6, '49', '0'),
(90, 'ASISTEN OPERATOR ALKES', 6, '50', '0'),
(91, 'OPR. PLASTER', 6, '50', '0'),
(92, 'OPERATOR', 6, '50', '0'),
(93, 'ASS. OPR. OK PLAST', 6, '50', '0'),
(94, 'ASS.OP. ALKES', 6, '50', '0'),
(95, 'ASS.OP. DRESSING', 6, '50', '0'),
(96, 'Ass. Opr. Filling Ss', 6, '51', '0'),
(97, 'Ass. Opr. Mixing Ss', 6, '51', '0'),
(98, 'Ass. Operator', 6, '51', '0'),
(99, 'Gpw OT', 6, '52', '0'),
(100, 'Helper Adm. Gudang', 6, '53', '0'),
(101, 'Karu Gulung Kain', 6, '23', '1'),
(102, 'Gpw', 6, '23', '1'),
(103, 'Ass. Operator Gudang', 6, '54', '0'),
(104, 'Teknik Workshop', 6, '25', '1'),
(105, 'Adm Gudang Teknik', 6, '13', '2'),
(106, 'Gudang Sparepart', 6, '26', '1'),
(107, 'GTW Line Mekanik', 6, '26', '1'),
(108, 'Design Grafis', 6, '58', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `struktur`
--
ALTER TABLE `struktur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `struktur`
--
ALTER TABLE `struktur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
