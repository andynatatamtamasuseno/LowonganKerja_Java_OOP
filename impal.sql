-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2018 at 06:04 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `impal`
--

-- --------------------------------------------------------

--
-- Table structure for table `berkaslamar`
--

CREATE TABLE `berkaslamar` (
  `idBerkas` int(11) NOT NULL,
  `idPelamar` int(8) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `noHp` varchar(12) NOT NULL,
  `Pendidikan` varchar(25) NOT NULL,
  `skill` varchar(500) NOT NULL,
  `Pengalaman` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berkaslamar`
--

INSERT INTO `berkaslamar` (`idBerkas`, `idPelamar`, `nama`, `email`, `noHp`, `Pendidikan`, `skill`, `Pengalaman`) VALUES
(1, 1, '111', '1111', '111', '111', 'Programmer', 'Bekerja di Microsoft selama 3 tahun'),
(2, 3, 'Andy', 'andy@gmail.com', '08123218234', 'Informatika', 'Pertambangan	', '2 tahun di LIPI'),
(3, 2, 'Tamtama', 'tama@gmail.com', '087823151033', 'S1 Sistem Informasi', 'Programmer Skill', 'Bekerja di XL 2 tahun'),
(4, 2, 'Tamtama', 'tama@gmail.com', '087823151033', 'S1 Sistem Informasi', 'Programing', '3 tahun kerja di microsft'),
(5, 4, 'andynata', 'andynata@gmail.com', '082334324234', 'SMA', 'Web Programmer\r\nAndroid Programmer\r\n', 'Bekerja di Telkom selama 2 tahun');

-- --------------------------------------------------------

--
-- Table structure for table `lowongan`
--

CREATE TABLE `lowongan` (
  `idLowongan` int(11) NOT NULL,
  `idPerusahaan` int(8) NOT NULL,
  `deadline` varchar(25) NOT NULL,
  `namaLowongan` varchar(25) NOT NULL,
  `nmPerusahaan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lowongan`
--

INSERT INTO `lowongan` (`idLowongan`, `idPerusahaan`, `deadline`, `namaLowongan`, `nmPerusahaan`) VALUES
(1, 1, '11-12-2017', 'Manager', '123'),
(2, 1, '11-12-2017', 'Office Boy', '123'),
(3, 3, '10-12-2017', 'Bisnis Annalish', 'BUMN'),
(4, 3, '10-12-2017', 'Programmer', 'BUMN'),
(6, 2, '11-12-2017', 'Asisten Pertambangan', 'PERTAMINA'),
(8, 4, '10-10-2018', 'Manager', 'PT TELKOMSEL JKT'),
(9, 4, '10-10-2018', 'Programmer', 'PT TELKOMSEL JKT');

-- --------------------------------------------------------

--
-- Table structure for table `melamar`
--

CREATE TABLE `melamar` (
  `id` int(8) NOT NULL,
  `idPelamar` int(8) NOT NULL,
  `idLowongan` int(8) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `melamar`
--

INSERT INTO `melamar` (`id`, `idPelamar`, `idLowongan`, `status`) VALUES
(1, 3, 5, 'Berkas Diterima'),
(2, 3, 5, 'Berkas Diterima'),
(3, 3, 1, 'Belum Diterima'),
(4, 2, 3, 'Berkas Diterima'),
(5, 2, 1, 'Belum Diterima'),
(6, 2, 2, 'Belum Diterima'),
(7, 2, 4, 'Berkas Diterima'),
(8, 2, 5, 'Belum Diterima'),
(9, 2, 6, 'Belum Diterima'),
(10, 3, 1, 'Belum Diterima'),
(11, 3, 2, 'Belum Diterima'),
(12, 3, 3, 'Belum Diterima'),
(13, 3, 4, 'Berkas Diterima'),
(14, 3, 5, 'Berkas Diterima'),
(15, 3, 6, 'Belum Diterima'),
(16, 4, 9, 'Berkas Diterima');

-- --------------------------------------------------------

--
-- Table structure for table `pelamar`
--

CREATE TABLE `pelamar` (
  `idPelamar` int(8) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `noHp` varchar(12) NOT NULL,
  `Pendidikan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelamar`
--

INSERT INTO `pelamar` (`idPelamar`, `nama`, `username`, `password`, `email`, `noHp`, `Pendidikan`) VALUES
(2, 'Tamtama', 'tama', 'tama', 'tama@gmail.com', '087823151033', 'S1 Sistem Informasi'),
(3, 'Andy', 'andy', 'andy', 'andy@gmail.com', '08123218234', 'Informatika'),
(4, 'andynata', 'andynata', 'andynata', 'andynata@gmail.com', '082334324234', 'SMA');

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan`
--

CREATE TABLE `perusahaan` (
  `idPerusahaan` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `noHp` varchar(12) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perusahaan`
--

INSERT INTO `perusahaan` (`idPerusahaan`, `nama`, `username`, `password`, `email`, `noHp`, `alamat`) VALUES
(1, '123', '123', '123', '123', '123', '123'),
(2, 'PERTAMINA', 'pertamina', 'pertamina', 'pertamina@gmail.com', '08723423424', 'Jakarta Selatan'),
(3, 'BUMN', 'bumn', 'bumn', 'bumn@gmail,com', '08234124123', 'Jakarta Selatan'),
(4, 'PT TELKOMSEL JKT', 'telkomseljkt', 'telkomseljkt', 'telkomseljkt@gmail.com', '0821000008', 'Jakarta selatan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berkaslamar`
--
ALTER TABLE `berkaslamar`
  ADD PRIMARY KEY (`idBerkas`);

--
-- Indexes for table `lowongan`
--
ALTER TABLE `lowongan`
  ADD PRIMARY KEY (`idLowongan`);

--
-- Indexes for table `melamar`
--
ALTER TABLE `melamar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelamar`
--
ALTER TABLE `pelamar`
  ADD PRIMARY KEY (`idPelamar`);

--
-- Indexes for table `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`idPerusahaan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berkaslamar`
--
ALTER TABLE `berkaslamar`
  MODIFY `idBerkas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lowongan`
--
ALTER TABLE `lowongan`
  MODIFY `idLowongan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `melamar`
--
ALTER TABLE `melamar`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pelamar`
--
ALTER TABLE `pelamar`
  MODIFY `idPelamar` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `idPerusahaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
