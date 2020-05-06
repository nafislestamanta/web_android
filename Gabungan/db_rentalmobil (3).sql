-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2020 at 07:56 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rentalmobil`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `data_alamatuser`
-- (See below for the actual view)
--
CREATE TABLE `data_alamatuser` (
`ID_USER` int(11)
,`NAME` varchar(225)
,`NO_TELP` varchar(20)
,`ALAMAT` text
);

-- --------------------------------------------------------

--
-- Table structure for table `tb_denda`
--

CREATE TABLE `tb_denda` (
  `ID_DENDA` int(11) NOT NULL,
  `ID_DETAIL_TRANSAKSI` int(11) DEFAULT NULL,
  `JUMLAH_HARI` int(11) DEFAULT NULL,
  `TOTAL_DENDA` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_transaksi`
--

CREATE TABLE `tb_detail_transaksi` (
  `ID_DETAIL_TRANSAKSI` int(11) NOT NULL,
  `KODE_TRANSAKSI` varchar(125) DEFAULT NULL,
  `ID_MOBIL` int(11) DEFAULT NULL,
  `TGL_SEWA` datetime DEFAULT NULL,
  `TGL_AKHIR_PENYEWAAN` datetime DEFAULT NULL,
  `TGL_PENGEMBALIAN` datetime DEFAULT NULL,
  `HARGA_MOBIL` decimal(10,0) DEFAULT NULL,
  `DENDA` decimal(10,0) DEFAULT NULL,
  `TOTAL` decimal(10,0) DEFAULT NULL,
  `STATUS_MOBIL` int(11) DEFAULT NULL,
  `STATUS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_detail_transaksi`
--

INSERT INTO `tb_detail_transaksi` (`ID_DETAIL_TRANSAKSI`, `KODE_TRANSAKSI`, `ID_MOBIL`, `TGL_SEWA`, `TGL_AKHIR_PENYEWAAN`, `TGL_PENGEMBALIAN`, `HARGA_MOBIL`, `DENDA`, `TOTAL`, `STATUS_MOBIL`, `STATUS`) VALUES
(25, 'TRN-20180202120259-0', 10, '2018-02-02 11:51:00', '2018-02-03 11:51:00', '2018-02-02 18:57:30', '800000', '0', '800000', 2, 3),
(35, 'TRN-20200430080453-1', 37, '2020-04-30 13:23:00', '2020-05-01 13:23:00', '2020-04-30 13:24:56', '9999', '0', '9999', 2, 3),
(39, 'TRN-20200502130546-3', 6, '2020-05-02 12:48:00', '2020-05-03 12:48:00', '2020-05-02 18:49:53', '200000', '0', '200000', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_fasilitas`
--

CREATE TABLE `tb_fasilitas` (
  `ID_FASILITAS` int(11) NOT NULL,
  `FASILITAS` varchar(225) DEFAULT NULL,
  `KET_FASILITAS` text DEFAULT NULL,
  `BIAYA` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_fasilitas`
--

INSERT INTO `tb_fasilitas` (`ID_FASILITAS`, `FASILITAS`, `KET_FASILITAS`, `BIAYA`) VALUES
(3, 'Supir', 'Supirnya bebas', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_fasilitas_mobil`
--

CREATE TABLE `tb_fasilitas_mobil` (
  `ID_MOBIL` int(11) NOT NULL,
  `ID_FASILITAS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_fasilitas_mobil`
--

INSERT INTO `tb_fasilitas_mobil` (`ID_MOBIL`, `ID_FASILITAS`) VALUES
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(37, 3),
(44, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_gallery_mobil`
--

CREATE TABLE `tb_gallery_mobil` (
  `ID_GALLERY` int(11) NOT NULL,
  `ID_MOBIL` int(11) DEFAULT NULL,
  `IMAGE` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_gallery_mobil`
--

INSERT INTO `tb_gallery_mobil` (`ID_GALLERY`, `ID_MOBIL`, `IMAGE`) VALUES
(10, 7, '20180103162810.jpg'),
(11, 6, '20180103162819.jpg'),
(13, 8, '20180115063621.jpg'),
(14, 9, '20180115082005.jpg'),
(15, 10, '20180115082234.jpg'),
(16, 11, '20180115082546.jpg'),
(18, 12, '20180202163710.jpg'),
(19, 5, '20180202163910.jpg'),
(44, 44, '20200429043510.jpg'),
(45, 37, '20200430082127.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mobil`
--

CREATE TABLE `tb_mobil` (
  `ID_MOBIL` int(11) NOT NULL,
  `NAMA_MOBIL` varchar(225) DEFAULT NULL,
  `MERK_MOBIL` varchar(225) DEFAULT NULL,
  `DESKRIPSI_MOBIL` text DEFAULT NULL,
  `TAHUN_MOBIL` varchar(4) DEFAULT NULL,
  `KAPASITAS_MOBIL` int(11) DEFAULT NULL,
  `HARGA_MOBIL` decimal(10,0) DEFAULT NULL,
  `WARNA_MOBIL` varchar(50) DEFAULT NULL,
  `BENSIN_MOBIL` int(11) DEFAULT NULL,
  `PLAT_NO_MOBIL` varchar(25) DEFAULT NULL,
  `STATUS_SEWA` int(11) DEFAULT NULL,
  `STATUS_MOBIL` int(11) DEFAULT NULL,
  `CREATED_MOBIL` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mobil`
--

INSERT INTO `tb_mobil` (`ID_MOBIL`, `NAMA_MOBIL`, `MERK_MOBIL`, `DESKRIPSI_MOBIL`, `TAHUN_MOBIL`, `KAPASITAS_MOBIL`, `HARGA_MOBIL`, `WARNA_MOBIL`, `BENSIN_MOBIL`, `PLAT_NO_MOBIL`, `STATUS_SEWA`, `STATUS_MOBIL`, `CREATED_MOBIL`) VALUES
(5, 'Avanza Veloz New Editon', 'Toyota', 'Kota Bandung ialah ibu kota provinsi Jawa Barat di Indonesia. Pada zaman dahulu, kota ini dikenali sebagai Parijs van Java, iaitu \"Paris di Jawa\" dalam bahasa Belanda. Disebabkan lokasinya di dataran tinggi, Bandung terkenal kerana iklim yang sederhana dan oleh itu, telah menjadi salah satu destinasi pelancong yang popular. Bandung juga mempunyai banyak institusi pendidikan tinggi swasta, termasuk juga sebuah institusi pendidikan tinggi awam, yang menyebabkannya termasyhur sebagai salah satu kota pelajar di Indonesia.', '2017', 5, '250000', 'fff', 1, 'D 4414 TU', 0, 0, '2017-11-26 14:16:20'),
(6, 'Toyota Rush White', 'TOYOTA', 'Pengelolaan sampah yang optimal merupakan suatu tantang besar yang sekarang dihadapi oleh seluruh kota besar di Indonesia. Peningkatan jumlah penduduk yang semakin tinggi mengakibatkan jumlah timbulan sampah yang terus meningkat [1]. Sampah-sampah dari masyarakat akan dikumpulkan di Tempat Penampungan Sampah (TPS) sementara, yang kemudian akan dipantau volume sampahnya untuk kebutuhan informasi pihak petugas pengelola sampah pada daerah tersebut.  Volume sampah yang dihasilkan akan memberikan dampak pada jumlah hari kunjungan truk pengangkut sampah ke TPS sementara tersebut dan ritasi pada setiap harinya. Volume sampah menjadi pertimbangan pertama sebab sampah pada TPS yang volume sampahnya cukup banyak akan memberikan peluang yang lebih cepat dalam penyebaran bau dan kemungkinan bibit penyakit yang terkandung pada sampah [2]. Namun saat ini, pengangkutan sampah dari TPS ke TPS belum maksimal yang dikarenakan berbagai masalah, seperti jadwal pengangkutan sampah yang belum rinci, tidak tersedianya data volume sampah secara real-time, dan sebagainya.   Berdasarkan permasalahan di atas, ditawarkan sebuah solusi berupa sistem yang dapat dibangun yaitu Smart Trash Disposal Site System, sebuah sistem monitoring yang bertujuan memantau volume sampah di TPS secara near real-time dengan menggunakan sensor ultrasonik dan kamera. Data volume sampah yang didapatkan dari sensor ultrasonik dan kamera akan disajikan dalam bentuk statistik untuk pihak pengelola sampah. Dengan adanya Smart Trash Disposal Site Syste,, diharapkan dapat memudahkan pihak pengelola sampah untuk dapat melakukan pemantauan dan pengambilan keputusan atau kebijakan berdasarkan informasi hasil pemantauan yang diberikan', '2017', 10, '200000', 'MERAH', 1, 'D FGH17 D', 0, 0, '2017-11-27 07:30:46'),
(7, 'Lamborgini Really', 'Lamborgini', 'mobil termahal di dunia', '2015', 5, '500000', 'Hitam', 1, 'F 5034 UA', 0, 0, '2018-01-02 07:14:44'),
(8, 'Honda Jazz', 'Honda', 'mobil terbaru yang mantap', '2016', 5, '500000', 'Putih', 2, 'F 5044 UA', 0, 0, '2018-01-15 06:36:21'),
(9, 'Kijang Inova Black', 'Mitsubishi', 'kojang edisi terbaru', '2018', 8, '600000', 'Hitam', 2, 'F 5444 BU', 0, 0, '2018-01-15 08:20:05'),
(10, 'Honda Mobilio', 'Honda', 'keluaran terbaru dengan spek memuaskan', '2018', 6, '800000', 'Merah', 2, 'B 3435 JJ', 0, 0, '2018-01-15 08:22:34'),
(11, 'Nissan Sport F1', 'Nissan', 'kualitas terbaik', '2017', 6, '1000000', 'Biru', 2, 'G 4544 FF', 0, 0, '2018-01-15 08:25:46'),
(12, 'Pajero Sport', 'Mitsubishi', 'mobill keluaran terbaru', '2018', 10, '600000', 'Putih', 1, 'F 5444 BF', 0, 0, '2018-01-31 08:42:18'),
(37, 'toss', 'honda', 'dsfaklj', '1999', 5, '9999', 'hitam', 1, 'j0i3', 0, 0, '2020-04-28 20:55:18'),
(44, 'sdlkfj', 'jlkjsdlajl', 'jlkjfdlkjlk', '1233', 3, '55', 'sfklj', 1, 'dkjf', 0, 0, '2020-04-29 04:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `tb_supir`
--

CREATE TABLE `tb_supir` (
  `ID_SUPIR` int(11) NOT NULL,
  `NAMA` varchar(30) NOT NULL,
  `TELP` char(13) NOT NULL,
  `ALAMAT` varchar(50) NOT NULL,
  `STATUS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_supir`
--

INSERT INTO `tb_supir` (`ID_SUPIR`, `NAMA`, `TELP`, `ALAMAT`, `STATUS`) VALUES
(2, 'Nafis Hibatullah Lestamanta', '0895359914312', 'Probolinggo', 0),
(5, 'fahim', '089999', 'probolinggo', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `KODE_TRANSAKSI` varchar(125) NOT NULL,
  `ID_USER` int(11) DEFAULT NULL,
  `TGL_ORDER` datetime DEFAULT NULL,
  `TOTAL_PEMBAYARAN` decimal(10,0) DEFAULT NULL,
  `TGL_PEMBAYARAN` datetime DEFAULT NULL,
  `BUKTI_PEMBAYARAN` text DEFAULT NULL,
  `STATUS_PEMBAYARAN` int(11) DEFAULT NULL,
  `STATUS_TRANSAKSI` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`KODE_TRANSAKSI`, `ID_USER`, `TGL_ORDER`, `TOTAL_PEMBAYARAN`, `TGL_PEMBAYARAN`, `BUKTI_PEMBAYARAN`, `STATUS_PEMBAYARAN`, `STATUS_TRANSAKSI`) VALUES
('TRN-20180202120259-0', 38, '2018-02-02 12:02:59', '800000', '2018-02-02 18:55:56', NULL, 1, 3),
('TRN-20200430080453-1', 12, '2020-04-30 08:04:53', '9999', '2020-04-30 13:24:08', NULL, 1, 3),
('TRN-20200502130546-3', 12, '2020-05-02 13:05:46', '200000', '2020-05-02 18:49:21', NULL, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `ID_USER` int(11) NOT NULL,
  `USERNAME` varchar(225) DEFAULT NULL,
  `NAME` varchar(225) NOT NULL,
  `NIK` varchar(30) NOT NULL,
  `EMAIL` varchar(225) DEFAULT NULL,
  `NO_TELP` varchar(20) DEFAULT NULL,
  `JENIS_KELAMIN` char(1) DEFAULT NULL,
  `ALAMAT` text DEFAULT NULL,
  `PASSWORD` text DEFAULT NULL,
  `PHOTO` text DEFAULT NULL,
  `ACTIVATED` int(11) DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `GROUP_USER` int(11) DEFAULT NULL,
  `LAST_LOGIN` datetime DEFAULT NULL,
  `LAST_UPDATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`ID_USER`, `USERNAME`, `NAME`, `NIK`, `EMAIL`, `NO_TELP`, `JENIS_KELAMIN`, `ALAMAT`, `PASSWORD`, `PHOTO`, `ACTIVATED`, `CREATED`, `GROUP_USER`, `LAST_LOGIN`, `LAST_UPDATE`) VALUES
(12, 'user', 'User', '636382826326', 'user@gmail.com', '08574737373737', 'L', 'bandung', 'ee11cbb19052e40b07aac0ca060c23ee', '151757238620180202125306.jpg', 1, '2018-01-15 08:14:45', 2, NULL, '2018-02-02 12:53:06'),
(38, 'admin', 'Administrator', '6362552527278', 'admin@gmail.com', '0857272737273', 'L', 'bandung', '21232f297a57a5a743894a0e4a801fc3', '151757223820180202125038.jpg', 1, '2018-02-02 12:31:47', 1, '2018-02-02 12:50:38', '2018-02-02 12:50:38'),
(49, 'yeu', 'yeu', '123456789', 'jember@gmail.com', '08', 'L', 'jember', '81dc9bdb52d04dc20036dbd8313ed055', 'dsdas', 1, '2020-04-28 11:44:21', 2, '0000-00-00 00:00:00', '2020-04-28 11:44:21'),
(51, 'meong', 'meong', '9494', 'nshs@gmail.com', '9497', 'L', 'Jember', '81dc9bdb52d04dc20036dbd8313ed055', NULL, 1, '2020-05-05 07:21:30', 2, NULL, '2020-05-05 07:21:30'),
(64, 'tesbre', 'tesbre', '123', 'tesbre@gmail.com', '123', 'L', 'jember', '81dc9bdb52d04dc20036dbd8313ed055', NULL, 1, '2020-05-05 10:03:17', 2, NULL, '2020-05-05 10:03:17'),
(66, 'AdminKU', 'AdminKU', '', 'Admin@gmail.com', '0895359914312', 'L', 'lo', 'adb9b6600feb623b171256c01c8a6a3c', NULL, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure for view `data_alamatuser`
--
DROP TABLE IF EXISTS `data_alamatuser`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `data_alamatuser`  AS  select `tb_users`.`ID_USER` AS `ID_USER`,`tb_users`.`NAME` AS `NAME`,`tb_users`.`NO_TELP` AS `NO_TELP`,`tb_users`.`ALAMAT` AS `ALAMAT` from `tb_users` where `tb_users`.`ALAMAT` = 'bandung' ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_denda`
--
ALTER TABLE `tb_denda`
  ADD PRIMARY KEY (`ID_DENDA`),
  ADD KEY `FK_RELATIONSHIP_7` (`ID_DETAIL_TRANSAKSI`);

--
-- Indexes for table `tb_detail_transaksi`
--
ALTER TABLE `tb_detail_transaksi`
  ADD PRIMARY KEY (`ID_DETAIL_TRANSAKSI`),
  ADD KEY `FK_RELATIONSHIP_2` (`KODE_TRANSAKSI`),
  ADD KEY `FK_RELATIONSHIP_5` (`ID_MOBIL`);

--
-- Indexes for table `tb_fasilitas`
--
ALTER TABLE `tb_fasilitas`
  ADD PRIMARY KEY (`ID_FASILITAS`);

--
-- Indexes for table `tb_fasilitas_mobil`
--
ALTER TABLE `tb_fasilitas_mobil`
  ADD PRIMARY KEY (`ID_MOBIL`,`ID_FASILITAS`),
  ADD KEY `FK_RELATIONSHIP_4` (`ID_FASILITAS`);

--
-- Indexes for table `tb_gallery_mobil`
--
ALTER TABLE `tb_gallery_mobil`
  ADD PRIMARY KEY (`ID_GALLERY`),
  ADD KEY `FK_RELATIONSHIP_6` (`ID_MOBIL`);

--
-- Indexes for table `tb_mobil`
--
ALTER TABLE `tb_mobil`
  ADD PRIMARY KEY (`ID_MOBIL`);

--
-- Indexes for table `tb_supir`
--
ALTER TABLE `tb_supir`
  ADD PRIMARY KEY (`ID_SUPIR`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`KODE_TRANSAKSI`),
  ADD KEY `FK_RELATIONSHIP_1` (`ID_USER`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`ID_USER`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_denda`
--
ALTER TABLE `tb_denda`
  MODIFY `ID_DENDA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_detail_transaksi`
--
ALTER TABLE `tb_detail_transaksi`
  MODIFY `ID_DETAIL_TRANSAKSI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tb_fasilitas`
--
ALTER TABLE `tb_fasilitas`
  MODIFY `ID_FASILITAS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_gallery_mobil`
--
ALTER TABLE `tb_gallery_mobil`
  MODIFY `ID_GALLERY` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tb_mobil`
--
ALTER TABLE `tb_mobil`
  MODIFY `ID_MOBIL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tb_supir`
--
ALTER TABLE `tb_supir`
  MODIFY `ID_SUPIR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `ID_USER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_denda`
--
ALTER TABLE `tb_denda`
  ADD CONSTRAINT `FK_RELATIONSHIP_7` FOREIGN KEY (`ID_DETAIL_TRANSAKSI`) REFERENCES `tb_detail_transaksi` (`ID_DETAIL_TRANSAKSI`);

--
-- Constraints for table `tb_detail_transaksi`
--
ALTER TABLE `tb_detail_transaksi`
  ADD CONSTRAINT `FK_RELATIONSHIP_2` FOREIGN KEY (`KODE_TRANSAKSI`) REFERENCES `tb_transaksi` (`KODE_TRANSAKSI`),
  ADD CONSTRAINT `FK_RELATIONSHIP_5` FOREIGN KEY (`ID_MOBIL`) REFERENCES `tb_mobil` (`ID_MOBIL`);

--
-- Constraints for table `tb_fasilitas_mobil`
--
ALTER TABLE `tb_fasilitas_mobil`
  ADD CONSTRAINT `FK_RELATIONSHIP_3` FOREIGN KEY (`ID_MOBIL`) REFERENCES `tb_mobil` (`ID_MOBIL`),
  ADD CONSTRAINT `FK_RELATIONSHIP_4` FOREIGN KEY (`ID_FASILITAS`) REFERENCES `tb_fasilitas` (`ID_FASILITAS`);

--
-- Constraints for table `tb_gallery_mobil`
--
ALTER TABLE `tb_gallery_mobil`
  ADD CONSTRAINT `FK_RELATIONSHIP_6` FOREIGN KEY (`ID_MOBIL`) REFERENCES `tb_mobil` (`ID_MOBIL`);

--
-- Constraints for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD CONSTRAINT `FK_RELATIONSHIP_1` FOREIGN KEY (`ID_USER`) REFERENCES `tb_users` (`ID_USER`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
