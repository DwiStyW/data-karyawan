-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2023 at 04:07 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE
= "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone
= "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data-karyawan`
--

-- --------------------------------------------------------

--
-- Table structure for table `absen`
--

CREATE TABLE `absen`
(
  `id` int
(11) NOT NULL,
  `id_master` int
(11) NOT NULL,
  `tanggal` date NOT NULL,
  `mulai` datetime NOT NULL,
  `selesai` datetime NOT NULL,
  `jenis` varchar
(200) NOT NULL,
  `subjenis` varchar
(200) NOT NULL,
  `ket` varchar
(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bagian`
--

CREATE TABLE `bagian`
(
  `id` int
(11) NOT NULL,
  `id_departemen` int
(11) NOT NULL,
  `nama_bagian` varchar
(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp
() ON
UPDATE current_timestamp()
) ENGINE
=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bagian`
--

INSERT INTO `bagian` (`
id`,
`id_departemen
`, `nama_bagian`, `updated_at`) VALUES
(1, 0, 'EXIM', '2023-02-27 18:38:17'),
(2, 0, 'HRD', '2023-02-27 18:38:20'),
(3, 0, 'IT', '2023-02-27 18:38:24'),
(4, 1, 'QUALITY ASSURANCE', '2023-02-27 18:38:27'),
(5, 1, 'REGISTRASI', '2023-02-27 18:38:30'),
(6, 1, 'R & D', '2023-02-27 18:38:33'),
(7, 1, 'QUALITY CONTROL', '2023-02-27 18:38:38'),
(8, 2, 'ACCOUNTING', '2023-02-27 18:38:41'),
(9, 2, 'KASIR', '2023-02-27 18:38:47'),
(10, 3, 'MARKETING', '2023-02-27 18:38:50'),
(11, 4, 'PRODUKSI', '2023-02-27 18:38:55'),
(12, 4, 'PPIC', '2023-02-27 18:38:58'),
(13, 4, 'GUDANG', '2023-02-27 18:39:02'),
(14, 4, 'TEKNIK OPERASIONAL', '2023-02-27 18:39:06'),
(15, 4, 'TEKNIK PROJEK', '2023-02-27 18:39:09'),
(16, 5, 'PURCHASING', '2023-02-27 18:39:12');

-- --------------------------------------------------------

--
-- Table structure for table `batas_pensiun`
--

CREATE TABLE `batas_pensiun`
(
  `id` int
(11) NOT NULL,
  `tingkatan_pendidikan` varchar
(100) NOT NULL,
  `usia_max` int
(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `batas_pensiun`
--

INSERT INTO `batas_pensiun` (`
id`,
`tingkatan_pendidikan
`, `usia_max`) VALUES
(1, 'SD', 0),
(2, 'SMP', 0),
(3, 'SMA', 0),
(4, 'S1', 0),
(5, 'S2', 0),
(6, 'Lainnya', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bpjs_kes`
--

CREATE TABLE `bpjs_kes`
(
  `id` int
(11) NOT NULL,
  `no_bpjs_kes` varchar
(100) NOT NULL,
  `nama` varchar
(200) NOT NULL,
  `kelas` varchar
(100) NOT NULL,
  `iuran` varchar
(100) NOT NULL,
  `id_master` int
(11) NOT NULL,
  `status` varchar
(50) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp
() ON
UPDATE current_timestamp()
) ENGINE
=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bpjs_kes`
--

INSERT INTO `bpjs_kes` (`
id`,
`no_bpjs_kes
`, `nama`, `kelas`, `iuran`, `id_master`, `status`, `updated_at`) VALUES
(1, '1234567890', 'yanto', '1', '100000', 2, 'Aktif', '2023-03-10 03:18:25'),
(2, '0987654310987', 'agus', '1', '100000', 2, 'Aktif', '2023-03-10 03:18:30');

-- --------------------------------------------------------

--
-- Table structure for table `bpjs_tk`
--

CREATE TABLE `bpjs_tk`
(
  `id` int
(11) NOT NULL,
  `no_bpjs_tk` varchar
(100) NOT NULL,
  `tgl_kepesertaan` date NOT NULL,
  `iuran` varchar
(100) NOT NULL,
  `id_master` int
(11) NOT NULL,
  `status` varchar
(50) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp
() ON
UPDATE current_timestamp()
) ENGINE
=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bpjs_tk`
--

INSERT INTO `bpjs_tk` (`
id`,
`no_bpjs_tk
`, `tgl_kepesertaan`, `iuran`, `id_master`, `status`, `updated_at`) VALUES
(1, '465767089823', '2019-02-09', '100000', 2, '', '2023-03-09 01:36:37');

-- --------------------------------------------------------

--
-- Table structure for table `departemen`
--

CREATE TABLE `departemen`
(
  `id` int
(11) NOT NULL,
  `nama_departemen` varchar
(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp
() ON
UPDATE current_timestamp()
) ENGINE
=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departemen`
--

INSERT INTO `departemen` (`
id`,
`nama_departemen
`, `updated_at`) VALUES
(1, 'QUALITY', '2023-02-27 18:28:20'),
(2, 'ACCOUNTING', '2023-02-27 18:28:14'),
(3, 'MARKETING', '2023-02-27 18:28:07'),
(4, 'PRODUKSI', '2023-02-27 18:37:58'),
(5, 'PURCHASING', '2023-02-27 18:27:52');

-- --------------------------------------------------------

--
-- Table structure for table `history_pekerjaan`
--

CREATE TABLE `history_pekerjaan`
(
  `id` int
(11) NOT NULL,
  `nama_perusahaan` varchar
(255) NOT NULL,
  `alamat` text NOT NULL,
  `tahun_masuk` date NOT NULL,
  `tahun_keluar` date NOT NULL,
  `jabatan_terakhir` varchar
(255) NOT NULL,
  `alasan_pindah` text NOT NULL,
  `id_master` int
(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp
() ON
UPDATE current_timestamp()
) ENGINE
=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history_pekerjaan`
--

INSERT INTO `history_pekerjaan` (`
id`,
`nama_perusahaan
`, `alamat`, `tahun_masuk`, `tahun_keluar`, `jabatan_terakhir`, `alasan_pindah`, `id_master`, `updated_at`) VALUES
(1, 'cv. coba aja', 'jl. slempit', '2016-01-09', '2018-12-09', 'angkat2', 'sakit boyok', 2, '2023-03-08 18:35:01');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan`
(
  `id` int
(11) NOT NULL,
  `nama_jabatan` varchar
(200) NOT NULL,
  `departemen` int
(11) NOT NULL,
  `bagian` int
(11) NOT NULL,
  `sie` int
(11) NOT NULL,
  `level` int
(11) DEFAULT NULL,
  `pid` varchar
(100) DEFAULT NULL,
  `tags` varchar
(100) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp
() ON
UPDATE current_timestamp()
) ENGINE
=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`
id`,
`nama_jabatan
`, `departemen`, `bagian`, `sie`, `level`, `pid`, `tags`, `updated_at`) VALUES
(1, 'GENERAL MANAGER', 0, 0, 0, 1, '-', '-', '2023-02-17 01:28:16'),
(2, 'QUALITY MANAGER', 0, 0, 0, 2, '-', '0', '2023-03-13 02:50:30'),
(3, 'ACCOUNTING MANAGER', 2, 8, 0, 2, '1', '0', '2023-02-27 21:29:47'),
(4, 'PRODUCTION MANAGER', 4, 11, 0, 2, '1', '0', '2023-02-27 21:30:24'),
(5, 'PURCHASING MANAGER', 5, 16, 0, 2, '1', '0', '2023-03-07 23:59:37'),
(6, 'KABAG HRD', 0, 2, 0, 3, '1', '1', '2023-03-08 00:00:11'),
(7, 'KABAG EXIM', 0, 0, 0, 3, '1', '1', '2023-02-17 01:28:16'),
(8, 'KABAG QUALITY ASSURRANCE', 0, 0, 0, 3, '2', '0', '2023-02-17 01:28:16'),
(9, 'KABAG KASIR', 0, 0, 0, 3, '3', '0', '2023-02-17 01:28:16'),
(10, 'KABAG PPIC', 0, 0, 0, 3, '4', '0', '2023-02-17 01:28:16'),
(11, 'KABAG PRODUKSI', 0, 0, 0, 3, '4', '0', '2023-02-17 01:28:16'),
(12, 'KABAG TEKNIK OPERASIONAL', 0, 0, 0, 3, '4', '0', '2023-02-17 01:28:16'),
(13, 'KABAG TEKNIK PROJEK', 0, 0, 0, 3, '4', '0', '2023-02-17 01:28:16'),
(14, 'KASIE SATPAM', 0, 0, 0, 4, '6', '0', '2023-02-17 01:28:16'),
(15, 'KASIE GA', 0, 0, 0, 4, '6', '0', '2023-02-17 01:28:16'),
(16, 'KASIE REGISTRASI', 0, 0, 0, 4, '2', '1', '2023-02-17 01:28:16'),
(17, 'KASIE R&D', 0, 0, 0, 4, '2', '1', '2023-02-17 01:28:16'),
(18, 'KASIE IPC & STABILITAS', 0, 0, 0, 4, '2', '1', '2023-02-17 01:28:16'),
(19, 'KASIE BAHAN AWAL,MICROBIOLOGI & TRANSPARANSI', 0, 0, 0, 4, '2', '1', '2023-02-17 01:28:16'),
(20, 'KASIE PRODUCTION PLANNING', 0, 0, 0, 4, '11', '0', '2023-02-17 01:28:16'),
(21, 'KASIE KOYO & OT', 0, 0, 0, 4, '11', '0', '2023-02-17 01:28:16'),
(22, 'KASIE MIXING & KARET', 0, 0, 0, 4, '11', '0', '2023-02-17 01:28:16'),
(23, 'KASIE GUDANG BAHAN BAKU & KEMAS', 0, 0, 0, 4, '4', '1', '2023-02-17 01:28:16'),
(24, 'KASIE GUDANG JADI', 0, 0, 0, 4, '4', '1', '2023-02-17 01:28:16'),
(25, 'KASIE UTILITY', 0, 0, 0, 4, '4', '1', '2023-02-17 01:28:16'),
(26, 'KASIE OPERATOR & LINE MEKANIK', 0, 0, 0, 4, '4', '1', '2023-02-17 01:28:16'),
(27, 'KOORDINATOR HSE', 0, 0, 0, 5, '6', '1', '2023-02-17 01:28:16'),
(28, 'STAFF HRD', 0, 0, 0, 5, '7', '1', '2023-02-17 01:28:16'),
(29, 'STAFF PERSONALIA', 0, 0, 0, 5, '7', '1', '2023-02-17 01:28:16'),
(30, 'KOORDINATOR KEBERSIHAN', 0, 0, 0, 5, '15', '0', '2023-02-17 01:28:16'),
(31, 'KOORDINATOR DRIVER', 0, 0, 0, 5, '15', '0', '2023-02-17 01:28:16'),
(32, 'KOORDINATOR BANGUNAN', 0, 0, 0, 5, '15', '0', '2023-02-17 01:28:16'),
(33, 'STAFF IT', 0, 0, 0, 5, '1', '3', '2023-02-17 01:28:16'),
(34, 'STAFF QA', 0, 0, 0, 5, '8', '1', '2023-02-17 01:28:16'),
(35, 'STAFF REGISTRASI', 0, 0, 0, 5, '16', '0', '2023-02-17 01:28:16'),
(36, 'STAFF R&D', 0, 0, 0, 5, '17', '0', '2023-02-17 01:28:16'),
(37, 'STAFF QC', 0, 0, 0, 5, '18', '0', '2023-02-17 01:28:16'),
(38, 'STAFF ACCOUNTING', 0, 0, 0, 5, '3', '2', '2023-02-17 01:28:16'),
(39, 'STAFF ACCOUNTING TRADING REG TIMUR', 0, 0, 0, 5, '3', '2', '2023-02-17 01:28:16'),
(40, 'STAFF TRAINEE', 0, 0, 0, 5, '3', '2', '2023-02-17 01:28:16'),
(41, 'STAFF KASIR', 0, 0, 0, 5, '9', '1', '2023-02-17 01:28:16'),
(42, 'STAFF PPIC', 0, 0, 0, 5, '10', '1', '2023-02-17 01:28:16'),
(43, 'STAFF ADM PRODUKSI', 0, 0, 0, 5, '20', '0', '2023-02-17 01:28:16'),
(44, 'STAFF PRODUKSI', 0, 0, 0, 5, '20', '0', '2023-02-17 01:28:16'),
(45, 'STAFF PRODUKSI JAMU', 0, 0, 0, 5, '20', '0', '2023-02-17 01:28:16'),
(46, 'WAKIL KASIE KOYO', 0, 0, 0, 5, '21', '0', '2023-02-17 01:28:16'),
(47, 'KAPOK PACK PRIMER', 0, 0, 0, 5, '21', '0', '2023-02-17 01:28:16'),
(48, 'KAPOK PACK SEKUNDER KOYO', 0, 0, 0, 5, '21', '0', '2023-02-17 01:28:16'),
(49, 'KEPALA REGU', 0, 0, 0, 5, '22', '0', '2023-02-17 01:28:16'),
(50, 'KAPOK CHILI PLAST', 0, 0, 0, 5, '22', '0', '2023-02-17 01:28:16'),
(51, 'KAPOK OT', 0, 0, 0, 5, '22', '0', '2023-02-17 01:28:16'),
(52, 'KAPOK PACK MBP', 0, 0, 0, 5, '22', '0', '2023-02-17 01:28:16'),
(53, 'STAFF GUDANG', 0, 0, 0, 5, '22', '0', '2023-02-17 01:28:16'),
(54, 'STAFF ADM GUDANG JADI', 0, 0, 0, 5, '24', '0', '2023-02-17 01:28:16'),
(55, 'STAFF ADM TEKNIK', 0, 0, 0, 5, '12', '1', '2023-02-17 01:28:16'),
(56, 'STAFF OPR MAINTENANCE MESIN IMPORT', 0, 0, 0, 5, '12', '1', '2023-02-17 01:28:16'),
(57, 'STAFF ADM PURCHASING', 0, 0, 0, 5, '5', '2', '2023-02-17 01:28:16'),
(58, 'STAFF PURCHASING', 0, 0, 0, 5, '5', '2', '2023-02-17 01:28:16'),
(59, 'HELPER DINAS LUAR', 0, 0, 0, 6, '7', '2', '2023-02-17 01:28:16'),
(60, 'HELPER RECEPTIONIS', 0, 0, 0, 6, '7', '2', '2023-02-17 01:28:16'),
(61, 'HELPER PERSONALIA', 0, 0, 0, 6, '29', '0', '2023-02-17 01:28:16'),
(62, 'ANGGOTA SATPAM', 0, 0, 0, 6, '14', '1', '2023-02-17 01:28:16'),
(63, 'TAMAN', 0, 0, 0, 6, '30', '0', '2023-02-17 01:28:16'),
(64, 'TAMAN LUAR', 0, 0, 0, 6, '30', '0', '2023-02-17 01:28:16'),
(65, 'ANGGOTA KEBERSIHAN', 0, 0, 0, 6, '30', '0', '2023-02-17 01:28:16'),
(66, 'HELPER MESS', 0, 0, 0, 6, '30', '0', '2023-02-17 01:28:16'),
(67, 'ANGGOTA DRIVER', 0, 0, 0, 6, '31', '0', '2023-02-17 01:28:16'),
(68, 'ANGGOTA BANGUNAN', 0, 0, 0, 6, '32', '0', '2023-02-17 01:28:16'),
(69, 'GLW QA', 0, 0, 0, 6, '34', '0', '2023-02-17 01:28:16'),
(70, 'GLW R&D', 0, 0, 0, 6, '36', '0', '2023-02-17 01:28:16'),
(71, 'INSPECTOR QC', 0, 0, 0, 6, '19', '1', '2023-02-17 01:28:16'),
(72, 'ANALIS BAGIAN QC', 0, 0, 0, 6, '19', '1', '2023-02-17 01:28:16'),
(73, 'GLW QC', 0, 0, 0, 6, '19', '1', '2023-02-17 01:28:16'),
(74, 'TRAINEE ACCOUNTING', 0, 0, 0, 6, '38', '0', '2023-02-17 01:28:16'),
(75, 'HELPER PPIC', 0, 0, 0, 6, '42', '0', '2023-02-17 01:28:16'),
(76, 'ASS. OP JAMU', 0, 0, 0, 6, '45', '0', '2023-02-17 01:28:16'),
(77, 'OPR. TKH', 0, 0, 0, 6, '47', '0', '2023-02-17 01:28:16'),
(78, 'ASS. OPR TKH', 0, 0, 0, 6, '47', '0', '2023-02-17 01:28:16'),
(79, 'ASISTEN OPERATOR KOYO', 0, 0, 0, 6, '47', '0', '2023-02-17 01:28:16'),
(80, 'PACK SEK TAKAHI', 0, 0, 0, 6, '47', '0', '2023-02-17 01:28:16'),
(81, 'ASS. OP PACKING KOYO', 0, 0, 0, 6, '48', '0', '2023-02-17 01:28:16'),
(82, 'ASS. OPR KOYO', 0, 0, 0, 6, '48', '0', '2023-02-17 01:28:16'),
(83, 'ASS. OP COATING PLASTER', 0, 0, 0, 6, '48', '0', '2023-02-17 01:28:16'),
(84, 'GPW / COATING', 0, 0, 0, 6, '48', '0', '2023-02-17 01:28:16'),
(85, 'OPR. COATING KOYO', 0, 0, 0, 6, '48', '0', '2023-02-17 01:28:16'),
(86, 'GPP', 0, 0, 0, 6, '48', '0', '2023-02-17 01:28:16'),
(87, 'ASS. OP PENIMBANGAN', 0, 0, 0, 6, '49', '0', '2023-02-17 01:28:16'),
(88, 'ASS. OP MIXING', 0, 0, 0, 6, '49', '0', '2023-02-17 01:28:16'),
(89, 'ASS. OPR PLONG', 0, 0, 0, 6, '49', '0', '2023-02-17 01:28:16'),
(90, 'ASISTEN OPERATOR ALKES', 0, 0, 0, 6, '50', '0', '2023-02-17 01:28:16'),
(91, 'OPR. PLASTER', 0, 0, 0, 6, '50', '0', '2023-02-17 01:28:16'),
(92, 'OPERATOR', 0, 0, 0, 6, '50', '0', '2023-02-17 01:28:16'),
(93, 'ASS. OPR. OK PLAST', 0, 0, 0, 6, '50', '0', '2023-02-17 01:28:16'),
(94, 'ASS.OP. ALKES', 0, 0, 0, 6, '50', '0', '2023-02-17 01:28:16'),
(95, 'ASS.OP. DRESSING', 0, 0, 0, 6, '50', '0', '2023-02-17 01:28:16'),
(96, 'Ass. Opr. Filling Ss', 0, 0, 0, 6, '51', '0', '2023-02-17 01:28:16'),
(97, 'Ass. Opr. Mixing Ss', 0, 0, 0, 6, '51', '0', '2023-02-17 01:28:16'),
(98, 'Ass. Operator', 0, 0, 0, 6, '51', '0', '2023-02-17 01:28:16'),
(99, 'Gpw OT', 0, 0, 0, 6, '52', '0', '2023-02-17 01:28:16'),
(100, 'Helper Adm. Gudang', 0, 0, 0, 6, '53', '0', '2023-02-17 01:28:16'),
(101, 'Karu Gulung Kain', 0, 0, 0, 6, '23', '1', '2023-02-17 01:28:16'),
(102, 'Gpw', 0, 0, 0, 6, '23', '1', '2023-02-17 01:28:16'),
(103, 'Ass. Operator Gudang', 0, 0, 0, 6, '54', '0', '2023-02-17 01:28:16'),
(104, 'Teknik Workshop', 0, 0, 0, 6, '25', '1', '2023-02-17 01:28:16'),
(105, 'Adm Gudang Teknik', 0, 0, 0, 6, '13', '2', '2023-02-17 01:28:16'),
(106, 'Gudang Sparepart', 0, 0, 0, 6, '26', '1', '2023-02-17 01:28:16'),
(107, 'GTW Line Mekanik', 0, 0, 0, 6, '26', '1', '2023-02-17 01:28:16'),
(108, 'Design Grafis', 0, 0, 0, 6, '58', '0', '2023-02-17 01:28:16');

-- --------------------------------------------------------

--
-- Table structure for table `master`
--

CREATE TABLE `master`
(
  `id` int
(11) NOT NULL,
  `nama` varchar
(200) NOT NULL,
  `foto` text NOT NULL,
  `nik` varchar
(20) NOT NULL,
  `tempat_lahir` varchar
(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum
('laki-laki','perempuan') NOT NULL,
  `alamat` varchar
(200) NOT NULL,
  `no_hp` varchar
(50) NOT NULL,
  `agama` varchar
(50) NOT NULL,
  `id_jabatan` int
(11) NOT NULL,
  `golongan` varchar
(50) NOT NULL,
  `status` varchar
(100) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master`
--

INSERT INTO `master` (`
id`,
`nama`,
`foto`,
`nik`,
`tempat_lahir`,
`tanggal_lahir
`, `jenis_kelamin`, `alamat`, `no_hp`, `agama`, `id_jabatan`, `golongan`, `status`, `updated_at`) VALUES
(1, 'aziz gasido gagap', 'apel3.jpg', '123445687998765', 'kbs', '2023-03-08', 'laki-laki', 'jl. kendung rw 03', '085852024777', 'Islam', 14, 'Staff Trainee', 'Non Aktif', '2023-03-08 08:54:05'),
(2, 'agus', 'apel5.jpg', '123445687998765', 'pantai', '2002-02-22', 'perempuan', 'jl. kendung rw 03', '085852024777', 'Khonghucu', 33, 'Kontrak', 'Aktif', '2023-03-13 01:31:44');

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE `pendidikan`
(
  `id_pendidikan` int
(11) NOT NULL,
  `tingkat_pendidikan` varchar
(100) NOT NULL,
  `nama_sekolah` varchar
(200) NOT NULL,
  `jurusan` varchar
(100) NOT NULL,
  `tgl_awal` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  `id_master` int
(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`
id_pendidikan`,
`tingkat_pendidikan
`, `nama_sekolah`, `jurusan`, `tgl_awal`, `tgl_akhir`, `id_master`, `updated_at`) VALUES
(1, 'SMP', 'SMPN 2 Menganti', '-', '2023-03-09', '2023-03-09', 2, '2023-03-09 01:33:42'),
(2, 'SMA', 'SMAN 1 Menganti', 'IPA', '2023-03-09', '2023-03-09', 2, '2023-03-09 01:33:42'),
(3, 'S1', 'Universitas Wijaya Putra Surabaya', 'Teknik Informatika', '2023-03-09', '2023-03-09', 2, '2023-03-09 01:33:42');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_bpjs_kes`
--

CREATE TABLE `riwayat_bpjs_kes`
(
  `id` int
(11) NOT NULL,
  `id_bpjs` int
(11) NOT NULL,
  `iuran` varchar
(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_bpjs_tk`
--

CREATE TABLE `riwayat_bpjs_tk`
(
  `id` int
(11) NOT NULL,
  `id_bpjs` int
(11) NOT NULL,
  `id_master` int
(11) NOT NULL,
  `iuran` varchar
(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_karyawan`
--

CREATE TABLE `riwayat_karyawan`
(
  `id` int
(11) NOT NULL,
  `id_master` int
(11) NOT NULL,
  `jenis` varchar
(255) NOT NULL,
  `jabatan` varchar
(500) NOT NULL,
  `deskripsi` text NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal` date NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp
() ON
UPDATE current_timestamp()
) ENGINE
=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `riwayat_karyawan`
--

INSERT INTO `riwayat_karyawan` (`
id`,
`id_master
`, `jenis`, `jabatan`, `deskripsi`, `keterangan`, `tanggal`, `updated_at`) VALUES
(1, 1, 'Masuk', '14', 'karyawan baru', '', '2023-03-08', '2023-03-08 08:40:15'),
(2, 1, 'Non Aktif', '14', 'Status menjadi Non Aktif ', '', '2023-03-08', '2023-03-08 08:54:05'),
(3, 2, 'Masuk', '64', 'karyawan baru', '', '2019-03-01', '2023-03-09 01:32:17'),
(4, 2, 'Promosi', '33', 'Jenis mutasi Promosi dari Departemen bagian jabatan TAMAN LUAR menjadi Departemen bagian jabatan STAFF IT', 'test', '2022-02-09', '2023-03-09 01:37:20'),
(5, 2, 'Kontrak', '33', 'Status Karyawan menjadi Kontrak', 'test', '2023-02-02', '2023-03-09 01:37:45');

-- --------------------------------------------------------

--
-- Table structure for table `sie`
--

CREATE TABLE `sie`
(
  `id` int
(11) NOT NULL,
  `id_bagian` int
(11) NOT NULL,
  `nama_sie` varchar
(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sie`
--

INSERT INTO `sie` (`
id`,
`id_bagian
`, `nama_sie`) VALUES
(1, 1, 'SATPAM'),
(2, 1, 'GA'),
(3, 5, 'REGISTRASI'),
(4, 6, 'R & D'),
(5, 7, 'IPC'),
(6, 7, 'Microbiologi'),
(7, 11, 'JAMU'),
(8, 11, 'KOYO'),
(9, 11, 'Coating'),
(10, 11, 'MIXING'),
(11, 11, 'ALKES'),
(12, 11, 'SEJUK SARI'),
(13, 11, 'MBP'),
(14, 11, 'OT'),
(15, 13, 'Baku Kemas'),
(16, 13, 'Jadi'),
(17, 14, 'Teknik Utility'),
(18, 14, 'Teknik Workshop'),
(19, 15, 'Line Mekanik');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status`
(
  `id_status` int
(11) NOT NULL,
  `nama_status` varchar
(100) NOT NULL,
  `tgl_awal` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  `id_master` int
(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `struktur`
--

CREATE TABLE `struktur`
(
  `id` int
(11) NOT NULL,
  `nama` varchar
(100) NOT NULL,
  `level` int
(100) NOT NULL,
  `pid` varchar
(100) NOT NULL,
  `tags` varchar
(123) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `struktur`
--

INSERT INTO `struktur` (`
id`,
`nama
`, `level`, `pid`, `tags`) VALUES
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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users`
(
  `id` int
(20) UNSIGNED NOT NULL,
  `name` varchar
(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar
(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar
(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar
(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`
id`,
`name
`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$LfooFh0oJTs3E/KxWSVqMe7hxwvaEtn2G0RfGzTDQ9PuXei50nbyu', NULL, '2022-10-02 17:34:12', '2022-10-02 17:34:12'),
(2, 'admin1', 'admin1@gmail.com', NULL, '$2y$10$p8IBbQHX7FJCuCSojePw/eH6L7ANhLJB7iTDeZu6x3BscK6MkJW6.', NULL, '2022-10-03 14:15:06', '2022-10-03 14:15:06'),
(3, 'wibi', '', NULL, '$2y$10$LfooFh0oJTs3E/KxWSVqMe7hxwvaEtn2G0RfGzTDQ9PuXei50nbyu', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bagian`
--
ALTER TABLE `bagian`
ADD PRIMARY KEY
(`id`);

--
-- Indexes for table `batas_pensiun`
--
ALTER TABLE `batas_pensiun`
ADD PRIMARY KEY
(`id`);

--
-- Indexes for table `bpjs_kes`
--
ALTER TABLE `bpjs_kes`
ADD PRIMARY KEY
(`id`);

--
-- Indexes for table `bpjs_tk`
--
ALTER TABLE `bpjs_tk`
ADD PRIMARY KEY
(`id`);

--
-- Indexes for table `departemen`
--
ALTER TABLE `departemen`
ADD PRIMARY KEY
(`id`);

--
-- Indexes for table `history_pekerjaan`
--
ALTER TABLE `history_pekerjaan`
ADD PRIMARY KEY
(`id`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
ADD PRIMARY KEY
(`id`);

--
-- Indexes for table `master`
--
ALTER TABLE `master`
ADD PRIMARY KEY
(`id`);

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
ADD PRIMARY KEY
(`id_pendidikan`);

--
-- Indexes for table `riwayat_bpjs_kes`
--
ALTER TABLE `riwayat_bpjs_kes`
ADD PRIMARY KEY
(`id`);

--
-- Indexes for table `riwayat_bpjs_tk`
--
ALTER TABLE `riwayat_bpjs_tk`
ADD PRIMARY KEY
(`id`);

--
-- Indexes for table `riwayat_karyawan`
--
ALTER TABLE `riwayat_karyawan`
ADD PRIMARY KEY
(`id`);

--
-- Indexes for table `sie`
--
ALTER TABLE `sie`
ADD PRIMARY KEY
(`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
ADD PRIMARY KEY
(`id_status`);

--
-- Indexes for table `struktur`
--
ALTER TABLE `struktur`
ADD PRIMARY KEY
(`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
ADD PRIMARY KEY
(`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bagian`
--
ALTER TABLE `bagian`
  MODIFY `id` int
(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `batas_pensiun`
--
ALTER TABLE `batas_pensiun`
  MODIFY `id` int
(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bpjs_kes`
--
ALTER TABLE `bpjs_kes`
  MODIFY `id` int
(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bpjs_tk`
--
ALTER TABLE `bpjs_tk`
  MODIFY `id` int
(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `departemen`
--
ALTER TABLE `departemen`
  MODIFY `id` int
(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `history_pekerjaan`
--
ALTER TABLE `history_pekerjaan`
  MODIFY `id` int
(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id` int
(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `master`
--
ALTER TABLE `master`
  MODIFY `id` int
(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id_pendidikan` int
(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `riwayat_bpjs_kes`
--
ALTER TABLE `riwayat_bpjs_kes`
  MODIFY `id` int
(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwayat_bpjs_tk`
--
ALTER TABLE `riwayat_bpjs_tk`
  MODIFY `id` int
(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwayat_karyawan`
--
ALTER TABLE `riwayat_karyawan`
  MODIFY `id` int
(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sie`
--
ALTER TABLE `sie`
  MODIFY `id` int
(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id_status` int
(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `struktur`
--
ALTER TABLE `struktur`
  MODIFY `id` int
(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int
(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
