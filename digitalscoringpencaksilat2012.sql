-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 31, 2019 at 11:26 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skordigital`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `userID` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`userID`, `username`, `password`) VALUES
(1, 'admin', 'c8837b23ff8aaa8a2dde915473ce0991');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_tanding`
--

CREATE TABLE `jadwal_tanding` (
  `id_partai` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `kelas` varchar(55) NOT NULL,
  `gelanggang` varchar(2) NOT NULL,
  `partai` varchar(4) NOT NULL,
  `nm_merah` varchar(55) NOT NULL,
  `kontingen_merah` varchar(55) NOT NULL,
  `nm_biru` varchar(55) NOT NULL,
  `kontingen_biru` varchar(55) NOT NULL,
  `status` varchar(55) NOT NULL DEFAULT '-',
  `pemenang` varchar(150) NOT NULL DEFAULT '-',
  `babak` varchar(55) DEFAULT NULL,
  `medali` varchar(2) NOT NULL DEFAULT '0',
  `aktif` varchar(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_tgr`
--

CREATE TABLE `jadwal_tgr` (
  `id_partai` int(11) NOT NULL,
  `kategori` varchar(15) NOT NULL,
  `golongan` varchar(55) NOT NULL,
  `noundian` varchar(4) NOT NULL,
  `nama` varchar(55) NOT NULL,
  `kontingen` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kelastanding`
--

CREATE TABLE `kelastanding` (
  `ID_kelastanding` int(11) NOT NULL,
  `nm_kelastanding` varchar(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelastanding`
--

INSERT INTO `kelastanding` (`ID_kelastanding`, `nm_kelastanding`) VALUES
(1, 'KELAS A'),
(2, 'KELAS B'),
(3, 'KELAS C'),
(4, 'KELAS D'),
(5, 'KELAS E'),
(6, 'KELAS F'),
(7, 'KELAS G'),
(8, 'KELAS H'),
(9, 'KELAS I'),
(10, 'KELAS J');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `ID_konfirmasi` int(11) NOT NULL,
  `bank_tujuan` varchar(55) NOT NULL,
  `bank_pengirim` varchar(55) NOT NULL,
  `norek_pengirim` varchar(35) NOT NULL,
  `nm_pengirim` varchar(35) NOT NULL,
  `kontak` varchar(35) NOT NULL,
  `tgl_transfer` varchar(15) NOT NULL,
  `jumlah` varchar(35) NOT NULL,
  `bukti` varchar(128) NOT NULL,
  `catatan` text NOT NULL,
  `datetime` varchar(35) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'OPEN'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medali`
--

CREATE TABLE `medali` (
  `id_medali` int(11) NOT NULL,
  `nama` varchar(55) NOT NULL,
  `kontingen` varchar(55) NOT NULL,
  `kelas` varchar(25) NOT NULL,
  `medali` varchar(25) NOT NULL,
  `id_partai_FK` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_atlet`
--

CREATE TABLE `nilai_atlet` (
  `id_nilaiatlet` int(11) NOT NULL,
  `no_partai` varchar(5) NOT NULL,
  `nama` varchar(75) NOT NULL,
  `kontingen` varchar(100) NOT NULL,
  `hukuman` varchar(5) NOT NULL DEFAULT '0',
  `nilai` varchar(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_ganda`
--

CREATE TABLE `nilai_ganda` (
  `id_nilai` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `id_juri` int(11) NOT NULL,
  `teknik_serang` int(11) NOT NULL,
  `mantap_kompak` int(11) NOT NULL,
  `serasi` int(11) NOT NULL,
  `hukum_1` int(11) NOT NULL,
  `hukum_2` int(11) NOT NULL,
  `hukum_3` int(11) NOT NULL,
  `hukum_4` int(11) NOT NULL,
  `hukum_5` int(11) NOT NULL,
  `hukum_6` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_regu`
--

CREATE TABLE `nilai_regu` (
  `id_nilai` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `id_juri` int(11) NOT NULL,
  `jurus1` int(11) NOT NULL,
  `jurus2` int(11) NOT NULL,
  `jurus3` int(11) NOT NULL,
  `jurus4` int(11) NOT NULL,
  `jurus5` int(11) NOT NULL,
  `jurus6` int(11) NOT NULL,
  `jurus7` int(11) NOT NULL,
  `jurus8` int(11) NOT NULL,
  `jurus9` int(11) NOT NULL,
  `jurus10` int(11) NOT NULL,
  `jurus11` int(11) NOT NULL,
  `jurus12` int(11) NOT NULL,
  `kemantapan` int(11) NOT NULL,
  `hukum_1` int(11) NOT NULL,
  `hukum_2` int(11) NOT NULL,
  `hukum_3` int(11) NOT NULL,
  `hukum_4` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_tanding`
--

CREATE TABLE `nilai_tanding` (
  `id_nilai` int(11) NOT NULL,
  `id_jadwal` varchar(5) NOT NULL,
  `id_juri` varchar(1) NOT NULL,
  `button` varchar(55) NOT NULL,
  `nilai` int(11) NOT NULL,
  `sudut` varchar(55) NOT NULL,
  `babak` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_tunggal`
--

CREATE TABLE `nilai_tunggal` (
  `id_nilai` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `id_juri` int(11) NOT NULL,
  `jurus1` int(11) NOT NULL,
  `jurus2` int(11) NOT NULL,
  `jurus3` int(11) NOT NULL,
  `jurus4` int(11) NOT NULL,
  `jurus5` int(11) NOT NULL,
  `jurus6` int(11) NOT NULL,
  `jurus7` int(11) NOT NULL,
  `jurus8` int(11) NOT NULL,
  `jurus9` int(11) NOT NULL,
  `jurus10` int(11) NOT NULL,
  `jurus11` int(11) NOT NULL,
  `jurus12` int(11) NOT NULL,
  `jurus13` int(11) NOT NULL,
  `jurus14` int(11) NOT NULL,
  `kemantapan` int(11) NOT NULL,
  `hukum_1` int(11) NOT NULL,
  `hukum_2` int(11) NOT NULL,
  `hukum_3` int(11) NOT NULL,
  `hukum_4` int(11) NOT NULL,
  `hukum_5` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE `peserta` (
  `ID_peserta` int(11) NOT NULL,
  `nm_lengkap` varchar(35) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `tpt_lahir` varchar(55) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tb` int(11) NOT NULL,
  `bb` int(11) NOT NULL,
  `kelas` varchar(21) NOT NULL,
  `asal_sekolah` varchar(55) NOT NULL,
  `kategori_tanding` varchar(10) NOT NULL,
  `golongan` varchar(15) NOT NULL,
  `kode_gr` varchar(32) NOT NULL,
  `kelas_tanding_FK` varchar(4) NOT NULL,
  `kontingen` varchar(100) NOT NULL,
  `foto` varchar(128) NOT NULL,
  `ktp` varchar(128) NOT NULL,
  `akta_lahir` varchar(128) NOT NULL,
  `ijazah` varchar(128) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `undian`
--

CREATE TABLE `undian` (
  `id_undian` int(11) NOT NULL,
  `id_peserta` int(11) NOT NULL,
  `no_undian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `undian_tgr`
--

CREATE TABLE `undian_tgr` (
  `id_undiantgr` int(11) NOT NULL,
  `idpesertatgr` varchar(32) NOT NULL,
  `no_undian` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wasit_juri`
--

CREATE TABLE `wasit_juri` (
  `id_juri` int(11) NOT NULL,
  `nm_juri` varchar(55) NOT NULL,
  `pass_juri` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wasit_juri`
--

INSERT INTO `wasit_juri` (`id_juri`, `nm_juri`, `pass_juri`) VALUES
(1, 'JURI 1', '5f4dcc3b5aa765d61d8327deb882cf99'),
(2, 'JURI 2', '5f4dcc3b5aa765d61d8327deb882cf99'),
(3, 'JURI 3', '5f4dcc3b5aa765d61d8327deb882cf99'),
(4, 'JURI 4', '5f4dcc3b5aa765d61d8327deb882cf99'),
(5, 'JURI 5', '5f4dcc3b5aa765d61d8327deb882cf99');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `jadwal_tanding`
--
ALTER TABLE `jadwal_tanding`
  ADD PRIMARY KEY (`id_partai`);

--
-- Indexes for table `jadwal_tgr`
--
ALTER TABLE `jadwal_tgr`
  ADD PRIMARY KEY (`id_partai`);

--
-- Indexes for table `kelastanding`
--
ALTER TABLE `kelastanding`
  ADD PRIMARY KEY (`ID_kelastanding`);

--
-- Indexes for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`ID_konfirmasi`);

--
-- Indexes for table `medali`
--
ALTER TABLE `medali`
  ADD PRIMARY KEY (`id_medali`);

--
-- Indexes for table `nilai_atlet`
--
ALTER TABLE `nilai_atlet`
  ADD PRIMARY KEY (`id_nilaiatlet`);

--
-- Indexes for table `nilai_ganda`
--
ALTER TABLE `nilai_ganda`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `nilai_regu`
--
ALTER TABLE `nilai_regu`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `nilai_tanding`
--
ALTER TABLE `nilai_tanding`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `nilai_tunggal`
--
ALTER TABLE `nilai_tunggal`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`ID_peserta`);

--
-- Indexes for table `undian`
--
ALTER TABLE `undian`
  ADD PRIMARY KEY (`id_undian`);

--
-- Indexes for table `undian_tgr`
--
ALTER TABLE `undian_tgr`
  ADD PRIMARY KEY (`id_undiantgr`);

--
-- Indexes for table `wasit_juri`
--
ALTER TABLE `wasit_juri`
  ADD PRIMARY KEY (`id_juri`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jadwal_tanding`
--
ALTER TABLE `jadwal_tanding`
  MODIFY `id_partai` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jadwal_tgr`
--
ALTER TABLE `jadwal_tgr`
  MODIFY `id_partai` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kelastanding`
--
ALTER TABLE `kelastanding`
  MODIFY `ID_kelastanding` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `ID_konfirmasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medali`
--
ALTER TABLE `medali`
  MODIFY `id_medali` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nilai_atlet`
--
ALTER TABLE `nilai_atlet`
  MODIFY `id_nilaiatlet` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nilai_ganda`
--
ALTER TABLE `nilai_ganda`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nilai_regu`
--
ALTER TABLE `nilai_regu`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nilai_tanding`
--
ALTER TABLE `nilai_tanding`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nilai_tunggal`
--
ALTER TABLE `nilai_tunggal`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `peserta`
--
ALTER TABLE `peserta`
  MODIFY `ID_peserta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `undian`
--
ALTER TABLE `undian`
  MODIFY `id_undian` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `undian_tgr`
--
ALTER TABLE `undian_tgr`
  MODIFY `id_undiantgr` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wasit_juri`
--
ALTER TABLE `wasit_juri`
  MODIFY `id_juri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
