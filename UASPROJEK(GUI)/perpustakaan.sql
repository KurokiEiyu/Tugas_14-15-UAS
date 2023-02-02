-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2023 at 06:01 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `Kode` float NOT NULL,
  `Judul_Buku` varchar(50) NOT NULL,
  `Penerbit` varchar(50) NOT NULL,
  `Pengarang` varchar(40) NOT NULL,
  `Tahun_Terbit` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`Kode`, `Judul_Buku`, `Penerbit`, `Pengarang`, `Tahun_Terbit`) VALUES
(1, 'INDAHNYA CINTA!', 'KUSUKA', 'Indah dan Cinta', '18-07-2003'),
(2, 'HAYANG KOPI', 'BUTUHKUOTASIH', 'Internet super sinyal', '18-07-2000'),
(3, 'BUTUHSSD', 'HDD', 'TBW SSD JELEK', '18-07-1989'),
(1001, 'YA gimana YA', 'Japri', 'SUKIJAN', '16-01-2023');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NIM` varchar(25) NOT NULL,
  `Nama` varchar(40) NOT NULL,
  `Jenis_Kelamin` varchar(10) NOT NULL,
  `Telepon` varchar(15) NOT NULL,
  `Email` text NOT NULL,
  `Jurusan` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`NIM`, `Nama`, `Jenis_Kelamin`, `Telepon`, `Email`, `Jurusan`) VALUES
('20210040111', 'IKA', 'Perempuan', '085860971086', 'Ika21@nusaputra.ac.id', 'Teknik Informatika'),
('20210040119', 'Muhammad Ilham Nurdiansyah Alfajar', 'Laki-Laki', '085860979884', 'ilham.alfajar21@nusaputra.ac.id', 'Teknik Informatika'),
('20210040123', 'Setiana Andika Putra', 'Laki-Laki', '085860972331', 'Saputra21@nusaputra.ac.id', 'Teknik Informatika'),
('20210040456', 'Aldi', 'Laki-Laki', '085860974561', 'Aldi21@nusaputra.ac.id', 'Teknik Informatika'),
('20210040763', 'Azis', 'Laki-Laki', '085860977689', 'Azis21@nusaputra.ac.id', 'Teknik Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `NIM` varchar(25) NOT NULL,
  `Nama` varchar(40) NOT NULL,
  `Kode_Buku` float NOT NULL,
  `Buku` varchar(40) NOT NULL,
  `Tanggal_Pinjam` varchar(40) NOT NULL,
  `Kode_Pinjam` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`NIM`, `Nama`, `Kode_Buku`, `Buku`, `Tanggal_Pinjam`, `Kode_Pinjam`) VALUES
('20210040111', 'IKA', 2, 'HAYANG KOPI', '31-01-2023', 'NPU/31012023/000002'),
('20210040119', 'Muhammad Ilham Nurdiansyah Alfajar', 1, 'INDAHNYA CINTA!', '31-01-2023', 'NPU/31012023/000003');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`Kode`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NIM`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD UNIQUE KEY `NIM` (`NIM`),
  ADD KEY `NIM_2` (`NIM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
