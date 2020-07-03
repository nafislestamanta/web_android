-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2020 at 07:32 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `ID_SUPIR` int(11) NOT NULL,
  `TUJUAN` varchar(30) NOT NULL,
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

INSERT INTO `tb_detail_transaksi` (`ID_DETAIL_TRANSAKSI`, `KODE_TRANSAKSI`, `ID_MOBIL`, `ID_SUPIR`, `TUJUAN`, `TGL_SEWA`, `TGL_AKHIR_PENYEWAAN`, `TGL_PENGEMBALIAN`, `HARGA_MOBIL`, `DENDA`, `TOTAL`, `STATUS_MOBIL`, `STATUS`) VALUES
(47, 'TRN-20200520220545-5', 5, 0, '', '2020-05-21 03:22:00', '2020-05-22 03:22:00', NULL, '250000', NULL, '250000', 1, 0),
(48, 'TRN-20200624050656-6', 7, 0, '', '2020-06-24 04:39:00', '2020-06-27 04:39:00', NULL, '500000', NULL, '1500000', 1, 1),
(49, 'TRN-20200628070631-7', 5, 0, '', '2020-06-28 12:07:00', '2020-06-30 12:07:00', '2020-06-28 12:15:44', '250000', '0', '500000', 2, 3),
(50, 'TRN-20200702140730-8', 5, 0, '', '2020-07-02 19:11:00', '2020-07-03 19:11:00', '2020-07-03 00:08:12', '250000', '0', '250000', 2, 3),
(51, 'TRN-20200702190743-9', 5, 0, '', '2020-07-03 00:06:00', '2020-07-04 00:06:00', '2020-07-03 10:23:00', '250000', '0', '250000', 2, 3),
(52, 'TRN-20200702190722-10', 8, 0, '', '2020-07-03 18:32:00', '2020-07-06 18:32:00', NULL, '500000', NULL, '1500000', 1, 1),
(53, 'TRN-20200703050720-11', 5, 0, '', '2020-07-03 10:27:00', '2020-07-04 10:27:00', '2020-07-03 10:28:30', '250000', '0', '250000', 2, 3),
(54, 'TRN-20200703060744-12', 8, 0, '', '2020-07-03 11:59:00', '2020-07-04 11:59:00', NULL, '800000', NULL, '800000', 1, 1);

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
(2, 3),
(5, 3),
(7, 3),
(8, 3),
(9, 3);

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
(19, 5, '20180202163910.jpg'),
(46, 1, '20200703064106.jpg'),
(47, 2, '20200703064604.jpg'),
(48, 3, '20200703064731.jpg'),
(49, 4, '20200703064851.jpg'),
(50, 7, '20200703065153.jpg'),
(51, 8, '20200703065257.jpg'),
(52, 9, '20200703065403.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_history_supir`
--

CREATE TABLE `tb_history_supir` (
  `ID_HISTORY` int(11) NOT NULL,
  `ID_SUPIR` int(11) NOT NULL,
  `TGL_SEWA` date NOT NULL,
  `TUJUAN` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, 'Avanza', 'Toyota', 'Mobil Toyota Avanza adalah salah satu mobil laris di Indonesia karena cocok untuk berbagai keperluan, seperti perjalanan keluarga maupun bisnis. Tidak hanya dari sisi penjualan, Toyota Avanza juga menjadi salah satu mobil favorit dalam hl persewaan mobil. Selain irit bahan bakar, Toyota Avanza turut memiliki kapasitas penumpang yang besar.', '2017', 7, '275000', 'merah', 2, 'p 3756 rp', 0, 0, '2020-07-03 06:41:06'),
(2, 'Xenia', 'Daihatsu', 'Daihatsu Xenia adalah nama mobil jenis MPV yang dirancang dan diproduksi bersama oleh Astra Daihatsu Motor dan Toyota-Astra Motor. Mobil ini dipasarkan dengan 2 merek: Daihatsu Xenia dipasarkan oleh Astra Daihatsu Motor sedangkan Toyota Astra Motor memasarkannya dengan merek Toyota Avanza.', '2017', 4, '275000', 'abu-abu', 2, 'p 6745 OL', 0, 0, '2020-07-03 06:46:04'),
(3, 'Ayla', 'Daihatsu', 'Daihatsu Ayla adalah city ??car yang dirancang oleh Daihatsu dan diproduksi oleh Astra Daihatsu Motor di Indonesia. Ini terutama dikembangkan sebagai hatchback entry-level yang akan dipasarkan dan dijual di beberapa pasar berkembang.', '2018', 5, '250000', 'abu-abu', 1, 'p 7878 sq', 0, 0, '2020-07-03 06:47:31'),
(4, 'Jazz', 'Honda', 'Desain interior All New Honda Jazz dirancang khusus untuk pengalaman berkendara yang menakjubkan. Nikmati perpaduan kenyamanan dan keseruan dengan ruang kabin yang semakin luas dikelasnya. Desain All New Honda Jazz tampil lebih keren dan sporty sesuai dengan gaya Kamu yang cool. Garis bodi yang dinamis, headlight tajam dan bodi yang semakin sporty akan membuat semua orang terpukau.', '2018', 5, '300000', 'hitam', 1, 'p 2089 TY', 0, 0, '2020-07-03 06:48:51'),
(5, 'Agya', 'Toyota', 'Toyota Agya adalah mobil kota (city car) yang dirancang oleh Daihatsu dengan \"basic platform\" \"Daihatsu Mira e:s\" dan \"Toyota Pixis Epoch\" (Jepang) pada September 2011 kemudian dikembangkan kembali dan diproduksi di Indonesia untuk pasar domestik.', '2018', 6, '250000', 'putih', 1, 'p 6549 IY', 0, 0, '2020-07-03 06:49:58'),
(7, 'Ertiga', 'Suzuki', 'Suzuki Ertiga adalah mobil berjenis MPV yang diproduksi oleh Suzuki sejak tahun 2012. Nama Ertiga berasal dari bahasa Indonesia, yaitu gabungan dari: Er (dari huruf R) yang berarti Row (baris) dan Tiga yang berarti angka 3, berarti mobil yang memiliki 3 baris pada interiornya dengan berkapasitas 7 orang penumpang dewasa/7-seater seperti MPV (Multi Purpose Vehicle).', '2018', 9, '300000', 'hitam', 2, 'p 7854 NM', 0, 0, '2020-07-03 06:51:53'),
(8, 'crv', 'Honda', 'Honda CR-V adalah sebuah SUV buatan pabrikan otomotif Jepang Honda sejak 1996. CR-V tersedia dalam penggerak roda depan dan penggerak empat roda, meskipun di beberapa negara hanya tersedia penggerak empat roda saja, seperti di Inggris dan Australia.', '2019', 7, '800000', 'hitam', 2, 'p 0007 PO', 1, 0, '2020-07-03 06:52:57'),
(9, 'xpander', 'mitsubishi', 'Mitsubishi Xpander adalah sebuah MPV 7 penumpang yang dirancang dan diproduksi di Indonesia oleh Mitsubishi Motors. Mobil ini pertama kali dimunculkan di situs web Mitsubishi Motors pada tanggal 17 Juli 2017.', '2017', 7, '700000', 'hitam', 2, 'p 1256 HT', 0, 0, '2020-07-03 06:54:03');

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
  `ID_SUPIR` int(11) NOT NULL,
  `TUJUAN` varchar(30) NOT NULL,
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

INSERT INTO `tb_transaksi` (`KODE_TRANSAKSI`, `ID_USER`, `ID_SUPIR`, `TUJUAN`, `TGL_ORDER`, `TOTAL_PEMBAYARAN`, `TGL_PEMBAYARAN`, `BUKTI_PEMBAYARAN`, `STATUS_PEMBAYARAN`, `STATUS_TRANSAKSI`) VALUES
('TRN-20180202120259-0', 38, 0, '', '2018-02-02 12:02:59', '800000', '2018-02-02 18:55:56', NULL, 1, 3),
('TRN-20200430080453-1', 12, 0, '', '2020-04-30 08:04:53', '9999', '2020-04-30 13:24:08', NULL, 1, 3),
('TRN-20200502130546-3', 12, 0, '', '2020-05-02 13:05:46', '200000', '2020-05-02 18:49:21', NULL, 1, 3),
('TRN-20200507080548-3', 51, 0, '', '2020-05-07 08:05:48', '800000', '2020-05-07 13:03:07', NULL, 1, 1),
('TRN-20200514070524-4', 12, 0, '', '2020-05-14 07:05:24', '650000', NULL, NULL, 0, 0),
('TRN-20200520220545-5', 12, 0, '', '2020-05-20 22:05:45', '250000', NULL, NULL, 0, 0),
('TRN-20200624050656-6', 12, 0, '', '2020-06-24 05:06:56', '1500000', '2020-06-24 10:41:54', NULL, 1, 1),
('TRN-20200628070631-7', 12, 0, '', '2020-06-28 07:06:31', '500000', '2020-06-28 12:09:04', NULL, 1, 3),
('TRN-20200702140730-8', 68, 0, '', '2020-07-02 14:07:30', '250000', '2020-07-03 00:07:58', NULL, 1, 3),
('TRN-20200702190722-10', 73, 0, '', '2020-07-02 19:07:22', '1500000', '2020-07-03 00:51:33', NULL, 1, 1),
('TRN-20200702190743-9', 12, 0, '', '2020-07-02 19:07:43', '250000', '2020-07-03 10:22:25', NULL, 1, 3),
('TRN-20200703050720-11', 69, 0, '', '2020-07-03 05:07:20', '250000', '2020-07-03 10:28:04', NULL, 1, 3),
('TRN-20200703060744-12', 69, 0, '', '2020-07-03 06:07:44', '800000', '2020-07-03 11:59:55', NULL, 1, 1);

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
(38, 'admin', 'Administrator', '6362552527278', 'admin@gmail.com', '0857272737273', 'L', 'bandung', '21232f297a57a5a743894a0e4a801fc3', NULL, 1, '2018-02-02 12:31:47', 1, '2018-02-02 12:50:38', '2018-02-02 12:50:38'),
(51, 'althaf', 'althaf kun', '9494', 'althaf@gmail.com', '087654567883', 'L', 'Jember', 'ec6a6536ca304edf844d1d248a4f08dc', NULL, 1, '2020-05-05 07:21:30', 2, NULL, '2020-05-05 07:21:30'),
(68, 'lola', 'editor', '94876', 'loli@gmail.com', '0879756787656', 'L', 'jember', '2e99bf4e42962410038bc6fa4ce40d97', NULL, 1, '2020-07-02 02:08:30', 2, NULL, '2020-07-02 02:08:30'),
(69, 'lestamanta', 'nafislestamanta', '350919612346', 'napiskun@gmail.com', '0895359914312', 'L', 'jember', 'ec6a6536ca304edf844d1d248a4f08dc', NULL, 1, '2020-07-02 07:21:54', 2, NULL, '2020-07-02 07:21:54'),
(72, 'rosanti', 'titik rosanti', '350919431266', 'titikrosanti@gmail.com', '081246330726', 'P', 'nganjuk', '81dc9bdb52d04dc20036dbd8313ed055', NULL, 1, '2020-07-02 07:27:00', 2, NULL, '2020-07-02 07:27:00'),
(73, 'napis', 'nafis lestamanta', '350919434585', 'nafislestamanta@gmail.com', '0895359914312', 'L', 'jember', '81dc9bdb52d04dc20036dbd8313ed055', NULL, 1, '2020-07-02 07:28:23', 2, NULL, '2020-07-02 07:28:23');

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
  ADD KEY `FK_RELATIONSHIP_5` (`ID_MOBIL`),
  ADD KEY `ID_RIWAYAT_SUPIR` (`ID_SUPIR`);

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
-- Indexes for table `tb_history_supir`
--
ALTER TABLE `tb_history_supir`
  ADD PRIMARY KEY (`ID_HISTORY`);

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
  MODIFY `ID_DETAIL_TRANSAKSI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tb_fasilitas`
--
ALTER TABLE `tb_fasilitas`
  MODIFY `ID_FASILITAS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_gallery_mobil`
--
ALTER TABLE `tb_gallery_mobil`
  MODIFY `ID_GALLERY` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tb_history_supir`
--
ALTER TABLE `tb_history_supir`
  MODIFY `ID_HISTORY` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_mobil`
--
ALTER TABLE `tb_mobil`
  MODIFY `ID_MOBIL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_supir`
--
ALTER TABLE `tb_supir`
  MODIFY `ID_SUPIR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `ID_USER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

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
