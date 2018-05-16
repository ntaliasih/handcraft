-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2018 at 02:15 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kerajinandb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(2) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(100, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(101, 'lili', '777bbb7869ae8193249f8ff7d3e59afe');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kd_barang` char(5) NOT NULL,
  `nm_barang` varchar(100) NOT NULL,
  `harga_modal` int(12) NOT NULL,
  `harga_jual` int(12) NOT NULL,
  `stok` int(4) NOT NULL,
  `keterangan` text NOT NULL,
  `file_gambar` varchar(100) NOT NULL,
  `kd_kategori` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kd_barang`, `nm_barang`, `harga_modal`, `harga_jual`, `stok`, `keterangan`, `file_gambar`, `kd_kategori`) VALUES
('B0001', 'Batu Kecubung Teh', 50000, 150000, 2, '<p>batu yang diukir dengan tangan yang mempunyai corak warna seperti teh</p>', 'B0001.batu-kecubung-teh.jpg', 'K001'),
('B0002', 'Batu Panca Warna', 20000, 75000, 18, '<p>batu yang di ukir dengan tangan yang mempunyai corak berwarna warni</p>', 'B0002.panca-warna.jpg', 'K001'),
('B0003', 'Batu Bacan Flamea', 100000, 250000, 14, '<p>batu yang di ukir dengan tangan yg memilki warna yang indah</p>', 'B0003.bacan-flamea.jpg', 'K001'),
('B0004', 'Tas Batok', 50000, 100000, 24, '<p>tas yang terbuat dari batok kelapa dengan hiasan istimewa</p>', 'B0004.Tas-Batok1.jpg', 'K002'),
('B0005', 'Sandal Tarumpah', 25000, 35000, 6, '<p>sandal ini terbuat dari kayu alami yang di buat dengan karya sendiri</p>', 'B0005.Sandal-Tarumpah1.jpg', 'K003'),
('B0006', 'Sandal Kelom Geulis Black', 35000, 45000, 6, '<p>dibuat oleh karya seni buatan tangan</p>', 'B0006.Kelom-Geulis1.jpg', 'K003'),
('B0007', 'Sandal Kelom Geulis Biru', 40000, 50000, 6, '<p>terbuat dari karya para seniman</p>', 'B0007.Kelom-Geulis2.jpg', 'K003'),
('B0008', 'Topi Pandan', 25000, 30000, 5, '<p>topi ini terbuat dari daun pandan yang memiliki qualitas tinggi</p>', 'B0008.Topi-Pandan1.jpg', 'K004'),
('B0009', 'Topi Bambu', 25000, 35000, 5, '<p>topi ini terbuat dari bahan dasar bambu</p>', 'B0009.Topi-Bambu1.jpg', 'K004'),
('B0010', 'Payung Geulish Corak Bunga', 20000, 35000, 4, '<p>payung yang dibuat oleh karya seni tangan</p>', 'B0010.Payung-Geulis1.jpg', 'K005'),
('B0011', 'Sabuk Hitam', 15000, 25000, 14, '<p>sabuk yang dibuat dengan hasil karya tangan sendiri</p>', 'B0011.sabuk-hitam.jpg', 'K006'),
('B0012', 'Sabuk Hias', 10000, 30000, 6, '<p>sabuk yang dihiasi dengan pernak pernik</p>', 'B0012.sabuk-hias.jpg', 'K006'),
('B0013', 'Tas Dompet', 10000, 15000, 9, '<p>tas yang terbuat dari anyaman bambu dengan model menarik</p>', 'B0013.Clutch-Anyaman-Marun-Bunga-Ungu-Kecil-003.jpg', 'K002'),
('B0014', 'Tas Kelom', 15000, 45000, 6, '<p>tas dengen motif yang indah</p>', 'B0014.Tas-Kelom1.jpg', 'K002'),
('B0015', 'Tas Pandan', 35000, 150000, 7, '<p>tas yang terbuat dari daun pandan yang mempunyai warna dan motif yang cantik</p>', 'B0015.Tas-Pandan1.jpg', 'K002'),
('B0016', 'Payung Pink Motif', 15000, 30000, 4, '<p>payung yang dibuat dengan karya tangan sendiri</p>', 'B0016.Payung-Geulis2.jpg', 'K005'),
('B0017', 'Tempat Alat Tulis Unik', 5000, 15000, 6, '<p>tempat pena dengan motif kerikil</p>', 'B0017.2014040117500269010.jpg', 'K008'),
('B0018', 'Tempat Alat Tulis Kucing', 13000, 25000, 6, '<p>tempat alat tulis yang bertema kucing dibuat dengan karya tangan sendiri</p>', 'B0018.Kerajinan-Tangan-dari-Barang-Bekas---Botol-Plastik-Bekas-00.jpg', 'K008'),
('B0019', 'Tempat Alat Tulis Kayu', 9000, 20000, 8, '<p>tempat alat tulis yang bertema kan kayu</p>', 'B0019.tempat-pensil-kerajinan-tangan-dari-kulit-jagung.jpg', 'K008'),
('B0020', 'Lampu Tidur', 20000, 35000, 8, '<p>lampu tidur dengan motif cantik</p>', 'B0020.fjjf.jpg', 'K010'),
('B0021', 'Teko', 8000, 20000, 3, '<p>teko di buat dengan batok kelapa</p>', 'B0021.teko-hasil-kerajinan-tangan-dari-batok-kelapa.jpg', 'K011'),
('B0022', 'Piring Lidi', 14000, 20000, 6, '<p>piring atau alas yang terbuat dari lidi</p>', 'B0022.Piring-Lidi1.jpg', 'K007');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kd_kategori` char(4) NOT NULL,
  `nm_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kd_kategori`, `nm_kategori`) VALUES
('K001', 'Batu Akik HandCraft'),
('K002', 'Tas HandCraft'),
('K003', 'Sandal HandCraft'),
('K004', 'Topi HandCraft'),
('K005', 'Payung Handcraft'),
('K006', 'Sabuk handcraft'),
('K007', 'Alas handcraft'),
('K008', 'Tempat Alat Tulis Handcraft'),
('K010', 'lampu handcraft'),
('K011', 'pajangan handcraft');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `id` int(4) NOT NULL,
  `no_pemesanan` varchar(8) NOT NULL,
  `nm_pelanggan` varchar(100) DEFAULT NULL,
  `jumlah_transfer` int(12) NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfirmasi`
--

INSERT INTO `konfirmasi` (`id`, `no_pemesanan`, `nm_pelanggan`, `jumlah_transfer`, `keterangan`, `tanggal`) VALUES
(1, 'PS000001', 'Lisa', 116000, 'sudah transfer', '2018-05-16');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `kd_pelanggan` char(6) NOT NULL,
  `nm_pelanggan` varchar(100) NOT NULL,
  `kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `tgl_daftar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`kd_pelanggan`, `nm_pelanggan`, `kelamin`, `email`, `no_telepon`, `username`, `password`, `tgl_daftar`) VALUES
('P00001', 'Lisa', 'Perempuan', 'lisa@gmail.com', '08123456789', 'lisa', 'ed14f4a4d7ecddb6dae8e54900300b1e', '2018-05-16');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `no_pemesanan` char(8) NOT NULL,
  `kd_pelanggan` char(6) DEFAULT NULL,
  `tgl_pemesanan` date NOT NULL DEFAULT '0000-00-00',
  `nama_penerima` varchar(60) NOT NULL,
  `alamat_lengkap` varchar(200) NOT NULL,
  `kd_provinsi` char(3) DEFAULT NULL,
  `kota` varchar(100) NOT NULL,
  `kode_pos` varchar(6) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `status_bayar` enum('Pesan','Lunas','Batal') NOT NULL DEFAULT 'Pesan'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`no_pemesanan`, `kd_pelanggan`, `tgl_pemesanan`, `nama_penerima`, `alamat_lengkap`, `kd_provinsi`, `kota`, `kode_pos`, `no_telepon`, `status_bayar`) VALUES
('PS000001', 'P00001', '2018-05-16', 'Lisa', 'Jl Bengawan No 1212', 'P06', 'Jawa Barat', '40414', '08123456789', 'Pesan');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan_item`
--

CREATE TABLE `pemesanan_item` (
  `id` int(4) NOT NULL,
  `no_pemesanan` char(8) DEFAULT NULL,
  `kd_barang` char(5) DEFAULT NULL,
  `jumlah` int(3) NOT NULL DEFAULT '1',
  `harga` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan_item`
--

INSERT INTO `pemesanan_item` (`id`, `no_pemesanan`, `kd_barang`, `jumlah`, `harga`) VALUES
(1, 'PS000001', 'B0004', 1, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `kd_provinsi` char(3) NOT NULL,
  `nm_provinsi` varchar(100) NOT NULL,
  `biaya_kirim` int(12) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`kd_provinsi`, `nm_provinsi`, `biaya_kirim`) VALUES
('P01', 'DKI Jakarta', 10000),
('P02', 'Padang', 20000),
('P03', 'Lampung', 25000),
('P04', 'Papua', 150000),
('P05', 'aceh', 30000),
('P06', 'Bandung', 15000),
('P07', 'bogor', 10000),
('P08', 'jambi', 25000),
('P09', 'purwakarta', 15000),
('P10', 'malang', 30000),
('P11', 'Pare', 25000),
('P12', 'Pekan Baru', 35000),
('P13', 'medan', 40000),
('P14', 'Majalengka', 10000),
('P15', 'Bangka belitung', 60000),
('P16', 'makasar', 30000),
('P17', 'pariaman', 20000),
('P18', 'sumedang', 12000),
('P19', 'Balik papan', 30000),
('P20', 'denpasar', 25000),
('P21', 'bekasi', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `tmp_keranjang`
--

CREATE TABLE `tmp_keranjang` (
  `id` int(5) NOT NULL,
  `kd_barang` char(5) NOT NULL,
  `harga` int(12) NOT NULL,
  `jumlah` int(3) NOT NULL DEFAULT '0',
  `tanggal` date NOT NULL DEFAULT '0000-00-00',
  `kd_pelanggan` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kd_barang`),
  ADD KEY `kd_kategori` (`kd_kategori`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kd_kategori`);

--
-- Indexes for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`kd_pelanggan`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`no_pemesanan`),
  ADD KEY `kd_pelanggan` (`kd_pelanggan`),
  ADD KEY `kd_provinsi` (`kd_provinsi`);

--
-- Indexes for table `pemesanan_item`
--
ALTER TABLE `pemesanan_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kd_barang` (`kd_barang`),
  ADD KEY `no_pemesanan` (`no_pemesanan`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`kd_provinsi`);

--
-- Indexes for table `tmp_keranjang`
--
ALTER TABLE `tmp_keranjang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pemesanan_item`
--
ALTER TABLE `pemesanan_item`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tmp_keranjang`
--
ALTER TABLE `tmp_keranjang`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `kd_kategori` FOREIGN KEY (`kd_kategori`) REFERENCES `kategori` (`kd_kategori`);

--
-- Constraints for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `kd_pelanggan` FOREIGN KEY (`kd_pelanggan`) REFERENCES `pelanggan` (`kd_pelanggan`),
  ADD CONSTRAINT `kd_provinsi` FOREIGN KEY (`kd_provinsi`) REFERENCES `provinsi` (`kd_provinsi`);

--
-- Constraints for table `pemesanan_item`
--
ALTER TABLE `pemesanan_item`
  ADD CONSTRAINT `kd_barang` FOREIGN KEY (`kd_barang`) REFERENCES `barang` (`kd_barang`),
  ADD CONSTRAINT `no_pemesanan` FOREIGN KEY (`no_pemesanan`) REFERENCES `pemesanan` (`no_pemesanan`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
