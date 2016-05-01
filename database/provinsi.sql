-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 17 Jan 2016 pada 03.32
-- Versi Server: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_aparatur`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `provinsi`
--

CREATE TABLE IF NOT EXISTS `provinsi` (
  `id` varchar(3) NOT NULL,
  `nama_provinsi` varchar(150) DEFAULT NULL,
  `logo_provinsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `provinsi`
--

INSERT INTO `provinsi` (`id`, `nama_provinsi`, `logo_provinsi`) VALUES
('11', 'ACEH', '1451465336.Aceh.png'),
('12', 'SUMATERA UTARA', '1451465359.Sumatera Utara.png'),
('13', 'SUMATERA BARAT', '1451465390.Sumatera Barat.png'),
('14', 'RIAU', '1451465449.Riau.png'),
('15', 'JAMBI', '1451465461.Jambi.png'),
('16', 'SUMATERA SELATAN', '1451465482.Sumatera Selatan.png'),
('17', 'BENGKULU', '1451465495.Bengkulu.png'),
('18', 'LAMPUNG', '1451465508.Lampung.png'),
('19', 'KEPULAUAN BANGKA BELITUNG', '1451465521.Kepulauan Bangka Belitung.png'),
('21', 'KEPULAUAN RIAU', '1451465535.Kepulauan Riau.png'),
('31', 'DKI JAKARTA', '1451465554.Jakarta.png'),
('32', 'JAWA BARAT', '1451465570.Jawa Barat.png'),
('33', 'JAWA TENGAH', '1451465586.Jawa Tengah.png'),
('34', 'DAERAH ISTIMEWA YOGYAKARTA', '1451465602.Yogyakarta.png'),
('35', 'JAWA TIMUR', '1451465620.Jawa Timur.png'),
('36', 'BANTEN', '1451465635.Banten.png'),
('51', 'BALI', '1451465649.Bali.png'),
('52', 'NUSA TENGGARA BARAT', '1451465663.Nusa Tenggara Barat.png'),
('53', 'NUSA TENGGARA TIMUR', '1451465677.Nusa Tenggara Timur.png'),
('61', 'KALIMANTAN BARAT', '1451465692.Kalimantan Barat.png'),
('62', 'KALIMANTAN TENGAH', '1451465728.Kalimantan Tengah.png'),
('63', 'KALIMANTAN SELATAN', '1451465746.Kalimantan Selatan.png'),
('64', 'KALIMANTAN TIMUR', '1451465761.Kalimantan Timur.png'),
('65', 'KALIMANTAN UTARA', '1451465776.Kalimantan Utara.png'),
('71', 'SULAWESI UTARA', '1451465791.Sulawesi Utara.png'),
('72', 'SULAWESI TENGAH', '1451465805.Sulawesi Tengah.png'),
('73', 'SULAWESI SELATAN', '1451465822.Sulawesi Selatan.png'),
('74', 'SULAWESI TENGGARA', '1451465858.Sulawesi Tenggara.png'),
('75', 'GORONTALO', '1451465872.Gorontalo.png'),
('76', 'SULAWESI BARAT', '1451465887.Sulawesi Barat.png'),
('81', 'MALUKU', '1451465903.Maluku.png'),
('82', 'MALUKU UTARA', '1451465918.Maluku Utara.png'),
('91', 'PAPUA', '1451465932.Papua.png'),
('92', 'PAPUA BARAT', '1451465948.Papua Barat.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
 ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
