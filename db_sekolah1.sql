-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2024 at 12:12 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sekolah1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `id` int(11) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `telpon` varchar(20) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `foto` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_guru`
--

INSERT INTO `tbl_guru` (`id`, `nip`, `nama`, `alamat`, `telpon`, `agama`, `foto`) VALUES
(4, '199012102022101001', 'A', 'tokyo dro', '081134427409', 'Islam-Syiah', '324-atlantis.jpeg'),
(7, '199012102022101002', 'B', 'demak', '081226498702', 'Islam-NU', '852-B.jpg'),
(8, '199012102022101003', 'C', 'jepara', '081226498703', 'Islam-MD', '967-C.jpg'),
(9, '199012102022101004', 'D', 'pekalongan', '081226498704', 'Islam-Wahabi', '143-D.jpg'),
(10, '199012102022101005', 'E', 'Eropa', '081226498705', 'Islam-KTP', '934-E.jpg'),
(11, '199012102022101006', 'F', 'New zee', '081226498706', 'Islam-MD', '647-F.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilai_ujian`
--

CREATE TABLE `tbl_nilai_ujian` (
  `id` int(11) NOT NULL,
  `no_ujian` char(7) NOT NULL,
  `pelajaran` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `nilai_ujian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_nilai_ujian`
--

INSERT INTO `tbl_nilai_ujian` (`id`, `no_ujian`, `pelajaran`, `jurusan`, `nilai_ujian`) VALUES
(1, 'UTS-001', 'Biologi', 'IPA', 100),
(2, 'UTS-001', 'Fisika', 'IPA', 100),
(3, 'UTS-001', 'Kimia ', 'IPA', 100),
(4, 'UTS-001', 'Matematika', 'IPA', 100),
(5, 'UTS-001', 'Olahraga', 'Umum', 100),
(6, 'UTS-001', 'Masak-masak', 'Umum', 100),
(7, 'UTS-001', 'Bahasa Ingris', 'Umum', 100),
(8, 'UTS-002', 'Geografi', 'IPS', 50),
(9, 'UTS-002', 'Sosiologi', 'IPS', 60),
(10, 'UTS-002', 'Ekonomi', 'IPS', 60),
(11, 'UTS-002', 'Sejarah ', 'IPS', 70),
(12, 'UTS-002', 'Olahraga', 'Umum', 50),
(13, 'UTS-002', 'Masak-masak', 'Umum', 40),
(14, 'UTS-002', 'Bahasa Ingris', 'Umum', 50),
(15, 'UTS-003', 'MPI', 'AGAMA', 70),
(16, 'UTS-003', 'Alquran Hadist', 'AGAMA', 80),
(17, 'UTS-003', 'Fiqih', 'AGAMA', 80),
(18, 'UTS-003', 'SKI', 'AGAMA', 90),
(19, 'UTS-003', 'Olahraga', 'Umum', 80),
(20, 'UTS-003', 'Masak-masak', 'Umum', 90),
(21, 'UTS-003', 'Bahasa Ingris', 'Umum', 80);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelajaran`
--

CREATE TABLE `tbl_pelajaran` (
  `id` int(11) NOT NULL,
  `pelajaran` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `guru` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_pelajaran`
--

INSERT INTO `tbl_pelajaran` (`id`, `pelajaran`, `jurusan`, `guru`) VALUES
(1, 'MPI', 'AGAMA', 'A'),
(2, 'Alquran Hadist', 'AGAMA', 'A'),
(3, 'Fiqih', 'AGAMA', 'B'),
(4, 'SKI', 'AGAMA', 'B'),
(9, 'Geografi', 'IPS', 'C'),
(10, 'Sosiologi', 'IPS', 'C'),
(11, 'Ekonomi', 'IPS', 'D'),
(12, 'Sejarah ', 'IPS', 'D'),
(13, 'Biologi', 'IPA', 'E'),
(14, 'Fisika', 'IPA', 'E'),
(15, 'Kimia ', 'IPA', 'F'),
(16, 'Matematika', 'IPA', 'F'),
(17, 'Olahraga', 'Umum', 'A'),
(18, 'Masak-masak', 'Umum', 'B'),
(19, 'Bahasa Ingris', 'Umum', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sekolah`
--

CREATE TABLE `tbl_sekolah` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `akreditasi` char(1) NOT NULL,
  `status` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `visimisi` varchar(256) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_sekolah`
--

INSERT INTO `tbl_sekolah` (`id`, `nama`, `alamat`, `akreditasi`, `status`, `email`, `visimisi`, `gambar`) VALUES
(1, 'MAN Demak', 'No. 27 Wonosalam, Jl. Diponegoro,Wonosalam, Rw. 1, Jogoloyo, Kec. Demak, Kabupaten Demak, Jawa Tengah 59571', 'A', 'Negeri', 'mandemak@gmail.com', 'Terwujudnya Generasi Berprestasi, Terampil dalam Teknologi, Berakhlaq Islami, serta Berwawasan Lingkungan', '46-bgLogin.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `nis` char(6) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `kelas` varchar(3) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`nis`, `nama`, `alamat`, `kelas`, `jurusan`, `foto`) VALUES
('NIS001', 'Salyaznayya', 'Demak', 'XII', 'IPA', '125-yazna.jpeg'),
('NIS002', 'Ahmad Imtiyaz ', 'soooooo', 'XII', 'IPA', '830-images.png'),
('NIS003', 'Yazna', 'oioi', 'XII', 'IPS', '691-pexels-simon-robben-614810.jpg'),
('NIS004', 'M Yusuf Ibrahim ', 'Tompe Dempet Demak', 'XII', 'IPS', '470-C.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ujian`
--

CREATE TABLE `tbl_ujian` (
  `no_ujian` char(7) NOT NULL,
  `tgl_ujian` date NOT NULL,
  `nis` char(6) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `total_nilai` int(11) NOT NULL,
  `nilai_terendah` int(11) NOT NULL,
  `nilai_tertinggi` int(11) NOT NULL,
  `nilai_rata2` int(11) NOT NULL,
  `hasil_ujian` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_ujian`
--

INSERT INTO `tbl_ujian` (`no_ujian`, `tgl_ujian`, `nis`, `jurusan`, `total_nilai`, `nilai_terendah`, `nilai_tertinggi`, `nilai_rata2`, `hasil_ujian`) VALUES
('UTS-001', '2024-09-10', 'NIS001', 'IPA', 700, 100, 100, 100, 'LULUS'),
('UTS-002', '2024-09-10', 'NIS004', 'IPS', 380, 40, 70, 54, 'GAGAL'),
('UTS-003', '2024-09-10', 'NIS003', 'AGAMA', 570, 70, 90, 81, 'LULUS');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(256) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `jabatan` varchar(128) NOT NULL,
  `foto` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `nama`, `alamat`, `jabatan`, `foto`) VALUES
(1, 'admin', '$2y$10$4aQ5oNVSPcmAN0qKV3TXFubqcVpWrpEEbXRPrXBqNkwBcYlyy3IdS', 'Yazna', 'Demak', 'Kepsek', '107-qq.jpeg'),
(2, 'yazyaz', '$2y$10$uqaO6JTM3RXIhpnC97WyX./UdC1Gs7.Aaz.uZsRV81d1FVohbc/Aq', 'Salyaznayya', 'Demak', 'Staf Tu', 'default.png'),
(3, 'Imtiyaz', '$2y$10$VfOehQTG4EvzpiK2PRiyI.F2qc/zc3gq78Z/nTfHflKnCp5scrEHa', 'Ahmad Imtiyaz Najih', 'Jogja', 'Guru', '94-download.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_nilai_ujian`
--
ALTER TABLE `tbl_nilai_ujian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pelajaran`
--
ALTER TABLE `tbl_pelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sekolah`
--
ALTER TABLE `tbl_sekolah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `tbl_ujian`
--
ALTER TABLE `tbl_ujian`
  ADD PRIMARY KEY (`no_ujian`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_nilai_ujian`
--
ALTER TABLE `tbl_nilai_ujian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_pelajaran`
--
ALTER TABLE `tbl_pelajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_sekolah`
--
ALTER TABLE `tbl_sekolah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
