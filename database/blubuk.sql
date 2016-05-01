-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 03 Feb 2016 pada 15.41
-- Versi Server: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `blubuk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agama`
--

CREATE TABLE IF NOT EXISTS `agama` (
`id` int(11) NOT NULL,
  `nama_agama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `agama`
--

INSERT INTO `agama` (`id`, `nama_agama`) VALUES
(1, 'Islam'),
(2, 'Kristen'),
(3, 'Hindu'),
(4, 'Budha'),
(5, 'Khonghucu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `biografi`
--

CREATE TABLE IF NOT EXISTS `biografi` (
`id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `agama` varchar(20) NOT NULL,
  `jenis_kelamin` set('L','P') DEFAULT NULL,
  `alamat` text,
  `kabupaten` varchar(50) DEFAULT NULL,
  `provinsi` varchar(50) DEFAULT NULL,
  `kode_pos` varchar(10) DEFAULT NULL,
  `telpon` varchar(20) DEFAULT NULL,
  `ponsel` varchar(20) DEFAULT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `biografi`
--

INSERT INTO `biografi` (`id`, `email`, `nama_lengkap`, `tanggal_lahir`, `agama`, `jenis_kelamin`, `alamat`, `kabupaten`, `provinsi`, `kode_pos`, `telpon`, `ponsel`, `foto`) VALUES
(1, 'wira_uk@yahoo.com', 'Wirahman', '1989-09-02', '1', 'L', 'Jln. Pemuda Dalam No.19', '32.75', '32', '13145', '021-8865659', '08568869045', '1454475555_DSC_02081.JPG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('4d2ae8d23d4e6d5e059adcd8912985e7', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:43.0) Gecko/20100101 Firefox/43.0', 1454509294, 'a:8:{s:9:"user_data";s:0:"";s:6:"userid";s:1:"1";s:5:"email";s:17:"wira_uk@yahoo.com";s:8:"username";s:8:"Wirahman";s:4:"foto";s:24:"1454475555_DSC_02081.JPG";s:6:"status";s:10:"REGISTERED";s:7:"id_role";s:1:"3";s:9:"logged_in";b:1;}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `forum`
--

CREATE TABLE IF NOT EXISTS `forum` (
`id_forum` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `foto_user` text NOT NULL,
  `judul_forum` varchar(50) NOT NULL,
  `isi_forum` text NOT NULL,
  `foto_forum` text NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `forum`
--

INSERT INTO `forum` (`id_forum`, `user_id`, `email`, `name`, `foto_user`, `judul_forum`, `isi_forum`, `foto_forum`, `waktu`) VALUES
(1, 1, 'wira_uk@yahoo.com', 'Wirahman', '1454475555_DSC_02081.JPG', 'Bidadari', 'Cantikkan Seperti Bidadari??? :*', '1454475768.jpg', '2016-02-03 12:02:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kabupaten`
--

CREATE TABLE IF NOT EXISTS `kabupaten` (
  `id` varchar(5) NOT NULL,
  `nama_kabupaten` varchar(255) DEFAULT NULL,
  `id_provinsi` varchar(3) DEFAULT NULL,
  `logo_kabupaten` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kabupaten`
--

INSERT INTO `kabupaten` (`id`, `nama_kabupaten`, `id_provinsi`, `logo_kabupaten`) VALUES
('11.01', 'KAB. ACEH SELATAN', '11', '1452993401_'),
('11.02', 'KAB. ACEH TENGGARA', '11', '1451584626_Kabupaten Aceh Tenggara.png'),
('11.03', 'KAB. ACEH TIMUR', '11', '1451584644_Kabupaten Aceh Timur.png'),
('11.04', 'KAB. ACEH TENGAH', '11', '1451584669_Kabupaten Aceh Tengah.png'),
('11.05', 'KAB. ACEH BARAT', '11', '1451584700_Kabupaten Aceh Barat.png'),
('11.06', 'KAB. ACEH BESAR', '11', '1451584717_Kabupaten Aceh Besar.png'),
('11.07', 'KAB. PIDIE', '11', '1451584736_Kabupaten Pidie.png'),
('11.08', 'KAB. ACEH UTARA', '11', '1451584753_Kabupaten Aceh Utara.png'),
('11.09', 'KAB. SIMEULUE', '11', '1451584770_Kabupaten Simeulue.png'),
('11.10', 'KAB. ACEH SINGKIL', '11', '1451584788_Kabupaten Aceh Singkil.png'),
('11.11', 'KAB. BIREUEN', '11', '1451584842_Kabupaten Bireuen.png'),
('11.12', 'KAB. ACEH BARAT DAYA', '11', '1451584865_Kabupaten Aceh Barat Daya.png'),
('11.13', 'KAB. GAYO LUES', '11', '1451584886_Kabupaten Gayo Lues.png'),
('11.14', 'KAB. ACEH JAYA', '11', '1451584920_Kabupaten Aceh Jaya.png'),
('11.15', 'KAB. NAGAN RAYA', '11', '1451584935_Kabupaten Nagan Raya.png'),
('11.16', 'KAB. ACEH TAMIANG', '11', '1451584950_Kabupaten Aceh Tamiang.png'),
('11.17', 'KAB. BENER MERIAH', '11', '1451584964_Kabupaten Bener Meriah.png'),
('11.18', 'KAB. PIDIE JAYA', '11', '1451584976_Kabupaten Pidie Jaya.png'),
('11.71', 'KOTA BANDA ACEH', '11', '1451585046_Kota Banda Aceh.png'),
('11.72', 'KOTA SABANG', '11', '1451623465_'),
('11.73', 'KOTA LHOKSEUMAWE', '11', '1451722483_Kota Lhokseumawe.png'),
('11.74', 'KOTA LANGSA', '11', '1451722497_Kota Langsa.png'),
('11.75', 'KOTA SUBULUSSALAM', '11', '1451722510_Kota Subulussalam.png'),
('12.01', 'KAB. TAPANULI TENGAH', '12', '1451722583_Kabupaten Tapanuli Tengah.png'),
('12.02', 'KAB. TAPANULI UTARA', '12', '1451722607_Kabupaten Tapanuli Utara.png'),
('12.03', 'KAB. TAPANULI SELATAN', '12', '1451722630_Kabupaten Tapanuli Selatan.png'),
('12.04', 'KAB. NIAS', '12', '1451722651_Kabupaten Nias.png'),
('12.05', 'KAB. LANGKAT', '12', '1451722668_Kabupaten Langkat.png'),
('12.06', 'KAB.KARO', '12', '1451722684_Kabupaten Karo.png'),
('12.07', 'KAB. DELI SERDANG', '12', '1451722700_Kabupaten Deli Serdang.png'),
('12.08', 'KAB. SIMALUNGUN', '12', '1451723330_Kabupaten Simalungun.png'),
('12.09', 'KAB. ASAHAN', '12', '1451723345_Kabupaten Asahan.png'),
('12.10', 'KAB. LABUHANBATU', '12', '1451723368_Kabupaten Labuhan Batu.png'),
('12.11', 'KAB. DAIRI', '12', '1451723395_Kabupaten Dairi.png'),
('12.12', 'KAB. TOBA SAMOSIR', '12', '1451723448_Kabupaten Toba Samosir.png'),
('12.13', 'KAB. MANDAILING NATAL', '12', '1451723482_Kabupaten Mandailing Natal.png'),
('12.14', 'KAB. NIAS SELATAN', '12', '1451723507_Kabupaten Nias Utara.png'),
('12.15', 'KAB. PAKPAK BHARAT', '12', '1451723600_Kabupaten Pakpak Bharat.png'),
('12.16', 'KAB. HUMBANG HASUNDUTAN', '12', '1451723628_Kabupaten Humbang Hasundutan.png'),
('12.17', 'KAB. SAMOSIR', '12', '1451723730_Kabupaten Samosir.png'),
('12.18', 'KAB. SERDANG BEDAGAI', '12', '1451724018_Kabupaten Serdang Bedagai.png'),
('12.19', 'KAB. BATU BARA', '12', '1451723850_Kabupaten Batu Bara.png'),
('12.20', 'KAB. PADANG LAWAS UTARA', '12', '1451723862_Kabupaten Padang Lawas Utara.png'),
('12.21', 'KAB. PADANG LAWAS', '12', '1451723888_Kabupaten Padang Lawas.png'),
('12.22', 'KAB. LATUHANBATU SELATAN', '12', '1451723908_Kabupaten Labuhan Batu Selatan.png'),
('12.23', 'KAB. LABUHANBATU UTARA', '12', '1451723928_Kabupaten Labuhan Batu Utara.png'),
('12.24', 'KAB. NIAS UTARA', '12', '1451723942_Kabupaten Nias.png'),
('12.25', 'KAB. NIAS BARAT', '12', '1451723957_Kabupaten Nias Barat.png'),
('12.71', 'KOTA MEDAN', '12', '1451723992_Kota Medan.png'),
('12.72', 'KOTA PEMATANG SIANTAR', '12', '1451724004_Kota Pematangsiantar.png'),
('12.73', 'KOTA SIBOLGA', '12', '1451765136_Kota Sibolga.png'),
('12.74', 'KOTA TANJUNG BALAI', '12', '1451765153_Kota Tanjungbalai.png'),
('12.75', 'KOTA BINJAI', '12', '1451765163_Kota Binjai.png'),
('12.76', 'KOTA TEBING TINGGI', '12', '1451765178_Kota Tebing Tinggi.png'),
('12.77', 'KOTA PADANGSIDIMPUAN', '12', '1451765190_Kota Padang Sidempuan.png'),
('12.78', 'KOTA GUNUNGSITOLI', '12', '1451765204_Kota Gunungsitoli.png'),
('13.01', 'KAB. PESISIR SELATAN', '13', '1451765262_Kabupaten Pesisir Selatan.png'),
('13.02', 'KAB. SOLOK', '13', '1451765275_Kabupaten Solok.png'),
('13.03', 'KAB. SIJUNJUNG', '13', '1451765290_Kabupaten Sijunjung.png'),
('13.04', 'KAB. TANAH DATAR', '13', '1451765301_Kabupaten Tanah Datar.png'),
('13.05', 'KAB. PADANG PARIAMAN', '13', '1451766399_Kabupaten Padang Pariaman.png'),
('13.06', 'KAB. AGAM', '13', '1451766468_Kabupaten Agam.png'),
('13.07', 'KAB. LIMA PULUH KOTA', '13', '1451766510_Kabupaten Lima Puluh Kota.png'),
('13.08', 'KAB PASAMAN', '13', '1451766533_Kabupaten Pasaman.png'),
('13.09', 'KAB. KEPULAUAN MENTAWAI', '13', '1451766546_Kabupaten Kepulauan Mentawai.png'),
('13.10', 'KAB. DHARMASRAYA', '13', '1451766561_Kabupaten Dharmasraya.png'),
('13.11', 'KAB. SOLOK SELATAN', '13', '1451766573_Kabupaten Solok Selatan.png'),
('13.12', 'KAB. PASAMAN BARAT', '13', '1451766587_Kabupaten Pasaman Barat.png'),
('13.71', 'KOTA PADANG', '13', '1451766599_Kota Padang.png'),
('13.72', 'KOTA SOLOK', '13', '1451766609_Kota Solok.png'),
('13.73', 'KOTA SAWAHLUNTO', '13', '1451766874_Kota Sawahlunto.png'),
('13.74', 'KOTA PADANG PANJANG', '13', '1451766886_Kota Padang Panjang.png'),
('13.75', 'KOTA BUKITTINGGI', '13', '1451766897_Kota Bukittinggi.png'),
('13.76', 'KOTA PAYAKUMBUH', '13', '1451766918_Kota Payakumbuh.png'),
('13.77', 'KOTA PARIAMAN', '13', '1451766937_Kota Pariaman.png'),
('14.01', 'KAB. KAMPAR', '14', '1451767004_Kabupaten Kampar.png'),
('14.02', 'KAB. INDRAGIRI HULU', '14', '1451767128_Kabupaten Indragiri Hulu.png'),
('14.03', 'KAB. BENGKALIS', '14', '1451767139_Kabupaten Bengkalis.png'),
('14.04', 'KAB. INDRAGIRI HILIR', '14', '1451767152_Kabupaten Indragiri Hilir.png'),
('14.05', 'KAB. PELALAWAN', '14', '1451767163_Kabupaten Pelalawan.png'),
('14.06', 'KAB. ROKAN HULU', '14', '1451767346_Kabupaten Rokan Hulu.png'),
('14.07', 'KAB. ROKAN HILIR', '14', '1451767357_Kabupaten Rokan Hilir.png'),
('14.08', 'KAB. SIAK', '14', '1451767754_Kabupaten Siak.png'),
('14.09', 'KAB. KUANTAN SINGINGI', '14', '1451767956_Kabupaten Kuantan Singingi.png'),
('14.10', 'KAB. KEPULAUAN MERANTI', '14', '1451767969_Kabupaten Kepulauan Meranti.png'),
('14.71', 'KOTA PEKANBARU', '14', '1451767981_Kota Pekanbaru.png'),
('14.72', 'KOTA DUMAI', '14', '1451767994_Kota Dumai.png'),
('15.01', 'KAB. KERINCI', '15', '1451768018_Kabupaten Kerinci.png'),
('15.02', 'KAB. MERANGIN', '15', '1451768404_Kabupaten Merangin.png'),
('15.03', 'KAB. SAROLANGUN', '15', '1451768416_Kabupaten Sarolangun.png'),
('15.04', 'KAB. BATANGHARI', '15', '1451768605_Kabupaten Batang Hari.png'),
('15.05', 'KAB. MUARO JAMBI', '15', '1451768617_Kabupaten Muaro Jambi.png'),
('15.06', 'KAB. TANJUNG JABUNG BARAT', '15', '1451768629_Kabupaten Tanjung Jabung Barat.png'),
('15.07', 'KAB. TANJUNG JABUNG TIMUR', '15', '1451768639_Kabupaten Tanjung Jabung Timur.png'),
('15.08', 'KAB. BUNGO', '15', '1451768651_Kabupaten Bungo.png'),
('15.09', 'KAB. TEBO', '15', '1451768660_Kabupaten Tebo.png'),
('15.71', 'KOTA JAMBI', '15', '1451768668_Kota Jambi.png'),
('15.72', 'KOTA SUNGAI PENUH', '15', ''),
('16.01', 'KAB. OGAN KOMERING ULU', '16', '1451768804_Kabupaten Ogan Komering Ulu.png'),
('16.02', 'KAB. OGAN KOMERING ILIR', '16', '1451768909_Kabupaten Ogan Komering Ilir.png'),
('16.03', 'KAB. MUARA ENIM', '16', '1451769015_Kabupaten Muara Enim.png'),
('16.05', 'KAB. MUSI RAWAS', '16', '1451769026_Kabupaten Musi Rawas.png'),
('16.06', 'KAB. MUSI BANYUASIN', '16', '1451769036_Kabupaten Musi Banyuasin.png'),
('16.07', 'KAB. BANYUASIN', '16', '1451769049_Kabupaten Banyuasin.png'),
('16.08', 'KAB. OGAN KOMERING ULU TIMU', '16', '1451769072_Kabupaten Ogan Komering Ulu Timur.png'),
('16.09', 'KAB. OGAN KOMERING ULU SEL', '16', ''),
('16.10', 'KAB. OGAN ILIR', '16', '1451769095_Kabupaten Ogan Ilir.png'),
('16.11', 'KAB. EMPAT LAWANG', '16', '1451769104_Kabupaten Empat Lawang.png'),
('16.12', 'KAB. PENUKAL ARAB LEMATANG I', '16', ''),
('16.13', 'KAB. MUSI RAWAS UTARA', '16', '1451769140_Kabupaten Musi Rawas Utara.png'),
('16.71', 'KOTA PALEMBANG', '16', '1451769422_Kota Palembang.png'),
('16.72', 'KOTA PAGAR ALAM', '16', '1451769455_Kota Pagar Alam.png'),
('16.73', 'KOTA LUBUK LINGGAU', '16', '1451769468_Kota Lubuklinggau.png'),
('16.74', 'KOTA PRABUMULIH', '16', '1451769481_Kota Prabumulih.png'),
('17.01', 'KAB. BENGKULU SELATAN', '17', '1451769496_Kabupaten Bengkulu Selatan.png'),
('17.02', 'KAB. REJANG LEBONG', '17', '1451769522_Kabupaten Rejang Lebong.png'),
('17.03', 'KAB. BENGKULU UTARA', '17', '1451769540_Kabupaten Bengkulu Utara.png'),
('17.04', 'KAB. KAUR', '17', '1451769627_Kabupaten Kaur.png'),
('17.05', 'KAB. SELUMA', '17', '1451769647_Kabupaten Seluma.png'),
('17.06', 'KAB. MUKO MUKO', '17', '1451769665_Kabupaten Mukomuko.png'),
('17.07', 'KAB. LEBONG', '17', '1451769801_Kabupaten Lebong.png'),
('17.08', 'KAB. KEPAHIANG', '17', '1451769820_Kabupaten Kepahiang.png'),
('17.09', 'KAB. BENGKULU TENGAH', '17', '1451769866_Kabupaten Bengkulu Selatan.png'),
('17.71', 'KOTA BENGKULU', '17', '1451769897_Kota Bengkulu.png'),
('18.01', 'KAB. LAMPUNG SELATAN', '18', '1451770090_Kabupaten Lampung Selatan.png'),
('18.02', 'KAB. LAMPUNG TENGAH', '18', '1451770121_Kabupaten Lampung Tengah.png'),
('18.03', 'KAB. LAMPUNG UTARA', '18', '1451770148_Kabupaten Lampung Utara.png'),
('18.04', 'KAB. LAMPUNG BARAT', '18', '1451770180_Kabupaten Lampung Barat.png'),
('18.05', 'KAB. TULANG BAWANG', '18', '1451770194_Kabupaten Tulang Bawang.png'),
('18.06', 'KAB. TANGGAMUS', '18', '1451770204_Kabupaten Tanggamus.png'),
('18.07', 'KAB. LAMPUNG TIMUR', '18', '1451770300_Kabupaten Lampung Timur.png'),
('18.08', 'KAB. WAY KANAN', '18', '1451770328_Kabupaten Way Kanan.png'),
('18.09', 'KAB. PESAWARAN', '18', '1451770356_Kabupaten Pesawaran.png'),
('18.10', 'KAB. PRINGSEWU', '18', '1451770422_LOGO KABUPATEN PRINGSEWU.png'),
('18.11', 'KAB. MESUJI', '18', '1451770449_Kabupaten Mesuji.png'),
('18.12', 'KAB. TULANG BAWANG BARAT', '18', '1451770459_Kabupaten Tulang Bawang Barat.png'),
('18.13', 'KAB. PESISIR BARAT', '18', '1451770470_Kabupaten Pesisir Barat.png'),
('18.71', 'KOTA BANDAR LAMPUNG', '18', '1451770491_Kota Bandar Lampung.png'),
('18.72', 'KOTA METRO', '18', '1451770497_LOGO_KOTA_METRO.png'),
('19.01', 'KAB. BANGKA', '19', '1451770519_Kabupaten Bangka.png'),
('19.02', 'KAB. BELITUNG', '19', '1451770570_Kabupaten Belitung.png'),
('19.03', 'KAB. BANGKA SELATAN', '19', '1451770575_Kabupaten Bangka Selatan.png'),
('19.04', 'KAB. BANGKA TENGAH', '19', '1451770583_Kabupaten Bangka Tengah.png'),
('19.05', 'KAB. BANGKA BARAT', '19', '1451770591_Kabupaten Bangka Barat.png'),
('19.06', 'KAB. BELITUNG TIMUR', '19', '1451770598_Kabupaten Belitung Timur.png'),
('19.71', 'KOTA PANGKAL PINANG', '19', '1451770603_Kota Pangkal Pinang.png'),
('21.01', 'KAB. BINTAN', '21', '1451770635_Kabupaten Bintan.png'),
('21.02', 'KAB. KARIMUN', '21', '1451770640_Kabupaten Karimun.png'),
('21.03', 'KAB. NATUNA', '21', '1451770648_Kabupaten Natuna.png'),
('21.04', 'KAB. LINGGA', '21', '1451770653_Kabupaten Lingga.png'),
('21.05', 'KAB. KEPULAUAN ANAMBAS', '21', '1451770746_Kabupaten Kepulauan Anambas.png'),
('21.71', 'KOTA BATAM', '21', '1451770750_Kota Batam.png'),
('21.72', 'KOTA TANJUNG PINANG', '21', '1451770756_Kota Tanjung Pinang.png'),
('31.01', 'KAB. ADM. KEP. SERIBU', '31', '1451770772_Kabupaten Administrasi Kepulauan Seribu.png'),
('31.72', 'KOTA. ADM. JAKARTA PUSAT', '31', '1451770776_Kota Administrasi Jakarta Pusat.png'),
('31.73', 'KOTA. ADM. JAKARTA BARAT', '31', '1451770783_Kota Administrasi Jakarta Barat.png'),
('31.74', 'KOTA. ADM. JAKARTA SELATAN', '31', '1451770791_Kota Administrasi Jakarta Selatan.png'),
('31.75', 'KOTA. ADM. JAKARTA TIMUR', '31', '1451770809_Kota Administrasi Jakarta Timur.png'),
('32.01', 'KAB. BOGOR', '32', '1451770823_Kabupaten Bogor.png'),
('32.02', 'KAB. SUKABUMI', '32', '1451770832_Kabupaten Sukabumi.png'),
('32.03', 'KAB. CIANJUR', '32', '1451810971_Kabupaten Cianjur.png'),
('32.04', 'KAB. BANDUNG', '32', '1451810986_Kabupaten Bandung.png'),
('32.05', 'KAB. GARUT', '32', '1451810996_Kabupaten Garut.png'),
('32.06', 'KAB. TASIKMALAYA', '32', '1451811017_Kabupaten Tasikmalaya.png'),
('32.07', 'KAB. CIAMIS', '32', '1451811029_Kabupaten Ciamis.png'),
('32.08', 'KAB. KUNINGAN', '32', '1451811064_Kabupaten Kuningan.png'),
('32.09', 'KAB. CIREBON', '32', '1451811077_Kabupaten Cirebon.png'),
('32.10', 'KAB. MAJALENGKA', '32', '1451811098_Kabupaten Majalengka.png'),
('32.14', 'KAB. PURWAKARTA', '32', '1451811109_Kabupaten Purwakarta.png'),
('32.15', 'KAB. KARAWANG', '32', '1451811120_Kabupaten Karawang.png'),
('32.16', 'KAB. BEKASI', '32', '1451811162_Kabupaten Bekasi.png'),
('32.17', 'KAB. BANDUNG BARAT', '32', '1451811172_Kabupaten Bandung Barat.png'),
('32.18', 'KAB. PANGANDARAN', '32', '1451811182_Kabupaten Pangandaran.png'),
('32.71', 'KOTA BOGOR', '32', '1451811195_Kota Bogor.png'),
('32.72', 'KOTA SUKABUMI', '32', '1451811207_Kota Sukabumi.png'),
('32.73', 'KOTA BANDUNG', '32', '1451811215_Kota Bandung.png'),
('32.74', 'KOTA CIREBON', '32', '1451811231_Kota Cirebon.png'),
('32.75', 'KOTA BEKASI', '32', '1451811240_Kota Bekasi.png'),
('32.76', 'KOTA DEPOK', '32', '1451811250_Kota Depok.png'),
('32.77', 'KOTA CIMAHI', '32', '1451811259_Kota Cimahi.png'),
('32.78', 'KOTA TASIKMALAYA', '32', '1451811310_Kota Tasikmalaya.png'),
('32.79', 'KOTA BANJAR', '32', '1451811319_Kota Banjar.png'),
('33.01', 'KAB. CILACAP', '33', '1451811336_Kabupaten Cilacap.png'),
('33.02', 'KAB. BANYUMAS', '33', '1451811346_Kabupaten Banyumas.png'),
('33.03', 'KAB. PURBALINGGA', '33', '1451811356_Kabupaten Purbalingga.png'),
('33.04', 'KAB. BANJARNEGARA', '33', '1451811366_Kabupaten Banjarnegara.png'),
('33.05', 'KAB. KEBUMEN', '33', '1451811383_Kabupaten Kebumen.png'),
('33.06', 'KAB. PURWOREJO', '33', '1451811394_Kabupaten Purworejo.png'),
('33.07', 'KAB. WONOSOBO', '33', '1451811405_Kabupaten Wonosobo.png'),
('33.08', 'KAB. MAGELANG', '33', '1451811419_Kabupaten Magelang.png'),
('33.09', 'KAB. BOYOLALI', '33', '1451811868_Kabupaten Boyolali.png'),
('33.10', 'KAB. KLATEN', '33', '1451811881_Kabupaten Klaten.png'),
('33.11', 'KAB. SUKOHARJO', '33', '1451811891_Kabupaten Sukoharjo.png'),
('33.12', 'KAB. WONOGIRI', '33', '1451811901_Kabupaten Wonogiri.png'),
('33.13', 'KAB. KARANGANYAR', '33', '1451811911_Kabupaten Karanganyar.png'),
('33.14', 'KAB. SRAGEN', '33', '1451811927_Kabupaten Sragen.png'),
('33.15', 'KAB. GROBOGAN', '33', '1451811952_Kabupaten Grobogan.png'),
('33.16', 'KAB. BLORA', '33', '1451811966_Kabupaten Blora.png'),
('33.17', 'KAB. REMBANG', '33', '1451811975_Kabupaten Rembang.png'),
('33.18', 'KAB. PATI', '33', '1451811988_Kabupaten Pati.png'),
('33.19', 'KAB. KUDUS', '33', '1451812026_Kabupaten Kudus.png'),
('33.20', 'KAB. JEPARA', '33', '1451812036_Kabupaten Jepara.png'),
('33.21', 'KAB. DEMAK', '33', '1451812045_Kabupaten Demak.png'),
('33.22', 'KAB. SEMARANG', '33', '1451812054_Kabupaten Semarang.png'),
('33.23', 'KAB. TEMANGGUNG', '33', '1451812069_Kabupaten Temanggung.png'),
('33.24', 'KAB. KENDAL', '33', '1451812080_Kabupaten Kendal.png'),
('33.25', 'KAB. BATANG', '33', '1451812089_Kabupaten Batang.png'),
('33.26', 'KAB. PEKALONGAN', '33', '1451812102_Kabupaten Pekalongan.png'),
('33.27', 'KAB. PEMALANG', '33', '1451812112_Kabupaten Pemalang.png'),
('33.28', 'KAB. TEGAL', '33', '1451812120_Kabupaten Tegal.png'),
('33.29', 'KAB. BREBES', '33', '1451812173_Kabupaten Brebes.png'),
('33.71', 'KOTA MAGELANG', '33', '1451812183_Kota Magelang.png'),
('33.72', 'KOTA SURAKARTA', '33', '1451812196_Kota Surakarta.png'),
('33.73', 'KOTA SALATIGA', '33', '1451812205_Kota Salatiga.png'),
('33.74', 'KOTA SEMARANG', '33', '1451812215_Kota Semarang.png'),
('33.75', 'KOTA PEKALONGAN', '33', '1451812229_Kota Pekalongan.png'),
('33.76', 'KOTA TEGAL', '33', '1451812240_Kota Tegal.png'),
('34.01', 'KAB. KULON PROGO', '34', '1451812259_Kabupaten Kulon Progo.png'),
('34.02', 'KAB. BANTUL', '34', '1451812272_Kabupaten Bantul.png'),
('34.03', 'KAB. GUNUNG KIDUL', '34', '1451812277_Kabupaten Gunungkidul.png'),
('34.04', 'KAB. SLEMAN', '34', '1451812329_Kabupaten Sleman.png'),
('34.71', 'KOTA YOGYAKARTA', '34', '1451812334_Kota Yogyakarta.png'),
('35.01', 'KAB. PACITAN', '35', '1451812351_Kabupaten Pacitan.png'),
('35.02', 'KAB. PONOROGO', '35', '1451812364_Kabupaten Ponorogo.png'),
('35.03', 'KAB. TRENGGALEK', '35', '1451812374_Kabupaten Trenggalek.png'),
('35.04', 'KAB. TULUNGAGUNG', '35', '1451812388_Kabupaten Tulungagung.png'),
('35.05', 'KAB. BLITAR', '35', '1451812397_Kabupaten Blitar.png'),
('35.06', 'KAB. KEDIRI', '35', '1451812410_Kabupaten Kediri.png'),
('35.07', 'KAB. MALANG', '35', '1451812422_Kabupaten Malang.png'),
('35.08', 'KAB. LUMAJANG', '35', '1451812431_Kabupaten Lumajang.png'),
('35.09', 'KAB. JEMBER', '35', '1451812603_Kabupaten Jember.png'),
('35.10', 'KAB. BANYUWANGI', '35', '1451812468_Kabupaten Banyuwangi.png'),
('35.11', 'KAB. BONDOWOSO', '35', '1451812479_Kabupaten Bondowoso.png'),
('35.12', 'KAB. SITUBONDO', '35', '1451812495_Kabupaten Situbondo.png'),
('35.13', 'KAB. PROBOLINGGO', '35', '1451812506_Kabupaten Probolinggo.png'),
('35.14', 'KAB. PASURUAN', '35', '1451812543_Kabupaten Pasuruan.png'),
('35.15', 'KAB. SIDOARJO', '35', '1451812553_Kabupaten Sidoarjo.png'),
('35.16', 'KAB. MOJOKERTO', '35', '1451812566_Kabupaten Mojokerto.png'),
('35.17', 'KAB. JOMBANG', '35', '1451812578_Kabupaten Jombang.png'),
('35.18', 'KAB. NGANJUK', '35', '1451812594_Kabupaten Nganjuk.png'),
('35.19', 'KAB. MADIUN', '35', '1451812648_Kabupaten Madiun.png'),
('35.20', 'KAB. MAGETAN', '35', '1451812656_Kabupaten Magetan.png'),
('35.21', 'KAB. NGAWI', '35', '1451812668_Kabupaten Ngawi.png'),
('35.22', 'KAB. BOJONEGORO', '35', '1451812684_Kabupaten Bojonegoro.png'),
('35.23', 'KAB. TUBAN', '35', '1451812691_Kabupaten Tuban.png'),
('35.24', 'KAB. LAMONGAN', '35', '1451812704_Kabupaten Lamongan.png'),
('35.25', 'KAB. GRESIK', '35', '1451812726_Kabupaten Gresik.png'),
('35.26', 'KAB. BANGKALAN', '35', '1451812737_Kabupaten Bangkalan.png'),
('35.27', 'KAB. SAMPANG', '35', '1451812752_Kabupaten Sampang.png'),
('35.28', 'KAB. PAMEKASAN', '35', '1451812762_Kabupaten Pamekasan.png'),
('35.29', 'KAB. SUMENEP', '35', '1451812924_Kabupaten Sumenep.png'),
('35.71', 'KOTA KEDIRI', '35', '1451812934_Kota Kediri.png'),
('35.72', 'KOTA BLITAR', '35', '1451812943_Kota Blitar.png'),
('35.73', 'KOTA MALANG', '35', '1451812957_Kota Malang.png'),
('35.74', 'KOTA PROBOLINGGO', '35', '1451812966_Kota Probolinggo.png'),
('35.75', 'KOTA PASURUAN', '35', '1451812979_Kota Pasuruan.png'),
('35.76', 'KOTA MOJOKERTO', '35', '1451813005_Kota Mojokerto.png'),
('35.77', 'KOTA MADIUN', '35', '1451813022_Kota Madiun.png'),
('35.78', 'KOTA SURABAYA', '35', '1451813033_Kota Surabaya.png'),
('35.79', 'KOTA BATU', '35', '1451813043_Kota Batu.png'),
('36.01', 'KAB PANDEGLANG', '36', '1451813088_Kabupaten Pandeglang.png'),
('36.02', 'KAB. LEBAK', '36', '1451813102_Kabupaten Lebak.png'),
('36.03', 'KAB. TANGERANG', '36', '1451813113_Kabupaten Tangerang.png'),
('36.04', 'KAB. SERANG', '36', '1451813124_Kabupaten Serang.png'),
('36.71', 'KOTA TANGERANG', '36', '1451813132_Kota Tangerang.png'),
('36.72', 'KOTA CILEGON', '36', '1451813142_Kota Cilegon.png'),
('36.73', 'KOTA SERANG', '36', '1451813155_Kota Serang.png'),
('36.74', 'KOTA TANGERANG SELATAN', '36', '1451813160_Kota Tangerang Selatan.png'),
('51.01', 'KAB. JEMBRANA', '51', '1451813171_Kabupaten Jembrana.png'),
('51.02', 'KAB. TABANAN', '51', '1451813185_Kabupaten Tabanan.png'),
('51.03', 'KAB. BADUNG', '51', '1451813257_Kabupaten Badung.png'),
('51.04', 'KAB. GIANYAR', '51', '1451813271_Kabupaten Gianyar.png'),
('51.05', 'KAB. KLUNGKUNG', '51', '1451813283_Kabupaten Klungkung.png'),
('51.06', 'KAB. BANGLI', '51', '1451813290_Kabupaten Bangli.png'),
('51.07', 'KAB. KARANGASEM', '51', '1451813299_Kabupaten Karangasem.png'),
('51.08', 'KAB. BULELENG', '51', '1451813308_Kabupaten Buleleng.png'),
('51.71', 'KOTA DENPASAR', '51', '1451813321_Kota Denpasar.png'),
('52.01', 'KAB. LOMBOK BARAT', '52', '1451813342_Kabupaten Lombok Barat.png'),
('52.02', 'KAB. LOMBOK TENGAH', '52', '1451813347_Kabupaten Lombok Tengah.png'),
('52.03', 'KAB. LOMBOK TIMUR', '52', '1451813353_Kabupaten Lombok Timur.png'),
('52.04', 'KAB. SUMBAWA', '52', '1451813397_Kabupaten Sumbawa.png'),
('52.05', 'KAB. DOMPU', '52', '1451813406_Kabupaten Dompu.png'),
('52.06', 'KAB. BIMA', '52', '1451813414_Kabupaten Bima.png'),
('52.07', 'KAB. SUMBAWA BARAT', '52', '1451813426_Kabupaten Sumbawa Barat.png'),
('52.08', 'KAB. LOMBOK UTARA', '52', '1451813434_Kabupaten Lombok Utara.png'),
('52.71', 'KOTA MATARAM', '52', '1451813445_Kota Mataram.png'),
('52.72', 'KOTA BIMA', '52', '1451813455_Kota Bima.png'),
('53.01', 'KAB. KUPANG', '53', '1451813472_Kabupaten Kupang.png'),
('53.02', 'KAB TIMOR TENGAH SELATAN', '53', '1451813482_Kabupaten Timor Tengah Selatan.png'),
('53.03', 'KAB. TIMOR TENGAH UTARA', '53', '1451813491_Kabupaten Timor Tengah Utara.png'),
('53.04', 'KAB. BELU', '53', '1451813530_Kabupaten Belu.png'),
('53.05', 'KAB. ALOR', '53', '1451813547_Kabupaten Alor.png'),
('53.06', 'KAB. FLORES TIMUR', '53', '1451813559_Kabupaten Flores Timur.png'),
('53.07', 'KAB. SIKKA', '53', '1451813570_Kabupaten Sikka.png'),
('53.08', 'KAB. ENDE', '53', '1451813581_Kabupaten Ende.png'),
('53.09', 'KAB. NGADA', '53', '1451813593_Kabupaten Ngada.png'),
('53.10', 'KAB. MANGGARAI', '53', '1451813603_Kabupaten Manggarai.png'),
('53.11', 'KAB. SUMBA TIMUR', '53', '1451813613_Kabupaten Sumba Timur.png'),
('53.12', 'KAB. SUMBA BARAT', '53', '1451813628_Kabupaten Sumba Barat.png'),
('53.13', 'KAB. LEMBATA', '53', '1451813637_Kabupaten Lembata.png'),
('53.14', 'KAB. ROTE NDAO', '53', '1451813706_Kabupaten Rote Ndao.png'),
('53.15', 'KAB. MANGGARAI BARAT', '53', '1451813717_Kabupaten Manggarai Barat.png'),
('53.16', 'KAB. NAGEKEO', '53', '1451813729_Kabupaten Nagekeo.png'),
('53.17', 'KAB. SUMBA TENGAH', '53', '1451813741_Kabupaten Sumba Tengah.png'),
('53.18', 'KAB. SUMBA BARAT DAYA', '53', '1451813752_Kabupaten Sumba Barat Daya.png'),
('53.19', 'KAB. MANGGARAI TIMUR', '53', ''),
('53.20', 'KAB. SABU RAIJUA', '53', '1451813783_Kabupaten Sabu Raijua.png'),
('53.21', 'KAB. MALAKA', '53', '1451813794_Kabupaten Malaka.png'),
('53.71', 'KOTA KUPANG', '53', '1451813807_Kota Kupang.png'),
('61.01', 'KAB. SAMBAS', '61', '1451813843_Kabupaten Sambas.png'),
('61.02', 'KAB. MEMPAWAH', '61', '1451813856_Kabupaten Mempawah.png'),
('61.03', 'KAB. SANGGAU', '61', '1451813867_Kabupaten Sanggau.png'),
('61.04', 'KAB. KETAPANG', '61', '1451813876_Kabupaten Ketapang.png'),
('61.05', 'KAB. SINTANG', '61', '1451813917_Kabupaten Sintang.png'),
('61.06', 'KAB. KAPUAS HULU', '61', '1451813958_Kabupaten Kapuas Hulu.png'),
('61.07', 'KAB. BENGKAYANG', '61', '1451813970_Kabupaten Bengkayang.png'),
('61.08', 'KAB. LANDAK', '61', '1451813982_Kabupaten Landak.png'),
('61.09', 'KAB. SEKADAU', '61', '1451813992_Kabupaten Sekadau.png'),
('61.10', 'KAB. MELAWI', '61', '1451814006_Kabupaten Melawi.png'),
('61.11', 'KAB. KAYONG UTARA', '61', '1451814015_Kabupaten Kayong Utara.png'),
('61.12', 'KAB. KUBU RAYA', '61', '1451882791_'),
('61.71', 'KOTA PONTIANAK', '61', '1451814034_Kota Pontianak.png'),
('61.72', 'KOTA SINGKAWANG', '61', '1452993456_'),
('62.01', 'KAB. KOTAWARINGIN BARAT', '62', '1452993518_'),
('62.02', 'KAB. KOTAWARINGIN TIMUR', '62', '1452993522_'),
('62.03', 'KAB. KAPUAS', '62', '1452993525_'),
('62.04', 'KAB. BARITO SELATAN', '62', '1452993530_'),
('62.05', 'KAB. BARITO UTARA', '62', '1452993533_'),
('62.06', 'KAB. KATINGAN', '62', '1452993540_'),
('62.07', 'KAB. SERUYAN', '62', '1452993544_'),
('62.08', 'KAB. SUKAMARA', '62', '1452993698_'),
('62.09', 'KAB. LAMANDAU', '62', '1452993708_'),
('62.10', 'KAB. GUNUNG MAS', '62', '1452993712_'),
('62.11', 'KAB. PULANG PISAU', '62', '1452993716_'),
('62.12', 'KAB. MURUNG RAYA', '62', '1452993719_'),
('62.13', 'KAB. BARITO TIMUR', '62', '1452993724_'),
('62.71', 'KOTA PALANGKARAYA', '62', '1452993751_'),
('63.01', 'KAB. TANAH LAUT', '63', '1452993763_'),
('63.02', 'KAB. KOTABARU', '63', '1452993800_'),
('63.03', 'KAB. BANJAR', '63', '1452993802_'),
('63.04', 'KAB. BARITO KUALA', '63', '1452993878_'),
('63.05', 'KAB. TAPIN', '63', '1452993882_'),
('63.06', 'KAB. HULU SUNGAI SELATAN', '63', '1452993886_'),
('63.07', 'KAB. HULU SUNGAI TENGAH', '63', '1452993890_'),
('63.08', 'KAB. HULU SUNGAI UTARA', '63', '1452993893_'),
('63.09', 'KAB. TABALONG', '63', '1452993896_'),
('63.10', 'KAB. TANAH BUMBU', '63', '1452993901_'),
('63.11', 'KAB. BALANGAN', '63', '1452993905_'),
('63.71', 'KOTA BANJARMASIN', '63', '1452993914_'),
('63.72', 'KOTA BANJARBARU', '63', '1452993922_'),
('64.01', 'KAB. PASER', '64', '1452994098_'),
('64.02', 'KAB. KUTAI KARTANEGARA', '64', '1452994108_'),
('64.03', 'KAB. BERAU', '64', '1452994112_'),
('64.04', 'KAB. BULUNGAN', '64', '1452994115_'),
('64.05', 'KAB. NUNUKAN', '64', '1452994121_'),
('64.06', 'KAB. MALINAU', '64', '1452994125_'),
('64.07', 'KAB. KUTAI BARAT', '64', '1452994128_'),
('64.08', 'KAB. KUTAI TIMUR', '64', '1452994132_'),
('64.09', 'KAB. PENAJAM PASER UTARA', '64', '1452994138_'),
('64.10', 'KAB. TANA TIDUNG', '64', '1452994147_'),
('64.11', 'KAB. MAHAKAM ULU', '64', '1452994678_'),
('64.71', 'KOTA BALIKPAPAN', '64', '1452994685_'),
('64.72', 'KOTA SAMARINDA', '64', '1452994689_'),
('64.73', 'KOTA TARAKAN', '64', '1452994693_'),
('64.74', 'KOTA BONTANG', '64', '1452994696_'),
('65.01', 'KAB. BULUNGAN', '65', '1452994706_'),
('65.02', 'KAB. MALINAU', '65', '1452994717_'),
('65.03', 'KAB. NUNUKAN', '65', '1452994725_'),
('65.04', 'KAB. TANA TIDUNG', '65', '1452994732_'),
('65.71', 'KOTA TARAKAN', '65', '1452994736_'),
('71.01', 'KAB. BOLAANG MONGONDOW', '71', '1452994868_'),
('71.02', 'KAB. MINAHASA', '71', '1452994896_'),
('71.03', 'KAB. KEPULAUAN SANGIHE', '71', '1452995051_'),
('71.04', 'KAB. KEPULAUAN TALAUD', '71', '1452994903_'),
('71.05', 'KAB. MINAHASA SELATAN', '71', '1452994906_'),
('71.06', 'KAB. MINAHASA UTARA', '71', '1452994909_'),
('71.07', 'KAB. MINAHASA TENGGARA', '71', '1452994912_'),
('71.08', 'KAB. BOLAANG MONGONDOW UTARA', '71', '1452994916_'),
('71.09', 'KAB. KEP. SIAU. TAGULANDANG BIARO', '71', '1452994919_'),
('71.10', 'KAB. BOLAANG MONGONDOW TIMUR', '71', '1452994932_'),
('71.11', 'KAB. BOLAANG MONGONDOW SELATAN', '71', '1452995139_'),
('71.71', 'KOTA MANADO', '71', '1452995148_'),
('71.72', 'KOTA BITUNG', '71', '1452995159_'),
('71.73', 'KOTA TOMOHON', '71', '1452995169_'),
('71.74', 'KOTA KOTAMOBAGU', '71', '1452995178_'),
('72.01', 'KAB. BANGGAI', '72', '1452995192_'),
('72.02', 'KAB. POSO', '72', '1452995195_'),
('72.03', 'KAB. DONGGALA', '72', '1452995199_'),
('72.04', 'KAB. TOLI TOLI', '72', '1452995203_'),
('72.05', 'KAB. BUOL', '72', '1452995206_'),
('72.06', 'KAB. MOROWALI', '72', '1452995276_'),
('72.07', 'KAB. BANGGAI KEPULAUAN', '72', '1452995279_'),
('72.08', 'KAB. PARIGI MOUTONG', '72', '1452995282_'),
('72.09', 'KAB. TOJO UNA UNA', '72', '1452995286_'),
('72.10', 'KAB. SIGI', '72', '1452995289_'),
('72.11', 'KAB. BANGGAI LAUT', '72', '1452995293_'),
('72.12', 'KAB. MOROWALI UTARA', '72', '1452995297_'),
('72.71', 'KOTA PALU', '72', '1452995302_'),
('73.01', 'KAB. KEPULAUAN SELAYAR', '73', '1452995321_'),
('73.02', 'KAB. BULUKUMBA', '73', '1452995366_'),
('73.03', 'KAB. BANTAENG', '73', '1452995444_'),
('73.04', 'KAB. JENEPONTO', '73', '1452995448_'),
('73.05', 'KAB. TAKALAR', '73', '1452995451_'),
('73.06', 'KAB. GOWA', '73', '1452995454_'),
('73.07', 'KAB. SINJAI', '73', '1452995458_'),
('73.08', 'KAB. BONE', '73', '1452995481_'),
('73.09', 'KAB. MAROS', '73', '1452995513_'),
('73.10', 'KAB. PANGKAJENE KEPULAUAN', '73', '1452995517_'),
('73.11', 'KAB. BARRU', '73', '1452995520_'),
('73.12', 'KAB. SOPPENG', '73', '1452995523_'),
('73.13', 'KAB. WAJO', '73', '1452995602_'),
('73.14', 'KAB. SIDENRENG RAPPANG', '73', '1452995606_'),
('73.15', 'KAB. PINRANG', '73', '1452995609_'),
('73.16', 'KAB. ENREKANG', '73', '1452995612_'),
('73.17', 'KAB. LUWU', '73', '1452995615_'),
('73.18', 'KAB. TANA TORAJA', '73', '1452995619_'),
('73.19', 'KAB. POLEWALI MAMASA', '73', '1452995629_'),
('73.20', 'KAB. MAJENE', '73', '1452995636_'),
('73.21', 'KAB. MAMUJU', '73', '1452995704_'),
('73.22', 'KAB. LUWU UTARA', '73', '1452995707_'),
('73.23', 'KAB. MAMASA', '73', '1452995807_'),
('73.24', 'KAB. LUWU TIMUR', '73', '1452995811_'),
('73.25', 'KAB. MAMUJU UTARA', '73', '1452995814_'),
('73.26', 'KAB. TORAJA UTARA', '73', '1452995819_'),
('73.71', 'KOTA MAKASSAR', '73', '1452995822_'),
('73.72', 'KOTA PARE PARE', '73', '1452995826_'),
('73.73', 'KOTA PALOPO', '73', '1452995829_'),
('74.01', 'KAB. KOLAKA', '74', '1452995838_'),
('74.02', 'KAB. KONAWE', '74', '1452996092_'),
('74.03', 'KAB. MUNA', '74', '1452996113_'),
('74.04', 'KAB. BUTON', '74', '1452996173_'),
('74.05', 'KAB. KONAWE SELATAN', '74', '1452996178_'),
('74.06', 'KAB. BOMBANA', '74', '1452996182_'),
('74.07', 'KAB. WAKATOBI', '74', '1452996185_'),
('74.08', 'KAB. KOLAKA UTARA', '74', '1452996190_'),
('74.09', 'KAB. KONAWE UTARA', '74', '1452996197_'),
('74.10', 'KAB. BUTON UTARA', '74', '1452996241_'),
('74.11', 'KAB. KOLAKA TIMUR', '74', '1452996244_'),
('74.12', 'KAB. KONAWE KEPULAUAN', '74', '1452996247_'),
('74.13', 'KAB. MUNA BARAT', '74', '1452996250_'),
('74.14', 'KAB. BUTON TENGAH', '74', '1452996353_'),
('74.15', 'KAB. BUTON SELATAN', '74', '1452996363_'),
('74.71', 'KOTA KENDARI', '74', '1452996375_'),
('74.72', 'KOTA BAU BAU', '74', '1452996387_'),
('75.01', 'KAB. GORONTALO', '75', '1452996395_'),
('75.02', 'KAB. BOALEMO', '75', '1452996402_'),
('75.03', 'KAB. BONE BOLANGO', '75', '1452996411_'),
('75.04', 'KAB. PAHUWANTO', '75', '1452996415_'),
('75.05', 'KAB. GORONTALO UTARA', '75', '1452996418_'),
('75.71', 'KOTA GORONTALO', '75', '1452996424_'),
('76.01', 'KAB. MAMUJU UTARA', '76', '1452996642_'),
('76.02', 'KAB. MAMUJU', '76', '1452996646_'),
('76.03', 'KAB. MAMASA', '76', '1452996650_'),
('76.04', 'KAB. POLEWALI MANDAR', '76', '1452996653_'),
('76.05', 'KAB. MAJENE', '76', '1452996657_'),
('76.06', 'KAB. MAMUJU TENGAH', '76', '1452996661_'),
('81.01', 'KAB. MALUKU TENGAH', '81', '1452996669_'),
('81.02', 'KAB. MALUKU TENGGARA', '81', '1452996741_'),
('81.03', 'KAB, MALUKU TENGGARA BARAT', '81', '1452996742_'),
('81.04', 'KAB. BURU', '81', '1452996827_'),
('81.05', 'KAB. SERAM BAGIAN TIMUR', '81', '1452996917_'),
('81.06', 'KAB. SERAM BAGIAN BARAT', '81', '1452996921_'),
('81.07', 'KAB. KEPULAUAN ARU', '81', '1452996924_'),
('81.08', 'KAB. MALUKU BARAT DAYA', '81', '1452996927_'),
('81.09', 'KAB. BURU SELATAN', '81', '1452996931_'),
('81.71', 'KOTA AMBON', '81', '1452996934_'),
('81.72', 'KOTA TUAL', '81', '1452996938_'),
('82.01', 'KAB. HALMAHERA BARAT', '82', '1452996990_'),
('82.02', 'KAB. HALMAHERA TENGAH', '82', '1452996993_'),
('82.03', 'KAB. HALMAHERA UTARA', '82', '1452996998_'),
('82.04', 'KAB. HALMAHERA SELATAN', '82', '1452997086_'),
('82.05', 'KAB. KEPULAUAN SULA', '82', '1452997090_'),
('82.06', 'KAB. HALMAHERA TIMUR', '82', '1452997094_'),
('82.07', 'KAB. PULAU MOROTAI', '82', '1452997097_'),
('82.08', 'KAB. PULAU TALIABU', '82', '1452997100_'),
('82.71', 'KOTA TERNATE', '82', '1452997103_'),
('82.72', 'KOTA TIDORE KEPULAUAN', '82', '1452997106_'),
('91.01', 'KAB. MERAUKE', '91', '1452997149_'),
('91.02', 'KAB. JAYAWIJAYA', '91', '1452997153_'),
('91.03', 'KAB. JAYAPURA', '91', '1452997164_'),
('91.04', 'KAB. NABIRE', '91', '1452997176_'),
('91.05', 'KAB. KEPULAUAN YAPEN', '91', '1452997181_'),
('91.06', 'KAB. BIAK NUMFOR', '91', '1452997184_'),
('91.07', 'KAB. PUNCAK JAYA', '91', '1452997190_'),
('91.08', 'KAB. PANIAI', '91', '1452997209_'),
('91.09', 'KAB. MIMIKA', '91', '1452997212_'),
('91.10', 'KAB. SARMI', '91', '1452997219_'),
('91.11', 'KAB. KEEROM', '91', '1452997223_'),
('91.12', 'KAB. PEGUNUNGAN BINTANG', '91', '1452997249_'),
('91.13', 'KAB. YAHUKIMO', '91', '1452997253_'),
('91.14', 'KAB. TOLIKARA', '91', '1452997379_'),
('91.15', 'KAB. WAROPEN', '91', '1452997382_'),
('91.16', 'KAB. BOVEN DIGOEL', '91', '1452997385_'),
('91.17', 'KAB. MAPPI', '91', '1452997388_'),
('91.18', 'KAB. ASMAT', '91', '1452997392_'),
('91.19', 'KAB. SUPIORI', '91', '1452997396_'),
('91.20', 'KAB. MAMBERAMO RAYA', '91', '1452997399_'),
('91.21', 'KAB. MAMBERAMO TENGAH', '91', '1452997403_'),
('91.22', 'KAB. YALIMO', '91', '1452997441_'),
('91.23', 'KAB. LANNY JAYA', '91', '1452997448_'),
('91.24', 'KAB. NDUGA', '91', '1452997462_'),
('91.25', 'KAB. PUNCAK', '91', '1452997474_'),
('91.26', 'KAB. DOGIYAI', '91', '1452997477_'),
('91.27', 'KAB. INTAN JAYA', '91', '1452997480_'),
('91.28', 'KAB. DEIYAI', '91', '1452997484_'),
('91.71', 'KOTA JAYAPURA', '91', '1452997505_'),
('92.01', 'KAB. SORONG', '92', '1452997514_'),
('92.02', 'KAB. MANOKWARI', '92', '1452997520_'),
('92.03', 'KAB. FAK FAK', '92', '1452997527_'),
('92.04', 'KAB. SORONG SELATAN', '92', '1452997542_'),
('92.05', 'KAB. RAJA AMPAT', '92', '1452997613_'),
('92.06', 'KAB. TELUK BINTUNI', '92', '1452997616_'),
('92.07', 'KAB. TELUK WONDAMA', '92', '1452997620_'),
('92.08', 'KAB. KAIMANA', '92', '1452997623_'),
('92.09', 'KAB. TAMBRAUW', '92', '1452997626_'),
('92.10', 'KAB. MAYBRAT', '92', '1452997629_'),
('92.11', 'KAB. MANOKWARI SELATAN', '92', '1452997633_'),
('92.12', 'KAB. PEGUNUNGAN ARFAK', '92', '1452997636_'),
('92.71', 'KOTA SORONG', '92', '1452997644_');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar_forum`
--

CREATE TABLE IF NOT EXISTS `komentar_forum` (
`id` int(11) NOT NULL,
  `id_forum` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `foto_user` text NOT NULL,
  `isi` text NOT NULL,
  `foto` text NOT NULL,
  `waktu` datetime NOT NULL,
  `status` set('public','teman','private') NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `komentar_forum`
--

INSERT INTO `komentar_forum` (`id`, `id_forum`, `user_id`, `email`, `name`, `foto_user`, `isi`, `foto`, `waktu`, `status`) VALUES
(1, 1, 2, 'wirahman.wirahman@yahoo.co.id', 'Wirahman', 'no_profil.jpg', 'Wew Iya Bro... Cantik Banget... :x\r\nAda Lagi Ga Fotonya???', '1454475819.', '2016-02-03 12:03:39', ''),
(2, 1, 1, 'wira_uk@yahoo.com', 'Wirahman', '1454475555_DSC_02081.JPG', 'Ada donk Bro... Kali ini kayanya sih baru pulang kerja... ^^', '1454476375.jpg', '2016-02-03 12:12:55', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar_status`
--

CREATE TABLE IF NOT EXISTS `komentar_status` (
`id` int(11) NOT NULL,
  `id_status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `foto_user` text NOT NULL,
  `isi` text NOT NULL,
  `foto` text NOT NULL,
  `waktu` datetime NOT NULL,
  `status` set('public','teman','private') NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `komentar_status`
--

INSERT INTO `komentar_status` (`id`, `id_status`, `user_id`, `email`, `name`, `foto_user`, `isi`, `foto`, `waktu`, `status`) VALUES
(1, 1, 1, 'wira_uk@yahoo.com', 'Wirahman', 'no_profil.jpg', '1234567', '1454442221.', '2016-02-03 02:43:41', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_aktifitas`
--

CREATE TABLE IF NOT EXISTS `log_aktifitas` (
`id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `controller` varchar(45) DEFAULT NULL,
  `method` varchar(45) DEFAULT NULL,
  `full_url` varchar(250) DEFAULT NULL,
  `post_content` varchar(2500) DEFAULT NULL,
  `waktu` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=861 ;

--
-- Dumping data untuk tabel `log_aktifitas`
--

INSERT INTO `log_aktifitas` (`id`, `id_user`, `controller`, `method`, `full_url`, `post_content`, `waktu`) VALUES
(1, 0, 'login_admin', 'login', NULL, NULL, '2015-11-30 16:58:27'),
(2, 1, 'logout_admin', 'logout', NULL, NULL, '2015-11-30 17:08:59'),
(3, 0, 'register_expert', 'register', NULL, NULL, '2015-12-01 13:08:39'),
(4, 2, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2015-12-01 13:08:45'),
(5, 2, 'confirm_expert', 'confirm', NULL, NULL, '2015-12-01 13:09:12'),
(6, 2, 'logout', 'logout', NULL, NULL, '2015-12-01 13:49:43'),
(7, 0, 'login_admin', 'login', NULL, NULL, '2015-12-01 13:49:56'),
(8, 1, 'logout_admin', 'logout', NULL, NULL, '2015-12-01 13:55:17'),
(9, 2, 'logout', 'logout', NULL, NULL, '2015-12-01 13:56:45'),
(10, 0, 'login_admin', 'login', NULL, NULL, '2015-12-01 13:56:52'),
(11, 1, 'logout_admin', 'logout', NULL, NULL, '2015-12-01 14:01:40'),
(12, 0, 'login_kumkm', 'login', NULL, NULL, '2015-12-01 14:02:23'),
(13, 3, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2015-12-01 14:02:28'),
(14, 3, 'confirm_kumkm', 'confirm', NULL, NULL, '2015-12-01 14:02:56'),
(15, 3, 'logout', 'logout', NULL, NULL, '2015-12-01 14:08:13'),
(16, 0, 'login_admin', 'login', NULL, NULL, '2015-12-01 14:08:22'),
(17, 1, 'logout_admin', 'logout', NULL, NULL, '2015-12-01 14:09:20'),
(18, 3, 'logout', 'logout', NULL, NULL, '2015-12-01 14:19:10'),
(19, 2, 'logout', 'logout', NULL, NULL, '2015-12-01 14:28:31'),
(20, 3, 'logout_admin', 'logout', NULL, NULL, '2015-12-01 14:54:38'),
(21, 2, 'logout', 'logout', NULL, NULL, '2015-12-01 14:56:29'),
(22, 0, 'logout', 'logout', NULL, NULL, '2015-12-01 14:56:36'),
(23, 0, 'logout', 'logout', NULL, NULL, '2015-12-01 14:57:49'),
(24, 2, 'logout', 'logout', NULL, NULL, '2015-12-01 14:58:14'),
(25, 0, 'logout', 'logout', NULL, NULL, '2015-12-01 14:59:29'),
(26, 0, 'logout', 'logout', NULL, NULL, '2015-12-01 15:00:26'),
(27, 2, 'logout', 'logout', NULL, NULL, '2015-12-01 15:02:20'),
(28, 2, 'logout', 'logout', NULL, NULL, '2015-12-01 15:02:57'),
(29, 0, 'logout', 'logout', NULL, NULL, '2015-12-01 15:03:04'),
(30, 0, 'logout', 'logout', NULL, NULL, '2015-12-01 15:05:39'),
(31, 0, 'logout', 'logout', NULL, NULL, '2015-12-01 15:06:03'),
(32, 2, 'logout', 'logout', NULL, NULL, '2015-12-01 15:07:07'),
(33, 0, 'logout', 'logout', NULL, NULL, '2015-12-01 15:07:12'),
(34, 0, 'logout', 'logout', NULL, NULL, '2015-12-01 15:40:23'),
(35, 0, 'logout', 'logout', NULL, NULL, '2015-12-01 15:49:58'),
(36, 0, 'logout', 'logout', NULL, NULL, '2015-12-01 15:50:02'),
(37, 0, 'logout', 'logout', NULL, NULL, '2015-12-01 15:50:09'),
(38, 2, 'logout_admin', 'logout', NULL, NULL, '2015-12-01 15:56:11'),
(39, 3, 'logout', 'logout', NULL, NULL, '2015-12-01 15:56:59'),
(40, 3, 'logout', 'logout', NULL, NULL, '2015-12-01 15:58:52'),
(41, 2, 'logout', 'logout', NULL, NULL, '2015-12-01 16:02:51'),
(42, 3, 'logout', 'logout', NULL, NULL, '2015-12-01 16:03:03'),
(43, 3, 'logout', 'logout', NULL, NULL, '2015-12-01 16:03:43'),
(44, 3, 'logout', 'logout', NULL, NULL, '2015-12-01 16:09:15'),
(45, 2, 'logout', 'logout', NULL, NULL, '2015-12-01 16:10:22'),
(46, 3, 'logout_admin', 'logout', NULL, NULL, '2015-12-01 16:11:44'),
(47, 0, 'login_admin', 'login', NULL, NULL, '2015-12-01 16:11:51'),
(48, 1, 'logout', 'logout', NULL, NULL, '2015-12-01 16:11:57'),
(49, 3, 'logout', 'logout', NULL, NULL, '2015-12-01 17:25:36'),
(50, 0, 'login_admin', 'login', NULL, NULL, '2015-12-01 17:27:20'),
(51, 1, 'logout_admin', 'logout', NULL, NULL, '2015-12-01 20:29:26'),
(52, 2, 'logout', 'logout', NULL, NULL, '2015-12-01 20:29:57'),
(53, 2, 'logout', 'logout', NULL, NULL, '2015-12-02 08:55:39'),
(54, 0, 'login_admin', 'login', NULL, NULL, '2015-12-02 08:55:46'),
(55, 1, 'logout_admin', 'logout', NULL, NULL, '2015-12-02 09:55:16'),
(56, 2, 'logout', 'logout', NULL, NULL, '2015-12-02 11:27:54'),
(57, 0, 'login_admin', 'login', NULL, NULL, '2015-12-02 11:28:16'),
(58, 1, 'logout_admin', 'logout', NULL, NULL, '2015-12-02 11:35:13'),
(59, 2, 'logout', 'logout', NULL, NULL, '2015-12-02 11:37:06'),
(60, 2, 'logout', 'logout', NULL, NULL, '2015-12-02 11:47:25'),
(61, 2, 'logout', 'logout', NULL, NULL, '2015-12-02 12:04:36'),
(62, 0, 'login_admin', 'login', NULL, NULL, '2015-12-02 12:04:42'),
(63, 1, 'logout_admin', 'logout', NULL, NULL, '2015-12-02 13:01:14'),
(64, 0, 'login_admin', 'login', NULL, NULL, '2015-12-02 13:03:28'),
(65, 1, 'logout_admin', 'logout', NULL, NULL, '2015-12-02 13:04:36'),
(66, 2, 'logout', 'logout', NULL, NULL, '2015-12-02 13:08:32'),
(67, 0, 'login_admin', 'login', NULL, NULL, '2015-12-02 13:08:40'),
(68, 1, 'logout_admin', 'logout', NULL, NULL, '2015-12-02 13:20:53'),
(69, 2, 'logout', 'logout', NULL, NULL, '2015-12-02 13:27:50'),
(70, 3, 'logout', 'logout', NULL, NULL, '2015-12-02 13:29:11'),
(71, 0, 'login_admin', 'login', NULL, NULL, '2015-12-02 13:29:21'),
(72, 1, 'logout_admin', 'logout', NULL, NULL, '2015-12-02 13:29:28'),
(73, 3, 'logout', 'logout', NULL, NULL, '2015-12-02 13:47:07'),
(74, 0, 'login_admin', 'login', NULL, NULL, '2015-12-02 13:47:22'),
(75, 2, 'logout', 'logout', NULL, NULL, '2015-12-02 18:48:57'),
(76, 3, 'logout', 'logout', NULL, NULL, '2015-12-03 10:47:49'),
(77, 0, 'login_admin', 'login', NULL, NULL, '2015-12-03 10:47:55'),
(78, 1, 'logout_admin', 'logout', NULL, NULL, '2015-12-03 11:44:58'),
(79, 3, 'logout', 'logout', NULL, NULL, '2015-12-03 11:56:37'),
(80, 2, 'logout', 'logout', NULL, NULL, '2015-12-03 17:20:33'),
(81, 2, 'logout', 'logout', NULL, NULL, '2015-12-03 17:25:33'),
(82, 3, 'logout', 'logout', NULL, NULL, '2015-12-03 17:36:38'),
(83, 2, 'logout', 'logout', NULL, NULL, '2015-12-04 16:11:20'),
(84, 3, 'logout', 'logout', NULL, NULL, '2015-12-04 16:11:53'),
(85, 0, 'login_admin', 'login', NULL, NULL, '2015-12-04 16:12:02'),
(86, 1, 'logout_admin', 'logout', NULL, NULL, '2015-12-04 17:03:24'),
(87, 2, 'logout', 'logout', NULL, NULL, '2015-12-04 17:16:02'),
(88, 0, 'login_admin', 'login', NULL, NULL, '2015-12-04 17:16:16'),
(89, 1, 'logout', 'logout', NULL, NULL, '2015-12-04 17:23:34'),
(90, 0, 'login_admin', 'login', NULL, NULL, '2015-12-04 17:24:07'),
(91, 1, 'logout_admin', 'logout', NULL, NULL, '2015-12-04 17:56:19'),
(92, 2, 'logout', 'logout', NULL, NULL, '2015-12-07 13:19:33'),
(93, 3, 'logout', 'logout', NULL, NULL, '2015-12-07 13:37:45'),
(94, 2, 'logout', 'logout', NULL, NULL, '2015-12-07 13:41:44'),
(95, 2, 'logout', 'logout', NULL, NULL, '2015-12-07 13:43:04'),
(96, 0, 'login_admin', 'login', NULL, NULL, '2015-12-07 13:43:10'),
(97, 1, 'logout_admin', 'logout', NULL, NULL, '2015-12-07 13:44:17'),
(98, 3, 'logout', 'logout', NULL, NULL, '2015-12-07 14:04:23'),
(99, 2, 'logout_admin', 'logout', NULL, NULL, '2015-12-07 15:54:01'),
(100, 0, 'login_admin', 'login', NULL, NULL, '2015-12-07 16:18:08'),
(101, 1, 'logout_admin', 'logout', NULL, NULL, '2015-12-07 16:25:43'),
(102, 0, 'login_admin', 'login', NULL, NULL, '2015-12-07 17:01:04'),
(103, 1, 'logout_admin', 'logout', NULL, NULL, '2015-12-07 17:15:22'),
(104, 2, 'logout', 'logout', NULL, NULL, '2015-12-07 17:20:15'),
(105, 0, 'login_admin', 'login', NULL, NULL, '2015-12-07 17:20:29'),
(106, 1, 'logout_admin', 'logout', NULL, NULL, '2015-12-07 17:42:36'),
(107, 2, 'logout', 'logout', NULL, NULL, '2015-12-07 19:05:34'),
(108, 3, 'logout', 'logout', NULL, NULL, '2015-12-07 19:07:51'),
(109, 2, 'logout', 'logout', NULL, NULL, '2015-12-07 19:08:52'),
(110, 2, 'logout', 'logout', NULL, NULL, '2015-12-07 19:11:35'),
(111, 3, 'logout', 'logout', NULL, NULL, '2015-12-07 20:04:47'),
(112, 0, 'login_admin', 'login', NULL, NULL, '2015-12-07 20:04:53'),
(113, 1, 'logout_admin', 'logout', NULL, NULL, '2015-12-07 20:13:37'),
(114, 3, 'logout', 'logout', NULL, NULL, '2015-12-07 20:17:27'),
(115, 3, 'logout', 'logout', NULL, NULL, '2015-12-07 20:21:42'),
(116, 3, 'logout', 'logout', NULL, NULL, '2015-12-07 20:22:21'),
(117, 3, 'logout', 'logout', NULL, NULL, '2015-12-07 20:22:52'),
(118, 3, 'logout', 'logout', NULL, NULL, '2015-12-07 20:23:39'),
(119, 3, 'logout', 'logout', NULL, NULL, '2015-12-07 20:25:26'),
(120, 3, 'logout', 'logout', NULL, NULL, '2015-12-07 20:26:18'),
(121, 3, 'logout', 'logout', NULL, NULL, '2015-12-07 20:27:57'),
(122, 2, 'logout', 'logout', NULL, NULL, '2015-12-07 20:31:10'),
(123, 3, 'logout', 'logout', NULL, NULL, '2015-12-07 20:31:26'),
(124, 0, 'login_admin', 'login', NULL, NULL, '2015-12-08 11:00:06'),
(125, 1, 'logout_admin', 'logout', NULL, NULL, '2015-12-08 11:02:55'),
(126, 0, 'login_kumkm', 'login', NULL, NULL, '2015-12-08 11:24:32'),
(127, 4, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2015-12-08 11:24:38'),
(128, 4, 'login_kumkm', 'login', NULL, NULL, '2015-12-08 11:27:12'),
(129, 5, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2015-12-08 11:27:17'),
(130, 5, 'login_kumkm', 'login', NULL, NULL, '2015-12-08 11:28:39'),
(131, 6, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2015-12-08 11:28:43'),
(132, 6, 'login_kumkm', 'login', NULL, NULL, '2015-12-08 11:30:47'),
(133, 7, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2015-12-08 11:30:51'),
(134, 7, 'confirm_kumkm', 'confirm', NULL, NULL, '2015-12-08 11:31:11'),
(135, 7, 'logout', 'logout', NULL, NULL, '2015-12-08 11:34:51'),
(136, 7, 'confirm_kumkm', 'confirm', NULL, NULL, '2015-12-08 11:35:11'),
(137, 7, 'logout', 'logout', NULL, NULL, '2015-12-08 11:35:12'),
(138, 0, 'register_expert', 'register', NULL, NULL, '2015-12-08 11:36:10'),
(139, 8, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2015-12-08 11:36:16'),
(140, 8, 'confirm_expert', 'confirm', NULL, NULL, '2015-12-08 11:36:23'),
(141, 8, 'logout', 'logout', NULL, NULL, '2015-12-08 11:36:53'),
(142, 0, 'login_kumkm', 'login', NULL, NULL, '2015-12-08 11:37:31'),
(143, 9, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2015-12-08 11:37:36'),
(144, 9, 'confirm_kumkm', 'confirm', NULL, NULL, '2015-12-08 11:37:45'),
(145, 9, 'logout', 'logout', NULL, NULL, '2015-12-08 11:37:45'),
(146, 0, 'login_kumkm', 'login', NULL, NULL, '2015-12-08 11:39:00'),
(147, 10, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2015-12-08 11:39:04'),
(148, 10, 'confirm_kumkm', 'confirm', NULL, NULL, '2015-12-08 11:39:08'),
(149, 10, 'logout', 'logout', NULL, NULL, '2015-12-08 11:39:09'),
(150, 0, 'login_kumkm', 'login', NULL, NULL, '2015-12-08 11:42:39'),
(151, 11, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2015-12-08 11:42:44'),
(152, 11, 'confirm_kumkm', 'confirm', NULL, NULL, '2015-12-08 11:42:49'),
(153, 11, 'logout', 'logout', NULL, NULL, '2015-12-08 11:45:13'),
(154, 11, 'logout', 'logout', NULL, NULL, '2015-12-08 11:47:41'),
(155, 3, 'logout', 'logout', NULL, NULL, '2015-12-08 12:18:43'),
(156, 3, 'logout', 'logout', NULL, NULL, '2015-12-08 12:19:42'),
(157, 3, 'logout', 'logout', NULL, NULL, '2015-12-08 12:24:15'),
(158, 3, 'logout', 'logout', NULL, NULL, '2015-12-08 12:24:57'),
(159, 3, 'logout_admin', 'logout', NULL, NULL, '2015-12-08 12:26:25'),
(160, 11, 'logout', 'logout', NULL, NULL, '2015-12-08 12:27:07'),
(161, 11, 'logout', 'logout', NULL, NULL, '2015-12-08 12:33:22'),
(162, 3, 'logout', 'logout', NULL, NULL, '2015-12-08 15:48:30'),
(163, 3, 'logout', 'logout', NULL, NULL, '2015-12-08 18:52:04'),
(164, 11, 'logout', 'logout', NULL, NULL, '2015-12-09 13:40:44'),
(165, 3, 'logout', 'logout', NULL, NULL, '2015-12-09 13:41:01'),
(166, 11, 'logout', 'logout', NULL, NULL, '2015-12-09 17:59:15'),
(167, 3, 'logout', 'logout', NULL, NULL, '2015-12-09 19:17:44'),
(168, 3, 'logout', 'logout', NULL, NULL, '2015-12-10 10:10:36'),
(169, 3, 'logout', 'logout', NULL, NULL, '2015-12-10 10:13:58'),
(170, 12, 'logout', 'logout', NULL, NULL, '2015-12-10 10:25:52'),
(171, 11, 'logout', 'logout', NULL, NULL, '2015-12-10 10:27:18'),
(172, 0, 'login_admin', 'login', NULL, NULL, '2015-12-10 10:27:25'),
(173, 1, 'logout_admin', 'logout', NULL, NULL, '2015-12-10 10:37:21'),
(174, 2, 'logout', 'logout', NULL, NULL, '2015-12-10 10:40:23'),
(175, 11, 'logout', 'logout', NULL, NULL, '2015-12-10 10:42:49'),
(176, 0, 'register_expert', 'register', NULL, NULL, '2015-12-10 10:51:49'),
(177, 13, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2015-12-10 10:51:54'),
(178, 13, 'confirm_expert', 'confirm', NULL, NULL, '2015-12-10 10:54:34'),
(179, 13, 'logout', 'logout', NULL, NULL, '2015-12-10 11:08:18'),
(180, 13, 'logout', 'logout', NULL, NULL, '2015-12-10 11:24:18'),
(181, 3, 'logout', 'logout', NULL, NULL, '2015-12-10 11:25:54'),
(182, 11, 'logout', 'logout', NULL, NULL, '2015-12-10 11:26:50'),
(183, 2, 'logout', 'logout', NULL, NULL, '2015-12-10 11:29:10'),
(184, 2, 'logout', 'logout', NULL, NULL, '2015-12-10 11:39:27'),
(185, 13, 'logout', 'logout', NULL, NULL, '2015-12-10 13:26:34'),
(186, 12, 'logout_admin', 'logout', NULL, NULL, '2015-12-10 13:42:19'),
(187, 0, 'login_admin', 'login', NULL, NULL, '2015-12-10 13:43:56'),
(188, 11, 'logout_admin', 'logout', NULL, NULL, '2015-12-10 13:52:53'),
(189, 0, 'login_admin', 'login', NULL, NULL, '2015-12-10 13:54:19'),
(190, 12, 'logout', 'logout', NULL, NULL, '2015-12-10 15:18:16'),
(191, 13, 'logout', 'logout', NULL, NULL, '2015-12-10 15:52:46'),
(192, 12, 'logout', 'logout', NULL, NULL, '2015-12-10 20:38:13'),
(193, 0, 'login_admin', 'login', NULL, NULL, '2015-12-10 20:38:31'),
(194, 11, 'logout_admin', 'logout', NULL, NULL, '2015-12-10 20:47:58'),
(195, 0, 'login_admin', 'login', NULL, NULL, '2015-12-10 20:48:25'),
(196, 13, 'logout', 'logout', NULL, NULL, '2016-01-04 05:08:04'),
(197, 11, 'logout', 'logout', NULL, NULL, '2016-01-11 03:51:10'),
(198, 0, 'pendaftaran', 'pendaftaran', NULL, NULL, '2016-01-11 20:05:13'),
(199, 13, 'pendaftaran', 'pendaftaran', NULL, NULL, '2016-01-11 20:19:59'),
(200, 14, 'pendaftaran', 'pendaftaran', NULL, NULL, '2016-01-11 20:30:29'),
(201, 0, 'pendaftaran', 'pendaftaran', NULL, NULL, '2016-01-11 22:55:39'),
(202, 4, 'pendaftaran', 'pendaftaran', NULL, NULL, '2016-01-11 23:00:19'),
(203, 0, 'pendaftaran', 'pendaftaran', NULL, NULL, '2016-01-12 01:42:57'),
(204, 6, 'register_expert', 'register', NULL, NULL, '2016-01-12 02:14:50'),
(205, 7, 'pendaftaran', 'pendaftaran', NULL, NULL, '2016-01-12 02:18:40'),
(206, 8, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 02:18:47'),
(207, 8, 'pendaftaran', 'pendaftaran', NULL, NULL, '2016-01-12 02:40:13'),
(208, 9, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 02:40:20'),
(209, 9, 'pendaftaran', 'pendaftaran', NULL, NULL, '2016-01-12 03:18:49'),
(210, 10, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 03:18:54'),
(211, 10, 'pendaftaran', 'pendaftaran', NULL, NULL, '2016-01-12 03:24:52'),
(212, 11, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 03:25:11'),
(213, 11, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 03:26:12'),
(214, 11, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 03:27:20'),
(215, 11, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 03:27:44'),
(216, 11, 'pendaftaran', 'pendaftaran', NULL, NULL, '2016-01-12 04:10:00'),
(217, 12, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 04:10:06'),
(218, 12, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 04:11:06'),
(219, 12, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 04:11:11'),
(220, 12, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 04:14:48'),
(221, 12, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 04:14:54'),
(222, 12, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 04:21:02'),
(223, 12, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 04:21:08'),
(224, 12, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 04:24:31'),
(225, 12, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 04:24:37'),
(226, 0, 'pendaftaran', 'pendaftaran', NULL, NULL, '2016-01-12 11:04:54'),
(227, 13, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:05:00'),
(228, 13, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 11:10:24'),
(229, 14, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:10:31'),
(230, 14, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 11:13:30'),
(231, 14, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:13:36'),
(232, 14, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 11:14:44'),
(233, 14, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:14:49'),
(234, 14, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 11:15:04'),
(235, 14, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:15:04'),
(236, 14, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 11:17:42'),
(237, 14, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:17:47'),
(238, 14, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 11:18:05'),
(239, 14, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:18:08'),
(240, 14, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 11:18:47'),
(241, 15, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:18:53'),
(242, 15, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 11:19:58'),
(243, 15, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:20:06'),
(244, 15, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 11:20:59'),
(245, 15, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:21:04'),
(246, 15, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 11:21:26'),
(247, 15, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 11:21:26'),
(248, 15, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:21:29'),
(249, 15, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 11:22:22'),
(250, 15, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:22:30'),
(251, 15, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 11:22:58'),
(252, 16, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:23:01'),
(253, 16, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 11:27:51'),
(254, 16, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:27:56'),
(255, 16, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 11:28:13'),
(256, 16, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:28:17'),
(257, 16, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 11:28:21'),
(258, 16, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:28:24'),
(259, 16, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 11:28:32'),
(260, 16, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:28:35'),
(261, 16, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 11:29:05'),
(262, 17, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:29:07'),
(263, 17, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 11:30:27'),
(264, 17, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:30:30'),
(265, 17, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 11:30:37'),
(266, 17, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:30:40'),
(267, 17, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 11:31:01'),
(268, 17, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:31:03'),
(269, 17, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 11:31:34'),
(270, 18, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:31:37'),
(271, 18, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 11:33:46'),
(272, 19, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:33:49'),
(273, 19, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 11:35:51'),
(274, 20, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:35:54'),
(275, 20, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 11:36:58'),
(276, 21, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:37:00'),
(277, 21, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 11:37:49'),
(278, 22, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:37:52'),
(279, 22, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 11:39:30'),
(280, 23, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:39:33'),
(281, 23, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 11:40:16'),
(282, 24, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:40:19'),
(283, 24, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 11:42:28'),
(284, 25, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:42:31'),
(285, 25, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 11:43:32'),
(286, 26, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:43:35'),
(287, 26, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 11:44:40'),
(288, 26, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:44:43'),
(289, 26, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:52:24'),
(290, 26, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:53:02'),
(291, 26, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 11:53:56'),
(292, 26, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 12:02:48'),
(293, 26, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 12:03:21'),
(294, 26, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 12:03:25'),
(295, 26, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 12:04:07'),
(296, 27, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 12:04:10'),
(297, 27, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 12:10:17'),
(298, 27, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 12:10:37'),
(299, 27, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 12:14:44'),
(300, 27, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 12:15:02'),
(301, 27, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 12:15:05'),
(302, 27, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 12:16:25'),
(303, 27, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 12:17:01'),
(304, 27, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 12:17:06'),
(305, 27, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 12:18:55'),
(306, 28, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 12:18:59'),
(307, 0, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 12:50:47'),
(308, 29, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 12:50:54'),
(309, 29, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 12:53:08'),
(310, 29, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 12:53:14'),
(311, 28, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 13:01:24'),
(312, 30, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 13:05:46'),
(313, 31, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 13:06:53'),
(314, 32, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 13:07:40'),
(315, 33, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 13:09:05'),
(316, 34, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 13:09:31'),
(317, 35, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 13:10:09'),
(318, 36, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 13:11:39'),
(319, 37, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 13:11:59'),
(320, 38, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 13:12:38'),
(321, 39, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 13:13:41'),
(322, 40, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 13:14:33'),
(323, 41, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 13:15:16'),
(324, 42, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 13:16:21'),
(325, 43, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 13:16:27'),
(326, 43, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 13:18:56'),
(327, 44, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 13:18:58'),
(328, 44, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 13:27:22'),
(329, 45, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 13:28:27'),
(330, 45, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 13:28:32'),
(331, 45, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 13:28:36'),
(332, 45, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 13:28:51'),
(333, 45, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 13:28:52'),
(334, 45, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 13:31:16'),
(335, 46, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 13:31:19'),
(336, 46, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 13:31:44'),
(337, 46, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 13:31:56'),
(338, 46, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 13:32:30'),
(339, 46, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 13:32:37'),
(340, 46, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 13:34:52'),
(341, 46, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 13:34:57'),
(342, 46, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 13:36:15'),
(343, 46, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 13:36:20'),
(344, 46, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 13:36:54'),
(345, 46, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 13:36:54'),
(346, 46, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 13:36:59'),
(347, 46, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 13:38:14'),
(348, 46, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 13:38:19'),
(349, 46, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 13:40:06'),
(350, 46, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 13:40:31'),
(351, 46, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 13:40:35'),
(352, 46, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 13:41:46'),
(353, 47, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 13:41:50'),
(354, 47, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 13:43:02'),
(355, 47, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 13:43:06'),
(356, 47, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 13:44:59'),
(357, 47, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 13:45:03'),
(358, 47, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 13:45:19'),
(359, 47, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 13:45:23'),
(360, 47, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 13:47:24'),
(361, 48, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 13:47:27'),
(362, 48, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 13:47:42'),
(363, 48, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 13:47:46'),
(364, 48, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 13:49:11'),
(365, 48, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 13:49:17'),
(366, 48, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 13:49:29'),
(367, 48, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 13:49:36'),
(368, 48, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 13:51:20'),
(369, 48, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 13:53:19'),
(370, 48, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 13:53:43'),
(371, 48, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 13:53:47'),
(372, 48, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 13:54:59'),
(373, 48, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 13:55:06'),
(374, 48, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 13:55:30'),
(375, 48, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 13:55:34'),
(376, 48, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 13:58:20'),
(377, 48, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 13:58:26'),
(378, 48, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 14:00:39'),
(379, 48, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 14:00:43'),
(380, 48, 'confirm_user', 'confirm', NULL, NULL, '2016-01-12 14:02:19'),
(381, 48, 'logout', 'logout', NULL, NULL, '2016-01-12 14:02:20'),
(382, 0, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 14:08:55'),
(383, 49, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 14:09:00'),
(384, 49, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 14:13:00'),
(385, 49, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 14:13:04'),
(386, 49, 'confirm_user', 'confirm', NULL, NULL, '2016-01-12 14:13:34'),
(387, 49, 'logout', 'logout', NULL, NULL, '2016-01-12 14:13:35'),
(388, 49, 'logout', 'logout', NULL, NULL, '2016-01-12 14:14:24'),
(389, 0, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 14:14:49'),
(390, 50, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 14:14:53'),
(391, 50, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 14:20:56'),
(392, 51, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 14:21:01'),
(393, 51, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 14:24:57'),
(394, 52, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 14:25:28'),
(395, 53, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 14:27:54'),
(396, 54, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 14:27:58'),
(397, 54, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 14:33:31'),
(398, 55, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 14:33:39'),
(399, 55, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 14:34:52'),
(400, 56, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 14:34:56'),
(401, 56, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 15:23:33'),
(402, 57, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 15:23:38'),
(403, 57, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 15:26:06'),
(404, 58, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 15:26:10'),
(405, 58, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 15:27:39'),
(406, 59, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 15:27:43'),
(407, 0, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 15:43:26'),
(408, 60, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 15:43:31'),
(409, 60, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 15:45:36'),
(410, 61, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 15:45:41'),
(411, 61, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 15:47:01'),
(412, 62, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 15:49:47'),
(413, 63, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 15:49:50'),
(414, 63, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 15:50:23'),
(415, 63, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 15:50:31'),
(416, 63, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 15:53:01'),
(417, 64, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 15:53:04'),
(418, 64, 'confirm_user', 'confirm', NULL, NULL, '2016-01-12 15:53:32'),
(419, 64, 'logout', 'logout', NULL, NULL, '2016-01-12 15:53:33'),
(420, 0, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 15:54:29'),
(421, 65, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 15:54:34'),
(422, 65, 'confirm_user', 'confirm', NULL, NULL, '2016-01-12 15:54:51'),
(423, 65, 'logout', 'logout', NULL, NULL, '2016-01-12 15:54:51'),
(424, 0, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 15:59:52'),
(425, 66, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 15:59:59'),
(426, 66, 'confirm_user', 'confirm', NULL, NULL, '2016-01-12 16:00:10'),
(427, 66, 'logout', 'logout', NULL, NULL, '2016-01-12 16:00:11'),
(428, 0, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 16:03:09'),
(429, 67, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 16:03:16'),
(430, 67, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 16:03:23'),
(431, 67, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 16:03:29'),
(432, 67, 'confirm_user', 'confirm', NULL, NULL, '2016-01-12 16:03:46'),
(433, 67, 'logout', 'logout', NULL, NULL, '2016-01-12 16:03:47'),
(434, 0, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 16:04:55'),
(435, 68, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 16:04:59'),
(436, 68, 'confirm_user', 'confirm', NULL, NULL, '2016-01-12 16:05:09'),
(437, 68, 'logout', 'logout', NULL, NULL, '2016-01-12 16:05:10'),
(438, 0, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 16:06:02'),
(439, 69, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 16:06:06'),
(440, 69, 'confirm_user', 'confirm', NULL, NULL, '2016-01-12 16:06:23'),
(441, 69, 'logout', 'logout', NULL, NULL, '2016-01-12 16:06:25'),
(442, 0, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 16:07:28'),
(443, 70, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 16:07:31'),
(444, 70, 'confirm_user', 'confirm', NULL, NULL, '2016-01-12 16:07:44'),
(445, 70, 'logout', 'logout', NULL, NULL, '2016-01-12 16:07:45'),
(446, 0, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 16:08:39'),
(447, 71, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 16:08:44'),
(448, 71, 'resend_email', 'resend_email', NULL, NULL, '2016-01-12 16:08:50'),
(449, 71, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 16:08:54'),
(450, 71, 'confirm_user', 'confirm', NULL, NULL, '2016-01-12 16:09:03'),
(451, 71, 'logout', 'logout', NULL, NULL, '2016-01-12 16:09:04'),
(452, 0, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 23:10:51'),
(453, 72, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 23:10:57'),
(454, 0, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-12 23:41:00'),
(455, 73, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-12 23:41:05'),
(456, 73, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-13 00:29:59'),
(457, 74, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-13 00:31:32'),
(458, 75, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-13 00:32:02'),
(459, 76, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-13 00:33:53'),
(460, 77, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-13 00:39:12'),
(461, 78, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-13 00:42:45'),
(462, 79, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-13 00:42:49'),
(463, 79, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-13 00:43:46'),
(464, 80, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-13 00:43:49'),
(465, 80, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-13 00:44:36'),
(466, 81, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-13 00:44:40'),
(467, 81, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-13 00:45:33'),
(468, 82, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-13 00:45:37'),
(469, 82, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-13 00:47:20'),
(470, 83, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-13 00:47:24'),
(471, 83, 'confirm_user', 'confirm', NULL, NULL, '2016-01-13 00:48:37'),
(472, 83, 'logout', 'logout', NULL, NULL, '2016-01-13 00:48:39'),
(473, 0, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-13 00:49:52'),
(474, 84, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-13 00:49:55'),
(475, 84, 'confirm_user', 'confirm', NULL, NULL, '2016-01-13 00:50:26'),
(476, 84, 'logout', 'logout', NULL, NULL, '2016-01-13 00:50:27'),
(477, 0, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-13 02:18:44'),
(478, 1, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-13 02:18:49'),
(479, 1, 'confirm_user', 'confirm', NULL, NULL, '2016-01-13 02:19:01'),
(480, 1, 'logout', 'logout', NULL, NULL, '2016-01-13 02:19:02'),
(481, 1, 'logout', 'logout', NULL, NULL, '2016-01-13 02:20:26'),
(482, 1, 'logout', 'logout', NULL, NULL, '2016-01-13 02:40:18'),
(483, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-01-13 02:42:59'),
(484, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-01-13 02:43:22'),
(485, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-01-13 02:52:01'),
(486, 0, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-13 07:50:59'),
(487, 2, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-13 07:51:06'),
(488, 2, 'resend_email', 'resend_email', NULL, NULL, '2016-01-13 07:51:49'),
(489, 2, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-13 07:51:55'),
(490, 2, 'confirm_user', 'confirm', NULL, NULL, '2016-01-13 07:52:06'),
(491, 2, 'logout', 'logout', NULL, NULL, '2016-01-13 07:52:08'),
(492, 2, 'logout', 'logout', NULL, NULL, '2016-01-14 11:02:36'),
(493, 2, 'logout', 'logout', NULL, NULL, '2016-01-14 11:04:19'),
(494, 2, 'logout', 'logout', NULL, NULL, '2016-01-14 11:04:40'),
(495, 0, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-14 11:05:11'),
(496, 3, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-14 11:05:16'),
(497, 3, 'logout', 'logout', NULL, NULL, '2016-01-14 11:05:52'),
(498, 3, 'logout', 'logout', NULL, NULL, '2016-01-14 11:06:36'),
(499, 3, 'logout', 'logout', NULL, NULL, '2016-01-14 11:06:51'),
(500, 3, 'logout', 'logout', NULL, NULL, '2016-01-14 11:07:48'),
(501, 3, 'logout', 'logout', NULL, NULL, '2016-01-14 11:08:24'),
(502, 3, 'logout', 'logout', NULL, NULL, '2016-01-14 11:12:17'),
(503, 3, 'logout', 'logout', NULL, NULL, '2016-01-14 11:20:47'),
(504, 3, 'logout', 'logout', NULL, NULL, '2016-01-14 15:51:24'),
(505, 3, 'logout', 'logout', NULL, NULL, '2016-01-14 15:52:22'),
(506, 3, 'logout', 'logout', NULL, NULL, '2016-01-14 15:53:03'),
(507, 3, 'logout', 'logout', NULL, NULL, '2016-01-14 15:53:50'),
(508, 3, 'logout', 'logout', NULL, NULL, '2016-01-14 15:56:23'),
(509, 3, 'logout', 'logout', NULL, NULL, '2016-01-14 16:06:15'),
(510, 3, 'logout', 'logout', NULL, NULL, '2016-01-14 18:28:52'),
(511, 3, 'logout', 'logout', NULL, NULL, '2016-01-14 18:30:00'),
(512, 3, 'logout', 'logout', NULL, NULL, '2016-01-14 18:30:52'),
(513, 3, 'logout', 'logout', NULL, NULL, '2016-01-17 04:19:28'),
(514, 3, 'logout', 'logout', NULL, NULL, '2016-01-17 05:48:33'),
(515, 3, 'logout', 'logout', NULL, NULL, '2016-01-17 06:32:09'),
(516, 3, 'logout', 'logout', NULL, NULL, '2016-01-17 06:34:22'),
(517, 3, 'logout', 'logout', NULL, NULL, '2016-01-17 06:50:48'),
(518, 3, 'logout', 'logout', NULL, NULL, '2016-01-17 20:38:42'),
(519, 3, 'logout', 'logout', NULL, NULL, '2016-01-17 22:40:23'),
(520, 3, 'logout', 'logout', NULL, NULL, '2016-01-18 08:13:54'),
(521, 3, 'logout', 'logout', NULL, NULL, '2016-01-18 08:36:24'),
(522, 3, 'logout', 'logout', NULL, NULL, '2016-01-18 10:13:15'),
(523, 3, 'logout', 'logout', NULL, NULL, '2016-01-18 10:35:56'),
(524, 3, 'logout', 'logout', NULL, NULL, '2016-01-18 11:13:02'),
(525, 3, 'logout', 'logout', NULL, NULL, '2016-01-18 11:25:31'),
(526, 3, 'logout', 'logout', NULL, NULL, '2016-01-18 11:29:03'),
(527, 0, 'logout', 'logout', NULL, NULL, '2016-01-18 14:24:31'),
(528, 0, 'logout', 'logout', NULL, NULL, '2016-01-18 15:56:52'),
(529, 3, 'logout', 'logout', NULL, NULL, '2016-01-18 15:59:37'),
(530, 3, 'logout', 'logout', NULL, NULL, '2016-01-18 16:01:18'),
(531, 3, 'logout', 'logout', NULL, NULL, '2016-01-18 16:06:46'),
(532, 3, 'logout', 'logout', NULL, NULL, '2016-01-18 16:08:26'),
(533, 3, 'logout', 'logout', NULL, NULL, '2016-01-18 16:09:12'),
(534, 0, 'logout', 'logout', NULL, NULL, '2016-01-18 16:09:47'),
(535, 0, 'logout', 'logout', NULL, NULL, '2016-01-18 16:14:19'),
(536, 3, 'logout', 'logout', NULL, NULL, '2016-01-18 16:15:47'),
(537, 0, 'logout', 'logout', NULL, NULL, '2016-01-18 16:23:16'),
(538, 0, 'logout', 'logout', NULL, NULL, '2016-01-18 16:38:36'),
(539, 0, 'logout', 'logout', NULL, NULL, '2016-01-18 16:39:46'),
(540, 3, 'logout', 'logout', NULL, NULL, '2016-01-18 16:40:54'),
(541, 0, 'logout', 'logout', NULL, NULL, '2016-01-18 16:44:45'),
(542, 0, 'logout', 'logout', NULL, NULL, '2016-01-18 17:48:57'),
(543, 3, 'logout', 'logout', NULL, NULL, '2016-01-18 17:51:23'),
(544, 3, 'logout', 'logout', NULL, NULL, '2016-01-19 07:58:55'),
(545, 3, 'logout', 'logout', NULL, NULL, '2016-01-19 08:00:58'),
(546, 3, 'logout', 'logout', NULL, NULL, '2016-01-19 08:04:48'),
(547, 3, 'logout', 'logout', NULL, NULL, '2016-01-19 08:33:43'),
(548, 3, 'logout', 'logout', NULL, NULL, '2016-01-19 08:34:47'),
(549, 3, 'logout', 'logout', NULL, NULL, '2016-01-19 08:47:54'),
(550, 3, 'logout', 'logout', NULL, NULL, '2016-01-19 16:31:43'),
(551, 3, 'logout', 'logout', NULL, NULL, '2016-01-19 16:31:58'),
(552, 3, 'logout', 'logout', NULL, NULL, '2016-01-19 16:32:57'),
(553, 3, 'logout', 'logout', NULL, NULL, '2016-01-19 16:45:02'),
(554, 3, 'logout', 'logout', NULL, NULL, '2016-01-19 16:46:26'),
(555, 3, 'ganti_password', 'ganti_password', NULL, NULL, '2016-01-19 17:59:05'),
(556, 3, 'logout', 'logout', NULL, NULL, '2016-01-19 17:59:15'),
(557, 3, 'ganti_password', 'ganti_password', NULL, NULL, '2016-01-19 17:59:48'),
(558, 3, 'logout', 'logout', NULL, NULL, '2016-01-19 18:03:44'),
(559, 3, 'logout', 'logout', NULL, NULL, '2016-01-19 18:08:06'),
(560, 3, 'logout', 'logout', NULL, NULL, '2016-01-19 18:08:29'),
(561, 3, 'logout', 'logout', NULL, NULL, '2016-01-19 18:25:56'),
(562, 3, 'logout', 'logout', NULL, NULL, '2016-01-20 19:30:42'),
(563, 0, 'lupa_password', 'lupa_password', NULL, NULL, '2016-01-20 19:34:27'),
(564, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-01-20 19:40:51'),
(565, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-01-20 19:48:50'),
(566, 0, 'recovery_password', 'recovery_password', NULL, NULL, '2016-01-20 19:49:27'),
(567, 3, 'ganti_password', 'ganti_password', NULL, NULL, '2016-01-20 19:50:56'),
(568, 3, 'logout', 'logout', NULL, NULL, '2016-01-20 19:51:00'),
(569, 3, 'ganti_password', 'ganti_password', NULL, NULL, '2016-01-20 19:52:32'),
(570, 3, 'logout', 'logout', NULL, NULL, '2016-01-20 19:52:36'),
(571, 3, 'logout', 'logout', NULL, NULL, '2016-01-20 20:14:44'),
(572, 3, 'change_email_expert', 'change_email', NULL, NULL, '2016-01-20 20:26:04'),
(573, 0, 'change_email_expert', 'change_email', NULL, NULL, '2016-01-20 20:29:11'),
(574, 3, 'ganti_email', 'ganti_email', NULL, NULL, '2016-01-20 20:32:42'),
(575, 3, 'ganti_email', 'ganti_email', NULL, NULL, '2016-01-20 20:33:21'),
(576, 3, 'ganti_email', 'ganti_email', NULL, NULL, '2016-01-20 20:34:34'),
(577, 3, 'ganti_email', 'ganti_email', NULL, NULL, '2016-01-20 20:44:51'),
(578, 3, 'ganti_email', 'ganti_email', NULL, NULL, '2016-01-20 20:46:20'),
(579, 3, 'ganti_password', 'ganti_password', NULL, NULL, '2016-01-20 20:47:50'),
(580, 3, 'ganti_password', 'ganti_password', NULL, NULL, '2016-01-20 20:48:14'),
(581, 3, 'ganti_email', 'ganti_email', NULL, NULL, '2016-01-20 20:49:33'),
(582, 3, 'ganti_email', 'ganti_email', NULL, NULL, '2016-01-20 20:55:46'),
(583, 3, 'ganti_email', 'ganti_email', NULL, NULL, '2016-01-20 20:57:57'),
(584, 3, 'ganti_password', 'ganti_password', NULL, NULL, '2016-01-20 21:15:35'),
(585, 3, 'ganti_password', 'ganti_password', NULL, NULL, '2016-01-20 21:17:14'),
(586, 3, 'ganti_email', 'ganti_email', NULL, NULL, '2016-01-20 21:18:24'),
(587, 3, 'ganti_email', 'ganti_email', NULL, NULL, '2016-01-20 21:21:08'),
(588, 3, 'confirm_email', 'confirm_email', NULL, NULL, '2016-01-20 21:21:21'),
(589, 3, 'ganti_email', 'ganti_email', NULL, NULL, '2016-01-20 21:22:50'),
(590, 0, 'confirm_email', 'confirm_email', NULL, NULL, '2016-01-20 21:23:32'),
(591, 3, 'ganti_email', 'ganti_email', NULL, NULL, '2016-01-20 21:24:59'),
(592, 3, 'confirm_email', 'confirm_email', NULL, NULL, '2016-01-20 21:25:07'),
(593, 3, 'ganti_email', 'ganti_email', NULL, NULL, '2016-01-20 21:27:55'),
(594, 0, 'confirm_email', 'confirm_email', NULL, NULL, '2016-01-20 21:28:12'),
(595, 3, 'ganti_email', 'ganti_email', NULL, NULL, '2016-01-20 21:29:19'),
(596, 3, 'confirm_email', 'confirm_email', NULL, NULL, '2016-01-20 21:29:35'),
(597, 3, 'ganti_email', 'ganti_email', NULL, NULL, '2016-01-20 21:31:48'),
(598, 0, 'confirm_email', 'confirm_email', NULL, NULL, '2016-01-20 21:32:08'),
(599, 3, 'ganti_email', 'ganti_email', NULL, NULL, '2016-01-20 21:37:04'),
(600, 3, 'confirm_email', 'confirm_email', NULL, NULL, '2016-01-20 21:45:33'),
(601, 3, 'ganti_email', 'ganti_email', NULL, NULL, '2016-01-20 21:47:21'),
(602, 3, 'confirm_email', 'confirm_email', NULL, NULL, '2016-01-20 21:47:40'),
(603, 3, 'confirm_email', 'confirm_email', NULL, NULL, '2016-01-20 21:55:10'),
(604, 3, 'confirm_email', 'confirm_email', NULL, NULL, '2016-01-20 21:57:59'),
(605, 3, 'confirm_email', 'confirm_email', NULL, NULL, '2016-01-20 21:58:36'),
(606, 3, 'confirm_email', 'confirm_email', NULL, NULL, '2016-01-20 21:58:52'),
(607, 3, 'confirm_email', 'confirm_email', NULL, NULL, '2016-01-20 21:59:20'),
(608, 3, 'confirm_email', 'confirm_email', NULL, NULL, '2016-01-20 21:59:46'),
(609, 3, 'confirm_email', 'confirm_email', NULL, NULL, '2016-01-20 22:00:10'),
(610, 3, 'confirm_email', 'confirm_email', NULL, NULL, '2016-01-20 22:01:04'),
(611, 3, 'confirm_email', 'confirm_email', NULL, NULL, '2016-01-20 22:02:12'),
(612, 3, 'logout', 'logout', NULL, NULL, '2016-01-22 07:37:25'),
(613, 3, 'logout', 'logout', NULL, NULL, '2016-01-22 07:38:43'),
(614, 0, 'logout', 'logout', NULL, NULL, '2016-01-22 08:19:04'),
(615, 3, 'logout', 'logout', NULL, NULL, '2016-01-22 09:37:51'),
(616, 3, 'logout', 'logout', NULL, NULL, '2016-01-22 09:38:09'),
(617, 3, 'logout', 'logout', NULL, NULL, '2016-01-22 22:48:37'),
(618, 0, 'logout', 'logout', NULL, NULL, '2016-01-22 23:35:05'),
(619, 0, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-24 04:16:13'),
(620, 4, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-24 04:16:22'),
(621, 4, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-24 04:16:55'),
(622, 5, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-24 04:17:02'),
(623, 4, 'ganti_password', 'ganti_password', NULL, NULL, '2016-01-24 04:18:59'),
(624, 4, 'logout', 'logout', NULL, NULL, '2016-01-24 05:23:07'),
(625, 3, 'logout', 'logout', NULL, NULL, '2016-01-24 05:23:45'),
(626, 4, 'logout', 'logout', NULL, NULL, '2016-01-24 06:04:59'),
(627, 3, 'logout', 'logout', NULL, NULL, '2016-01-24 06:05:43'),
(628, 4, 'logout', 'logout', NULL, NULL, '2016-01-24 06:57:43'),
(629, 3, 'logout', 'logout', NULL, NULL, '2016-01-24 07:05:50'),
(630, 3, 'logout', 'logout', NULL, NULL, '2016-01-24 07:06:36'),
(631, 3, 'logout', 'logout', NULL, NULL, '2016-01-24 07:19:55'),
(632, 3, 'logout', 'logout', NULL, NULL, '2016-01-24 07:24:50'),
(633, 3, 'logout', 'logout', NULL, NULL, '2016-01-24 07:26:00'),
(634, 3, 'logout', 'logout', NULL, NULL, '2016-01-24 07:26:36'),
(635, 3, 'logout', 'logout', NULL, NULL, '2016-01-24 07:27:21'),
(636, 3, 'logout', 'logout', NULL, NULL, '2016-01-24 07:30:35'),
(637, 3, 'logout', 'logout', NULL, NULL, '2016-01-24 07:35:50'),
(638, 3, 'logout', 'logout', NULL, NULL, '2016-01-24 07:36:48'),
(639, 3, 'logout', 'logout', NULL, NULL, '2016-01-24 07:38:21'),
(640, 3, 'logout', 'logout', NULL, NULL, '2016-01-24 11:58:23'),
(641, 3, 'logout', 'logout', NULL, NULL, '2016-01-24 21:40:05'),
(642, 3, 'logout', 'logout', NULL, NULL, '2016-01-24 21:40:59'),
(643, 3, 'logout', 'logout', NULL, NULL, '2016-01-24 22:53:04'),
(644, 3, 'logout', 'logout', NULL, NULL, '2016-01-25 02:41:10'),
(645, 0, 'logout', 'logout', NULL, NULL, '2016-01-25 03:02:24'),
(646, 4, 'logout', 'logout', NULL, NULL, '2016-01-25 03:05:43'),
(647, 4, 'logout', 'logout', NULL, NULL, '2016-01-25 03:07:44'),
(648, 4, 'logout', 'logout', NULL, NULL, '2016-01-25 03:08:32'),
(649, 4, 'logout', 'logout', NULL, NULL, '2016-01-25 03:10:01'),
(650, 4, 'logout', 'logout', NULL, NULL, '2016-01-25 03:12:04'),
(651, 4, 'logout', 'logout', NULL, NULL, '2016-01-25 03:12:29'),
(652, 4, 'logout', 'logout', NULL, NULL, '2016-01-25 03:13:00'),
(653, 4, 'logout', 'logout', NULL, NULL, '2016-01-25 03:13:23'),
(654, 4, 'logout', 'logout', NULL, NULL, '2016-01-25 03:14:27'),
(655, 4, 'logout', 'logout', NULL, NULL, '2016-01-25 03:14:46'),
(656, 4, 'logout', 'logout', NULL, NULL, '2016-01-25 03:15:17'),
(657, 4, 'logout', 'logout', NULL, NULL, '2016-01-25 03:15:58'),
(658, 4, 'logout', 'logout', NULL, NULL, '2016-01-25 03:16:18'),
(659, 4, 'logout', 'logout', NULL, NULL, '2016-01-25 03:16:54'),
(660, 4, 'logout', 'logout', NULL, NULL, '2016-01-25 03:17:32'),
(661, 4, 'logout', 'logout', NULL, NULL, '2016-01-25 04:41:23'),
(662, 4, 'logout', 'logout', NULL, NULL, '2016-01-25 05:04:27'),
(663, 3, 'ganti_password', 'ganti_password', NULL, NULL, '2016-01-25 05:05:12'),
(664, 3, 'ganti_password', 'ganti_password', NULL, NULL, '2016-01-25 05:05:39'),
(665, 3, 'ganti_email', 'ganti_email', NULL, NULL, '2016-01-25 05:08:21'),
(666, 3, 'ganti_email', 'ganti_email', NULL, NULL, '2016-01-25 05:18:53'),
(667, 0, 'logout', 'logout', NULL, NULL, '2016-01-25 05:48:49'),
(668, 4, 'logout', 'logout', NULL, NULL, '2016-01-25 06:23:16'),
(669, 4, 'logout', 'logout', NULL, NULL, '2016-01-25 06:24:41'),
(670, 4, 'logout', 'logout', NULL, NULL, '2016-01-25 09:24:36'),
(671, 4, 'logout', 'logout', NULL, NULL, '2016-01-25 20:40:30'),
(672, 4, 'logout', 'logout', NULL, NULL, '2016-01-26 08:01:55'),
(673, 4, 'logout', 'logout', NULL, NULL, '2016-01-26 08:56:47'),
(674, 4, 'logout', 'logout', NULL, NULL, '2016-01-26 08:57:50'),
(675, 4, 'logout', 'logout', NULL, NULL, '2016-01-26 08:58:11'),
(676, 0, 'logout', 'logout', NULL, NULL, '2016-01-27 02:28:16'),
(677, 3, 'logout', 'logout', NULL, NULL, '2016-01-27 02:28:31'),
(678, 4, 'logout', 'logout', NULL, NULL, '2016-01-29 00:41:46'),
(679, 4, 'logout', 'logout', NULL, NULL, '2016-01-29 00:45:16'),
(680, 4, 'logout', 'logout', NULL, NULL, '2016-01-30 13:57:12'),
(681, 4, 'logout', 'logout', NULL, NULL, '2016-01-31 09:19:20'),
(682, 4, 'logout', 'logout', NULL, NULL, '2016-01-31 10:05:46'),
(683, 4, 'logout', 'logout', NULL, NULL, '2016-01-31 10:07:26'),
(684, 4, 'logout', 'logout', NULL, NULL, '2016-01-31 10:39:33'),
(685, 4, 'logout', 'logout', NULL, NULL, '2016-01-31 11:15:57');
INSERT INTO `log_aktifitas` (`id`, `id_user`, `controller`, `method`, `full_url`, `post_content`, `waktu`) VALUES
(686, 4, 'logout', 'logout', NULL, NULL, '2016-01-31 11:39:45'),
(687, 4, 'logout', 'logout', NULL, NULL, '2016-01-31 11:40:10'),
(688, 4, 'logout', 'logout', NULL, NULL, '2016-01-31 11:40:18'),
(689, 4, 'logout', 'logout', NULL, NULL, '2016-01-31 11:54:01'),
(690, 4, 'logout', 'logout', NULL, NULL, '2016-01-31 11:54:51'),
(691, 4, 'logout', 'logout', NULL, NULL, '2016-01-31 11:55:43'),
(692, 3, 'logout', 'logout', NULL, NULL, '2016-01-31 11:59:58'),
(693, 0, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-31 13:08:46'),
(694, 1, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-31 13:08:56'),
(695, 2, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-31 13:09:58'),
(696, 3, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-31 13:22:27'),
(697, 4, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-31 13:22:31'),
(698, 4, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-31 13:25:22'),
(699, 5, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-31 13:25:26'),
(700, 5, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-31 13:40:12'),
(701, 6, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-31 13:40:16'),
(702, 6, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-31 13:43:10'),
(703, 7, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-31 13:43:14'),
(704, 7, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-31 13:44:26'),
(705, 8, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-31 13:44:30'),
(706, 0, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-31 13:52:42'),
(707, 9, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-31 13:52:45'),
(708, 9, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-31 13:56:44'),
(709, 10, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-31 13:58:21'),
(710, 11, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-31 13:58:25'),
(711, 11, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-31 14:00:23'),
(712, 12, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-31 14:00:26'),
(713, 12, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-31 14:01:18'),
(714, 12, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-31 14:01:31'),
(715, 12, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-31 14:01:56'),
(716, 12, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-31 15:01:09'),
(717, 13, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-31 15:01:13'),
(718, 13, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-31 15:06:10'),
(719, 14, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-31 15:06:12'),
(720, 0, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-31 21:26:19'),
(721, 15, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-31 21:26:24'),
(722, 15, 'confirm_user', 'confirm', NULL, NULL, '2016-01-31 21:26:53'),
(723, 15, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-31 22:07:06'),
(724, 16, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-31 22:07:11'),
(725, 16, 'confirm_user', 'confirm', NULL, NULL, '2016-01-31 22:07:24'),
(726, 16, 'logout', 'logout', NULL, NULL, '2016-01-31 22:20:53'),
(727, 16, 'logout', 'logout', NULL, NULL, '2016-01-31 22:33:35'),
(728, 0, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-01-31 22:51:36'),
(729, 17, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-01-31 22:51:41'),
(730, 0, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-02-01 00:46:36'),
(731, 1, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-02-01 00:46:49'),
(732, 1, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-02-01 01:01:04'),
(733, 2, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-02-01 01:01:14'),
(734, 2, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-02-01 01:01:59'),
(735, 3, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-02-01 01:02:06'),
(736, 3, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-02-01 01:03:23'),
(737, 4, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-02-01 01:05:39'),
(738, 5, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-02-01 01:05:48'),
(739, 5, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-02-01 01:06:10'),
(740, 6, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-02-01 01:06:13'),
(741, 6, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-02-01 01:32:00'),
(742, 7, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-02-01 01:32:04'),
(743, 7, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-02-01 01:33:50'),
(744, 7, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-02-01 01:34:01'),
(745, 0, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-02-01 02:02:54'),
(746, 8, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-02-01 02:02:58'),
(747, 8, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-02-01 02:07:35'),
(748, 9, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-02-01 02:07:42'),
(749, 9, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-02-01 02:08:59'),
(750, 10, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-02-01 02:09:04'),
(751, 10, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-02-01 02:34:43'),
(752, 11, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-02-01 02:34:47'),
(753, 11, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-02-01 02:40:51'),
(754, 12, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-02-01 02:40:56'),
(755, 12, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-02-01 03:03:48'),
(756, 13, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-02-01 03:04:49'),
(757, 13, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-02-01 03:08:44'),
(758, 14, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-02-01 03:08:46'),
(759, 14, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-02-01 03:12:52'),
(760, 15, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-02-01 03:12:52'),
(761, 15, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-02-01 04:03:04'),
(762, 16, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-02-01 04:03:10'),
(763, 16, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-02-01 04:04:37'),
(764, 17, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-02-01 04:05:39'),
(765, 17, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-02-01 04:06:48'),
(766, 18, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-02-01 04:07:50'),
(767, 18, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-02-01 04:32:15'),
(768, 19, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-02-01 04:33:16'),
(769, 19, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-02-01 04:35:10'),
(770, 20, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-02-01 04:35:14'),
(771, 20, 'confirm_user', 'confirm', NULL, NULL, '2016-02-01 04:36:23'),
(772, 20, 'logout', 'logout', NULL, NULL, '2016-02-01 04:39:17'),
(773, 0, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-02-01 04:58:28'),
(774, 21, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-02-01 04:58:32'),
(775, 21, 'confirm_user', 'confirm', NULL, NULL, '2016-02-01 04:58:48'),
(776, 21, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-02-01 05:05:40'),
(777, 22, 'logout', 'logout', NULL, NULL, '2016-02-01 05:06:27'),
(778, 0, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-02-01 05:06:52'),
(779, 23, 'logout', 'logout', NULL, NULL, '2016-02-01 05:07:01'),
(780, 0, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-02-01 05:19:53'),
(781, 24, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-02-01 05:19:56'),
(782, 24, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-02-01 05:20:22'),
(783, 25, 'logout', 'logout', NULL, NULL, '2016-02-01 05:24:45'),
(784, 0, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-02-01 05:26:08'),
(785, 26, 'logout', 'logout', NULL, NULL, '2016-02-01 05:34:22'),
(786, 0, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-02-01 05:57:59'),
(787, 1, 'logout', 'logout', NULL, NULL, '2016-02-01 08:35:32'),
(788, 0, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-02-01 08:37:28'),
(789, 2, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-02-01 08:37:30'),
(790, 2, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-02-01 09:39:12'),
(791, 1, 'logout', 'logout', NULL, NULL, '2016-02-01 09:41:44'),
(792, 1, 'logout', 'logout', NULL, NULL, '2016-02-01 09:52:16'),
(793, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 09:55:57'),
(794, 1, 'logout', 'logout', NULL, NULL, '2016-02-01 10:13:20'),
(795, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 10:13:30'),
(796, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 10:14:46'),
(797, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 10:21:00'),
(798, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 10:25:46'),
(799, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 10:34:20'),
(800, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 10:36:53'),
(801, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 10:37:49'),
(802, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 10:51:01'),
(803, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 10:57:05'),
(804, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 11:02:44'),
(805, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 11:04:15'),
(806, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 11:09:52'),
(807, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 11:56:32'),
(808, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 11:56:57'),
(809, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 11:57:22'),
(810, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 11:57:38'),
(811, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 11:57:42'),
(812, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 11:59:12'),
(813, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 12:09:15'),
(814, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 12:18:43'),
(815, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 12:19:17'),
(816, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 12:56:13'),
(817, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 12:57:06'),
(818, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 12:58:44'),
(819, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 13:02:22'),
(820, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 13:04:17'),
(821, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 13:05:38'),
(822, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 13:06:25'),
(823, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 13:09:59'),
(824, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 13:10:45'),
(825, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 13:11:39'),
(826, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 13:12:23'),
(827, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 13:15:10'),
(828, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 13:16:44'),
(829, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 13:25:47'),
(830, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 13:26:55'),
(831, 0, 'forgot_password', 'forgot_password', NULL, NULL, '2016-02-01 14:49:21'),
(832, 1, 'logout', 'logout', NULL, NULL, '2016-02-03 00:43:34'),
(833, 1, 'logout', 'logout', NULL, NULL, '2016-02-03 02:44:03'),
(834, 1, 'logout', 'logout', NULL, NULL, '2016-02-03 07:51:48'),
(835, 1, 'logout', 'logout', NULL, NULL, '2016-02-03 07:53:49'),
(836, 1, 'logout', 'logout', NULL, NULL, '2016-02-03 10:17:13'),
(837, 0, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-02-03 10:18:01'),
(838, 2, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-02-03 10:18:06'),
(839, 2, 'pendaftaran_user', 'pendaftaran_user', NULL, NULL, '2016-02-03 10:18:58'),
(840, 3, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-02-03 10:19:01'),
(841, 1, 'logout', 'logout', NULL, NULL, '2016-02-03 10:48:52'),
(842, 1, 'logout', 'logout', NULL, NULL, '2016-02-03 11:45:24'),
(843, 1, 'logout', 'logout', NULL, NULL, '2016-02-03 11:52:21'),
(844, 1, 'logout', 'logout', NULL, NULL, '2016-02-03 11:56:14'),
(845, 1, 'logout', 'logout', NULL, NULL, '2016-02-03 11:58:44'),
(846, 1, 'logout', 'logout', NULL, NULL, '2016-02-03 11:59:34'),
(847, 1, 'logout', 'logout', NULL, NULL, '2016-02-03 12:01:17'),
(848, 2, 'logout', 'logout', NULL, NULL, '2016-02-03 12:02:13'),
(849, 1, 'logout', 'logout', NULL, NULL, '2016-02-03 12:02:54'),
(850, 2, 'logout', 'logout', NULL, NULL, '2016-02-03 12:11:56'),
(851, 1, 'logout', 'logout', NULL, NULL, '2016-02-03 12:19:44'),
(852, 1, 'logout', 'logout', NULL, NULL, '2016-02-03 13:06:01'),
(853, 2, 'logout', 'logout', NULL, NULL, '2016-02-03 13:37:13'),
(854, 1, 'logout', 'logout', NULL, NULL, '2016-02-03 13:57:47'),
(855, 1, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-02-03 16:16:40'),
(856, 1, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-02-03 16:18:41'),
(857, 1, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-02-03 16:20:47'),
(858, 1, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-02-03 16:21:24'),
(859, 1, 'wait_confirmation', 'wait_confirmation', NULL, NULL, '2016-02-03 16:22:18'),
(860, 1, 'logout', 'logout', NULL, NULL, '2016-02-03 16:50:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pertemanan`
--

CREATE TABLE IF NOT EXISTS `pertemanan` (
`id` int(11) NOT NULL,
  `userid1` varchar(100) NOT NULL,
  `userid2` varchar(100) NOT NULL,
  `role` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL,
  `nama` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
`id` int(11) NOT NULL,
  `grup` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`id`, `grup`, `item`, `value`) VALUES
(1, 'confirm_registration', 'sender_name', 'Notifikasi Akun Blubuk'),
(2, 'confirm_registration', 'sender_email', 'blubuk.blubuk.blubuk@gmail.com'),
(3, 'confirm_registration', 'subject', 'Konfirmasi Pendaftaran Akun Blubuk'),
(4, 'confirm_registration', 'message', 'Hallo Agan #name, Agan Sudah Menerima Email Konfirmasi Loh... Untuk Mengaktifkan Akun Agan.... Silahkan Klik #url\r\n'),
(5, 'confirm_change_email', 'sender_name', 'Notifikasi Akun Blubuk'),
(6, 'confirm_change_email', 'sender_email', 'blubuk.blubuk.blubuk@gmail.com'),
(7, 'confirm_change_email', 'subject', 'Konfirmasi Ganti Email Akun Blubuk'),
(8, 'confirm_change_email', 'message', 'Hallo Agan #name, Jika Agan Ingin Merubah Email Agan.... Silahkan Klik #url'),
(9, 'forgot_password', 'sender_name', 'Notifikasi Akun Blubuk'),
(10, 'forgot_password', 'sender_email', 'blubuk.blubuk.blubuk@gmail.com'),
(11, 'forgot_password', 'subject', 'Konfirmasi Lupa Password Akun Blubuk'),
(12, 'forgot_password', 'message', 'Lupa Password Ya??? Untuk Merubah Password Akun Agan.... Silahkan Klik #url');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE IF NOT EXISTS `status` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `foto_user` text NOT NULL,
  `isi` text NOT NULL,
  `foto` text NOT NULL,
  `waktu` datetime NOT NULL,
  `status` set('public','teman','private') NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data untuk tabel `status`
--

INSERT INTO `status` (`id`, `user_id`, `email`, `name`, `foto_user`, `isi`, `foto`, `waktu`, `status`) VALUES
(1, 1, 'wira_uk@yahoo.com', 'Wirahman', '0', 'safasfas', '1454294366.', '2016-02-01 09:39:26', 'public'),
(2, 1, 'wira_uk@yahoo.com', 'Wirahman', 'no_profil.jpg', 'asfasfsa', '1454469231.', '2016-02-03 10:13:51', 'public'),
(3, 1, 'wira_uk@yahoo.com', 'Wirahman', '1454475555_DSC_02081.JPG', 'safafassa', '1454494665.', '2016-02-03 05:17:45', 'public'),
(4, 1, 'wira_uk@yahoo.com', 'Wirahman', '1454475555_DSC_02081.JPG', 'asfsasfa', '1454494669.', '2016-02-03 05:17:49', 'public'),
(5, 1, 'wira_uk@yahoo.com', 'Wirahman', '1454475555_DSC_02081.JPG', 'asfafsa', '1454494673.', '2016-02-03 05:17:53', 'public'),
(6, 1, 'wira_uk@yahoo.com', 'Wirahman', '1454475555_DSC_02081.JPG', 'safasfsa', '1454495179.', '2016-02-03 05:26:19', 'public'),
(7, 1, 'wira_uk@yahoo.com', 'Wirahman', '1454475555_DSC_02081.JPG', 'safasfsafsa', '1454497144.', '2016-02-03 05:59:04', 'public'),
(8, 1, 'wira_uk@yahoo.com', 'Wirahman', '1454475555_DSC_02081.JPG', 'isi update', '1454501972.jpg', '2016-02-03 07:19:32', 'public');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `name` varchar(225) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `foto_profil` text NOT NULL,
  `id_role` int(11) DEFAULT NULL,
  `status` set('PENDING','REGISTERED','ACTIVE','BANNED') DEFAULT NULL,
  `last_login_datetime` datetime DEFAULT NULL,
  `last_login_ip` varchar(16) DEFAULT NULL,
  `registration_datetime` datetime DEFAULT NULL,
  `registration_ip` varchar(16) DEFAULT NULL,
  `login_status` set('ON','OFF') DEFAULT NULL,
  `tambah_teman` int(100) NOT NULL,
  `terima_teman` int(100) NOT NULL,
  `teman` int(100) NOT NULL,
  `block_teman` int(100) NOT NULL,
  `diblock_teman` int(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `password`, `foto_profil`, `id_role`, `status`, `last_login_datetime`, `last_login_ip`, `registration_datetime`, `registration_ip`, `login_status`, `tambah_teman`, `terima_teman`, `teman`, `block_teman`, `diblock_teman`) VALUES
(1, 'wira_uk@yahoo.com', 'Wirahman', 'fdaa51170c3a7009430ace1b585fe94a', '1454475555_DSC_02081.JPG', 3, 'REGISTERED', '2016-02-03 18:48:25', '0.0.0.0', '2016-02-01 09:39:12', '0.0.0.0', 'ON', 0, 0, 0, 0, 0),
(2, 'wirahman.wirahman@yahoo.co.id', 'Wirahman', 'fe73b5597171e9b96ce19cfe62ea5135', 'no_profil.jpg', 3, 'REGISTERED', '2016-02-03 13:06:06', '0.0.0.0', '2016-02-03 10:18:01', '0.0.0.0', 'OFF', 0, 0, 0, 0, 0),
(3, 'wirahmanrkslankers@yahoo.com', 'Wirahman', '8fff900a67e3ef9130de0ae251adb1e4', 'no_profil.jpg', 3, 'REGISTERED', NULL, NULL, '2016-02-03 10:18:57', '0.0.0.0', NULL, 0, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agama`
--
ALTER TABLE `agama`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `biografi`
--
ALTER TABLE `biografi`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
 ADD PRIMARY KEY (`session_id`), ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `forum`
--
ALTER TABLE `forum`
 ADD PRIMARY KEY (`id_forum`);

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komentar_forum`
--
ALTER TABLE `komentar_forum`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komentar_status`
--
ALTER TABLE `komentar_status`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_aktifitas`
--
ALTER TABLE `log_aktifitas`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pertemanan`
--
ALTER TABLE `pertemanan`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agama`
--
ALTER TABLE `agama`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `biografi`
--
ALTER TABLE `biografi`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `forum`
--
ALTER TABLE `forum`
MODIFY `id_forum` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `komentar_forum`
--
ALTER TABLE `komentar_forum`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `komentar_status`
--
ALTER TABLE `komentar_status`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `log_aktifitas`
--
ALTER TABLE `log_aktifitas`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=861;
--
-- AUTO_INCREMENT for table `pertemanan`
--
ALTER TABLE `pertemanan`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
