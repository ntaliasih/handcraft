DROP TABLE IF EXISTS admin;

CREATE TABLE `admin` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;

INSERT INTO admin VALUES("94","fadhilah","21232f297a57a5a743894a0e4a801fc3");
INSERT INTO admin VALUES("97","dery","263673def5310cb8df5931af16047c80");


DROP TABLE IF EXISTS barang;

CREATE TABLE `barang` (
  `kd_barang` char(5) NOT NULL,
  `nm_barang` varchar(100) NOT NULL,
  `harga_modal` int(12) NOT NULL,
  `harga_jual` int(12) NOT NULL,
  `stok` int(4) NOT NULL,
  `keterangan` text NOT NULL,
  `file_gambar` varchar(100) NOT NULL,
  `kd_kategori` char(4) DEFAULT NULL,
  PRIMARY KEY (`kd_barang`),
  KEY `kd_kategori` (`kd_kategori`),
  CONSTRAINT `kd_kategori` FOREIGN KEY (`kd_kategori`) REFERENCES `kategori` (`kd_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO barang VALUES("B0001","Batu Kecubung Teh","50000","150000","5","<p>batu yang diukir dengan tangan yang mempunyai corak warna seperti teh</p>","B0001.batu-kecubung-teh.jpg","K001");
INSERT INTO barang VALUES("B0002","Batu Panca Warna","20000","75000","20","<p>batu yang di ukir dengan tangan yang mempunyai corak berwarna warni</p>","B0002.panca-warna.jpg","K001");
INSERT INTO barang VALUES("B0003","Batu Bacan Flamea","100000","250000","15","<p>batu yang di ukir dengan tangan yg memilki warna yang indah</p>","B0003.bacan-flamea.jpg","K001");
INSERT INTO barang VALUES("B0004","Tas Batok","50000","100000","25","<p>tas yang terbuat dari batok kelapa dengan hiasan istimewa</p>","B0004.Tas-Batok1.jpg","K002");


DROP TABLE IF EXISTS kategori;

CREATE TABLE `kategori` (
  `kd_kategori` char(4) NOT NULL,
  `nm_kategori` varchar(100) NOT NULL,
  PRIMARY KEY (`kd_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO kategori VALUES("K001","Batu Akik HandCraft");
INSERT INTO kategori VALUES("K002","Tas HandCraft");


DROP TABLE IF EXISTS konfirmasi;

CREATE TABLE `konfirmasi` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `no_pemesanan` varchar(8) NOT NULL,
  `nm_pelanggan` varchar(100) DEFAULT NULL,
  `jumlah_transfer` int(12) NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO konfirmasi VALUES("1","09231","Fadhilah Aditya chandra","50000","sudah dibayar pada tanggal 20-11-2015","2015-10-21");
INSERT INTO konfirmasi VALUES("2","124124","Dery Marzuki","60000","sudah di transfer pada tanggal 23-12-2015","2015-10-21");
INSERT INTO konfirmasi VALUES("3","124315","Yoga Eka Permana","25000","sudah di transfer pada tanggal 24-09-2015","2015-10-21");
INSERT INTO konfirmasi VALUES("4","PS000001","Fadhilah Aditya chandra","50000","sudah di transfer ","2015-12-31");


DROP TABLE IF EXISTS pelanggan;

CREATE TABLE `pelanggan` (
  `kd_pelanggan` char(6) NOT NULL,
  `nm_pelanggan` varchar(100) NOT NULL,
  `kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `tgl_daftar` date NOT NULL,
  PRIMARY KEY (`kd_pelanggan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO pelanggan VALUES("P00001","Fadhilah Aditya chandra","Laki-laki","fadhilah@yahoo.co.id","082174406902","fadhilah30","8b6bc5d8046c8466359d3ac43ce362ab","2015-10-17");


DROP TABLE IF EXISTS pemesanan;

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
  `status_bayar` enum('Pesan','Lunas','Batal') NOT NULL DEFAULT 'Pesan',
  PRIMARY KEY (`no_pemesanan`),
  KEY `kd_pelanggan` (`kd_pelanggan`),
  KEY `kd_provinsi` (`kd_provinsi`),
  CONSTRAINT `kd_pelanggan` FOREIGN KEY (`kd_pelanggan`) REFERENCES `pelanggan` (`kd_pelanggan`),
  CONSTRAINT `kd_provinsi` FOREIGN KEY (`kd_provinsi`) REFERENCES `provinsi` (`kd_provinsi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO pemesanan VALUES("PS000001","P00001","2015-12-31","Fadhilah Aditya chandra","juanda","P01","jakarta","14324","041094101394","Lunas");


DROP TABLE IF EXISTS pemesanan_item;

CREATE TABLE `pemesanan_item` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `no_pemesanan` char(8) DEFAULT NULL,
  `kd_barang` char(5) DEFAULT NULL,
  `jumlah` int(3) NOT NULL DEFAULT '1',
  `harga` int(12) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kd_barang` (`kd_barang`),
  KEY `no_pemesanan` (`no_pemesanan`),
  CONSTRAINT `kd_barang` FOREIGN KEY (`kd_barang`) REFERENCES `barang` (`kd_barang`),
  CONSTRAINT `no_pemesanan` FOREIGN KEY (`no_pemesanan`) REFERENCES `pemesanan` (`no_pemesanan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO pemesanan_item VALUES("1","PS000001","B0001","5","150000");


DROP TABLE IF EXISTS provinsi;

CREATE TABLE `provinsi` (
  `kd_provinsi` char(3) NOT NULL,
  `nm_provinsi` varchar(100) NOT NULL,
  `biaya_kirim` int(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kd_provinsi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO provinsi VALUES("P01","DKI Jakarta","10000");
INSERT INTO provinsi VALUES("P02","Padang","20000");
INSERT INTO provinsi VALUES("P03","Lampung","25000");
INSERT INTO provinsi VALUES("P04","Papua","150000");


DROP TABLE IF EXISTS tmp_keranjang;

CREATE TABLE `tmp_keranjang` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `kd_barang` char(5) NOT NULL,
  `harga` int(12) NOT NULL,
  `jumlah` int(3) NOT NULL DEFAULT '0',
  `tanggal` date NOT NULL DEFAULT '0000-00-00',
  `kd_pelanggan` char(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;



