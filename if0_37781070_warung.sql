-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql107.infinityfree.com
-- Generation Time: Dec 06, 2024 at 11:16 PM
-- Server version: 10.6.19-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_37781070_warung`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `KodeBarang` varchar(30) NOT NULL,
  `NamaBarang` varchar(50) NOT NULL,
  `JumlahStok` double(7,2) DEFAULT NULL,
  `HargaJual` double(9,1) DEFAULT NULL,
  `HargaBeli` double(9,1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `IsiNota`
--

CREATE TABLE `IsiNota` (
  `NoNota` int(10) NOT NULL,
  `KodeBarang` varchar(30) NOT NULL,
  `JumlahBelanja` double(7,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Nota`
--

CREATE TABLE `Nota` (
  `NoNota` int(10) NOT NULL,
  `NoHP/WA` varchar(15) NOT NULL,
  `WaktuBelanja` datetime NOT NULL DEFAULT current_timestamp(),
  `TotalBelanja` double(10,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `NoHP/WA` varchar(15) NOT NULL,
  `NamaPelanggan` varchar(35) NOT NULL,
  `Alamat` text DEFAULT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`KodeBarang`);

--
-- Indexes for table `IsiNota`
--
ALTER TABLE `IsiNota`
  ADD KEY `NoNota` (`NoNota`),
  ADD KEY `KodeBarang` (`KodeBarang`);

--
-- Indexes for table `Nota`
--
ALTER TABLE `Nota`
  ADD PRIMARY KEY (`NoNota`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`NoHP/WA`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
