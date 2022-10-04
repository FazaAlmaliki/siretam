-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2022 at 08:47 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_siretam`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group`
--

CREATE TABLE `tbl_group` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(50) NOT NULL,
  `createtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_group`
--

INSERT INTO `tbl_group` (`group_id`, `group_name`, `createtime`) VALUES
(1, 'Administrator', '2021-02-02 19:26:11'),
(2, 'Penyewa', '2021-02-05 14:03:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_log`
--

CREATE TABLE `tbl_log` (
  `log_id` int(11) NOT NULL,
  `log_time` datetime NOT NULL,
  `log_message` varchar(200) NOT NULL,
  `log_ipaddress` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL,
  `createtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_log`
--

INSERT INTO `tbl_log` (`log_id`, `log_time`, `log_message`, `log_ipaddress`, `user_id`, `createtime`) VALUES
(1, '2021-02-05 11:28:08', 'Administrator CoreIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-02-05 11:28:08'),
(2, '2021-02-05 11:28:32', 'administrator menambah data corebase_crud data 1', '127.0.0.1', 1, '2021-02-05 11:28:32'),
(3, '2021-02-05 11:28:43', 'administrator menambah data corebase_crud data 2', '127.0.0.1', 1, '2021-02-05 11:28:43'),
(4, '2021-02-05 11:28:49', 'administrator menambah data corebase_crud data 3', '127.0.0.1', 1, '2021-02-05 11:28:49'),
(5, '2021-02-05 11:28:58', 'administrator mengubah data corebase_crud dengan ID = 3 - data 32', '127.0.0.1', 1, '2021-02-05 11:28:58'),
(6, '2021-02-05 11:29:02', 'administrator menghapus data corebase_crud dengan ID = 3 - data 32', '127.0.0.1', 1, '2021-02-05 11:29:02'),
(7, '2021-02-05 13:59:47', 'administrator menambah data user inputer', '127.0.0.1', 1, '2021-02-05 13:59:47'),
(8, '2021-02-05 14:03:49', 'administrator menambah data group Inputer', '127.0.0.1', 1, '2021-02-05 14:03:49'),
(9, '2021-02-05 14:06:02', 'administrator mengubah data user dengan ID = 2 - inputer', '127.0.0.1', 1, '2021-02-05 14:06:02'),
(10, '2021-02-05 14:06:06', 'administrator mengubah data user dengan ID = 2 - inputer', '127.0.0.1', 1, '2021-02-05 14:06:06'),
(11, '2021-02-05 14:06:27', 'Inputer Coreigniters melakukan login ke sistem', '127.0.0.1', 2, '2021-02-05 14:06:27'),
(12, '2021-02-05 14:06:42', 'administrator mengubah data user dengan ID = 2 - inputer', '127.0.0.1', 1, '2021-02-05 14:06:42'),
(13, '2021-02-05 14:06:58', 'Inputer Coreigniters melakukan login ke sistem', '127.0.0.1', 2, '2021-02-05 14:06:58'),
(14, '2021-02-05 14:07:28', 'Administrator CoreIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-02-05 14:07:28'),
(15, '2021-02-05 14:12:32', 'Update Informasi Sistem ', '127.0.0.1', 1, '2021-02-05 14:12:32'),
(16, '2021-02-05 14:12:36', 'Update Informasi Sistem ', '127.0.0.1', 1, '2021-02-05 14:12:36'),
(17, '2021-02-05 18:47:59', 'administrator mengubah data profile dengan ID = 1 - ', '127.0.0.1', 1, '2021-02-05 18:47:59'),
(18, '2021-02-05 18:49:18', 'administrator mengubah data profile dengan ID = 1 - administrator', '127.0.0.1', 1, '2021-02-05 18:49:18'),
(19, '2021-02-05 18:50:58', 'administrator mengubah data profile dengan ID = 1 - administrator', '127.0.0.1', 1, '2021-02-05 18:50:58'),
(20, '2021-02-05 18:51:10', 'administrator mengubah data profile dengan ID = 1 - administrator', '127.0.0.1', 1, '2021-02-05 18:51:10'),
(21, '2021-02-05 18:52:41', 'administrator mengubah data profile dengan ID = 1 - administrator', '127.0.0.1', 1, '2021-02-05 18:52:41'),
(22, '2021-02-05 18:52:53', 'administrator mengubah data profile dengan ID = 1 - administrator', '127.0.0.1', 1, '2021-02-05 18:52:53'),
(23, '2021-02-05 18:58:01', 'administrators mengubah data profile dengan ID = 1 - administrators', '127.0.0.1', 1, '2021-02-05 18:58:01'),
(24, '2021-02-05 18:58:10', 'administrator mengubah data profile dengan ID = 1 - administrator', '127.0.0.1', 1, '2021-02-05 18:58:10'),
(25, '2021-02-05 18:59:25', 'administrator mengubah data profile dengan ID = 1 - administrator', '127.0.0.1', 1, '2021-02-05 18:59:25'),
(26, '2021-02-05 18:59:54', 'administrator mengubah data profile dengan ID = 1 - administrator', '127.0.0.1', 1, '2021-02-05 18:59:54'),
(27, '2021-02-05 19:02:40', 'administrator mengubah data profile dengan ID = 1 - administrator', '127.0.0.1', 1, '2021-02-05 19:02:40'),
(28, '2021-02-05 19:03:38', 'administrator mengubah data profile dengan ID = 1 - administrator', '127.0.0.1', 1, '2021-02-05 19:03:38'),
(29, '2021-02-06 18:32:30', 'Administrator CodeIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-02-06 18:32:30'),
(30, '2021-02-06 19:23:39', 'Update Informasi Sistem ', '127.0.0.1', 1, '2021-02-06 19:23:39'),
(31, '2021-02-06 19:23:45', 'Update Informasi Sistem ', '127.0.0.1', 1, '2021-02-06 19:23:45'),
(32, '2021-02-06 19:23:53', 'Update Informasi Sistem ', '127.0.0.1', 1, '2021-02-06 19:23:53'),
(33, '2021-02-06 19:24:02', 'Update Informasi Sistem ', '127.0.0.1', 1, '2021-02-06 19:24:02'),
(34, '2021-02-06 19:53:21', 'Update Informasi Sistem ', '127.0.0.1', 1, '2021-02-06 19:53:21'),
(35, '2021-02-06 19:53:24', 'Update Informasi Sistem ', '127.0.0.1', 1, '2021-02-06 19:53:24'),
(36, '2021-02-07 00:24:58', 'Administrator CodeIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-02-07 00:24:58'),
(37, '2021-02-07 00:25:12', 'Update Informasi Sistem ', '127.0.0.1', 1, '2021-02-07 00:25:12'),
(38, '2021-02-07 00:25:17', 'Update Informasi Sistem ', '127.0.0.1', 1, '2021-02-07 00:25:17'),
(39, '2021-02-07 00:25:26', 'Update Informasi Sistem ', '127.0.0.1', 1, '2021-02-07 00:25:26'),
(40, '2021-02-07 00:25:31', 'Update Informasi Sistem ', '127.0.0.1', 1, '2021-02-07 00:25:31'),
(41, '2021-02-07 14:51:02', 'Administrator CodeIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-02-07 14:51:02'),
(42, '2021-02-07 16:59:45', 'administrator menambah data form ', '127.0.0.1', 1, '2021-02-07 16:59:45'),
(43, '2021-02-07 17:01:02', 'administrator menambah data form ', '127.0.0.1', 1, '2021-02-07 17:01:02'),
(44, '2021-02-07 17:05:18', 'administrator menambah data form ', '127.0.0.1', 1, '2021-02-07 17:05:18'),
(45, '2021-02-07 17:10:46', 'administrator menambah data form ', '127.0.0.1', 1, '2021-02-07 17:10:46'),
(46, '2021-02-07 17:11:18', 'administrator menambah data form ', '127.0.0.1', 1, '2021-02-07 17:11:18'),
(47, '2021-02-07 17:19:38', 'administrator menghapus data form dengan ID = 2', '127.0.0.1', 1, '2021-02-07 17:19:38'),
(48, '2021-02-07 17:20:42', 'administrator menambah data form ', '127.0.0.1', 1, '2021-02-07 17:20:42'),
(49, '2021-02-07 17:20:55', 'administrator menambah data form ', '127.0.0.1', 1, '2021-02-07 17:20:55'),
(50, '2021-02-07 17:43:40', 'administrator mengubah data form dengan ID = 3', '127.0.0.1', 1, '2021-02-07 17:43:40'),
(51, '2021-02-07 17:43:46', 'administrator mengubah data form dengan ID = 3', '127.0.0.1', 1, '2021-02-07 17:43:46'),
(52, '2021-02-07 17:43:51', 'administrator mengubah data form dengan ID = 4', '127.0.0.1', 1, '2021-02-07 17:43:51'),
(53, '2021-02-07 17:43:59', 'administrator mengubah data form dengan ID = 4', '127.0.0.1', 1, '2021-02-07 17:43:59'),
(54, '2021-02-07 17:44:03', 'administrator mengubah data form dengan ID = 3', '127.0.0.1', 1, '2021-02-07 17:44:03'),
(55, '2021-02-07 17:44:12', 'administrator mengubah data form dengan ID = 4', '127.0.0.1', 1, '2021-02-07 17:44:12'),
(56, '2021-02-07 17:44:25', 'administrator mengubah data form dengan ID = 4', '127.0.0.1', 1, '2021-02-07 17:44:25'),
(57, '2021-02-07 17:44:51', 'administrator mengubah data form dengan ID = 3', '127.0.0.1', 1, '2021-02-07 17:44:51'),
(58, '2021-02-08 09:13:00', 'Administrator CodeIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-02-08 09:13:00'),
(59, '2021-02-09 13:37:37', 'Administrator CodeIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-02-09 13:37:37'),
(60, '2021-02-12 09:54:28', 'Administrator CodeIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-02-12 09:54:28'),
(61, '2021-02-12 11:21:18', 'Administrator CodeIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-02-12 11:21:18'),
(62, '2021-02-12 11:41:06', 'administrator menghapus data form dengan ID = ', '127.0.0.1', 1, '2021-02-12 11:41:06'),
(63, '2021-02-12 11:42:20', 'administrator menghapus data form dengan ID = ', '127.0.0.1', 1, '2021-02-12 11:42:20'),
(64, '2021-02-12 11:49:02', 'administrator menghapus data form dengan ID = 12', '127.0.0.1', 1, '2021-02-12 11:49:02'),
(65, '2021-02-12 11:49:05', 'administrator menghapus data form dengan ID = 13', '127.0.0.1', 1, '2021-02-12 11:49:05'),
(66, '2021-02-13 15:26:38', 'Administrator CodeIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-02-13 15:26:38'),
(67, '2021-02-22 22:51:48', 'Administrator CodeIgniter melakukan login ke sistem', '::1', 1, '2021-02-22 22:51:48'),
(68, '2021-02-25 07:08:08', 'Administrator CodeIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-02-25 07:08:08'),
(69, '2021-03-01 08:24:10', 'Administrator CodeIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-03-01 08:24:10'),
(70, '2021-03-01 08:25:20', 'Update Informasi Sistem ', '127.0.0.1', 1, '2021-03-01 08:25:20'),
(71, '2021-03-01 08:25:42', 'Update Informasi Sistem ', '127.0.0.1', 1, '2021-03-01 08:25:42'),
(72, '2021-03-02 09:15:56', 'Administrator CodeIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-03-02 09:15:56'),
(73, '2021-03-02 09:17:33', 'Administrator CodeIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-03-02 09:17:33'),
(74, '2021-03-02 09:18:57', 'Update Informasi Sistem', '127.0.0.1', 1, '2021-03-02 09:18:57'),
(75, '2021-03-02 13:34:06', 'administrator menambah data sector Sektor Pendidikan', '127.0.0.1', 1, '2021-03-02 13:34:06'),
(76, '2021-03-02 13:34:14', 'administrator mengubah data sector dengan ID = 1 - Sektor Pendidikans', '127.0.0.1', 1, '2021-03-02 13:34:14'),
(77, '2021-03-02 13:34:16', 'administrator menghapus data sector dengan ID = 1 - Sektor Pendidikans', '127.0.0.1', 1, '2021-03-02 13:34:16'),
(78, '2021-03-02 13:34:34', 'administrator menambah data sector Sektor Pendidikan', '127.0.0.1', 1, '2021-03-02 13:34:34'),
(79, '2021-03-02 13:35:14', 'administrator menambah data sector SEKTOR KESEHATAN', '127.0.0.1', 1, '2021-03-02 13:35:14'),
(80, '2021-03-02 13:35:25', 'administrator mengubah data sector dengan ID = 1 - PENDIDIKAN', '127.0.0.1', 1, '2021-03-02 13:35:25'),
(81, '2021-03-02 13:35:31', 'administrator mengubah data sector dengan ID = 2 - KESEHATAN', '127.0.0.1', 1, '2021-03-02 13:35:31'),
(82, '2021-03-02 13:36:01', 'administrator menambah data sector PEKERJAAN UMUM DAN PENATAAN RUANG', '127.0.0.1', 1, '2021-03-02 13:36:01'),
(83, '2021-03-02 13:36:12', 'administrator menambah data sector PERUMAHAN DAN KAWASAN PEMUKIMAN', '127.0.0.1', 1, '2021-03-02 13:36:12'),
(84, '2021-03-02 13:36:22', 'administrator menambah data sector SOSIAL', '127.0.0.1', 1, '2021-03-02 13:36:22'),
(85, '2021-03-02 13:36:34', 'administrator menambah data sector KETENAGAKERJAAN', '127.0.0.1', 1, '2021-03-02 13:36:34'),
(86, '2021-03-02 13:36:46', 'administrator menambah data sector AGRARIA DAN TATA RUANG', '127.0.0.1', 1, '2021-03-02 13:36:46'),
(87, '2021-03-02 13:37:01', 'administrator menambah data sector LINGKUNGAN HIDUP', '127.0.0.1', 1, '2021-03-02 13:37:01'),
(88, '2021-03-02 13:37:17', 'administrator menambah data sector PERHUBUNGAN', '127.0.0.1', 1, '2021-03-02 13:37:17'),
(89, '2021-03-02 13:37:28', 'administrator menambah data sector PERKOPERASIAN DAN USAHA MIKRO, KECIL, MENENGAH', '127.0.0.1', 1, '2021-03-02 13:37:28'),
(90, '2021-03-02 14:38:13', 'administrator menambah data layanan izin/surat Surat Izin Praktik Terapi Gigi dan Mulut', '127.0.0.1', 1, '2021-03-02 14:38:13'),
(91, '2021-03-02 14:59:21', 'administrator mengubah data service dengan ID = 1 - ', '127.0.0.1', 1, '2021-03-02 14:59:21'),
(92, '2021-03-02 14:59:55', 'administrator mengubah data service dengan ID = 1 - Surat Izin Praktik Terapi Gigi dan Muluts', '127.0.0.1', 1, '2021-03-02 14:59:55'),
(93, '2021-03-02 15:00:00', 'administrator mengubah data service dengan ID = 1 - Surat Izin Praktik Terapi Gigi dan Muluts', '127.0.0.1', 1, '2021-03-02 15:00:00'),
(94, '2021-03-02 15:00:36', 'administrator mengubah data service dengan ID = 1 - Surat Izin Praktik Terapi Gigi dan Muluts', '127.0.0.1', 1, '2021-03-02 15:00:36'),
(95, '2021-03-02 15:01:37', 'administrator mengubah data service dengan ID = 1 - Surat Izin Praktik Terapi Gigi dan Muluts', '127.0.0.1', 1, '2021-03-02 15:01:37'),
(96, '2021-03-02 15:02:50', 'administrator mengubah data service dengan ID = 1 - Surat Izin Praktik Terapi Gigi dan Muluts', '127.0.0.1', 1, '2021-03-02 15:02:50'),
(97, '2021-03-02 15:04:23', 'administrator mengubah data service dengan ID = 1 - Surat Izin Praktik Terapi Gigi dan Muluts', '127.0.0.1', 1, '2021-03-02 15:04:23'),
(98, '2021-03-02 15:04:30', 'administrator mengubah data service dengan ID = 1 - Surat Izin Praktik Terapi Gigi dan Muluts', '127.0.0.1', 1, '2021-03-02 15:04:30'),
(99, '2021-03-02 15:04:59', 'administrator mengubah data service dengan ID = 1 - Surat Izin Praktik Terapi Gigi dan Muluts', '127.0.0.1', 1, '2021-03-02 15:04:59'),
(100, '2021-03-02 15:05:51', 'administrator menambah data layanan izin/surat Surat Izin Praktik Terapi Gigi dan Mulut Bau', '127.0.0.1', 1, '2021-03-02 15:05:51'),
(101, '2021-03-02 15:06:08', 'administrator mengubah data service dengan ID = 2 - Surat Izin Praktik Terapi Gigi dan Mulut Bau', '127.0.0.1', 1, '2021-03-02 15:06:08'),
(102, '2021-03-02 15:06:16', 'administrator mengubah data service dengan ID = 1 - Surat Izin Praktik Terapi Gigi dan Muluts', '127.0.0.1', 1, '2021-03-02 15:06:16'),
(103, '2021-03-02 15:08:58', 'administrator menghapus layanan izin/surat dengan ID = 2 - Surat Izin Praktik Terapi Gigi dan Mulut Bau', '127.0.0.1', 1, '2021-03-02 15:08:58'),
(104, '2021-03-02 15:09:04', 'administrator menghapus layanan izin/surat dengan ID = 1 - Surat Izin Praktik Terapi Gigi dan Muluts', '127.0.0.1', 1, '2021-03-02 15:09:04'),
(105, '2021-03-02 15:09:30', 'administrator menambah data layanan izin/surat Surat Izin Praktik Terapi Gigi dan Mulut', '127.0.0.1', 1, '2021-03-02 15:09:30'),
(106, '2021-03-02 15:39:01', 'administrator menambah Syarat Izin FC KTP', '127.0.0.1', 1, '2021-03-02 15:39:01'),
(107, '2021-03-02 15:39:34', 'administrator menghapus Syarat Izin dengan ID = 1 - 0', '127.0.0.1', 1, '2021-03-02 15:39:34'),
(108, '2021-03-02 15:39:43', 'administrator menambah Syarat Izin FC KTP', '127.0.0.1', 1, '2021-03-02 15:39:43'),
(109, '2021-03-02 15:39:50', 'administrator menambah Syarat Izin FC NPWP', '127.0.0.1', 1, '2021-03-02 15:39:50'),
(110, '2021-03-02 15:39:55', 'administrator mengubah Syarat Izin dengan ID = 3 - FC NPWPs', '127.0.0.1', 1, '2021-03-02 15:39:55'),
(111, '2021-03-02 15:39:58', 'administrator mengubah Syarat Izin dengan ID = 2 - FC KTPs', '127.0.0.1', 1, '2021-03-02 15:39:58'),
(112, '2021-03-02 15:40:03', 'administrator mengubah Syarat Izin dengan ID = 2 - FC KTP', '127.0.0.1', 1, '2021-03-02 15:40:03'),
(113, '2021-03-02 15:40:06', 'administrator mengubah Syarat Izin dengan ID = 3 - FC NPWP', '127.0.0.1', 1, '2021-03-02 15:40:06'),
(114, '2021-03-02 15:40:34', 'administrator menghapus Syarat Izin dengan ID = 3 - FC NPWP', '127.0.0.1', 1, '2021-03-02 15:40:34'),
(115, '2021-03-02 15:42:03', 'administrator menambah data layanan izin/surat Surat Izin Praktik Terapi Gigi dan Mulut Bau', '127.0.0.1', 1, '2021-03-02 15:42:03'),
(116, '2021-03-02 15:46:17', 'administrator menambah Syarat Izin asdasd', '127.0.0.1', 1, '2021-03-02 15:46:17'),
(117, '2021-03-02 15:47:47', 'administrator menghapus layanan izin/surat dengan ID = 4 - Surat Izin Praktik Terapi Gigi dan Mulut Bau', '127.0.0.1', 1, '2021-03-02 15:47:47'),
(118, '2021-03-02 16:01:40', 'administrator menambah data kategori bidang berita Semua', '127.0.0.1', 1, '2021-03-02 16:01:40'),
(119, '2021-03-02 16:02:04', 'administrator menambah data kategori bidang berita Kepala Dinas DPMPTSP', '127.0.0.1', 1, '2021-03-02 16:02:04'),
(120, '2021-03-02 16:02:23', 'administrator menambah data kategori bidang berita Sekretariat DPMPTSP', '127.0.0.1', 1, '2021-03-02 16:02:23'),
(121, '2021-03-02 16:02:42', 'administrator menambah data kategori bidang berita Bidang A', '127.0.0.1', 1, '2021-03-02 16:02:42'),
(122, '2021-03-02 16:02:47', 'administrator menambah data kategori bidang berita Bidang B', '127.0.0.1', 1, '2021-03-02 16:02:47'),
(123, '2021-03-02 17:36:25', 'Administrator CodeIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-03-02 17:36:25'),
(124, '2021-03-02 18:04:17', 'Administrator CodeIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-03-02 18:04:17'),
(125, '2021-03-02 18:13:47', 'Administrator CodeIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-03-02 18:13:47'),
(126, '2021-03-02 18:23:30', 'Administrator CodeIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-03-02 18:23:30'),
(127, '2021-03-02 18:39:15', 'Administrator CodeIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-03-02 18:39:15'),
(128, '2021-03-02 18:42:23', 'Administrator CodeIgniter melakukan login ke sistem', '::1', 1, '2021-03-02 18:42:23'),
(129, '2021-03-02 18:56:08', 'Administrator CodeIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-03-02 18:56:08'),
(130, '2021-03-02 19:18:04', 'Administrator CodeIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-03-02 19:18:04'),
(131, '2021-03-03 07:44:34', 'Administrator CodeIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-03-03 07:44:34'),
(132, '2021-03-03 07:45:52', 'administrator menambah data berita ', '127.0.0.1', 1, '2021-03-03 07:45:52'),
(133, '2021-03-03 07:57:02', 'administrator mengubah data berita dengan ID = 1', '127.0.0.1', 1, '2021-03-03 07:57:02'),
(134, '2021-03-03 07:57:40', 'administrator mengubah data berita dengan ID = 1', '127.0.0.1', 1, '2021-03-03 07:57:40'),
(135, '2021-03-03 08:01:21', 'administrator menghapus data berita dengan ID = 1', '127.0.0.1', 1, '2021-03-03 08:01:21'),
(136, '2021-03-03 08:12:40', 'administrator menambah data berita ', '127.0.0.1', 1, '2021-03-03 08:12:40'),
(137, '2021-03-03 08:21:27', 'administrator mengubah data berita dengan ID = 2', '127.0.0.1', 1, '2021-03-03 08:21:27'),
(138, '2021-03-03 08:22:05', 'administrator mengubah data berita dengan ID = 2', '127.0.0.1', 1, '2021-03-03 08:22:05'),
(139, '2021-03-03 10:21:05', 'Administrator CodeIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-03-03 10:21:05'),
(140, '2021-03-03 12:33:33', 'administrator mengubah data konten profil dinas dengan ID = 1', '127.0.0.1', 1, '2021-03-03 12:33:33'),
(141, '2021-03-03 12:33:41', 'administrator mengubah data konten profil dinas dengan ID = 4', '127.0.0.1', 1, '2021-03-03 12:33:41'),
(142, '2021-03-03 12:34:32', 'administrator mengubah data konten profil dinas dengan ID = 1', '127.0.0.1', 1, '2021-03-03 12:34:32'),
(143, '2021-03-03 12:35:21', 'administrator mengubah data konten profil dinas dengan ID = sejarah', '127.0.0.1', 1, '2021-03-03 12:35:21'),
(144, '2021-03-03 12:36:06', 'administrator mengubah data konten profil dinas dengan ID = sejarah', '127.0.0.1', 1, '2021-03-03 12:36:06'),
(145, '2021-03-03 12:36:13', 'administrator mengubah data konten profil dinas dengan ID = visi', '127.0.0.1', 1, '2021-03-03 12:36:13'),
(146, '2021-03-03 12:36:22', 'administrator mengubah data konten profil dinas dengan ID = tupoksi', '127.0.0.1', 1, '2021-03-03 12:36:22'),
(147, '2021-03-03 12:36:28', 'administrator mengubah data konten profil dinas dengan ID = maklumat', '127.0.0.1', 1, '2021-03-03 12:36:28'),
(148, '2021-03-03 12:40:02', 'administrator mengubah data konten profil dinas dengan ID = sambutan', '127.0.0.1', 1, '2021-03-03 12:40:02'),
(149, '2021-03-03 12:40:09', 'administrator mengubah data konten profil dinas dengan ID = sejarah', '127.0.0.1', 1, '2021-03-03 12:40:09'),
(150, '2021-03-03 12:40:17', 'administrator mengubah data konten profil dinas dengan ID = sambutan', '127.0.0.1', 1, '2021-03-03 12:40:17'),
(151, '2021-03-03 12:46:38', 'administrator mengubah data konten profil dinas dengan ID = sambutan', '127.0.0.1', 1, '2021-03-03 12:46:38'),
(152, '2021-03-03 12:46:43', 'administrator mengubah data konten profil dinas menu = sambutan', '127.0.0.1', 1, '2021-03-03 12:46:43'),
(153, '2021-03-03 12:48:18', 'administrator mengubah data konten profil dinas menu = sambutan', '127.0.0.1', 1, '2021-03-03 12:48:18'),
(154, '2021-03-03 12:49:13', 'administrator mengubah data konten profil dinas menu = sambutan', '127.0.0.1', 1, '2021-03-03 12:49:13'),
(155, '2021-03-03 13:24:23', 'administrator menambah data slider dengan ID = ', '127.0.0.1', 1, '2021-03-03 13:24:23'),
(156, '2021-03-03 13:30:18', 'administrator menambah data slider dengan ID = 1', '127.0.0.1', 1, '2021-03-03 13:30:18'),
(157, '2021-03-03 13:30:18', 'administrator mengubah data slider dengan ID = 1 - 1', '127.0.0.1', 1, '2021-03-03 13:30:18'),
(158, '2021-03-03 13:30:25', 'administrator menambah data slider dengan ID = 1', '127.0.0.1', 1, '2021-03-03 13:30:25'),
(159, '2021-03-03 13:30:25', 'administrator mengubah data slider dengan ID = 1 - 1', '127.0.0.1', 1, '2021-03-03 13:30:25'),
(160, '2021-03-03 13:30:58', 'administrator menambah data slider dengan ID = 1', '127.0.0.1', 1, '2021-03-03 13:30:58'),
(161, '2021-03-03 13:30:58', 'administrator mengubah data slider dengan ID = 1 - 1', '127.0.0.1', 1, '2021-03-03 13:30:58'),
(162, '2021-03-03 13:32:34', 'administrator menghapus data slider dengan ID = 1 - 1', '127.0.0.1', 1, '2021-03-03 13:32:34'),
(163, '2021-03-03 13:45:34', 'administrator menambah data Regulasi dengan ID = ', '127.0.0.1', 1, '2021-03-03 13:45:34'),
(164, '2021-03-03 13:47:00', 'administrator menambah data Regulasi dengan ID = 1', '127.0.0.1', 1, '2021-03-03 13:47:00'),
(165, '2021-03-03 13:47:07', 'administrator menghapus data Regulasi dengan ID = 1 - 1', '127.0.0.1', 1, '2021-03-03 13:47:07'),
(166, '2021-03-03 14:03:13', 'administrator menambah data tracking Indra', '127.0.0.1', 1, '2021-03-03 14:03:13'),
(167, '2021-03-03 14:08:17', 'administrator mengubah data tracking dengan ID = 1 - Indras', '127.0.0.1', 1, '2021-03-03 14:08:17'),
(168, '2021-03-03 14:11:40', 'administrator mengubah data tracking dengan ID = 1 - Indrass', '127.0.0.1', 1, '2021-03-03 14:11:40'),
(169, '2021-03-03 14:11:50', 'administrator menambah data tracking dfgdgf', '127.0.0.1', 1, '2021-03-03 14:11:50'),
(170, '2021-03-03 14:11:55', 'administrator mengubah data tracking dengan ID = 2 - dfgdgfsss45345', '127.0.0.1', 1, '2021-03-03 14:11:55'),
(171, '2021-03-03 14:16:24', 'administrator mengubah data tracking dengan ID = 2', '127.0.0.1', 1, '2021-03-03 14:16:24'),
(172, '2021-03-03 14:16:27', 'administrator mengubah data tracking dengan ID = 1', '127.0.0.1', 1, '2021-03-03 14:16:27'),
(173, '2021-03-03 15:09:52', 'administrator menambah data Struktur Organisasi dengan ID = ', '127.0.0.1', 1, '2021-03-03 15:09:52'),
(174, '2021-03-03 15:10:32', 'administrator menambah data Struktur Organisasi dengan ID = ', '127.0.0.1', 1, '2021-03-03 15:10:32'),
(175, '2021-03-03 15:13:42', 'administrator mengubah data Struktur Organisasi dengan ID = 2', '127.0.0.1', 1, '2021-03-03 15:13:42'),
(176, '2021-03-03 15:14:42', 'administrator menambah data Struktur Organisasi dengan ID = 2', '127.0.0.1', 1, '2021-03-03 15:14:42'),
(177, '2021-03-03 21:41:34', 'Administrator CodeIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-03-03 21:41:34'),
(178, '2021-03-03 21:42:01', 'administrator mengubah data konten profil dinas dengan ID = visi', '127.0.0.1', 1, '2021-03-03 21:42:01'),
(179, '2021-03-03 21:42:07', 'administrator mengubah data konten profil dinas dengan ID = sejarah', '127.0.0.1', 1, '2021-03-03 21:42:07'),
(180, '2021-03-03 21:42:15', 'administrator mengubah data konten profil dinas dengan ID = sambutan', '127.0.0.1', 1, '2021-03-03 21:42:15'),
(181, '2021-03-03 21:42:21', 'administrator mengubah data konten profil dinas dengan ID = tupoksi', '127.0.0.1', 1, '2021-03-03 21:42:21'),
(182, '2021-03-03 21:42:28', 'administrator mengubah data konten profil dinas dengan ID = maklumat', '127.0.0.1', 1, '2021-03-03 21:42:28'),
(183, '2021-03-03 22:26:43', 'Update Informasi Sistem ', '127.0.0.1', 1, '2021-03-03 22:26:43'),
(184, '2021-03-03 22:26:52', 'Update Informasi Sistem ', '127.0.0.1', 1, '2021-03-03 22:26:52'),
(185, '2021-03-03 22:26:59', 'Update Informasi Sistem ', '127.0.0.1', 1, '2021-03-03 22:26:59'),
(186, '2021-03-03 22:29:52', 'administrator mengubah data group dengan ID = 2 - Inputer Berita', '127.0.0.1', 1, '2021-03-03 22:29:52'),
(187, '2021-03-03 22:30:45', 'administrator mengubah data user dengan ID = 2 - inputer', '127.0.0.1', 1, '2021-03-03 22:30:45'),
(188, '2021-03-03 22:36:34', 'Inputer PTSP melakukan login ke sistem', '127.0.0.1', 2, '2021-03-03 22:36:34'),
(189, '2021-03-03 22:38:06', 'Inputer PTSP melakukan login ke sistem', '127.0.0.1', 2, '2021-03-03 22:38:06'),
(190, '2021-03-03 22:46:58', 'inputer mengubah data profile dengan ID = 2 - inputer', '127.0.0.1', 2, '2021-03-03 22:46:58'),
(191, '2021-03-04 14:02:48', 'Administrator CodeIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-03-04 14:02:48'),
(192, '2021-03-04 14:05:59', 'administrator mengubah data konten profil dinas dengan ID = sejarah', '127.0.0.1', 1, '2021-03-04 14:05:59'),
(193, '2021-03-04 14:26:22', 'Administrator CodeIgniter melakukan login ke sistem', '::1', 1, '2021-03-04 14:26:22'),
(194, '2021-03-04 14:26:39', 'administrator menghapus data berita dengan ID = 2', '::1', 1, '2021-03-04 14:26:39'),
(195, '2021-03-04 14:31:09', 'administrator menambah data slider dengan ID = ', '::1', 1, '2021-03-04 14:31:09'),
(196, '2021-03-04 14:32:53', 'administrator menambah data slider dengan ID = ', '::1', 1, '2021-03-04 14:32:53'),
(197, '2021-03-04 14:34:37', 'administrator menambah data slider dengan ID = ', '::1', 1, '2021-03-04 14:34:37'),
(198, '2021-03-04 14:54:13', 'administrator menambah data berita ', '::1', 1, '2021-03-04 14:54:13'),
(199, '2021-03-04 14:57:07', 'administrator menambah data berita ', '::1', 1, '2021-03-04 14:57:07'),
(200, '2021-03-04 14:59:13', 'administrator menambah data berita ', '::1', 1, '2021-03-04 14:59:13'),
(201, '2021-03-04 15:12:46', 'administrator mengubah data konten profil dinas dengan ID = sejarah', '::1', 1, '2021-03-04 15:12:46'),
(202, '2021-03-04 15:19:27', 'administrator mengubah data konten profil dinas dengan ID = visi', '::1', 1, '2021-03-04 15:19:27'),
(203, '2021-03-04 15:22:11', 'administrator mengubah data konten profil dinas dengan ID = sejarah', '::1', 1, '2021-03-04 15:22:11'),
(204, '2021-03-04 15:23:04', 'administrator mengubah data konten profil dinas dengan ID = visi', '::1', 1, '2021-03-04 15:23:04'),
(205, '2021-03-04 15:25:25', 'administrator mengubah data konten profil dinas dengan ID = sambutan', '::1', 1, '2021-03-04 15:25:25'),
(206, '2021-03-04 15:29:18', 'administrator mengubah data konten profil dinas menu = sambutan', '::1', 1, '2021-03-04 15:29:18'),
(207, '2021-03-04 15:38:57', 'administrator mengubah data konten profil dinas dengan ID = tupoksi', '::1', 1, '2021-03-04 15:38:57'),
(208, '2021-03-04 15:40:14', 'administrator mengubah data konten profil dinas dengan ID = tupoksi', '::1', 1, '2021-03-04 15:40:14'),
(209, '2021-03-04 15:40:20', 'administrator mengubah data konten profil dinas dengan ID = tupoksi', '::1', 1, '2021-03-04 15:40:20'),
(210, '2021-03-04 15:41:32', 'administrator mengubah data konten profil dinas dengan ID = tupoksi', '::1', 1, '2021-03-04 15:41:32'),
(211, '2021-03-04 15:43:55', 'administrator mengubah data konten profil dinas dengan ID = maklumat', '::1', 1, '2021-03-04 15:43:55'),
(212, '2021-03-04 15:51:59', 'administrator mengubah data Struktur Organisasi dengan ID = 1', '::1', 1, '2021-03-04 15:51:59'),
(213, '2021-03-04 15:52:11', 'administrator menambah data Struktur Organisasi dengan ID = 1', '::1', 1, '2021-03-04 15:52:11'),
(214, '2021-03-04 15:53:09', 'administrator mengubah data Struktur Organisasi dengan ID = 1', '::1', 1, '2021-03-04 15:53:09'),
(215, '2021-03-04 15:53:18', 'administrator menambah data Struktur Organisasi dengan ID = 1', '::1', 1, '2021-03-04 15:53:18'),
(216, '2021-03-04 15:53:29', 'administrator mengubah data Struktur Organisasi dengan ID = 1', '::1', 1, '2021-03-04 15:53:29'),
(217, '2021-03-04 15:53:40', 'administrator mengubah data Struktur Organisasi dengan ID = 1', '::1', 1, '2021-03-04 15:53:40'),
(218, '2021-03-04 15:53:56', 'administrator mengubah data Struktur Organisasi dengan ID = 1', '::1', 1, '2021-03-04 15:53:56'),
(219, '2021-03-04 15:56:35', 'administrator menambah data Struktur Organisasi dengan ID = 2', '::1', 1, '2021-03-04 15:56:35'),
(220, '2021-03-04 15:57:31', 'administrator menambah data Struktur Organisasi dengan ID = ', '::1', 1, '2021-03-04 15:57:31'),
(221, '2021-03-04 15:58:17', 'administrator menambah data Struktur Organisasi dengan ID = ', '::1', 1, '2021-03-04 15:58:17'),
(222, '2021-03-04 16:09:34', 'administrator menambah data Regulasi dengan ID = ', '::1', 1, '2021-03-04 16:09:34'),
(223, '2021-03-04 16:10:06', 'administrator menambah data Regulasi dengan ID = ', '::1', 1, '2021-03-04 16:10:06'),
(224, '2021-03-04 16:13:01', 'administrator menambah data Regulasi dengan ID = ', '::1', 1, '2021-03-04 16:13:01'),
(225, '2021-03-04 16:29:49', 'administrator menghapus layanan izin/surat dengan ID = 3 - Surat Izin Praktik Terapi Gigi dan Mulut', '::1', 1, '2021-03-04 16:29:49'),
(226, '2021-03-04 16:36:14', 'administrator menambah data layanan izin/surat Surat Izin Praktik Tenaga Gizi', '::1', 1, '2021-03-04 16:36:14'),
(227, '2021-03-04 16:37:14', 'administrator menambah data layanan izin/surat Surat Izin Praktik Tenaga Teknis Kefarmasian', '::1', 1, '2021-03-04 16:37:14'),
(228, '2021-03-04 16:38:04', 'administrator menambah data layanan izin/surat Surat Izin Praktik Terapi Gigi dan Mulut', '::1', 1, '2021-03-04 16:38:04'),
(229, '2021-03-04 16:39:00', 'administrator menambah Syarat Izin FC KTP', '::1', 1, '2021-03-04 16:39:00'),
(230, '2021-03-04 16:39:07', 'administrator menambah Syarat Izin FC NPWP', '::1', 1, '2021-03-04 16:39:07'),
(231, '2021-03-04 16:39:15', 'administrator menambah Syarat Izin FC STR', '::1', 1, '2021-03-04 16:39:15'),
(232, '2021-03-04 16:39:25', 'administrator menambah Syarat Izin FC KTP', '::1', 1, '2021-03-04 16:39:25'),
(233, '2021-03-04 16:39:32', 'administrator menambah Syarat Izin FC NPWP', '::1', 1, '2021-03-04 16:39:32'),
(234, '2021-03-04 16:39:39', 'administrator menambah Syarat Izin FC STR', '::1', 1, '2021-03-04 16:39:39'),
(235, '2021-03-04 16:39:50', 'administrator menambah Syarat Izin FC KTP', '::1', 1, '2021-03-04 16:39:50'),
(236, '2021-03-04 16:39:55', 'administrator menambah Syarat Izin FC NPWP', '::1', 1, '2021-03-04 16:39:55'),
(237, '2021-03-04 16:40:02', 'administrator menambah Syarat Izin FC STR', '::1', 1, '2021-03-04 16:40:02'),
(238, '2021-03-06 12:54:41', 'Administrator CodeIgniter melakukan login ke sistem', '::1', 1, '2021-03-06 12:54:41'),
(239, '2021-03-06 12:54:50', 'administrator mengubah data konten profil dinas dengan ID = sejarah', '::1', 1, '2021-03-06 12:54:50'),
(240, '2021-03-06 14:47:21', 'Administrator CodeIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-03-06 14:47:21'),
(241, '2021-03-06 15:12:21', 'Administrator CodeIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-03-06 15:12:21'),
(242, '2021-03-06 15:13:26', 'administrator menghapus data message dengan ID = 5 - asdasd', '127.0.0.1', 1, '2021-03-06 15:13:26'),
(243, '2021-03-06 18:49:16', 'Administrator CodeIgniter melakukan login ke sistem', '::1', 1, '2021-03-06 18:49:16'),
(244, '2021-03-06 18:49:44', 'administrator menambah data Struktur Organisasi dengan nama = Tes', '::1', 1, '2021-03-06 18:49:44'),
(245, '2021-03-06 19:02:20', 'administrator menghapus data Struktur Organisasi dengan ID = 5 - 5', '::1', 1, '2021-03-06 19:02:20'),
(246, '2021-03-09 11:56:51', 'Administrator CodeIgniter melakukan login ke sistem', '172.30.10.1', 1, '2021-03-09 11:56:51'),
(247, '2021-03-09 12:19:08', 'Administrator CodeIgniter melakukan login ke sistem', '172.30.10.1', 1, '2021-03-09 12:19:08'),
(248, '2021-03-09 12:28:23', 'administrator mengubah data slider dengan ID = 3', '172.30.10.1', 1, '2021-03-09 12:28:23'),
(249, '2021-03-10 09:53:56', 'Administrator CodeIgniter melakukan login ke sistem', '172.30.10.1', 1, '2021-03-10 09:53:56'),
(250, '2021-03-10 09:56:50', 'administrator mengubah data slider dengan ID = 4', '172.30.10.1', 1, '2021-03-10 09:56:50'),
(251, '2021-03-10 09:58:21', 'administrator mengubah data slider dengan ID = 2', '172.30.10.1', 1, '2021-03-10 09:58:21'),
(252, '2021-03-10 09:58:37', 'administrator mengubah data slider dengan ID = 2', '172.30.10.1', 1, '2021-03-10 09:58:37'),
(253, '2021-03-10 09:58:47', 'administrator mengubah data slider dengan ID = 4', '172.30.10.1', 1, '2021-03-10 09:58:47'),
(254, '2021-03-10 15:23:39', 'Administrator CodeIgniter melakukan login ke sistem', '172.30.10.1', 1, '2021-03-10 15:23:39'),
(255, '2021-03-10 15:27:37', 'administrator mengubah data Struktur Organisasi dengan ID = 2', '172.30.10.1', 1, '2021-03-10 15:27:37'),
(256, '2021-03-10 15:28:18', 'administrator mengubah data Struktur Organisasi dengan ID = 3', '172.30.10.1', 1, '2021-03-10 15:28:18'),
(257, '2021-03-10 15:35:12', 'administrator menambah data Struktur Organisasi dengan nama = RACHMAT MAULANA, SH', '172.30.10.1', 1, '2021-03-10 15:35:12'),
(258, '2021-03-10 15:39:05', 'administrator menambah data Struktur Organisasi dengan nama = ARNI NADIMIN. S. Sos', '172.30.10.1', 1, '2021-03-10 15:39:05'),
(259, '2021-03-10 15:49:17', 'administrator menambah data Struktur Organisasi dengan nama = RUSTAM RUSLI, ST', '172.30.10.1', 1, '2021-03-10 15:49:17'),
(260, '2021-03-10 16:11:40', 'administrator menambah data Struktur Organisasi dengan nama = MUTMAINNAH UMAR, SH', '172.30.10.1', 1, '2021-03-10 16:11:40'),
(261, '2021-03-12 16:01:25', 'Administrator CodeIgniter melakukan login ke sistem', '172.30.10.1', 1, '2021-03-12 16:01:25'),
(262, '2021-03-12 16:35:54', 'administrator menghapus data Struktur Organisasi dengan ID = 4 - 4', '172.30.10.1', 1, '2021-03-12 16:35:54'),
(263, '2021-03-12 16:40:17', 'administrator menambah data Struktur Organisasi dengan nama = MAWARI, S.Pd., M.Sc.', '172.30.10.1', 1, '2021-03-12 16:40:17'),
(264, '2021-03-12 16:44:11', 'administrator menambah data Struktur Organisasi dengan nama = NISFUL IMTIKHAN, SH', '172.30.10.1', 1, '2021-03-12 16:44:11'),
(265, '2021-03-12 16:49:09', 'administrator menambah data Struktur Organisasi dengan nama = HARYONO, S. Sos', '172.30.10.1', 1, '2021-03-12 16:49:09'),
(266, '2021-03-12 16:53:13', 'administrator menambah data Struktur Organisasi dengan nama = DEWI SARTIKA', '172.30.10.1', 1, '2021-03-12 16:53:13'),
(267, '2021-03-12 16:58:02', 'administrator menambah data Struktur Organisasi dengan nama = NURFATMA, SH', '172.30.10.1', 1, '2021-03-12 16:58:02'),
(268, '2021-03-12 17:00:54', 'administrator menambah data Struktur Organisasi dengan nama = WAODE NURFALINA SUHA, SE', '172.30.10.1', 1, '2021-03-12 17:00:54'),
(269, '2021-03-12 17:41:22', 'administrator menambah data Struktur Organisasi dengan nama = HASNIAH, A. Md', '172.30.10.1', 1, '2021-03-12 17:41:22'),
(270, '2021-03-12 17:44:22', 'administrator menambah data Struktur Organisasi dengan nama = WA ODE ROSDIANA, SE', '172.30.10.1', 1, '2021-03-12 17:44:22'),
(271, '2021-03-12 17:46:26', 'administrator menambah data Struktur Organisasi dengan nama = WA ODE SITTI HASANAH', '172.30.10.1', 1, '2021-03-12 17:46:26'),
(272, '2021-03-15 00:21:57', 'Administrator CodeIgniter melakukan login ke sistem', '172.30.10.1', 1, '2021-03-15 00:21:57'),
(273, '2021-03-15 00:22:47', 'Update Informasi Sistem ', '172.30.10.1', 1, '2021-03-15 00:22:47'),
(274, '2021-03-15 09:28:07', 'Administrator CodeIgniter melakukan login ke sistem', '172.30.10.1', 1, '2021-03-15 09:28:07'),
(275, '2021-03-15 10:08:18', 'administrator menambah data Struktur Organisasi dengan nama = WA ODE SARWATI, S. Sos', '172.30.10.1', 1, '2021-03-15 10:08:18'),
(276, '2021-03-15 10:28:13', 'administrator menambah data Struktur Organisasi dengan nama = MAKSUDDIN BUCHARI, S.Pi', '172.30.10.1', 1, '2021-03-15 10:28:13'),
(277, '2021-03-15 10:49:55', 'administrator menambah data Struktur Organisasi dengan nama = TEGAR ARYU SAPUTRA, SH., MH', '172.30.10.1', 1, '2021-03-15 10:49:55'),
(278, '2021-03-15 11:28:06', 'administrator menambah data Struktur Organisasi dengan nama = HAFID, SE', '172.30.10.1', 1, '2021-03-15 11:28:06'),
(279, '2021-03-15 11:33:46', 'administrator menambah data Struktur Organisasi dengan nama = ZURYATI, SE', '172.30.10.1', 1, '2021-03-15 11:33:46'),
(280, '2021-03-15 13:23:28', 'administrator menambah data Struktur Organisasi dengan nama = MUHAMMAD SOFRIL, S.Pi., MM', '172.30.10.1', 1, '2021-03-15 13:23:28'),
(281, '2021-03-15 13:28:18', 'administrator menambah data Struktur Organisasi dengan nama = RYAN CARLOS', '172.30.10.1', 1, '2021-03-15 13:28:18'),
(282, '2021-03-15 13:33:39', 'administrator menambah data Struktur Organisasi dengan nama = LA ODE ADNAN, S.Sos', '172.30.10.1', 1, '2021-03-15 13:33:39'),
(283, '2021-03-15 13:38:54', 'administrator menambah data Struktur Organisasi dengan nama = VERA SUKMAWATI, SE', '172.30.10.1', 1, '2021-03-15 13:38:54'),
(284, '2021-03-15 13:57:59', 'administrator menambah data Struktur Organisasi dengan nama = WA ODE FARIDAH, SH', '172.30.10.1', 1, '2021-03-15 13:57:59'),
(285, '2021-03-15 14:14:45', 'administrator menambah data Struktur Organisasi dengan nama = POPY RISMA TRISANTI, A.Md', '172.30.10.1', 1, '2021-03-15 14:14:45'),
(286, '2021-03-15 14:52:28', 'administrator menambah data Struktur Organisasi dengan nama = LA ODE SAFRUDIN, A.Md.Komp', '172.30.10.1', 1, '2021-03-15 14:52:28'),
(287, '2021-03-15 15:04:42', 'administrator menambah data Struktur Organisasi dengan nama = HERLIN, SH', '172.30.10.1', 1, '2021-03-15 15:04:42'),
(288, '2021-03-15 15:23:19', 'administrator menambah data Struktur Organisasi dengan nama = YANA MILAWATY, SE', '172.30.10.1', 1, '2021-03-15 15:23:19'),
(289, '2021-03-15 15:40:52', 'administrator menambah data Struktur Organisasi dengan nama = FEMIYANI, SE', '172.30.10.1', 1, '2021-03-15 15:40:52'),
(290, '2021-03-16 11:21:34', 'Administrator CodeIgniter melakukan login ke sistem', '172.30.10.1', 1, '2021-03-16 11:21:34'),
(291, '2021-03-18 16:39:06', 'Administrator CodeIgniter melakukan login ke sistem', '172.30.10.1', 1, '2021-03-18 16:39:06'),
(292, '2021-03-18 17:27:03', 'administrator mengubah data konten profil dinas dengan ID = tupoksi', '172.30.10.1', 1, '2021-03-18 17:27:03'),
(293, '2021-03-18 17:28:37', 'administrator mengubah data konten profil dinas dengan ID = tupoksi', '172.30.10.1', 1, '2021-03-18 17:28:37'),
(295, '2021-03-23 12:00:55', 'Administrator CodeIgniter melakukan login ke sistem', '172.30.10.1', 1, '2021-03-23 12:00:55'),
(297, '2021-03-23 12:07:30', 'administrator mengubah data konten profil dinas dengan ID = struktur', '172.30.10.1', 1, '2021-03-23 12:07:30'),
(299, '2021-03-30 12:03:36', 'Inputer PTSP melakukan login ke sistem', '172.30.10.1', 2, '2021-03-30 12:03:36'),
(301, '2021-03-30 12:06:40', 'inputer mengubah data berita dengan ID = 5', '172.30.10.1', 2, '2021-03-30 12:06:40'),
(303, '2021-03-30 12:11:22', 'inputer mengubah data berita dengan ID = 4', '172.30.10.1', 2, '2021-03-30 12:11:22'),
(305, '2021-04-23 10:22:23', 'Administrator CodeIgniter melakukan login ke sistem', '172.30.10.1', 1, '2021-04-23 10:22:23'),
(307, '2021-04-23 10:22:46', 'Administrator CodeIgniter melakukan login ke sistem', '172.30.10.1', 1, '2021-04-23 10:22:46'),
(309, '2021-04-23 10:28:25', 'administrator mengubah data konten profil dinas dengan ID = maklumat', '172.30.10.1', 1, '2021-04-23 10:28:25'),
(311, '2021-04-23 10:30:06', 'administrator mengubah data sektor izin dengan ID = 1 - PENDIDIKAN', '172.30.10.1', 1, '2021-04-23 10:30:06'),
(313, '2021-04-23 10:52:20', 'administrator menambah data berita ', '172.30.10.1', 1, '2021-04-23 10:52:20'),
(315, '2021-04-23 10:55:48', 'administrator menambah data tracking anugrah', '172.30.10.1', 1, '2021-04-23 10:55:48'),
(317, '2021-04-23 10:56:17', 'administrator mengubah data tracking dengan ID = 3', '172.30.10.1', 1, '2021-04-23 10:56:17'),
(319, '2021-04-23 11:08:04', 'administrator menambah data user tegar', '172.30.10.1', 1, '2021-04-23 11:08:04'),
(321, '2021-04-23 11:08:52', 'Tegar melakukan login ke sistem', '172.30.10.1', 3, '2021-04-23 11:08:52'),
(323, '2021-04-23 11:09:01', 'administrator menambah data user alief', '172.30.10.1', 1, '2021-04-23 11:09:01'),
(325, '2021-04-23 11:09:23', 'Alief Agung Nugraha melakukan login ke sistem', '172.30.10.1', 5, '2021-04-23 11:09:23'),
(327, '2021-04-23 11:10:50', 'Inputer PTSP melakukan login ke sistem', '172.30.10.1', 2, '2021-04-23 11:10:50'),
(329, '2021-04-27 11:34:53', 'Tegar melakukan login ke sistem', '172.30.10.1', 3, '2021-04-27 11:34:53'),
(331, '2021-04-27 11:49:24', 'Tegar melakukan login ke sistem', '172.30.10.1', 3, '2021-04-27 11:49:24'),
(333, '2021-04-27 11:51:58', 'tegar menambah data layanan izin/surat PERMOHONAN IZIN APOTEK', '172.30.10.1', 3, '2021-04-27 11:51:58'),
(335, '2021-04-27 11:53:46', 'tegar menambah data layanan izin/surat PERMOHONAN IZIN MENDIRIKAN BANGUNAN ALIH FUNGSI', '172.30.10.1', 3, '2021-04-27 11:53:46'),
(337, '2021-04-27 11:55:19', 'tegar menambah data layanan izin/surat PERMOHONAN IZIN MENDIRIKAN BANGUNAN BALIK NAMA', '172.30.10.1', 3, '2021-04-27 11:55:19'),
(339, '2021-04-27 12:02:43', 'tegar mengubah data tracking dengan ID = 2', '172.30.10.1', 3, '2021-04-27 12:02:43'),
(341, '2021-04-27 12:05:43', 'tegar menambah data tracking TEGAR ARYU', '172.30.10.1', 3, '2021-04-27 12:05:43'),
(343, '2021-04-27 12:21:59', 'Tegar melakukan login ke sistem', '172.30.10.1', 3, '2021-04-27 12:21:59'),
(345, '2021-04-28 10:18:50', 'Tegar melakukan login ke sistem', '172.30.10.1', 3, '2021-04-28 10:18:50'),
(347, '2021-04-28 10:32:52', 'tegar menambah data layanan izin/surat PERMOHONAN IZIN MENDIRIKAN BANGUNAN FASILITAS PEMERINTAHAN', '172.30.10.1', 3, '2021-04-28 10:32:52'),
(349, '2021-04-28 14:47:29', 'Tegar melakukan login ke sistem', '172.30.10.1', 3, '2021-04-28 14:47:29'),
(351, '2021-04-28 14:48:42', 'tegar mengubah layanan izin/surat dengan ID = 15 - PERMOHONAN IZIN MENDIRIKAN BANGUNAN FASILITAS PEMERINTAH', '172.30.10.1', 3, '2021-04-28 14:48:42'),
(353, '2021-04-28 14:51:56', 'tegar menambah data layanan izin/surat PERMOHONAN IZIN MENDIRIKAN BANGUNAN  FASILITAS PEMERINTAH RUMAH SAKIT', '172.30.10.1', 3, '2021-04-28 14:51:56'),
(355, '2021-05-04 10:39:27', 'Tegar melakukan login ke sistem', '172.30.10.1', 3, '2021-05-04 10:39:27'),
(357, '2021-05-04 11:27:10', 'tegar menambah data berita ', '172.30.10.1', 3, '2021-05-04 11:27:10'),
(359, '2021-05-04 11:28:13', 'tegar menghapus data berita dengan ID = 9', '172.30.10.1', 3, '2021-05-04 11:28:13'),
(361, '2021-05-04 11:29:37', 'tegar menambah data berita ', '172.30.10.1', 3, '2021-05-04 11:29:37'),
(363, '2021-05-04 11:37:40', 'tegar mengubah data berita dengan ID = 11', '172.30.10.1', 3, '2021-05-04 11:37:40'),
(365, '2021-05-04 12:33:17', 'tegar menambah data layanan izin/surat PERMOHONAN IZIN MENDIRIKAN BANGUNAN PAPAN REKLAME', '172.30.10.1', 3, '2021-05-04 12:33:17'),
(367, '2021-05-04 12:42:08', 'tegar menambah data layanan izin/surat PERMOHONAN IZIN MENDIRIKAN BANGUNAN HUNIAN', '172.30.10.1', 3, '2021-05-04 12:42:08'),
(369, '2021-05-04 12:43:13', 'tegar menambah data layanan izin/surat PERMOHONAN IZIN MENDIRIKAN BANGUNAN PERUMAHAN', '172.30.10.1', 3, '2021-05-04 12:43:13'),
(371, '2021-05-04 12:59:29', 'tegar mengubah layanan izin/surat dengan ID = 17 - PERMOHONAN IZIN MENDIRIKAN BANGUNAN  FASILITAS PEMERINTAH RUMAH SAKIT', '172.30.10.1', 3, '2021-05-04 12:59:29'),
(373, '2021-05-06 13:02:21', 'Tegar melakukan login ke sistem', '172.30.10.1', 3, '2021-05-06 13:02:21'),
(375, '2021-05-06 13:04:15', 'Tegar melakukan login ke sistem', '172.30.10.1', 3, '2021-05-06 13:04:15'),
(377, '2021-05-10 10:26:01', 'Tegar melakukan login ke sistem', '172.30.10.1', 3, '2021-05-10 10:26:01'),
(379, '2021-05-10 10:40:16', 'Update Informasi Sistem ', '172.30.10.1', 3, '2021-05-10 10:40:16'),
(381, '2021-05-17 10:56:44', 'Tegar melakukan login ke sistem', '172.30.10.1', 3, '2021-05-17 10:56:44'),
(383, '2021-05-21 10:20:00', 'Administrator CodeIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-05-21 10:20:00'),
(384, '2021-06-09 13:14:58', 'Administrator CodeIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-06-09 13:14:58'),
(385, '2021-06-09 13:32:58', 'Update Informasi Sistem ', '127.0.0.1', 1, '2021-06-09 13:32:58'),
(386, '2021-06-09 13:33:01', 'Update Informasi Sistem ', '127.0.0.1', 1, '2021-06-09 13:33:01'),
(387, '2021-06-09 13:33:12', 'Update Informasi Sistem ', '127.0.0.1', 1, '2021-06-09 13:33:12'),
(388, '2021-06-09 13:33:16', 'Update Informasi Sistem ', '127.0.0.1', 1, '2021-06-09 13:33:16'),
(389, '2021-06-09 13:36:01', 'Update Informasi Sistem', '127.0.0.1', 1, '2021-06-09 13:36:01'),
(390, '2021-06-09 13:36:51', 'Update Informasi Sistem ', '127.0.0.1', 1, '2021-06-09 13:36:51'),
(391, '2021-06-09 13:44:29', 'Update Informasi Sistem ', '127.0.0.1', 1, '2021-06-09 13:44:29'),
(392, '2021-06-09 13:53:24', 'Update Informasi Sistem ', '127.0.0.1', 1, '2021-06-09 13:53:24'),
(393, '2021-06-10 07:12:00', 'Administrator CodeIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-06-10 07:12:00'),
(394, '2021-06-10 07:29:44', 'Administrator CodeIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-06-10 07:29:44'),
(395, '2021-06-10 07:56:24', 'Update Informasi Sistem', '127.0.0.1', 1, '2021-06-10 07:56:24'),
(396, '2021-06-10 07:57:31', 'Update Informasi Sistem', '127.0.0.1', 1, '2021-06-10 07:57:31'),
(397, '2021-06-10 08:07:29', 'Update Informasi Sistem', '127.0.0.1', 1, '2021-06-10 08:07:29'),
(398, '2021-06-10 08:07:36', 'Update Informasi Sistem', '127.0.0.1', 1, '2021-06-10 08:07:36'),
(399, '2021-06-10 08:10:31', 'Update Informasi Sistem', '127.0.0.1', 1, '2021-06-10 08:10:31'),
(400, '2021-06-10 08:11:20', 'Update Informasi Sistem', '127.0.0.1', 1, '2021-06-10 08:11:20'),
(401, '2021-06-10 08:11:47', 'Update Informasi Sistem', '127.0.0.1', 1, '2021-06-10 08:11:47'),
(402, '2021-06-10 08:29:00', 'Administrator CodeIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-06-10 08:29:00'),
(403, '2021-06-10 08:29:39', 'Administrator CodeIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-06-10 08:29:39'),
(404, '2021-06-10 09:23:10', 'Administrator CodeIgniter melakukan login ke sistem', '127.0.0.1', 1, '2021-06-10 09:23:10'),
(405, '2021-06-10 09:24:13', 'administrator mengubah data konten profil dinas dengan ID = sejarah', '127.0.0.1', 1, '2021-06-10 09:24:13'),
(406, '2021-06-10 09:24:37', 'administrator mengubah data konten profil dinas dengan ID = visi', '127.0.0.1', 1, '2021-06-10 09:24:37'),
(407, '2021-06-10 09:26:22', 'administrator mengubah data konten profil dinas dengan ID = sambutan', '127.0.0.1', 1, '2021-06-10 09:26:22'),
(408, '2021-06-10 09:26:49', 'administrator mengubah data konten profil dinas dengan ID = sambutan', '127.0.0.1', 1, '2021-06-10 09:26:49'),
(409, '2021-06-10 09:26:58', 'administrator mengubah data konten profil dinas dengan ID = tupoksi', '127.0.0.1', 1, '2021-06-10 09:26:58'),
(410, '2021-06-10 09:27:08', 'administrator mengubah data konten profil dinas dengan ID = maklumat', '127.0.0.1', 1, '2021-06-10 09:27:08'),
(411, '2021-06-10 09:28:04', 'administrator mengubah data profile dengan ID = 1 - administrator', '127.0.0.1', 1, '2021-06-10 09:28:04'),
(412, '2021-06-10 10:34:03', 'administrator menambah data kategori produk hukum UU', '127.0.0.1', 1, '2021-06-10 10:34:03'),
(413, '2021-06-10 10:34:38', 'administrator menambah data kategori produk hukum UUD', '127.0.0.1', 1, '2021-06-10 10:34:38'),
(414, '2021-06-10 10:35:56', 'administrator mengubah data kategori produk hukum dengan ID = 2 - sUUD', '127.0.0.1', 1, '2021-06-10 10:35:56'),
(415, '2021-06-10 10:35:58', 'administrator menghapus data kategori produk hukum dengan ID = 2 - sUUD', '127.0.0.1', 1, '2021-06-10 10:35:58'),
(416, '2021-06-10 11:53:02', 'administrator mengubah data produk hukum dengan ID = 2', '127.0.0.1', 1, '2021-06-10 11:53:02'),
(417, '2021-06-10 11:54:34', 'administrator mengubah data produk hukum dengan ID = 2', '127.0.0.1', 1, '2021-06-10 11:54:34'),
(418, '2021-06-10 11:55:05', 'administrator mengubah data produk hukum dengan ID = 2', '127.0.0.1', 1, '2021-06-10 11:55:05'),
(419, '2021-06-10 11:57:26', 'administrator mengubah data produk hukum dengan ID = 2', '127.0.0.1', 1, '2021-06-10 11:57:26'),
(420, '2021-06-10 12:14:25', 'administrator menambah data kategori informasi Berita', '127.0.0.1', 1, '2021-06-10 12:14:25'),
(421, '2021-06-10 12:14:28', 'administrator menambah data kategori informasi Agenda', '127.0.0.1', 1, '2021-06-10 12:14:28'),
(422, '2021-06-10 12:14:38', 'administrator menambah data kategori informasi Artikel', '127.0.0.1', 1, '2021-06-10 12:14:38'),
(423, '2021-06-10 12:14:50', 'administrator menambah data kategori informasi Pengumuman', '127.0.0.1', 1, '2021-06-10 12:14:50'),
(424, '2021-06-10 12:14:56', 'administrator mengubah data kategori informasi dengan ID = 4 - Pengumumans', '127.0.0.1', 1, '2021-06-10 12:14:56'),
(425, '2021-06-10 12:14:58', 'administrator menghapus data kategori informasi dengan ID = 4 - Pengumumans', '127.0.0.1', 1, '2021-06-10 12:14:58'),
(426, '2021-06-10 12:15:50', 'administrator menambah data kategori informasi Berita', '127.0.0.1', 1, '2021-06-10 12:15:50'),
(427, '2021-06-10 12:15:54', 'administrator menambah data kategori informasi Agenda', '127.0.0.1', 1, '2021-06-10 12:15:54'),
(428, '2021-06-10 12:15:58', 'administrator menambah data kategori informasi Artikel', '127.0.0.1', 1, '2021-06-10 12:15:58'),
(429, '2021-06-10 12:16:50', 'administrator menambah data kategori informasi Pengumuman', '127.0.0.1', 1, '2021-06-10 12:16:50'),
(430, '2021-06-10 12:29:59', 'administrator menambah data kategori produk hukum UUD', '127.0.0.1', 1, '2021-06-10 12:29:59'),
(431, '2021-06-10 12:30:08', 'administrator menambah data kategori produk hukum Perpres', '127.0.0.1', 1, '2021-06-10 12:30:08'),
(432, '2021-06-10 12:30:16', 'administrator menambah data kategori produk hukum Permen', '127.0.0.1', 1, '2021-06-10 12:30:16'),
(433, '2021-06-10 12:30:37', 'administrator menambah data kategori produk hukum Pergub', '127.0.0.1', 1, '2021-06-10 12:30:37'),
(434, '2021-06-10 13:07:48', 'administrator menambah data informasi ', '127.0.0.1', 1, '2021-06-10 13:07:48'),
(435, '2021-06-10 13:12:34', 'administrator menambah data informasi ', '127.0.0.1', 1, '2021-06-10 13:12:34'),
(436, '2021-06-10 13:13:44', 'Administrator Coreweb melakukan login ke sistem', '127.0.0.1', 1, '2021-06-10 13:13:44'),
(437, '2021-06-10 13:27:51', 'administrator mengubah data kategori bidang berita dengan ID = 2 - Kepala Dinas', '127.0.0.1', 1, '2021-06-10 13:27:51'),
(438, '2021-06-10 13:27:56', 'administrator mengubah data kategori bidang berita dengan ID = 3 - Sekretariat', '127.0.0.1', 1, '2021-06-10 13:27:56'),
(439, '2021-06-10 13:32:07', 'administrator mengubah data informasi dengan ID = 2', '127.0.0.1', 1, '2021-06-10 13:32:07'),
(440, '2021-06-10 13:32:23', 'administrator mengubah data informasi dengan ID = 1', '127.0.0.1', 1, '2021-06-10 13:32:23'),
(441, '2021-06-10 13:39:32', 'Administrator Coreweb melakukan login ke sistem', '127.0.0.1', 1, '2021-06-10 13:39:32');
INSERT INTO `tbl_log` (`log_id`, `log_time`, `log_message`, `log_ipaddress`, `user_id`, `createtime`) VALUES
(442, '2021-06-10 16:21:38', 'Administrator Coreweb melakukan login ke sistem', '127.0.0.1', 1, '2021-06-10 16:21:38'),
(443, '2021-06-10 16:36:50', 'administrator menambah data link terkait dengan nama = link-20210610163650.png', '127.0.0.1', 1, '2021-06-10 16:36:50'),
(444, '2021-06-10 16:37:27', 'administrator mengubah data link terkait dengan ID = 1', '127.0.0.1', 1, '2021-06-10 16:37:27'),
(445, '2021-06-10 16:37:29', 'administrator menghapus data link terkait dengan ID = 1 - 1', '127.0.0.1', 1, '2021-06-10 16:37:29'),
(446, '2021-06-10 16:38:00', 'administrator menambah data link terkait dengan nama = link-20210610163800.png', '127.0.0.1', 1, '2021-06-10 16:38:00'),
(447, '2021-06-10 16:38:23', 'Update Informasi Sistem', '127.0.0.1', 1, '2021-06-10 16:38:23'),
(448, '2021-06-10 16:38:29', 'Update Informasi Sistem', '127.0.0.1', 1, '2021-06-10 16:38:29'),
(449, '2021-06-10 16:38:39', 'Update Informasi Sistem', '127.0.0.1', 1, '2021-06-10 16:38:39'),
(450, '2021-06-10 16:38:47', 'Update Informasi Sistem', '127.0.0.1', 1, '2021-06-10 16:38:47'),
(451, '2021-06-10 16:39:01', 'Update Informasi Sistem', '127.0.0.1', 1, '2021-06-10 16:39:01'),
(452, '2021-06-10 16:39:24', 'Update Informasi Sistem', '127.0.0.1', 1, '2021-06-10 16:39:24'),
(453, '2021-06-10 16:39:39', 'administrator menambah data link terkait dengan nama = link-20210610163939.png', '127.0.0.1', 1, '2021-06-10 16:39:39'),
(454, '2021-06-10 16:39:51', 'administrator menambah data link terkait dengan nama = link-20210610163951.png', '127.0.0.1', 1, '2021-06-10 16:39:51'),
(455, '2021-06-10 16:40:04', 'administrator menambah data link terkait dengan nama = link-20210610164004.png', '127.0.0.1', 1, '2021-06-10 16:40:04'),
(456, '2021-06-10 16:40:16', 'administrator mengubah data link terkait dengan ID = 4', '127.0.0.1', 1, '2021-06-10 16:40:16'),
(457, '2021-06-10 16:40:25', 'administrator menambah data link terkait dengan nama = link-20210610164025.png', '127.0.0.1', 1, '2021-06-10 16:40:25'),
(458, '2021-06-10 16:41:58', 'administrator menambah data produk hukum dengan nama = regulation-20210610164158.pdf', '127.0.0.1', 1, '2021-06-10 16:41:58'),
(459, '2021-06-10 16:42:09', 'administrator menambah data produk hukum dengan nama = regulation-20210610164209.pdf', '127.0.0.1', 1, '2021-06-10 16:42:09'),
(460, '2021-06-10 16:42:19', 'administrator menambah data produk hukum dengan nama = regulation-20210610164219.pdf', '127.0.0.1', 1, '2021-06-10 16:42:19'),
(461, '2021-06-10 16:43:23', 'administrator mengubah data konten profil dinas menu = sambutan', '127.0.0.1', 1, '2021-06-10 16:43:23'),
(462, '2021-06-10 16:44:28', 'administrator mengubah data slider dengan ID = 2', '127.0.0.1', 1, '2021-06-10 16:44:28'),
(463, '2021-06-10 16:44:43', 'administrator mengubah data slider dengan ID = 3', '127.0.0.1', 1, '2021-06-10 16:44:43'),
(464, '2021-06-10 16:45:50', 'administrator mengubah data slider dengan ID = 2', '127.0.0.1', 1, '2021-06-10 16:45:50'),
(465, '2021-06-10 16:45:56', 'administrator mengubah data slider dengan ID = 3', '127.0.0.1', 1, '2021-06-10 16:45:56'),
(466, '2021-06-10 16:46:16', 'administrator mengubah data slider dengan ID = 4', '127.0.0.1', 1, '2021-06-10 16:46:16'),
(467, '2021-06-10 16:49:27', 'administrator mengubah data informasi dengan ID = 2', '127.0.0.1', 1, '2021-06-10 16:49:27'),
(468, '2021-06-10 16:49:34', 'administrator mengubah data informasi dengan ID = 2', '127.0.0.1', 1, '2021-06-10 16:49:34'),
(469, '2021-06-10 16:53:00', 'administrator mengubah data informasi dengan ID = 2', '127.0.0.1', 1, '2021-06-10 16:53:00'),
(470, '2021-06-10 16:53:07', 'administrator mengubah data informasi dengan ID = 1', '127.0.0.1', 1, '2021-06-10 16:53:07'),
(471, '2021-06-10 16:55:26', 'administrator mengubah data informasi dengan ID = 2', '127.0.0.1', 1, '2021-06-10 16:55:26'),
(472, '2021-06-10 17:50:19', 'administrator menambah data galeri dengan nama = gallery-20210610175019.png', '127.0.0.1', 1, '2021-06-10 17:50:19'),
(473, '2021-06-10 17:56:18', 'administrator menambah data galeri dengan nama = gallery-20210610175618.png', '127.0.0.1', 1, '2021-06-10 17:56:18'),
(474, '2021-06-10 17:57:37', 'administrator mengubah data galeri dengan ID = 2', '127.0.0.1', 1, '2021-06-10 17:57:37'),
(475, '2021-06-10 17:57:45', 'administrator mengubah data galeri dengan ID = 2', '127.0.0.1', 1, '2021-06-10 17:57:45'),
(476, '2021-06-10 17:57:59', 'administrator menghapus data galeri dengan ID = 2 - 2', '127.0.0.1', 1, '2021-06-10 17:57:59'),
(477, '2021-06-10 17:58:56', 'administrator menambah data galeri dengan nama = gallery-20210610175856.png', '127.0.0.1', 1, '2021-06-10 17:58:56'),
(478, '2021-06-10 17:59:04', 'administrator menghapus data galeri dengan ID = 3 - 3', '127.0.0.1', 1, '2021-06-10 17:59:04'),
(479, '2021-06-10 17:59:25', 'administrator menambah data galeri dengan nama = gallery-20210610175925.png', '127.0.0.1', 1, '2021-06-10 17:59:25'),
(480, '2021-06-10 17:59:46', 'administrator menambah data galeri dengan nama = gallery-20210610175946.png', '127.0.0.1', 1, '2021-06-10 17:59:46'),
(481, '2021-06-10 18:35:05', 'administrator menambah data galeri dengan nama = gallery-20210610183505.png', '127.0.0.1', 1, '2021-06-10 18:35:05'),
(482, '2021-06-10 18:36:17', 'administrator menambah data galeri dengan nama = video-20210610183617.mp4', '127.0.0.1', 1, '2021-06-10 18:36:17'),
(483, '2021-06-10 19:36:21', 'Administrator Coreweb melakukan login ke sistem', '127.0.0.1', 1, '2021-06-10 19:36:21'),
(484, '2021-06-10 19:41:18', 'Administrator Coreweb melakukan login ke sistem', '127.0.0.1', 1, '2021-06-10 19:41:18'),
(485, '2021-06-10 20:46:03', 'administrator menghapus data form dengan ID = ', '127.0.0.1', 1, '2021-06-10 20:46:03'),
(486, '2021-06-10 20:47:10', 'administrator menghapus data form dengan ID = ', '127.0.0.1', 1, '2021-06-10 20:47:10'),
(487, '2021-06-10 20:47:40', 'administrator menghapus data form dengan ID = 3', '127.0.0.1', 1, '2021-06-10 20:47:40'),
(488, '2021-06-10 21:03:24', 'administrator menghapus data galeri dengan ID = 3 - 3', '127.0.0.1', 1, '2021-06-10 21:03:24'),
(489, '2021-06-10 21:17:15', 'administrator menambah data galeri dengan nama = gallery-20210610211715.png', '127.0.0.1', 1, '2021-06-10 21:17:15'),
(490, '2021-06-10 21:22:01', 'administrator menghapus data galeri dengan ID = 3 - 3', '127.0.0.1', 1, '2021-06-10 21:22:01'),
(491, '2021-06-10 21:37:52', 'administrator menambah data galeri dengan nama = ', '127.0.0.1', 1, '2021-06-10 21:37:52'),
(492, '2021-06-10 21:38:46', 'administrator menambah data galeri dengan nama = Pameran Y', '127.0.0.1', 1, '2021-06-10 21:38:46'),
(493, '2021-06-10 21:38:53', 'administrator menghapus data galeri dengan ID = 5 - 5', '127.0.0.1', 1, '2021-06-10 21:38:53'),
(494, '2021-06-10 21:40:01', 'administrator menghapus data galeri dengan ID = 5 - 5', '127.0.0.1', 1, '2021-06-10 21:40:01'),
(495, '2021-06-10 21:40:40', 'administrator menghapus data galeri dengan ID = 6 - 6', '127.0.0.1', 1, '2021-06-10 21:40:40'),
(496, '2021-06-10 21:41:16', 'administrator menambah data galeri dengan nama = Pameran Y', '127.0.0.1', 1, '2021-06-10 21:41:16'),
(497, '2021-06-10 21:41:23', 'administrator menambah data galeri dengan ID = 7', '127.0.0.1', 1, '2021-06-10 21:41:23'),
(498, '2021-06-10 21:41:49', 'administrator menghapus data galeri dengan ID = 7 - 7', '127.0.0.1', 1, '2021-06-10 21:41:49'),
(499, '2021-06-10 21:42:16', 'administrator menambah data galeri dengan nama = Pameran Y', '127.0.0.1', 1, '2021-06-10 21:42:16'),
(500, '2021-06-10 21:46:07', 'Update Informasi Sistem', '127.0.0.1', 1, '2021-06-10 21:46:07'),
(501, '2021-06-11 00:21:38', 'Administrator Coreweb melakukan login ke sistem', '127.0.0.1', 1, '2021-06-11 00:21:38'),
(502, '2021-06-11 00:22:21', 'administrator mengubah data slider dengan ID = 2', '127.0.0.1', 1, '2021-06-11 00:22:21'),
(503, '2021-06-11 00:22:47', 'administrator mengubah data slider dengan ID = 2', '127.0.0.1', 1, '2021-06-11 00:22:47'),
(504, '2021-06-11 00:32:56', 'administrator mengubah data slider dengan ID = 2', '127.0.0.1', 1, '2021-06-11 00:32:56'),
(505, '2021-06-11 00:33:03', 'administrator mengubah data slider dengan ID = 3', '127.0.0.1', 1, '2021-06-11 00:33:03'),
(506, '2021-06-11 00:33:11', 'administrator mengubah data slider dengan ID = 4', '127.0.0.1', 1, '2021-06-11 00:33:11'),
(507, '2021-06-11 00:35:30', 'administrator mengubah data slider dengan ID = 2', '127.0.0.1', 1, '2021-06-11 00:35:30'),
(508, '2021-06-11 00:35:36', 'administrator mengubah data slider dengan ID = 3', '127.0.0.1', 1, '2021-06-11 00:35:36'),
(509, '2021-06-11 00:35:44', 'administrator mengubah data slider dengan ID = 4', '127.0.0.1', 1, '2021-06-11 00:35:44'),
(510, '2021-06-11 01:13:05', 'administrator mengubah data konten profil dinas dengan ID = sambutan', '127.0.0.1', 1, '2021-06-11 01:13:05'),
(511, '2021-06-11 08:33:38', 'Administrator Coreweb melakukan login ke sistem', '127.0.0.1', 1, '2021-06-11 08:33:38'),
(512, '2021-06-11 08:34:36', 'administrator mengubah data informasi dengan ID = 2', '127.0.0.1', 1, '2021-06-11 08:34:36'),
(513, '2021-06-11 08:35:10', 'administrator mengubah data informasi dengan ID = 1', '127.0.0.1', 1, '2021-06-11 08:35:10'),
(514, '2021-06-11 08:35:49', 'administrator menambah data informasi ', '127.0.0.1', 1, '2021-06-11 08:35:49'),
(515, '2021-06-11 08:36:57', 'administrator menambah data informasi ', '127.0.0.1', 1, '2021-06-11 08:36:57'),
(516, '2021-06-11 09:15:59', 'administrator mengubah data konten profil dinas dengan ID = struktur', '127.0.0.1', 1, '2021-06-11 09:15:59'),
(517, '2021-06-11 09:18:30', 'Administrator Coreweb melakukan login ke sistem', '127.0.0.1', 1, '2021-06-11 09:18:30'),
(518, '2021-06-11 09:19:05', 'administrator mengubah data konten profil dinas menu = struktur', '127.0.0.1', 1, '2021-06-11 09:19:05'),
(519, '2021-06-11 16:02:02', 'Update Informasi Sistem', '127.0.0.1', 1, '2021-06-11 16:02:02'),
(520, '2021-06-11 16:10:10', 'Administrator Coreweb melakukan login ke sistem', '127.0.0.1', 1, '2021-06-11 16:10:10'),
(521, '2021-06-11 19:01:54', 'Administrator Coreweb melakukan login ke sistem', '127.0.0.1', 1, '2021-06-11 19:01:54'),
(522, '2021-06-12 06:06:56', 'Administrator Coreweb melakukan login ke sistem', '127.0.0.1', 1, '2021-06-12 06:06:56'),
(523, '2021-06-12 06:20:05', 'administrator menambah data faq ', '127.0.0.1', 1, '2021-06-12 06:20:05'),
(524, '2021-06-12 06:20:11', 'administrator mengubah data faq dengan ID = 1', '127.0.0.1', 1, '2021-06-12 06:20:11'),
(525, '2021-06-12 06:20:17', 'administrator menghapus data faq dengan ID = 1', '127.0.0.1', 1, '2021-06-12 06:20:17'),
(526, '2021-06-12 06:20:36', 'administrator menambah data faq ', '127.0.0.1', 1, '2021-06-12 06:20:36'),
(527, '2021-06-12 06:21:26', 'administrator menambah data faq ', '127.0.0.1', 1, '2021-06-12 06:21:26'),
(528, '2021-06-12 06:22:42', 'administrator menambah data faq ', '127.0.0.1', 1, '2021-06-12 06:22:42'),
(529, '2021-06-12 06:22:54', 'administrator menghapus data message dengan ID = 1 - ', '127.0.0.1', 1, '2021-06-12 06:22:54'),
(530, '2021-06-12 08:44:00', 'Administrator Coreweb melakukan login ke sistem', '127.0.0.1', 1, '2021-06-12 08:44:00'),
(531, '2021-06-12 09:40:57', 'administrator mengubah data message dengan ID = 2', '127.0.0.1', 1, '2021-06-12 09:40:57'),
(532, '2021-06-12 09:42:52', 'administrator mengubah data message dengan ID = M-20210612085804', '127.0.0.1', 1, '2021-06-12 09:42:52'),
(533, '2021-06-12 18:37:37', 'Administrator Coreweb melakukan login ke sistem', '127.0.0.1', 1, '2021-06-12 18:37:37'),
(534, '2021-07-12 16:13:53', 'Administrator Coreweb melakukan login ke sistem', '::1', 1, '2021-07-12 16:13:53'),
(535, '2021-07-14 10:35:52', 'Administrator Coreweb melakukan login ke sistem', '::1', 1, '2021-07-14 10:35:52'),
(536, '2021-07-19 13:35:55', 'Administrator Coreweb melakukan login ke sistem', '::1', 1, '2021-07-19 13:35:55'),
(537, '2021-07-19 13:37:10', 'Update Informasi Sistem', '::1', 1, '2021-07-19 13:37:10'),
(538, '2021-07-19 13:37:56', 'Update Informasi Sistem', '::1', 1, '2021-07-19 13:37:56'),
(539, '2021-07-19 13:42:36', 'administrator mengubah data user dengan ID = 2 - inputer', '::1', 1, '2021-07-19 13:42:36'),
(540, '2021-07-19 13:42:42', 'Inputer PTSP melakukan login ke sistem', '::1', 2, '2021-07-19 13:42:42'),
(541, '2021-07-19 13:43:13', 'Administrator Coreweb melakukan login ke sistem', '::1', 1, '2021-07-19 13:43:13'),
(542, '2021-07-23 19:02:28', 'Administrator Coreweb melakukan login ke sistem', '::1', 1, '2021-07-23 19:02:28'),
(543, '2021-07-26 14:35:29', 'Administrator Coreweb melakukan login ke sistem', '::1', 1, '2021-07-26 14:35:29'),
(544, '2021-07-29 12:31:52', 'Administrator Coreweb melakukan login ke sistem', '::1', 1, '2021-07-29 12:31:52'),
(545, '2021-07-29 12:55:54', 'Administrator Coreweb melakukan login ke sistem', '::1', 1, '2021-07-29 12:55:54'),
(546, '2021-09-15 12:30:25', 'Administrator Coreweb melakukan login ke sistem', '::1', 1, '2021-09-15 12:30:25'),
(547, '2021-10-11 16:51:23', 'Administrator Coreweb melakukan login ke sistem', '::1', 1, '2021-10-11 16:51:23'),
(548, '2022-05-18 15:34:33', 'Administrator Coreweb melakukan login ke sistem', '::1', 1, '2022-05-18 15:34:33'),
(549, '2022-05-19 11:00:57', 'Administrator Coreweb melakukan login ke sistem', '::1', 1, '2022-05-19 11:00:57'),
(550, '2022-07-23 13:00:35', 'Administrator Coreweb melakukan login ke sistem', '::1', 1, '2022-07-23 13:00:35'),
(551, '2022-07-23 13:58:48', 'Administrator Coreweb melakukan login ke sistem', '::1', 1, '2022-07-23 13:58:48'),
(552, '2022-07-23 14:06:36', 'Update Informasi Sistem', '::1', 1, '2022-07-23 14:06:36'),
(553, '2022-07-23 14:19:54', 'Update Informasi Sistem', '::1', 1, '2022-07-23 14:19:54'),
(554, '2022-07-23 14:59:37', 'Administrator Coreweb melakukan login ke sistem', '::1', 1, '2022-07-23 14:59:37'),
(555, '2022-07-23 15:03:24', 'administrator mengubah data user dengan ID = 1 - admin', '::1', 1, '2022-07-23 15:03:24'),
(556, '2022-07-23 15:03:35', 'administrator menghapus data user dengan ID = 3 - tegar', '::1', 1, '2022-07-23 15:03:35'),
(557, '2022-07-23 15:03:37', 'administrator menghapus data user dengan ID = 5 - alief', '::1', 1, '2022-07-23 15:03:37'),
(558, '2022-07-23 15:03:39', 'administrator menghapus data user dengan ID = 2 - inputer', '::1', 1, '2022-07-23 15:03:39'),
(559, '2022-07-23 15:07:52', 'Administrator melakukan login ke sistem', '::1', 1, '2022-07-23 15:07:52'),
(560, '2022-07-23 15:27:32', 'Administrator melakukan login ke sistem', '::1', 1, '2022-07-23 15:27:32'),
(561, '2022-07-23 15:28:52', 'admin mengubah data konten profil dinas dengan ID = tentang', '::1', 1, '2022-07-23 15:28:52'),
(562, '2022-07-23 23:22:57', 'Administrator melakukan login ke sistem', '::1', 1, '2022-07-23 23:22:57'),
(563, '2022-07-23 23:23:17', 'admin mengubah data slider dengan ID = 2', '::1', 1, '2022-07-23 23:23:17'),
(564, '2022-07-23 23:23:26', 'admin mengubah data slider dengan ID = 3', '::1', 1, '2022-07-23 23:23:26'),
(565, '2022-07-23 23:23:34', 'admin mengubah data slider dengan ID = 4', '::1', 1, '2022-07-23 23:23:34'),
(566, '2022-07-26 17:22:20', 'Administrator melakukan login ke sistem', '::1', 1, '2022-07-26 17:22:20'),
(567, '2022-07-26 19:32:09', 'Administrator melakukan login ke sistem', '103.142.242.14', 1, '2022-07-26 19:32:09'),
(568, '2022-07-26 19:32:32', 'Update Informasi Sistem', '125.162.210.232', 1, '2022-07-26 19:32:32'),
(569, '2022-07-26 19:58:55', 'Administrator melakukan login ke sistem', '180.253.124.202', 1, '2022-07-26 19:58:55'),
(570, '2022-07-26 20:19:29', 'admin mengubah data konten profil dinas dengan ID = tentang', '180.253.124.202', 1, '2022-07-26 20:19:29'),
(571, '2022-07-27 20:19:10', 'Administrator melakukan login ke sistem', '180.253.124.202', 1, '2022-07-27 20:19:10'),
(572, '2022-07-29 15:27:15', 'Administrator melakukan login ke sistem', '103.161.192.2', 1, '2022-07-29 15:27:15'),
(573, '2022-07-29 19:36:15', 'Administrator melakukan login ke sistem', '180.253.124.202', 1, '2022-07-29 19:36:15'),
(574, '2022-07-31 11:11:42', 'Administrator melakukan login ke sistem', '125.167.116.49', 1, '2022-07-31 11:11:42'),
(575, '2022-07-31 11:19:17', 'Administrator melakukan login ke sistem', '125.167.116.49', 1, '2022-07-31 11:19:17'),
(576, '2022-07-31 16:41:38', 'Administrator melakukan login ke sistem', '125.167.116.49', 1, '2022-07-31 16:41:38'),
(577, '2022-07-31 19:03:00', 'admin mengubah data slider dengan ID = 2', '125.167.116.49', 1, '2022-07-31 19:03:00'),
(578, '2022-07-31 19:03:37', 'admin mengubah data slider dengan ID = 2', '125.167.116.49', 1, '2022-07-31 19:03:37'),
(579, '2022-08-01 21:31:09', 'Administrator melakukan login ke sistem', '125.167.114.86', 1, '2022-08-01 21:31:09'),
(580, '2022-08-02 07:23:47', 'Administrator melakukan login ke sistem', '125.162.214.19', 1, '2022-08-02 07:23:47'),
(581, '2022-08-02 18:32:00', 'Administrator melakukan login ke sistem', '180.251.148.136', 1, '2022-08-02 18:32:00'),
(582, '2022-08-02 19:58:37', 'Administrator melakukan login ke sistem', '125.167.114.86', 1, '2022-08-02 19:58:37'),
(583, '2022-08-03 13:41:47', 'Administrator melakukan login ke sistem', '103.161.192.2', 1, '2022-08-03 13:41:47'),
(584, '2022-08-03 16:07:37', 'Administrator melakukan login ke sistem', '103.161.192.2', 1, '2022-08-03 16:07:37'),
(585, '2022-08-03 16:50:28', 'Administrator melakukan login ke sistem', '103.161.192.2', 1, '2022-08-03 16:50:28'),
(586, '2022-08-03 16:55:18', 'Administrator melakukan login ke sistem', '103.161.192.2', 1, '2022-08-03 16:55:18'),
(587, '2022-08-03 16:56:37', 'admin mengubah data slider dengan ID = 3', '103.161.192.2', 1, '2022-08-03 16:56:37'),
(588, '2022-08-03 16:57:13', 'admin mengubah data slider dengan ID = 2', '103.161.192.2', 1, '2022-08-03 16:57:13'),
(589, '2022-08-03 16:58:56', 'admin mengubah data slider dengan ID = 4', '103.161.192.2', 1, '2022-08-03 16:58:56'),
(590, '2022-08-03 16:59:32', 'Administrator melakukan login ke sistem', '103.161.192.2', 1, '2022-08-03 16:59:32'),
(591, '2022-08-03 17:00:07', 'admin mengubah data slider dengan ID = 4', '103.161.192.2', 1, '2022-08-03 17:00:07'),
(592, '2022-08-03 17:00:16', 'admin mengubah data slider dengan ID = 4', '103.161.192.2', 1, '2022-08-03 17:00:16'),
(593, '2022-08-03 17:14:35', 'Muhamad Faza Almaliki melakukan login ke sistem', '103.161.192.2', 6, '2022-08-03 17:14:35'),
(594, '2022-08-03 17:16:01', 'Muhamad Faza Almaliki melakukan login ke sistem', '103.161.192.2', 6, '2022-08-03 17:16:01'),
(595, '2022-08-03 17:16:39', 'Muhamad Faza Almaliki melakukan login ke sistem', '103.161.192.2', 6, '2022-08-03 17:16:39'),
(596, '2022-08-03 17:56:55', 'Administrator melakukan login ke sistem', '103.161.192.2', 1, '2022-08-03 17:56:55'),
(597, '2022-08-03 18:08:28', 'admin menghapus data user dengan ID = 6 - Faza', '103.161.192.2', 1, '2022-08-03 18:08:28'),
(598, '2022-08-03 20:23:55', 'Administrator melakukan login ke sistem', '125.167.114.86', 1, '2022-08-03 20:23:55'),
(599, '2022-08-03 21:35:28', 'Muhamad Faza Almaliki melakukan login ke sistem', '125.167.114.86', 7, '2022-08-03 21:35:28'),
(600, '2022-08-03 21:48:48', 'Muhamad Faza Almaliki melakukan login ke sistem', '125.167.114.86', 7, '2022-08-03 21:48:48'),
(601, '2022-08-03 21:51:00', 'Muhamad Danil melakukan login ke sistem', '180.251.155.148', 8, '2022-08-03 21:51:00'),
(602, '2022-08-03 21:55:05', 'Muhamad Faza Almaliki melakukan login ke sistem', '125.167.114.86', 7, '2022-08-03 21:55:05'),
(603, '2022-08-03 21:58:26', 'Administrator melakukan login ke sistem', '125.167.114.86', 1, '2022-08-03 21:58:26'),
(604, '2022-08-03 21:58:48', 'Muhamad Faza Almaliki melakukan login ke sistem', '125.167.114.86', 7, '2022-08-03 21:58:48'),
(605, '2022-08-03 22:04:54', 'Muhamad Faza Almaliki melakukan login ke sistem', '125.167.114.86', 7, '2022-08-03 22:04:54'),
(606, '2022-08-03 22:09:07', 'Muhamad Faza Almaliki melakukan login ke sistem', '125.167.114.86', 7, '2022-08-03 22:09:07'),
(607, '2022-08-03 22:10:26', 'Muhamad Faza Almaliki melakukan login ke sistem', '125.167.114.86', 7, '2022-08-03 22:10:26'),
(608, '2022-08-03 22:14:26', 'Muhamad Faza Almaliki melakukan login ke sistem', '125.167.114.86', 7, '2022-08-03 22:14:26'),
(609, '2022-08-03 22:16:40', 'Administrator melakukan login ke sistem', '125.167.114.86', 1, '2022-08-03 22:16:40'),
(610, '2022-08-03 23:10:21', 'Administrator melakukan login ke sistem', '125.167.114.86', 1, '2022-08-03 23:10:21'),
(611, '2022-08-04 08:30:26', 'Muhamad Faza Almaliki melakukan login ke sistem', '125.167.114.86', 7, '2022-08-04 08:30:26'),
(612, '2022-08-04 10:44:07', 'Muhamad Faza Almaliki melakukan login ke sistem', '103.161.192.2', 7, '2022-08-04 10:44:07'),
(613, '2022-08-04 10:53:35', 'Administrator melakukan login ke sistem', '103.161.192.2', 1, '2022-08-04 10:53:35'),
(614, '2022-08-04 11:05:25', 'Muhamad Faza Almaliki melakukan login ke sistem', '103.161.192.2', 7, '2022-08-04 11:05:25'),
(615, '2022-08-04 13:00:28', 'Muhamad Danil melakukan login ke sistem', '125.162.211.86', 8, '2022-08-04 13:00:28'),
(616, '2022-08-04 13:21:08', 'Administrator melakukan login ke sistem', '103.161.192.2', 1, '2022-08-04 13:21:08'),
(617, '2022-08-04 14:16:45', 'Muhamad Faza  melakukan login ke sistem', '103.161.192.2', 7, '2022-08-04 14:16:45'),
(618, '2022-08-04 14:24:38', 'Administrator melakukan login ke sistem', '103.161.192.2', 1, '2022-08-04 14:24:38'),
(619, '2022-08-04 14:45:44', 'Muhamad Faza  melakukan login ke sistem', '103.161.192.2', 7, '2022-08-04 14:45:44'),
(620, '2022-08-04 15:33:38', 'Administrator melakukan login ke sistem', '103.161.192.2', 1, '2022-08-04 15:33:38'),
(621, '2022-08-04 15:37:50', 'admin menambah data user Ahmad', '103.161.192.2', 1, '2022-08-04 15:37:50'),
(622, '2022-08-04 15:38:01', 'admin mengubah data user dengan ID = 9 - AhmadA', '103.161.192.2', 1, '2022-08-04 15:38:01'),
(623, '2022-08-04 15:38:16', 'admin menghapus data user dengan ID = 9 - AhmadA', '103.161.192.2', 1, '2022-08-04 15:38:16'),
(624, '2022-08-04 15:38:32', 'admin mengubah data slider dengan ID = 2', '103.161.192.2', 1, '2022-08-04 15:38:32'),
(625, '2022-08-04 15:38:42', 'admin mengubah data slider dengan ID = 2', '103.161.192.2', 1, '2022-08-04 15:38:42'),
(626, '2022-08-04 15:39:09', 'admin mengubah data konten profil dinas dengan ID = tentang', '103.161.192.2', 1, '2022-08-04 15:39:09'),
(627, '2022-08-04 15:39:31', 'adminA mengubah data profile dengan ID = 1 - adminA', '103.161.192.2', 1, '2022-08-04 15:39:31'),
(628, '2022-08-04 15:39:51', 'adminA mengubah data user dengan ID = 1 - admin', '103.161.192.2', 1, '2022-08-04 15:39:51'),
(629, '2022-08-04 16:16:41', 'Administrator melakukan login ke sistem', '103.108.34.115', 1, '2022-08-04 16:16:41'),
(630, '2022-08-04 17:47:08', 'Muhamad Faza  melakukan login ke sistem', '103.161.192.2', 7, '2022-08-04 17:47:08'),
(631, '2022-08-04 17:48:48', 'Administrator melakukan login ke sistem', '103.161.192.2', 1, '2022-08-04 17:48:48'),
(632, '2022-08-04 17:53:06', 'Muhamad Faza  melakukan login ke sistem', '103.161.192.2', 7, '2022-08-04 17:53:06'),
(633, '2022-08-04 17:58:19', 'Administrator melakukan login ke sistem', '103.161.192.2', 1, '2022-08-04 17:58:19'),
(634, '2022-08-04 18:09:39', 'admin mengubah data slider dengan ID = 2', '103.161.192.2', 1, '2022-08-04 18:09:39'),
(635, '2022-08-04 18:10:23', 'admin mengubah data slider dengan ID = 3', '103.161.192.2', 1, '2022-08-04 18:10:23'),
(636, '2022-08-04 18:11:52', 'admin mengubah data slider dengan ID = 4', '103.161.192.2', 1, '2022-08-04 18:11:52'),
(637, '2022-08-04 18:12:57', 'admin mengubah data slider dengan ID = 4', '103.161.192.2', 1, '2022-08-04 18:12:57'),
(638, '2022-08-04 18:26:29', 'Administrator melakukan login ke sistem', '103.161.192.2', 1, '2022-08-04 18:26:29'),
(639, '2022-08-04 20:42:01', 'Muhamad Faza  melakukan login ke sistem', '103.161.192.2', 7, '2022-08-04 20:42:01'),
(640, '2022-08-04 21:11:48', 'Administrator melakukan login ke sistem', '103.161.192.2', 1, '2022-08-04 21:11:48'),
(641, '2022-08-04 22:23:05', 'Administrator melakukan login ke sistem', '125.167.114.86', 1, '2022-08-04 22:23:05'),
(642, '2022-08-05 09:12:32', 'Muhamad Danil ganteng melakukan login ke sistem', '125.162.211.86', 8, '2022-08-05 09:12:32'),
(643, '2022-08-05 10:14:13', 'Muhamad Faza  melakukan login ke sistem', '103.161.192.2', 7, '2022-08-05 10:14:13'),
(644, '2022-08-05 10:20:37', 'Administrator melakukan login ke sistem', '103.161.192.2', 1, '2022-08-05 10:20:37'),
(645, '2022-08-05 10:23:27', 'Muhamad Faza  melakukan login ke sistem', '103.161.192.2', 7, '2022-08-05 10:23:27'),
(646, '2022-08-05 10:23:37', 'Muhamad Faza  melakukan login ke sistem', '103.161.192.2', 7, '2022-08-05 10:23:37'),
(647, '2022-08-05 10:24:43', 'Administrator melakukan login ke sistem', '103.161.192.2', 1, '2022-08-05 10:24:43'),
(648, '2022-08-05 10:25:31', 'Muhamad Faza  melakukan login ke sistem', '103.161.192.2', 7, '2022-08-05 10:25:31'),
(649, '2022-08-05 10:50:11', 'Ijlal Prayoga melakukan login ke sistem', '103.161.192.2', 10, '2022-08-05 10:50:11'),
(650, '2022-08-05 10:52:11', 'Muhamad Faza  melakukan login ke sistem', '103.161.192.2', 7, '2022-08-05 10:52:11'),
(651, '2022-08-05 10:54:05', 'Administrator melakukan login ke sistem', '103.161.192.2', 1, '2022-08-05 10:54:05'),
(652, '2022-08-05 10:56:57', 'Muhamad Faza  melakukan login ke sistem', '103.161.192.2', 7, '2022-08-05 10:56:57'),
(653, '2022-08-05 11:00:59', 'Administrator melakukan login ke sistem', '103.161.192.2', 1, '2022-08-05 11:00:59'),
(654, '2022-08-05 11:01:12', 'admin menghapus data user dengan ID = 10 - Ijlal', '103.161.192.2', 1, '2022-08-05 11:01:12'),
(655, '2022-08-05 11:21:48', 'Muhamad Faza  melakukan login ke sistem', '103.161.192.2', 7, '2022-08-05 11:21:48'),
(656, '2022-08-05 11:29:28', 'Administrator melakukan login ke sistem', '103.161.192.2', 1, '2022-08-05 11:29:28'),
(657, '2022-08-05 11:40:45', 'Fellonnisa Suria melakukan login ke sistem', '182.1.183.35', 11, '2022-08-05 11:40:45'),
(658, '2022-08-05 11:45:02', 'Ajeng melakukan login ke sistem', '114.125.170.238', 12, '2022-08-05 11:45:02'),
(659, '2022-08-05 11:45:12', 'Muhamad Faza  melakukan login ke sistem', '103.161.192.2', 7, '2022-08-05 11:45:12'),
(660, '2022-08-05 13:20:31', 'Administrator melakukan login ke sistem', '103.161.192.2', 1, '2022-08-05 13:20:31'),
(661, '2022-08-05 13:37:01', 'Muhammad Ijlal Prayoga melakukan login ke sistem', '180.251.148.141', 13, '2022-08-05 13:37:01'),
(662, '2022-08-05 13:57:12', 'Anisa Nur Fadilla melakukan login ke sistem', '125.167.113.148', 14, '2022-08-05 13:57:12'),
(663, '2022-08-05 15:56:24', 'Administrator melakukan login ke sistem', '103.161.192.2', 1, '2022-08-05 15:56:24'),
(664, '2022-08-05 16:48:46', 'Administrator melakukan login ke sistem', '103.161.192.2', 1, '2022-08-05 16:48:46'),
(665, '2022-08-05 16:49:56', 'Muhamad Faza  melakukan login ke sistem', '103.161.192.2', 7, '2022-08-05 16:49:56'),
(666, '2022-08-05 16:50:29', 'Administrator melakukan login ke sistem', '103.161.192.2', 1, '2022-08-05 16:50:29'),
(667, '2022-08-05 16:54:55', 'Administrator melakukan login ke sistem', '103.161.192.2', 1, '2022-08-05 16:54:55'),
(668, '2022-08-05 17:26:36', 'Yulinda melakukan login ke sistem', '182.1.195.210', 15, '2022-08-05 17:26:36'),
(669, '2022-08-06 17:07:39', 'Muhamad Faza  melakukan login ke sistem', '125.167.114.86', 7, '2022-08-06 17:07:39'),
(670, '2022-08-06 17:47:32', 'Administrator melakukan login ke sistem', '125.167.114.86', 1, '2022-08-06 17:47:32'),
(671, '2022-08-07 09:38:47', 'Administrator melakukan login ke sistem', '125.167.114.86', 1, '2022-08-07 09:38:47'),
(672, '2022-08-11 10:49:28', 'Administrator melakukan login ke sistem', '::1', 1, '2022-08-11 10:49:28'),
(673, '2022-08-11 10:50:22', 'Administrator melakukan login ke sistem', '::1', 1, '2022-08-11 10:50:22'),
(674, '2022-08-11 10:51:35', 'Update Informasi Sistem', '::1', 1, '2022-08-11 10:51:35'),
(675, '2022-08-11 10:52:06', 'admin mengubah data slider dengan ID = 2', '::1', 1, '2022-08-11 10:52:06'),
(676, '2022-08-11 10:52:16', 'admin mengubah data slider dengan ID = 3', '::1', 1, '2022-08-11 10:52:16'),
(677, '2022-08-11 10:52:23', 'admin mengubah data slider dengan ID = 4', '::1', 1, '2022-08-11 10:52:23'),
(678, '2022-08-11 10:53:28', 'Muhamad Faza  melakukan login ke sistem', '::1', 7, '2022-08-11 10:53:28'),
(679, '2022-08-11 11:40:19', 'Administrator melakukan login ke sistem', '::1', 1, '2022-08-11 11:40:19'),
(680, '2022-08-11 11:47:29', 'Muhamad Faza  melakukan login ke sistem', '::1', 7, '2022-08-11 11:47:29'),
(681, '2022-08-11 12:41:55', 'Administrator melakukan login ke sistem', '::1', 1, '2022-08-11 12:41:55'),
(682, '2022-08-11 15:06:05', 'Administrator melakukan login ke sistem', '::1', 1, '2022-08-11 15:06:05'),
(683, '2022-08-11 15:23:38', 'Update Informasi Sistem', '::1', 1, '2022-08-11 15:23:38'),
(684, '2022-08-11 15:27:01', 'admin mengubah data slider dengan ID = 2', '::1', 1, '2022-08-11 15:27:01'),
(685, '2022-08-11 15:27:12', 'admin mengubah data slider dengan ID = 3', '::1', 1, '2022-08-11 15:27:12'),
(686, '2022-08-11 15:27:19', 'admin mengubah data slider dengan ID = 4', '::1', 1, '2022-08-11 15:27:19'),
(687, '2022-08-11 15:31:47', 'Muhamad Faza  melakukan login ke sistem', '::1', 7, '2022-08-11 15:31:47'),
(688, '2022-08-11 17:54:18', 'Muhamad Danil ganteng melakukan login ke sistem', '::1', 8, '2022-08-11 17:54:18'),
(689, '2022-08-11 18:05:00', 'Administrator melakukan login ke sistem', '::1', 1, '2022-08-11 18:05:00'),
(690, '2022-08-12 12:49:51', 'Administrator melakukan login ke sistem', '::1', 1, '2022-08-12 12:49:51'),
(691, '2022-08-12 12:50:14', 'Update Informasi Sistem', '::1', 1, '2022-08-12 12:50:14'),
(692, '2022-08-12 12:53:17', 'Administrator melakukan login ke sistem', '::1', 1, '2022-08-12 12:53:17'),
(693, '2022-08-12 12:53:41', 'Update Informasi Sistem', '::1', 1, '2022-08-12 12:53:41'),
(694, '2022-08-12 12:59:28', 'Administrator melakukan login ke sistem', '::1', 1, '2022-08-12 12:59:28'),
(695, '2022-08-12 12:59:40', 'Update Informasi Sistem', '::1', 1, '2022-08-12 12:59:40'),
(696, '2022-08-12 13:01:21', 'Administrator melakukan login ke sistem', '::1', 1, '2022-08-12 13:01:21'),
(697, '2022-08-12 13:01:34', 'Update Informasi Sistem', '::1', 1, '2022-08-12 13:01:34'),
(698, '2022-08-12 13:02:11', 'Update Informasi Sistem', '::1', 1, '2022-08-12 13:02:11'),
(699, '2022-08-12 13:04:21', 'Update Informasi Sistem', '::1', 1, '2022-08-12 13:04:21'),
(700, '2022-08-12 13:06:35', 'Update Informasi Sistem', '::1', 1, '2022-08-12 13:06:35'),
(701, '2022-08-12 13:06:42', 'Update Informasi Sistem', '::1', 1, '2022-08-12 13:06:42'),
(702, '2022-08-12 13:07:19', 'Update Informasi Sistem', '::1', 1, '2022-08-12 13:07:19'),
(703, '2022-08-12 13:07:35', 'Administrator melakukan login ke sistem', '::1', 1, '2022-08-12 13:07:35'),
(704, '2022-08-12 13:07:58', 'Update Informasi Sistem', '::1', 1, '2022-08-12 13:07:58'),
(705, '2022-08-12 13:08:19', 'Administrator melakukan login ke sistem', '::1', 1, '2022-08-12 13:08:19'),
(706, '2022-08-12 13:35:59', 'Administrator melakukan login ke sistem', '::1', 1, '2022-08-12 13:35:59'),
(707, '2022-08-12 13:36:12', 'admin mengubah data slider dengan ID = 2', '::1', 1, '2022-08-12 13:36:12'),
(708, '2022-08-12 16:03:05', 'Muhamad Faza  melakukan login ke sistem', '::1', 7, '2022-08-12 16:03:05'),
(709, '2022-08-15 13:19:45', 'Administrator melakukan login ke sistem', '::1', 1, '2022-08-15 13:19:45'),
(710, '2022-08-15 13:20:12', 'Update Informasi Sistem', '::1', 1, '2022-08-15 13:20:12'),
(711, '2022-08-15 13:20:26', 'admin mengubah data slider dengan ID = 2', '::1', 1, '2022-08-15 13:20:26'),
(712, '2022-08-15 13:20:39', 'admin mengubah data slider dengan ID = 3', '::1', 1, '2022-08-15 13:20:39'),
(713, '2022-08-15 13:20:45', 'admin mengubah data slider dengan ID = 2', '::1', 1, '2022-08-15 13:20:45'),
(714, '2022-08-15 13:20:51', 'admin mengubah data slider dengan ID = 4', '::1', 1, '2022-08-15 13:20:51'),
(715, '2022-08-15 13:22:51', 'Ahmad melakukan login ke sistem', '::1', 16, '2022-08-15 13:22:51'),
(716, '2022-08-15 13:27:14', 'Administrator melakukan login ke sistem', '::1', 1, '2022-08-15 13:27:14'),
(717, '2022-08-15 13:27:51', 'admin mengubah data user dengan ID = 8 - OmiOmi', '::1', 1, '2022-08-15 13:27:51'),
(718, '2022-08-15 13:28:09', 'admin mengubah data user dengan ID = 11 - fello910', '::1', 1, '2022-08-15 13:28:09'),
(719, '2022-08-15 13:28:31', 'admin mengubah data user dengan ID = 12 - ajeng_2', '::1', 1, '2022-08-15 13:28:31'),
(720, '2022-08-15 13:29:17', 'admin mengubah data user dengan ID = 13 - milraga19', '::1', 1, '2022-08-15 13:29:17'),
(721, '2022-08-15 13:29:59', 'admin mengubah data user dengan ID = 14 - annsa.fdhla', '::1', 1, '2022-08-15 13:29:59'),
(722, '2022-08-15 13:30:17', 'admin mengubah data user dengan ID = 15 - yulindaa', '::1', 1, '2022-08-15 13:30:17'),
(723, '2022-08-16 10:12:06', 'Administrator melakukan login ke sistem', '::1', 1, '2022-08-16 10:12:06'),
(724, '2022-09-21 11:20:00', 'Administrator melakukan login ke sistem', '::1', 1, '2022-09-21 11:20:00'),
(725, '2022-09-21 11:21:25', 'admin mengubah data slider dengan ID = 2', '::1', 1, '2022-09-21 11:21:25'),
(726, '2022-09-22 18:19:02', 'Administrator melakukan login ke sistem', '::1', 1, '2022-09-22 18:19:02'),
(727, '2022-09-25 17:45:29', 'Administrator melakukan login ke sistem', '::1', 1, '2022-09-25 17:45:29'),
(728, '2022-09-25 19:15:26', 'Administrator melakukan login ke sistem', '::1', 1, '2022-09-25 19:15:26'),
(729, '2022-09-25 19:15:50', 'Muhamad Faza  melakukan login ke sistem', '::1', 7, '2022-09-25 19:15:50'),
(730, '2022-09-25 19:16:31', 'Ababil Azies Sasilo melakukan login ke sistem', '::1', 8, '2022-09-25 19:16:31'),
(731, '2022-09-25 19:18:50', 'Administrator melakukan login ke sistem', '::1', 1, '2022-09-25 19:18:50'),
(732, '2022-09-25 19:20:03', 'Administrator melakukan login ke sistem', '::1', 1, '2022-09-25 19:20:03'),
(733, '2022-09-26 20:40:47', 'Administrator melakukan login ke sistem', '::1', 1, '2022-09-26 20:40:47'),
(734, '2022-09-27 18:33:24', 'Administrator melakukan login ke sistem', '::1', 1, '2022-09-27 18:33:24'),
(735, '2022-09-27 20:32:37', 'Administrator melakukan login ke sistem', '::1', 1, '2022-09-27 20:32:37'),
(736, '2022-09-28 16:50:01', 'Muhamad Faza  melakukan login ke sistem', '::1', 7, '2022-09-28 16:50:01'),
(737, '2022-09-28 16:50:42', 'Ahmad melakukan login ke sistem', '::1', 16, '2022-09-28 16:50:42');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `setting_id` int(11) NOT NULL,
  `setting_appname` varchar(100) NOT NULL,
  `setting_short_appname` varchar(10) NOT NULL,
  `setting_origin_app` varchar(100) NOT NULL,
  `setting_owner_name` varchar(100) NOT NULL,
  `setting_phone` varchar(30) NOT NULL,
  `setting_email` varchar(100) NOT NULL,
  `setting_address` text NOT NULL,
  `setting_logo` varchar(50) NOT NULL,
  `setting_background` varchar(50) NOT NULL,
  `setting_color` varchar(30) NOT NULL,
  `setting_layout` varchar(20) NOT NULL,
  `setting_apikey_map` text NOT NULL,
  `setting_apikey_firebase` text NOT NULL,
  `setting_running_text` text NOT NULL,
  `setting_about` text NOT NULL,
  `setting_coordinate` text NOT NULL,
  `setting_instagram` text NOT NULL,
  `setting_facebook` text NOT NULL,
  `setting_youtube` text NOT NULL,
  `setting_twitter` text NOT NULL,
  `createtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`setting_id`, `setting_appname`, `setting_short_appname`, `setting_origin_app`, `setting_owner_name`, `setting_phone`, `setting_email`, `setting_address`, `setting_logo`, `setting_background`, `setting_color`, `setting_layout`, `setting_apikey_map`, `setting_apikey_firebase`, `setting_running_text`, `setting_about`, `setting_coordinate`, `setting_instagram`, `setting_facebook`, `setting_youtube`, `setting_twitter`, `createtime`) VALUES
(1, 'Sistem Rekomendasi Alat Pertambangan', 'SIRETAM', 'Kendari', 'SiReTam', '+6281234567890', 'faza@gmail.com', 'Kendari', 'base-logo120220815132012.png', 'base-background120210610080736.jpg', 'skin-green-light', 'default', 'AIzaSyC8aB4MpC1orBp300KQQAiVEnWdpry4OPg', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '-3.973438605292762, 122.5218264386339', 'https://www.instagram.com/', 'https://m.facebook.com/', 'https://www.youtube.com/', 'https://twitter.com/', '2021-02-02 13:29:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_fullname` varchar(100) NOT NULL,
  `user_photo` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_lastlogin` datetime NOT NULL,
  `group_id` int(11) NOT NULL,
  `createtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_password`, `user_fullname`, `user_photo`, `user_email`, `user_lastlogin`, `group_id`, `createtime`) VALUES
(1, 'admin', '$2y$10$Jm5N6UX.TZ3.t5PHX35F.eVhILGJmqy4Em4MNj4y36zVZi5UpZHUe', 'Administrator', '', 'admin@gmail.com', '2021-02-02 19:40:31', 1, '2021-02-02 19:40:31'),
(7, 'Faza', '$2y$10$mQfr2xFqxa0fioU9KLnt..S9tP/DXC8gHeJDdfS1PUVI.7NoB/YNm', 'Muhamad Faza ', '', '', '0000-00-00 00:00:00', 2, '2022-08-03 21:33:27'),
(8, 'OmiOmi', '$2y$10$WWfoTU1NFjroOeeScXCn2O5w7dnEf/1tzGqrLce7yQd1/lMgWJc2e', 'Ababil Azies Sasilo', '', '', '0000-00-00 00:00:00', 2, '2022-08-03 21:50:54'),
(11, 'fello910', '$2y$10$RLP5oGpIaeJz9saUS4m0zusi5OJMXj9s1.auRlNNQArl.JDETxvn.', 'Fellonnisa Suria', '', '', '0000-00-00 00:00:00', 2, '2022-08-05 11:40:31'),
(12, 'ajeng_2', '$2y$10$2ffjtaWQqs1HKruH22T40u7e3PZUQxEKLkfEe99VPksRVa1p2Dl2i', 'Ajeng', '', '', '0000-00-00 00:00:00', 2, '2022-08-05 11:44:52'),
(13, 'milraga19', '$2y$10$cEPFt0dvS1ouziBpAenW6.B2hkWP3PSh.lPF8j2o0U31f0RXNYZZ6', 'Muhammad Ijlal Prayoga', '', '', '0000-00-00 00:00:00', 2, '2022-08-05 13:36:48'),
(14, 'annsa.fdhla', '$2y$10$YEAOUg.8n1p4Nx65QEwKQeO01XnWiYc5U3yj9U1rQRU0o/X5kWKya', 'Anisa Nur Fadilla', '', '', '0000-00-00 00:00:00', 2, '2022-08-05 13:56:57'),
(15, 'yulindaa', '$2y$10$ajLnIkKduqgzeegWRDkZxeXr38CEG4hYdoU4YAwm8qoKpVOzr/hoa', 'Yulinda', '', '', '0000-00-00 00:00:00', 2, '2022-08-05 17:25:53'),
(16, 'Ahmad', '$2y$10$8I4JBoKjtXAY9Apsll1XEuyvV7AOT4VriennhsDxYDZTyqMXIIfve', 'Ahmad', '', '', '0000-00-00 00:00:00', 2, '2022-08-15 13:22:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_web_content`
--

CREATE TABLE `tbl_web_content` (
  `content_id` int(11) NOT NULL,
  `content_title` varchar(30) NOT NULL,
  `content_text` text NOT NULL,
  `content_image` varchar(50) NOT NULL,
  `content_menu` varchar(30) NOT NULL,
  `createtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_web_content`
--

INSERT INTO `tbl_web_content` (`content_id`, `content_title`, `content_text`, `content_image`, `content_menu`, `createtime`) VALUES
(1, 'Tentang', '<p><strong>SiReTam </strong>(Sistem Rekomendasi Alat Pertambangan) adalah sebuah aplikasi berbasis website yang dibangun berdasarkan kebutuhan Tugas Akhir Jurusan Teknik Informatika, Universitas Halu Oleo. Sistem ini dibangun dengan mengimplementasikan metode mesin rekomendasi yang bertujuan agar dapat merekomendasikan alat pertambangan yang dibutuhkan oleh pelanggan.</p>\r\n', '', 'tentang', '2022-08-04 15:39:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_web_kategori`
--

CREATE TABLE `tbl_web_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(100) NOT NULL,
  `kategori_deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_web_kategori`
--

INSERT INTO `tbl_web_kategori` (`kategori_id`, `kategori_nama`, `kategori_deskripsi`) VALUES
(3, 'Excavator', 'Excavator merupakan alat yang dapat diaplikasikan pada sektor konstruksi, kehutanan, pertambangan, dan pertanian, seperti pada proses land clearing; cut & fill pada pembangunan jalan, jembatan, dan bendungan; penyebaran material pada pembuatan jalan; pembuatan / perawatan saluran; pemasangan pipa; pengerukan saluran; pengangkutan ke truk; serta sebagai penghancur batu / bangunan (rock breaker).   '),
(4, 'Bulldozer', 'Fungsi dari bulldozer yaitu untuk meratakan material dan tanah keranan daya dorong yang dimiliki alat berat yang satu ini sangat tinggi. '),
(5, 'Loader', 'Kelebihan Loader yaitu memiliki mobilitas tinggi dan mampu bermanuver di daerah pemuatan (loading point) yang lebih sempit dibanding Track Sholver. ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_web_produk`
--

CREATE TABLE `tbl_web_produk` (
  `produk_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `produk_nama` varchar(100) NOT NULL,
  `produk_harga` varchar(100) NOT NULL,
  `produk_stok` int(11) NOT NULL,
  `produk_gambar` text NOT NULL,
  `produk_ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_web_produk`
--

INSERT INTO `tbl_web_produk` (`produk_id`, `kategori_id`, `supplier_id`, `produk_nama`, `produk_harga`, `produk_stok`, `produk_gambar`, `produk_ket`) VALUES
(2, 3, 2, 'Excavator PC1250-11R', '250000', 2, 'produk-20220803135900.png', 'Net Engine Output : 750 HP;\r\nMaximum Digging Reach/Depth : 14070/ 7900 mm; \r\nGround Pressure : 1,54 kg/cm2;\r\nBucket Capacity : 7,5 m3;\r\n'),
(3, 3, 2, 'Excavator HB365-1', '250000', 1, 'produk-20220803140413.png', 'Net Engine Output : 189 kW 253 HP / 1950 rpm; Bucket Capacity : Bucket Me 2,30 m³; Maximum Digging Reach/Depth : 10065/6310 mm; Ground Pressure : 55.1 kPa; '),
(4, 3, 2, 'Excavator PC18MR-3', '200000', 1, 'produk-20220803140618.png', 'Operating Weight : 1,84-2,07 T; Digging Depth : 2,41 m; \r\nBucket Capacity : 0,03-0,06 m³; Engine Power : 11,6/15,6 kW/HP; '),
(5, 3, 2, 'Excavator PC30MR-3', '200000', 3, 'produk-20220803140808.png', 'Operating Weight : 3,14-3,4 T; Digging Depth : 3,13 m; Bucket Capacity : 0,04-0,13 m³; Engine Power : 22/29,5 kW/HP;'),
(6, 3, 2, 'Excavator PC300SE-8M0', '200000', 1, 'produk-20220803140954.png', 'Net Engine Output : 250 HP; Bucket Capacity : 2,3 m³; Maximum Digging Reach/Depth : 10.120 / 6.400 mm; Ground Pressure : 0,52 kg/cm²;'),
(7, 4, 2, 'Bulldozer D31PLL-21', '200000', 3, 'produk-20220803141235.png', 'Engine Output : 84 HP; Blade Width : 3.455 m³; Operating Weight : 9.250 kg;'),
(8, 4, 2, 'Bulldozer D68ESS-12EO', '300000', 2, 'produk-20220803141409.png', 'Blade Capacity : 2,60 m³ (Angle); Operating Weight : 19.800 kg; Engine Output :  155 HP;'),
(9, 4, 2, 'Bulldozer D31EX-22', '300000', 2, 'produk-20220803141533.png', 'Blade Capacity : 1,61 m³ (Power Angle tilt); Operating Weight : 7.670 kg; Engine Output : 78 HP;'),
(10, 5, 2, 'Loader WA320-6', '250000', 2, 'produk-20220803141918.png', 'Bucket Capacity : 2,6 m³ Light Material Bucket with teeth; Engine Output : 167 HP; Operating Weight : 13.705 - 14.440 kg;'),
(11, 5, 2, ' Loader WA200-6', '250000', 2, 'produk-20220803142900.png', 'Bucket Capacity : 1,9 m³; Operating Weight : 9585 - 9715 kg; Engine Output : 126 HP;'),
(12, 4, 2, 'Bulldozer D85ESS-2A', '250000', 1, 'produk-20220803143036.png', 'Blade Capacity : 3,4 m³ (Angle); Engine Output : 200 HP; Operating Weight : 20.670 kg; '),
(13, 4, 2, 'Bulldozer D39PX-22 ', '240000', 2, 'produk-20220803143231.png', 'Blade Capacity : 2,30 m³ (Power Angle tilt); Operating Weight : 9.480 kg; Engine Output : 137 HP;'),
(14, 5, 2, ' Loader WA430-6', '250000', 2, 'produk-20220803143410.png', 'Operating Weight : 18.220 - 18.545 kg; Bucket Capacity : 3,3 - 4,6 m³; Engine Output : 231 HP; '),
(15, 5, 2, 'Loader WA500-6R', '230000', 1, 'produk-20220803143531.png', 'Bucket Capacity : 5,3 - 8,2 m³; Operating Weight : 33.205 - 33.995 kg; Engine Output : 353 HP;'),
(16, 5, 2, ' Loader WA480-6', '200000', 1, 'produk-20220803143641.png', 'Operating Weight : 24.910 - 25.155 kg; Engine Output : 299 HP; Bucket Capacity : 4,3 - 8,0 m³;   '),
(18, 4, 4, 'Bulldozer D20-3', '170000', 3, 'produk-20220925181711.jpg', ''),
(19, 4, 4, 'Bulldozer D31E', '180000', 4, 'produk-20220925181720.png', ''),
(20, 4, 4, 'Bulldozer D65P', '190000', 4, 'produk-20220925181534.png', ''),
(21, 4, 4, 'Bulldozer D85', '200000', 3, 'produk-20220925182316.jpg', ''),
(22, 3, 4, 'Excavator PC100', '180000', 3, 'produk-20220925183355.jpg', ''),
(23, 3, 4, 'Excavator PC200', '200000', 2, 'produk-20220925184100.png', ''),
(24, 3, 4, 'Excavator Long Arm', '290000', 2, 'produk-20220925185644.png', ''),
(26, 3, 4, 'Excavator Long Arm', '290000', 1, 'produk-20220925191018.png', ''),
(27, 3, 4, 'Excavator Long Arm', '290000', 3, 'produk-20220925191404.png', ''),
(28, 3, 5, 'Excavator PC100', '150000', 5, 'produk-20220925190830.jpeg', ''),
(29, 3, 5, 'Excavator PC200', '160000', 3, 'produk-20220926204406.png', ''),
(30, 4, 6, 'Bulldozer D20-3 ', '110000', 2, 'produk-20220926205251.png', ''),
(31, 4, 6, 'Bulldozer D31E', '130000', 2, 'produk-20220926205937.png', ''),
(32, 4, 6, 'Bulldozer D65P', '155000', 3, 'produk-20220926210059.png', ''),
(33, 4, 6, 'Bulldozer D6D', '165000', 3, 'produk-20220926211053.png', ''),
(34, 4, 6, 'Bulldozer D7G', '220000', 2, 'produk-20220926211354.png', ''),
(35, 3, 7, 'Excavator PC200 – 6', '140000', 2, 'produk-20220927184227.png', ''),
(36, 3, 7, 'Excavator PC200 – 7', '150000', 3, 'produk-20220927184508.png', ''),
(37, 4, 7, 'Buldozer D65E – 8', '170000', 4, 'produk-20220927185051.png', ''),
(38, 4, 7, 'Buldozer D65P- 8', '170000', 3, 'produk-20220927185212.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_web_slider`
--

CREATE TABLE `tbl_web_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_title` varchar(50) NOT NULL,
  `slider_text` varchar(200) NOT NULL,
  `slider_image` varchar(50) NOT NULL,
  `createtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_web_slider`
--

INSERT INTO `tbl_web_slider` (`slider_id`, `slider_title`, `slider_text`, `slider_image`, `createtime`) VALUES
(2, 'Selamat Datang', 'Sistem Rekomendasi Alat Pertambangan (SiReTam)', 'slider-20220921112125.jpg', '2022-09-21 11:21:25'),
(3, 'SiReTam', 'SiReTam (Sistem Rekomendasi Alat Pertambangan) ini merupakan sebuah sistem yang dibangun atas dasar kebutuhan penelitian Jurusan Teknik Informatika UHO', 'slider-20220815132039.jpg', '2022-08-15 13:20:39'),
(4, 'SiReTam', 'Jika akan melakukan transaksi penyewaan alat pertambangan, silahkan melakukan login dan mengunjungi menu produk untuk menemukan produk yang ingin anda sewa', 'slider-20220815132051.jpg', '2022-08-15 13:20:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_web_supplier`
--

CREATE TABLE `tbl_web_supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_web_supplier`
--

INSERT INTO `tbl_web_supplier` (`supplier_id`, `supplier_nama`) VALUES
(2, 'PT. Jaga Aman Sarana'),
(4, 'CV. Barata Buana Mandiri'),
(5, 'CV. Buana Mitra Konstruksi'),
(6, 'PT. Sapta Nata Hutama'),
(7, 'Metro Steel Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_web_transaksi`
--

CREATE TABLE `tbl_web_transaksi` (
  `transaksi_id` varchar(100) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `transaksi_status` varchar(100) NOT NULL,
  `transaksi_rating` int(11) NOT NULL,
  `transaksi_jam` int(11) NOT NULL,
  `transaksi_total_harga` varchar(100) NOT NULL,
  `transaksi_status_ket` text NOT NULL,
  `createtime` datetime NOT NULL,
  `updatetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_web_transaksi`
--

INSERT INTO `tbl_web_transaksi` (`transaksi_id`, `produk_id`, `user_id`, `transaksi_status`, `transaksi_rating`, `transaksi_jam`, `transaksi_total_harga`, `transaksi_status_ket`, `createtime`, `updatetime`) VALUES
('transaksi-20220928165013', 3, 7, 'Pengembalian Alat', 5, 15, '3750000', 'Alat Menuju Tempat Penyewaan', '2022-09-28 16:50:13', '2022-09-28 16:50:13'),
('transaksi-20220928165053', 4, 16, 'Pengembalian Alat', 5, 5, '1000000', 'Alat Menuju Tempat Penyewaan', '2022-09-28 16:50:53', '2022-09-28 16:50:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_group`
--
ALTER TABLE `tbl_group`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `tbl_log`
--
ALTER TABLE `tbl_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_web_content`
--
ALTER TABLE `tbl_web_content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `tbl_web_kategori`
--
ALTER TABLE `tbl_web_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `tbl_web_produk`
--
ALTER TABLE `tbl_web_produk`
  ADD PRIMARY KEY (`produk_id`);

--
-- Indexes for table `tbl_web_slider`
--
ALTER TABLE `tbl_web_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `tbl_web_supplier`
--
ALTER TABLE `tbl_web_supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `tbl_web_transaksi`
--
ALTER TABLE `tbl_web_transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_group`
--
ALTER TABLE `tbl_group`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_log`
--
ALTER TABLE `tbl_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=738;

--
-- AUTO_INCREMENT for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_web_content`
--
ALTER TABLE `tbl_web_content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_web_kategori`
--
ALTER TABLE `tbl_web_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_web_produk`
--
ALTER TABLE `tbl_web_produk`
  MODIFY `produk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_web_slider`
--
ALTER TABLE `tbl_web_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_web_supplier`
--
ALTER TABLE `tbl_web_supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
