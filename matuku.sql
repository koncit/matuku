-- phpMyAdmin SQL Dump
-- version 4.2.6deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 21 Jan 2015 pada 22.42
-- Versi Server: 5.5.40-0ubuntu1
-- PHP Version: 5.5.12-2ubuntu4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `matuku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemakai`
--

CREATE TABLE IF NOT EXISTS `pemakai` (
`id_user` int(5) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `pemakai`
--

INSERT INTO `pemakai` (`id_user`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'muhardian', '01c92d3c5e470cbc71b8a461b0ecff53', 'Ahmad Muhardian');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tugas`
--

CREATE TABLE IF NOT EXISTS `tugas` (
`id` int(5) NOT NULL,
  `matakul` varchar(32) DEFAULT NULL,
  `judul` varchar(64) DEFAULT NULL,
  `deskripsi` text,
  `jenis` int(2) DEFAULT '1' COMMENT '1 = individu, 2 = kelompok',
  `deadline` date DEFAULT NULL,
  `selesai` int(2) DEFAULT '0' COMMENT '0 = belum selesai, 1 = selesai'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data untuk tabel `tugas`
--

INSERT INTO `tugas` (`id`, `matakul`, `judul`, `deskripsi`, `jenis`, `deadline`, `selesai`) VALUES
(2, 'Pemrograman Berorientasi Objek', 'Membuat program', 'Membuat dua buat program yang mengimplementaasikan:\r\n<ol>\r\n<li><h4>Pilih salah satu:</h4>\r\n<ul>\r\n<li>try - catch</li>\r\n<li>throw - catch</li>\r\n<li>throws - catch</li>\r\n<li>finnaly</li>\r\n</ul>\r\n</li>\r\n<li><h4>Buat exception sendiri</h4></li>\r\n</ol>\r\n<br>\r\nKetentuan:<br>\r\n<ul>\r\n<li>Tugas ini dipesentasikan oleh salah seorang dari anggota kelompok</li>\r\n<li>Programnya bisa jalan</li>\r\n<li>Presentasi bagus</li>\r\n</ul>', 2, '2015-01-01', 1),
(6, 'Statistika', 'Mengerjakan Soal', 'Kerjakan soal masalah R tabel, Z tabel, T tabel, dan Chi Square', 0, '2015-01-02', 0),
(7, 'Pemrograman Web', 'Membuat Web', 'Buatlah web dilengkapi dengan CRUD', 0, '2015-01-10', 1),
(8, 'Analisis Algoritma', 'Presentasi Algoritma Greedy', 'Buat presentasi tentang algoritma greedy', 0, '2014-11-20', 1),
(9, 'Teknologi Multimedia', 'Membuat Video', 'Buat video effek menghilang', 0, '2014-12-18', 1),
(10, 'Komputer dan Masyarakat', 'Makalah', 'Membuat makalah tentang dampak positif dan negatif Teknologi informasi', 0, '2014-12-27', 0),
(11, 'Praktikum Multimedia', 'Animasi After Effek', 'Membuat animisai sedehana dengan after effek', 0, '2015-01-06', 1),
(12, 'Statistika', 'Tugas 2', 'Mengerjakan soal untuk tuas 2', 0, '2015-01-16', 1),
(13, 'Praktikum Multimedia', 'Tugas akhir', 'Membuat paper tentang MANCOVA', 1, '2015-01-28', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pemakai`
--
ALTER TABLE `pemakai`
 ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tugas`
--
ALTER TABLE `tugas`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pemakai`
--
ALTER TABLE `pemakai`
MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tugas`
--
ALTER TABLE `tugas`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
