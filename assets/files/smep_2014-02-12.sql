-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2014 at 03:27 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `smep`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `ip_address` varchar(45) COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `user_agent` varchar(120) COLLATE latin1_general_ci NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text COLLATE latin1_general_ci,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('73a5f2fdd6dff6a6193dbcb3bbbea09b', '172.16.64.14', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', 1392194320, ''),
('8179102e00d8a77347b862e6c2adb0c1', '172.16.64.14', 'Mozilla/5.0 (Windows NT 6.1; rv:28.0) Gecko/20100101 Firefox/28.0', 1392194994, ''),
('c698bfffa6154848528afc46af09790c', '172.16.64.14', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:27.0) Gecko/20100101 Firefox/27.0', 1392201202, 'a:6:{s:9:"user_data";s:0:"";s:8:"username";s:5:"admin";s:4:"role";s:1:"1";s:6:"satker";s:1:"1";s:4:"nama";s:13:"Administrator";s:15:"processing_year";i:2014;}'),
('960169ad5d8e8774d5f2bea9e2ffd9d8', '172.16.64.14', 'Mozilla/5.0 (Linux; U; Android 4.0.4; en-gb; GT-P3100 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 S', 1392203314, ''),
('e86113ac390814b24d93ee317b07c4f4', '172.16.64.14', 'Mozilla/5.0 (Linux; U; Android 4.0.4; en-gb; GT-P3100 Build/IMM76D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 S', 1392203460, ''),
('be8b0b67d30096b49b8b99a4ad1f3b98', '172.16.64.14', 'Mozilla/5.0 (Windows NT 6.1; rv:28.0) Gecko/20100101 Firefox/28.0', 1392195016, 'a:1:{s:9:"user_data";s:0:"";}');

-- --------------------------------------------------------

--
-- Table structure for table `tr_btl`
--

CREATE TABLE IF NOT EXISTS `tr_btl` (
  `tahun` int(11) NOT NULL,
  `is_anggaran_plan_done` enum('0','1') COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `insert_user` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `insert_datetime` datetime NOT NULL,
  PRIMARY KEY (`tahun`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tr_btl`
--

INSERT INTO `tr_btl` (`tahun`, `is_anggaran_plan_done`, `insert_user`, `insert_datetime`) VALUES
(2013, '0', 'admin', '2013-12-08 18:31:40'),
(2014, '0', 'admin', '2013-12-26 14:31:04');

-- --------------------------------------------------------

--
-- Table structure for table `tr_capaian`
--

CREATE TABLE IF NOT EXISTS `tr_capaian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_program` int(11) NOT NULL,
  `uraian` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `target` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `insert_user` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `insert_datetime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ref_program` (`ref_program`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tr_kegiatan`
--

CREATE TABLE IF NOT EXISTS `tr_kegiatan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `pagu` double NOT NULL,
  `ref_program` int(11) NOT NULL,
  `is_abt` enum('0','1') COLLATE latin1_general_ci DEFAULT NULL,
  `insert_user` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `insert_datetime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ref_program` (`ref_program`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=864 ;

--
-- Dumping data for table `tr_kegiatan`
--

INSERT INTO `tr_kegiatan` (`id`, `kode`, `nama`, `pagu`, `ref_program`, `is_abt`, `insert_user`, `insert_datetime`) VALUES
(665, '1.26.04.001', 'Pengadaan Komputer PC dan Notebook/laptop', 200000000, 7, NULL, '', '0000-00-00 00:00:00'),
(666, '1.26.04.002', 'Pengadaan Printer lazerjet 1320 (A3+A4)', 100000000, 7, NULL, '', '0000-00-00 00:00:00'),
(667, '1.26.04.003', 'Penyediaan Jasa Kebersihan Kantor (cleaning service) Gedung Perpustakaan Umum DKI Jakarta', 600000000, 7, NULL, '', '0000-00-00 00:00:00'),
(668, '1.26.04.004', 'Penyediaan Jasa Telekomunikasi, Air, Telepon dan Listrik (TALI) Gedung Perpustakaan Umum Daerah Provinsi DKI Jakarta', 1900000000, 7, NULL, '', '0000-00-00 00:00:00'),
(669, '1.26.04.005', 'Penyediaan Jasa Telekomunikasi, Air, Telepon dan Listrik (TALI) Gedung Depo Arsip Daerah Provinsi DKI Jakarta', 3000000000, 7, NULL, '', '0000-00-00 00:00:00'),
(670, '1.26.04.006', 'Penyediaan Jasa Pemeliharaan Alat Pendingin (AC Central dan Split) Gedung Depo Arsip Pulomas', 1000000000, 7, NULL, '', '0000-00-00 00:00:00'),
(671, '1.26.04.007', 'Penyediaan Jasa Pemeliharaan Alat Pembangkit Listrik (genset) Gedung Depo Arsip Blok B dan D Pulomas', 400000000, 7, NULL, '', '0000-00-00 00:00:00'),
(672, '1.26.04.008', 'Penyediaan Jasa Pemeliharaan Alat Angkutan (elevator) Gedung Depo Arsip Pulomas Blok B dan D', 400000000, 7, NULL, '', '0000-00-00 00:00:00'),
(673, '1.26.04.009', 'Penyediaan Jasa Pemeliharaan Alat Angkut (gondola)', 100000000, 7, NULL, '', '0000-00-00 00:00:00'),
(674, '1.26.04.012', 'Pengadaan Komputer / Laptop dan Printer', 200000000, 7, NULL, '', '0000-00-00 00:00:00'),
(675, '1.26.04.013', 'Pengelolaan keprotokolan dan PKL/Riset bagi mahasiswa dan siswa SMK', 100000000, 7, NULL, '', '0000-00-00 00:00:00'),
(676, '1.26.04.014', 'Pengelolaan administrasi barang dan penghapusan barang inventaris', 150000000, 7, NULL, '', '0000-00-00 00:00:00'),
(677, '1.26.04.015', 'Pengadaan alat listrik dan elektronik pakai habis', 100000000, 7, NULL, '', '0000-00-00 00:00:00'),
(678, '1.26.04.016', 'Pengadaan alat kerumahtanggaan', 30000000, 7, NULL, '', '0000-00-00 00:00:00'),
(679, '1.26.04.017', 'Pengadaan bahan cetakan umum', 200000000, 7, NULL, '', '0000-00-00 00:00:00'),
(680, '1.26.04.018', 'Penyediaan alat tulis kantor operasional BPAD', 200000000, 7, NULL, '', '0000-00-00 00:00:00'),
(681, '1.26.04.019', 'Pengelolaan pengamanan gedung kantor', 250000000, 7, NULL, '', '0000-00-00 00:00:00'),
(682, '1.26.04.020', 'Pemeliharaan pompa transfer', 10000000, 7, NULL, '', '0000-00-00 00:00:00'),
(683, '1.26.04.021', 'Pemeliharaan mesin foto copy', 10000000, 7, NULL, '', '0000-00-00 00:00:00'),
(684, '1.26.04.022', 'Pemeliharaan / pengantian suku cadang penghisap debu', 5000000, 7, NULL, '', '0000-00-00 00:00:00'),
(685, '1.26.04.023', 'Pengadaan LCD proyektor', 100000000, 7, NULL, '', '0000-00-00 00:00:00'),
(686, '1.26.04.024', 'Pemeliharaan / penggantian suku cadang mesin faximile dan telepon', 5000000, 7, NULL, '', '0000-00-00 00:00:00'),
(687, '1.24.01.001', 'Peliputan dan perekaman kegiatan pemda dan peristiwa fenomena yang terjadi di jakarta', 250000000, 8, NULL, '', '0000-00-00 00:00:00'),
(688, '1.24.01.002', 'Pengadaan Mesin Scanner dan server untuk digitalisasi', 200000000, 8, NULL, '', '0000-00-00 00:00:00'),
(689, '1.24.01.003', 'Wawancara terhadap para tokoh sejarah tentang perkembangan dan pembangunan kota jakarta', 300000000, 8, NULL, '', '0000-00-00 00:00:00'),
(690, '1.24.01.004', 'Pengadaan peralatan peliputan/perekaman', 200000000, 8, NULL, '', '0000-00-00 00:00:00'),
(691, '1.24.01.005', 'Pengelolaan wajib serah arsip/dokumen', 200000000, 8, NULL, '', '0000-00-00 00:00:00'),
(692, '1.24.01.006', 'Pengadaan peralatan fumigasi arsip', 250000000, 8, NULL, '', '0000-00-00 00:00:00'),
(693, '1.24.01.007', 'Akuisisi duplikasi arsip vital', 500000000, 8, NULL, '', '0000-00-00 00:00:00'),
(694, '1.24.01.008', 'Penataan Arsip Daerah', 500000000, 8, NULL, '', '0000-00-00 00:00:00'),
(695, '1.24.01.009', 'Penghimpunan arsip dosir', 100000000, 8, NULL, '', '0000-00-00 00:00:00'),
(696, '1.24.01.010', 'Penyusunan naskah sumber', 200000000, 8, NULL, '', '0000-00-00 00:00:00'),
(697, '1.24.01.011', 'Pemeliharaan sarana dan prasarana pengolahan', 200000000, 8, NULL, '', '0000-00-00 00:00:00'),
(698, '1.24.01.011', 'Pengadaan alat penetralisir udara', 200000000, 8, NULL, '', '0000-00-00 00:00:00'),
(699, '1.24.01.012', 'Perawatan peralatan sarana dan prasarana mikrofilm', 200000000, 8, NULL, '', '0000-00-00 00:00:00'),
(700, '1.24.01.012', 'Rekonstruksi Arsip/Dokumen dan Media Baru', 500000000, 8, NULL, '', '0000-00-00 00:00:00'),
(701, '1.24.01.012', 'Pengadaan Sistem Pemadam Kebakaran Terbarukan untuk Gedung Depo Arsip', 3000000000, 8, NULL, '', '0000-00-00 00:00:00'),
(702, '1.24.01.013', 'Reboksing Arsip/Dokumen', 200000000, 8, NULL, '', '0000-00-00 00:00:00'),
(703, '1.24.01.013', 'Perawatan dan pemeliharaan sarana digitalisasi arsip', 100000000, 8, NULL, '', '0000-00-00 00:00:00'),
(704, '1.24.01.014', 'Microfilmisasi Arsip', 160000000, 8, NULL, '', '0000-00-00 00:00:00'),
(705, '1.24.01.015', 'Penyelenggaraan Penghimpunan dan Penggandaan produk perundang-undangan dan media cetak kearsipan', 300000000, 8, NULL, '', '0000-00-00 00:00:00'),
(706, '1.24.01.016', 'Pemeliharaan/Perawatan arsip konvensional dan media baru', 200000000, 8, NULL, '', '0000-00-00 00:00:00'),
(707, '1.24.01.017', 'Identifikasi Arsip Terjaga', 100000000, 8, NULL, '', '0000-00-00 00:00:00'),
(708, '1.24.01.018', 'Digitalisasi Arsip konvensional dan peta/gambar', 750000000, 8, NULL, '', '0000-00-00 00:00:00'),
(709, '1.24.01.019', 'Migrasi Data Kearsipan', 200000000, 8, NULL, '', '0000-00-00 00:00:00'),
(729, '1.26.06.001', 'Sercive, pengecetan / penggantian suku cadang kendaraan operasional dan khusus', 150000000, 9, NULL, '', '0000-00-00 00:00:00'),
(730, '1.26.06.002', 'Pengadaan / pembelian ban dan accu kendaraan opersioanal dan khusus', 750000000, 9, NULL, '', '0000-00-00 00:00:00'),
(731, '1.26.06.003', 'Penyediaan BBM Kendaraan Opersional dan Khusus', 250000000, 9, NULL, '', '0000-00-00 00:00:00'),
(732, '1.26.06.004', 'Perpanjangan STNK kendaraan operasional dan khusus', 20000000, 9, NULL, '', '0000-00-00 00:00:00'),
(733, '1.26.07.001', 'Pengendalian Disiplin dan Peningkatan Jasmani Pegawai', 150000000, 10, NULL, '', '0000-00-00 00:00:00'),
(734, '1.26.07.002', 'Pengelolaan Administrasi Kepegawaian', 100000000, 10, NULL, '', '0000-00-00 00:00:00'),
(735, '1.26.07.003', 'Pelaksanaan Pekerjaan Tambahan diluar jam kerja dan penyediaan transport kegiatan/rapat dinas diluar Kantor dalam Provinsi', 210000000, 10, NULL, '', '0000-00-00 00:00:00'),
(736, '1.26.10.001', 'Pengembangan Wawasan dan Kompetensi Pegawai', 573097420, 11, NULL, '', '0000-00-00 00:00:00'),
(737, '1.26.10.002', 'Bimbingan Rohani Pegawai', 300000000, 11, NULL, '', '0000-00-00 00:00:00'),
(738, '1.26.12.009', 'Penyusunan Laporan Akuntabilitas Kinerja Instansi Pemerintah / SKPD', 95000000, 12, NULL, '', '0000-00-00 00:00:00'),
(739, '1.26.12.010', 'Penyusunan RENJA SKPD', 200000000, 12, NULL, '', '0000-00-00 00:00:00'),
(740, '1.26.13.011', 'Supervisi, Monitoring, Evaluasi, Pelaporan (SMEP) Kinerja BPAD', 100000000, 13, NULL, '', '0000-00-00 00:00:00'),
(741, '1.26.15.006', 'Penyusunan laporan keuangan SKPD semester I', 50000000, 14, NULL, '', '0000-00-00 00:00:00'),
(742, '1.26.15.007', 'Penyusunan neraca BPAD Provinsi DKI Jakarta', 75000000, 14, NULL, '', '0000-00-00 00:00:00'),
(743, '1.26.15.008', 'Peningkatan akuntabilitas pertanggungjawaban keuangan SKPD', 100000000, 14, NULL, '', '0000-00-00 00:00:00'),
(744, '1.24.02.001', 'Pembangunan gedung depo arsip blok c pulomas', 45000000000, 15, NULL, '', '0000-00-00 00:00:00'),
(745, '1.24.02.005', 'Pembangunan Blok A Gedung BPAD Pulomas', 72600000000, 15, NULL, '', '0000-00-00 00:00:00'),
(746, '1.24.03.001', 'Pengadaan Lemari Arsip untuk Peta/Gambar, Koran', 2000000000, 16, NULL, '', '0000-00-00 00:00:00'),
(747, '1.24.03.002', 'Pengadaan lemari simpan arsip (roll opack) sistem elektrik', 5800000000, 16, NULL, '', '0000-00-00 00:00:00'),
(748, '1.24.03.003', 'Pemeliharaan / pengecetan / penggantian suku cadang lemari arsip peta / gambar', 100000000, 16, NULL, '', '0000-00-00 00:00:00'),
(749, '1.24.03.009', 'Pemeliharaan dan perawatan lemari arsip (roll opack)', 200000000, 16, NULL, '', '0000-00-00 00:00:00'),
(750, '1.24.03.010', 'Pemeliharaan dan perawatan rak arsip', 100000000, 16, NULL, '', '0000-00-00 00:00:00'),
(751, '1.24.04.001', 'Pendidikan dan pelatihan pengangkatan arsiparis tingkat ahli dan trampil', 1500000000, 17, NULL, '', '0000-00-00 00:00:00'),
(752, '1.24.04.002', 'Asistensi penataan arsip / dokumen', 200000000, 17, NULL, '', '0000-00-00 00:00:00'),
(753, '1.24.04.002', 'Penyusutan Arsip in aktif', 300000000, 17, NULL, '', '0000-00-00 00:00:00'),
(754, '1.24.04.003', 'Pencetakan Modul Kearsipan', 200000000, 17, NULL, '', '0000-00-00 00:00:00'),
(755, '1.24.04.004', 'Pengadaan Boks arsip peta/gambar', 100000000, 17, NULL, '', '0000-00-00 00:00:00'),
(756, '1.24.04.004', 'Pengadaan boks arsip', 900000000, 17, NULL, '', '0000-00-00 00:00:00'),
(757, '1.24.04.005', 'Pengadaan map arsip', 500000000, 17, NULL, '', '0000-00-00 00:00:00'),
(758, '1.24.04.006', 'Pengadaan Pakaian Kerja dan Kelengkapan Kerja', 100000000, 17, NULL, '', '0000-00-00 00:00:00'),
(759, '1.24.04.007', 'Pengadaan Mesin Penghisap debu ruang kearsipan', 150000000, 17, NULL, '', '0000-00-00 00:00:00'),
(760, '1.24.04.008', 'Pengadaan Gerobak Dorong Arsip', 120000000, 17, NULL, '', '0000-00-00 00:00:00'),
(761, '1.24.04.010', 'Pengadaan alat pengatur kelembaban udara (dehumidefier)', 3800000000, 17, NULL, '', '0000-00-00 00:00:00'),
(762, '1.24.04.011', 'Pemeliharaan dan perawatan lemari arsip peta/gambar', 50000000, 17, NULL, '', '0000-00-00 00:00:00'),
(763, '1.24.04.014', 'Supervisi, Monitoring, Evaluasi dan Pelaporan Pengelolaan Kearsipan SKPD', 200000000, 17, NULL, '', '0000-00-00 00:00:00'),
(764, '1.24.04.015', 'Monitoring dan Identifikasi Arsip Vital SKPD', 50000000, 17, NULL, '', '0000-00-00 00:00:00'),
(765, '1.24.04.016', 'Pemilihan Arsiparis Teladan Tingkat Daerah Tahun 2014', 100000000, 17, NULL, '', '0000-00-00 00:00:00'),
(766, '1.24.04.017', 'Rapat Koordinasi Kearsipan Daerah', 300000000, 17, NULL, '', '0000-00-00 00:00:00'),
(767, '1.24.04.018', 'Sosialisasi Kearsipan bagi kepala SKPD/UKPD', 100000000, 17, NULL, '', '0000-00-00 00:00:00'),
(768, '1.24.04.019', 'Peningkatan Tata Kelola Arsip melalui Bimbingan Teknis (5 Angkatan)', 1250000000, 17, NULL, '', '0000-00-00 00:00:00'),
(769, '1.24.04.020', 'Bimbingan Teknis Arsip Vital', 400000000, 17, NULL, '', '0000-00-00 00:00:00'),
(770, '1.24.04.021', 'Peningkatan Kompetensi Pengelola Arsip melalui Kompetisi Kearsipan', 300000000, 17, NULL, '', '0000-00-00 00:00:00'),
(771, '1.24.04.022', 'Workshop dan Seminar Kearsipan', 300000000, 17, NULL, '', '0000-00-00 00:00:00'),
(772, '1.24.04.025', 'Pengelolaan Data Center', 750000000, 17, NULL, '', '0000-00-00 00:00:00'),
(773, '1.24.04.026', 'Sosialisasi Sistem Informasi Kearsipan', 100000000, 17, NULL, '', '0000-00-00 00:00:00'),
(774, '1.24.04.027', 'Pemeliharaan Sarana Teknologi Informasi', 150000000, 17, NULL, '', '0000-00-00 00:00:00'),
(775, '1.24.04.028', 'Pengadaan Sarana Teknologi Informasi', 200000000, 17, NULL, '', '0000-00-00 00:00:00'),
(776, '1.24.04.029', 'Pengembangan Sistem Aplikasi Arsip Dinamis Perkantoran', 750000000, 17, NULL, '', '0000-00-00 00:00:00'),
(777, '1.24.04.030', 'Peningkatan tertib pengelolaan ketatausahaan dan kearsipan di BPAD dan KPAK', 150000000, 17, NULL, '', '0000-00-00 00:00:00'),
(778, '1.24.04.031', 'Pengelolaan dan penyusutan arsip dinamis aktif', 150000000, 17, NULL, '', '0000-00-00 00:00:00'),
(779, '1.26.01.001', 'Pengelolaan Website', 200000000, 18, NULL, '', '0000-00-00 00:00:00'),
(780, '1.26.01.002', 'Keikutsertaan Pameran', 300000000, 18, NULL, '', '0000-00-00 00:00:00'),
(781, '1.26.01.004', 'Promosi, Publikasi dan Sosialisasi', 5000000000, 18, NULL, '', '0000-00-00 00:00:00'),
(792, '1.26.01.005', 'Pengadaan Sarana dan Bahan Promosi', 750000000, 18, NULL, '', '0000-00-00 00:00:00'),
(793, '1.26.01.006', 'Pengadaan Sarana Beranda Edukasi Rekreasi Anak Sejahtera', 200000000, 18, NULL, '', '0000-00-00 00:00:00'),
(794, '1.26.01.007', 'Iklan Media Luar Ruang', 1000000000, 18, NULL, '', '0000-00-00 00:00:00'),
(795, '1.26.01.008', 'Iklan Layanan Masyarakat', 2000000000, 18, NULL, '', '0000-00-00 00:00:00'),
(796, '1.26.01.009', 'Hari Anak Jakarta Membaca (Hanjaba)', 1200000000, 18, NULL, '', '0000-00-00 00:00:00'),
(797, '1.26.01.010', 'Pemilihan Abang dan None Buku (Abnonku) Jakarta', 1000000000, 18, NULL, '', '0000-00-00 00:00:00'),
(798, '1.26.01.011', 'Wajib Kunjung ke Perpustakaan', 400000000, 18, NULL, '', '0000-00-00 00:00:00'),
(799, '1.26.01.012', 'Pembuatan Buletin Mantap', 300000000, 18, NULL, '', '0000-00-00 00:00:00'),
(800, '1.26.01.013', 'Operasionalisasi Dewan Perpustakaan', 300000000, 18, NULL, '', '0000-00-00 00:00:00'),
(801, '1.26.01.014', 'Pemberdayaan Abnonku', 250000000, 18, NULL, '', '0000-00-00 00:00:00'),
(802, '1.26.01.015', 'Optimalisasi dan pengembangan Kemitraan', 400000000, 18, NULL, '', '0000-00-00 00:00:00'),
(803, '1.26.01.016', 'Pengadaan Sarana dan Prasarana Pameran', 200000000, 18, NULL, '', '0000-00-00 00:00:00'),
(804, '1.26.01.017', 'Pembinaan Kemitraan Perpustakaan Sekolah', 180000000, 18, NULL, '', '0000-00-00 00:00:00'),
(805, '1.26.01.018', 'Pengembangan wawasan kepustakawanan dan CPTA', 75000000, 18, NULL, '', '0000-00-00 00:00:00'),
(806, '1.26.01.019', 'Pendidikan dan Pelatihan Penciptaan Calon Pustakawan Tingkat Ahli', 1500000000, 18, NULL, '', '0000-00-00 00:00:00'),
(807, '1.26.01.020', 'Workshop Taman Bacaan Masyarakat', 300000000, 18, NULL, '', '0000-00-00 00:00:00'),
(808, '1.26.01.021', 'Pembekalan Lomba Perpustakaan Tingkat Nasional', 180000000, 18, NULL, '', '0000-00-00 00:00:00'),
(809, '1.26.01.022', 'Penyelenggaraan Bimbingan Teknis Perpustakaan', 180000000, 18, NULL, '', '0000-00-00 00:00:00'),
(810, '1.26.01.023', 'Penyusunan Buku Panduan Perpustakaan Sekolah', 90000000, 18, NULL, '', '0000-00-00 00:00:00'),
(811, '1.26.01.024', 'Penyusunan Buku Pedoman Teknis Layanan Perpustakaan Umum', 120000000, 18, NULL, '', '0000-00-00 00:00:00'),
(812, '1.26.01.025', 'Penyusunan Buku Pedoman Operasional Taman Bacaan Masyarakat', 78000000, 18, NULL, '', '0000-00-00 00:00:00'),
(813, '1.26.01.026', 'Pengelolaan Perpustakaan Kelurahan dan Kecamatan', 720000000, 18, NULL, '', '0000-00-00 00:00:00'),
(814, '1.26.01.027', 'Rapat Koordinasi Perpustakaan Daerah', 250000000, 18, NULL, '', '0000-00-00 00:00:00'),
(815, '1.26.01.028', 'Pengembangan Sistem Komunikasi Digital', 500000000, 18, NULL, '', '0000-00-00 00:00:00'),
(816, '1.26.01.029', 'Pembangunan Jakartapedia', 1000000000, 18, NULL, '', '0000-00-00 00:00:00'),
(817, '1.26.01.030', 'Operasionalisasi Mobil Pameran', 200000000, 18, NULL, '', '0000-00-00 00:00:00'),
(818, '1.26.01.031', 'Pembelajaran online untuk masyarakat berbasis Perpustakaan (Public e-Learning)', 1000000000, 18, NULL, '', '0000-00-00 00:00:00'),
(819, '1.26.01.032', 'Peningkatan Kompetensi Pengelola Perpustakaan melalui Kompetisi', 650000000, 18, NULL, '', '0000-00-00 00:00:00'),
(820, '1.26.01.033', 'Identifikasi dan Inventarisasi Perpustakaan Khusus dan TBM', 350000000, 18, NULL, '', '0000-00-00 00:00:00'),
(821, '1.26.01.034', 'Seminar Perpustakaan', 250000000, 18, NULL, '', '0000-00-00 00:00:00'),
(822, '1.26.02.001', 'Pengadaan bahan perpustakaan siap layan', 5000000000, 19, NULL, '', '0000-00-00 00:00:00'),
(823, '1.26.02.002', 'Pengelolaan KCKR hasil pelaksanaan Perda No. 6 Tahun 2006', 115000000, 19, NULL, '', '0000-00-00 00:00:00'),
(824, '1.26.02.003', 'Pengadaan current issue', 200000000, 19, NULL, '', '0000-00-00 00:00:00'),
(825, '1.26.02.004', 'Penyediaan media informasi berkala', 100000000, 19, NULL, '', '0000-00-00 00:00:00'),
(826, '1.26.02.005', 'Penyusunan buku bibliografi daerah', 60000000, 19, NULL, '', '0000-00-00 00:00:00'),
(827, '1.26.02.006', 'Pengadaan e-Book', 2000000000, 19, NULL, '', '0000-00-00 00:00:00'),
(828, '1.26.02.008', 'Pengadaan sarana dan bahan pustaka permainan anak (edu games)', 200000000, 19, NULL, '', '0000-00-00 00:00:00'),
(829, '1.26.02.009', 'Pengolahan bahan perpustakaan', 250000000, 19, NULL, '', '0000-00-00 00:00:00'),
(830, '1.26.02.010', 'Verifikasi data bahan pustaka', 100000000, 19, NULL, '', '0000-00-00 00:00:00'),
(831, '1.26.02.011', 'Pengadaan supplies bahan perpustakaan', 500000000, 19, NULL, '', '0000-00-00 00:00:00'),
(832, '1.26.02.012', 'Pengadaan peralatan pengolahan bahan pustaka', 120000000, 19, NULL, '', '0000-00-00 00:00:00'),
(833, '1.26.02.013', 'Penyusunan katalog induk daerah', 200000000, 19, NULL, '', '0000-00-00 00:00:00'),
(834, '1.26.02.014', 'Pengadaan sarana dan prasarana layanan perpustakaan', 960766000, 19, NULL, '', '0000-00-00 00:00:00'),
(835, '1.26.02.015', 'Penataan dan Penghijauan Ruang Perpustakaan', 42150000, 19, NULL, '', '0000-00-00 00:00:00'),
(836, '1.26.02.016', 'Pembangunan Gedung perpustakaan bertaraf internasional 8 lantai', 88000000000, 19, NULL, '', '0000-00-00 00:00:00'),
(837, '1.26.02.017', 'Penyediaan Jasa Pemeliharaan Alat Pendingin (AC Central dan Split) Gedung Perpustakaan Umum Provinsi DKI Jakarta', 400000000, 19, NULL, '', '0000-00-00 00:00:00'),
(838, '1.26.02.018', 'Penyediaan Jasa Pemeliharaan Alat Pembangkit Listrik (Genset) Gedung Perpustakaan Umum Provinsi DKI Jakarta', 200000000, 19, NULL, '', '0000-00-00 00:00:00'),
(839, '1.26.02.019', 'Penyediaan Jasa Pemeliharaan Alat Angkutan (elevator) Gedung Perpustakaan Umum Provinsi DKI Jakarta', 150000000, 19, NULL, '', '0000-00-00 00:00:00'),
(840, '1.26.02.020', 'Pemeliharaan sarana dan prasarana layanan perpustakaan', 990114000, 19, NULL, '', '0000-00-00 00:00:00'),
(841, '1.26.02.021', 'Pengadaan RFID for Library', 12200000000, 19, NULL, '', '0000-00-00 00:00:00'),
(842, '1.26.02.022', 'Pengadaan Robotic Book Scanner', 1000000000, 19, NULL, '', '0000-00-00 00:00:00'),
(843, '1.26.02.023', 'Pemeliharaan RFID', 1000000000, 19, NULL, '', '0000-00-00 00:00:00'),
(844, '1.26.02.024', 'Penyusunan Regulasi Urusan Perpustakaan dan Kearsipan', 350000000, 19, NULL, '', '0000-00-00 00:00:00'),
(845, '1.26.02.025', 'Pengadaan Sistem Pemadam Kebakaran Terbarukan untuk Gedung Perpustakaan', 6000000000, 19, NULL, '', '0000-00-00 00:00:00'),
(846, '1.26.02.026', 'Rehab Total Gedung Kantor Eks Perpustakaan Umum Kota Adm Jak-Tim', 60000000000, 19, NULL, '', '0000-00-00 00:00:00'),
(847, '1.26.02.027', 'Pengembangan Aplikasi SMEP Perpustakaan dan Kearsipan', 150000000, 19, NULL, '', '0000-00-00 00:00:00'),
(848, '1.26.03.001', 'Perpanjangan Jam Layanan dan Penerimaan Kunjungan Mitra Perpustakaan', 900000000, 20, NULL, '', '0000-00-00 00:00:00'),
(849, '1.26.03.002', 'Layanan Pengembangan Komunitas Pemustaka dan Anggota', 502950000, 20, NULL, '', '0000-00-00 00:00:00'),
(850, '1.26.03.003', 'Penilaian Angka Kredit Jabatan Fungsional Pustakawan', 60000000, 20, NULL, '', '0000-00-00 00:00:00'),
(851, '1.26.03.004', 'Sosialisasi Sistem Informasi Perpustakaan', 100000000, 20, NULL, '', '0000-00-00 00:00:00'),
(852, '1.26.03.005', 'Workshop Pengembangan Cetakbiru Layanan (service Blueprint) untuk Inovasi Layanan', 200000000, 20, NULL, '', '0000-00-00 00:00:00'),
(853, '1.26.03.006', 'Pendidikan dan Pelatihan Perpustakaan bagi Pengelola Perpustakaan dan calon Kepala Perpustakaan Sekolah', 1050000000, 20, NULL, '', '0000-00-00 00:00:00'),
(854, '1.26.03.007', 'Pengembangan wawasan dan kapasitas pustakawan', 650000000, 20, NULL, '', '0000-00-00 00:00:00'),
(855, '1.26.03.007', 'Pengembangan koleksi perpustakaan melalui identifikasi bahan pustaka', 60000000, 20, NULL, '', '0000-00-00 00:00:00'),
(856, '1.26.03.008', 'Peningkatan Tata Kelola Perpustakaan melalui Bimbingan Teknis', 350000000, 20, NULL, '', '0000-00-00 00:00:00'),
(857, '1.26.03.009', 'Penyelenggaraan Training of Trainer perpustakaan', 250000000, 20, NULL, '', '0000-00-00 00:00:00'),
(858, '1.26.04.001', 'Pengadaan Komputer PC dan Notebook/laptop', 200000000, 5, NULL, '', '0000-00-00 00:00:00'),
(859, '1.26.04.002', 'Pengadaan Printer lazerjet 1320 (A3+A4)', 100000000, 5, NULL, '', '0000-00-00 00:00:00'),
(860, '1.26.04.003', 'Penyediaan Jasa Kebersihan Kantor (cleaning service) Gedung Perpustakaan Umum DKI Jakarta', 600000000, 5, NULL, '', '0000-00-00 00:00:00'),
(861, '1.24.01.001', 'Peliputan dan perekaman kegiatan pemda dan peristiwa fenomena yang terjadi di jakarta', 250000000, 6, NULL, '', '0000-00-00 00:00:00'),
(862, '1.24.01.002', 'Pengadaan Mesin Scanner dan server untuk digitalisasi', 200000000, 6, NULL, '', '0000-00-00 00:00:00'),
(863, '1.24.01.003', 'Wawancara terhadap para tokoh sejarah tentang perkembangan dan pembangunan kota jakarta', 300000000, 6, NULL, '', '0000-00-00 00:00:00');

--
-- Triggers `tr_kegiatan`
--
DROP TRIGGER IF EXISTS `tr_kegiatan_insert_trg`;
DELIMITER //
CREATE TRIGGER `tr_kegiatan_insert_trg` AFTER INSERT ON `tr_kegiatan`
 FOR EACH ROW insert into t_kegiatan(nama, ref_kegiatan) values(NEW.nama, NEW.id)
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tr_lokasi`
--

CREATE TABLE IF NOT EXISTS `tr_lokasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `insert_user` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `insert_datetime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kode` (`kode`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tr_lokasi`
--

INSERT INTO `tr_lokasi` (`id`, `kode`, `nama`, `insert_user`, `insert_datetime`) VALUES
(1, '00000', 'DKI JAKARTA', 'admin', '2013-12-26 15:01:29'),
(2, '00001', 'KOTAMADYA JAKARTA PUSAT', 'admin', '2013-12-26 15:01:53'),
(4, '00002', 'KOTAMADYA JAKARTA UTARA', 'admin', '2013-12-26 15:02:18'),
(5, '00003', 'KOTAMADYA JAKARTA SELATAN', 'admin', '2013-12-26 15:02:39'),
(6, '00004', 'KOTAMADYA JAKARTA BARAT', 'admin', '2013-12-26 15:03:01'),
(7, '00005', 'KOTAMADYA JAKARTA TIMUR', 'admin', '2013-12-26 15:03:20'),
(8, '00006', 'KABUPATEN KEPULAUAN SERIBU', 'admin', '2013-12-26 15:03:49');

-- --------------------------------------------------------

--
-- Table structure for table `tr_menu`
--

CREATE TABLE IF NOT EXISTS `tr_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_url` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `menu_name` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `icon_class` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `is_left_menu` tinyint(1) NOT NULL DEFAULT '0',
  `has_child` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=39 ;

--
-- Dumping data for table `tr_menu`
--

INSERT INTO `tr_menu` (`id`, `menu_url`, `menu_name`, `icon_class`, `position`, `is_left_menu`, `has_child`, `parent_id`) VALUES
(5, 'user/index/', 'User', 'icon-user', 500, 1, 0, 0),
(6, 'user/role/', 'Manajemen Akses', 'icon-user', 510, 1, 0, 0),
(7, 'user/add/', 'Manajemen User', NULL, 0, 0, 0, 0),
(8, 'kegiatan/add/', 'Manajemen Kegiatan', NULL, 0, 0, 0, 0),
(9, 'pekerjaan/detil/', 'Lihat Detil Pekerjaan dan Bobot', NULL, 0, 0, 0, 0),
(10, 'tableref/', 'Tabel Referensi', 'icon-cog', 450, 1, 1, 0),
(11, 'tableref/urusan/', 'Urusan', NULL, 1, 1, 0, 10),
(12, 'tableref/program/', 'Program', NULL, 200, 1, 0, 10),
(13, 'tableref/kegiatan/', 'Kegiatan', NULL, 300, 1, 0, 10),
(14, 'tableref/lokasi/', 'Lokasi', NULL, 4, 1, 0, 10),
(15, 'tableref/sifatkegiatan/', 'Sifat Kegiatan', NULL, 5, 1, 0, 10),
(16, 'tableref/rekening/', 'Rekening Anggaran', NULL, 6, 1, 0, 10),
(17, 'pekerjaan/index/', 'Pekerjaan', 'icon-briefcase', 110, 1, 0, 0),
(18, 'capaian/index/', 'Capaian', 'icon-flag', 135, 1, 0, 0),
(19, 'anggaran/index/', 'Anggaran', 'icon-calendar', 130, 1, 0, 0),
(20, 'kegiatan/index/', 'Kegiatan', 'icon-folder-open', 109, 1, 0, 0),
(21, 'pekerjaan/add/', 'Manajemen Pekerjaan dan Bobot', NULL, 0, 0, 0, 0),
(22, 'capaian/add/', 'Manajemen Capaian', NULL, 0, 0, 0, 0),
(23, 'anggaran/add/', 'Manajemen Anggaran', NULL, 0, 0, 0, 0),
(24, 'kegiatan/detil/', 'Lihat Detil Kegiatan', NULL, 0, 0, 0, 0),
(25, 'capaian/detil/', 'Lihat Detil Capaian', NULL, 0, 0, 0, 0),
(26, 'anggaran/detil/', 'Lihat Detil Anggaran', NULL, 0, 0, 0, 0),
(27, 'tableref/satker/', 'Satuan Kerja', NULL, 1000, 1, 0, 10),
(28, 'layanan/index/', 'Layanan', 'icon-laptop', 135, 1, 0, 0),
(29, 'layanan/add/', 'Manajemen Layanan', NULL, 0, 0, 0, 0),
(30, 'tableref/capaian/', 'Capaian', NULL, 205, 1, 0, 10),
(31, 'cetak/index/', 'Cetak', 'icon-print', 170, 1, 0, 0),
(32, 'grafik/index/', 'Grafik', 'icon-bar-chart', 180, 1, 0, 0),
(33, 'btl/index/', 'BTL', 'icon-calendar', 300, 1, 0, 0),
(34, 'btl/add/', 'Manajemen BTL', NULL, 0, 0, 0, 0),
(35, 'pekerjaan/lock/', 'Lock/Unlock Pekerjaan', NULL, 0, 0, 0, 0),
(36, 'anggaran/lock/', 'Lock/Unlock Anggaran', NULL, 0, 0, 0, 0),
(37, 'btl/lock/', 'Lock/Unlock Belanja Tidak Langsung', NULL, 0, 0, 0, 0),
(38, 'capaian/rpjmd/', 'Capaian RPJMD', 'icon-eye-open', 150, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tr_program`
--

CREATE TABLE IF NOT EXISTS `tr_program` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `ref_grup` int(11) NOT NULL,
  `tahun_anggaran` int(11) NOT NULL,
  `ref_urusan` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `insert_user` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `insert_datetime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kode` (`kode`,`tahun_anggaran`),
  KEY `ref_urusan` (`ref_urusan`),
  KEY `ref_grup` (`ref_grup`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `tr_program`
--

INSERT INTO `tr_program` (`id`, `kode`, `nama`, `ref_grup`, `tahun_anggaran`, `ref_urusan`, `insert_user`, `insert_datetime`) VALUES
(5, '1.26.04', 'Program Peningkatan dan Pengelolaan Kantor', 1, 2013, '1.26B', 'admin', '2013-12-26 15:33:42'),
(6, '1.24.01', 'Program Penyelamatan dan Pelestarian Dokumen/Arsip Daerah', 1, 2013, '1.24', 'admin', '2013-12-26 15:34:52'),
(7, '1.26.04', 'Program Peningkatan dan Pengelolaan Kantor', 1, 2014, '1.26B', 'admin', '2013-12-26 15:33:42'),
(8, '1.24.01', 'Program Penyelamatan dan Pelestarian Dokumen/Arsip Daerah', 1, 2014, '1.24', 'admin', '2013-12-26 15:34:52'),
(9, '1.26.06', 'Program Pengelolaan Kendaraan Dinas', 1, 2014, '1.26B', 'admin', '2013-12-26 15:36:35'),
(10, '1.26.07', 'Program Peningkatan Disiplin dan Kinerja Aparatur', 1, 2014, '1.26B', 'admin', '2013-12-26 15:37:11'),
(11, '1.26.10', 'Program Peningkatan Kapasitas Sumber Daya Aparatur', 1, 2014, '1.26B', 'admin', '2013-12-26 15:41:37'),
(12, '1.26.12', 'Program Perencanaan Pembangunan Daerah', 1, 2014, '1.26B', 'admin', '2013-12-26 15:39:02'),
(13, '1.26.13', 'Program Pengembangan Data/Informasi SKPD', 1, 2014, '1.26B', 'admin', '2013-12-26 15:39:37'),
(14, '1.26.15', 'Program Peningkatan dan Pengembangan Pengelolaan Keuangan SKPD', 1, 2014, '1.26B', 'admin', '2013-12-26 15:40:07'),
(15, '1.24.02', 'Program Peningkatan Sarana dan Prasarana Kearsipan', 1, 2014, '1.24', 'admin', '2013-12-26 15:42:42'),
(16, '1.24.03', 'Program Pengembangan Kapasitas Penyimpanan Arsip Daerah', 1, 2014, '1.24', 'admin', '2013-12-26 15:43:13'),
(17, '1.24.04', 'Program Peningkatan Pelayanan Arsip', 1, 2014, '1.24', 'admin', '2013-12-26 15:44:07'),
(18, '1.26.01', 'Program Pengembangan Budaya Baca', 1, 2014, '1.26', 'admin', '2013-12-26 15:46:44'),
(19, '1.26.02', 'Program Peningkatan Sarana dan Prasarana Perpustakaan', 1, 2014, '1.26', 'admin', '2013-12-26 15:47:21'),
(20, '1.26.03', 'Program Peningkatan Pelayanan Perpustakaan', 1, 2014, '1.26', 'admin', '2013-12-26 15:55:49');

-- --------------------------------------------------------

--
-- Table structure for table `tr_program_grup`
--

CREATE TABLE IF NOT EXISTS `tr_program_grup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tr_program_grup`
--

INSERT INTO `tr_program_grup` (`id`, `nama`) VALUES
(1, 'default group');

-- --------------------------------------------------------

--
-- Table structure for table `tr_rekening`
--

CREATE TABLE IF NOT EXISTS `tr_rekening` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `insert_user` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `insert_datetime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kode` (`kode`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1467 ;

--
-- Dumping data for table `tr_rekening`
--

INSERT INTO `tr_rekening` (`id`, `kode`, `nama`, `insert_user`, `insert_datetime`) VALUES
(16, '5', 'BELANJA DAERAH                          ', '', '0000-00-00 00:00:00'),
(17, '5.1', 'BELANJA TIDAK LANGSUNG                         ', '', '0000-00-00 00:00:00'),
(18, '5.1.1', 'BELANJA PEGAWAI                          ', '', '0000-00-00 00:00:00'),
(19, '5.1.1.01', 'Gaji dan Tunjangan                         ', '', '0000-00-00 00:00:00'),
(20, '5.1.1.01.01', 'Gaji dan Tunjangan Pimpinan dan Anggota DPRD                     ', '', '0000-00-00 00:00:00'),
(21, '5.1.1.01.01.001', 'Uang Representasi                          ', '', '0000-00-00 00:00:00'),
(22, '5.1.1.01.01.002', 'Tunjangan Keluarga                          ', '', '0000-00-00 00:00:00'),
(23, '5.1.1.01.01.003', 'Tunjangan Jabatan                          ', '', '0000-00-00 00:00:00'),
(24, '5.1.1.01.01.004', 'Tunjangan Beras                          ', '', '0000-00-00 00:00:00'),
(25, '5.1.1.01.01.005', 'Tunjangan PPh / Tunjangan Khusus                       ', '', '0000-00-00 00:00:00'),
(26, '5.1.1.01.01.006', 'Iuran Asuransi Kesehatan                         ', '', '0000-00-00 00:00:00'),
(27, '5.1.1.01.01.007', 'Uang Paket                          ', '', '0000-00-00 00:00:00'),
(28, '5.1.1.01.01.008', 'Tunjangan Panitia Musyawarah                         ', '', '0000-00-00 00:00:00'),
(29, '5.1.1.01.01.009', 'Tunjangan Komisi                          ', '', '0000-00-00 00:00:00'),
(30, '5.1.1.01.01.010', 'Tunjangan Panitia Anggaran                         ', '', '0000-00-00 00:00:00'),
(31, '5.1.1.01.01.011', 'Tunjangan Badan Kehormatan                         ', '', '0000-00-00 00:00:00'),
(32, '5.1.1.01.01.012', 'Tunjangan Alat Kelengkapan Lainnya                        ', '', '0000-00-00 00:00:00'),
(33, '5.1.1.01.01.013', 'Tunjangan Perumahan                          ', '', '0000-00-00 00:00:00'),
(34, '5.1.1.01.01.014', 'Uang Duka Wafat / Tewas                       ', '', '0000-00-00 00:00:00'),
(35, '5.1.1.01.01.015', 'Uang Jasa Pengabdian                         ', '', '0000-00-00 00:00:00'),
(36, '5.1.1.01.01.016', 'Belanja Penunjang Operasional Pimpinan DPRD                       ', '', '0000-00-00 00:00:00'),
(37, '5.1.1.01.01.017', 'Tunjangan Badan Musyawarah                         ', '', '0000-00-00 00:00:00'),
(38, '5.1.1.01.01.018', 'Tunjangan Badan Legislasi Daerah                        ', '', '0000-00-00 00:00:00'),
(39, '5.1.1.01.01.019', 'Tunjangan Badan Anggaran                         ', '', '0000-00-00 00:00:00'),
(40, '5.1.1.01.01.020', 'Tunjangan Kesehatan DPRD                         ', '', '0000-00-00 00:00:00'),
(41, '5.1.1.01.02', 'Gaji dan Tunjangan Kepala Daerah dan Wakil Kepala Daerah                   ', '', '0000-00-00 00:00:00'),
(42, '5.1.1.01.02.001', 'Gaji Pokok                          ', '', '0000-00-00 00:00:00'),
(43, '5.1.1.01.02.002', 'Tunjangan Keluarga                          ', '', '0000-00-00 00:00:00'),
(44, '5.1.1.01.02.003', 'Tunjangan Jabatan                          ', '', '0000-00-00 00:00:00'),
(45, '5.1.1.01.02.004', 'Tunjangan Kesehatan                          ', '', '0000-00-00 00:00:00'),
(46, '5.1.1.01.02.005', 'Tunjangan Khusus (PPh)                         ', '', '0000-00-00 00:00:00'),
(47, '5.1.1.01.02.006', 'Tunjangan Beras                          ', '', '0000-00-00 00:00:00'),
(48, '5.1.1.01.02.007', 'Uang Duka Wafat / Tewas                       ', '', '0000-00-00 00:00:00'),
(49, '5.1.1.01.02.008', 'Pembulatan Gaji                          ', '', '0000-00-00 00:00:00'),
(50, '5.1.1.01.02.009', 'Iuran Asuransi Kesehatan                         ', '', '0000-00-00 00:00:00'),
(51, '5.1.1.01.03', 'Gaji dan Tunjangan Pegawai Negeri Sipil                      ', '', '0000-00-00 00:00:00'),
(52, '5.1.1.01.03.001', 'Gaji Pokok                          ', '', '0000-00-00 00:00:00'),
(53, '5.1.1.01.03.002', 'Tunjangan Keluarga                          ', '', '0000-00-00 00:00:00'),
(54, '5.1.1.01.03.003', 'Tunjangan Jabatan                          ', '', '0000-00-00 00:00:00'),
(55, '5.1.1.01.03.004', 'Tunjangan Non Struktural                         ', '', '0000-00-00 00:00:00'),
(56, '5.1.1.01.03.005', 'Tunjangan Fungsional                          ', '', '0000-00-00 00:00:00'),
(57, '5.1.1.01.03.006', 'Tunjangan Umum                          ', '', '0000-00-00 00:00:00'),
(58, '5.1.1.01.03.007', 'Tunjangan Perbaikan Penghasilan/Insentif Khusus                        ', '', '0000-00-00 00:00:00'),
(59, '5.1.1.01.03.008', 'Tunjangan Khusus (PPh)/Tunjangan PPh                        ', '', '0000-00-00 00:00:00'),
(60, '5.1.1.01.03.009', 'Tunjangan Beras                          ', '', '0000-00-00 00:00:00'),
(61, '5.1.1.01.03.010', 'Pembulatan Gaji                          ', '', '0000-00-00 00:00:00'),
(62, '5.1.1.01.03.011', 'Iuran Asuransi Kesehatan                         ', '', '0000-00-00 00:00:00'),
(63, '5.1.1.01.03.012', 'Uang Duka Wafat / Tewas                       ', '', '0000-00-00 00:00:00'),
(64, '5.1.1.01.03.013', 'Tunjangan Fungsional Umum                         ', '', '0000-00-00 00:00:00'),
(65, '5.1.1.01.03.014', 'Tunjangan Kinerja                          ', '', '0000-00-00 00:00:00'),
(66, '5.1.1.01.03.015', 'Tunjangan PPh Tunjangan Kinerja                        ', '', '0000-00-00 00:00:00'),
(67, '5.1.1.02', 'Tambahan Penghasilan PNS                         ', '', '0000-00-00 00:00:00'),
(68, '5.1.1.02.01', 'Tambahan Penghasilan Berdasarkan Beban Kerja                       ', '', '0000-00-00 00:00:00'),
(69, '5.1.1.02.01.001', 'Tunjangan Kesejahteraan Pegawai                         ', '', '0000-00-00 00:00:00'),
(70, '5.1.1.02.01.002', 'Tunjangan Transport Pejabat / Pegawai                       ', '', '0000-00-00 00:00:00'),
(71, '5.1.1.02.01.003', 'Tunjangan Peningkatan Mutu Beras                        ', '', '0000-00-00 00:00:00'),
(72, '5.1.1.02.01.004', 'Tunjangan Penghasilan Khusus / Deklarasi dan Lain-Lain                     ', '', '0000-00-00 00:00:00'),
(73, '5.1.1.02.01.005', 'Tunjangan Peningkatan Penghasilan                         ', '', '0000-00-00 00:00:00'),
(74, '5.1.1.02.02', 'Tambahan Penghasilan Berdasarkan Tempat Bertugas                       ', '', '0000-00-00 00:00:00'),
(75, '5.1.1.02.02.001', 'Tunjangan Khusus Pegawai / Pejabat                       ', '', '0000-00-00 00:00:00'),
(76, '5.1.1.02.02.002', 'Tunjangan Protokol                          ', '', '0000-00-00 00:00:00'),
(77, '5.1.1.02.02.003', 'Tunjangan Teleponis                          ', '', '0000-00-00 00:00:00'),
(78, '5.1.1.02.02.004', 'Tunjangan Kelancaran Kegiatan Perencanaan                        ', '', '0000-00-00 00:00:00'),
(79, '5.1.1.02.02.005', 'Tunjangan Pengawasan                          ', '', '0000-00-00 00:00:00'),
(80, '5.1.1.02.02.006', 'Tunjangan Resiko / Pengelola Keuangan                       ', '', '0000-00-00 00:00:00'),
(81, '5.1.1.02.02.007', 'Tunjangan Khusus Kecamatan                         ', '', '0000-00-00 00:00:00'),
(82, '5.1.1.02.02.008', 'Tunjangan Khusus Kelurahan                         ', '', '0000-00-00 00:00:00'),
(83, '5.1.1.02.03', 'Tambahan Penghasilan Berdasarkan Kondisi Kerja                       ', '', '0000-00-00 00:00:00'),
(84, '5.1.1.02.03.001', 'Tunjangan Pegawai Kepulauan Seribu                        ', '', '0000-00-00 00:00:00'),
(85, '5.1.1.02.03.002', 'Tunjangan Cuti Kepulauan Seribu                        ', '', '0000-00-00 00:00:00'),
(86, '5.1.1.02.03.003', 'Tunjangan Kematian                          ', '', '0000-00-00 00:00:00'),
(87, '5.1.1.02.03.004', 'Tunjangan Cuti Bersama                         ', '', '0000-00-00 00:00:00'),
(88, '5.1.1.02.03.005', 'Tunjangan Pemadam Kebakaran                         ', '', '0000-00-00 00:00:00'),
(89, '5.1.1.02.03.006', 'Tunjangan Beras Pemadam Kebakaran                        ', '', '0000-00-00 00:00:00'),
(90, '5.1.1.02.03.007', 'Tunjangan Khusus Dinas Tramtib dan Linmas                      ', '', '0000-00-00 00:00:00'),
(91, '5.1.1.02.04', 'Tambahan Penghasilan Berdasarkan Kelangkaan Profesi                       ', '', '0000-00-00 00:00:00'),
(92, '5.1.1.02.04.001', 'Tunjangan Khusus Tertentu                         ', '', '0000-00-00 00:00:00'),
(93, '5.1.1.02.04.002', 'Tunjangan Radiasi                          ', '', '0000-00-00 00:00:00'),
(94, '5.1.1.02.04.003', 'Tunjangan Pustakawan                          ', '', '0000-00-00 00:00:00'),
(95, '5.1.1.02.05', 'Tambahan Penghasilan Berdasarkan Prestasi Kerja                       ', '', '0000-00-00 00:00:00'),
(96, '5.1.1.02.05.001', 'Tunjangan Penghargaan Pegawai                         ', '', '0000-00-00 00:00:00'),
(97, '5.1.1.02.05.002', 'Tunjangan Kinerja Daerah                         ', '', '0000-00-00 00:00:00'),
(98, '5.1.1.03', 'Belanja Penerimaan Lainnya Pimpinan dan Anggota DPRD serta KDH / WKDH                 ', '', '0000-00-00 00:00:00'),
(99, '5.1.1.03.01', 'Tunjangan Komunikasi Intensif Pimpinan dan Anggota DPRD DPRD Dan Gub / Wagub                ', '', '0000-00-00 00:00:00'),
(100, '5.1.1.03.02', 'Belanja  Penunjang Operasional KDH / WKDH                     ', '', '0000-00-00 00:00:00'),
(101, '5.1.1.04', 'Belanja Insentif Pemungutan Pajak Daerah                       ', '', '0000-00-00 00:00:00'),
(102, '5.1.1.04.01', 'Biaya Pemungutan PBB                         ', '', '0000-00-00 00:00:00'),
(103, '5.1.1.04.02', 'Biaya Pemungutan Pajak Daerah                        ', '', '0000-00-00 00:00:00'),
(104, '5.1.1.04.03', 'Belanja Pajak Daerah                         ', '', '0000-00-00 00:00:00'),
(105, '5.1.1.05', 'Biaya Kematian Pegawai                         ', '', '0000-00-00 00:00:00'),
(106, '5.1.1.05.01', 'Biaya Kematian Pegawai Negeri Sipil Daerah                      ', '', '0000-00-00 00:00:00'),
(107, '5.1.1.06', 'Biaya Cuti Bersama Pegawai                        ', '', '0000-00-00 00:00:00'),
(108, '5.1.1.06.01', 'Biaya Cuti Bersama Pegawai Negeri Sipil Daerah                     ', '', '0000-00-00 00:00:00'),
(109, '5.1.1.07', 'Biaya Guru NIP 15                        ', '', '0000-00-00 00:00:00'),
(110, '5.1.1.07.01', 'Biaya Guru NIP 15                        ', '', '0000-00-00 00:00:00'),
(111, '5.1.1.08', 'Belanja Penghasilan Lainnya                         ', '', '0000-00-00 00:00:00'),
(112, '5.1.1.08.01', 'Tambahan Penghasilan Guru PNSD Profesi Non Sertifikasi                     ', '', '0000-00-00 00:00:00'),
(113, '5.1.1.08.02', 'Tambahan Penghasilan Guru PNSD Profesi Sertifikasi                      ', '', '0000-00-00 00:00:00'),
(114, '5.1.1.09', 'Belanja Insentif Pemungutan Retribusi Daerah                       ', '', '0000-00-00 00:00:00'),
(115, '5.1.1.09.01', 'Belanja Retribusi Daerah                         ', '', '0000-00-00 00:00:00'),
(116, '5.1.2', 'BELANJA BUNGA                          ', '', '0000-00-00 00:00:00'),
(117, '5.1.2.01', 'Bunga Utang Pinjaman                         ', '', '0000-00-00 00:00:00'),
(118, '5.1.2.01.01', 'Bunga Utang Pinjaman Kepada Pemerintah                       ', '', '0000-00-00 00:00:00'),
(119, '5.1.2.01.02', 'Bunga Utang Pinjaman Kepada Pemerintah Daerah Lainnya                     ', '', '0000-00-00 00:00:00'),
(120, '5.1.2.01.03', 'Bunga Utang Pinjaman Kepada Lembaga Keuangan Bank                     ', '', '0000-00-00 00:00:00'),
(121, '5.1.2.01.04', 'Bunga Utang Pinjaman Kepada Lembaga Keuangan Bukan Bank                    ', '', '0000-00-00 00:00:00'),
(122, '5.1.2.02', 'Bunga Utang Obligasi                         ', '', '0000-00-00 00:00:00'),
(123, '5.1.2.02.01', 'Bunga Utang Obligasi                         ', '', '0000-00-00 00:00:00'),
(124, '5.1.3', 'BELANJA SUBSIDI                          ', '', '0000-00-00 00:00:00'),
(125, '5.1.3.01', 'Belanja Subsidi Kepada Perusahaan / Lembaga                      ', '', '0000-00-00 00:00:00'),
(126, '5.1.3.01.01', 'Belanja Subsidi Kepada Perusahaan                        ', '', '0000-00-00 00:00:00'),
(127, '5.1.3.01.02', 'Belanja Subsidi Kepada Lembaga                        ', '', '0000-00-00 00:00:00'),
(128, '5.1.3.01.03', 'Belanja Subsidi Kepada Badan Layanan Umum                      ', '', '0000-00-00 00:00:00'),
(129, '5.1.3.01.04', 'Belanja Subsidi Kepada BUMD                        ', '', '0000-00-00 00:00:00'),
(130, '5.1.4', 'BELANJA HIBAH                          ', '', '0000-00-00 00:00:00'),
(131, '5.1.4.01', 'Belanja Hibah Kepada Pemerintah Pusat                       ', '', '0000-00-00 00:00:00'),
(132, '5.1.4.01.01', 'Belanja Hibah Kepada Pemerintah Pusat                       ', '', '0000-00-00 00:00:00'),
(133, '5.1.4.02', 'Belanja Hibah Kepada Pemerintah Daerah Lainnya                      ', '', '0000-00-00 00:00:00'),
(134, '5.1.4.02.01', 'Belanja Hibah Kepada Pemerintah Provinsi                       ', '', '0000-00-00 00:00:00'),
(135, '5.1.4.02.02', 'Belanja Hibah Kepada Pemerintah Kabupaten / Kota                     ', '', '0000-00-00 00:00:00'),
(136, '5.1.4.03', 'Belanja Hibah Kepada Pemerintah Desa                       ', '', '0000-00-00 00:00:00'),
(137, '5.1.4.03.01', 'Belanja Hibah Kepada Pemerintahan Desa                       ', '', '0000-00-00 00:00:00'),
(138, '5.1.4.04', 'Belanja Hibah Kepada Perusahaan Daerah / BUMD / BUMN                   ', '', '0000-00-00 00:00:00'),
(139, '5.1.4.04.01', 'Belanja Hibah Kepada Perusahaan Daerah / BUMD / BUMN                   ', '', '0000-00-00 00:00:00'),
(140, '5.1.4.05', 'Belanja Hibah Kepada Badan / Lembaga / Organisasi Swasta                   ', '', '0000-00-00 00:00:00'),
(141, '5.1.4.05.01', 'Belanja Hibah Kepada Badan / Lembaga / Organisasi Swasta                   ', '', '0000-00-00 00:00:00'),
(142, '5.1.4.05.02', 'Belanja Hibah Kepada Badan Layanan Umum                      ', '', '0000-00-00 00:00:00'),
(143, '5.1.4.06', 'Belanja Hibah Kepada Kelompok / Anggota Masyarakat                     ', '', '0000-00-00 00:00:00'),
(144, '5.1.4.06.01', 'Belanja Hibah Kepada Kelompok / Anggota Masyarakat                     ', '', '0000-00-00 00:00:00'),
(145, '5.1.4.07', 'Belanja Hibah Dana BOS                        ', '', '0000-00-00 00:00:00'),
(146, '5.1.4.07.01', 'Belanja Hibah Dana BOS ke SD Swasta                     ', '', '0000-00-00 00:00:00'),
(147, '5.1.4.07.02', 'Belanja Hibah Dana BOS ke SMP Swasta                     ', '', '0000-00-00 00:00:00'),
(148, '5.1.5', 'BELANJA BANTUAN SOSIAL                         ', '', '0000-00-00 00:00:00'),
(149, '5.1.5.01', 'Belanja Bantuan Sosial Kepada Organisasi Sosial Kemasyarakatan                     ', '', '0000-00-00 00:00:00'),
(150, '5.1.5.01.01', 'Belanja Bantuan Sosial Kepada Organisasi Sosial Kemasyarakatan                     ', '', '0000-00-00 00:00:00'),
(151, '5.1.5.01.02', 'Belanja Bantuan Sosial Kepada Organisasi Sosial Keagamaan                     ', '', '0000-00-00 00:00:00'),
(152, '5.1.5.02', 'Belanja Bantuan Sosial Kepada Kelompok Masyarakat                      ', '', '0000-00-00 00:00:00'),
(153, '5.1.5.02.01', 'Belanja Bantuan Sosial Kepada Kelompok Masyarakat                      ', '', '0000-00-00 00:00:00'),
(154, '5.1.5.03', 'Belanja Bantuan Sosial Kepada Anggota Masyarakat                      ', '', '0000-00-00 00:00:00'),
(155, '5.1.5.03.01', 'Belanja Bantuan Sosial Kepada ...                       ', '', '0000-00-00 00:00:00'),
(156, '5.1.5.04', 'Belanja Bantuan Kepada Partai Politik                       ', '', '0000-00-00 00:00:00'),
(157, '5.1.5.04.01', 'Belanja Bantuan Kepada Partai Politik ...                      ', '', '0000-00-00 00:00:00'),
(158, '5.1.5.04.02', 'Belanja Bantuan Kepada Dewan Pimpinan Daerah (DPD)                     ', '', '0000-00-00 00:00:00'),
(159, '5.1.6', 'BELANJA BAGI HASIL KEPADA PROVINSI / KABUPATEN / KOTA DAN PEMERINTAHAN DESA                ', '', '0000-00-00 00:00:00'),
(160, '5.1.6.01', 'Belanja Bagi Hasil Pajak Daerah Kepada Provinsi                     ', '', '0000-00-00 00:00:00'),
(161, '5.1.6.01.01', 'Belanja Bagi Hasil Pajak Daerah Kepada Provinsi                     ', '', '0000-00-00 00:00:00'),
(162, '5.1.6.02', 'Belanja Bagi Hasil Pajak Daerah Kepada Kabupaten / Kota                   ', '', '0000-00-00 00:00:00'),
(163, '5.1.6.02.01', 'Belanja Bagi Hasil Pajak Daerah Kepada Kabupaten / Kota ¿.                  ', '', '0000-00-00 00:00:00'),
(164, '5.1.6.03', 'Belanja Bagi Hasil Pajak Daerah Kepada Pemerintahan Desa                    ', '', '0000-00-00 00:00:00'),
(165, '5.1.6.03.01', 'Belanja Bagi Hasil Pajak Daerah Kepada Pemerintahan Desa ¿.                   ', '', '0000-00-00 00:00:00'),
(166, '5.1.6.04', 'Belanja Bagi Hasil Retribusi Daerah Kepada Kabupaten / Kota                   ', '', '0000-00-00 00:00:00'),
(167, '5.1.6.04.01', 'Belanja Bagi Hasil Retribusi Daerah Kepada Kabupaten / Kota ¿.                  ', '', '0000-00-00 00:00:00'),
(168, '5.1.6.05', 'Belanja Bagi Hasil Retribusi Daerah Kepada Pemerintahan Desa                    ', '', '0000-00-00 00:00:00'),
(169, '5.1.6.05.01', 'Belanja Bagi Hasil Retribusi Daerah Kepada Pemerintahan Desa ¿.                   ', '', '0000-00-00 00:00:00'),
(170, '5.1.7', 'BELANJA BANTUAN KEUANGAN KEPADA PROVINSI / KABUPATEN / KOTA DAN PEMERINTAHAN DESA                ', '', '0000-00-00 00:00:00'),
(171, '5.1.7.01', 'Belanja Bantuan Keuangan Kepada Provinsi                       ', '', '0000-00-00 00:00:00'),
(172, '5.1.7.01.01', 'Belanja Bantuan Keuangan Kepada Provinsi                       ', '', '0000-00-00 00:00:00'),
(173, '5.1.7.01.02', 'Belanja Bantuan Keuangan Kepada Partai Politik                      ', '', '0000-00-00 00:00:00'),
(174, '5.1.7.02', 'Belanja Bantuan Keuangan Kepada Kabupaten / Kota                     ', '', '0000-00-00 00:00:00'),
(175, '5.1.7.02.01', 'Belanja Bantuan Keuangan Kepada Kabupaten / Kota                     ', '', '0000-00-00 00:00:00'),
(176, '5.1.7.03', 'Belanja Bantuan Keuangan Kepada Desa                       ', '', '0000-00-00 00:00:00'),
(177, '5.1.7.03.01', 'Belanja Bantuan Keuangan Kepada Desa                       ', '', '0000-00-00 00:00:00'),
(178, '5.1.7.04', 'Belanja Bantuan Keuangan Kepada Pemerintah Daerah / Pemerintahan Desa Lainnya                  ', '', '0000-00-00 00:00:00'),
(179, '5.1.7.04.01', 'Belanja Bantuan Keuangan Kepada Provinsi                       ', '', '0000-00-00 00:00:00'),
(180, '5.1.7.04.02', 'Belanja Bantuan Keuangan Kepada Kabupaten / Kota                     ', '', '0000-00-00 00:00:00'),
(181, '5.1.7.04.03', 'Belanja Bantuan Keuangan Kepada Pemerintahan Desa ...                     ', '', '0000-00-00 00:00:00'),
(182, '5.1.7.05', 'Belanja Bantuan Keuangan Kepada Partai Politik                      ', '', '0000-00-00 00:00:00'),
(183, '5.1.7.05.01', 'Belanja Bantuan Keuangan Kepada Partai Politik                      ', '', '0000-00-00 00:00:00'),
(184, '5.1.8', 'BELANJA TIDAK TERDUGA                         ', '', '0000-00-00 00:00:00'),
(185, '5.1.8.01', 'Belanja Tidak Terduga                         ', '', '0000-00-00 00:00:00'),
(186, '5.1.8.01.01', 'Belanja Tidak Terduga                         ', '', '0000-00-00 00:00:00'),
(187, '5.2', 'BELANJA LANGSUNG                          ', '', '0000-00-00 00:00:00'),
(188, '5.2.1', 'BELANJA PEGAWAI                          ', '', '0000-00-00 00:00:00'),
(189, '5.2.1.01', 'Honorarium PNS                          ', '', '0000-00-00 00:00:00'),
(190, '5.2.1.01.01', 'Honorarium Panitia Pelaksana Kegiatan                        ', '', '0000-00-00 00:00:00'),
(191, '5.2.1.01.02', 'Honorarium Tim Pengadaan Barang dan Jasa                      ', '', '0000-00-00 00:00:00'),
(192, '5.2.1.01.03', 'Honorarium Pejabat/Penerima Hasil Pekerjaan                        ', '', '0000-00-00 00:00:00'),
(193, '5.2.1.01.04', 'Honorarium Seminar/Sosialisasi/Bimbingan Teknis                         ', '', '0000-00-00 00:00:00'),
(194, '5.2.1.02', 'Honorarium Non PNS                         ', '', '0000-00-00 00:00:00'),
(195, '5.2.1.02.01', 'Honorarium Tenaga Ahli / Instruktur / Nara Sumber                    ', '', '0000-00-00 00:00:00'),
(196, '5.2.1.02.02', 'Honorarium Pegawai Honorer / Tidak Tetap                      ', '', '0000-00-00 00:00:00'),
(197, '5.2.1.03', 'Uang Lembur                          ', '', '0000-00-00 00:00:00'),
(198, '5.2.1.03.01', 'Uang Lembur PNS                         ', '', '0000-00-00 00:00:00'),
(199, '5.2.1.03.02', 'Uang Lembur Non PNS                        ', '', '0000-00-00 00:00:00'),
(200, '5.2.1.03.03', 'Uang Makan Lembur                         ', '', '0000-00-00 00:00:00'),
(201, '5.2.1.04', 'Biaya Pegawai BOS /Honorarium Pengelolaan Dana BOS                     ', '', '0000-00-00 00:00:00'),
(202, '5.2.1.04.01', 'Honorarium Operasional Pengelolaan Dana BOS                       ', '', '0000-00-00 00:00:00'),
(203, '5.2.1.05', 'Uang Untuk diberikan kepada Pihak Ketiga/Masyarakat                      ', '', '0000-00-00 00:00:00'),
(204, '5.2.1.05.01', 'Uang Untuk diberikan kepada Pihak Ketiga                      ', '', '0000-00-00 00:00:00'),
(205, '5.2.1.05.02', 'Uang Untuk diberikan kepada Pihak Masyarakat                      ', '', '0000-00-00 00:00:00'),
(206, '5.2.1.06', 'Uang Perjalanan Kegiatan dalam Kota                       ', '', '0000-00-00 00:00:00'),
(207, '5.2.1.06.01', 'Uang Perjalanan Kegiatan dalam Kota                       ', '', '0000-00-00 00:00:00'),
(208, '5.2.2', 'BELANJA BARANG DAN JASA                        ', '', '0000-00-00 00:00:00'),
(209, '5.2.2.01', 'Belanja Bahan Pakai Habis                        ', '', '0000-00-00 00:00:00'),
(210, '5.2.2.01.01', 'Belanja Alat Tulis Kantor                        ', '', '0000-00-00 00:00:00'),
(211, '5.2.2.01.02', 'Belanja Dokumen / Administrasi Tender                       ', '', '0000-00-00 00:00:00'),
(212, '5.2.2.01.03', 'Belanja Alat Listrik dan Elektronik (Lampu Pijar, Battery Kering)                   ', '', '0000-00-00 00:00:00'),
(213, '5.2.2.01.04', 'Belanja Perangko, Materai dan Benda Pos Lainnya                     ', '', '0000-00-00 00:00:00'),
(214, '5.2.2.01.05', 'Belanja Alat Kebersihan dan Bahan Pembersih                      ', '', '0000-00-00 00:00:00'),
(215, '5.2.2.01.06', 'Belanja Bahan Bakar Minyak / Gas                      ', '', '0000-00-00 00:00:00'),
(216, '5.2.2.01.07', 'Belanja Pengisian Tabung Pemadam Kebakaran                       ', '', '0000-00-00 00:00:00'),
(217, '5.2.2.01.08', 'Belanja Pengisian Tabung Gas                        ', '', '0000-00-00 00:00:00'),
(218, '5.2.2.01.09', 'Belanja Barang Pakai Habis                        ', '', '0000-00-00 00:00:00'),
(219, '5.2.2.01.10', 'Belanja Alat Laboratorium                         ', '', '0000-00-00 00:00:00'),
(220, '5.2.2.01.11', 'Belanja Alat Rumah Tangga Kantor                       ', '', '0000-00-00 00:00:00'),
(221, '5.2.2.01.12', 'Belanja Hadiah Lomba / Penghargaan / Sourvenir                     ', '', '0000-00-00 00:00:00'),
(222, '5.2.2.01.13', 'Belanja Alat Tulis Kantor Sarana Teknologi Informasi                     ', '', '0000-00-00 00:00:00'),
(223, '5.2.2.01.14', 'Belanja Perkakas Kerja                         ', '', '0000-00-00 00:00:00'),
(224, '5.2.2.01.15', 'Belanja Alat Kesehatan Pakai Habis                       ', '', '0000-00-00 00:00:00'),
(225, '5.2.2.01.16', 'Belanja Dokumentasi, Dekorasi dan Publikasi                       ', '', '0000-00-00 00:00:00'),
(226, '5.2.2.01.17', 'Belanja Perlengkapan Penerangan Jalan Umum                       ', '', '0000-00-00 00:00:00'),
(227, '5.2.2.01.18', 'Belanja Bahan Peraga                         ', '', '0000-00-00 00:00:00'),
(228, '5.2.2.01.19', 'Belanja Tong Sampah                         ', '', '0000-00-00 00:00:00'),
(229, '5.2.2.02', 'Belanja Bahan / Material                        ', '', '0000-00-00 00:00:00'),
(230, '5.2.2.02.01', 'Belanja Bahan Baku Bangunan                        ', '', '0000-00-00 00:00:00'),
(231, '5.2.2.02.02', 'Belanja Bahan / Bibit Tanaman                       ', '', '0000-00-00 00:00:00'),
(232, '5.2.2.02.03', 'Belanja Bibit Ternak                         ', '', '0000-00-00 00:00:00'),
(233, '5.2.2.02.04', 'Belanja Bahan Obat-Obatan                         ', '', '0000-00-00 00:00:00'),
(234, '5.2.2.02.05', 'Belanja Bahan Kimia                         ', '', '0000-00-00 00:00:00'),
(235, '5.2.2.02.06', 'Belanja Bahan Laboratorium                         ', '', '0000-00-00 00:00:00'),
(236, '5.2.2.02.07', 'Belanja Bahan dan Pangan                        ', '', '0000-00-00 00:00:00'),
(237, '5.2.2.02.08', 'Belanja Bahan Makanan Ternak / Binatang                      ', '', '0000-00-00 00:00:00'),
(238, '5.2.2.02.09', 'Belanja Bahan Percontohan                         ', '', '0000-00-00 00:00:00'),
(239, '5.2.2.02.10', 'Belanja Ban Kendaraan Dinas Operasional                       ', '', '0000-00-00 00:00:00'),
(240, '5.2.2.02.11', 'Belanja Ban Kendaraan Dinas Operasional Khusus                      ', '', '0000-00-00 00:00:00'),
(241, '5.2.2.02.12', 'Belanja Ban Sepeda Motor Dinas Operasional                      ', '', '0000-00-00 00:00:00'),
(242, '5.2.2.02.13', 'Belanja Ban Alat-Alat Berat                        ', '', '0000-00-00 00:00:00'),
(243, '5.2.2.02.14', 'Belanja Aki Kendaraan Dinas Operasional                       ', '', '0000-00-00 00:00:00'),
(244, '5.2.2.02.15', 'Belanja Aki Sepeda Motor Dinas Operasional                      ', '', '0000-00-00 00:00:00'),
(245, '5.2.2.02.16', 'Belanja Aki Alat-Alat Berat                        ', '', '0000-00-00 00:00:00'),
(246, '5.2.2.02.17', 'Belanja Suku Cadang Kendaraan Dinas Operasional                      ', '', '0000-00-00 00:00:00'),
(247, '5.2.2.02.18', 'Belanja Suku Cadang Kendaraan Dinas Operasional Khusus                     ', '', '0000-00-00 00:00:00'),
(248, '5.2.2.02.19', 'Belanja Suku Cadang Sepeda Motor Dinas Operasional                     ', '', '0000-00-00 00:00:00'),
(249, '5.2.2.02.20', 'Belanja Suku Cadang Alat-Alat Berat                       ', '', '0000-00-00 00:00:00'),
(250, '5.2.2.02.21', 'Belanja Suku Cadang Transportasi Laut dan Sungai                     ', '', '0000-00-00 00:00:00'),
(251, '5.2.2.02.22', 'Belanja BBM Kendaraan Dinas Operasional                       ', '', '0000-00-00 00:00:00'),
(252, '5.2.2.02.23', 'Belanja BBM Kendaraan Dinas Operasional Khusus                      ', '', '0000-00-00 00:00:00'),
(253, '5.2.2.02.24', 'Belanja BBM Sepeda Motor Dinas Operasional                      ', '', '0000-00-00 00:00:00'),
(254, '5.2.2.02.25', 'Belanja BBM Alat-Alat Berat / Genset                      ', '', '0000-00-00 00:00:00'),
(255, '5.2.2.02.26', 'Belanja BBM Transportasi Laut dan Sungai                      ', '', '0000-00-00 00:00:00'),
(256, '5.2.2.02.27', 'Belanja BBG Kendaraan Bermotor                        ', '', '0000-00-00 00:00:00'),
(257, '5.2.2.03', 'Belanja Jasa Kantor                         ', '', '0000-00-00 00:00:00'),
(258, '5.2.2.03.01', 'Belanja Telepon                          ', '', '0000-00-00 00:00:00'),
(259, '5.2.2.03.02', 'Belanja Air                          ', '', '0000-00-00 00:00:00'),
(260, '5.2.2.03.03', 'Belanja Listrik                          ', '', '0000-00-00 00:00:00'),
(261, '5.2.2.03.04', 'Belanja Jasa Pengumuman Lelang / Pemenang Lelang                     ', '', '0000-00-00 00:00:00'),
(262, '5.2.2.03.05', 'Belanja Surat Kabar / Majalah                       ', '', '0000-00-00 00:00:00'),
(263, '5.2.2.03.06', 'Belanja Kawat / Faksimili / Internet                      ', '', '0000-00-00 00:00:00'),
(264, '5.2.2.03.07', 'Belanja Paket / Pengiriman                        ', '', '0000-00-00 00:00:00'),
(265, '5.2.2.03.08', 'Belanja Sertifikasi                          ', '', '0000-00-00 00:00:00'),
(266, '5.2.2.03.09', 'Belanja Jasa Transaksi Keuangan                        ', '', '0000-00-00 00:00:00'),
(267, '5.2.2.03.10', 'Belanja Jasa Administrasi Pemungutan Pajak Penerangan Jalan Umum                    ', '', '0000-00-00 00:00:00'),
(268, '5.2.2.03.11', 'Belanja Jasa Administrasi Pemungutan Pajak Bahan Bakar Kendaraan Bermotor                   ', '', '0000-00-00 00:00:00'),
(269, '5.2.2.03.12', 'Belanja Jasa Kebersihan (Cleaning Service)                       ', '', '0000-00-00 00:00:00'),
(270, '5.2.2.03.13', 'Belanja Rekening Penerangan Jalan Umum                       ', '', '0000-00-00 00:00:00'),
(271, '5.2.2.03.14', 'Belanja Jasa Pengukuran Tanah                        ', '', '0000-00-00 00:00:00'),
(272, '5.2.2.03.15', 'Belanja Jasa Jalan / Tol                       ', '', '0000-00-00 00:00:00'),
(273, '5.2.2.03.16', 'Belanja Jasa Pemasangan Instalasi TAL                       ', '', '0000-00-00 00:00:00'),
(274, '5.2.2.03.17', 'Belanja Penambahan Daya                         ', '', '0000-00-00 00:00:00'),
(275, '5.2.2.03.18', 'Belanja Registrasi / Keanggotaan                        ', '', '0000-00-00 00:00:00'),
(276, '5.2.2.03.19', 'Belanja Perizinan / Perpanjangan Senjata Api                      ', '', '0000-00-00 00:00:00'),
(277, '5.2.2.03.20', 'Belanja Perawatan Pasien Tidak Mampu                       ', '', '0000-00-00 00:00:00'),
(278, '5.2.2.03.21', 'Belanja Penguburan Jenazah Masyarakat Tidak Mampu                      ', '', '0000-00-00 00:00:00'),
(279, '5.2.2.03.22', 'Belanja Pembayaran Pajak, Bea dan Perijinan                      ', '', '0000-00-00 00:00:00'),
(280, '5.2.2.03.23', 'Belanja Jasa Operator Busway                        ', '', '0000-00-00 00:00:00'),
(281, '5.2.2.03.24', 'Belanja Jasa Pengamanan Busway                        ', '', '0000-00-00 00:00:00'),
(282, '5.2.2.03.25', 'Belanja Jasa Tiketing Busway                        ', '', '0000-00-00 00:00:00'),
(283, '5.2.2.03.26', 'Belanja Jasa Pemindahan Benda Bersejarah                       ', '', '0000-00-00 00:00:00'),
(284, '5.2.2.03.27', 'Belanja Pelayanan Santunan Sosial                        ', '', '0000-00-00 00:00:00'),
(285, '5.2.2.03.28', 'Belanja SPP Siswa Kurang Mampu                       ', '', '0000-00-00 00:00:00'),
(286, '5.2.2.03.29', 'Belanja Pelayanan Kesehatan Korban Bencana                       ', '', '0000-00-00 00:00:00'),
(287, '5.2.2.03.30', 'Belanja Jasa Pengolahan Sampah                        ', '', '0000-00-00 00:00:00'),
(288, '5.2.2.03.31', 'Belanja Operasional Layanan Umum                        ', '', '0000-00-00 00:00:00'),
(289, '5.2.2.03.32', 'Belanja Jasa Penanganan / Penanggulangan Sampah                      ', '', '0000-00-00 00:00:00'),
(290, '5.2.2.03.33', 'Belanja Jasa Analisa Laboratorium                        ', '', '0000-00-00 00:00:00'),
(291, '5.2.2.03.34', 'Belanja Jasa Pengamanan Kantor                        ', '', '0000-00-00 00:00:00'),
(292, '5.2.2.03.35', 'Belanja Jasa Operator Bus Sekolah                       ', '', '0000-00-00 00:00:00'),
(293, '5.2.2.03.36', 'Belanja Jasa Operator Kapal Penyeberangan                       ', '', '0000-00-00 00:00:00'),
(294, '5.2.2.03.37', 'Belanja Jasa Pelayanan Pengisian BBG/BBM                       ', '', '0000-00-00 00:00:00'),
(295, '5.2.2.03.38', 'Belanja Jasa Pencucian Pakaian/Alat Kesenian/Rumah Tangga                      ', '', '0000-00-00 00:00:00'),
(296, '5.2.2.03.39', 'Belanja Jasa Pengurusan Perkara Hukum                       ', '', '0000-00-00 00:00:00'),
(297, '5.2.2.03.40', 'Belanja Air Rumah Susun                        ', '', '0000-00-00 00:00:00'),
(298, '5.2.2.03.41', 'Belanja Listrik Rumah Susun                        ', '', '0000-00-00 00:00:00'),
(299, '5.2.2.03.42', 'Belanja Jasa Boga                         ', '', '0000-00-00 00:00:00'),
(300, '5.2.2.03.43', 'Belanja Jasa Penyedia Tenaga Kerja                       ', '', '0000-00-00 00:00:00'),
(301, '5.2.2.03.44', 'Belanja Jasa Asuransi Perbankan dan Keuangan                      ', '', '0000-00-00 00:00:00'),
(302, '5.2.2.03.45', 'Belanja Jasa Layanan Kesehatan, Pendidikan, Pengembangan Sumber Daya Manusia, Kependudukan                  ', '', '0000-00-00 00:00:00'),
(303, '5.2.2.03.46', 'Belanja Jasa Penerangan, Iklan/Reklame, Film, Pemotretan                      ', '', '0000-00-00 00:00:00'),
(304, '5.2.2.03.47', 'Belanja Jasa Pembersihan, Pengendalian Hama (Pest Control) dan Fumigasi                   ', '', '0000-00-00 00:00:00'),
(305, '5.2.2.03.48', 'Belanja Jasa Pengepakan, Pengangkutan, Pengurusan dan Penyampaian Barang                    ', '', '0000-00-00 00:00:00'),
(306, '5.2.2.03.49', 'Belanja Jasa Penjahitan/Konveksi                         ', '', '0000-00-00 00:00:00'),
(307, '5.2.2.03.50', 'Belanja Jasa Impor/Ekspor                         ', '', '0000-00-00 00:00:00'),
(308, '5.2.2.03.51', 'Belanja Jasa Penulisan dan Penerjemahan                       ', '', '0000-00-00 00:00:00'),
(309, '5.2.2.03.52', 'Belanja Jasa Penyewaan                         ', '', '0000-00-00 00:00:00'),
(310, '5.2.2.03.53', 'Belanja Jasa Penyelaman                         ', '', '0000-00-00 00:00:00'),
(311, '5.2.2.03.54', 'Belanja Jasa Akomodasi                         ', '', '0000-00-00 00:00:00'),
(312, '5.2.2.03.55', 'Belanja Jasa Angkutan Penumpang                        ', '', '0000-00-00 00:00:00'),
(313, '5.2.2.03.56', 'Belanja Jasa Penyelenggaraan Acara (Event Organizer)                      ', '', '0000-00-00 00:00:00'),
(314, '5.2.2.03.57', 'Belanja Jasa Pengelolaan Aset                        ', '', '0000-00-00 00:00:00'),
(315, '5.2.2.04', 'Belanja Premi Asuransi                         ', '', '0000-00-00 00:00:00'),
(316, '5.2.2.04.01', 'Belanja Premi Asuransi Kesehatan                        ', '', '0000-00-00 00:00:00'),
(317, '5.2.2.04.02', 'Belanja Premi Asuransi Barang Milik Daerah                      ', '', '0000-00-00 00:00:00'),
(318, '5.2.2.05', 'Belanja Perawatan Kendaraan Bermotor                        ', '', '0000-00-00 00:00:00'),
(319, '5.2.2.05.01', 'Belanja Jasa Service                         ', '', '0000-00-00 00:00:00'),
(320, '5.2.2.05.02', 'Belanja Penggantian Suku Cadang                        ', '', '0000-00-00 00:00:00'),
(321, '5.2.2.05.03', 'Belanja Minyak Pelumas                         ', '', '0000-00-00 00:00:00'),
(322, '5.2.2.05.04', 'Belanja Jasa KIR                         ', '', '0000-00-00 00:00:00'),
(323, '5.2.2.05.05', 'Belanja Surat Tanda Nomor Kendaraan                       ', '', '0000-00-00 00:00:00'),
(324, '5.2.2.05.06', 'Belanja Perpanjangan Surat Ijin Mengemudi                       ', '', '0000-00-00 00:00:00'),
(325, '5.2.2.06', 'Belanja Cetak dan Penggandaan                        ', '', '0000-00-00 00:00:00'),
(326, '5.2.2.06.01', 'Belanja Cetak                          ', '', '0000-00-00 00:00:00'),
(327, '5.2.2.06.01.001', 'Belanja Cetakan Umum (Kop Surat Dinas,Amplop Dinas, Map Dinas, Lembar Disposisi, Lembar Pengantar, dll)              ', '', '0000-00-00 00:00:00'),
(328, '5.2.2.06.01.002', 'Belanja Cetakan Khusus (Cetak Sarana dan Prasarana TI, Cetak Adm Perbendaharaan / Barang / Keuangan/Pendidikan,Cetak Agenda / Kalendar, Cetak Karcis Retribusi Daerah, Cetak STNK / BPKB, Cetak KK /KTP/ Ijasah/UUG, dll)', '', '0000-00-00 00:00:00'),
(329, '5.2.2.06.02', 'Belanja Penggandaan                          ', '', '0000-00-00 00:00:00'),
(330, '5.2.2.06.02.001', 'Belanja Penjilidan                          ', '', '0000-00-00 00:00:00'),
(331, '5.2.2.06.02.002', 'Belanja Fotocopy                          ', '', '0000-00-00 00:00:00'),
(332, '5.2.2.07', 'Belanja Sewa Rumah / Gedung / Gudang / Parkir                   ', '', '0000-00-00 00:00:00'),
(333, '5.2.2.07.01', 'Belanja Sewa Rumah Jabatan / Rumah Dinas                     ', '', '0000-00-00 00:00:00'),
(334, '5.2.2.07.01.001', 'Belanja Sewa Rumah Jabatan                        ', '', '0000-00-00 00:00:00'),
(335, '5.2.2.07.01.002', 'Belanja Sewa Rumah Dinas                        ', '', '0000-00-00 00:00:00'),
(336, '5.2.2.07.02', 'Belanja Sewa Gedung / Kantor / Tempat                     ', '', '0000-00-00 00:00:00'),
(337, '5.2.2.07.02.001', 'Belanja Sewa Gedung                         ', '', '0000-00-00 00:00:00'),
(338, '5.2.2.07.02.002', 'Belanja Sewa Kantor                         ', '', '0000-00-00 00:00:00'),
(339, '5.2.2.07.02.003', 'Belanja Sewa Tempat                         ', '', '0000-00-00 00:00:00'),
(340, '5.2.2.07.02.004', 'Belanja Sewa Gudang                         ', '', '0000-00-00 00:00:00'),
(341, '5.2.2.07.02.005', 'Belanja Sewa Lapangan                         ', '', '0000-00-00 00:00:00'),
(342, '5.2.2.08', 'Belanja Sewa Sarana Mobilitas                        ', '', '0000-00-00 00:00:00'),
(343, '5.2.2.08.01', 'Belanja Sewa Sarana Mobilitas Darat                       ', '', '0000-00-00 00:00:00'),
(344, '5.2.2.08.02', 'Belanja Sewa Sarana Mobilitas Air                       ', '', '0000-00-00 00:00:00'),
(345, '5.2.2.08.03', 'Belanja Sewa Sarana Mobilitas Udara                       ', '', '0000-00-00 00:00:00'),
(346, '5.2.2.09', 'Belanja Sewa Alat Berat                        ', '', '0000-00-00 00:00:00'),
(347, '5.2.2.09.01', 'Belanja Sewa Eskavator                         ', '', '0000-00-00 00:00:00'),
(348, '5.2.2.09.02', 'Belanja Sewa Buldoser                         ', '', '0000-00-00 00:00:00'),
(349, '5.2.2.09.03', 'Belanja Sewa Dump Truck                        ', '', '0000-00-00 00:00:00'),
(350, '5.2.2.09.04', 'Belanja Sewa Mesin Giling                        ', '', '0000-00-00 00:00:00'),
(351, '5.2.2.09.05', 'Belanja Sewa Shovel Loader                        ', '', '0000-00-00 00:00:00'),
(352, '5.2.2.09.06', 'Belanja Sewa Tyre Roller                        ', '', '0000-00-00 00:00:00'),
(353, '5.2.2.09.07', 'Belanja Sewa Asphalt Finisher                        ', '', '0000-00-00 00:00:00'),
(354, '5.2.2.09.08', 'Belanja Sewa Direksi Kett                        ', '', '0000-00-00 00:00:00'),
(355, '5.2.2.09.09', 'Belanja Sewa Generator Set                        ', '', '0000-00-00 00:00:00'),
(356, '5.2.2.09.10', 'Belanja Sewa Kontainer                         ', '', '0000-00-00 00:00:00'),
(357, '5.2.2.09.11', 'Belanja Sewa Crane                         ', '', '0000-00-00 00:00:00'),
(358, '5.2.2.10', 'Belanja Sewa Perlengkapan dan Peralatan Kantor                      ', '', '0000-00-00 00:00:00'),
(359, '5.2.2.10.01', 'Belanja Sewa Meja / Kursi                       ', '', '0000-00-00 00:00:00'),
(360, '5.2.2.10.02', 'Belanja Sewa Komputer dan Printer                       ', '', '0000-00-00 00:00:00'),
(361, '5.2.2.10.03', 'Belanja Sewa Proyektor / OHP / Infocus / LCD / HDTV                 ', '', '0000-00-00 00:00:00'),
(362, '5.2.2.10.04', 'Belanja Sewa Tenda                         ', '', '0000-00-00 00:00:00'),
(363, '5.2.2.10.05', 'Belanja Sewa Pakaian Adat / Tradisional                      ', '', '0000-00-00 00:00:00'),
(364, '5.2.2.10.06', 'Belanja Sewa Mesin Foto Copy                       ', '', '0000-00-00 00:00:00'),
(365, '5.2.2.10.07', 'Belanja Sewa OS / Hardware / Software / Jaringan Komputer dan Lainnya                ', '', '0000-00-00 00:00:00'),
(366, '5.2.2.10.08', 'Belanja Sewa Sound System                        ', '', '0000-00-00 00:00:00'),
(367, '5.2.2.10.09', 'Belanja Sewa Alat Kesenian                        ', '', '0000-00-00 00:00:00'),
(368, '5.2.2.10.10', 'Belanja Sewa Alat Olahraga                        ', '', '0000-00-00 00:00:00'),
(369, '5.2.2.10.11', 'Belanja Sewa Alat Kerja                        ', '', '0000-00-00 00:00:00'),
(370, '5.2.2.10.12', 'Belanja Sewa Level / Panggung                       ', '', '0000-00-00 00:00:00'),
(371, '5.2.2.10.13', 'Belanja Sewa Alat / Peraga                       ', '', '0000-00-00 00:00:00'),
(372, '5.2.2.11', 'Belanja Makanan dan Minuman                        ', '', '0000-00-00 00:00:00'),
(373, '5.2.2.11.01', 'Belanja Makanan dan Minuman Harian Pegawai                      ', '', '0000-00-00 00:00:00'),
(374, '5.2.2.11.02', 'Belanja Makanan dan Minuman Rapat                       ', '', '0000-00-00 00:00:00'),
(375, '5.2.2.11.03', 'Belanja Makanan dan Minuman Tamu                       ', '', '0000-00-00 00:00:00'),
(376, '5.2.2.11.04', 'Belanja Makanan dan Minuman Peserta/Petugas/Panitia                       ', '', '0000-00-00 00:00:00'),
(377, '5.2.2.12', 'Belanja Pakaian Dinas dan Atributnya                       ', '', '0000-00-00 00:00:00'),
(378, '5.2.2.12.01', 'Belanja Pakaian Dinas KDH dan WKDH                      ', '', '0000-00-00 00:00:00'),
(379, '5.2.2.12.02', 'Belanja Pakaian Sipil Harian (PSH)                       ', '', '0000-00-00 00:00:00'),
(380, '5.2.2.12.03', 'Belanja Pakaian Sipil Lengkap (PSL)                       ', '', '0000-00-00 00:00:00'),
(381, '5.2.2.12.04', 'Belanja Pakaian Dinas Harian (PDH)                       ', '', '0000-00-00 00:00:00'),
(382, '5.2.2.12.05', 'Belanja Pakaian Dinas Upacara (PDU)                       ', '', '0000-00-00 00:00:00'),
(383, '5.2.2.12.06', 'Belanja Pakaian Dinas Lapangan (PDL)                       ', '', '0000-00-00 00:00:00'),
(384, '5.2.2.13', 'Belanja Pakaian Kerja                         ', '', '0000-00-00 00:00:00'),
(385, '5.2.2.13.01', 'Belanja Pakaian Kerja Lapangan                        ', '', '0000-00-00 00:00:00'),
(386, '5.2.2.13.02', 'Belanja Pakaian Kerja Laboratorium                        ', '', '0000-00-00 00:00:00'),
(387, '5.2.2.13.03', 'Belanja Pakaian Kerja Praktikum                        ', '', '0000-00-00 00:00:00'),
(388, '5.2.2.13.04', 'Belanja Pakaian Kerja Bengkel                        ', '', '0000-00-00 00:00:00'),
(389, '5.2.2.13.05', 'Belanja Pakaian Kerja POLSUS                        ', '', '0000-00-00 00:00:00'),
(390, '5.2.2.14', 'Belanja Pakaian Khusus dan Hari-Hari Tertentu                      ', '', '0000-00-00 00:00:00'),
(391, '5.2.2.14.01', 'Belanja Pakaian KORPRI                         ', '', '0000-00-00 00:00:00'),
(392, '5.2.2.14.02', 'Belanja Pakaian Adat Daerah                        ', '', '0000-00-00 00:00:00'),
(393, '5.2.2.14.03', 'Belanja Pakaian Batik Tradisional                        ', '', '0000-00-00 00:00:00'),
(394, '5.2.2.14.04', 'Belanja Pakaian Olahraga                         ', '', '0000-00-00 00:00:00'),
(395, '5.2.2.14.05', 'Belanja Pakaian KORPS Musik                        ', '', '0000-00-00 00:00:00'),
(396, '5.2.2.14.06', 'Belanja Pakaian PASKIBRA                         ', '', '0000-00-00 00:00:00'),
(397, '5.2.2.14.07', 'Belanja Pakaian Jas / Safari                       ', '', '0000-00-00 00:00:00'),
(398, '5.2.2.15', 'Belanja Perjalanan Dinas                         ', '', '0000-00-00 00:00:00'),
(399, '5.2.2.15.01', 'Belanja Perjalanan Dinas Dalam Daerah                       ', '', '0000-00-00 00:00:00'),
(400, '5.2.2.15.02', 'Belanja Perjalanan Dinas Luar Daerah                       ', '', '0000-00-00 00:00:00'),
(401, '5.2.2.16', 'Belanja Beasiswa Pendidikan PNS                        ', '', '0000-00-00 00:00:00'),
(402, '5.2.2.16.01', 'Belanja Beasiswa Tugas Belajar D3                       ', '', '0000-00-00 00:00:00'),
(403, '5.2.2.16.01.001', 'Uang Kuliah / SPP - D3                      ', '', '0000-00-00 00:00:00'),
(404, '5.2.2.16.01.002', 'Uang Muka - D3                        ', '', '0000-00-00 00:00:00'),
(405, '5.2.2.16.01.003', 'Uang Saku - D3                        ', '', '0000-00-00 00:00:00'),
(406, '5.2.2.16.01.004', 'Uang Tunjangan Belajar - D3                       ', '', '0000-00-00 00:00:00'),
(407, '5.2.2.16.01.005', 'Uang Pembuatan Karya Tulis - D3                      ', '', '0000-00-00 00:00:00'),
(408, '5.2.2.16.01.006', 'Uang Test / Ujian - D3                      ', '', '0000-00-00 00:00:00'),
(409, '5.2.2.16.02', 'Belanja Beasiswa Tugas Belajar S1                       ', '', '0000-00-00 00:00:00'),
(410, '5.2.2.16.02.001', 'Uang Kuliah / SPP - S1                      ', '', '0000-00-00 00:00:00'),
(411, '5.2.2.16.02.002', 'Uang Muka - S1                        ', '', '0000-00-00 00:00:00'),
(412, '5.2.2.16.02.003', 'Uang Saku - S1                        ', '', '0000-00-00 00:00:00'),
(413, '5.2.2.16.02.004', 'Uang Tunjangan Belajar - S1                       ', '', '0000-00-00 00:00:00'),
(414, '5.2.2.16.02.005', 'Uang Pembuatan Karya Tulis - S1                      ', '', '0000-00-00 00:00:00'),
(415, '5.2.2.16.02.006', 'Uang Test / Ujian - S1                      ', '', '0000-00-00 00:00:00'),
(416, '5.2.2.16.03', 'Belanja Beasiswa Tugas Belajar S2                       ', '', '0000-00-00 00:00:00'),
(417, '5.2.2.16.03.001', 'Uang Kuliah / SPP - S2                      ', '', '0000-00-00 00:00:00'),
(418, '5.2.2.16.03.002', 'Uang Muka - S2                        ', '', '0000-00-00 00:00:00'),
(419, '5.2.2.16.03.003', 'Uang Saku - S2                        ', '', '0000-00-00 00:00:00'),
(420, '5.2.2.16.03.004', 'Uang Tunjangan Belajar - S2                       ', '', '0000-00-00 00:00:00'),
(421, '5.2.2.16.03.005', 'Uang Pembuatan Karya Tulis - S2                      ', '', '0000-00-00 00:00:00'),
(422, '5.2.2.16.03.006', 'Uang Test / Ujian - S2                      ', '', '0000-00-00 00:00:00'),
(423, '5.2.2.16.04', 'Belanja Beasiswa Tugas Belajar S3                       ', '', '0000-00-00 00:00:00'),
(424, '5.2.2.16.04.001', 'Uang Kuliah / SPP - S3                      ', '', '0000-00-00 00:00:00'),
(425, '5.2.2.16.04.002', 'Uang Muka - S3                        ', '', '0000-00-00 00:00:00'),
(426, '5.2.2.16.04.003', 'Uang Saku - S3                        ', '', '0000-00-00 00:00:00'),
(427, '5.2.2.16.04.004', 'Uang Tunjangan Belajar - S3                       ', '', '0000-00-00 00:00:00'),
(428, '5.2.2.16.04.005', 'Uang Pembuatan Karya Tulis - S3                      ', '', '0000-00-00 00:00:00'),
(429, '5.2.2.16.04.006', 'Uang Test / Ujian - S3                      ', '', '0000-00-00 00:00:00'),
(430, '5.2.2.17', 'Belanja Kursus, Pelatihan, Sosialisasi dan Bimbingan Teknis PNS                    ', '', '0000-00-00 00:00:00'),
(431, '5.2.2.17.01', 'Belanja Kursus-Kursus Singkat / Pelatihan                       ', '', '0000-00-00 00:00:00'),
(432, '5.2.2.17.01.001', 'Biaya Kepesertaan                          ', '', '0000-00-00 00:00:00'),
(433, '5.2.2.17.01.002', 'Uang Saku / Transport                        ', '', '0000-00-00 00:00:00'),
(434, '5.2.2.17.02', 'Belanja Sosialisasi                          ', '', '0000-00-00 00:00:00'),
(435, '5.2.2.17.02.001', 'Biaya Kepesertaan                          ', '', '0000-00-00 00:00:00'),
(436, '5.2.2.17.02.002', 'Uang Saku / Transport                        ', '', '0000-00-00 00:00:00'),
(437, '5.2.2.17.03', 'Belanja Bimbingan Teknis                         ', '', '0000-00-00 00:00:00'),
(438, '5.2.2.17.03.001', 'Biaya Kepesertaan                          ', '', '0000-00-00 00:00:00'),
(439, '5.2.2.17.03.002', 'Uang Saku / Transport                        ', '', '0000-00-00 00:00:00'),
(440, '5.2.2.17.04', 'Biaya Diklat Kepemimpinan                         ', '', '0000-00-00 00:00:00'),
(441, '5.2.2.17.04.001', 'Biaya Kepersertaan                          ', '', '0000-00-00 00:00:00'),
(442, '5.2.2.17.04.002', 'Biaya Uang Saku / Transport                       ', '', '0000-00-00 00:00:00'),
(443, '5.2.2.17.04.003', 'Biaya Uang Ujian / Test                       ', '', '0000-00-00 00:00:00'),
(444, '5.2.2.18', 'Belanja Perjalanan Pindah Tugas                        ', '', '0000-00-00 00:00:00'),
(445, '5.2.2.18.01', 'Belanja Perjalanan Pindah Tugas Dalam Daerah                      ', '', '0000-00-00 00:00:00'),
(446, '5.2.2.18.02', 'Belanja Perjalanan Pindah Tugas Luar Daerah                      ', '', '0000-00-00 00:00:00'),
(447, '5.2.2.19', 'Belanja Pemulangan Pegawai                         ', '', '0000-00-00 00:00:00'),
(448, '5.2.2.19.01', 'Belanja Pemulangan Pegawai Yang Pensiun Dalam Daerah                     ', '', '0000-00-00 00:00:00'),
(449, '5.2.2.19.02', 'Belanja Pemulangan Pegawai Yang Pensiun Luar Daerah                     ', '', '0000-00-00 00:00:00'),
(450, '5.2.2.19.03', 'Belanja Pemulangan Pegawai Yang Tewas Dalam Melaksanakan Tugas                    ', '', '0000-00-00 00:00:00'),
(451, '5.2.2.20', 'Belanja Pemeliharaan                          ', '', '0000-00-00 00:00:00'),
(452, '5.2.2.20.01', 'Belanja Pemeliharaan Jalan                         ', '', '0000-00-00 00:00:00'),
(453, '5.2.2.20.01.001', 'Belanja Pemeliharaan Jalan Fly Over                       ', '', '0000-00-00 00:00:00'),
(454, '5.2.2.20.01.002', 'Belanja Pemeliharaan Jalan Under Pass                       ', '', '0000-00-00 00:00:00'),
(455, '5.2.2.20.01.003', 'Belanja Pemeliharaan Jalan Monorail / Subway / Busway                    ', '', '0000-00-00 00:00:00'),
(456, '5.2.2.20.01.004', 'Belanja Pemeliharaan Jalan Landas Pacu Pesawat                      ', '', '0000-00-00 00:00:00'),
(457, '5.2.2.20.01.005', 'Belanja Pemeliharaan Jalan Negara                        ', '', '0000-00-00 00:00:00'),
(458, '5.2.2.20.01.006', 'Belanja Pemeliharaan Jalan Provinsi                        ', '', '0000-00-00 00:00:00'),
(459, '5.2.2.20.01.007', 'Belanja Pemeliharaan Jalan Kabupaten                        ', '', '0000-00-00 00:00:00'),
(460, '5.2.2.20.01.008', 'Belanja Pemeliharaan Jalan Lingkungan                        ', '', '0000-00-00 00:00:00'),
(461, '5.2.2.20.01.009', 'Belanja Pemeliharaan Trotoar / Bahu Jalan                      ', '', '0000-00-00 00:00:00'),
(462, '5.2.2.20.02', 'Belanja Pemeliharaan Jembatan                         ', '', '0000-00-00 00:00:00'),
(463, '5.2.2.20.02.001', 'Belanja Pemeliharaan Jembatan Gantung                        ', '', '0000-00-00 00:00:00'),
(464, '5.2.2.20.02.002', 'Belanja Pemeliharaan Jembatan Ponton                        ', '', '0000-00-00 00:00:00'),
(465, '5.2.2.20.02.003', 'Belanja Pemeliharaan Jembatan Penyeberangan Orang                       ', '', '0000-00-00 00:00:00'),
(466, '5.2.2.20.02.004', 'Belanja Pemeliharaan Jembatan Penyeberangan diatas Air                      ', '', '0000-00-00 00:00:00'),
(467, '5.2.2.20.02.005', 'Belanja Pemeliharaan Jembatan Balley                        ', '', '0000-00-00 00:00:00'),
(468, '5.2.2.20.02.006', 'Belanja Pemeliharaan Jembatan Timbang                        ', '', '0000-00-00 00:00:00'),
(469, '5.2.2.20.02.007', 'Belanja Pemeliharaan Jembatan Fly Over                       ', '', '0000-00-00 00:00:00'),
(470, '5.2.2.20.03', 'Belaja Pemeliharan Tanah                         ', '', '0000-00-00 00:00:00'),
(471, '5.2.2.20.03.001', 'Belanja Pemeliharaan Tanah Kantor                        ', '', '0000-00-00 00:00:00'),
(472, '5.2.2.20.03.002', 'Belanja Pemeliharaan Tanah Sarana Kesehatan Rumah Sakit                     ', '', '0000-00-00 00:00:00'),
(473, '5.2.2.20.03.003', 'Belanja Pemeliharaan Tanah Sarana Kesehatan Puskesmas                      ', '', '0000-00-00 00:00:00'),
(474, '5.2.2.20.03.004', 'Belanja Pemeliharaan Tanah Sarana Pendidikan Taman Kanak-Kanak                     ', '', '0000-00-00 00:00:00');
INSERT INTO `tr_rekening` (`id`, `kode`, `nama`, `insert_user`, `insert_datetime`) VALUES
(475, '5.2.2.20.03.005', 'Belanja Pemeliharaan Tanah Sarana Pendidikan Sekolah Dasar dan Sekolah Menengah Lanjutan Pertama                ', '', '0000-00-00 00:00:00'),
(476, '5.2.2.20.03.006', 'Belanja Pemeliharaan Tanah Sarana Pendidikan Menengah Umum dan Kejuruan                   ', '', '0000-00-00 00:00:00'),
(477, '5.2.2.20.03.007', 'Belanja Pemeliharaan Tanah Sarana Pendidikan Menengah Lanjutan dan Kejuruan                   ', '', '0000-00-00 00:00:00'),
(478, '5.2.2.20.03.008', 'Belanja Pemeliharaan Tanah Sarana Pendidikan Luar Biasa / Khusus                   ', '', '0000-00-00 00:00:00'),
(479, '5.2.2.20.03.009', 'Belanja Pemeliharaan Tanah Sarana Pendidikan Pelatihan dan Kursus                    ', '', '0000-00-00 00:00:00'),
(480, '5.2.2.20.03.010', 'Belanja Pemeliharaan Tanah Sarana Sosial Panti Asuhan                     ', '', '0000-00-00 00:00:00'),
(481, '5.2.2.20.03.011', 'Belanja Pemeliharaan Tanah sarana Sosial Panti Jompo                     ', '', '0000-00-00 00:00:00'),
(482, '5.2.2.20.03.012', 'Belanja Pemeliharaan Tanah Sarana Umum Terminal                      ', '', '0000-00-00 00:00:00'),
(483, '5.2.2.20.03.013', 'Belanja Pemeliharaan Tanah Sarana Umum Dermaga                      ', '', '0000-00-00 00:00:00'),
(484, '5.2.2.20.03.014', 'Belanja Pemeliharaan Tanah Sarana Umum Lapangan Terbang Perintis                    ', '', '0000-00-00 00:00:00'),
(485, '5.2.2.20.03.015', 'Belanja Pemeliharaan Tanah Sarana Umum Rumah Potong Hewan                    ', '', '0000-00-00 00:00:00'),
(486, '5.2.2.20.03.016', 'Belanja Pemeliharaan Tanah Sarana Umum Tempat Pelelangan Ikan                    ', '', '0000-00-00 00:00:00'),
(487, '5.2.2.20.03.017', 'Belanja Pemeliharaan Tanah Sarana Umum Pasar                      ', '', '0000-00-00 00:00:00'),
(488, '5.2.2.20.03.018', 'Belanja Pemeliharaan Tanah Sarana Umum Tempat Pembuangan Akhir Sampah                   ', '', '0000-00-00 00:00:00'),
(489, '5.2.2.20.03.019', 'Belanja Pemeliharaan Tanah Sarana Umum Taman                      ', '', '0000-00-00 00:00:00'),
(490, '5.2.2.20.03.020', 'Belanja Pemeliharaan Tanah Sarana Umum Pusat Hiburan Rakyat                    ', '', '0000-00-00 00:00:00'),
(491, '5.2.2.20.03.021', 'Belanja Pemeliharaan Tanah Sarana Umum Ibadah                      ', '', '0000-00-00 00:00:00'),
(492, '5.2.2.20.03.022', 'Belanja Pemeliharaan Tanah Sarana Stadion Olahraga                      ', '', '0000-00-00 00:00:00'),
(493, '5.2.2.20.03.023', 'Belanja Pemeliharaan Tanah Perumahan                        ', '', '0000-00-00 00:00:00'),
(494, '5.2.2.20.03.024', 'Belanja Pemeliharaan Tanah Pertanian                        ', '', '0000-00-00 00:00:00'),
(495, '5.2.2.20.03.025', 'Belanja Pemeliharaan Tanah Perkebunan                        ', '', '0000-00-00 00:00:00'),
(496, '5.2.2.20.03.026', 'Belanja Pemeliharaan Tanah Perikanan                        ', '', '0000-00-00 00:00:00'),
(497, '5.2.2.20.03.027', 'Belanja Pemeliharaan Tanah Peternakan                        ', '', '0000-00-00 00:00:00'),
(498, '5.2.2.20.03.028', 'Belanja Pemeliharaan Tanah Perkampungan                        ', '', '0000-00-00 00:00:00'),
(499, '5.2.2.20.03.029', 'Belanja Pemeliharaan Tanah Pergudangan / Tempat Penimbunan Material Bahan Baku                  ', '', '0000-00-00 00:00:00'),
(500, '5.2.2.20.03.030', 'Belanja Pemeliharaan Tanah Asrama Karyawan                       ', '', '0000-00-00 00:00:00'),
(501, '5.2.2.20.03.031', 'Belanja Pemeliharaan Tanah Gelanggang Remaja                       ', '', '0000-00-00 00:00:00'),
(502, '5.2.2.20.03.032', 'Belanja Pemeliharaan Tanah Balai Rakyat / Karang Taruna                    ', '', '0000-00-00 00:00:00'),
(503, '5.2.2.20.03.033', 'Belanja Pemeliharaan Tanah Waduk                        ', '', '0000-00-00 00:00:00'),
(504, '5.2.2.20.03.034', 'Belanja Pemeliharaan Tanah Pintu Air                       ', '', '0000-00-00 00:00:00'),
(505, '5.2.2.20.03.035', 'Belanja Pemeliharaan Tanah Saluran Air                       ', '', '0000-00-00 00:00:00'),
(506, '5.2.2.20.03.036', 'Belanja Pemeliharaan Tanah Jalan                        ', '', '0000-00-00 00:00:00'),
(507, '5.2.2.20.03.037', 'Belanja Pemeliharaan Tanah Kebun Binatang                       ', '', '0000-00-00 00:00:00'),
(508, '5.2.2.20.03.038', 'Belanja Pemeliharaan Tanah Prasarana Jalan                       ', '', '0000-00-00 00:00:00'),
(509, '5.2.2.20.03.039', 'Belanja Pemeliharaan Tanah Makam                        ', '', '0000-00-00 00:00:00'),
(510, '5.2.2.20.03.040', 'Belanja Pemeliharaan Tanah Sarana Olahraga                       ', '', '0000-00-00 00:00:00'),
(511, '5.2.2.20.03.041', 'Belanja Pemeliharaan Tanah IPAL                        ', '', '0000-00-00 00:00:00'),
(512, '5.2.2.20.04', 'Belaja Pemeliharan Alat-Alat Berat                        ', '', '0000-00-00 00:00:00'),
(513, '5.2.2.20.04.001', 'Belanja Pemeliharaan Traktor                         ', '', '0000-00-00 00:00:00'),
(514, '5.2.2.20.04.002', 'Belanja Pemeliharaan Buldozer                         ', '', '0000-00-00 00:00:00'),
(515, '5.2.2.20.04.003', 'Belanja Pemeliharaan Stoom Wals                        ', '', '0000-00-00 00:00:00'),
(516, '5.2.2.20.04.004', 'Belanja Pemeliharaan Eskavator                         ', '', '0000-00-00 00:00:00'),
(517, '5.2.2.20.04.005', 'Belanja Pemeliharaan Dump Truk                        ', '', '0000-00-00 00:00:00'),
(518, '5.2.2.20.04.006', 'Belanja Pemeliharaan Crane                         ', '', '0000-00-00 00:00:00'),
(519, '5.2.2.20.04.007', 'Belanja Pemeliharaan Kendaraan Penyapu Jalan                       ', '', '0000-00-00 00:00:00'),
(520, '5.2.2.20.04.008', 'Belanja Pemeliharaan Mesin Pengolah Semen                       ', '', '0000-00-00 00:00:00'),
(521, '5.2.2.20.04.009', 'Belanja Pemeliharaan Mesin Pengolah Air Bersih (Reservoir Osmosis)                    ', '', '0000-00-00 00:00:00'),
(522, '5.2.2.20.04.010', 'Belanja Pemeliharaan Mesin Giling                        ', '', '0000-00-00 00:00:00'),
(523, '5.2.2.20.04.011', 'Belanja Pemeliharaan Mesin Pembangkit Listrik (Diesel, Genset)                     ', '', '0000-00-00 00:00:00'),
(524, '5.2.2.20.04.012', 'Belanja Pemeliharaan Mesin Pengisi Air Tanah Dalam (Injection Well)                   ', '', '0000-00-00 00:00:00'),
(525, '5.2.2.20.04.013', 'Belanja Pemeliharaan Mesin Pengukur Tinggi Muka Air (AWLR)                    ', '', '0000-00-00 00:00:00'),
(526, '5.2.2.20.04.014', 'Belanja Pemeliharaan Mesin Pengukur Penurunan Muka Tanah (Ekstenso)                    ', '', '0000-00-00 00:00:00'),
(527, '5.2.2.20.04.015', 'Belanja Pemeliharaan Mesin Pengolah Air Laut Menjadi Air Tanah                   ', '', '0000-00-00 00:00:00'),
(528, '5.2.2.20.04.016', 'Belanja Pemeliharaan Asphalt Cutter                        ', '', '0000-00-00 00:00:00'),
(529, '5.2.2.20.04.017', 'Belanja Pemeliharaan Greader                         ', '', '0000-00-00 00:00:00'),
(530, '5.2.2.20.04.018', 'Belanja Pemeliharaan Tyre Roller                        ', '', '0000-00-00 00:00:00'),
(531, '5.2.2.20.04.019', 'Belanja Pemeliharaan Fork Lift                        ', '', '0000-00-00 00:00:00'),
(532, '5.2.2.20.04.020', 'Belanja Pemeliharaan Breaker                         ', '', '0000-00-00 00:00:00'),
(533, '5.2.2.20.04.021', 'Belanja Pemeliharaan Alat-Alat Laboratorium AMP                       ', '', '0000-00-00 00:00:00'),
(534, '5.2.2.20.04.022', 'Belanja Pemeliharaan Molen Truck                        ', '', '0000-00-00 00:00:00'),
(535, '5.2.2.20.04.023', 'Belanja Pemeliharaan Pompa Beton                        ', '', '0000-00-00 00:00:00'),
(536, '5.2.2.20.04.024', 'Belanja Pemeliharaan Asphalt Sprayer                        ', '', '0000-00-00 00:00:00'),
(537, '5.2.2.20.04.025', 'Belanja Pemeliharaan Cold Milling                        ', '', '0000-00-00 00:00:00'),
(538, '5.2.2.20.04.026', 'Belanja Pemeliharaan Beatching Plant                        ', '', '0000-00-00 00:00:00'),
(539, '5.2.2.20.04.027', 'Belanja Pemeliharaan Asphalt Mixing Plant                       ', '', '0000-00-00 00:00:00'),
(540, '5.2.2.20.04.028', 'Belanja Pemeliharaan Asphalt Finisher                        ', '', '0000-00-00 00:00:00'),
(541, '5.2.2.20.04.029', 'Belanja Pemeliharaan Shovel Loader                        ', '', '0000-00-00 00:00:00'),
(542, '5.2.2.20.04.030', 'Belanja Pemeliharaan Stone Crusher                        ', '', '0000-00-00 00:00:00'),
(543, '5.2.2.20.04.031', 'Belanja Pemeliharaan Asphalt Reciciling                        ', '', '0000-00-00 00:00:00'),
(544, '5.2.2.20.04.032', 'Belanja Pemeliharaan Direksi Keet                        ', '', '0000-00-00 00:00:00'),
(545, '5.2.2.20.04.033', 'Belanja Pemeliharaan Mobil Derek                        ', '', '0000-00-00 00:00:00'),
(546, '5.2.2.20.04.034', 'Belanja Pemeliharaan Jet Spayer                        ', '', '0000-00-00 00:00:00'),
(547, '5.2.2.20.04.035', 'Belanja Pemeliharaan Road Reader                        ', '', '0000-00-00 00:00:00'),
(548, '5.2.2.20.04.036', 'Belanja Pemeliharaan Dredger                         ', '', '0000-00-00 00:00:00'),
(549, '5.2.2.20.04.037', 'Belanja Pemeliharaan Ponton                         ', '', '0000-00-00 00:00:00'),
(550, '5.2.2.20.05', 'Belanja Pemeliharaan Alat-Alat Angkutan Darat Bermotor                      ', '', '0000-00-00 00:00:00'),
(551, '5.2.2.20.05.001', 'Belanja Pemeliharaan Alat-Alat Angkutan Darat Bermotor Sedan                     ', '', '0000-00-00 00:00:00'),
(552, '5.2.2.20.05.002', 'Belanja Pemeliharaan Alat-Alat Angkutan Darat Bermotor Jeep                     ', '', '0000-00-00 00:00:00'),
(553, '5.2.2.20.05.003', 'Belanja Pemeliharaan Alat-Alat Angkutan Darat Bermotor Station Wagon                    ', '', '0000-00-00 00:00:00'),
(554, '5.2.2.20.05.004', 'Belanja Pemeliharaan Alat-Alat Angkutan Darat Bermotor Bus                     ', '', '0000-00-00 00:00:00'),
(555, '5.2.2.20.05.005', 'Belanja Pemeliharaan Alat-Alat Angkutan Darat Bermotor Mikro Bus                    ', '', '0000-00-00 00:00:00'),
(556, '5.2.2.20.05.006', 'Belanja Pemeliharaan Alat-Alat Angkutan Darat Bermotor Truck                     ', '', '0000-00-00 00:00:00'),
(557, '5.2.2.20.05.007', 'Belanja Pemeliharaan Alat-Alat Angkutan Darat Bermotor Tangki (Air, Minyak, Tinja)                  ', '', '0000-00-00 00:00:00'),
(558, '5.2.2.20.05.008', 'Belanja Pemeliharaan Alat-Alat Angkutan Darat Bermotor Boks                     ', '', '0000-00-00 00:00:00'),
(559, '5.2.2.20.05.009', 'Belanja Pemeliharaan Alat-Alat Angkutan Darat Bermotor Pick Up                    ', '', '0000-00-00 00:00:00'),
(560, '5.2.2.20.05.010', 'Belanja Pemeliharaan Alat-Alat Angkutan Darat Bermotor Ambulans                     ', '', '0000-00-00 00:00:00'),
(561, '5.2.2.20.05.011', 'Belanja Pemeliharaan Alat-Alat Angkutan Darat Bermotor Pemadam Kebakaran / Mobil Pompa                 ', '', '0000-00-00 00:00:00'),
(562, '5.2.2.20.05.012', 'Belanja Pemeliharaan Alat-Alat Angkutan Darat Bermotor Sepeda Motor                    ', '', '0000-00-00 00:00:00'),
(563, '5.2.2.20.05.013', 'Belanja Pemeliharaan Alat-Alat Angkutan Darat Bermotor Lift / Elevator                   ', '', '0000-00-00 00:00:00'),
(564, '5.2.2.20.05.014', 'Belanja Pemeliharaan Alat-Alat Angkutan Darat Bermotor Tangga Berjalan                    ', '', '0000-00-00 00:00:00'),
(565, '5.2.2.20.05.015', 'Belanja Pemeliharaan Alat-Alat Angkutan Darat Bermotor Dinas Operasional Khusus                   ', '', '0000-00-00 00:00:00'),
(566, '5.2.2.20.05.016', 'Belanja Pemeliharaan Alat-Alat Angkutan Darat Bermotor Pompa Portabel                    ', '', '0000-00-00 00:00:00'),
(567, '5.2.2.20.06', 'Belanja Pemeliharaan Alat-Alat Angkutan Darat Tidak Bermotor                     ', '', '0000-00-00 00:00:00'),
(568, '5.2.2.20.06.001', 'Belanja Pemeliharaan Gerobak                         ', '', '0000-00-00 00:00:00'),
(569, '5.2.2.20.06.002', 'Belanja Pemeliharaan Pedati / Delman / Dokar / Bendi / Cidomo / Andong               ', '', '0000-00-00 00:00:00'),
(570, '5.2.2.20.06.003', 'Belanja Pemeliharaan Becak                         ', '', '0000-00-00 00:00:00'),
(571, '5.2.2.20.06.004', 'Belanja Pemeliharaan Sepeda                         ', '', '0000-00-00 00:00:00'),
(572, '5.2.2.20.06.005', 'Belanja Pemeliharaan Karavan                         ', '', '0000-00-00 00:00:00'),
(573, '5.2.2.20.06.006', 'Belanja Pemeliharaan Kontainer                         ', '', '0000-00-00 00:00:00'),
(574, '5.2.2.20.06.007', 'Belanja Pemeliharaan Direksi Keet                        ', '', '0000-00-00 00:00:00'),
(575, '5.2.2.20.07', 'Belanja Pemeliharaan Alat-Alat Angkutan di Air Bermotor                     ', '', '0000-00-00 00:00:00'),
(576, '5.2.2.20.07.001', 'Belanja Pemeliharaan Kapal Motor                        ', '', '0000-00-00 00:00:00'),
(577, '5.2.2.20.07.002', 'Belanja Pemeliharaan Kapal Feri                        ', '', '0000-00-00 00:00:00'),
(578, '5.2.2.20.07.003', 'Belanja Pemeliharaan Speed Boat                        ', '', '0000-00-00 00:00:00'),
(579, '5.2.2.20.07.004', 'Belanja Pemeliharaan Motor Boat / Motor Tempel                     ', '', '0000-00-00 00:00:00'),
(580, '5.2.2.20.07.005', 'Belanja Pemeliharaan Hydro Foil                        ', '', '0000-00-00 00:00:00'),
(581, '5.2.2.20.07.006', 'Belanja Pemeliharaan Jet Foil                        ', '', '0000-00-00 00:00:00'),
(582, '5.2.2.20.07.007', 'Belanja Pemeliharaan Kapal Tug Boat                       ', '', '0000-00-00 00:00:00'),
(583, '5.2.2.20.07.008', 'Belanja Pemeliharaan Kapal Tanker                        ', '', '0000-00-00 00:00:00'),
(584, '5.2.2.20.07.009', 'Belanja Pemeliharaan Kapal Kargo                        ', '', '0000-00-00 00:00:00'),
(585, '5.2.2.20.07.010', 'Belanja Pemeliharaan Long Boat                        ', '', '0000-00-00 00:00:00'),
(586, '5.2.2.20.07.011', 'Belanja Pemeliharaan Kapal Tunda / Tongkang                      ', '', '0000-00-00 00:00:00'),
(587, '5.2.2.20.07.012', 'Belanja Pemeliharaan Alat Penarik Kapal                       ', '', '0000-00-00 00:00:00'),
(588, '5.2.2.20.07.013', 'Belanja Pemeliharaan Alat Penarik Jaring                       ', '', '0000-00-00 00:00:00'),
(589, '5.2.2.20.08', 'Belanja Pemeliharaan Alat-Alat Angkutan di Air Tidak Bermotor                    ', '', '0000-00-00 00:00:00'),
(590, '5.2.2.20.08.001', 'Belanja Pemeliharaan Perahu Layar                        ', '', '0000-00-00 00:00:00'),
(591, '5.2.2.20.08.002', 'Belanja Pemeliharaan Perahu Sampan                        ', '', '0000-00-00 00:00:00'),
(592, '5.2.2.20.08.003', 'Belanja Pemeliharaan Perahu Tongkang                        ', '', '0000-00-00 00:00:00'),
(593, '5.2.2.20.08.004', 'Belanja Pemeliharaan Perahu Karet                        ', '', '0000-00-00 00:00:00'),
(594, '5.2.2.20.08.005', 'Belanja Pemeliharaan Perahu Rakit                        ', '', '0000-00-00 00:00:00'),
(595, '5.2.2.20.08.006', 'Belanja Pemeliharaan Perahu Sekoci                        ', '', '0000-00-00 00:00:00'),
(596, '5.2.2.20.08.007', 'Belanja Pemeliharaan Perahu Barang                        ', '', '0000-00-00 00:00:00'),
(597, '5.2.2.20.09', 'Belanja Pemeliharaan Alat-Alat Angkutan Udara                       ', '', '0000-00-00 00:00:00'),
(598, '5.2.2.20.09.001', 'Belanja Pemeliharaan Pesawat Kargo                        ', '', '0000-00-00 00:00:00'),
(599, '5.2.2.20.09.002', 'Belanja Pemeliharaan Pengadaan Pesawat Penumpang                       ', '', '0000-00-00 00:00:00'),
(600, '5.2.2.20.09.003', 'Belanja Pemeliharaan Pesawat Helikopter                        ', '', '0000-00-00 00:00:00'),
(601, '5.2.2.20.09.004', 'Belanja Pemeliharaan Pesawat Pemadam Kebakaran                       ', '', '0000-00-00 00:00:00'),
(602, '5.2.2.20.09.005', 'Belanja Pemeliharaan Pesawat Capung                        ', '', '0000-00-00 00:00:00'),
(603, '5.2.2.20.09.006', 'Belanja Pemeliharaan Pesawat Terbang Ampibi                       ', '', '0000-00-00 00:00:00'),
(604, '5.2.2.20.09.007', 'Belanja Pemeliharaan Pesawat Terbang Layang                       ', '', '0000-00-00 00:00:00'),
(605, '5.2.2.20.10', 'Belanja Pemeliharaan Alat-Alat Bengkel                        ', '', '0000-00-00 00:00:00'),
(606, '5.2.2.20.10.001', 'Belanja Pemeliharaan Mesin Las                        ', '', '0000-00-00 00:00:00'),
(607, '5.2.2.20.10.002', 'Belanja Pemeliharaan Mesin Bubut                        ', '', '0000-00-00 00:00:00'),
(608, '5.2.2.20.10.003', 'Belanja Pemeliharaan Mesin Dongkrak                        ', '', '0000-00-00 00:00:00'),
(609, '5.2.2.20.10.004', 'Belanja Pemeliharaan Mesin Kompresor                        ', '', '0000-00-00 00:00:00'),
(610, '5.2.2.20.10.005', 'Belanja Pemeliharaan Mesin Press                        ', '', '0000-00-00 00:00:00'),
(611, '5.2.2.20.10.006', 'Belanja Pemeliharaan Mesin Gurinda                        ', '', '0000-00-00 00:00:00'),
(612, '5.2.2.20.10.007', 'Belanja Pemeliharaan Perkakas Bengkel Konstruksi Logam                      ', '', '0000-00-00 00:00:00'),
(613, '5.2.2.20.10.008', 'Belanja Pemeliharaan Perkakas Bengkel Listrik                       ', '', '0000-00-00 00:00:00'),
(614, '5.2.2.20.10.009', 'Belanja Pemeliharaan Perkakas Bengkel Service                       ', '', '0000-00-00 00:00:00'),
(615, '5.2.2.20.10.010', 'Belanja Pemeliharaan Perkakas Pengangkat                        ', '', '0000-00-00 00:00:00'),
(616, '5.2.2.20.10.011', 'Belanja Pemeliharaan Perkakas Standar                        ', '', '0000-00-00 00:00:00'),
(617, '5.2.2.20.10.012', 'Belanja Pemeliharaan Perkakas Khusus                        ', '', '0000-00-00 00:00:00'),
(618, '5.2.2.20.10.013', 'Belanja Pemeliharaan Perkakas Bengkel Kerja                       ', '', '0000-00-00 00:00:00'),
(619, '5.2.2.20.10.014', 'Belanja Pemeliharaan Peralatan Tukang                        ', '', '0000-00-00 00:00:00'),
(620, '5.2.2.20.10.015', 'Belanja Pemeliharaan Mesin Pemotong                        ', '', '0000-00-00 00:00:00'),
(621, '5.2.2.20.10.016', 'Belanja Pemeliharaan Mesin Teknologi Robot                       ', '', '0000-00-00 00:00:00'),
(622, '5.2.2.20.10.017', 'Belanja Pemeliharaan Mesin Oven                        ', '', '0000-00-00 00:00:00'),
(623, '5.2.2.20.10.018', 'Belanja Pemeliharaan Mesin Pembuka Roda                       ', '', '0000-00-00 00:00:00'),
(624, '5.2.2.20.10.019', 'Belanja Pemeliharaan Mesin Praktikum                        ', '', '0000-00-00 00:00:00'),
(625, '5.2.2.20.11', 'Belanja Pemeliharaan Alat-Alat Pengolahan Pertanian dan Peternakan                     ', '', '0000-00-00 00:00:00'),
(626, '5.2.2.20.11.001', 'Belanja Pemeliharaan Penggiling Hasil Pertanian                       ', '', '0000-00-00 00:00:00'),
(627, '5.2.2.20.11.002', 'Belanja Pemeliharaan Alat Pengering Gabah                       ', '', '0000-00-00 00:00:00'),
(628, '5.2.2.20.11.003', 'Belanja Pemeliharaan Mesin Bajak                        ', '', '0000-00-00 00:00:00'),
(629, '5.2.2.20.11.004', 'Belanja Pemeliharaan Alat Penetas                        ', '', '0000-00-00 00:00:00'),
(630, '5.2.2.20.11.005', 'Belanja Pemeliharaan Alat Pengolahan                        ', '', '0000-00-00 00:00:00'),
(631, '5.2.2.20.11.006', 'Belanja Pemeliharaan Alat Peternakan                        ', '', '0000-00-00 00:00:00'),
(632, '5.2.2.20.11.007', 'Belanja Pemeliharaan Alat Tanaman                        ', '', '0000-00-00 00:00:00'),
(633, '5.2.2.20.11.008', 'Belanja Pemeliharaan Screen House                        ', '', '0000-00-00 00:00:00'),
(634, '5.2.2.20.11.009', 'Belanja Pemeliharaan Alat Panen                        ', '', '0000-00-00 00:00:00'),
(635, '5.2.2.20.11.010', 'Belanja Pemeliharaan Alat Penyimpanan                        ', '', '0000-00-00 00:00:00'),
(636, '5.2.2.20.12', 'Belanja Pemeliharaan Alat-Alat Peralatan Kantor                       ', '', '0000-00-00 00:00:00'),
(637, '5.2.2.20.12.001', 'Belanja Pemeliharaan Mesin Tik                        ', '', '0000-00-00 00:00:00'),
(638, '5.2.2.20.12.002', 'Belanja Pemeliharaan Mesin Hitung                        ', '', '0000-00-00 00:00:00'),
(639, '5.2.2.20.12.003', 'Belanja Pemeliharaan Mesin Stensil                        ', '', '0000-00-00 00:00:00'),
(640, '5.2.2.20.12.004', 'Belanja Pemeliharaan Mesin Fotocopy                        ', '', '0000-00-00 00:00:00'),
(641, '5.2.2.20.12.005', 'Belanja Pemeliharaan Mesin Cetak                        ', '', '0000-00-00 00:00:00'),
(642, '5.2.2.20.12.006', 'Belanja Pemeliharaan Mesin Jilid                        ', '', '0000-00-00 00:00:00'),
(643, '5.2.2.20.12.007', 'Belanja Pemeliharaan Mesin Potong Kertas                       ', '', '0000-00-00 00:00:00'),
(644, '5.2.2.20.12.008', 'Belanja Pemeliharaan Mesin Penghancur Kertas                       ', '', '0000-00-00 00:00:00'),
(645, '5.2.2.20.12.009', 'Belanja Pemeliharaan Papan Tulis Elektronik                       ', '', '0000-00-00 00:00:00'),
(646, '5.2.2.20.12.010', 'Belanja Pemeliharaan Papan Visual / Elektronik / Digital / Display                  ', '', '0000-00-00 00:00:00'),
(647, '5.2.2.20.12.011', 'Belanja Pemeliharaan Tabung Pemadam Kebakaran                       ', '', '0000-00-00 00:00:00'),
(648, '5.2.2.20.12.012', 'Belanja Pemeliharaan Mesin Faxmile                        ', '', '0000-00-00 00:00:00'),
(649, '5.2.2.20.12.013', 'Belanja Pemeliharaan Mesin Absensi                        ', '', '0000-00-00 00:00:00'),
(650, '5.2.2.20.12.014', 'Belanja Pemeliharaan Mesin Nomorator / Validasi                      ', '', '0000-00-00 00:00:00'),
(651, '5.2.2.20.12.015', 'Belanja Pemeliharaan Mesin Perporasi                        ', '', '0000-00-00 00:00:00'),
(652, '5.2.2.20.12.016', 'Belanja Pemeliharaan Mesin Press / Laminating                      ', '', '0000-00-00 00:00:00'),
(653, '5.2.2.20.13', 'Belanja Pemeliharaan Alat-Alat Perlengkapan Kantor                       ', '', '0000-00-00 00:00:00'),
(654, '5.2.2.20.13.001', 'Belanja Pemeliharaan Meja Gambar                        ', '', '0000-00-00 00:00:00'),
(655, '5.2.2.20.13.002', 'Belanja Pemeliharaan Almari                         ', '', '0000-00-00 00:00:00'),
(656, '5.2.2.20.13.003', 'Belanja Pemeliharaan Brankas                         ', '', '0000-00-00 00:00:00'),
(657, '5.2.2.20.13.004', 'Belanja Pemeliharaan Filling Kabinet                        ', '', '0000-00-00 00:00:00'),
(658, '5.2.2.20.13.005', 'Belanja Pemeliharaan White Board                        ', '', '0000-00-00 00:00:00'),
(659, '5.2.2.20.13.006', 'Belanja Pemeliharaan Penunjuk Waktu                        ', '', '0000-00-00 00:00:00'),
(660, '5.2.2.20.13.007', 'Belanja Pemeliharaan Alat Pembersih / Kebersihan                      ', '', '0000-00-00 00:00:00'),
(661, '5.2.2.20.13.008', 'Belanja Pemeliharaan Alat Pendingin                        ', '', '0000-00-00 00:00:00'),
(662, '5.2.2.20.13.009', 'Belanja Pemeliharaan Mesin Pompa Air                       ', '', '0000-00-00 00:00:00'),
(663, '5.2.2.20.13.010', 'Belanja Pemeliharaan Alat Gambar                        ', '', '0000-00-00 00:00:00'),
(664, '5.2.2.20.13.011', 'Belanja Pemeliharaan Alat Ukur                        ', '', '0000-00-00 00:00:00'),
(665, '5.2.2.20.13.012', 'Belanja Pemeliharaan Perlengkapan Gambar                        ', '', '0000-00-00 00:00:00'),
(666, '5.2.2.20.13.013', 'Belanja Pemeliharaan Rak Besi                        ', '', '0000-00-00 00:00:00'),
(667, '5.2.2.20.13.014', 'Belanja Pemeliharaan Tenda Peleton                        ', '', '0000-00-00 00:00:00'),
(668, '5.2.2.20.13.015', 'Belanja Pemeliharaan Alat Pemadam Kebakaran                       ', '', '0000-00-00 00:00:00'),
(669, '5.2.2.20.13.016', 'Belanja Pemeliharaan Alat Fogging                        ', '', '0000-00-00 00:00:00'),
(670, '5.2.2.20.13.017', 'Belanja Pemeliharaan Partisi / Penyekat Ruang                      ', '', '0000-00-00 00:00:00'),
(671, '5.2.2.20.14', 'Belanja Pemeliharaan Komputer                         ', '', '0000-00-00 00:00:00'),
(672, '5.2.2.20.14.001', 'Belanja Pemeliharaan Komputer Mainframe / Server                      ', '', '0000-00-00 00:00:00'),
(673, '5.2.2.20.14.002', 'Belanja Pemeliharaan Komputer / PC                       ', '', '0000-00-00 00:00:00'),
(674, '5.2.2.20.14.003', 'Belanja Pemeliharaan Komputer Note Book / Laptop                     ', '', '0000-00-00 00:00:00'),
(675, '5.2.2.20.14.004', 'Belanja Pemeliharaan Printer                         ', '', '0000-00-00 00:00:00'),
(676, '5.2.2.20.14.005', 'Belanja Pemeliharaan Scaner                         ', '', '0000-00-00 00:00:00'),
(677, '5.2.2.20.14.006', 'Belanja Pemeliharaan Monitor / Display                       ', '', '0000-00-00 00:00:00'),
(678, '5.2.2.20.14.007', 'Belanja Pemeliharaan CPU                         ', '', '0000-00-00 00:00:00'),
(679, '5.2.2.20.14.008', 'Belanja Pemeliharaan UPS / Stabilizer                       ', '', '0000-00-00 00:00:00'),
(680, '5.2.2.20.14.009', 'Belanja Pemeliharaan Kelengkapan Komputer (Flask Disk, Mouse, Keyboard, Hard Disk, Speaker, dll)                ', '', '0000-00-00 00:00:00'),
(681, '5.2.2.20.14.010', 'Belanja Pemeliharaan Peralatan Jaringan Komputer                       ', '', '0000-00-00 00:00:00'),
(682, '5.2.2.20.14.011', 'Belanja Pemeliharaan Perangkat Lunak                        ', '', '0000-00-00 00:00:00'),
(683, '5.2.2.20.14.012', 'Belanja Pemeliharaan Partisi / Penyekat Ruang                      ', '', '0000-00-00 00:00:00'),
(684, '5.2.2.20.15', 'Belanja Pemeliharaan Mebeulair                         ', '', '0000-00-00 00:00:00'),
(685, '5.2.2.20.15.001', 'Belanja Pemeliharaan Meja Kerja                        ', '', '0000-00-00 00:00:00'),
(686, '5.2.2.20.15.002', 'Belanja Pemeliharaan Meja Rapat                        ', '', '0000-00-00 00:00:00'),
(687, '5.2.2.20.15.003', 'Belanja Pemeliharaan Meja Makan                        ', '', '0000-00-00 00:00:00'),
(688, '5.2.2.20.15.004', 'Belanja Pemeliharaan Kursi Kerja                        ', '', '0000-00-00 00:00:00'),
(689, '5.2.2.20.15.005', 'Belanja Pemeliharaan Kursi Rapat                        ', '', '0000-00-00 00:00:00'),
(690, '5.2.2.20.15.006', 'Belanja Pemeliharaan Kursi Makan                        ', '', '0000-00-00 00:00:00'),
(691, '5.2.2.20.15.007', 'Belanja Pemeliharaan Tempat Tidur                        ', '', '0000-00-00 00:00:00'),
(692, '5.2.2.20.15.008', 'Belanja Pemeliharaan Sofa                         ', '', '0000-00-00 00:00:00'),
(693, '5.2.2.20.15.009', 'Belanja Pemeliharaan Rak Buku / TV / Kembang                    ', '', '0000-00-00 00:00:00'),
(694, '5.2.2.20.15.010', 'Belanja Pemeliharaan Lemari                         ', '', '0000-00-00 00:00:00'),
(695, '5.2.2.20.15.011', 'Belanja Pemeliharaan Diswar / Buffet                       ', '', '0000-00-00 00:00:00'),
(696, '5.2.2.20.15.012', 'Belanja Pemeliharaan Meja Belajar                        ', '', '0000-00-00 00:00:00'),
(697, '5.2.2.20.15.013', 'Belanja Pemeliharaan Kursi Belajar                        ', '', '0000-00-00 00:00:00'),
(698, '5.2.2.20.15.014', 'Belanja Pemeliharaan Papan Tulis / White Board                     ', '', '0000-00-00 00:00:00'),
(699, '5.2.2.20.15.015', 'Belanja Pemeliharaan Papan Pengumuman                        ', '', '0000-00-00 00:00:00'),
(700, '5.2.2.20.15.016', 'Belanja Pemeliharaan Bangku Istirahat                        ', '', '0000-00-00 00:00:00'),
(701, '5.2.2.20.15.017', 'Belanja Pemeliharaan Bangku Tunggu                        ', '', '0000-00-00 00:00:00'),
(702, '5.2.2.20.16', 'Belanja Pemeliharaan Peralatan Dapur                        ', '', '0000-00-00 00:00:00'),
(703, '5.2.2.20.16.001', 'Belanja Pemeliharaan Tabung Gas                        ', '', '0000-00-00 00:00:00'),
(704, '5.2.2.20.16.002', 'Belanja Pemeliharaan Kompor Gas                        ', '', '0000-00-00 00:00:00'),
(705, '5.2.2.20.16.003', 'Belanja Pemeliharaan Lemari Makan / Lemari Dapur                     ', '', '0000-00-00 00:00:00'),
(706, '5.2.2.20.16.004', 'Belanja Pemeliharaan Dispenser                         ', '', '0000-00-00 00:00:00'),
(707, '5.2.2.20.16.005', 'Belanja Pemeliharaan Kulkas                         ', '', '0000-00-00 00:00:00'),
(708, '5.2.2.20.16.006', 'Belanja Pemeliharaan Rak Piring                        ', '', '0000-00-00 00:00:00'),
(709, '5.2.2.20.16.007', 'Belanja Pemeliharaan Piring / Gelas / Mangkok / Cangkir / Sendok / Garpu / Pisau             ', '', '0000-00-00 00:00:00'),
(710, '5.2.2.20.16.008', 'Belanja Pemeliharaan Alat-Alat Dapur                        ', '', '0000-00-00 00:00:00'),
(711, '5.2.2.20.17', 'Belanja Pemeliharaan Penghias Ruangan Rumah Tangga                      ', '', '0000-00-00 00:00:00'),
(712, '5.2.2.20.17.001', 'Belanja Pemeliharaan Lampu Hias                        ', '', '0000-00-00 00:00:00'),
(713, '5.2.2.20.17.002', 'Belanja Pemeliharaan Jam Dinding / Meja                      ', '', '0000-00-00 00:00:00'),
(714, '5.2.2.20.17.003', 'Belanja Pemeliharaan Lemari Hias                        ', '', '0000-00-00 00:00:00'),
(715, '5.2.2.20.17.004', 'Belanja Pemeliharaan Meja Hias                        ', '', '0000-00-00 00:00:00'),
(716, '5.2.2.20.17.005', 'Belanja Pemeliharaan Hiasan                         ', '', '0000-00-00 00:00:00'),
(717, '5.2.2.20.17.006', 'Belanja Pemeliharaan Vertikal Blind / Korden                      ', '', '0000-00-00 00:00:00'),
(718, '5.2.2.20.18', 'Belanja Pemeliharaan Alat-Alat Studio                        ', '', '0000-00-00 00:00:00'),
(719, '5.2.2.20.18.001', 'Belanja Pemeliharaan Kamera                         ', '', '0000-00-00 00:00:00'),
(720, '5.2.2.20.18.002', 'Belanja Pemeliharaan Handycam                         ', '', '0000-00-00 00:00:00'),
(721, '5.2.2.20.18.003', 'Belanja Pemeliharaan Proyektor / Terawang                       ', '', '0000-00-00 00:00:00'),
(722, '5.2.2.20.18.004', 'Belanja Pemeliharaan Peralatan Studio Visual                       ', '', '0000-00-00 00:00:00'),
(723, '5.2.2.20.18.005', 'Belanja Pemeliharaan Peralatan Studio Video dan Film                     ', '', '0000-00-00 00:00:00'),
(724, '5.2.2.20.18.006', 'Belanja Pemeliharaan Peralatan Cetak Film                       ', '', '0000-00-00 00:00:00'),
(725, '5.2.2.20.18.007', 'Belanja Pemeliharaan OHP / Infocus / LCD / TV / HDTV                 ', '', '0000-00-00 00:00:00'),
(726, '5.2.2.20.18.008', 'Belanja Pemeliharaan CCTV                         ', '', '0000-00-00 00:00:00'),
(727, '5.2.2.20.18.009', 'Belanja Pemeliharaan Sound System                        ', '', '0000-00-00 00:00:00'),
(728, '5.2.2.20.18.010', 'Belanja Pemeliharaan Amplifier                         ', '', '0000-00-00 00:00:00'),
(729, '5.2.2.20.18.011', 'Belanja Pemeliharaan Teropong / Teleskop                       ', '', '0000-00-00 00:00:00'),
(730, '5.2.2.20.19', 'Belanja Pemeliharaan Alat-Alat Komunikasi                        ', '', '0000-00-00 00:00:00'),
(731, '5.2.2.20.19.001', 'Belanja Pemeliharaan Telepon                         ', '', '0000-00-00 00:00:00'),
(732, '5.2.2.20.19.002', 'Belanja Pemeliharaan Faximili                         ', '', '0000-00-00 00:00:00'),
(733, '5.2.2.20.19.003', 'Belanja Pemeliharaan Radio SSB                        ', '', '0000-00-00 00:00:00'),
(734, '5.2.2.20.19.004', 'Belanja Pemeliharaan Radio HF/ FM (Handy Talkie)                     ', '', '0000-00-00 00:00:00'),
(735, '5.2.2.20.19.005', 'Belanja Pemeliharaan Radio VHF                        ', '', '0000-00-00 00:00:00'),
(736, '5.2.2.20.19.006', 'Belanja Pemeliharaan Radio UHF                        ', '', '0000-00-00 00:00:00'),
(737, '5.2.2.20.19.007', 'Belanja Pemeliharaan Alat Sandi                        ', '', '0000-00-00 00:00:00'),
(738, '5.2.2.20.19.008', 'Belanja Pemeliharaan Alat Komunikasi Sosial                       ', '', '0000-00-00 00:00:00'),
(739, '5.2.2.20.19.009', 'Belanja Pemeliharaan Peralatan Pemancar MF / MW                     ', '', '0000-00-00 00:00:00'),
(740, '5.2.2.20.19.010', 'Belanja Pemeliharaan Peralatan Pemancar HF / SW                     ', '', '0000-00-00 00:00:00'),
(741, '5.2.2.20.19.011', 'Belanja Pemeliharaan Peralatan Pemancar VHF / FM                     ', '', '0000-00-00 00:00:00'),
(742, '5.2.2.20.19.012', 'Belanja Pemeliharaan Peralatan Pemancar UHF                       ', '', '0000-00-00 00:00:00'),
(743, '5.2.2.20.19.013', 'Belanja Pemeliharaan Jaringan Radio Link                       ', '', '0000-00-00 00:00:00'),
(744, '5.2.2.20.19.014', 'Belanja Pemeliharaan Jaringan Internet                        ', '', '0000-00-00 00:00:00'),
(745, '5.2.2.20.19.015', 'Belanja Pemeliharaan Jaringan LAN                        ', '', '0000-00-00 00:00:00'),
(746, '5.2.2.20.19.016', 'Belanja Pemeliharaan Jaringan Teknologi Informasi                       ', '', '0000-00-00 00:00:00'),
(747, '5.2.2.20.19.017', 'Belanja Pemeliharaan Receiver                         ', '', '0000-00-00 00:00:00'),
(748, '5.2.2.20.19.018', 'Belanja Pemeliharaan Handy Talkie                        ', '', '0000-00-00 00:00:00'),
(749, '5.2.2.20.20', 'Belanja Pemeliharaan Alat-Alat Ukur                        ', '', '0000-00-00 00:00:00'),
(750, '5.2.2.20.20.001', 'Belanja Pemeliharaan Timbangan                         ', '', '0000-00-00 00:00:00'),
(751, '5.2.2.20.20.002', 'Belanja Pemeliharaan Teodolite                         ', '', '0000-00-00 00:00:00'),
(752, '5.2.2.20.20.003', 'Belanja Pemeliharaan Alat Uji Emisi                       ', '', '0000-00-00 00:00:00'),
(753, '5.2.2.20.20.004', 'Belanja Pemeliharaan Alat GPS                        ', '', '0000-00-00 00:00:00'),
(754, '5.2.2.20.20.005', 'Belanja Pemeliharaan Kompas / Peralatan Navigasi                      ', '', '0000-00-00 00:00:00'),
(755, '5.2.2.20.20.006', 'Belanja Pemeliharaan Bejana Ukur                        ', '', '0000-00-00 00:00:00'),
(756, '5.2.2.20.20.007', 'Belanja Pemeliharaan Barometer                         ', '', '0000-00-00 00:00:00'),
(757, '5.2.2.20.20.008', 'Belanja Pemeliharaan Seismograph                         ', '', '0000-00-00 00:00:00'),
(758, '5.2.2.20.20.009', 'Belanja Pemeliharaan Ultrasonograph                         ', '', '0000-00-00 00:00:00'),
(759, '5.2.2.20.20.010', 'Belanja Pemeliharaan Alat Ukur Universal                       ', '', '0000-00-00 00:00:00'),
(760, '5.2.2.20.20.011', 'Belanja Pemeliharaan Alat Ukur Test Inteligensi                      ', '', '0000-00-00 00:00:00'),
(761, '5.2.2.20.20.012', 'Belanja Pemeliharaan Tes Alat Kepribadian                       ', '', '0000-00-00 00:00:00'),
(762, '5.2.2.20.20.013', 'Belanja Pemeliharaan Alat Tes Klinis                       ', '', '0000-00-00 00:00:00'),
(763, '5.2.2.20.20.014', 'Belanja Pemeliharaan Alat Ukur Pemetaaan Darat / Udara / Laut                  ', '', '0000-00-00 00:00:00'),
(764, '5.2.2.20.20.015', 'Belanja Pemeliharaan Ukur Geodesi                        ', '', '0000-00-00 00:00:00'),
(765, '5.2.2.20.20.016', 'Belanja Pemeliharaan Uji Emisi                        ', '', '0000-00-00 00:00:00'),
(766, '5.2.2.20.20.017', 'Belanja Pemeliharaan Kalibrasi Alat Pengukuran                       ', '', '0000-00-00 00:00:00'),
(767, '5.2.2.20.20.018', 'Belanja Pemeliharaan Kalibrasi Alat Pengujian Konstruksi                      ', '', '0000-00-00 00:00:00'),
(768, '5.2.2.20.20.019', 'Belanja Pemeliharaan Alat Ukur Telimetri                       ', '', '0000-00-00 00:00:00'),
(769, '5.2.2.20.21', 'Belanja Pemeliharaan Alat-Alat Kedokteran                        ', '', '0000-00-00 00:00:00'),
(770, '5.2.2.20.21.001', 'Belanja Pemeliharaan Alat-Alat  Kedokteran Umum                      ', '', '0000-00-00 00:00:00'),
(771, '5.2.2.20.21.002', 'Belanja Pemeliharaan Alat-Alat  Kedokteran Gigi                      ', '', '0000-00-00 00:00:00'),
(772, '5.2.2.20.21.003', 'Belanja Pemeliharaan Alat-Alat Kedokteran THT                       ', '', '0000-00-00 00:00:00'),
(773, '5.2.2.20.21.004', 'Belanja Pemeliharaan Alat-Alat Kedokteran Mata                       ', '', '0000-00-00 00:00:00'),
(774, '5.2.2.20.21.005', 'Belanja Pemeliharaan Alat-Alat Kedokteran Bedah                       ', '', '0000-00-00 00:00:00'),
(775, '5.2.2.20.21.006', 'Belanja Pemeliharaan Alat-Alat Kedokteran Anak                       ', '', '0000-00-00 00:00:00'),
(776, '5.2.2.20.21.007', 'Belanja Pemeliharaan Alat-Alat Kebidanan dan Penyakit Kandungan                     ', '', '0000-00-00 00:00:00'),
(777, '5.2.2.20.21.008', 'Belanja Pemeliharaan Alat-Alat Kedokteran Kulit dan Kelamin                     ', '', '0000-00-00 00:00:00'),
(778, '5.2.2.20.21.009', 'Belanja Pemeliharaan Alat-Alat Kardiologi                        ', '', '0000-00-00 00:00:00'),
(779, '5.2.2.20.21.010', 'Belanja Pemeliharaan Alat-Alat Neurologi                        ', '', '0000-00-00 00:00:00'),
(780, '5.2.2.20.21.011', 'Belanja Pemeliharaan Alat-Alat Orthopedi                        ', '', '0000-00-00 00:00:00'),
(781, '5.2.2.20.21.012', 'Belanja Pemeliharaan Alat-Alat Hewan                        ', '', '0000-00-00 00:00:00'),
(782, '5.2.2.20.21.013', 'Belanja Pemeliharaan Alat-Alat Farmasi                        ', '', '0000-00-00 00:00:00'),
(783, '5.2.2.20.21.014', 'Belanja Pemeliharaan Alat-Alat Penyakit Dalam / Internis                     ', '', '0000-00-00 00:00:00'),
(784, '5.2.2.20.21.015', 'Belanja Pemeliharaan Alat-Alat Kedokteran KB                       ', '', '0000-00-00 00:00:00'),
(785, '5.2.2.20.21.016', 'Belanja Pemeliharaan Alat-Alat Radiologi                        ', '', '0000-00-00 00:00:00'),
(786, '5.2.2.20.21.017', 'Belanja Pemeliharaan Alat-Alat Kamar Operasi                       ', '', '0000-00-00 00:00:00'),
(787, '5.2.2.20.21.018', 'Belanja Pemeliharaan Alat-Alat Ruang HCU / ICCU                     ', '', '0000-00-00 00:00:00'),
(788, '5.2.2.20.21.019', 'Belanja Pemeliharaan Alat-Alat Ruang Kamar Perawatan                      ', '', '0000-00-00 00:00:00'),
(789, '5.2.2.20.22', 'Belanja Pemeliharaan Alat-Alat Laboratorium                        ', '', '0000-00-00 00:00:00'),
(790, '5.2.2.20.22.001', 'Belanja Pemeliharaan Alat-Alat Laboratorium Biologi                       ', '', '0000-00-00 00:00:00'),
(791, '5.2.2.20.22.002', 'Belanja Pemeliharaan Alat-Alat Laboratorium Fisika / Geologi / Geodesi                   ', '', '0000-00-00 00:00:00'),
(792, '5.2.2.20.22.003', 'Belanja Pemeliharaan Alat-Alat Laboratorium Kimia                       ', '', '0000-00-00 00:00:00'),
(793, '5.2.2.20.22.004', 'Belanja Pemeliharaan Alat-Alat Laboratorium Pertanian                       ', '', '0000-00-00 00:00:00'),
(794, '5.2.2.20.22.005', 'Belanja Pemeliharaan Alat-Alat Laboratorium Peternakan                       ', '', '0000-00-00 00:00:00'),
(795, '5.2.2.20.22.006', 'Belanja Pemeliharaan Alat-Alat Laboratorium Perkebunan                       ', '', '0000-00-00 00:00:00'),
(796, '5.2.2.20.22.007', 'Belanja Pemeliharaan Alat-Alat Laboratorium Perikanan                       ', '', '0000-00-00 00:00:00'),
(797, '5.2.2.20.22.008', 'Belanja Pemeliharaan Alat-Alat Laboratorium Bahasa                       ', '', '0000-00-00 00:00:00'),
(798, '5.2.2.20.22.009', 'Belanja Pemeliharaan Alat-Alat Peraga / Praktek Sekolah                     ', '', '0000-00-00 00:00:00'),
(799, '5.2.2.20.22.010', 'Belanja Pemeliharaan Alat-Alat Laboratorium Kesehatan                       ', '', '0000-00-00 00:00:00'),
(800, '5.2.2.20.22.011', 'Belanja Pemeliharaan Alat-Alat Laboratorium Mikrobiologi                       ', '', '0000-00-00 00:00:00'),
(801, '5.2.2.20.22.012', 'Belanja Pemeliharaan Alat-Alat Laboratorium Hidrokimia                       ', '', '0000-00-00 00:00:00'),
(802, '5.2.2.20.22.013', 'Belanja Pemeliharaan Alat-Alat Laboratorium Model Hidrolika                      ', '', '0000-00-00 00:00:00'),
(803, '5.2.2.20.22.014', 'Belanja Pemeliharaan Alat-Alat Laboratorium Buatan                       ', '', '0000-00-00 00:00:00'),
(804, '5.2.2.20.22.015', 'Belanja Pemeliharaan Alat-Alat Laboratorium Lapangan                       ', '', '0000-00-00 00:00:00'),
(805, '5.2.2.20.22.016', 'Belanja Pemeliharaan Alat-Alat Uji Laboratorium                       ', '', '0000-00-00 00:00:00'),
(806, '5.2.2.20.22.017', 'Belanja Pemeliharaan Alat-Alat Laboratorium Kehutanan                       ', '', '0000-00-00 00:00:00'),
(807, '5.2.2.20.22.018', 'Belanja Pemeliharaan Alat-Alat Laboratorium Kesehatan Hewan / Kesmavet                    ', '', '0000-00-00 00:00:00'),
(808, '5.2.2.20.22.019', 'Belanja Pemeliharaan Alat-Alat Laboratorium Tanaman                       ', '', '0000-00-00 00:00:00'),
(809, '5.2.2.20.22.020', 'Belanja Pemeliharaan Alat-Alat Laboratorium Beatching Plant                      ', '', '0000-00-00 00:00:00'),
(810, '5.2.2.20.22.021', 'Belanja Pemeliharaan Alat-Alat Laboratorium AMP                       ', '', '0000-00-00 00:00:00'),
(811, '5.2.2.20.23', 'Belanja Pemeliharaan Jaringan Air                        ', '', '0000-00-00 00:00:00'),
(812, '5.2.2.20.23.001', 'Belanja Pemeliharaan Bendungan                         ', '', '0000-00-00 00:00:00'),
(813, '5.2.2.20.23.002', 'Belanja Pemeliharaan Waduk                         ', '', '0000-00-00 00:00:00'),
(814, '5.2.2.20.23.003', 'Belanja Pemeliharaan Kanal Permukaan                        ', '', '0000-00-00 00:00:00'),
(815, '5.2.2.20.23.004', 'Belanja Pemeliharaan Kanal Bawah Tanah                       ', '', '0000-00-00 00:00:00'),
(816, '5.2.2.20.23.005', 'Belanja Pemeliharaan Jaringan Irigasi                        ', '', '0000-00-00 00:00:00'),
(817, '5.2.2.20.23.006', 'Belanja Pemeliharaan Jaringan Air Bersih / Air Minum                    ', '', '0000-00-00 00:00:00'),
(818, '5.2.2.20.23.007', 'Belanja Pemeliharaan Reservoir / Sumur Resapan                      ', '', '0000-00-00 00:00:00'),
(819, '5.2.2.20.23.008', 'Belanja Pemeliharaan Pintu Air                        ', '', '0000-00-00 00:00:00'),
(820, '5.2.2.20.23.009', 'Belanja Pemeliharaan Saluran Air                        ', '', '0000-00-00 00:00:00'),
(821, '5.2.2.20.23.010', 'Belanja Pemeliharaan MCK                         ', '', '0000-00-00 00:00:00'),
(822, '5.2.2.20.23.011', 'Belanja Pemeliharaan Bangunan Rumah Pompa                       ', '', '0000-00-00 00:00:00'),
(823, '5.2.2.20.23.012', 'Belanja Pemeliharaan Bangunan Pantai                        ', '', '0000-00-00 00:00:00'),
(824, '5.2.2.20.23.013', 'Belanja Pemeliharaan Saringan Sampah                        ', '', '0000-00-00 00:00:00'),
(825, '5.2.2.20.23.014', 'Belanja Pemeliharaan Instalasi Pengolahan Sampah                       ', '', '0000-00-00 00:00:00'),
(826, '5.2.2.20.23.015', 'Belanja Pemeliharaan Instalasi Pengolahan Air Kotor / Limbah (IPAK / IPAL)                 ', '', '0000-00-00 00:00:00'),
(827, '5.2.2.20.24', 'Belanja Pemeliharaan Penerangan Jalan, Taman dan Hutan Kota                    ', '', '0000-00-00 00:00:00'),
(828, '5.2.2.20.24.001', 'Belanja Pemeliharaan Lampu Hias Jalan                       ', '', '0000-00-00 00:00:00'),
(829, '5.2.2.20.24.002', 'Belanja Pemeliharaan Lampu Hias Taman                       ', '', '0000-00-00 00:00:00'),
(830, '5.2.2.20.24.003', 'Belanja Pemeliharaan Lampu Penerangan Hutan Kota                      ', '', '0000-00-00 00:00:00'),
(831, '5.2.2.20.24.004', 'Belanja Pemeliharaan Lampu Penerangan Lingkungan                       ', '', '0000-00-00 00:00:00'),
(832, '5.2.2.20.24.005', 'Belanja Pemeliharaan Lampu Penerangan Sarana dan Prasarana Umum                    ', '', '0000-00-00 00:00:00'),
(833, '5.2.2.20.24.006', 'Belanja Pemeliharaan Lampu Penerangan Gedung / Kantor                     ', '', '0000-00-00 00:00:00'),
(834, '5.2.2.20.25', 'Belanja Pemeliharaan Instalasi Listrik dan Telepon                      ', '', '0000-00-00 00:00:00'),
(835, '5.2.2.20.25.001', 'Belanja Pemeliharaan Instalasi Listrik                        ', '', '0000-00-00 00:00:00'),
(836, '5.2.2.20.25.002', 'Belanja Pemeliharaan Instalasi Telepon                        ', '', '0000-00-00 00:00:00'),
(837, '5.2.2.20.25.003', 'Belanja Pemeliharaan Instalasi Jaringan Utilitas PJU                      ', '', '0000-00-00 00:00:00'),
(838, '5.2.2.20.26', 'Belanja Pemeliharaan Bangunan                         ', '', '0000-00-00 00:00:00'),
(839, '5.2.2.20.26.001', 'Belanja Pemeliharaan Gedung Kantor                        ', '', '0000-00-00 00:00:00'),
(840, '5.2.2.20.26.002', 'Belanja Pemeliharaan Rumah Jabatan                        ', '', '0000-00-00 00:00:00'),
(841, '5.2.2.20.26.003', 'Belanja Pemeliharaan Rumah Dinas                        ', '', '0000-00-00 00:00:00'),
(842, '5.2.2.20.26.004', 'Belanja Pemeliharaan Gedung Gudang                        ', '', '0000-00-00 00:00:00'),
(843, '5.2.2.20.26.005', 'Belanja Pemeliharaan Bangunan Bersejarah                        ', '', '0000-00-00 00:00:00'),
(844, '5.2.2.20.26.006', 'Belanja Pemeliharaan Bangunan Monumen                        ', '', '0000-00-00 00:00:00'),
(845, '5.2.2.20.26.007', 'Belanja Pemeliharaan Tugu Peringatan                        ', '', '0000-00-00 00:00:00'),
(846, '5.2.2.20.26.008', 'Belanja Pemeliharaan Gedung Asrama Karyawan                       ', '', '0000-00-00 00:00:00'),
(847, '5.2.2.20.26.009', 'Belanja Pemeliharaan Sarana Pendidikan dan Pelatihan                      ', '', '0000-00-00 00:00:00'),
(848, '5.2.2.20.26.010', 'Belanja Pemeliharaan Gedung Sarana Olahraga                       ', '', '0000-00-00 00:00:00'),
(849, '5.2.2.20.26.011', 'Belanja Pemeliharaan Gedung Balai Rakyat / Karang Taruna                    ', '', '0000-00-00 00:00:00'),
(850, '5.2.2.20.26.012', 'Belanja Pemeliharaan Gedung Sarana / Tempat Ibadah                     ', '', '0000-00-00 00:00:00'),
(851, '5.2.2.20.26.013', 'Belanja Pemeliharaan Gedung Panti Sosial / Panti Jompo                    ', '', '0000-00-00 00:00:00'),
(852, '5.2.2.20.26.014', 'Belanja Pemeliharaan Gedung Rumah Susun                       ', '', '0000-00-00 00:00:00'),
(853, '5.2.2.20.26.015', 'Belanja Pemeliharaan Kandang Binatang                        ', '', '0000-00-00 00:00:00'),
(854, '5.2.2.20.26.016', 'Belanja Pemeliharaan Terminal                         ', '', '0000-00-00 00:00:00'),
(855, '5.2.2.20.26.017', 'Belanja Pemeliharaan Dermaga Laut                        ', '', '0000-00-00 00:00:00'),
(856, '5.2.2.20.26.018', 'Belanja Pemeliharaan Halte Bus                        ', '', '0000-00-00 00:00:00'),
(857, '5.2.2.20.26.019', 'Belanja Pemeliharaan DIPO Sampah                        ', '', '0000-00-00 00:00:00'),
(858, '5.2.2.20.26.020', 'Belanja Pemeliharaan Transito Sampah                        ', '', '0000-00-00 00:00:00'),
(859, '5.2.2.20.26.021', 'Belanja Pemeliharaan Batas Wilayah / Tugu Titik Kontrol                    ', '', '0000-00-00 00:00:00'),
(860, '5.2.2.20.26.022', 'Belanja Pemeliharaan Air Mancur                        ', '', '0000-00-00 00:00:00'),
(861, '5.2.2.20.26.023', 'Belanja Pemeliharaan Gedung Bengkel                        ', '', '0000-00-00 00:00:00'),
(862, '5.2.2.20.26.024', 'Belanja Pemeliharaan Gedung Kesenian / Kebudayaan                      ', '', '0000-00-00 00:00:00'),
(863, '5.2.2.20.26.025', 'Belanja Pemeliharaan Mercu Suar                        ', '', '0000-00-00 00:00:00'),
(864, '5.2.2.20.26.026', 'Belanja Pemeliharaan Sarana dan Prasarana Gedung Pasar                     ', '', '0000-00-00 00:00:00'),
(865, '5.2.2.20.27', 'Belanja Pemeliharaan Buku /  Kepustakaan                      ', '', '0000-00-00 00:00:00'),
(866, '5.2.2.20.27.001', 'Belanja Pemeliharaan Buku Matematika                        ', '', '0000-00-00 00:00:00'),
(867, '5.2.2.20.27.002', 'Belanja Pemeliharaan Buku Fisika                        ', '', '0000-00-00 00:00:00'),
(868, '5.2.2.20.27.003', 'Belanja Pemeliharaan Buku Kimia                        ', '', '0000-00-00 00:00:00'),
(869, '5.2.2.20.27.004', 'Belanja Pemeliharaan Buku Biologi                        ', '', '0000-00-00 00:00:00'),
(870, '5.2.2.20.27.005', 'Belanja Pemeliharaan Buku Biografi                        ', '', '0000-00-00 00:00:00'),
(871, '5.2.2.20.27.006', 'Belanja Pemeliharaan Buku Geografi                        ', '', '0000-00-00 00:00:00'),
(872, '5.2.2.20.27.007', 'Belanja Pemeliharaan Buku Astronomi                        ', '', '0000-00-00 00:00:00'),
(873, '5.2.2.20.27.008', 'Belanja Pemeliharaan Buku Arkeologi                        ', '', '0000-00-00 00:00:00'),
(874, '5.2.2.20.27.009', 'Belanja Pemeliharaan Buku Bahasa dan Sastra                      ', '', '0000-00-00 00:00:00'),
(875, '5.2.2.20.27.010', 'Belanja Pemeliharaan Buku Keagamaan                        ', '', '0000-00-00 00:00:00'),
(876, '5.2.2.20.27.011', 'Belanja Pemeliharaan Buku Sejarah                        ', '', '0000-00-00 00:00:00'),
(877, '5.2.2.20.27.012', 'Belanja Pemeliharaan Buku Seni dan Budaya                      ', '', '0000-00-00 00:00:00'),
(878, '5.2.2.20.27.013', 'Belanja Pemeliharaan Buku Ilmu Pengetahuan Umum                      ', '', '0000-00-00 00:00:00'),
(879, '5.2.2.20.27.014', 'Belanja Pemeliharaan Buku Ilmu Pengetahuan Sosial                      ', '', '0000-00-00 00:00:00'),
(880, '5.2.2.20.27.015', 'Belanja Pemeliharaan Buku Ilmu Politik dan Ketatanegaraan                     ', '', '0000-00-00 00:00:00'),
(881, '5.2.2.20.27.016', 'Belanja Pemeliharaan Buku Ilmu Pengetahuan dan Teknologi                     ', '', '0000-00-00 00:00:00'),
(882, '5.2.2.20.27.017', 'Belanja Pemeliharaan Buku Ensiklopedia                        ', '', '0000-00-00 00:00:00'),
(883, '5.2.2.20.27.018', 'Belanja Pemeliharaan Buku Kamus Bahasa                       ', '', '0000-00-00 00:00:00'),
(884, '5.2.2.20.27.019', 'Belanja Pemeliharaan Buku Ekonomi dan Keuangan                      ', '', '0000-00-00 00:00:00'),
(885, '5.2.2.20.27.020', 'Belanja Pemeliharaan Buku Industri dan Perdagangan                      ', '', '0000-00-00 00:00:00'),
(886, '5.2.2.20.27.021', 'Belanja Pemeliharaan Buku Peraturan  Perundang-undangan                      ', '', '0000-00-00 00:00:00'),
(887, '5.2.2.20.27.022', 'Belanja Pemeliharaan Buku Naskah                        ', '', '0000-00-00 00:00:00'),
(888, '5.2.2.20.27.023', 'Belanja Pemeliharaan Terbitan Berkala (Jurnal, Compact Disk)                     ', '', '0000-00-00 00:00:00'),
(889, '5.2.2.20.27.024', 'Belanja Pemeliharaan Mikrofilm                         ', '', '0000-00-00 00:00:00'),
(890, '5.2.2.20.27.025', 'Belanja Pemeliharaan Peta / Atlas / Globe                     ', '', '0000-00-00 00:00:00'),
(891, '5.2.2.20.27.026', 'Belanja Pemeliharaan Buku Umum                        ', '', '0000-00-00 00:00:00');
INSERT INTO `tr_rekening` (`id`, `kode`, `nama`, `insert_user`, `insert_datetime`) VALUES
(892, '5.2.2.20.27.027', 'Belanja Pemeliharaan Buku Cerita Rakyat                       ', '', '0000-00-00 00:00:00'),
(893, '5.2.2.20.27.028', 'Belanja Pemeliharaan Buku Filsafat                        ', '', '0000-00-00 00:00:00'),
(894, '5.2.2.20.27.029', 'Belanja Pemeliharaan Buku Ilmu Pengetahuan Praktis                      ', '', '0000-00-00 00:00:00'),
(895, '5.2.2.20.27.030', 'Belanja Pemeliharaan Buku Arsitektur                        ', '', '0000-00-00 00:00:00'),
(896, '5.2.2.20.27.031', 'Belanja Pemeliharaan Buku Geodesi                        ', '', '0000-00-00 00:00:00'),
(897, '5.2.2.20.27.032', 'Belanja Pemeliharaan Buku Olahraga                        ', '', '0000-00-00 00:00:00'),
(898, '5.2.2.20.27.033', 'Belanja Pemeliharaan Buku Geologi                        ', '', '0000-00-00 00:00:00'),
(899, '5.2.2.20.27.034', 'Belanja Pemeliharaan Buku Kedokteran                        ', '', '0000-00-00 00:00:00'),
(900, '5.2.2.20.27.035', 'Belanja Pemeliharaan Buku Bahan Ajar                       ', '', '0000-00-00 00:00:00'),
(901, '5.2.2.20.27.036', 'Belanja Pemeliharaan Barang Perpustakaan                        ', '', '0000-00-00 00:00:00'),
(902, '5.2.2.20.27.037', 'Belanja Pemeliharaan Peta Wilayah                        ', '', '0000-00-00 00:00:00'),
(903, '5.2.2.20.27.038', 'Belanja Pemeliharaan Karya Grafika                        ', '', '0000-00-00 00:00:00'),
(904, '5.2.2.20.27.039', 'Belanja Pemeliharaan Alat Peraga Pendidikan                       ', '', '0000-00-00 00:00:00'),
(905, '5.2.2.20.28', 'Belanja Pemeliharaan Barang Bercorak Kesenian, Kebudayaan                      ', '', '0000-00-00 00:00:00'),
(906, '5.2.2.20.28.001', 'Belanja Pemeliharaan Lukisan / Foto                       ', '', '0000-00-00 00:00:00'),
(907, '5.2.2.20.28.002', 'Belanja Pemeliharaan Patung                         ', '', '0000-00-00 00:00:00'),
(908, '5.2.2.20.28.003', 'Belanja Pemeliharaan Ukiran                         ', '', '0000-00-00 00:00:00'),
(909, '5.2.2.20.28.004', 'Belanja Pemeliharaan Pahatan                         ', '', '0000-00-00 00:00:00'),
(910, '5.2.2.20.28.005', 'Belanja Pemeliharaan Batu Alam                        ', '', '0000-00-00 00:00:00'),
(911, '5.2.2.20.28.006', 'Belanja Pemeliharaan Maket / Miniatur / Diorama                     ', '', '0000-00-00 00:00:00'),
(912, '5.2.2.20.28.007', 'Belanja Pemeliharaan Alat Musik Kesenian                       ', '', '0000-00-00 00:00:00'),
(913, '5.2.2.20.28.008', 'Belanja Pemeliharaan Barang Kesenian                        ', '', '0000-00-00 00:00:00'),
(914, '5.2.2.20.28.009', 'Belanja Pemeliharaan Benda-Benda Bersejarah                        ', '', '0000-00-00 00:00:00'),
(915, '5.2.2.20.28.010', 'Belanja Pemeliharaan Barang Kerajinan Seni                       ', '', '0000-00-00 00:00:00'),
(916, '5.2.2.20.28.011', 'Belanja Pemeliharaan Pakaian Adat Nusantara                       ', '', '0000-00-00 00:00:00'),
(917, '5.2.2.20.29', 'Belanja Pemeliharaan Hewan / Ternak dan Tanaman                     ', '', '0000-00-00 00:00:00'),
(918, '5.2.2.20.29.001', 'Belanja Pemeliharaan Hewan Kebun Binatang                       ', '', '0000-00-00 00:00:00'),
(919, '5.2.2.20.29.002', 'Belanja Pemeliharaan Ternak                         ', '', '0000-00-00 00:00:00'),
(920, '5.2.2.20.29.003', 'Belanja Pemeliharaan Tanaman                         ', '', '0000-00-00 00:00:00'),
(921, '5.2.2.20.29.004', 'Belanja Pemeliharaan Binatang Peliharaan                        ', '', '0000-00-00 00:00:00'),
(922, '5.2.2.20.29.005', 'Belanja Pemeliharaan Tanaman Perkebunan                        ', '', '0000-00-00 00:00:00'),
(923, '5.2.2.20.29.006', 'Belanja Pemeliharaan Tanaman Hortikultura                        ', '', '0000-00-00 00:00:00'),
(924, '5.2.2.20.29.007', 'Belanja Pemeliharaan Tanaman Khusus / Langka                      ', '', '0000-00-00 00:00:00'),
(925, '5.2.2.20.30', 'Belanja Pemeliharaan Alat-Alat Persenjataan / Keamanan                      ', '', '0000-00-00 00:00:00'),
(926, '5.2.2.20.30.001', 'Belanja Pemeliharaan Senjata Api                        ', '', '0000-00-00 00:00:00'),
(927, '5.2.2.20.30.002', 'Belanja Pemeliharaan Radar                         ', '', '0000-00-00 00:00:00'),
(928, '5.2.2.20.30.003', 'Belanja Pemeliharaan Mobil Water Canon                       ', '', '0000-00-00 00:00:00'),
(929, '5.2.2.20.30.004', 'Belanja Pemeliharaan Detektor Logam                        ', '', '0000-00-00 00:00:00'),
(930, '5.2.2.20.30.005', 'Belanja Pemeliharaan Alarm / Sirene                       ', '', '0000-00-00 00:00:00'),
(931, '5.2.2.20.30.006', 'Belanja Pemeliharaan Senjata Bius / Gas                      ', '', '0000-00-00 00:00:00'),
(932, '5.2.2.20.31', 'Belanja Pemeliharaan Rambu-Rambu                         ', '', '0000-00-00 00:00:00'),
(933, '5.2.2.20.31.001', 'Belanja Pemeliharaan Rambu Darat                        ', '', '0000-00-00 00:00:00'),
(934, '5.2.2.20.31.002', 'Belanja Pemeliharaan Rambu Laut / Sungai                      ', '', '0000-00-00 00:00:00'),
(935, '5.2.2.20.31.003', 'Belanja Pemeliharaan Rambu Udara                        ', '', '0000-00-00 00:00:00'),
(936, '5.2.2.20.32', 'Belanja Pemeliharan Taman dan Jalur Hijau                      ', '', '0000-00-00 00:00:00'),
(937, '5.2.2.20.32.001', 'Belanja Pemeliharaan Taman Air Mancur                       ', '', '0000-00-00 00:00:00'),
(938, '5.2.2.20.32.002', 'Belanja Pemeliharaan Taman dan Jalur Hijau                      ', '', '0000-00-00 00:00:00'),
(939, '5.2.2.20.33', 'Belanja Pemeliharan Pagar                         ', '', '0000-00-00 00:00:00'),
(940, '5.2.2.20.33.001', 'Belanja Pemeliharaan Pagar Pengaman Jalan                       ', '', '0000-00-00 00:00:00'),
(941, '5.2.2.20.33.002', 'Belanja Pemeliharaan Pagar Taman                        ', '', '0000-00-00 00:00:00'),
(942, '5.2.2.20.34', 'Belanja Pemeliharan Alat dan Sarana Olah Raga                     ', '', '0000-00-00 00:00:00'),
(943, '5.2.2.20.34.001', 'Belanja Pemeliharaan Alat Olah Raga Lapangan / Out Door                   ', '', '0000-00-00 00:00:00'),
(944, '5.2.2.20.34.002', 'Belanja Pemeliharaan Alat Olah Raga Air                      ', '', '0000-00-00 00:00:00'),
(945, '5.2.2.20.34.003', 'Belanja Pemeliharaan Alat Olah Raga Udara                      ', '', '0000-00-00 00:00:00'),
(946, '5.2.2.20.34.004', 'Belanja Pemeliharaan Alat Olah Raga Dalam Ruangan / Hall / In Door                ', '', '0000-00-00 00:00:00'),
(947, '5.2.2.20.34.005', 'Belanja Pemeliharaan Alat Olah Raga Fitness                      ', '', '0000-00-00 00:00:00'),
(948, '5.2.2.21', 'Belanja Jasa Konsultansi                         ', '', '0000-00-00 00:00:00'),
(949, '5.2.2.21.01', 'Belanja Jasa Konsultansi Penelitian                        ', '', '0000-00-00 00:00:00'),
(950, '5.2.2.21.02', 'Belanja Jasa Konsultansi Perencanaan                        ', '', '0000-00-00 00:00:00'),
(951, '5.2.2.21.03', 'Belanja Jasa Konsultansi Teknologi Informasi                       ', '', '0000-00-00 00:00:00'),
(952, '5.2.2.21.04', 'Belanja Jasa Konsultansi Pengawasan                        ', '', '0000-00-00 00:00:00'),
(953, '5.2.2.21.05', 'Belanja Jasa Konsultansi Even Organizer                       ', '', '0000-00-00 00:00:00'),
(954, '5.2.2.21.06', 'Belanja Jasa Konsultansi Management / Keuangan / SDM                    ', '', '0000-00-00 00:00:00'),
(955, '5.2.2.21.07', 'Belanja Jasa Konsultansi Hukum / Politik / Ekonomi / Sosial / Budaya                ', '', '0000-00-00 00:00:00'),
(956, '5.2.2.21.08', 'Belanja Jasa Konsultasi Penilai / Appraisal                      ', '', '0000-00-00 00:00:00'),
(957, '5.2.2.21.09', 'Belanja Jasa Konsultasi Rekayasa (Engineering)                       ', '', '0000-00-00 00:00:00'),
(958, '5.2.2.21.10', 'Belanja Jasa Konsultasi Perancangan (Design)                       ', '', '0000-00-00 00:00:00'),
(959, '5.2.2.22', 'Belanja Barang dan Jasa BOS                       ', '', '0000-00-00 00:00:00'),
(960, '5.2.2.22.01', 'Belanja Barang dan Jasa BOS                       ', '', '0000-00-00 00:00:00'),
(961, '5.2.2.23', 'Belanja Barang Yang Akan Diserahkan Kepada Masyarakat/Pihak Ketiga                    ', '', '0000-00-00 00:00:00'),
(962, '5.2.2.23.01', 'Belanja Barang Yang Akan Diserahkan Kepada Masyarakat                     ', '', '0000-00-00 00:00:00'),
(963, '5.2.2.23.02', 'Belanja Barang Yang Akan Diserahkan Kepada Pihak Ketiga                    ', '', '0000-00-00 00:00:00'),
(964, '5.2.2.24', 'Belanja Barang Yang Akan Dijual Kepada Masyarakat/Pihak Ketiga                    ', '', '0000-00-00 00:00:00'),
(965, '5.2.2.24.01', 'Belanja Barang Yang Akan Dijual Kepada Masyarakatt                     ', '', '0000-00-00 00:00:00'),
(966, '5.2.2.24.02', 'Belanja Barang Yang Akan Dijual Kepada Pihak Ketiga                    ', '', '0000-00-00 00:00:00'),
(967, '5.2.3', 'BELANJA MODAL                          ', '', '0000-00-00 00:00:00'),
(968, '5.2.3.01', 'Belanja Modal Pengadaan Tanah                        ', '', '0000-00-00 00:00:00'),
(969, '5.2.3.01.01', 'Belanja Modal Pengadaan Tanah Kantor                       ', '', '0000-00-00 00:00:00'),
(970, '5.2.3.01.02', 'Belanja Modal Pengadaan Tanah Sarana Kesehatan Rumah Sakit                    ', '', '0000-00-00 00:00:00'),
(971, '5.2.3.01.03', 'Belanja Modal Pengadaan Tanah Sarana Kesehatan Puskesmas                     ', '', '0000-00-00 00:00:00'),
(972, '5.2.3.01.04', 'Belanja Modal Pengadaan Tanah Sarana Pendidikan Taman Kanak-Kanak                    ', '', '0000-00-00 00:00:00'),
(973, '5.2.3.01.05', 'Belanja Modal Pengadaan Tanah Sarana Pendidikan Sekolah Dasar dan Sekolah Menengah Lanjutan Pertama               ', '', '0000-00-00 00:00:00'),
(974, '5.2.3.01.06', 'Belanja Modal Pengadaan Tanah Sarana Pendidikan Menengah Umum dan Kejuruan                  ', '', '0000-00-00 00:00:00'),
(975, '5.2.3.01.07', 'Belanja Modal Pengadaan Tanah Sarana Pendidikan Menengah Lanjutan dan Kejuruan                  ', '', '0000-00-00 00:00:00'),
(976, '5.2.3.01.08', 'Belanja Modal Pengadaan Tanah Sarana Pendidikan Luar Biasa / Khusus                  ', '', '0000-00-00 00:00:00'),
(977, '5.2.3.01.09', 'Belanja Modal Pengadaan Tanah Sarana Pendidikan Pelatihan dan Kursus                   ', '', '0000-00-00 00:00:00'),
(978, '5.2.3.01.10', 'Belanja Modal Pengadaan Tanah Sarana Sosial Panti Asuhan                    ', '', '0000-00-00 00:00:00'),
(979, '5.2.3.01.11', 'Belanja Modal Pengadaan Tanah sarana Sosial Panti Jompo                    ', '', '0000-00-00 00:00:00'),
(980, '5.2.3.01.12', 'Belanja Modal Pengadaan Tanah Sarana Umum Terminal                     ', '', '0000-00-00 00:00:00'),
(981, '5.2.3.01.13', 'Belanja Modal Pengadaan Tanah Sarana Umum Dermaga                     ', '', '0000-00-00 00:00:00'),
(982, '5.2.3.01.14', 'Belanja Modal Pengadaan Tanah Sarana Umum Lapangan Terbang Perintis                   ', '', '0000-00-00 00:00:00'),
(983, '5.2.3.01.15', 'Belanja Modal Pengadaan Tanah Sarana Umum Rumah Potong Hewan                   ', '', '0000-00-00 00:00:00'),
(984, '5.2.3.01.16', 'Belanja Modal Pengadaan Tanah Sarana Umum Tempat Pelelangan Ikan                   ', '', '0000-00-00 00:00:00'),
(985, '5.2.3.01.17', 'Belanja Modal Pengadaan Tanah Sarana Umum Pasar                     ', '', '0000-00-00 00:00:00'),
(986, '5.2.3.01.18', 'Belanja Modal Pengadaan Tanah Sarana Umum Tempat Pembuangan Akhir Sampah                  ', '', '0000-00-00 00:00:00'),
(987, '5.2.3.01.19', 'Belanja Modal Pengadaan Tanah Sarana Umum Taman                     ', '', '0000-00-00 00:00:00'),
(988, '5.2.3.01.20', 'Belanja Modal Pengadaan Tanah Sarana Umum Pusat Hiburan Rakyat                   ', '', '0000-00-00 00:00:00'),
(989, '5.2.3.01.21', 'Belanja Modal Pengadaan Tanah Sarana Umum Ibadah                     ', '', '0000-00-00 00:00:00'),
(990, '5.2.3.01.22', 'Belanja Modal Pengadaan Tanah Sarana Stadion Olahraga                     ', '', '0000-00-00 00:00:00'),
(991, '5.2.3.01.23', 'Belanja Modal Pengadaan Tanah Perumahan                       ', '', '0000-00-00 00:00:00'),
(992, '5.2.3.01.24', 'Belanja Modal Pengadaan Tanah Pertanian                       ', '', '0000-00-00 00:00:00'),
(993, '5.2.3.01.25', 'Belanja Modal Pengadaan Tanah Perkebunan                       ', '', '0000-00-00 00:00:00'),
(994, '5.2.3.01.26', 'Belanja Modal Pengadaan Tanah Perikanan                       ', '', '0000-00-00 00:00:00'),
(995, '5.2.3.01.27', 'Belanja Modal Pengadaan Tanah Peternakan                       ', '', '0000-00-00 00:00:00'),
(996, '5.2.3.01.28', 'Belanja Modal Pengadaan Tanah Perkampungan                       ', '', '0000-00-00 00:00:00'),
(997, '5.2.3.01.29', 'Belanja Modal Pengadaan Tanah Pergudangan / Tempat Penimbunan Material Bahan Baku                 ', '', '0000-00-00 00:00:00'),
(998, '5.2.3.01.30', 'Belanja Modal Pengadaan Tanah Asrama Karyawan                      ', '', '0000-00-00 00:00:00'),
(999, '5.2.3.01.31', 'Belanja modal Pengadaan Tanah Gelanggang Remaja                      ', '', '0000-00-00 00:00:00'),
(1000, '5.2.3.01.32', 'Belanja modal Pengadaan Tanah Balai Rakyat / Karang Taruna                   ', '', '0000-00-00 00:00:00'),
(1001, '5.2.3.01.33', 'Belanja Modal Pengadaan Tanah Waduk                       ', '', '0000-00-00 00:00:00'),
(1002, '5.2.3.01.34', 'Belanja Modal Pengadaan Tanah Pintu Air                      ', '', '0000-00-00 00:00:00'),
(1003, '5.2.3.01.35', 'Belanja Modal Pengadaan Tanah Saluran Air                      ', '', '0000-00-00 00:00:00'),
(1004, '5.2.3.01.36', 'Belanja Modal Pengadaan Tanah Jalan                       ', '', '0000-00-00 00:00:00'),
(1005, '5.2.3.01.37', 'Belanja Modal Pengadaan Tanah Kebun Binatang                      ', '', '0000-00-00 00:00:00'),
(1006, '5.2.3.01.38', 'Belanja Modal Pengadaan Tanah Prasarana Jalan                      ', '', '0000-00-00 00:00:00'),
(1007, '5.2.3.01.39', 'Belanja Modal Pengadaan Tanah Makam                       ', '', '0000-00-00 00:00:00'),
(1008, '5.2.3.01.40', 'Belanja Modal Pengadaan Tanah Sarana Olahraga                      ', '', '0000-00-00 00:00:00'),
(1009, '5.2.3.01.41', 'Belanja Modal Pengadaan Tanah IPAL                       ', '', '0000-00-00 00:00:00'),
(1010, '5.2.3.02', 'Belanja Modal Pengadaan Alat-Alat Berat                       ', '', '0000-00-00 00:00:00'),
(1011, '5.2.3.02.01', 'Belanja Modal Pengadaan Traktor                        ', '', '0000-00-00 00:00:00'),
(1012, '5.2.3.02.02', 'Belanja Modal Pengadaan Buldozer                        ', '', '0000-00-00 00:00:00'),
(1013, '5.2.3.02.03', 'Belanja Modal Pengadaan Stoom Wals                       ', '', '0000-00-00 00:00:00'),
(1014, '5.2.3.02.04', 'Belanja Modal Pengadaan Eskavator                        ', '', '0000-00-00 00:00:00'),
(1015, '5.2.3.02.05', 'Belanja Modal Pengadaan Dump Truk                       ', '', '0000-00-00 00:00:00'),
(1016, '5.2.3.02.06', 'Belanja Modal Pengadaan Crane                        ', '', '0000-00-00 00:00:00'),
(1017, '5.2.3.02.07', 'Belanja Modal Pengadaan Kendaraan Penyapu Jalan                      ', '', '0000-00-00 00:00:00'),
(1018, '5.2.3.02.08', 'Belanja Modal Pengadaan Mesin Pengolah Semen                      ', '', '0000-00-00 00:00:00'),
(1019, '5.2.3.02.09', 'Belanja Modal Pengadaan Mesin Pengolah Air Bersih (Reservoir Osmosis)                   ', '', '0000-00-00 00:00:00'),
(1020, '5.2.3.02.10', 'Belanja Modal Pengadaan Mesin Giling                       ', '', '0000-00-00 00:00:00'),
(1021, '5.2.3.02.11', 'Belanja Modal Pengadaan Mesin Pembangkit Listrik (Diesel, Genset)                    ', '', '0000-00-00 00:00:00'),
(1022, '5.2.3.02.12', 'Belanja Modal Pengadaan Mesin Pengisi Air Tanah Dalam (Injection Well)                  ', '', '0000-00-00 00:00:00'),
(1023, '5.2.3.02.13', 'Belanja Modal Pengadaan Mesin Pengukur Tinggi Muka Air (AWLR)                   ', '', '0000-00-00 00:00:00'),
(1024, '5.2.3.02.14', 'Belanja Modal Pengadaan Mesin Pengukur Penurunan Muka Tanah (Ekstenso)                   ', '', '0000-00-00 00:00:00'),
(1025, '5.2.3.02.15', 'Belanja Modal Pengadaan Mesin Pengolah Air Laut Menjadi Air Tanah                  ', '', '0000-00-00 00:00:00'),
(1026, '5.2.3.02.16', 'Belanja Modal Pengadaan Asphalt Cutter                       ', '', '0000-00-00 00:00:00'),
(1027, '5.2.3.02.17', 'Belanja Modal Pengadaan Greader                        ', '', '0000-00-00 00:00:00'),
(1028, '5.2.3.02.18', 'Belanja Modal Pengadaan Tyre Roller                       ', '', '0000-00-00 00:00:00'),
(1029, '5.2.3.02.19', 'Belanja Modal Pengadaan Fork Lift                       ', '', '0000-00-00 00:00:00'),
(1030, '5.2.3.02.20', 'Belanja Modal Pengadaan Breaker                        ', '', '0000-00-00 00:00:00'),
(1031, '5.2.3.02.21', 'Belanja Modal Pengadaan Molen Truck                       ', '', '0000-00-00 00:00:00'),
(1032, '5.2.3.02.22', 'Belanja Modal Pengadaan Pompa Beton                       ', '', '0000-00-00 00:00:00'),
(1033, '5.2.3.02.23', 'Belanja Modal Pengadaan Asphalt Sprayer                       ', '', '0000-00-00 00:00:00'),
(1034, '5.2.3.02.24', 'Belanja Modal Pengadaan Cold Milling                       ', '', '0000-00-00 00:00:00'),
(1035, '5.2.3.02.25', 'Belanja Modal Pengadaan Beatching Plant                       ', '', '0000-00-00 00:00:00'),
(1036, '5.2.3.02.26', 'Belanja Modal Pengadaan Asphalt Mixing Plant                      ', '', '0000-00-00 00:00:00'),
(1037, '5.2.3.02.27', 'Belanja Modal Pengadaan Asphalt Finisher                       ', '', '0000-00-00 00:00:00'),
(1038, '5.2.3.02.28', 'Belanja Modal Pengadaan Shovel Loader                       ', '', '0000-00-00 00:00:00'),
(1039, '5.2.3.02.29', 'Belanja Modal Pengadaan Stone Crusher                       ', '', '0000-00-00 00:00:00'),
(1040, '5.2.3.02.30', 'Belanja Modal Pengadaan Asphalt Reciling                       ', '', '0000-00-00 00:00:00'),
(1041, '5.2.3.02.31', 'Belanja Modal Pengadaan Mobil Derek                       ', '', '0000-00-00 00:00:00'),
(1042, '5.2.3.02.32', 'Belanja Modal Pengadaan Jet Spayer                       ', '', '0000-00-00 00:00:00'),
(1043, '5.2.3.02.33', 'Belanja Modal Pengadaan Road Reader                       ', '', '0000-00-00 00:00:00'),
(1044, '5.2.3.02.34', 'Belanja Modal Pengadaan Dredger                        ', '', '0000-00-00 00:00:00'),
(1045, '5.2.3.02.35', 'Belanja Modal Pengadaan Ponton                        ', '', '0000-00-00 00:00:00'),
(1046, '5.2.3.03', 'Belanja Modal Pengadaan Alat-Alat Angkutan Darat Bermotor                     ', '', '0000-00-00 00:00:00'),
(1047, '5.2.3.03.01', 'Belanja Modal Pengadaan Alat-Alat Angkutan Darat Bermotor Sedan                    ', '', '0000-00-00 00:00:00'),
(1048, '5.2.3.03.02', 'Belanja Modal Pengadaan Alat-Alat Angkutan Darat Bermotor Jeep                    ', '', '0000-00-00 00:00:00'),
(1049, '5.2.3.03.03', 'Belanja Modal Pengadaan Alat-Alat Angkutan Darat Bermotor Station Wagon                   ', '', '0000-00-00 00:00:00'),
(1050, '5.2.3.03.04', 'Belanja Modal Pengadaan Alat-Alat Angkutan Darat Bermotor Bus                    ', '', '0000-00-00 00:00:00'),
(1051, '5.2.3.03.05', 'Belanja Modal Pengadaan Alat-Alat Angkutan Darat Bermotor Mikro Bus                   ', '', '0000-00-00 00:00:00'),
(1052, '5.2.3.03.06', 'Belanja Modal Pengadaan Alat-Alat Angkutan Darat Bermotor Truck                    ', '', '0000-00-00 00:00:00'),
(1053, '5.2.3.03.07', 'Belanja Modal Pengadaan Alat-Alat Angkutan Darat Bermotor Tangki (Air, Minyak, Tinja)                 ', '', '0000-00-00 00:00:00'),
(1054, '5.2.3.03.08', 'Belanja Modal Pengadaan Alat-Alat Angkutan Darat Bermotor Boks                    ', '', '0000-00-00 00:00:00'),
(1055, '5.2.3.03.09', 'Belanja Modal Pengadaan Alat-Alat Angkutan Darat Bermotor Pick Up                   ', '', '0000-00-00 00:00:00'),
(1056, '5.2.3.03.10', 'Belanja Modal Pengadaan Alat-Alat Angkutan Darat Bermotor Ambulans                    ', '', '0000-00-00 00:00:00'),
(1057, '5.2.3.03.11', 'Belanja Modal Pengadaan Alat-Alat Angkutan Darat Bermotor Pemadam Kebakaran / Mobil Pompa                ', '', '0000-00-00 00:00:00'),
(1058, '5.2.3.03.12', 'Belanja Modal Pengadaan Alat-Alat Angkutan Darat Bermotor Sepeda Motor                   ', '', '0000-00-00 00:00:00'),
(1059, '5.2.3.03.13', 'Belanja Modal Pengadaan Alat-Alat Angkutan Darat Bermotor Lift / Elevator                  ', '', '0000-00-00 00:00:00'),
(1060, '5.2.3.03.14', 'Belanja Modal Pengadaan Alat-Alat Angkutan Darat Bermotor Tangga Berjalan                   ', '', '0000-00-00 00:00:00'),
(1061, '5.2.3.03.15', 'Belanja Modal Pengadaan Alat-Alat Angkutan Darat Bermotor Dinas Operasional Khusus                  ', '', '0000-00-00 00:00:00'),
(1062, '5.2.3.03.16', 'Belanja Modal Pengadaan Alat-Alat Angkutan Darat Bermotor Pompa Portabel                   ', '', '0000-00-00 00:00:00'),
(1063, '5.2.3.04', 'Belanja Modal Pengadaan Alat-Alat Angkutan Darat Tidak Bermotor                    ', '', '0000-00-00 00:00:00'),
(1064, '5.2.3.04.01', 'Belanja Modal Pengadaan Gerobak                        ', '', '0000-00-00 00:00:00'),
(1065, '5.2.3.04.02', 'Belanja Modal Pengadaan Pedati / Delman / Dokar / Bendi / Cidomo / Andong              ', '', '0000-00-00 00:00:00'),
(1066, '5.2.3.04.03', 'Belanja Modal Pengadaan Becak                        ', '', '0000-00-00 00:00:00'),
(1067, '5.2.3.04.04', 'Belanja Modal Pengadaan Sepeda                        ', '', '0000-00-00 00:00:00'),
(1068, '5.2.3.04.05', 'Belanja Modal Pengadaan Karavan                        ', '', '0000-00-00 00:00:00'),
(1069, '5.2.3.04.06', 'Belanja Modal Pengadaan Kontainer                        ', '', '0000-00-00 00:00:00'),
(1070, '5.2.3.04.07', 'Belanja Modal Pengadaan Direksi Keet                       ', '', '0000-00-00 00:00:00'),
(1071, '5.2.3.05', 'Belanja Modal Pengadaan Alat-Alat Angkutan di Air Bermotor                    ', '', '0000-00-00 00:00:00'),
(1072, '5.2.3.05.01', 'Belanja Modal Pengadaan Kapal Motor                       ', '', '0000-00-00 00:00:00'),
(1073, '5.2.3.05.02', 'Belanja Modal Pengadaan Kapal Feri                       ', '', '0000-00-00 00:00:00'),
(1074, '5.2.3.05.03', 'Belanja Modal Pengadaan Speed Boat                       ', '', '0000-00-00 00:00:00'),
(1075, '5.2.3.05.04', 'Belanja Modal Pengadaan Motor Boat / Motor Tempel                    ', '', '0000-00-00 00:00:00'),
(1076, '5.2.3.05.05', 'Belanja Modal Pengadaan Hydro Foil                       ', '', '0000-00-00 00:00:00'),
(1077, '5.2.3.05.06', 'Belanja Modal Pengadaan Jet Foil                       ', '', '0000-00-00 00:00:00'),
(1078, '5.2.3.05.07', 'Belanja Modal Pengadaan Kapal Tug Boat                      ', '', '0000-00-00 00:00:00'),
(1079, '5.2.3.05.08', 'Belanja Modal Pengadaan Kapal Tanker                       ', '', '0000-00-00 00:00:00'),
(1080, '5.2.3.05.09', 'Belanja Modal Pengadaan Kapal Kargo                       ', '', '0000-00-00 00:00:00'),
(1081, '5.2.3.05.10', 'Belanja Modal Pengadaan Long Boat                       ', '', '0000-00-00 00:00:00'),
(1082, '5.2.3.05.11', 'Belanja Modal Pengadaan Kapal Tunda / Tongkang                     ', '', '0000-00-00 00:00:00'),
(1083, '5.2.3.05.12', 'Belanja Modal Pengadaan Alat Penarik Kapal                      ', '', '0000-00-00 00:00:00'),
(1084, '5.2.3.05.13', 'Belanja Modal Pengadaan Alat Penarik Jaring                      ', '', '0000-00-00 00:00:00'),
(1085, '5.2.3.06', 'Belanja Modal Pengadaan Alat-Alat Angkutan di Air Tidak Bermotor                   ', '', '0000-00-00 00:00:00'),
(1086, '5.2.3.06.01', 'Belanja Modal Pengadaan Perahu Layar                       ', '', '0000-00-00 00:00:00'),
(1087, '5.2.3.06.02', 'Belanja Modal Pengadaan Perahu Sampan                       ', '', '0000-00-00 00:00:00'),
(1088, '5.2.3.06.03', 'Belanja Modal Pengadaan Perahu Tongkang                       ', '', '0000-00-00 00:00:00'),
(1089, '5.2.3.06.04', 'Belanja Modal Pengadaan Perahu Karet                       ', '', '0000-00-00 00:00:00'),
(1090, '5.2.3.06.05', 'Belanja Modal Pengadaan Perahu Rakit                       ', '', '0000-00-00 00:00:00'),
(1091, '5.2.3.06.06', 'Belanja Modal Pengadaan Perahu Sekoci                       ', '', '0000-00-00 00:00:00'),
(1092, '5.2.3.06.07', 'Belanja Modal Pengadaan Perahu Barang                       ', '', '0000-00-00 00:00:00'),
(1093, '5.2.3.07', 'Belanja Modal Pengadaan Alat-Alat Angkutan Udara                      ', '', '0000-00-00 00:00:00'),
(1094, '5.2.3.07.01', 'Belanja Modal Pengadaan Pesawat Kargo                       ', '', '0000-00-00 00:00:00'),
(1095, '5.2.3.07.02', 'Belanja Modal Pengadaan Pesawat Penumpang                       ', '', '0000-00-00 00:00:00'),
(1096, '5.2.3.07.03', 'Belanja Modal Pengadaan Pesawat Helikopter                       ', '', '0000-00-00 00:00:00'),
(1097, '5.2.3.07.04', 'Belanja Modal Pengadaan Pesawat Pemadam Kebakaran                      ', '', '0000-00-00 00:00:00'),
(1098, '5.2.3.07.05', 'Belanja Modal Pengadaan Pesawat Capung                       ', '', '0000-00-00 00:00:00'),
(1099, '5.2.3.07.06', 'Belanja Modal Pengadaan Pesawat Terbang Ampibi                      ', '', '0000-00-00 00:00:00'),
(1100, '5.2.3.07.07', 'Belanja Modal Pengadaan Pesawat Terbang Layang                      ', '', '0000-00-00 00:00:00'),
(1101, '5.2.3.08', 'Belanja Modal Pengadaan Alat-Alat Bengkel                       ', '', '0000-00-00 00:00:00'),
(1102, '5.2.3.08.01', 'Belanja Modal Pengadaan Mesin Las                       ', '', '0000-00-00 00:00:00'),
(1103, '5.2.3.08.02', 'Belanja Modal Pengadaan Mesin Bubut                       ', '', '0000-00-00 00:00:00'),
(1104, '5.2.3.08.03', 'Belanja Modal Pengadaan Mesin Dongkrak                       ', '', '0000-00-00 00:00:00'),
(1105, '5.2.3.08.04', 'Belanja Modal Pengadaan Mesin Kompresor                       ', '', '0000-00-00 00:00:00'),
(1106, '5.2.3.08.05', 'Belanja Modal Pengadaan Mesin Press                       ', '', '0000-00-00 00:00:00'),
(1107, '5.2.3.08.06', 'Belanja Modal Pengadaan Mesin Gurinda                       ', '', '0000-00-00 00:00:00'),
(1108, '5.2.3.08.07', 'Belanja Modal Pengadaan Perkakas Bengkel Konstruksi Logam                     ', '', '0000-00-00 00:00:00'),
(1109, '5.2.3.08.08', 'Belanja Modal Pengadaan Perkakas Bengkel Listrik                      ', '', '0000-00-00 00:00:00'),
(1110, '5.2.3.08.09', 'Belanja Modal Pengadaan Perkakas Bengkel Service                      ', '', '0000-00-00 00:00:00'),
(1111, '5.2.3.08.10', 'Belanja Modal Pengadaan Perkakas Pengangkat                       ', '', '0000-00-00 00:00:00'),
(1112, '5.2.3.08.11', 'Belanja Modal Pengadaan Perkakas Standar                       ', '', '0000-00-00 00:00:00'),
(1113, '5.2.3.08.12', 'Belanja Modal Pengadaan Perkakas Khusus                       ', '', '0000-00-00 00:00:00'),
(1114, '5.2.3.08.13', 'Belanja Modal Pengadaan Perkakas Bengkel Kerja                      ', '', '0000-00-00 00:00:00'),
(1115, '5.2.3.08.14', 'Belanja Modal Pengadaan Peralatan Tukang                       ', '', '0000-00-00 00:00:00'),
(1116, '5.2.3.08.15', 'Belanja Modal Pengadaan Mesin Pemotong                       ', '', '0000-00-00 00:00:00'),
(1117, '5.2.3.08.16', 'Belanja Modal Pengadaan Mesin Teknologi Robot                      ', '', '0000-00-00 00:00:00'),
(1118, '5.2.3.08.17', 'Belanja Modal Pengadaan Mesin Oven                       ', '', '0000-00-00 00:00:00'),
(1119, '5.2.3.08.18', 'Belanja Modal Pengadaan Mesin Pembuka Roda                      ', '', '0000-00-00 00:00:00'),
(1120, '5.2.3.08.19', 'Belanja Modal Pengadaan Mesin Praktikum                       ', '', '0000-00-00 00:00:00'),
(1121, '5.2.3.09', 'Belanja Modal Pengadaan Alat-Alat Pengolahan Pertanian dan Peternakan                    ', '', '0000-00-00 00:00:00'),
(1122, '5.2.3.09.01', 'Belanja Modal Pengadaan Penggiling Hasil Pertanian                      ', '', '0000-00-00 00:00:00'),
(1123, '5.2.3.09.02', 'Belanja Modal Pengadaan Alat Pengering Gabah                      ', '', '0000-00-00 00:00:00'),
(1124, '5.2.3.09.03', 'Belanja Modal Pengadaan Mesin Bajak                       ', '', '0000-00-00 00:00:00'),
(1125, '5.2.3.09.04', 'Belanja Modal Pengadaan Alat Penetas                       ', '', '0000-00-00 00:00:00'),
(1126, '5.2.3.09.05', 'Belanja Modal Pengadaan Alat Pengolahan                       ', '', '0000-00-00 00:00:00'),
(1127, '5.2.3.09.06', 'Belanja Modal Pengadaan Alat Peternakan                       ', '', '0000-00-00 00:00:00'),
(1128, '5.2.3.09.07', 'Belanja Modal Pengadaan Alat Pertamanan                       ', '', '0000-00-00 00:00:00'),
(1129, '5.2.3.09.08', 'Belanja Modal Pengadaan Screen House                       ', '', '0000-00-00 00:00:00'),
(1130, '5.2.3.09.09', 'Belanja Modal Pengadaan Alat Panen                       ', '', '0000-00-00 00:00:00'),
(1131, '5.2.3.09.10', 'Belanja Modal Pengadaan Alat Penyimpanan                       ', '', '0000-00-00 00:00:00'),
(1132, '5.2.3.10', 'Belanja Modal Pengadaan Peralatan Kantor                       ', '', '0000-00-00 00:00:00'),
(1133, '5.2.3.10.01', 'Belanja Modal Pengadaan Mesin Tik                       ', '', '0000-00-00 00:00:00'),
(1134, '5.2.3.10.02', 'Belanja Modal Pengadaan Mesin Hitung                       ', '', '0000-00-00 00:00:00'),
(1135, '5.2.3.10.03', 'Belanja Modal Pengadaan Mesin Stensil                       ', '', '0000-00-00 00:00:00'),
(1136, '5.2.3.10.04', 'Belanja Modal Pengadaan Mesin Fotocopy                       ', '', '0000-00-00 00:00:00'),
(1137, '5.2.3.10.05', 'Belanja Modal Pengadaan Mesin Cetak                       ', '', '0000-00-00 00:00:00'),
(1138, '5.2.3.10.06', 'Belanja Modal Pengadaan Mesin Jilid                       ', '', '0000-00-00 00:00:00'),
(1139, '5.2.3.10.07', 'Belanja Modal Pengadaan Mesin Potong Kertas                      ', '', '0000-00-00 00:00:00'),
(1140, '5.2.3.10.08', 'Belanja Modal Pengadaan Mesin Penghancur Kertas                      ', '', '0000-00-00 00:00:00'),
(1141, '5.2.3.10.09', 'Belanja Modal Pengadaan Papan Tulis Elektronik                      ', '', '0000-00-00 00:00:00'),
(1142, '5.2.3.10.10', 'Belanja Modal Pengadaan Papan Visual / Elektronik / Digital / Display                 ', '', '0000-00-00 00:00:00'),
(1143, '5.2.3.10.11', 'Belanja Modal Pengadaan Tabung Pemadam Kebakaran                      ', '', '0000-00-00 00:00:00'),
(1144, '5.2.3.10.12', 'Belanja Modal Pengadaan Mesin Faxmile                       ', '', '0000-00-00 00:00:00'),
(1145, '5.2.3.10.13', 'Belanja Modal Pengadaan Mesin Absensi                       ', '', '0000-00-00 00:00:00'),
(1146, '5.2.3.10.14', 'Belanja Modal Pengadaan Mesin Nomorator / Validasi                     ', '', '0000-00-00 00:00:00'),
(1147, '5.2.3.10.15', 'Belanja Modal Pengadaan Mesin Perporasi                       ', '', '0000-00-00 00:00:00'),
(1148, '5.2.3.10.16', 'Belanja Modal Pengadaan Mesin Press / Laminating                     ', '', '0000-00-00 00:00:00'),
(1149, '5.2.3.11', 'Belanja Modal Pengadaan Perlengkapan Kantor                       ', '', '0000-00-00 00:00:00'),
(1150, '5.2.3.11.01', 'Belanja Modal Pengadaan Meja Gambar                       ', '', '0000-00-00 00:00:00'),
(1151, '5.2.3.11.02', 'Belanja Modal Pengadaan Almari                        ', '', '0000-00-00 00:00:00'),
(1152, '5.2.3.11.03', 'Belanja Modal Pengadaan Brankas                        ', '', '0000-00-00 00:00:00'),
(1153, '5.2.3.11.04', 'Belanja Modal Pengadaan Filling Kabinet                       ', '', '0000-00-00 00:00:00'),
(1154, '5.2.3.11.05', 'Belanja Modal Pengadaan White Board                       ', '', '0000-00-00 00:00:00'),
(1155, '5.2.3.11.06', 'Belanja Modal Pengadaan Penunjuk Waktu                       ', '', '0000-00-00 00:00:00'),
(1156, '5.2.3.11.07', 'Belanja Modal Pengadaan Alat Pembersih / Kebersihan                     ', '', '0000-00-00 00:00:00'),
(1157, '5.2.3.11.08', 'Belanja Modal Pengadaan Alat Pendingin                       ', '', '0000-00-00 00:00:00'),
(1158, '5.2.3.11.09', 'Belanja Modal Pengadaan Mesin Pompa Air                      ', '', '0000-00-00 00:00:00'),
(1159, '5.2.3.11.10', 'Belanja Modal Pengadaan Alat Gambar                       ', '', '0000-00-00 00:00:00'),
(1160, '5.2.3.11.11', 'Belanja Modal Pengadaan Alat Ukur                       ', '', '0000-00-00 00:00:00'),
(1161, '5.2.3.11.12', 'Belanja Modal Pengadaan Perlengkapan Gambar                       ', '', '0000-00-00 00:00:00'),
(1162, '5.2.3.11.13', 'Belanja Modal Pengadaan Rak Besi                       ', '', '0000-00-00 00:00:00'),
(1163, '5.2.3.11.14', 'Belanja Modal Pengadaan Tenda Peleton                       ', '', '0000-00-00 00:00:00'),
(1164, '5.2.3.11.15', 'Belanja Modal Pengadaan Alat Pemadam Kebakaran                      ', '', '0000-00-00 00:00:00'),
(1165, '5.2.3.11.16', 'Belanja Modal Pengadaan Alat Fogging                       ', '', '0000-00-00 00:00:00'),
(1166, '5.2.3.11.17', 'Belanja Modal Pengadaan Partisi / Penyekat Ruang                     ', '', '0000-00-00 00:00:00'),
(1167, '5.2.3.12', 'Belanja Modal Pengadaan Komputer                        ', '', '0000-00-00 00:00:00'),
(1168, '5.2.3.12.01', 'Belanja Modal Pengadaan Komputer Mainframe / Server                     ', '', '0000-00-00 00:00:00'),
(1169, '5.2.3.12.02', 'Belanja Modal Pengadaan Komputer / PC                      ', '', '0000-00-00 00:00:00'),
(1170, '5.2.3.12.03', 'Belanja Modal Pengadaan Komputer Note Book / Laptop                    ', '', '0000-00-00 00:00:00'),
(1171, '5.2.3.12.04', 'Belanja Modal Pengadaan Printer                        ', '', '0000-00-00 00:00:00'),
(1172, '5.2.3.12.05', 'Belanja Modal Pengadaan  Scaner                       ', '', '0000-00-00 00:00:00'),
(1173, '5.2.3.12.06', 'Belanja Modal Pengadaan  Monitor / Display                     ', '', '0000-00-00 00:00:00'),
(1174, '5.2.3.12.07', 'Belanja Modal Pengadaan  CPU                       ', '', '0000-00-00 00:00:00'),
(1175, '5.2.3.12.08', 'Belanja Modal Pengadaan UPS / Stabilizer                      ', '', '0000-00-00 00:00:00'),
(1176, '5.2.3.12.09', 'Belanja Modal Pengadaan Kelengkapan Komputer (Flask Disk, Mouse, Keyboard, Hard Disk, Speaker, dll)               ', '', '0000-00-00 00:00:00'),
(1177, '5.2.3.12.10', 'Belanja Modal Pengadaan Peralatan Jaringan Komputer                      ', '', '0000-00-00 00:00:00'),
(1178, '5.2.3.12.11', 'Belanja Modal Pengadaan Perangkat Lunak                       ', '', '0000-00-00 00:00:00'),
(1179, '5.2.3.13', 'Belanja Modal Pengadaan Mebeulair                        ', '', '0000-00-00 00:00:00'),
(1180, '5.2.3.13.01', 'Belanja Modal Pengadaan Meja Kerja                       ', '', '0000-00-00 00:00:00'),
(1181, '5.2.3.13.02', 'Belanja Modal Pengadaan Meja Rapat                       ', '', '0000-00-00 00:00:00'),
(1182, '5.2.3.13.03', 'Belanja Modal Pengadaan Meja Makan                       ', '', '0000-00-00 00:00:00'),
(1183, '5.2.3.13.04', 'Belanja Modal Pengadaan Kursi Kerja                       ', '', '0000-00-00 00:00:00'),
(1184, '5.2.3.13.05', 'Belanja Modal Pengadaan Kursi Rapat                       ', '', '0000-00-00 00:00:00'),
(1185, '5.2.3.13.06', 'Belanja Modal Pengadaan Kursi Makan                       ', '', '0000-00-00 00:00:00'),
(1186, '5.2.3.13.07', 'Belanja Modal Pengadaan Tempat Tidur                       ', '', '0000-00-00 00:00:00'),
(1187, '5.2.3.13.08', 'Belanja Modal Pengadaan Sofa                        ', '', '0000-00-00 00:00:00'),
(1188, '5.2.3.13.09', 'Belanja Modal Pengadaan Rak Buku / TV / Kembang                   ', '', '0000-00-00 00:00:00'),
(1189, '5.2.3.13.10', 'Belanja Modal Pengadaan Lemari                        ', '', '0000-00-00 00:00:00'),
(1190, '5.2.3.13.11', 'Belanja Modal Pengadaan Diswar / Buffet                      ', '', '0000-00-00 00:00:00'),
(1191, '5.2.3.13.12', 'Belanja Modal Pengadaan Meja Belajar                       ', '', '0000-00-00 00:00:00'),
(1192, '5.2.3.13.13', 'Belanja Modal Pengadaan Kursi Belajar                       ', '', '0000-00-00 00:00:00'),
(1193, '5.2.3.13.14', 'Belanja Modal Pengadaan Papan Tulis / White Board                    ', '', '0000-00-00 00:00:00'),
(1194, '5.2.3.13.15', 'Belanja Modal Pengadaan Papan Pengumuman                       ', '', '0000-00-00 00:00:00'),
(1195, '5.2.3.13.16', 'Belanja Modal Pengadaan Bangku Istirahat                       ', '', '0000-00-00 00:00:00'),
(1196, '5.2.3.13.17', 'Belanja Modal Pengadaan Bangku Tunggu                       ', '', '0000-00-00 00:00:00'),
(1197, '5.2.3.14', 'Belanja Modal Pengadaan Peralatan Dapur                       ', '', '0000-00-00 00:00:00'),
(1198, '5.2.3.14.01', 'Belanja Modal Pengadaan Tabung Gas                       ', '', '0000-00-00 00:00:00'),
(1199, '5.2.3.14.02', 'Belanja Modal Pengadaan Kompor Gas                       ', '', '0000-00-00 00:00:00'),
(1200, '5.2.3.14.03', 'Belanja Modal Pengadaan Lemari Makan / Lemari Dapur                    ', '', '0000-00-00 00:00:00'),
(1201, '5.2.3.14.04', 'Belanja Modal Pengadaan Dispenser                        ', '', '0000-00-00 00:00:00'),
(1202, '5.2.3.14.05', 'Belanja Modal Pengadaan Kulkas                        ', '', '0000-00-00 00:00:00'),
(1203, '5.2.3.14.06', 'Belanja Modal Pengadaan Rak Piring                       ', '', '0000-00-00 00:00:00'),
(1204, '5.2.3.14.07', 'Belanja Modal Pengadaan Piring / Gelas / Mangkok / Cangkir / Sendok / Garpu / Pisau            ', '', '0000-00-00 00:00:00'),
(1205, '5.2.3.14.08', 'Belanja Modal Pengadaan Alat-Alat Dapur                       ', '', '0000-00-00 00:00:00'),
(1206, '5.2.3.15', 'Belanja Modal Pengadaan Penghias Ruangan Rumah Tangga                     ', '', '0000-00-00 00:00:00'),
(1207, '5.2.3.15.01', 'Belanja Modal Pengadaan Lampu Hias                       ', '', '0000-00-00 00:00:00'),
(1208, '5.2.3.15.02', 'Belanja Modal Pengadaan Jam Dinding / Meja                     ', '', '0000-00-00 00:00:00'),
(1209, '5.2.3.15.03', 'Belanja Modal Pengadaan Lemari Hias                       ', '', '0000-00-00 00:00:00'),
(1210, '5.2.3.15.04', 'Belanja Modal Pengadaan Meja Hias                       ', '', '0000-00-00 00:00:00'),
(1211, '5.2.3.15.05', 'Belanja Modal Pengadaan Hiasan                        ', '', '0000-00-00 00:00:00'),
(1212, '5.2.3.15.06', 'Belanja Modal Pengadaan Vertikal Blind / Korden                     ', '', '0000-00-00 00:00:00'),
(1213, '5.2.3.16', 'Belanja Modal Pengadaan Alat-Alat Studio                       ', '', '0000-00-00 00:00:00'),
(1214, '5.2.3.16.01', 'Belanja Modal Pengadaan Kamera                        ', '', '0000-00-00 00:00:00'),
(1215, '5.2.3.16.02', 'Belanja Modal Pengadaan Handycam                        ', '', '0000-00-00 00:00:00'),
(1216, '5.2.3.16.03', 'Belanja Modal Pengadaan Proyektor / Terawang                      ', '', '0000-00-00 00:00:00'),
(1217, '5.2.3.16.04', 'Belanja Modal Pengadaan Peralatan Studio Visual                      ', '', '0000-00-00 00:00:00'),
(1218, '5.2.3.16.05', 'Belanja Modal Pengadaan Peralatan Studio Video dan Film                    ', '', '0000-00-00 00:00:00'),
(1219, '5.2.3.16.06', 'Belanja Modal Pengadaan Peralatan Cetak Film                      ', '', '0000-00-00 00:00:00'),
(1220, '5.2.3.16.07', 'Belanja Modal Pengadaan OHP / Infocus / LCD / TV / HDTV                ', '', '0000-00-00 00:00:00'),
(1221, '5.2.3.16.08', 'Belanja Modal Pengadaan CCTV                        ', '', '0000-00-00 00:00:00'),
(1222, '5.2.3.16.09', 'Belanja Modal Pengadaan Sound System                       ', '', '0000-00-00 00:00:00'),
(1223, '5.2.3.16.10', 'Belanja Modal Pengadaan Amplifier                        ', '', '0000-00-00 00:00:00'),
(1224, '5.2.3.16.11', 'Belanja Modal Pengadaan Teropong / Teleskop                      ', '', '0000-00-00 00:00:00'),
(1225, '5.2.3.17', 'Belanja Modal Pengadaan Alat-Alat Komunikasi                       ', '', '0000-00-00 00:00:00'),
(1226, '5.2.3.17.01', 'Belanja Modal Pengadaan Telepon                        ', '', '0000-00-00 00:00:00'),
(1227, '5.2.3.17.02', 'Belanja Modal Pengadaan Faximili                        ', '', '0000-00-00 00:00:00'),
(1228, '5.2.3.17.03', 'Belanja Modal Pengadaan Radio SSB                       ', '', '0000-00-00 00:00:00'),
(1229, '5.2.3.17.04', 'Belanja Modal Pengadaan Radio HF/ FM                      ', '', '0000-00-00 00:00:00'),
(1230, '5.2.3.17.05', 'Belanja Modal Pengadaan Radio VHF                       ', '', '0000-00-00 00:00:00'),
(1231, '5.2.3.17.06', 'Belanja Modal Pengadaan Radio UHF                       ', '', '0000-00-00 00:00:00'),
(1232, '5.2.3.17.07', 'Belanja Modal Pengadaan Alat Sandi                       ', '', '0000-00-00 00:00:00'),
(1233, '5.2.3.17.08', 'Belanja Modal Pengadaan Alat Komunikasi Sosial                      ', '', '0000-00-00 00:00:00'),
(1234, '5.2.3.17.09', 'Belanja Modal Pengadaan Peralatan Pemancar MF / MW                    ', '', '0000-00-00 00:00:00'),
(1235, '5.2.3.17.10', 'Belanja Modal Pengadaan Peralatan Pemancar HF / SW                    ', '', '0000-00-00 00:00:00'),
(1236, '5.2.3.17.11', 'Belanja Modal Pengadaan Peralatan Pemancar VHF / FM                    ', '', '0000-00-00 00:00:00'),
(1237, '5.2.3.17.12', 'Belanja Modal Pengadaan Peralatan Pemancar UHF                      ', '', '0000-00-00 00:00:00'),
(1238, '5.2.3.17.13', 'Belanja Modal Pengadaan Jaringan Radio Link                      ', '', '0000-00-00 00:00:00'),
(1239, '5.2.3.17.14', 'Belanja Modal Pengadaan Jaringan Internet                       ', '', '0000-00-00 00:00:00'),
(1240, '5.2.3.17.15', 'Belanja Modal Pengadaan Jaringan LAN                       ', '', '0000-00-00 00:00:00'),
(1241, '5.2.3.17.16', 'Belanja Modal Pengadaan Jaringan Teknologi Informasi                      ', '', '0000-00-00 00:00:00'),
(1242, '5.2.3.17.17', 'Belanja Modal Pengadaan Receiver                        ', '', '0000-00-00 00:00:00'),
(1243, '5.2.3.17.18', 'Belanja Modal Pengadaan Handy Talkie                       ', '', '0000-00-00 00:00:00'),
(1244, '5.2.3.18', 'Belanja Modal Pengadaan Alat-Alat Ukur                       ', '', '0000-00-00 00:00:00'),
(1245, '5.2.3.18.01', 'Belanja Modal Pengadaan Timbangan                        ', '', '0000-00-00 00:00:00'),
(1246, '5.2.3.18.02', 'Belanja Modal Pengadaan Teodolite                        ', '', '0000-00-00 00:00:00'),
(1247, '5.2.3.18.03', 'Belanja Modal Pengadaan Alat Uji Emisi                      ', '', '0000-00-00 00:00:00'),
(1248, '5.2.3.18.04', 'Belanja Modal Pengadaan Alat GPS                       ', '', '0000-00-00 00:00:00'),
(1249, '5.2.3.18.05', 'Belanja Modal Pengadaan Kompas / Peralatan Navigasi                     ', '', '0000-00-00 00:00:00'),
(1250, '5.2.3.18.06', 'Belanja Modal Pengadaan Bejana Ukur                       ', '', '0000-00-00 00:00:00'),
(1251, '5.2.3.18.07', 'Belanja Modal Pengadaan Barometer                        ', '', '0000-00-00 00:00:00'),
(1252, '5.2.3.18.08', 'Belanja Modal Pengadaan Seismograph                        ', '', '0000-00-00 00:00:00'),
(1253, '5.2.3.18.09', 'Belanja Modal Pengadaan Ultrasonograph                        ', '', '0000-00-00 00:00:00'),
(1254, '5.2.3.18.10', 'Belanja Modal Pengadaan Alat Ukur Universal                      ', '', '0000-00-00 00:00:00'),
(1255, '5.2.3.18.11', 'Belanja Modal Pengadaan Alat Ukur Test Inteligensi                     ', '', '0000-00-00 00:00:00'),
(1256, '5.2.3.18.12', 'Belanja Modal Pengadaan Tes Alat Kepribadian                      ', '', '0000-00-00 00:00:00'),
(1257, '5.2.3.18.13', 'Belanja Modal Pengadaan Alat Tes Klinis                      ', '', '0000-00-00 00:00:00'),
(1258, '5.2.3.18.14', 'Belanja Modal Pengadaan Alat Ukur Pemetaaan Darat / Udara / Laut                 ', '', '0000-00-00 00:00:00'),
(1259, '5.2.3.18.15', 'Belanja Modal Pengadaan Ukur Geodesi                       ', '', '0000-00-00 00:00:00'),
(1260, '5.2.3.18.16', 'Belanja Modal Pengadaan Uji Emisi                       ', '', '0000-00-00 00:00:00'),
(1261, '5.2.3.18.17', 'Belanja Modal Pengadaan Kalibrasi Alat Pengukuran                      ', '', '0000-00-00 00:00:00'),
(1262, '5.2.3.18.18', 'Belanja Modal Pengadaan Kalibrasi Alat Pengujian Konstruksi                     ', '', '0000-00-00 00:00:00'),
(1263, '5.2.3.18.19', 'Belanja Modal Pengadaan Alat Ukur Telimetri                      ', '', '0000-00-00 00:00:00'),
(1264, '5.2.3.19', 'Belanja Modal Pengadaan Alat-Alat Kedokteran                       ', '', '0000-00-00 00:00:00'),
(1265, '5.2.3.19.01', 'Belanja Modal Pengadaan Alat-Alat  Kedokteran Umum                     ', '', '0000-00-00 00:00:00'),
(1266, '5.2.3.19.02', 'Belanja Modal Pengadaan Alat-Alat  Kedokteran Gigi                     ', '', '0000-00-00 00:00:00'),
(1267, '5.2.3.19.03', 'Belanja Modal Pengadaan Alat-Alat Kedokteran THT                      ', '', '0000-00-00 00:00:00'),
(1268, '5.2.3.19.04', 'Belanja Modal Pengadaan Alat-Alat Kedokteran Mata                      ', '', '0000-00-00 00:00:00'),
(1269, '5.2.3.19.05', 'Belanja Modal Pengadaan Alat-Alat Kedokteran Bedah                      ', '', '0000-00-00 00:00:00'),
(1270, '5.2.3.19.06', 'Belanja Modal Pengadaan Alat-Alat Kedokteran Anak                      ', '', '0000-00-00 00:00:00'),
(1271, '5.2.3.19.07', 'Belanja Modal Pengadaan Alat-Alat Kebidanan dan Penyakit Kandungan                    ', '', '0000-00-00 00:00:00'),
(1272, '5.2.3.19.08', 'Belanja Modal Pengadaan Alat-Alat Kedokteran Kulit dan Kelamin                    ', '', '0000-00-00 00:00:00'),
(1273, '5.2.3.19.09', 'Belanja Modal Pengadaan Alat-Alat Kardiologi                       ', '', '0000-00-00 00:00:00'),
(1274, '5.2.3.19.10', 'Belanja Modal Pengadaan Alat-Alat Neurologi                       ', '', '0000-00-00 00:00:00'),
(1275, '5.2.3.19.11', 'Belanja Modal Pengadaan Alat-Alat Orthopedi                       ', '', '0000-00-00 00:00:00'),
(1276, '5.2.3.19.12', 'Belanja Modal Pengadaan Alat-Alat Hewan                       ', '', '0000-00-00 00:00:00'),
(1277, '5.2.3.19.13', 'Belanja Modal Pengadaan Alat-Alat Farmasi                       ', '', '0000-00-00 00:00:00'),
(1278, '5.2.3.19.14', 'Belanja Modal Pengadaan Alat-Alat Penyakit Dalam / Internis                    ', '', '0000-00-00 00:00:00'),
(1279, '5.2.3.19.15', 'Belanja Modal Pengadaan Alat-Alat Kedokteran KB                      ', '', '0000-00-00 00:00:00'),
(1280, '5.2.3.19.16', 'Belanja Modal Pengadaan Alat-Alat Radiologi                       ', '', '0000-00-00 00:00:00'),
(1281, '5.2.3.19.17', 'Belanja Modal Pengadaan Alat-Alat Kamar Operasi                      ', '', '0000-00-00 00:00:00'),
(1282, '5.2.3.19.18', 'Belanja Modal Pengadaan Alat-Alat Ruang HCU / ICCU                    ', '', '0000-00-00 00:00:00'),
(1283, '5.2.3.19.19', 'Belanja Modal Pengadaan Alat-Alat Ruang Kamar Perawatan                     ', '', '0000-00-00 00:00:00'),
(1284, '5.2.3.20', 'Belanja Modal Pengadaan Alat-Alat Laboratorium                       ', '', '0000-00-00 00:00:00'),
(1285, '5.2.3.20.01', 'Belanja Modal Pengadaan Alat-Alat Laboratorium Biologi                      ', '', '0000-00-00 00:00:00'),
(1286, '5.2.3.20.02', 'Belanja Modal Pengadaan Alat-Alat Laboratorium Fisika / Geologi / Geodesi                  ', '', '0000-00-00 00:00:00'),
(1287, '5.2.3.20.03', 'Belanja Modal Pengadaan Alat-Alat Laboratorium Kimia                      ', '', '0000-00-00 00:00:00'),
(1288, '5.2.3.20.04', 'Belanja Modal Pengadaan Alat-Alat Laboratorium Pertanian                      ', '', '0000-00-00 00:00:00'),
(1289, '5.2.3.20.05', 'Belanja Modal Pengadaan Alat-Alat Laboratorium Peternakan                      ', '', '0000-00-00 00:00:00'),
(1290, '5.2.3.20.06', 'Belanja Modal Pengadaan Alat-Alat Laboratorium Perkebunan                      ', '', '0000-00-00 00:00:00'),
(1291, '5.2.3.20.07', 'Belanja Modal Pengadaan Alat-Alat Laboratorium Perikanan                      ', '', '0000-00-00 00:00:00'),
(1292, '5.2.3.20.08', 'Belanja Modal Pengadaan Alat-Alat Laboratorium Bahasa                      ', '', '0000-00-00 00:00:00'),
(1293, '5.2.3.20.09', 'Belanja Modal Pengadaan Alat-Alat Peraga / Praktek Sekolah                    ', '', '0000-00-00 00:00:00'),
(1294, '5.2.3.20.10', 'Belanja Modal Pengadaan Alat-Alat Laboratorium Kesehatan                      ', '', '0000-00-00 00:00:00'),
(1295, '5.2.3.20.11', 'Belanja Modal Pengadaan Alat-Alat Laboratorium Mikrobiologi                      ', '', '0000-00-00 00:00:00'),
(1296, '5.2.3.20.12', 'Belanja Modal Pengadaan Alat-Alat Laboratorium Hidrokimia                      ', '', '0000-00-00 00:00:00'),
(1297, '5.2.3.20.13', 'Belanja Modal Pengadaan Alat-Alat Laboratorium Model Hidrolika                     ', '', '0000-00-00 00:00:00'),
(1298, '5.2.3.20.14', 'Belanja Modal Pengadaan Alat-Alat Laboratorium Buatan                      ', '', '0000-00-00 00:00:00'),
(1299, '5.2.3.20.15', 'Belanja Modal Pengadaan Alat-Alat Laboratorium Lapangan                      ', '', '0000-00-00 00:00:00'),
(1300, '5.2.3.20.16', 'Belanja Modal Pengadaan Alat-Alat Uji Laboratorium                      ', '', '0000-00-00 00:00:00'),
(1301, '5.2.3.20.17', 'Belanja Modal Pengadaan Alat-Alat Laboratorium Kehutanan                      ', '', '0000-00-00 00:00:00'),
(1302, '5.2.3.20.18', 'Belanja Modal Pengadaan Alat-Alat Laboratorium Kesehatan Hewan / Kesmavet                   ', '', '0000-00-00 00:00:00'),
(1303, '5.2.3.20.19', 'Belanja Modal Pengadaan Alat-Alat Laboratorium Tanaman                      ', '', '0000-00-00 00:00:00'),
(1304, '5.2.3.20.20', 'Belanja Modal Pengadaan Alat-Alat Laboratorium Beatching Plant                     ', '', '0000-00-00 00:00:00'),
(1305, '5.2.3.20.21', 'Belanja Modal Pengadaan Alat-Alat Laboratorium AMP                      ', '', '0000-00-00 00:00:00'),
(1306, '5.2.3.21', 'Belanja Modal Pengadaan Konstruksi Jalan                       ', '', '0000-00-00 00:00:00'),
(1307, '5.2.3.21.01', 'Belanja Modal Pengadaan Konstruksi Jalan                       ', '', '0000-00-00 00:00:00'),
(1308, '5.2.3.21.02', 'Belanja Modal Pengadaan Konstruksi Jalan Fly Over                     ', '', '0000-00-00 00:00:00'),
(1309, '5.2.3.21.03', 'Belanja Modal Pengadaan Konstruksi Jalan Under Pass                     ', '', '0000-00-00 00:00:00'),
(1310, '5.2.3.21.04', 'Belanja Modal Pengadaan Konstruksi Monorail / Subway / Busway                   ', '', '0000-00-00 00:00:00'),
(1311, '5.2.3.21.05', 'Belanja Modal Pengadaan Konstruksi Jalan Negara                      ', '', '0000-00-00 00:00:00'),
(1312, '5.2.3.21.06', 'Belanja Modal Pengadaan Konstruksi Jalan Provinsi                      ', '', '0000-00-00 00:00:00'),
(1313, '5.2.3.21.07', 'Belanja Modal Pengadaan Konstruksi Jalan Kabupaten                      ', '', '0000-00-00 00:00:00');
INSERT INTO `tr_rekening` (`id`, `kode`, `nama`, `insert_user`, `insert_datetime`) VALUES
(1314, '5.2.3.21.08', 'Belanja Modal Pengadaan Konstruksi Jalan Lingkungan                      ', '', '0000-00-00 00:00:00'),
(1315, '5.2.3.21.09', 'Belanja Modal Pengadaan Konstruksi Trotoar / Bahu Jalan                    ', '', '0000-00-00 00:00:00'),
(1316, '5.2.3.22', 'Belanja Modal Pengadaan Konstruksi Jembatan                       ', '', '0000-00-00 00:00:00'),
(1317, '5.2.3.22.01', 'Belanja Modal Pengadaan Konstruksi Jembatan Gantung                      ', '', '0000-00-00 00:00:00'),
(1318, '5.2.3.22.02', 'Belanja Modal Pengadaan Konstruksi Jembatan Ponton                      ', '', '0000-00-00 00:00:00'),
(1319, '5.2.3.22.03', 'Belanja Modal Pengadaan Konstruksi Jembatan Penyeberangan Orang                     ', '', '0000-00-00 00:00:00'),
(1320, '5.2.3.22.04', 'Belanja Modal Pengadaan Konstruksi Jembatan Penyeberangan diatas Air                    ', '', '0000-00-00 00:00:00'),
(1321, '5.2.3.22.05', 'Belanja Modal Pengadaan Konstruksi Jembatan Balley                      ', '', '0000-00-00 00:00:00'),
(1322, '5.2.3.22.06', 'Belanja Modal Pengadaan Konstruksi Jembatan Timbang                      ', '', '0000-00-00 00:00:00'),
(1323, '5.2.3.23', 'Belanja Modal Pengadaan Konstruksi Jaringan Air                      ', '', '0000-00-00 00:00:00'),
(1324, '5.2.3.23.01', 'Belanja Modal Pengadaan Konstruksi Bendungan                       ', '', '0000-00-00 00:00:00'),
(1325, '5.2.3.23.02', 'Belanja Modal Pengadaan Konstruksi Waduk                       ', '', '0000-00-00 00:00:00'),
(1326, '5.2.3.23.03', 'Belanja Modal Pengadaan Konstruksi Kanal Permukaan                      ', '', '0000-00-00 00:00:00'),
(1327, '5.2.3.23.04', 'Belanja Modal Pengadaan Konstruksi Kanal Bawah Tanah                     ', '', '0000-00-00 00:00:00'),
(1328, '5.2.3.23.05', 'Belanja Modal Pengadaan Konstruksi Jaringan Irigasi                      ', '', '0000-00-00 00:00:00'),
(1329, '5.2.3.23.06', 'Belanja Modal Pengadaan Konstruksi Jaringan Air Bersih / Air Minum                  ', '', '0000-00-00 00:00:00'),
(1330, '5.2.3.23.07', 'Belanja Modal Pengadaan Konstruksi Reservoir / Sumur Resapan                    ', '', '0000-00-00 00:00:00'),
(1331, '5.2.3.23.08', 'Belanja Modal Pengadaan Konstruksi Pintu Air                      ', '', '0000-00-00 00:00:00'),
(1332, '5.2.3.23.09', 'Belanja Modal Pengadaan Konstruksi Saluran Air                      ', '', '0000-00-00 00:00:00'),
(1333, '5.2.3.23.10', 'Belanja Modal Pengadaan Konstruksi MCK                       ', '', '0000-00-00 00:00:00'),
(1334, '5.2.3.23.11', 'Belanja Modal Pengadaan Konstruksi Bangunan Rumah Pompa                     ', '', '0000-00-00 00:00:00'),
(1335, '5.2.3.23.12', 'Belanja Modal Pengadaan Konstruksi Bangunan Pantai                      ', '', '0000-00-00 00:00:00'),
(1336, '5.2.3.23.13', 'Belanja Modal Pengadaan Konstruksi Saringan Sampah                      ', '', '0000-00-00 00:00:00'),
(1337, '5.2.3.23.14', 'Belanja Modal Pengadaan Konstruksi Instalasi Pengolahan Sampah                     ', '', '0000-00-00 00:00:00'),
(1338, '5.2.3.23.15', 'Belanja Modal Pengadaan Konstruksi Instalasi Pengolahan Air Kotor / Limbah (IPAK / IPAL)               ', '', '0000-00-00 00:00:00'),
(1339, '5.2.3.24', 'Belanja Modal Pengadaan Penerangan Jalan, Taman dan Hutan Kota                   ', '', '0000-00-00 00:00:00'),
(1340, '5.2.3.24.01', 'Belanja Modal Pengadaan Lampu Hias Jalan                      ', '', '0000-00-00 00:00:00'),
(1341, '5.2.3.24.02', 'Belanja Modal Pengadaan Lampu Hias Taman                      ', '', '0000-00-00 00:00:00'),
(1342, '5.2.3.24.03', 'Belanja Modal Pengadaan Lampu Penerangan Hutan Kota                     ', '', '0000-00-00 00:00:00'),
(1343, '5.2.3.24.04', 'Belanja Modal Pengadaan Lampu Penerangan Jalan Lingkungan                     ', '', '0000-00-00 00:00:00'),
(1344, '5.2.3.24.05', 'Belanja Modal Pengadaan Lampu Penerangan Sarana dan Prasarana Umum                   ', '', '0000-00-00 00:00:00'),
(1345, '5.2.3.24.06', 'Belanja Modal Pengadaan Lampu Penerangan Gedung / Kantor                    ', '', '0000-00-00 00:00:00'),
(1346, '5.2.3.25', 'Belanja Modal Pengadaan Instalasi Listrik dan Telepon                     ', '', '0000-00-00 00:00:00'),
(1347, '5.2.3.25.01', 'Belanja Modal Pengadaan Instalasi Listrik                       ', '', '0000-00-00 00:00:00'),
(1348, '5.2.3.25.02', 'Belanja Modal Pengadaan Instalasi Telepon                       ', '', '0000-00-00 00:00:00'),
(1349, '5.2.3.25.03', 'Belanja Modal Pengadaan Instalasi Jaringan Utilitas PJU                     ', '', '0000-00-00 00:00:00'),
(1350, '5.2.3.26', 'Belanja Modal Pengadaan Konstruksi / Pembelian*)Bangunan                      ', '', '0000-00-00 00:00:00'),
(1351, '5.2.3.26.01', 'Belanja Modal Pengadaan Konstruksi / Pembelian Gedung Kantor                    ', '', '0000-00-00 00:00:00'),
(1352, '5.2.3.26.02', 'Belanja Modal Pengadaan Konstruksi / Pembelian Rumah Jabatan                    ', '', '0000-00-00 00:00:00'),
(1353, '5.2.3.26.03', 'Belanja Modal Pengadaan Konstruksi / Pembelian Rumah Dinas                    ', '', '0000-00-00 00:00:00'),
(1354, '5.2.3.26.04', 'Belanja Modal Pengadaan Konstruksi / Pembelian Gedung Gudang                    ', '', '0000-00-00 00:00:00'),
(1355, '5.2.3.26.05', 'Belanja Modal Pengadaan Konstruksi / Pembelian Bangunan Bersejarah                    ', '', '0000-00-00 00:00:00'),
(1356, '5.2.3.26.06', 'Belanja Modal Pengadaan Konstruksi / Pembelian Bangunan Monumen                    ', '', '0000-00-00 00:00:00'),
(1357, '5.2.3.26.07', 'Belanja Modal Pengadaan Konstruksi Tugu Peringatan                      ', '', '0000-00-00 00:00:00'),
(1358, '5.2.3.26.08', 'Belanja Modal Pengadaan Konstruksi / Pembelian Gedung Asrama Karyawan                   ', '', '0000-00-00 00:00:00'),
(1359, '5.2.3.26.09', 'Belanja Modal Pengadaan Konstruksi / Pembelian Sarana Pendidikan dan Pelatihan                  ', '', '0000-00-00 00:00:00'),
(1360, '5.2.3.26.10', 'Belanja Modal Pengadaan Konstruksi / Pembelian Gedung Sarana Olahraga                   ', '', '0000-00-00 00:00:00'),
(1361, '5.2.3.26.11', 'Belanja Modal Pengadaan Konstruksi / Pembelian Gedung Balai Rakyat / Karang Taruna                ', '', '0000-00-00 00:00:00'),
(1362, '5.2.3.26.12', 'Belanja Modal Pengadaan Konstruksi / Pembelian Gedung Sarana / Tempat Ibadah                 ', '', '0000-00-00 00:00:00'),
(1363, '5.2.3.26.13', 'Belanja Modal Pengadaan Konstruksi / Pembelian Gedung Panti Sosial / Panti Jompo                ', '', '0000-00-00 00:00:00'),
(1364, '5.2.3.26.14', 'Belanja Modal Pengadaan Konstruksi / Pembelian Gedung Rumah Susun                   ', '', '0000-00-00 00:00:00'),
(1365, '5.2.3.26.15', 'Belanja Modal Pengadaan Konstruksi / Pembelian Kandang Binatang                    ', '', '0000-00-00 00:00:00'),
(1366, '5.2.3.26.16', 'Belanja Modal Pengadaan Konstruksi / Pembelian Terminal                     ', '', '0000-00-00 00:00:00'),
(1367, '5.2.3.26.17', 'Belanja Modal Pengadaan Konstruksi / Pembelian Dermaga Laut                    ', '', '0000-00-00 00:00:00'),
(1368, '5.2.3.26.18', 'Belanja Modal Pengadaan Konstruksi / Pembelian Halte Bus                    ', '', '0000-00-00 00:00:00'),
(1369, '5.2.3.26.19', 'Belanja Modal Pengadaan Konstruksi / Pembelian DIPO Sampah                    ', '', '0000-00-00 00:00:00'),
(1370, '5.2.3.26.20', 'Belanja Modal Pengadaan Konstruksi / Pembelian Transito Sampah                    ', '', '0000-00-00 00:00:00'),
(1371, '5.2.3.26.21', 'Belanja Modal Pengadaan Konstruksi / Pembelian Taman                     ', '', '0000-00-00 00:00:00'),
(1372, '5.2.3.26.22', 'Belanja Modal Pengadaan Konstruksi / Pembelian Air Mancur                    ', '', '0000-00-00 00:00:00'),
(1373, '5.2.3.26.23', 'Belanja Modal Pengadaan Konstruksi / Pembelian Landas Pacu Pesawat                   ', '', '0000-00-00 00:00:00'),
(1374, '5.2.3.26.24', 'Belanja Modal Pengadaan Konstruksi / Pembelian Batas Wilayah / Tugu Titik Kontrol                ', '', '0000-00-00 00:00:00'),
(1375, '5.2.3.26.25', 'Belanja Modal Pengadaan Konstruksi / Pembelian Mercu Suar                    ', '', '0000-00-00 00:00:00'),
(1376, '5.2.3.26.26', 'Belanja Modal Pengadaan Konstruksi / Pembelian Rambu Darat                    ', '', '0000-00-00 00:00:00'),
(1377, '5.2.3.26.27', 'Belanja Modal Pengadaan Konstruksi / Pembelian Rambu Laut / Sungai                  ', '', '0000-00-00 00:00:00'),
(1378, '5.2.3.26.28', 'Belanja Modal Pengadaan Konstruksi / Pembelian Rambu Udara                    ', '', '0000-00-00 00:00:00'),
(1379, '5.2.3.26.29', 'Belanja Modal Pengadaan Konstruksi / Pembelian Gedung Bengkel                    ', '', '0000-00-00 00:00:00'),
(1380, '5.2.3.26.30', 'Belanja Modal Pengadaan Konstruksi / Pembelian Pagar Pengaman Jalan                   ', '', '0000-00-00 00:00:00'),
(1381, '5.2.3.26.31', 'Belanja Modal Pengadaan Konstruksi / Pembelian Gedung Kesenian / Kebudayaan                  ', '', '0000-00-00 00:00:00'),
(1382, '5.2.3.26.32', 'Belanja Modal Pengadaan Konstruksi / Pembelian Sarana dan Prasarana Gedung Pasar                 ', '', '0000-00-00 00:00:00'),
(1383, '5.2.3.27', 'Belanja Modal Pengadaan Buku / Kepustakaan                      ', '', '0000-00-00 00:00:00'),
(1384, '5.2.3.27.01', 'Belanja Modal Pengadaan Buku Matematika                       ', '', '0000-00-00 00:00:00'),
(1385, '5.2.3.27.02', 'Belanja Modal Pengadaan Buku Fisika                       ', '', '0000-00-00 00:00:00'),
(1386, '5.2.3.27.03', 'Belanja Modal Pengadaan Buku Kimia                       ', '', '0000-00-00 00:00:00'),
(1387, '5.2.3.27.04', 'Belanja Modal Pengadaan Buku Biologi                       ', '', '0000-00-00 00:00:00'),
(1388, '5.2.3.27.05', 'Belanja Modal Pengadaan Buku Biografi                       ', '', '0000-00-00 00:00:00'),
(1389, '5.2.3.27.06', 'Belanja Modal Pengadaan Buku Geografi                       ', '', '0000-00-00 00:00:00'),
(1390, '5.2.3.27.07', 'Belanja Modal Pengadaan Buku Astronomi                       ', '', '0000-00-00 00:00:00'),
(1391, '5.2.3.27.08', 'Belanja Modal Pengadaan Buku Arkeologi                       ', '', '0000-00-00 00:00:00'),
(1392, '5.2.3.27.09', 'Belanja Modal Pengadaan Buku Bahasa dan Sastra                     ', '', '0000-00-00 00:00:00'),
(1393, '5.2.3.27.10', 'Belanja Modal Pengadaan Buku Keagamaan                       ', '', '0000-00-00 00:00:00'),
(1394, '5.2.3.27.11', 'Belanja Modal Pengadaan Buku Sejarah                       ', '', '0000-00-00 00:00:00'),
(1395, '5.2.3.27.12', 'Belanja Modal Pengadaan Buku Seni dan Budaya                     ', '', '0000-00-00 00:00:00'),
(1396, '5.2.3.27.13', 'Belanja Modal Pengadaan Buku Ilmu Pengetahuan Umum                     ', '', '0000-00-00 00:00:00'),
(1397, '5.2.3.27.14', 'Belanja Modal Pengadaan Buku Ilmu Pengetahuan Sosial                     ', '', '0000-00-00 00:00:00'),
(1398, '5.2.3.27.15', 'Belanja Modal Pengadaan Buku Ilmu Politik dan Ketatanegaraan                    ', '', '0000-00-00 00:00:00'),
(1399, '5.2.3.27.16', 'Belanja Modal Pengadaan Buku Ilmu Pengetahuan dan Teknologi                    ', '', '0000-00-00 00:00:00'),
(1400, '5.2.3.27.17', 'Belanja Modal Pengadaan Buku Ensiklopedia                       ', '', '0000-00-00 00:00:00'),
(1401, '5.2.3.27.18', 'Belanja Modal Pengadaan Buku Kamus Bahasa                      ', '', '0000-00-00 00:00:00'),
(1402, '5.2.3.27.19', 'Belanja Modal Pengadaan Buku Ekonomi dan Keuangan                     ', '', '0000-00-00 00:00:00'),
(1403, '5.2.3.27.20', 'Belanja Modal Pengadaan Buku Industri dan Perdagangan                     ', '', '0000-00-00 00:00:00'),
(1404, '5.2.3.27.21', 'Belanja Modal Pengadaan Buku Peraturan  Perundang-undangan                     ', '', '0000-00-00 00:00:00'),
(1405, '5.2.3.27.22', 'Belanja Modal Pengadaan Buku Naskah                       ', '', '0000-00-00 00:00:00'),
(1406, '5.2.3.27.23', 'Belanja Modal Pengadaan Terbitan Berkala (Jurnal, Compact Disk)                    ', '', '0000-00-00 00:00:00'),
(1407, '5.2.3.27.24', 'Belanja Modal Pengadaan Mikrofilm                        ', '', '0000-00-00 00:00:00'),
(1408, '5.2.3.27.25', 'Belanja Modal Pengadaan Peta / Atlas / Globe                    ', '', '0000-00-00 00:00:00'),
(1409, '5.2.3.27.26', 'Belanja Modal Pengadaan Buku Umum                       ', '', '0000-00-00 00:00:00'),
(1410, '5.2.3.27.27', 'Belanja Modal Pengadaan Buku Cerita Rakyat                      ', '', '0000-00-00 00:00:00'),
(1411, '5.2.3.27.28', 'Belanja Modal Pengadaan Buku Filsafat                       ', '', '0000-00-00 00:00:00'),
(1412, '5.2.3.27.29', 'Belanja Modal Pengadaan Buku Ilmu Pengetahuan Praktis                     ', '', '0000-00-00 00:00:00'),
(1413, '5.2.3.27.30', 'Belanja Modal Pengadaan Buku Arsitektur                       ', '', '0000-00-00 00:00:00'),
(1414, '5.2.3.27.31', 'Belanja Modal Pengadaan Buku Geodesi                       ', '', '0000-00-00 00:00:00'),
(1415, '5.2.3.27.32', 'Belanja Modal Pengadaan Buku Olahraga                       ', '', '0000-00-00 00:00:00'),
(1416, '5.2.3.27.33', 'Belanja Modal Pengadaan Buku Geologi                       ', '', '0000-00-00 00:00:00'),
(1417, '5.2.3.27.34', 'Belanja Modal Pengadaan Buku Kedokteran                       ', '', '0000-00-00 00:00:00'),
(1418, '5.2.3.27.35', 'Belanja Modal Pengadaan Buku Bahan Ajar                      ', '', '0000-00-00 00:00:00'),
(1419, '5.2.3.27.36', 'Belanja Modal Pengadaan Barang Perpustakaan                       ', '', '0000-00-00 00:00:00'),
(1420, '5.2.3.27.37', 'Belanja Modal Pengadaan Peta Wilayah                       ', '', '0000-00-00 00:00:00'),
(1421, '5.2.3.27.38', 'Belanja Modal Pengadaan Karya Grafika                       ', '', '0000-00-00 00:00:00'),
(1422, '5.2.3.27.39', 'Belanja Modal Pengadaan Alat Peraga Pendidikan                      ', '', '0000-00-00 00:00:00'),
(1423, '5.2.3.28', 'Belanja Modal Pengadaan Barang Bercorak Kesenian, Kebudayaan                     ', '', '0000-00-00 00:00:00'),
(1424, '5.2.3.28.01', 'Belanja Modal Pengadaan Lukisan / Foto                      ', '', '0000-00-00 00:00:00'),
(1425, '5.2.3.28.02', 'Belanja Modal Pengadaan Patung                        ', '', '0000-00-00 00:00:00'),
(1426, '5.2.3.28.03', 'Belanja Modal Pengadaan Ukiran                        ', '', '0000-00-00 00:00:00'),
(1427, '5.2.3.28.04', 'Belanja Modal Pengadaan Pahatan                        ', '', '0000-00-00 00:00:00'),
(1428, '5.2.3.28.05', 'Belanja Modal Pengadaan Batu Alam                       ', '', '0000-00-00 00:00:00'),
(1429, '5.2.3.28.06', 'Belanja Modal Pengadaan Maket / Miniatur / Diorama                    ', '', '0000-00-00 00:00:00'),
(1430, '5.2.3.28.07', 'Belanja Modal Pengadaan Alat Musik Kesenian                      ', '', '0000-00-00 00:00:00'),
(1431, '5.2.3.28.08', 'Belanja Modal Pengadaan Barang Kesenian                       ', '', '0000-00-00 00:00:00'),
(1432, '5.2.3.28.09', 'Belanja Modal Pengadaan Benda-Benda Bersejarah                       ', '', '0000-00-00 00:00:00'),
(1433, '5.2.3.28.10', 'Belanja Modal Pengadaan Barang Kerajinan Seni                      ', '', '0000-00-00 00:00:00'),
(1434, '5.2.3.28.11', 'Belanja Modal Pengadaan Pakaian Adat Nusantara                      ', '', '0000-00-00 00:00:00'),
(1435, '5.2.3.29', 'Belanja Modal Pengadaan Hewan / Ternak dan Tanaman                    ', '', '0000-00-00 00:00:00'),
(1436, '5.2.3.29.01', 'Belanja Modal Pengadaan Hewan Kebun Binatang                      ', '', '0000-00-00 00:00:00'),
(1437, '5.2.3.29.02', 'Belanja Modal Pengadaan Ternak                        ', '', '0000-00-00 00:00:00'),
(1438, '5.2.3.29.03', 'Belanja Modal Pengadaan Tanaman                        ', '', '0000-00-00 00:00:00'),
(1439, '5.2.3.29.04', 'Belanja Modal Pengadaan Binatang Peliharaan                       ', '', '0000-00-00 00:00:00'),
(1440, '5.2.3.29.05', 'Belanja Modal Pengadaan Tanaman Perkebunan                       ', '', '0000-00-00 00:00:00'),
(1441, '5.2.3.29.06', 'Belanja Modal Pengadaan Tanaman Hortikultura                       ', '', '0000-00-00 00:00:00'),
(1442, '5.2.3.29.07', 'Belanja Modal Pengadaan Tanaman Khusus / Langka                     ', '', '0000-00-00 00:00:00'),
(1443, '5.2.3.30', 'Belanja Modal Pengadaan Alat-Alat Persenjataan / Keamanan                     ', '', '0000-00-00 00:00:00'),
(1444, '5.2.3.30.01', 'Belanja Modal Pengadaan Senjata Api                       ', '', '0000-00-00 00:00:00'),
(1445, '5.2.3.30.02', 'Belanja Modal Pengadaan Radar                        ', '', '0000-00-00 00:00:00'),
(1446, '5.2.3.30.03', 'Belanja Modal Pengadaan Mobil Water Canon                      ', '', '0000-00-00 00:00:00'),
(1447, '5.2.3.30.04', 'Belanja Modal Pengadaan Borgol                        ', '', '0000-00-00 00:00:00'),
(1448, '5.2.3.30.05', 'Belanja Modal Pengadaan Sangkur / Bayonet                      ', '', '0000-00-00 00:00:00'),
(1449, '5.2.3.30.06', 'Belanja Modal Pengadaan Perisai / Tameng                      ', '', '0000-00-00 00:00:00'),
(1450, '5.2.3.30.07', 'Belanja Modal Pengadaan Detektor Logam                       ', '', '0000-00-00 00:00:00'),
(1451, '5.2.3.30.08', 'Belanja Modal Pengadaan Rompi Anti Peluru                      ', '', '0000-00-00 00:00:00'),
(1452, '5.2.3.30.09', 'Belanja Modal Pengadaan Pentungan                        ', '', '0000-00-00 00:00:00'),
(1453, '5.2.3.30.10', 'Belanja Modal Pengadaan Helm                        ', '', '0000-00-00 00:00:00'),
(1454, '5.2.3.30.11', 'Belanja Modal Pengadaan Alarm / Sirene                      ', '', '0000-00-00 00:00:00'),
(1455, '5.2.3.30.12', 'Belanja Modal Pengadaan Sentolop / Senter                      ', '', '0000-00-00 00:00:00'),
(1456, '5.2.3.30.13', 'Belanja Modal Pengadaan Kawat Berduri                       ', '', '0000-00-00 00:00:00'),
(1457, '5.2.3.30.14', 'Belanja Modal Pengadaan Gas Air Mata                      ', '', '0000-00-00 00:00:00'),
(1458, '5.2.3.30.15', 'Belanja Modal Pengadaan Senjata Bius / Gas                     ', '', '0000-00-00 00:00:00'),
(1459, '5.2.3.31', 'Belanja Modal Alat dan Sarana Olah Raga                     ', '', '0000-00-00 00:00:00'),
(1460, '5.2.3.31.01', 'Belanja Modal Alat Olah Raga Lapangan / Out Door                   ', '', '0000-00-00 00:00:00'),
(1461, '5.2.3.31.02', 'Belanja Modal Alat Olah Raga Air                      ', '', '0000-00-00 00:00:00'),
(1462, '5.2.3.31.03', 'Belanja Modal Alat Olah Raga Udara                      ', '', '0000-00-00 00:00:00'),
(1463, '5.2.3.31.04', 'Belanja Modal Alat Olah Raga Dalam Ruangan / Hall / In Door                ', '', '0000-00-00 00:00:00'),
(1464, '5.2.3.31.05', 'Belanja Modal Alat Olah Raga Fitness                      ', '', '0000-00-00 00:00:00'),
(1465, '5.2.3.32', 'Belanja Modal BOS                         ', '', '0000-00-00 00:00:00'),
(1466, '5.2.3.32.01', 'Belanja Modal BOS                         ', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tr_role`
--

CREATE TABLE IF NOT EXISTS `tr_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detil` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tr_role`
--

INSERT INTO `tr_role` (`id`, `detil`) VALUES
(1, 'Administrator'),
(2, 'KPAK'),
(3, 'Kantor Pusat'),
(4, 'Bagian Keuangan');

-- --------------------------------------------------------

--
-- Table structure for table `tr_satker`
--

CREATE TABLE IF NOT EXISTS `tr_satker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `insert_user` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `insert_datetime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kode` (`kode`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tr_satker`
--

INSERT INTO `tr_satker` (`id`, `kode`, `nama`, `insert_user`, `insert_datetime`) VALUES
(1, '0', 'Default', '', '0000-00-00 00:00:00'),
(2, '1', 'Administrator', '', '0000-00-00 00:00:00'),
(3, '1.26.001', 'KPAK Jakarta Pusat', 'admin', '2013-12-26 15:16:27'),
(4, '1.26.000', 'BPAD Pusat', 'admin', '2013-12-26 15:15:41'),
(5, '1.26.000K', 'Keuangan BPAD', 'admin', '2013-12-26 15:17:09'),
(7, '1.26.002', 'KPAK Jakarta Utara', 'admin', '2013-12-26 15:17:58'),
(8, '1.26.003', 'KPAK Jakarta Selatan', 'admin', '2013-12-26 15:18:16'),
(9, '1.26.004', 'KPAK Jakarta Barat', 'admin', '2013-12-26 15:18:43'),
(10, '1.26.005', 'KPAK Jakata Timur', 'admin', '2013-12-26 15:19:02'),
(11, '1.26.006', 'KPAK Kepulauan Seribu', 'admin', '2013-12-26 15:19:47');

-- --------------------------------------------------------

--
-- Table structure for table `tr_sifatkegiatan`
--

CREATE TABLE IF NOT EXISTS `tr_sifatkegiatan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `insert_user` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `insert_datetime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kode` (`kode`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tr_sifatkegiatan`
--

INSERT INTO `tr_sifatkegiatan` (`id`, `kode`, `nama`, `insert_user`, `insert_datetime`) VALUES
(1, '1', 'Baru', 'admin', '2013-12-26 15:12:41'),
(2, '2', 'Lanjutan', 'admin', '2013-12-26 15:12:49'),
(3, '3', 'Dedicated', 'admin', '2013-12-26 15:13:11'),
(4, '4', 'Carry Over', 'admin', '2013-12-26 15:13:26'),
(5, '5', 'Multi Years', 'admin', '2013-12-26 15:13:57');

-- --------------------------------------------------------

--
-- Table structure for table `tr_urusan`
--

CREATE TABLE IF NOT EXISTS `tr_urusan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `insert_user` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `insert_datetime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kode` (`kode`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tr_urusan`
--

INSERT INTO `tr_urusan` (`id`, `kode`, `nama`, `insert_user`, `insert_datetime`) VALUES
(11, '1.26B', 'Program Bersama', 'admin', '2013-12-26 15:35:37'),
(12, '1.24', 'Kearsipan', 'admin', '2013-12-26 14:59:41'),
(13, '1.26', 'Perpustakaan', 'admin', '2013-12-26 14:59:54');

-- --------------------------------------------------------

--
-- Table structure for table `t_access`
--

CREATE TABLE IF NOT EXISTS `t_access` (
  `access_datetime` datetime NOT NULL,
  `username` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `modul` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `pc_source` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `data` text COLLATE latin1_general_ci,
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `t_access`
--

INSERT INTO `t_access` (`access_datetime`, `username`, `modul`, `pc_source`, `data`) VALUES
('2013-12-26 14:50:26', 'admin', 'muser.auth', '::1 - MJ', 'admin'),
('2013-12-26 14:59:16', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  kode => -1.26,\n  nama => Program Bersama,\n)'),
('2013-12-26 14:59:41', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  kode => 1.24,\n  nama => Kearsipan,\n)'),
('2013-12-26 14:59:54', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  kode => 1.26,\n  nama => Perpustakaan,\n)'),
('2013-12-26 15:00:09', 'admin', 'mutil.add_tableref', '::1 - MJ', '11;array (\n  kode => 1.26B,\n  nama => Program Bersama,\n)'),
('2013-12-26 15:00:19', 'admin', 'mutil.add_tableref', '::1 - MJ', '11;array (\n  kode => 1.26,\n  nama => Program Bersama,\n)'),
('2013-12-26 15:00:26', 'admin', 'mutil.add_tableref', '::1 - MJ', '11;array (\n  kode => -1.26,\n  nama => Program Bersama,\n)'),
('2013-12-26 15:01:10', 'admin', 'mutil.delete_tableref', '::1 - MJ', 'tr_lokasi;3;Aa'),
('2013-12-26 15:01:29', 'admin', 'mutil.add_tableref', '::1 - MJ', '1;array (\n  kode => 00000,\n  nama => DKI JAKARTA,\n)'),
('2013-12-26 15:01:53', 'admin', 'mutil.add_tableref', '::1 - MJ', '2;array (\n  kode => 00001,\n  nama => KOTAMADYA JAKARTA PUSAT,\n)'),
('2013-12-26 15:02:18', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  kode => 00002,\n  nama => KOTAMADYA JAKARTA UTARA,\n)'),
('2013-12-26 15:02:39', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  kode => 00003,\n  nama => KOTAMADYA JAKARTA SELATAN,\n)'),
('2013-12-26 15:03:01', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  kode => 00004,\n  nama => KOTAMADYA JAKARTA BARAT,\n)'),
('2013-12-26 15:03:20', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  kode => 00005,\n  nama => KOTAMADYA JAKARTA TIMUR,\n)'),
('2013-12-26 15:03:49', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  kode => 00006,\n  nama => KABUPATEN KEPULAUAN SERIBU,\n)'),
('2013-12-26 15:12:41', 'admin', 'mutil.add_tableref', '::1 - MJ', '1;array (\n  kode => 1,\n  nama => Baru,\n)'),
('2013-12-26 15:12:49', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  kode => 2,\n  nama => Lanjutan,\n)'),
('2013-12-26 15:13:11', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  kode => 3,\n  nama => Dedicated,\n)'),
('2013-12-26 15:13:26', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  kode => 4,\n  nama => Carry Over,\n)'),
('2013-12-26 15:13:57', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  kode => 5,\n  nama => Multi Years,\n)'),
('2013-12-26 15:15:41', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  kode => 1.26.000,\n  nama => BPAD Pusat,\n)'),
('2013-12-26 15:16:27', 'admin', 'mutil.add_tableref', '::1 - MJ', '3;array (\n  kode => 1.26.001,\n  nama => KPAK Jakarta Pusat,\n)'),
('2013-12-26 15:17:09', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  kode => 1.26.000K,\n  nama => Keuangan BPAD,\n)'),
('2013-12-26 15:17:47', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  kode => 1.26.001,\n  nama => KPAK Jakarta Pusat,\n)'),
('2013-12-26 15:17:58', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  kode => 1.26.002,\n  nama => KPAK Jakarta Utara,\n)'),
('2013-12-26 15:18:16', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  kode => 1.26.003,\n  nama => KPAK Jakarta Selatan,\n)'),
('2013-12-26 15:18:43', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  kode => 1.26.004,\n  nama => KPAK Jakarta Barat,\n)'),
('2013-12-26 15:19:02', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  kode => 1.26.005,\n  nama => KPAK Jakata Timur,\n)'),
('2013-12-26 15:19:36', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  kode => 1.26.006,\n  nama => KPAK Kepualauan Seribu,\n)'),
('2013-12-26 15:19:47', 'admin', 'mutil.add_tableref', '::1 - MJ', '11;array (\n  kode => 1.26.006,\n  nama => KPAK Kepulauan Seribu,\n)'),
('2013-12-26 15:33:42', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  ref_urusan => -1.26,\n  kode => 1.26.04,\n  nama => Program Peningkatan dan Pengelolaan Kantor,\n  tahun_anggaran => 2013,\n)'),
('2013-12-26 15:34:52', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  ref_urusan => 1.24,\n  kode => 1.24.01,\n  nama => Program Penyelamatan dan Pelestarian Dokumen/Arsip Daerah,\n  tahun_anggaran => 2013,\n)'),
('2013-12-26 15:35:37', 'admin', 'mutil.add_tableref', '::1 - MJ', '11;array (\n  kode => 1.26B,\n  nama => Program Bersama,\n)'),
('2013-12-26 15:36:35', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  ref_urusan => 1.26B,\n  kode => 1.26.06,\n  nama => Program Pengelolaan Kendaraan Dinas,\n  tahun_anggaran => 2013,\n)'),
('2013-12-26 15:37:11', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  ref_urusan => 1.26B,\n  kode => 1.26.07,\n  nama => Program Peningkatan Disiplin dan Kinerja Aparatur,\n  tahun_anggaran => 2013,\n)'),
('2013-12-26 15:37:43', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  ref_urusan => 1.26,\n  kode => 1.26.10,\n  nama => Program Peningkatan Kapasitas Sumber Daya Aparatur,\n  tahun_anggaran => 2013,\n)'),
('2013-12-26 15:39:02', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  ref_urusan => 1.26B,\n  kode => 1.26.12,\n  nama => Program Perencanaan Pembangunan Daerah,\n  tahun_anggaran => 2013,\n)'),
('2013-12-26 15:39:37', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  ref_urusan => 1.26B,\n  kode => 1.26.13,\n  nama => Program Pengembangan Data/Informasi SKPD,\n  tahun_anggaran => 2013,\n)'),
('2013-12-26 15:40:07', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  ref_urusan => 1.26B,\n  kode => 1.26.15,\n  nama => Program Peningkatan dan Pengembangan Pengelolaan Keuangan SKPD,\n  tahun_anggaran => 2013,\n)'),
('2013-12-26 15:41:37', 'admin', 'mutil.add_tableref', '::1 - MJ', '11;array (\n  ref_urusan => 1.26B,\n  kode => 1.26.10,\n  nama => Program Peningkatan Kapasitas Sumber Daya Aparatur,\n  tahun_anggaran => 2013,\n)'),
('2013-12-26 15:42:15', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  ref_urusan => 1.26,\n  kode => 1.24.02,\n  nama => Program Peningkatan Sarana dan Prasarana Kearsipan,\n  tahun_anggaran => 2013,\n)'),
('2013-12-26 15:42:42', 'admin', 'mutil.add_tableref', '::1 - MJ', '15;array (\n  ref_urusan => 1.24,\n  kode => 1.24.02,\n  nama => Program Peningkatan Sarana dan Prasarana Kearsipan,\n  tahun_anggaran => 2013,\n)'),
('2013-12-26 15:42:42', 'admin', 'mutil.add_tableref', '::1 - MJ', '15;array (\n  ref_urusan => 1.24,\n  kode => 1.24.02,\n  nama => Program Peningkatan Sarana dan Prasarana Kearsipan,\n  tahun_anggaran => 2013,\n)'),
('2013-12-26 15:43:13', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  ref_urusan => 1.24,\n  kode => 1.24.03,\n  nama => Program Pengembangan Kapasitas Penyimpanan Arsip Daerah,\n  tahun_anggaran => 2013,\n)'),
('2013-12-26 15:44:07', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  ref_urusan => 1.24,\n  kode => 1.24.04,\n  nama => Program Peningkatan Pelayanan Arsip,\n  tahun_anggaran => 2013,\n)'),
('2013-12-26 15:46:44', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  ref_urusan => 1.26,\n  kode => 1.26.01,\n  nama => Program Pengembangan Budaya Baca,\n  tahun_anggaran => 2014,\n)'),
('2013-12-26 15:47:21', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  ref_urusan => 1.26,\n  kode => 1.26.02,\n  nama => Program Peningkatan Sarana dan Prasarana Perpustakaan,\n  tahun_anggaran => 2014,\n)'),
('2013-12-26 15:55:49', 'admin', 'mutil.add_tableref', '::1 - MJ', ';array (\n  ref_urusan => 1.26,\n  kode => 1.26.03,\n  nama => Program Peningkatan Pelayanan Perpustakaan,\n  tahun_anggaran => 2014,\n)'),
('2013-12-26 19:44:56', 'admin', 'muser.auth', '::1 - MJ', 'admin'),
('2014-01-24 10:54:24', 'admin', 'muser.auth', '::1 - MJ', 'admin'),
('2014-01-24 11:04:55', 'admin', 'mlayanan.delete', '::1 - MJ', '1'),
('2014-01-24 11:06:02', 'admin', 'muser.add', '::1 - MJ', 'staf;array (\n  ref_role => 2,\n  ref_satker => 1.26.001,\n  nama => staf,\n  nip => n,\n  email => n@gmail.com,\n)'),
('2014-01-24 11:09:02', 'admin', 'muser.add', '::1 - MJ', 'staf;array (\n  ref_role => 2,\n  ref_satker => 1.26.001,\n  nama => staf,\n  nip => n,\n  email => n@gmail.com,\n)'),
('2014-01-24 11:37:36', 'admin', 'muser.add', '::1 - MJ', ';array (\n  username => kpakjakpus,\n  password => c87bee3ca9a113d7d77560bb37ae6e51,\n  ref_role => 2,\n  ref_satker => 1.26.001,\n  nama => KPAK Jakarta Pusat,\n  nip => -,\n  email => test@jakarta.go.id,\n)'),
('2014-01-24 11:38:12', 'admin', 'muser.edit_role_name', '::1 - MJ', '2;KPAK'),
('2014-01-24 11:39:15', 'admin', 'muser.edit_role_name', '::1 - MJ', '3;Kantor Pusat'),
('2014-01-24 11:39:31', 'admin', 'muser.edit_role_name', '::1 - MJ', '4;Bagian Keuangan'),
('2014-01-24 11:41:40', 'admin', 'muser.add', '::1 - MJ', ';array (\n  username => kpakjakut,\n  password => c87bee3ca9a113d7d77560bb37ae6e51,\n  ref_role => 2,\n  ref_satker => 1.26.002,\n  nama => KPAK Jakarta Utara,\n  nip => 1,\n  email => kpakjakut@jakarta.go.id,\n)'),
('2014-01-24 11:42:37', 'admin', 'muser.add', '::1 - MJ', ';array (\n  username => kpakjaksel,\n  password => c87bee3ca9a113d7d77560bb37ae6e51,\n  ref_role => 2,\n  ref_satker => 1.26.003,\n  nama => KPAK Jakarta Selatan,\n  nip => 2,\n  email => kpakjaksel@jakarta.go.id,\n)'),
('2014-01-24 11:42:56', 'admin', 'muser.delete', '::1 - MJ', 'staf'),
('2014-01-24 11:43:57', 'admin', 'muser.add', '::1 - MJ', ';array (\n  username => kpakjakbar,\n  password => c87bee3ca9a113d7d77560bb37ae6e51,\n  ref_role => 2,\n  ref_satker => 1.26.004,\n  nama => KPAK Jakarta Barat,\n  nip => 3,\n  email => kpakjakbar@jakarta.go.id,\n)'),
('2014-01-24 11:45:27', 'admin', 'muser.add', '::1 - MJ', ';array (\n  username => kpakjaktim,\n  password => c87bee3ca9a113d7d77560bb37ae6e51,\n  ref_role => 2,\n  ref_satker => 1.26.005,\n  nama => KPAK Jakarta Timur,\n  nip => 4,\n  email => kpajaktim@jakarta.go.id,\n)'),
('2014-01-24 11:47:24', 'admin', 'muser.add', '::1 - MJ', ';array (\n  username => kpakkep1000,\n  password => c87bee3ca9a113d7d77560bb37ae6e51,\n  ref_role => 2,\n  ref_satker => 1.26.006,\n  nama => kpakkep1000,\n  nip => 5,\n  email => kpakkep1000@jakarta.go.id,\n)'),
('2014-01-24 11:48:06', 'admin', 'muser.add', '::1 - MJ', 'kpakkep1000;array (\n  ref_role => 2,\n  ref_satker => 1.26.006,\n  nama => KPAK Kepulauan Seribu,\n  nip => 5,\n  email => kpakkep1000@jakarta.go.id,\n)'),
('2014-01-24 11:49:09', 'admin', 'muser.add', '::1 - MJ', ';array (\n  username => keuangan,\n  password => c87bee3ca9a113d7d77560bb37ae6e51,\n  ref_role => 4,\n  ref_satker => 1.26.000K,\n  nama => Bagian Keuangan,\n  nip => 6,\n  email => keuangan@bpadjakarta.net,\n)'),
('2014-01-24 11:50:21', 'admin', 'muser.add', '::1 - MJ', ';array (\n  username => pusat,\n  password => c87bee3ca9a113d7d77560bb37ae6e51,\n  ref_role => 3,\n  ref_satker => 1.26.000,\n  nama => Saptadi,\n  nip => 7,\n  email => saptadi@gmail.com,\n)'),
('2014-01-24 13:55:30', 'admin', 'muser.logout', '::1 - MJ', 'admin'),
('2014-01-24 13:55:41', 'kpakjakut', 'muser.auth', '::1 - MJ', 'kpakjakut'),
('2014-01-24 13:56:05', 'kpakjakut', 'muser.logout', '::1 - MJ', 'kpakjakut'),
('2014-01-24 13:56:10', 'admin', 'muser.auth', '::1 - MJ', 'admin'),
('2014-01-24 13:57:24', 'admin', 'muser.edit_role_access', '::1 - MJ', '2;array (\n  0 => 23,\n  1 => 26,\n  2 => 19,\n  3 => 36,\n  4 => 8,\n  5 => 24,\n  6 => 20,\n  7 => 29,\n  8 => 28,\n  9 => 21,\n  10 => 9,\n  11 => 17,\n)'),
('2014-01-24 13:57:31', 'admin', 'muser.logout', '::1 - MJ', 'admin'),
('2014-01-24 13:57:40', 'kpakjakut', 'muser.auth', '::1 - MJ', 'kpakjakut'),
('2014-01-24 14:14:53', 'kpakjakut', 'muser.logout', '::1 - MJ', 'kpakjakut'),
('2014-01-24 14:14:59', 'admin', 'muser.auth', '::1 - MJ', 'admin'),
('2014-01-24 14:30:43', 'admin', 'mlayanan.add', '::1 - MJ', '8;array (\n  tahun => 2014,\n  uraian => Jumlah Koleksi Stasioner Gedung yang dipinjam,\n  satuan => koleksi,\n  target => 80,\n  ref_satker => 1,\n)'),
('2014-01-24 14:37:54', 'admin', 'muser.logout', '::1 - MJ', 'admin'),
('2014-01-24 14:38:03', 'kpakjakut', 'muser.auth', '::1 - MJ', 'kpakjakut'),
('2014-01-24 14:47:16', 'kpakjakut', 'muser.logout', '::1 - MJ', 'kpakjakut'),
('2014-01-24 14:47:25', 'admin', 'muser.auth', '::1 - MJ', 'admin'),
('2014-01-24 14:48:56', 'admin', 'muser.edit_role_access', '::1 - MJ', '2;array (\n  0 => 23,\n  1 => 26,\n  2 => 19,\n  3 => 36,\n  4 => 22,\n  5 => 25,\n  6 => 18,\n  7 => 8,\n  8 => 24,\n  9 => 20,\n  10 => 29,\n  11 => 28,\n  12 => 21,\n  13 => 9,\n  14 => 17,\n)'),
('2014-01-24 16:21:14', 'admin', 'muser.edit_role_access', '::1 - MJ', '4;array (\n  0 => 34,\n  1 => 33,\n  2 => 37,\n)'),
('2014-01-24 16:22:59', 'admin', 'muser.edit_role_access', '::1 - MJ', '3;array (\n  0 => 23,\n  1 => 26,\n  2 => 19,\n  3 => 36,\n  4 => 34,\n  5 => 33,\n  6 => 37,\n  7 => 22,\n  8 => 25,\n  9 => 18,\n  10 => 31,\n  11 => 32,\n  12 => 8,\n  13 => 24,\n  14 => 20,\n  15 => 29,\n  16 => 28,\n  17 => 21,\n  18 => 9,\n  19 => 17,\n  20 => 35,\n  21 => 10,\n  22 => 30,\n  23 => 13,\n  24 => 14,\n  25 => 12,\n  26 => 16,\n  27 => 27,\n  28 => 15,\n  29 => 11,\n)'),
('2014-01-25 14:43:40', 'admin', 'muser.auth', '::1 - MJ', 'admin'),
('2014-01-25 14:47:32', 'admin', 'mkegiatan.edit_persen', '::1 - MJ', '188;array (\n  persen_persiapan => 20,\n  persen_pelaksanaan => 50,\n  persen_penyelesaian => 30,\n)'),
('2014-01-25 14:47:59', 'admin', 'mpekerjaan.add', '::1 - MJ', 'array (\n  ref_kegiatan => 188,\n  nama_pekerjaan => Pembuatan KAK,\n  tahap => 1,\n  p_bulan_target => 3,\n  p_bobot => 100,\n  urutan => 1,\n)'),
('2014-01-25 14:49:21', 'admin', 'mpekerjaan.add', '::1 - MJ', 'array (\n  ref_kegiatan => 188,\n  nama_pekerjaan => Pengadaan Barang,\n  tahap => 2,\n  p_bulan_target => 4,\n  p_bobot => 50,\n  urutan => 1,\n)'),
('2014-01-25 14:50:16', 'admin', 'mpekerjaan.add', '::1 - MJ', 'array (\n  ref_kegiatan => 188,\n  nama_pekerjaan => Pengumuman Lelang,\n  tahap => 2,\n  p_bulan_target => 3,\n  p_bobot => 50,\n  urutan => 2,\n)'),
('2014-01-25 14:50:39', 'admin', 'mpekerjaan.edit', '::1 - MJ', '2;array (\n  nama_pekerjaan => Pengadaan Barang,\n  p_bulan_target => 4,\n  p_bobot => 30,\n  urutan => 2,\n)'),
('2014-01-25 14:51:04', 'admin', 'mpekerjaan.edit', '::1 - MJ', '2;array (\n  nama_pekerjaan => Pengadaan Barang,\n  p_bulan_target => 4,\n  p_bobot => 50,\n  urutan => 3,\n)'),
('2014-01-25 14:51:56', 'admin', 'mpekerjaan.add', '::1 - MJ', 'array (\n  ref_kegiatan => 188,\n  nama_pekerjaan => Pembuatan Berita Acara,\n  tahap => 3,\n  p_bulan_target => 5,\n  p_bobot => 50,\n  urutan => 1,\n)'),
('2014-01-25 14:52:31', 'admin', 'mpekerjaan.add', '::1 - MJ', 'array (\n  ref_kegiatan => 188,\n  nama_pekerjaan => Pembayaran,\n  tahap => 3,\n  p_bulan_target => 4,\n  p_bobot => 50,\n  urutan => 2,\n)'),
('2014-01-25 14:57:21', 'admin', 'mkegiatan.kunci', '::1 - MJ', '188;1'),
('2014-01-25 15:03:07', 'admin', 'manggaran.add_edit', '::1 - MJ', ';array (\n  urutan => 1,\n  ref_kegiatan => 188,\n  ref_rekening => 5.2.3.10.05,\n  uraian => Pengadaan Mesin Scanner dan Server untuk Digitalisasi,\n  p_jumlah => 300000000,\n)'),
('2014-01-25 15:03:35', 'admin', 'manggaran.add_edit', '::1 - MJ', '1;array (\n  urutan => 2,\n  ref_kegiatan => 188,\n  uraian => Pengadaan Mesin Scanner dan Server untuk Digitalisasi,\n  p_jumlah => 200000000,\n)'),
('2014-01-25 15:06:01', 'admin', 'mkegiatan.kunci', '::1 - MJ', '188;1'),
('2014-01-25 15:20:01', 'admin', 'anggaran.dorealisasi', '::1 - MJ', '1;array (\n  4 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n  ),\n)'),
('2014-01-25 15:24:09', 'admin', 'anggaran.dorealisasi', '::1 - MJ', '1;array (\n  4 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n  ),\n  5 => \n  array (\n    spj => 100000,\n    sp2d => 100000,\n  ),\n)'),
('2014-01-25 15:24:23', 'admin', 'anggaran.dorealisasi', '::1 - MJ', '1;array (\n  4 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n  ),\n)'),
('2014-01-25 17:25:17', 'admin', 'muser.auth', '::1 - MJ', 'admin'),
('2014-01-25 17:27:03', 'admin', 'anggaran.dorealisasi', '::1 - MJ', '1;array (\n  4 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n  ),\n)'),
('2014-01-25 18:27:52', 'admin', 'anggaran.dorealisasi', '::1 - MJ', '1;array (\n  1 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  2 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  3 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  4 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  5 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  6 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  7 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  8 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  9 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  10 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  11 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  12 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n)'),
('2014-01-25 18:28:12', 'admin', 'anggaran.dorealisasi', '::1 - MJ', '1;array (\n  1 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  2 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  3 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  4 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  5 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  6 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  7 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  8 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  9 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  10 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  11 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  12 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n)'),
('2014-01-25 19:02:48', 'admin', 'anggaran.dorealisasi', '::1 - MJ', '1;array (\n  1 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  2 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  3 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  4 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  5 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  6 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  7 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  8 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  9 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  10 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  11 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  12 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n)'),
('2014-01-25 19:03:02', 'admin', 'anggaran.dorealisasi', '::1 - MJ', '1;array (\n  1 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  2 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  3 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  4 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  5 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  6 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  7 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  8 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  9 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  10 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  11 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  12 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n)'),
('2014-01-25 19:04:43', 'admin', 'anggaran.dorealisasi', '::1 - MJ', '1;array (\n  1 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  2 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  3 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  4 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  5 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  6 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  7 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  8 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  9 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  10 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  11 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  12 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n)'),
('2014-01-25 19:13:54', 'admin', 'anggaran.dorealisasi', '::1 - MJ', '1;array (\n  1 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  2 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  3 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  4 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  5 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  6 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  7 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  8 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  9 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  10 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  11 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  12 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n)'),
('2014-01-25 19:13:58', 'admin', 'anggaran.dorealisasi', '::1 - MJ', '1;array (\n  1 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  2 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  3 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  4 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  5 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  6 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  7 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  8 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  9 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  10 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  11 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  12 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n)'),
('2014-01-25 19:21:40', 'admin', 'anggaran.dorealisasi', '::1 - MJ', '1;array (\n  1 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  2 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  3 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  4 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  5 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  6 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  7 => \n  array (\n    spj => 300000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  8 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  9 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  10 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  11 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  12 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n)'),
('2014-01-25 19:24:24', 'admin', 'anggaran.dorealisasi', '::1 - MJ', '1;array (\n  1 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  2 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  3 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  4 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  5 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  6 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  7 => \n  array (\n    spj => 0,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  8 => \n  array (\n    spj => 0,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  9 => \n  array (\n    spj => 0,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  10 => \n  array (\n    spj => 0,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  11 => \n  array (\n    spj => 0,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  12 => \n  array (\n    spj => 0,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n)'),
('2014-01-25 19:27:17', 'admin', 'anggaran.dorealisasi', '::1 - MJ', '1;array (\n  1 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  2 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  3 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  4 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  5 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  6 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  7 => \n  array (\n    spj => 250000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  8 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  9 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  10 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  11 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  12 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n)'),
('2014-01-25 19:29:10', 'admin', 'anggaran.dorealisasi', '::1 - MJ', '1;array (\n  1 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  2 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  3 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  4 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  5 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  6 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  7 => \n  array (\n    spj => 0,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  8 => \n  array (\n    spj => 0,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  9 => \n  array (\n    spj => 0,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  10 => \n  array (\n    spj => 0,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  11 => \n  array (\n    spj => 0,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  12 => \n  array (\n    spj => 0,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n)'),
('2014-01-25 19:31:11', 'admin', 'anggaran.dorealisasi', '::1 - MJ', '1;array (\n  1 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  2 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  3 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  4 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  5 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  6 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  7 => \n  array (\n    spj => 200000000,\n    sp2d => 400000000,\n    potensi => 0,\n  ),\n  8 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  9 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  10 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  11 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  12 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n)'),
('2014-01-25 19:33:32', 'admin', 'anggaran.dorealisasi', '::1 - MJ', '1;array (\n  1 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  2 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  3 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  4 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  5 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  6 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  7 => \n  array (\n    spj => 400000000,\n    sp2d => 400000000,\n    potensi => 0,\n  ),\n  8 => \n  array (\n    spj => 200000000,\n    sp2d => 400000000,\n    potensi => 0,\n  ),\n  9 => \n  array (\n    spj => 200000000,\n    sp2d => 400000000,\n    potensi => 0,\n  ),\n  10 => \n  array (\n    spj => 200000000,\n    sp2d => 400000000,\n    potensi => 0,\n  ),\n  11 => \n  array (\n    spj => 200000000,\n    sp2d => 400000000,\n    potensi => 0,\n  ),\n  12 => \n  array (\n    spj => 200000000,\n    sp2d => 400000000,\n    potensi => 0,\n  ),\n)'),
('2014-01-25 19:35:56', 'admin', 'anggaran.dorealisasi', '::1 - MJ', '1;array (\n  1 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  2 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  3 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  4 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  5 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  6 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  7 => \n  array (\n    spj => 450000000,\n    sp2d => 400000000,\n    potensi => 0,\n  ),\n  8 => \n  array (\n    spj => 400000000,\n    sp2d => 400000000,\n    potensi => 0,\n  ),\n  9 => \n  array (\n    spj => 400000000,\n    sp2d => 400000000,\n    potensi => 0,\n  ),\n  10 => \n  array (\n    spj => 400000000,\n    sp2d => 400000000,\n    potensi => 0,\n  ),\n  11 => \n  array (\n    spj => 400000000,\n    sp2d => 400000000,\n    potensi => 0,\n  ),\n  12 => \n  array (\n    spj => 400000000,\n    sp2d => 400000000,\n    potensi => 0,\n  ),\n)'),
('2014-01-25 19:36:21', 'admin', 'anggaran.dorealisasi', '::1 - MJ', '1;array (\n  1 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  2 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  3 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  4 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  5 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  6 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  7 => \n  array (\n    spj => 450000000,\n    sp2d => 400000000,\n    potensi => 0,\n  ),\n  8 => \n  array (\n    spj => 400000000,\n    sp2d => 400000000,\n    potensi => 0,\n  ),\n  9 => \n  array (\n    spj => 450000000,\n    sp2d => 400000000,\n    potensi => 0,\n  ),\n  10 => \n  array (\n    spj => 450000000,\n    sp2d => 400000000,\n    potensi => 0,\n  ),\n  11 => \n  array (\n    spj => 450000000,\n    sp2d => 400000000,\n    potensi => 0,\n  ),\n  12 => \n  array (\n    spj => 450000000,\n    sp2d => 400000000,\n    potensi => 0,\n  ),\n)'),
('2014-01-25 19:42:01', 'admin', 'anggaran.dorealisasi', '::1 - MJ', '1;array (\n  1 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  2 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  3 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  4 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 200000000,\n  ),\n  5 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  6 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  7 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 450000000,\n  ),\n  8 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  9 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  10 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 450000000,\n  ),\n  11 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  12 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n)'),
('2014-01-25 19:44:06', 'admin', 'anggaran.dorealisasi', '::1 - MJ', '1;array (\n  1 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  2 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  3 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  4 => \n  array (\n    spj => 0,\n    sp2d => 0,\n    potensi => 0,\n  ),\n  5 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  6 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  7 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  8 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  9 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  10 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  11 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n  12 => \n  array (\n    spj => 200000000,\n    sp2d => 200000000,\n    potensi => 0,\n  ),\n)'),
('2014-01-27 09:29:06', 'kpakjakut', 'muser.auth', '::1 - MJ', 'kpakjakut'),
('2014-01-27 09:29:48', 'kpakjakut', 'muser.logout', '::1 - MJ', 'kpakjakut'),
('2014-01-27 09:29:56', 'admin', 'muser.auth', '::1 - MJ', 'admin'),
('2014-01-27 09:31:29', 'admin', 'muser.logout', '::1 - MJ', 'admin'),
('2014-01-27 09:31:36', 'kpakjaksel', 'muser.auth', '::1 - MJ', 'kpakjaksel'),
('2014-01-27 09:32:32', 'kpakjaksel', 'muser.logout', '::1 - MJ', 'kpakjaksel'),
('2014-01-27 09:32:36', 'admin', 'muser.auth', '::1 - MJ', 'admin'),
('2014-01-27 09:33:40', 'admin', 'muser.logout', '::1 - MJ', 'admin'),
('2014-01-27 11:38:06', 'admin', 'muser.auth', '172.16.64.14', 'admin'),
('2014-01-27 11:50:19', 'admin', 'muser.logout', '172.16.64.14', 'admin'),
('2014-01-27 12:06:34', 'admin', 'muser.auth', '172.16.64.14', 'admin'),
('2014-01-27 12:09:49', 'admin', 'muser.logout', '172.16.64.14', 'admin'),
('2014-02-12 11:43:49', 'admin', 'muser.auth', '172.16.64.14', 'admin'),
('2014-02-12 11:44:08', 'admin', 'muser.auth', '172.16.64.14', 'admin'),
('2014-02-12 12:04:37', 'admin', 'muser.logout', '172.16.64.14', 'admin'),
('2014-02-12 14:14:30', 'admin', 'muser.auth', '172.16.64.14', 'admin'),
('2014-02-12 15:04:05', 'admin', 'mbtl.kunci', '172.16.64.14', '2013'),
('2014-02-12 15:04:22', 'admin', 'mbtl.kunci', '172.16.64.14', '2013'),
('2014-02-12 16:23:50', 'admin', 'mbtl.kunci', '172.16.64.14', '2013');

-- --------------------------------------------------------

--
-- Table structure for table `t_anggaran`
--

CREATE TABLE IF NOT EXISTS `t_anggaran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uraian` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `ref_kegiatan` int(11) NOT NULL,
  `ref_rekening` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `p_jumlah` double NOT NULL,
  `r_spj` double NOT NULL DEFAULT '0',
  `r_sp2d` double NOT NULL DEFAULT '0',
  `urutan` int(11) NOT NULL,
  `p_user` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `p_datetime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ref_rekening` (`ref_rekening`),
  KEY `ref_kegiatan` (`ref_kegiatan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `t_anggaran`
--

INSERT INTO `t_anggaran` (`id`, `uraian`, `ref_kegiatan`, `ref_rekening`, `p_jumlah`, `r_spj`, `r_sp2d`, `urutan`, `p_user`, `p_datetime`) VALUES
(1, 'Pengadaan Mesin Scanner dan Server untuk Digitalisasi', 188, '5.2.3.10.05', 200000000, 200000000, 200000000, 2, 'admin', '2014-01-25 15:03:35');

-- --------------------------------------------------------

--
-- Table structure for table `t_anggaran_realisasi`
--

CREATE TABLE IF NOT EXISTS `t_anggaran_realisasi` (
  `ref_anggaran` int(11) NOT NULL,
  `bulan` int(11) NOT NULL,
  `spj` double NOT NULL,
  `sp2d` double NOT NULL,
  `potensi` double NOT NULL,
  `r_user` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `r_datetime` datetime NOT NULL,
  PRIMARY KEY (`ref_anggaran`,`bulan`),
  KEY `ref_anggaran` (`ref_anggaran`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `t_anggaran_realisasi`
--

INSERT INTO `t_anggaran_realisasi` (`ref_anggaran`, `bulan`, `spj`, `sp2d`, `potensi`, `r_user`, `r_datetime`) VALUES
(1, 1, 0, 0, 0, 'admin', '2014-01-25 19:44:06'),
(1, 2, 0, 0, 0, 'admin', '2014-01-25 19:44:06'),
(1, 3, 0, 0, 0, 'admin', '2014-01-25 19:44:06'),
(1, 4, 0, 0, 0, 'admin', '2014-01-25 19:44:06'),
(1, 5, 200000000, 200000000, 0, 'admin', '2014-01-25 19:44:06'),
(1, 6, 200000000, 200000000, 0, 'admin', '2014-01-25 19:44:06'),
(1, 7, 200000000, 200000000, 0, 'admin', '2014-01-25 19:44:06'),
(1, 8, 200000000, 200000000, 0, 'admin', '2014-01-25 19:44:06'),
(1, 9, 200000000, 200000000, 0, 'admin', '2014-01-25 19:44:06'),
(1, 10, 200000000, 200000000, 0, 'admin', '2014-01-25 19:44:06'),
(1, 11, 200000000, 200000000, 0, 'admin', '2014-01-25 19:44:06'),
(1, 12, 200000000, 200000000, 0, 'admin', '2014-01-25 19:44:06');

-- --------------------------------------------------------

--
-- Table structure for table `t_btl`
--

CREATE TABLE IF NOT EXISTS `t_btl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_tahun` int(11) NOT NULL,
  `ref_rekening` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `p_jumlah` double NOT NULL,
  `r_spj` double NOT NULL DEFAULT '0',
  `r_sp2d` double NOT NULL DEFAULT '0',
  `p_user` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `p_datetime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ref_tahun_2` (`ref_tahun`,`ref_rekening`),
  KEY `ref_rekening` (`ref_rekening`),
  KEY `ref_tahun` (`ref_tahun`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `t_btl`
--

INSERT INTO `t_btl` (`id`, `ref_tahun`, `ref_rekening`, `p_jumlah`, `r_spj`, `r_sp2d`, `p_user`, `p_datetime`) VALUES
(1, 2013, '5.1.1.01.02.001', 31887409885, 0, 0, 'admin', '2013-12-09 15:45:23'),
(3, 2013, '5.1.1.01.03.003', 956420237, 0, 0, 'admin', '2013-12-09 15:47:08'),
(4, 2013, '5.1.1.01.03.005', 456492750, 0, 0, 'admin', '2013-12-09 15:48:40'),
(5, 2013, '5.1.1.01.03.006', 175184950, 0, 0, 'admin', '2013-12-09 15:49:26');

-- --------------------------------------------------------

--
-- Table structure for table `t_btl_realisasi`
--

CREATE TABLE IF NOT EXISTS `t_btl_realisasi` (
  `ref_btl` int(11) NOT NULL,
  `bulan` int(11) NOT NULL,
  `spj` double NOT NULL,
  `sp2d` double NOT NULL,
  `r_user` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `r_datetime` datetime NOT NULL,
  PRIMARY KEY (`ref_btl`,`bulan`),
  KEY `ref_btl` (`ref_btl`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_capaian`
--

CREATE TABLE IF NOT EXISTS `t_capaian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_kegiatan` int(11) NOT NULL,
  `ref_capaian` int(11) NOT NULL,
  `uraian` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `nilai_p` int(11) NOT NULL,
  `nilai_r` int(11) NOT NULL,
  `satuan` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `insert_user` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `update_user` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ref_kegiatan` (`ref_kegiatan`),
  KEY `ref_capaian` (`ref_capaian`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_kegiatan`
--

CREATE TABLE IF NOT EXISTS `t_kegiatan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `ref_kegiatan` int(11) NOT NULL,
  `ref_sifat_kegiatan` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `ref_lokasi` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `ref_satker` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `tujuan` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `sasaran` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `persen_persiapan` int(3) NOT NULL DEFAULT '0',
  `persen_pelaksanaan` int(3) NOT NULL DEFAULT '0',
  `persen_penyelesaian` int(3) NOT NULL DEFAULT '0',
  `is_pekerjaan_plan_done` enum('0','1') COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `is_anggaran_plan_done` enum('0','1') COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `catatan` text COLLATE latin1_general_ci,
  `insert_user` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `insert_datetime` datetime DEFAULT NULL,
  `update_user` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ref_sifat_kegiatan` (`ref_sifat_kegiatan`),
  KEY `ref_lokasi` (`ref_lokasi`),
  KEY `ref_satker` (`ref_satker`),
  KEY `ref_kegiatan` (`ref_kegiatan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=190 ;

--
-- Dumping data for table `t_kegiatan`
--

INSERT INTO `t_kegiatan` (`id`, `nama`, `ref_kegiatan`, `ref_sifat_kegiatan`, `ref_lokasi`, `ref_satker`, `tujuan`, `sasaran`, `persen_persiapan`, `persen_pelaksanaan`, `persen_penyelesaian`, `is_pekerjaan_plan_done`, `is_anggaran_plan_done`, `catatan`, `insert_user`, `insert_datetime`, `update_user`, `update_datetime`) VALUES
(20, 'Pengadaan Komputer PC dan Notebook/laptop', 665, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(21, 'Pengadaan Printer lazerjet 1320 (A3+A4)', 666, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(22, 'Penyediaan Jasa Kebersihan Kantor (cleaning service) Gedung Perpustakaan Umum DKI Jakarta', 667, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(23, 'Penyediaan Jasa Telekomunikasi, Air, Telepon dan Listrik (TALI) Gedung Perpustakaan Umum Daerah Provinsi DKI Jakarta', 668, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(24, 'Penyediaan Jasa Telekomunikasi, Air, Telepon dan Listrik (TALI) Gedung Depo Arsip Daerah Provinsi DKI Jakarta', 669, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(25, 'Penyediaan Jasa Pemeliharaan Alat Pendingin (AC Central dan Split) Gedung Depo Arsip Pulomas', 670, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(26, 'Penyediaan Jasa Pemeliharaan Alat Pembangkit Listrik (genset) Gedung Depo Arsip Blok B dan D Pulomas', 671, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(27, 'Penyediaan Jasa Pemeliharaan Alat Angkutan (elevator) Gedung Depo Arsip Pulomas Blok B dan D', 672, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(28, 'Penyediaan Jasa Pemeliharaan Alat Angkut (gondola)', 673, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(29, 'Pengadaan Komputer / Laptop dan Printer', 674, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(30, 'Pengelolaan keprotokolan dan PKL/Riset bagi mahasiswa dan siswa SMK', 675, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(31, 'Pengelolaan administrasi barang dan penghapusan barang inventaris', 676, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(32, 'Pengadaan alat listrik dan elektronik pakai habis', 677, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(33, 'Pengadaan alat kerumahtanggaan', 678, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(34, 'Pengadaan bahan cetakan umum', 679, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(35, 'Penyediaan alat tulis kantor operasional BPAD', 680, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(36, 'Pengelolaan pengamanan gedung kantor', 681, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(37, 'Pemeliharaan pompa transfer', 682, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(38, 'Pemeliharaan mesin foto copy', 683, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(39, 'Pemeliharaan / pengantian suku cadang penghisap debu', 684, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(40, 'Pengadaan LCD proyektor', 685, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(41, 'Pemeliharaan / penggantian suku cadang mesin faximile dan telepon', 686, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(42, 'Peliputan dan perekaman kegiatan pemda dan peristiwa fenomena yang terjadi di jakarta', 687, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(43, 'Pengadaan Mesin Scanner dan server untuk digitalisasi', 688, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(44, 'Wawancara terhadap para tokoh sejarah tentang perkembangan dan pembangunan kota jakarta', 689, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(45, 'Pengadaan peralatan peliputan/perekaman', 690, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(46, 'Pengelolaan wajib serah arsip/dokumen', 691, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(47, 'Pengadaan peralatan fumigasi arsip', 692, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(48, 'Akuisisi duplikasi arsip vital', 693, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(49, 'Penataan Arsip Daerah', 694, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(50, 'Penghimpunan arsip dosir', 695, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(51, 'Penyusunan naskah sumber', 696, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(52, 'Pemeliharaan sarana dan prasarana pengolahan', 697, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(53, 'Pengadaan alat penetralisir udara', 698, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(54, 'Perawatan peralatan sarana dan prasarana mikrofilm', 699, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(55, 'Rekonstruksi Arsip/Dokumen dan Media Baru', 700, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(56, 'Pengadaan Sistem Pemadam Kebakaran Terbarukan untuk Gedung Depo Arsip', 701, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(57, 'Reboksing Arsip/Dokumen', 702, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(58, 'Perawatan dan pemeliharaan sarana digitalisasi arsip', 703, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(59, 'Microfilmisasi Arsip', 704, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(60, 'Penyelenggaraan Penghimpunan dan Penggandaan produk perundang-undangan dan media cetak kearsipan', 705, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(61, 'Pemeliharaan/Perawatan arsip konvensional dan media baru', 706, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(62, 'Identifikasi Arsip Terjaga', 707, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(63, 'Digitalisasi Arsip konvensional dan peta/gambar', 708, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(64, 'Migrasi Data Kearsipan', 709, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(65, 'Sercive, pengecetan / penggantian suku cadang kendaraan operasional dan khusus', 729, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(66, 'Pengadaan / pembelian ban dan accu kendaraan opersioanal dan khusus', 730, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(67, 'Penyediaan BBM Kendaraan Opersional dan Khusus', 731, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(68, 'Perpanjangan STNK kendaraan operasional dan khusus', 732, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(69, 'Pengendalian Disiplin dan Peningkatan Jasmani Pegawai', 733, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(70, 'Pengelolaan Administrasi Kepegawaian', 734, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(71, 'Pelaksanaan Pekerjaan Tambahan diluar jam kerja dan penyediaan transport kegiatan/rapat dinas diluar Kantor dalam Provinsi', 735, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(72, 'Pengembangan Wawasan dan Kompetensi Pegawai', 736, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(73, 'Bimbingan Rohani Pegawai', 737, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(74, 'Penyusunan Laporan Akuntabilitas Kinerja Instansi Pemerintah / SKPD', 738, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(75, 'Penyusunan RENJA SKPD', 739, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(76, 'Supervisi, Monitoring, Evaluasi, Pelaporan (SMEP) Kinerja BPAD', 740, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(77, 'Penyusunan laporan keuangan SKPD semester I', 741, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(78, 'Penyusunan neraca BPAD Provinsi DKI Jakarta', 742, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(79, 'Peningkatan akuntabilitas pertanggungjawaban keuangan SKPD', 743, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(80, 'Pembangunan gedung depo arsip blok c pulomas', 744, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(81, 'Pembangunan Blok A Gedung BPAD Pulomas', 745, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(82, 'Pengadaan Lemari Arsip untuk Peta/Gambar, Koran', 746, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(83, 'Pengadaan lemari simpan arsip (roll opack) sistem elektrik', 747, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(84, 'Pemeliharaan / pengecetan / penggantian suku cadang lemari arsip peta / gambar', 748, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(85, 'Pemeliharaan dan perawatan lemari arsip (roll opack)', 749, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(86, 'Pemeliharaan dan perawatan rak arsip', 750, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(87, 'Pendidikan dan pelatihan pengangkatan arsiparis tingkat ahli dan trampil', 751, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(88, 'Asistensi penataan arsip / dokumen', 752, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(89, 'Penyusutan Arsip in aktif', 753, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(90, 'Pencetakan Modul Kearsipan', 754, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(91, 'Pengadaan Boks arsip peta/gambar', 755, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(92, 'Pengadaan boks arsip', 756, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(93, 'Pengadaan map arsip', 757, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(94, 'Pengadaan Pakaian Kerja dan Kelengkapan Kerja', 758, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(95, 'Pengadaan Mesin Penghisap debu ruang kearsipan', 759, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(96, 'Pengadaan Gerobak Dorong Arsip', 760, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(97, 'Pengadaan alat pengatur kelembaban udara (dehumidefier)', 761, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(98, 'Pemeliharaan dan perawatan lemari arsip peta/gambar', 762, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(99, 'Supervisi, Monitoring, Evaluasi dan Pelaporan Pengelolaan Kearsipan SKPD', 763, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(100, 'Monitoring dan Identifikasi Arsip Vital SKPD', 764, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(101, 'Pemilihan Arsiparis Teladan Tingkat Daerah Tahun 2014', 765, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(102, 'Rapat Koordinasi Kearsipan Daerah', 766, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(103, 'Sosialisasi Kearsipan bagi kepala SKPD/UKPD', 767, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(104, 'Peningkatan Tata Kelola Arsip melalui Bimbingan Teknis (5 Angkatan)', 768, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(105, 'Bimbingan Teknis Arsip Vital', 769, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(106, 'Peningkatan Kompetensi Pengelola Arsip melalui Kompetisi Kearsipan', 770, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(107, 'Workshop dan Seminar Kearsipan', 771, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(108, 'Pengelolaan Data Center', 772, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(109, 'Sosialisasi Sistem Informasi Kearsipan', 773, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(110, 'Pemeliharaan Sarana Teknologi Informasi', 774, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(111, 'Pengadaan Sarana Teknologi Informasi', 775, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(112, 'Pengembangan Sistem Aplikasi Arsip Dinamis Perkantoran', 776, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(113, 'Peningkatan tertib pengelolaan ketatausahaan dan kearsipan di BPAD dan KPAK', 777, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(114, 'Pengelolaan dan penyusutan arsip dinamis aktif', 778, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(115, 'Pengelolaan Website', 779, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(116, 'Keikutsertaan Pameran', 780, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(117, 'Promosi, Publikasi dan Sosialisasi', 781, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(118, 'Pengadaan Sarana dan Bahan Promosi', 792, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(119, 'Pengadaan Sarana Beranda Edukasi Rekreasi Anak Sejahtera', 793, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(120, 'Iklan Media Luar Ruang', 794, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(121, 'Iklan Layanan Masyarakat', 795, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(122, 'Hari Anak Jakarta Membaca (Hanjaba)', 796, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(123, 'Pemilihan Abang dan None Buku (Abnonku) Jakarta', 797, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(124, 'Wajib Kunjung ke Perpustakaan', 798, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(125, 'Pembuatan Buletin Mantap', 799, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(126, 'Operasionalisasi Dewan Perpustakaan', 800, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(127, 'Pemberdayaan Abnonku', 801, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(128, 'Optimalisasi dan pengembangan Kemitraan', 802, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(129, 'Pengadaan Sarana dan Prasarana Pameran', 803, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(130, 'Pembinaan Kemitraan Perpustakaan Sekolah', 804, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(131, 'Pengembangan wawasan kepustakawanan dan CPTA', 805, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(132, 'Pendidikan dan Pelatihan Penciptaan Calon Pustakawan Tingkat Ahli', 806, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(133, 'Workshop Taman Bacaan Masyarakat', 807, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(134, 'Pembekalan Lomba Perpustakaan Tingkat Nasional', 808, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(135, 'Penyelenggaraan Bimbingan Teknis Perpustakaan', 809, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(136, 'Penyusunan Buku Panduan Perpustakaan Sekolah', 810, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(137, 'Penyusunan Buku Pedoman Teknis Layanan Perpustakaan Umum', 811, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(138, 'Penyusunan Buku Pedoman Operasional Taman Bacaan Masyarakat', 812, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(139, 'Pengelolaan Perpustakaan Kelurahan dan Kecamatan', 813, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(140, 'Rapat Koordinasi Perpustakaan Daerah', 814, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(141, 'Pengembangan Sistem Komunikasi Digital', 815, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(142, 'Pembangunan Jakartapedia', 816, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(143, 'Operasionalisasi Mobil Pameran', 817, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(144, 'Pembelajaran online untuk masyarakat berbasis Perpustakaan (Public e-Learning)', 818, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(145, 'Peningkatan Kompetensi Pengelola Perpustakaan melalui Kompetisi', 819, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(146, 'Identifikasi dan Inventarisasi Perpustakaan Khusus dan TBM', 820, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(147, 'Seminar Perpustakaan', 821, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(148, 'Pengadaan bahan perpustakaan siap layan', 822, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(149, 'Pengelolaan KCKR hasil pelaksanaan Perda No. 6 Tahun 2006', 823, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(150, 'Pengadaan current issue', 824, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(151, 'Penyediaan media informasi berkala', 825, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(152, 'Penyusunan buku bibliografi daerah', 826, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(153, 'Pengadaan e-Book', 827, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(154, 'Pengadaan sarana dan bahan pustaka permainan anak (edu games)', 828, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(155, 'Pengolahan bahan perpustakaan', 829, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(156, 'Verifikasi data bahan pustaka', 830, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(157, 'Pengadaan supplies bahan perpustakaan', 831, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(158, 'Pengadaan peralatan pengolahan bahan pustaka', 832, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(159, 'Penyusunan katalog induk daerah', 833, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(160, 'Pengadaan sarana dan prasarana layanan perpustakaan', 834, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(161, 'Penataan dan Penghijauan Ruang Perpustakaan', 835, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(162, 'Pembangunan Gedung perpustakaan bertaraf internasional 8 lantai', 836, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(163, 'Penyediaan Jasa Pemeliharaan Alat Pendingin (AC Central dan Split) Gedung Perpustakaan Umum Provinsi DKI Jakarta', 837, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(164, 'Penyediaan Jasa Pemeliharaan Alat Pembangkit Listrik (Genset) Gedung Perpustakaan Umum Provinsi DKI Jakarta', 838, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(165, 'Penyediaan Jasa Pemeliharaan Alat Angkutan (elevator) Gedung Perpustakaan Umum Provinsi DKI Jakarta', 839, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(166, 'Pemeliharaan sarana dan prasarana layanan perpustakaan', 840, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(167, 'Pengadaan RFID for Library', 841, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(168, 'Pengadaan Robotic Book Scanner', 842, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(169, 'Pemeliharaan RFID', 843, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(170, 'Penyusunan Regulasi Urusan Perpustakaan dan Kearsipan', 844, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(171, 'Pengadaan Sistem Pemadam Kebakaran Terbarukan untuk Gedung Perpustakaan', 845, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(172, 'Rehab Total Gedung Kantor Eks Perpustakaan Umum Kota Adm Jak-Tim', 846, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(173, 'Pengembangan Aplikasi SMEP Perpustakaan dan Kearsipan', 847, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(174, 'Perpanjangan Jam Layanan dan Penerimaan Kunjungan Mitra Perpustakaan', 848, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(175, 'Layanan Pengembangan Komunitas Pemustaka dan Anggota', 849, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(176, 'Penilaian Angka Kredit Jabatan Fungsional Pustakawan', 850, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(177, 'Sosialisasi Sistem Informasi Perpustakaan', 851, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(178, 'Workshop Pengembangan Cetakbiru Layanan (service Blueprint) untuk Inovasi Layanan', 852, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(179, 'Pendidikan dan Pelatihan Perpustakaan bagi Pengelola Perpustakaan dan calon Kepala Perpustakaan Sekolah', 853, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(180, 'Pengembangan wawasan dan kapasitas pustakawan', 854, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(181, 'Pengembangan koleksi perpustakaan melalui identifikasi bahan pustaka', 855, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(182, 'Peningkatan Tata Kelola Perpustakaan melalui Bimbingan Teknis', 856, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(183, 'Penyelenggaraan Training of Trainer perpustakaan', 857, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(184, 'Pengadaan Komputer PC dan Notebook/laptop', 858, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(185, 'Pengadaan Printer lazerjet 1320 (A3+A4)', 859, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(186, 'Penyediaan Jasa Kebersihan Kantor (cleaning service) Gedung Perpustakaan Umum DKI Jakarta', 860, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(187, 'Peliputan dan perekaman kegiatan pemda dan peristiwa fenomena yang terjadi di jakarta', 861, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL),
(188, 'Pengadaan Mesin Scanner dan server untuk digitalisasi', 862, NULL, NULL, NULL, NULL, NULL, 20, 50, 30, '1', '1', NULL, NULL, NULL, NULL, NULL),
(189, 'Wawancara terhadap para tokoh sejarah tentang perkembangan dan pembangunan kota jakarta', 863, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '0', '0', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_layanan`
--

CREATE TABLE IF NOT EXISTS `t_layanan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_satker` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `tahun` int(11) NOT NULL,
  `uraian` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `target` int(11) NOT NULL,
  `realisasi` int(11) NOT NULL DEFAULT '0',
  `satuan` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `insert_user` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `update_user` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ref_satker_2` (`ref_satker`,`tahun`,`uraian`,`satuan`),
  KEY `ref_satker` (`ref_satker`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=46 ;

--
-- Dumping data for table `t_layanan`
--

INSERT INTO `t_layanan` (`id`, `ref_satker`, `tahun`, `uraian`, `target`, `realisasi`, `satuan`, `insert_user`, `insert_datetime`, `update_user`, `update_datetime`) VALUES
(1, '1.26.001', 2014, 'Jumlah Pengunjung Stasioner Gedung', 0, 0, 'orang', '', '0000-00-00 00:00:00', NULL, NULL),
(2, '1.26.001', 2014, 'Jumlah Pengunjung Stasioner Bergerak', 0, 0, 'orang', '', '0000-00-00 00:00:00', NULL, NULL),
(3, '1.26.001', 2014, 'Jumlah Pengunjung Virtual', 0, 0, 'orang', '', '0000-00-00 00:00:00', NULL, NULL),
(4, '1.26.001', 2014, 'Jumlah Anggota', 0, 0, 'orang', '', '0000-00-00 00:00:00', NULL, NULL),
(5, '1.26.001', 2014, 'Jumlah Peminjam Koleksi Stasioner Gedung', 0, 0, 'orang', '', '0000-00-00 00:00:00', NULL, NULL),
(6, '1.26.001', 2014, 'Jumlah Peminjam Koleksi Virtual', 0, 0, 'orang', '', '0000-00-00 00:00:00', NULL, NULL),
(7, '1.26.001', 2014, 'Jumlah Koleksi Stasioner Gedung yang dipinjam', 0, 0, 'koleksi', '', '0000-00-00 00:00:00', NULL, NULL),
(8, '1.26.001', 2014, 'Jumlah Koleksi Stasioner Bergerak yang dipinjam', 0, 0, 'koleksi', '', '0000-00-00 00:00:00', NULL, NULL),
(9, '1.26.001', 2014, 'Jumlah Koleksi Virtual yang dipinjam', 0, 0, 'koleksi', '', '0000-00-00 00:00:00', NULL, NULL),
(10, '1.26.002', 2014, 'Jumlah Pengunjung Stasioner Gedung', 0, 0, 'orang', '', '0000-00-00 00:00:00', NULL, NULL),
(11, '1.26.002', 2014, 'Jumlah Pengunjung Stasioner Bergerak', 0, 0, 'orang', '', '0000-00-00 00:00:00', NULL, NULL),
(12, '1.26.002', 2014, 'Jumlah Pengunjung Virtual', 0, 0, 'orang', '', '0000-00-00 00:00:00', NULL, NULL),
(13, '1.26.002', 2014, 'Jumlah Anggota', 0, 0, 'orang', '', '0000-00-00 00:00:00', NULL, NULL),
(14, '1.26.002', 2014, 'Jumlah Peminjam Koleksi Stasioner Gedung', 0, 0, 'orang', '', '0000-00-00 00:00:00', NULL, NULL),
(15, '1.26.002', 2014, 'Jumlah Peminjam Koleksi Virtual', 0, 0, 'orang', '', '0000-00-00 00:00:00', NULL, NULL),
(16, '1.26.002', 2014, 'Jumlah Koleksi Stasioner Gedung yang dipinjam', 0, 0, 'koleksi', '', '0000-00-00 00:00:00', NULL, NULL),
(17, '1.26.002', 2014, 'Jumlah Koleksi Stasioner Bergerak yang dipinjam', 0, 0, 'koleksi', '', '0000-00-00 00:00:00', NULL, NULL),
(18, '1.26.002', 2014, 'Jumlah Koleksi Virtual yang dipinjam', 0, 0, 'koleksi', '', '0000-00-00 00:00:00', NULL, NULL),
(19, '1.26.003', 2014, 'Jumlah Pengunjung Stasioner Gedung', 0, 0, 'orang', '', '0000-00-00 00:00:00', NULL, NULL),
(20, '1.26.003', 2014, 'Jumlah Pengunjung Stasioner Bergerak', 0, 0, 'orang', '', '0000-00-00 00:00:00', NULL, NULL),
(21, '1.26.003', 2014, 'Jumlah Pengunjung Virtual', 0, 0, 'orang', '', '0000-00-00 00:00:00', NULL, NULL),
(22, '1.26.003', 2014, 'Jumlah Anggota', 0, 0, 'orang', '', '0000-00-00 00:00:00', NULL, NULL),
(23, '1.26.003', 2014, 'Jumlah Peminjam Koleksi Stasioner Gedung', 0, 0, 'orang', '', '0000-00-00 00:00:00', NULL, NULL),
(24, '1.26.003', 2014, 'Jumlah Peminjam Koleksi Virtual', 0, 0, 'orang', '', '0000-00-00 00:00:00', NULL, NULL),
(25, '1.26.003', 2014, 'Jumlah Koleksi Stasioner Gedung yang dipinjam', 0, 0, 'koleksi', '', '0000-00-00 00:00:00', NULL, NULL),
(26, '1.26.003', 2014, 'Jumlah Koleksi Stasioner Bergerak yang dipinjam', 0, 0, 'koleksi', '', '0000-00-00 00:00:00', NULL, NULL),
(27, '1.26.003', 2014, 'Jumlah Koleksi Virtual yang dipinjam', 0, 0, 'koleksi', '', '0000-00-00 00:00:00', NULL, NULL),
(28, '1.26.004', 2014, 'Jumlah Pengunjung Stasioner Gedung', 0, 0, 'orang', '', '0000-00-00 00:00:00', NULL, NULL),
(29, '1.26.004', 2014, 'Jumlah Pengunjung Stasioner Bergerak', 0, 0, 'orang', '', '0000-00-00 00:00:00', NULL, NULL),
(30, '1.26.004', 2014, 'Jumlah Pengunjung Virtual', 0, 0, 'orang', '', '0000-00-00 00:00:00', NULL, NULL),
(31, '1.26.004', 2014, 'Jumlah Anggota', 0, 0, 'orang', '', '0000-00-00 00:00:00', NULL, NULL),
(32, '1.26.004', 2014, 'Jumlah Peminjam Koleksi Stasioner Gedung', 0, 0, 'orang', '', '0000-00-00 00:00:00', NULL, NULL),
(33, '1.26.004', 2014, 'Jumlah Peminjam Koleksi Virtual', 0, 0, 'orang', '', '0000-00-00 00:00:00', NULL, NULL),
(34, '1.26.004', 2014, 'Jumlah Koleksi Stasioner Gedung yang dipinjam', 0, 0, 'koleksi', '', '0000-00-00 00:00:00', NULL, NULL),
(35, '1.26.004', 2014, 'Jumlah Koleksi Stasioner Bergerak yang dipinjam', 0, 0, 'koleksi', '', '0000-00-00 00:00:00', NULL, NULL),
(36, '1.26.004', 2014, 'Jumlah Koleksi Virtual yang dipinjam', 0, 0, 'koleksi', '', '0000-00-00 00:00:00', NULL, NULL),
(37, '1.26.005', 2014, 'Jumlah Pengunjung Stasioner Gedung', 0, 0, 'orang', '', '0000-00-00 00:00:00', NULL, NULL),
(38, '1.26.005', 2014, 'Jumlah Pengunjung Stasioner Bergerak', 0, 0, 'orang', '', '0000-00-00 00:00:00', NULL, NULL),
(39, '1.26.005', 2014, 'Jumlah Pengunjung Virtual', 0, 0, 'orang', '', '0000-00-00 00:00:00', NULL, NULL),
(40, '1.26.005', 2014, 'Jumlah Anggota', 0, 0, 'orang', '', '0000-00-00 00:00:00', NULL, NULL),
(41, '1.26.005', 2014, 'Jumlah Peminjam Koleksi Stasioner Gedung', 0, 0, 'orang', '', '0000-00-00 00:00:00', NULL, NULL),
(42, '1.26.005', 2014, 'Jumlah Peminjam Koleksi Virtual', 0, 0, 'orang', '', '0000-00-00 00:00:00', NULL, NULL),
(43, '1.26.005', 2014, 'Jumlah Koleksi Stasioner Gedung yang dipinjam', 0, 0, 'koleksi', '', '0000-00-00 00:00:00', NULL, NULL),
(44, '1.26.005', 2014, 'Jumlah Koleksi Stasioner Bergerak yang dipinjam', 0, 0, 'koleksi', '', '0000-00-00 00:00:00', NULL, NULL),
(45, '1.26.005', 2014, 'Jumlah Koleksi Virtual yang dipinjam', 0, 0, 'koleksi', '', '0000-00-00 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_notifikasi`
--

CREATE TABLE IF NOT EXISTS `t_notifikasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uraian` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `notif_url` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `n_datetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=30 ;

--
-- Dumping data for table `t_notifikasi`
--

INSERT INTO `t_notifikasi` (`id`, `uraian`, `notif_url`, `n_datetime`) VALUES
(1, 'Tambah pekerjaan: Pembuatan KAK', 'pekerjaan/index/?id=188', '2014-01-25 14:47:59'),
(2, 'Tambah pekerjaan: Pengadaan Barang', 'pekerjaan/index/?id=188', '2014-01-25 14:49:21'),
(3, 'Tambah pekerjaan: Pengumuman Lelang', 'pekerjaan/index/?id=188', '2014-01-25 14:50:16'),
(4, 'Edit pekerjaan: Pengadaan Barang', 'pekerjaan/index/?id=188', '2014-01-25 14:50:39'),
(5, 'Edit pekerjaan: Pengadaan Barang', 'pekerjaan/index/?id=188', '2014-01-25 14:51:04'),
(6, 'Tambah pekerjaan: Pembuatan Berita Acara', 'pekerjaan/index/?id=188', '2014-01-25 14:51:56'),
(7, 'Tambah pekerjaan: Pembayaran', 'pekerjaan/index/?id=188', '2014-01-25 14:52:31'),
(8, 'Tambah anggaran: Pengadaan Mesin Scanner dan Server untuk Digitalisasi', 'anggaran/index/?id=188', '2014-01-25 15:03:07'),
(9, 'Edit anggaran: Pengadaan Mesin Scanner dan Server untuk Digitalisasi', 'anggaran/index/?id=188', '2014-01-25 15:03:35'),
(10, 'Realisasi anggaran: Pengadaan Mesin Scanner dan Server untuk Digitalisasi', 'anggaran/realisasi/1/188/5.2.3.10.05/?act=edit', '2014-01-25 15:20:01'),
(11, 'Realisasi anggaran: Pengadaan Mesin Scanner dan Server untuk Digitalisasi', 'anggaran/realisasi/1/188/5.2.3.10.05/?act=edit', '2014-01-25 15:24:10'),
(12, 'Realisasi anggaran: Pengadaan Mesin Scanner dan Server untuk Digitalisasi', 'anggaran/realisasi/1/188/5.2.3.10.05/?act=edit', '2014-01-25 15:24:23'),
(13, 'Realisasi anggaran: Pengadaan Mesin Scanner dan Server untuk Digitalisasi', 'anggaran/realisasi/1/188/5.2.3.10.05/?act=edit', '2014-01-25 18:27:53'),
(14, 'Realisasi anggaran: Pengadaan Mesin Scanner dan Server untuk Digitalisasi', 'anggaran/realisasi/1/188/5.2.3.10.05/?act=edit', '2014-01-25 18:28:12'),
(15, 'Realisasi anggaran: Pengadaan Mesin Scanner dan Server untuk Digitalisasi', 'anggaran/realisasi/1/188/5.2.3.10.05/?act=edit', '2014-01-25 19:02:48'),
(16, 'Realisasi anggaran: Pengadaan Mesin Scanner dan Server untuk Digitalisasi', 'anggaran/realisasi/1/188/5.2.3.10.05/?act=edit', '2014-01-25 19:03:02'),
(17, 'Realisasi anggaran: Pengadaan Mesin Scanner dan Server untuk Digitalisasi', 'anggaran/realisasi/1/188/5.2.3.10.05/?act=edit', '2014-01-25 19:04:43'),
(18, 'Realisasi anggaran: Pengadaan Mesin Scanner dan Server untuk Digitalisasi', 'anggaran/realisasi/1/188/5.2.3.10.05/?act=edit', '2014-01-25 19:13:54'),
(19, 'Realisasi anggaran: Pengadaan Mesin Scanner dan Server untuk Digitalisasi', 'anggaran/realisasi/1/188/5.2.3.10.05/?act=edit', '2014-01-25 19:13:59'),
(20, 'Realisasi anggaran: Pengadaan Mesin Scanner dan Server untuk Digitalisasi', 'anggaran/realisasi/1/188/5.2.3.10.05/?act=edit', '2014-01-25 19:21:40'),
(21, 'Realisasi anggaran: Pengadaan Mesin Scanner dan Server untuk Digitalisasi', 'anggaran/realisasi/1/188/5.2.3.10.05/?act=edit', '2014-01-25 19:24:24'),
(22, 'Realisasi anggaran: Pengadaan Mesin Scanner dan Server untuk Digitalisasi', 'anggaran/realisasi/1/188/5.2.3.10.05/?act=edit', '2014-01-25 19:27:17'),
(23, 'Realisasi anggaran: Pengadaan Mesin Scanner dan Server untuk Digitalisasi', 'anggaran/realisasi/1/188/5.2.3.10.05/?act=edit', '2014-01-25 19:29:10'),
(24, 'Realisasi anggaran: Pengadaan Mesin Scanner dan Server untuk Digitalisasi', 'anggaran/realisasi/1/188/5.2.3.10.05/?act=edit', '2014-01-25 19:31:11'),
(25, 'Realisasi anggaran: Pengadaan Mesin Scanner dan Server untuk Digitalisasi', 'anggaran/realisasi/1/188/5.2.3.10.05/?act=edit', '2014-01-25 19:33:32'),
(26, 'Realisasi anggaran: Pengadaan Mesin Scanner dan Server untuk Digitalisasi', 'anggaran/realisasi/1/188/5.2.3.10.05/?act=edit', '2014-01-25 19:35:56'),
(27, 'Realisasi anggaran: Pengadaan Mesin Scanner dan Server untuk Digitalisasi', 'anggaran/realisasi/1/188/5.2.3.10.05/?act=edit', '2014-01-25 19:36:21'),
(28, 'Realisasi anggaran: Pengadaan Mesin Scanner dan Server untuk Digitalisasi', 'anggaran/realisasi/1/188/5.2.3.10.05/?act=edit', '2014-01-25 19:42:01'),
(29, 'Realisasi anggaran: Pengadaan Mesin Scanner dan Server untuk Digitalisasi', 'anggaran/realisasi/1/188/5.2.3.10.05/?act=edit', '2014-01-25 19:44:06');

-- --------------------------------------------------------

--
-- Table structure for table `t_notifikasi_user`
--

CREATE TABLE IF NOT EXISTS `t_notifikasi_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_username` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `ref_notifikasi` int(11) NOT NULL,
  `read_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ref_user` (`ref_username`),
  KEY `ref_notifikasi` (`ref_notifikasi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=204 ;

--
-- Dumping data for table `t_notifikasi_user`
--

INSERT INTO `t_notifikasi_user` (`id`, `ref_username`, `ref_notifikasi`, `read_datetime`) VALUES
(1, 'kpakjakbar', 1, NULL),
(2, 'kpakjakpus', 1, NULL),
(3, 'kpakjaksel', 1, '2014-01-27 09:31:45'),
(4, 'kpakjaktim', 1, NULL),
(5, 'kpakjakut', 1, NULL),
(6, 'kpakkep1000', 1, NULL),
(7, 'pusat', 1, NULL),
(8, 'kpakjakbar', 2, NULL),
(9, 'kpakjakpus', 2, NULL),
(10, 'kpakjaksel', 2, '2014-01-27 09:31:45'),
(11, 'kpakjaktim', 2, NULL),
(12, 'kpakjakut', 2, NULL),
(13, 'kpakkep1000', 2, NULL),
(14, 'pusat', 2, NULL),
(15, 'kpakjakbar', 3, NULL),
(16, 'kpakjakpus', 3, NULL),
(17, 'kpakjaksel', 3, '2014-01-27 09:31:45'),
(18, 'kpakjaktim', 3, NULL),
(19, 'kpakjakut', 3, NULL),
(20, 'kpakkep1000', 3, NULL),
(21, 'pusat', 3, NULL),
(22, 'kpakjakbar', 4, NULL),
(23, 'kpakjakpus', 4, NULL),
(24, 'kpakjaksel', 4, '2014-01-27 09:31:45'),
(25, 'kpakjaktim', 4, NULL),
(26, 'kpakjakut', 4, NULL),
(27, 'kpakkep1000', 4, NULL),
(28, 'pusat', 4, NULL),
(29, 'kpakjakbar', 5, NULL),
(30, 'kpakjakpus', 5, NULL),
(31, 'kpakjaksel', 5, '2014-01-27 09:31:45'),
(32, 'kpakjaktim', 5, NULL),
(33, 'kpakjakut', 5, NULL),
(34, 'kpakkep1000', 5, NULL),
(35, 'pusat', 5, NULL),
(36, 'kpakjakbar', 6, NULL),
(37, 'kpakjakpus', 6, NULL),
(38, 'kpakjaksel', 6, '2014-01-27 09:31:45'),
(39, 'kpakjaktim', 6, NULL),
(40, 'kpakjakut', 6, NULL),
(41, 'kpakkep1000', 6, NULL),
(42, 'pusat', 6, NULL),
(43, 'kpakjakbar', 7, NULL),
(44, 'kpakjakpus', 7, NULL),
(45, 'kpakjaksel', 7, '2014-01-27 09:31:45'),
(46, 'kpakjaktim', 7, NULL),
(47, 'kpakjakut', 7, NULL),
(48, 'kpakkep1000', 7, NULL),
(49, 'pusat', 7, NULL),
(50, 'kpakjakbar', 8, NULL),
(51, 'kpakjakpus', 8, NULL),
(52, 'kpakjaksel', 8, '2014-01-27 09:31:45'),
(53, 'kpakjaktim', 8, NULL),
(54, 'kpakjakut', 8, NULL),
(55, 'kpakkep1000', 8, NULL),
(56, 'pusat', 8, NULL),
(57, 'kpakjakbar', 9, NULL),
(58, 'kpakjakpus', 9, NULL),
(59, 'kpakjaksel', 9, '2014-01-27 09:31:45'),
(60, 'kpakjaktim', 9, NULL),
(61, 'kpakjakut', 9, NULL),
(62, 'kpakkep1000', 9, NULL),
(63, 'pusat', 9, NULL),
(64, 'kpakjakbar', 10, NULL),
(65, 'kpakjakpus', 10, NULL),
(66, 'kpakjaksel', 10, '2014-01-27 09:31:45'),
(67, 'kpakjaktim', 10, NULL),
(68, 'kpakjakut', 10, NULL),
(69, 'kpakkep1000', 10, NULL),
(70, 'pusat', 10, NULL),
(71, 'kpakjakbar', 11, NULL),
(72, 'kpakjakpus', 11, NULL),
(73, 'kpakjaksel', 11, '2014-01-27 09:31:45'),
(74, 'kpakjaktim', 11, NULL),
(75, 'kpakjakut', 11, NULL),
(76, 'kpakkep1000', 11, NULL),
(77, 'pusat', 11, NULL),
(78, 'kpakjakbar', 12, NULL),
(79, 'kpakjakpus', 12, NULL),
(80, 'kpakjaksel', 12, '2014-01-27 09:31:45'),
(81, 'kpakjaktim', 12, NULL),
(82, 'kpakjakut', 12, NULL),
(83, 'kpakkep1000', 12, NULL),
(84, 'pusat', 12, NULL),
(85, 'kpakjakbar', 13, NULL),
(86, 'kpakjakpus', 13, NULL),
(87, 'kpakjaksel', 13, '2014-01-27 09:31:45'),
(88, 'kpakjaktim', 13, NULL),
(89, 'kpakjakut', 13, NULL),
(90, 'kpakkep1000', 13, NULL),
(91, 'pusat', 13, NULL),
(92, 'kpakjakbar', 14, NULL),
(93, 'kpakjakpus', 14, NULL),
(94, 'kpakjaksel', 14, '2014-01-27 09:31:45'),
(95, 'kpakjaktim', 14, NULL),
(96, 'kpakjakut', 14, NULL),
(97, 'kpakkep1000', 14, NULL),
(98, 'pusat', 14, NULL),
(99, 'kpakjakbar', 15, NULL),
(100, 'kpakjakpus', 15, NULL),
(101, 'kpakjaksel', 15, '2014-01-27 09:31:45'),
(102, 'kpakjaktim', 15, NULL),
(103, 'kpakjakut', 15, NULL),
(104, 'kpakkep1000', 15, NULL),
(105, 'pusat', 15, NULL),
(106, 'kpakjakbar', 16, NULL),
(107, 'kpakjakpus', 16, NULL),
(108, 'kpakjaksel', 16, '2014-01-27 09:31:45'),
(109, 'kpakjaktim', 16, NULL),
(110, 'kpakjakut', 16, NULL),
(111, 'kpakkep1000', 16, NULL),
(112, 'pusat', 16, NULL),
(113, 'kpakjakbar', 17, NULL),
(114, 'kpakjakpus', 17, NULL),
(115, 'kpakjaksel', 17, '2014-01-27 09:31:45'),
(116, 'kpakjaktim', 17, NULL),
(117, 'kpakjakut', 17, NULL),
(118, 'kpakkep1000', 17, NULL),
(119, 'pusat', 17, NULL),
(120, 'kpakjakbar', 18, NULL),
(121, 'kpakjakpus', 18, NULL),
(122, 'kpakjaksel', 18, '2014-01-27 09:31:45'),
(123, 'kpakjaktim', 18, NULL),
(124, 'kpakjakut', 18, NULL),
(125, 'kpakkep1000', 18, NULL),
(126, 'pusat', 18, NULL),
(127, 'kpakjakbar', 19, NULL),
(128, 'kpakjakpus', 19, NULL),
(129, 'kpakjaksel', 19, '2014-01-27 09:31:45'),
(130, 'kpakjaktim', 19, NULL),
(131, 'kpakjakut', 19, NULL),
(132, 'kpakkep1000', 19, NULL),
(133, 'pusat', 19, NULL),
(134, 'kpakjakbar', 20, NULL),
(135, 'kpakjakpus', 20, NULL),
(136, 'kpakjaksel', 20, '2014-01-27 09:31:45'),
(137, 'kpakjaktim', 20, NULL),
(138, 'kpakjakut', 20, NULL),
(139, 'kpakkep1000', 20, NULL),
(140, 'pusat', 20, NULL),
(141, 'kpakjakbar', 21, NULL),
(142, 'kpakjakpus', 21, NULL),
(143, 'kpakjaksel', 21, '2014-01-27 09:31:45'),
(144, 'kpakjaktim', 21, NULL),
(145, 'kpakjakut', 21, NULL),
(146, 'kpakkep1000', 21, NULL),
(147, 'pusat', 21, NULL),
(148, 'kpakjakbar', 22, NULL),
(149, 'kpakjakpus', 22, NULL),
(150, 'kpakjaksel', 22, '2014-01-27 09:31:45'),
(151, 'kpakjaktim', 22, NULL),
(152, 'kpakjakut', 22, NULL),
(153, 'kpakkep1000', 22, NULL),
(154, 'pusat', 22, NULL),
(155, 'kpakjakbar', 23, NULL),
(156, 'kpakjakpus', 23, NULL),
(157, 'kpakjaksel', 23, '2014-01-27 09:31:45'),
(158, 'kpakjaktim', 23, NULL),
(159, 'kpakjakut', 23, NULL),
(160, 'kpakkep1000', 23, NULL),
(161, 'pusat', 23, NULL),
(162, 'kpakjakbar', 24, NULL),
(163, 'kpakjakpus', 24, NULL),
(164, 'kpakjaksel', 24, '2014-01-27 09:31:45'),
(165, 'kpakjaktim', 24, NULL),
(166, 'kpakjakut', 24, NULL),
(167, 'kpakkep1000', 24, NULL),
(168, 'pusat', 24, NULL),
(169, 'kpakjakbar', 25, NULL),
(170, 'kpakjakpus', 25, NULL),
(171, 'kpakjaksel', 25, '2014-01-27 09:31:45'),
(172, 'kpakjaktim', 25, NULL),
(173, 'kpakjakut', 25, NULL),
(174, 'kpakkep1000', 25, NULL),
(175, 'pusat', 25, NULL),
(176, 'kpakjakbar', 26, NULL),
(177, 'kpakjakpus', 26, NULL),
(178, 'kpakjaksel', 26, '2014-01-27 09:31:45'),
(179, 'kpakjaktim', 26, NULL),
(180, 'kpakjakut', 26, NULL),
(181, 'kpakkep1000', 26, NULL),
(182, 'pusat', 26, NULL),
(183, 'kpakjakbar', 27, NULL),
(184, 'kpakjakpus', 27, NULL),
(185, 'kpakjaksel', 27, '2014-01-27 09:31:45'),
(186, 'kpakjaktim', 27, NULL),
(187, 'kpakjakut', 27, NULL),
(188, 'kpakkep1000', 27, NULL),
(189, 'pusat', 27, NULL),
(190, 'kpakjakbar', 28, NULL),
(191, 'kpakjakpus', 28, NULL),
(192, 'kpakjaksel', 28, '2014-01-27 09:31:45'),
(193, 'kpakjaktim', 28, NULL),
(194, 'kpakjakut', 28, NULL),
(195, 'kpakkep1000', 28, NULL),
(196, 'pusat', 28, NULL),
(197, 'kpakjakbar', 29, NULL),
(198, 'kpakjakpus', 29, NULL),
(199, 'kpakjaksel', 29, '2014-01-27 09:31:45'),
(200, 'kpakjaktim', 29, NULL),
(201, 'kpakjakut', 29, '2014-01-27 09:29:33'),
(202, 'kpakkep1000', 29, NULL),
(203, 'pusat', 29, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_pekerjaan`
--

CREATE TABLE IF NOT EXISTS `t_pekerjaan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_kegiatan` int(11) NOT NULL,
  `nama_pekerjaan` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `tahap` int(11) NOT NULL,
  `urutan` int(11) NOT NULL,
  `p_bobot` int(11) NOT NULL,
  `p_bulan_target` int(11) NOT NULL,
  `r_bobot` int(11) NOT NULL DEFAULT '0',
  `r_bulan_target` int(11) NOT NULL DEFAULT '0',
  `insert_user` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `update_user` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `realisasi_user` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `realisasi_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ref_kegiatan` (`ref_kegiatan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `t_pekerjaan`
--

INSERT INTO `t_pekerjaan` (`id`, `ref_kegiatan`, `nama_pekerjaan`, `tahap`, `urutan`, `p_bobot`, `p_bulan_target`, `r_bobot`, `r_bulan_target`, `insert_user`, `insert_datetime`, `update_user`, `update_datetime`, `realisasi_user`, `realisasi_datetime`) VALUES
(1, 188, 'Pembuatan KAK', 1, 5, 100, 3, 0, 0, 'admin', '2014-01-25 14:47:59', NULL, NULL, NULL, NULL),
(2, 188, 'Pengadaan Barang', 2, 5, 50, 4, 0, 0, 'admin', '2014-01-25 14:49:21', 'admin', '2014-01-25 14:51:04', NULL, NULL),
(3, 188, 'Pengumuman Lelang', 2, 4, 50, 3, 0, 0, 'admin', '2014-01-25 14:50:16', NULL, NULL, NULL, NULL),
(4, 188, 'Pembuatan Berita Acara', 3, 1, 50, 5, 0, 0, 'admin', '2014-01-25 14:51:56', NULL, NULL, NULL, NULL),
(5, 188, 'Pembayaran', 3, 2, 50, 4, 0, 0, 'admin', '2014-01-25 14:52:31', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_role_menu`
--

CREATE TABLE IF NOT EXISTS `t_role_menu` (
  `ref_menu` int(11) NOT NULL,
  `ref_role` int(11) NOT NULL,
  PRIMARY KEY (`ref_menu`,`ref_role`),
  KEY `t_role_menu_ibfk_1` (`ref_role`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `t_role_menu`
--

INSERT INTO `t_role_menu` (`ref_menu`, `ref_role`) VALUES
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(8, 2),
(9, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(28, 2),
(29, 2),
(36, 2),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 3),
(33, 4),
(34, 4),
(37, 4);

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE IF NOT EXISTS `t_user` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(32) COLLATE latin1_general_ci NOT NULL,
  `ref_role` int(11) NOT NULL,
  `ref_satker` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `nama` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `nip` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `last_ip` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `insert_datetime` datetime DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`username`),
  KEY `ref_role` (`ref_role`),
  KEY `ref_satker` (`ref_satker`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`username`, `password`, `ref_role`, `ref_satker`, `nama`, `alamat`, `email`, `nip`, `status`, `last_login`, `last_logout`, `last_ip`, `insert_datetime`, `update_datetime`) VALUES
('admin', 'c0707b26ee093fbdeb2b9c8061a852ed', 1, '1', 'Administrator', NULL, NULL, NULL, 1, '2014-02-12 14:14:26', '2014-02-12 12:04:42', '172.16.64.14', NULL, NULL),
('keuangan', 'c87bee3ca9a113d7d77560bb37ae6e51', 4, '1.26.000K', 'Bagian Keuangan', NULL, 'keuangan@bpadjakarta.net', '6', 1, NULL, NULL, NULL, '2014-01-24 11:49:09', NULL),
('kpakjakbar', 'c87bee3ca9a113d7d77560bb37ae6e51', 2, '1.26.004', 'KPAK Jakarta Barat', NULL, 'kpakjakbar@jakarta.go.id', '3', 1, NULL, NULL, NULL, '2014-01-24 11:43:57', NULL),
('kpakjakpus', 'c87bee3ca9a113d7d77560bb37ae6e51', 2, '1.26.001', 'KPAK Jakarta Pusat', NULL, 'test@jakarta.go.id', '-', 1, NULL, NULL, NULL, '2014-01-24 11:37:36', NULL),
('kpakjaksel', 'c87bee3ca9a113d7d77560bb37ae6e51', 2, '1.26.003', 'KPAK Jakarta Selatan', NULL, 'kpakjaksel@jakarta.go.id', '2', 1, '2014-01-27 09:31:36', '2014-01-27 09:32:32', '::1 - MJ', '2014-01-24 11:42:37', NULL),
('kpakjaktim', 'c87bee3ca9a113d7d77560bb37ae6e51', 2, '1.26.005', 'KPAK Jakarta Timur', NULL, 'kpajaktim@jakarta.go.id', '4', 1, NULL, NULL, NULL, '2014-01-24 11:45:27', NULL),
('kpakjakut', 'c87bee3ca9a113d7d77560bb37ae6e51', 2, '1.26.002', 'KPAK Jakarta Utara', NULL, 'kpakjakut@jakarta.go.id', '1', 1, '2014-01-27 09:29:06', '2014-01-27 09:29:48', '::1 - MJ', '2014-01-24 11:41:40', NULL),
('kpakkep1000', 'c87bee3ca9a113d7d77560bb37ae6e51', 2, '1.26.006', 'KPAK Kepulauan Seribu', NULL, 'kpakkep1000@jakarta.go.id', '5', 1, NULL, NULL, NULL, '2014-01-24 11:47:24', '2014-01-24 11:48:06'),
('pusat', 'c87bee3ca9a113d7d77560bb37ae6e51', 3, '1.26.000', 'Saptadi', NULL, 'saptadi@gmail.com', '7', 1, NULL, NULL, NULL, '2014-01-24 11:50:21', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_anggaran`
--
CREATE TABLE IF NOT EXISTS `v_anggaran` (
`tahun_anggaran` int(11)
,`kode_program` varchar(255)
,`nama_program` varchar(255)
,`kode_grup_kegiatan` varchar(255)
,`nama_grup_kegiatan` varchar(255)
,`id_kegiatan` int(11)
,`nama_kegiatan` varchar(255)
,`id_anggaran` int(11)
,`uraian_anggaran` varchar(255)
,`kode_rekening` varchar(255)
,`nama_rekening` varchar(255)
,`p_jumlah` double
,`r_spj` double
,`r_sp2d` double
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `v_anggaran_realisasi`
--
CREATE TABLE IF NOT EXISTS `v_anggaran_realisasi` (
`tahun_anggaran` int(11)
,`kode_program` varchar(255)
,`nama_program` varchar(255)
,`kode_grup_kegiatan` varchar(255)
,`nama_grup_kegiatan` varchar(255)
,`id_kegiatan` int(11)
,`nama_kegiatan` varchar(255)
,`id_anggaran` int(11)
,`uraian_anggaran` varchar(255)
,`kode_rekening` varchar(255)
,`nama_rekening` varchar(255)
,`bulan` int(11)
,`spj` double
,`sp2d` double
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `v_kegiatan`
--
CREATE TABLE IF NOT EXISTS `v_kegiatan` (
`tahun_anggaran` int(11)
,`kode_program` varchar(255)
,`nama_program` varchar(255)
,`kode_grup_kegiatan` varchar(255)
,`nama_grup_kegiatan` varchar(255)
,`id_kegiatan` int(11)
,`nama_kegiatan` varchar(255)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `v_pekerjaan`
--
CREATE TABLE IF NOT EXISTS `v_pekerjaan` (
`tahun_anggaran` int(11)
,`kode_program` varchar(255)
,`nama_program` varchar(255)
,`kode_grup_kegiatan` varchar(255)
,`nama_grup_kegiatan` varchar(255)
,`id_kegiatan` int(11)
,`nama_kegiatan` varchar(255)
,`id_pekerjaan` int(11)
,`nama_pekerjaan` varchar(255)
,`tahap` int(11)
,`p_bobot` int(11)
,`p_bulan_target` int(11)
,`r_bobot` int(11)
,`r_bulan_target` int(11)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `v_user_menu`
--
CREATE TABLE IF NOT EXISTS `v_user_menu` (
`username` varchar(50)
,`kode_role` int(11)
,`nama_role` varchar(255)
,`menu_url` varchar(255)
,`menu_name` varchar(255)
);
-- --------------------------------------------------------

--
-- Structure for view `v_anggaran`
--
DROP TABLE IF EXISTS `v_anggaran`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_anggaran` AS select `p`.`tahun_anggaran` AS `tahun_anggaran`,`p`.`kode` AS `kode_program`,`p`.`nama` AS `nama_program`,`gk`.`kode` AS `kode_grup_kegiatan`,`gk`.`nama` AS `nama_grup_kegiatan`,`k`.`id` AS `id_kegiatan`,`k`.`nama` AS `nama_kegiatan`,`a`.`id` AS `id_anggaran`,`a`.`uraian` AS `uraian_anggaran`,`a`.`ref_rekening` AS `kode_rekening`,`r`.`nama` AS `nama_rekening`,`a`.`p_jumlah` AS `p_jumlah`,`a`.`r_spj` AS `r_spj`,`a`.`r_sp2d` AS `r_sp2d` from ((((`tr_program` `p` join `tr_kegiatan` `gk`) join `t_kegiatan` `k`) join `t_anggaran` `a`) join `tr_rekening` `r`) where ((`p`.`id` = `gk`.`ref_program`) and (`gk`.`id` = `k`.`ref_kegiatan`) and (`k`.`id` = `a`.`ref_kegiatan`) and (`r`.`kode` = `a`.`ref_rekening`));

-- --------------------------------------------------------

--
-- Structure for view `v_anggaran_realisasi`
--
DROP TABLE IF EXISTS `v_anggaran_realisasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_anggaran_realisasi` AS select `p`.`tahun_anggaran` AS `tahun_anggaran`,`p`.`kode` AS `kode_program`,`p`.`nama` AS `nama_program`,`gk`.`kode` AS `kode_grup_kegiatan`,`gk`.`nama` AS `nama_grup_kegiatan`,`k`.`id` AS `id_kegiatan`,`k`.`nama` AS `nama_kegiatan`,`a`.`id` AS `id_anggaran`,`a`.`uraian` AS `uraian_anggaran`,`a`.`ref_rekening` AS `kode_rekening`,`r`.`nama` AS `nama_rekening`,`ar`.`bulan` AS `bulan`,`ar`.`spj` AS `spj`,`ar`.`sp2d` AS `sp2d` from (((((`tr_program` `p` join `tr_kegiatan` `gk`) join `t_kegiatan` `k`) join `t_anggaran` `a`) join `tr_rekening` `r`) join `t_anggaran_realisasi` `ar`) where ((`p`.`id` = `gk`.`ref_program`) and (`gk`.`id` = `k`.`ref_kegiatan`) and (`k`.`id` = `a`.`ref_kegiatan`) and (`r`.`kode` = `a`.`ref_rekening`) and (`ar`.`ref_anggaran` = `a`.`id`));

-- --------------------------------------------------------

--
-- Structure for view `v_kegiatan`
--
DROP TABLE IF EXISTS `v_kegiatan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_kegiatan` AS select `p`.`tahun_anggaran` AS `tahun_anggaran`,`p`.`kode` AS `kode_program`,`p`.`nama` AS `nama_program`,`gk`.`kode` AS `kode_grup_kegiatan`,`gk`.`nama` AS `nama_grup_kegiatan`,`k`.`id` AS `id_kegiatan`,`k`.`nama` AS `nama_kegiatan` from ((`tr_program` `p` join `tr_kegiatan` `gk`) join `t_kegiatan` `k`) where ((`p`.`id` = `gk`.`ref_program`) and (`gk`.`id` = `k`.`ref_kegiatan`));

-- --------------------------------------------------------

--
-- Structure for view `v_pekerjaan`
--
DROP TABLE IF EXISTS `v_pekerjaan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_pekerjaan` AS select `p`.`tahun_anggaran` AS `tahun_anggaran`,`p`.`kode` AS `kode_program`,`p`.`nama` AS `nama_program`,`gk`.`kode` AS `kode_grup_kegiatan`,`gk`.`nama` AS `nama_grup_kegiatan`,`k`.`id` AS `id_kegiatan`,`k`.`nama` AS `nama_kegiatan`,`pk`.`id` AS `id_pekerjaan`,`pk`.`nama_pekerjaan` AS `nama_pekerjaan`,`pk`.`tahap` AS `tahap`,`pk`.`p_bobot` AS `p_bobot`,`pk`.`p_bulan_target` AS `p_bulan_target`,`pk`.`r_bobot` AS `r_bobot`,`pk`.`r_bulan_target` AS `r_bulan_target` from (((`tr_program` `p` join `tr_kegiatan` `gk`) join `t_kegiatan` `k`) join `t_pekerjaan` `pk`) where ((`p`.`id` = `gk`.`ref_program`) and (`gk`.`id` = `k`.`ref_kegiatan`) and (`k`.`id` = `pk`.`ref_kegiatan`));

-- --------------------------------------------------------

--
-- Structure for view `v_user_menu`
--
DROP TABLE IF EXISTS `v_user_menu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_user_menu` AS select `u`.`username` AS `username`,`r`.`id` AS `kode_role`,`r`.`detil` AS `nama_role`,`m`.`menu_url` AS `menu_url`,`m`.`menu_name` AS `menu_name` from (((`t_role_menu` `rm` join `tr_role` `r`) join `tr_menu` `m`) join `t_user` `u`) where ((`rm`.`ref_role` = `r`.`id`) and (`rm`.`ref_menu` = `m`.`id`) and (`u`.`ref_role` = `r`.`id`));

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tr_capaian`
--
ALTER TABLE `tr_capaian`
  ADD CONSTRAINT `tr_capaian_ibfk_1` FOREIGN KEY (`ref_program`) REFERENCES `tr_program` (`id`);

--
-- Constraints for table `tr_kegiatan`
--
ALTER TABLE `tr_kegiatan`
  ADD CONSTRAINT `tr_kegiatan_ibfk_1` FOREIGN KEY (`ref_program`) REFERENCES `tr_program` (`id`);

--
-- Constraints for table `tr_program`
--
ALTER TABLE `tr_program`
  ADD CONSTRAINT `tr_program_ibfk_2` FOREIGN KEY (`ref_grup`) REFERENCES `tr_program_grup` (`id`),
  ADD CONSTRAINT `tr_program_ibfk_1` FOREIGN KEY (`ref_urusan`) REFERENCES `tr_urusan` (`kode`) ON UPDATE CASCADE;

--
-- Constraints for table `t_anggaran`
--
ALTER TABLE `t_anggaran`
  ADD CONSTRAINT `t_anggaran_ibfk_1` FOREIGN KEY (`ref_rekening`) REFERENCES `tr_rekening` (`kode`) ON UPDATE CASCADE,
  ADD CONSTRAINT `t_anggaran_ibfk_2` FOREIGN KEY (`ref_kegiatan`) REFERENCES `t_kegiatan` (`id`);

--
-- Constraints for table `t_anggaran_realisasi`
--
ALTER TABLE `t_anggaran_realisasi`
  ADD CONSTRAINT `t_anggaran_realisasi_ibfk_1` FOREIGN KEY (`ref_anggaran`) REFERENCES `t_anggaran` (`id`);

--
-- Constraints for table `t_btl`
--
ALTER TABLE `t_btl`
  ADD CONSTRAINT `t_btl_ibfk_1` FOREIGN KEY (`ref_tahun`) REFERENCES `tr_btl` (`tahun`) ON UPDATE CASCADE,
  ADD CONSTRAINT `t_btl_ibfk_2` FOREIGN KEY (`ref_rekening`) REFERENCES `tr_rekening` (`kode`) ON UPDATE CASCADE;

--
-- Constraints for table `t_btl_realisasi`
--
ALTER TABLE `t_btl_realisasi`
  ADD CONSTRAINT `t_btl_realisasi_ibfk_1` FOREIGN KEY (`ref_btl`) REFERENCES `t_btl` (`id`);

--
-- Constraints for table `t_capaian`
--
ALTER TABLE `t_capaian`
  ADD CONSTRAINT `t_capaian_ibfk_1` FOREIGN KEY (`ref_kegiatan`) REFERENCES `t_kegiatan` (`id`),
  ADD CONSTRAINT `t_capaian_ibfk_2` FOREIGN KEY (`ref_capaian`) REFERENCES `tr_capaian` (`id`);

--
-- Constraints for table `t_kegiatan`
--
ALTER TABLE `t_kegiatan`
  ADD CONSTRAINT `t_kegiatan_ibfk_2` FOREIGN KEY (`ref_sifat_kegiatan`) REFERENCES `tr_sifatkegiatan` (`kode`) ON UPDATE CASCADE,
  ADD CONSTRAINT `t_kegiatan_ibfk_3` FOREIGN KEY (`ref_lokasi`) REFERENCES `tr_lokasi` (`kode`) ON UPDATE CASCADE,
  ADD CONSTRAINT `t_kegiatan_ibfk_4` FOREIGN KEY (`ref_satker`) REFERENCES `tr_satker` (`kode`) ON UPDATE CASCADE,
  ADD CONSTRAINT `t_kegiatan_ibfk_5` FOREIGN KEY (`ref_kegiatan`) REFERENCES `tr_kegiatan` (`id`);

--
-- Constraints for table `t_layanan`
--
ALTER TABLE `t_layanan`
  ADD CONSTRAINT `t_layanan_ibfk_1` FOREIGN KEY (`ref_satker`) REFERENCES `tr_satker` (`kode`) ON UPDATE CASCADE;

--
-- Constraints for table `t_notifikasi_user`
--
ALTER TABLE `t_notifikasi_user`
  ADD CONSTRAINT `t_notifikasi_user_ibfk_1` FOREIGN KEY (`ref_username`) REFERENCES `t_user` (`username`) ON UPDATE CASCADE,
  ADD CONSTRAINT `t_notifikasi_user_ibfk_2` FOREIGN KEY (`ref_notifikasi`) REFERENCES `t_notifikasi` (`id`);

--
-- Constraints for table `t_pekerjaan`
--
ALTER TABLE `t_pekerjaan`
  ADD CONSTRAINT `t_pekerjaan_ibfk_1` FOREIGN KEY (`ref_kegiatan`) REFERENCES `t_kegiatan` (`id`);

--
-- Constraints for table `t_role_menu`
--
ALTER TABLE `t_role_menu`
  ADD CONSTRAINT `t_role_menu_ibfk_1` FOREIGN KEY (`ref_role`) REFERENCES `tr_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_role_menu_ibfk_2` FOREIGN KEY (`ref_menu`) REFERENCES `tr_menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `t_user`
--
ALTER TABLE `t_user`
  ADD CONSTRAINT `t_user_ibfk_1` FOREIGN KEY (`ref_role`) REFERENCES `tr_role` (`id`),
  ADD CONSTRAINT `t_user_ibfk_2` FOREIGN KEY (`ref_satker`) REFERENCES `tr_satker` (`kode`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
