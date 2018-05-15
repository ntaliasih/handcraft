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

INSERT INTO barang VALUES("B0001","Batu Kecubung Teh","50000","150000","3","<p>batu yang diukir dengan tangan yang mempunyai corak warna seperti teh</p>","B0001.batu-kecubung-teh.jpg","K001");
INSERT INTO barang VALUES("B0002","Batu Panca Warna","20000","75000","18","<p>batu yang di ukir dengan tangan yang mempunyai corak berwarna warni</p>","B0002.panca-warna.jpg","K001");
INSERT INTO barang VALUES("B0003","Batu Bacan Flamea","100000","250000","14","<p>batu yang di ukir dengan tangan yg memilki warna yang indah</p>","B0003.bacan-flamea.jpg","K001");
INSERT INTO barang VALUES("B0004","Tas Batok","50000","100000","24","<p>tas yang terbuat dari batok kelapa dengan hiasan istimewa</p>","B0004.Tas-Batok1.jpg","K002");
INSERT INTO barang VALUES("B0005","Sandal Tarumpah","25000","35000","6","<p>sandal ini terbuat dari kayu alami yang di buat dengan karya sendiri</p>","B0005.Sandal-Tarumpah1.jpg","K003");
INSERT INTO barang VALUES("B0006","Sandal Kelom Geulis Black","35000","45000","6","<p>dibuat oleh karya seni buatan tangan</p>","B0006.Kelom-Geulis1.jpg","K003");
INSERT INTO barang VALUES("B0007","Sandal Kelom Geulis Biru","40000","50000","6","<p>terbuat dari karya para seniman</p>","B0007.Kelom-Geulis2.jpg","K003");
INSERT INTO barang VALUES("B0008","Topi Pandan","25000","30000","5","<p>topi ini terbuat dari daun pandan yang memiliki qualitas tinggi</p>","B0008.Topi-Pandan1.jpg","K004");
INSERT INTO barang VALUES("B0009","Topi Bambu","25000","35000","5","<p>topi ini terbuat dari bahan dasar bambu</p>","B0009.Topi-Bambu1.jpg","K004");
INSERT INTO barang VALUES("B0010","Payung Geulish Corak Bunga","20000","35000","4","<p>payung yang dibuat oleh karya seni tangan</p>","B0010.Payung-Geulis1.jpg","K005");
INSERT INTO barang VALUES("B0011","Sabuk Hitam","15000","25000","14","<p>sabuk yang dibuat dengan hasil karya tangan sendiri</p>","B0011.sabuk-hitam.jpg","K006");
INSERT INTO barang VALUES("B0012","Sabuk Hias","10000","30000","6","<p>sabuk yang dihiasi dengan pernak pernik</p>","B0012.sabuk-hias.jpg","K006");
INSERT INTO barang VALUES("B0013","Tas Dompet","10000","15000","9","<p>tas yang terbuat dari anyaman bambu dengan model menarik</p>","B0013.Clutch-Anyaman-Marun-Bunga-Ungu-Kecil-003.jpg","K002");
INSERT INTO barang VALUES("B0014","Tas Kelom","15000","45000","6","<p>tas dengen motif yang indah</p>","B0014.Tas-Kelom1.jpg","K002");
INSERT INTO barang VALUES("B0015","Tas Pandan","35000","150000","7","<p>tas yang terbuat dari daun pandan yang mempunyai warna dan motif yang cantik</p>","B0015.Tas-Pandan1.jpg","K002");
INSERT INTO barang VALUES("B0016","Payung Pink Motif","15000","30000","4","<p>payung yang dibuat dengan karya tangan sendiri</p>","B0016.Payung-Geulis2.jpg","K005");
INSERT INTO barang VALUES("B0017","Tempat Alat Tulis Unik","5000","15000","6","<p>tempat pena dengan motif kerikil</p>","B0017.2014040117500269010.jpg","K008");
INSERT INTO barang VALUES("B0018","Tempat Alat Tulis Kucing","13000","25000","6","<p>tempat alat tulis yang bertema kucing dibuat dengan karya tangan sendiri</p>","B0018.Kerajinan-Tangan-dari-Barang-Bekas---Botol-Plastik-Bekas-00.jpg","K008");
INSERT INTO barang VALUES("B0019","Tempat Alat Tulis Kayu","9000","20000","8","<p>tempat alat tulis yang bertema kan kayu</p>","B0019.tempat-pensil-kerajinan-tangan-dari-kulit-jagung.jpg","K008");
INSERT INTO barang VALUES("B0020","Lampu Tidur","20000","35000","8","<p>lampu tidur dengan motif cantik</p>","B0020.fjjf.jpg","K010");
INSERT INTO barang VALUES("B0021","Teko","8000","20000","5","<p>teko di buat dengan batok kelapa</p>","B0021.teko-hasil-kerajinan-tangan-dari-batok-kelapa.jpg","K011");
INSERT INTO barang VALUES("B0022","Piring Lidi","14000","20000","6","<p>piring atau alas yang terbuat dari lidi</p>","B0022.Piring-Lidi1.jpg","K007");


DROP TABLE IF EXISTS kategori;

CREATE TABLE `kategori` (
  `kd_kategori` char(4) NOT NULL,
  `nm_kategori` varchar(100) NOT NULL,
  PRIMARY KEY (`kd_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO kategori VALUES("K001","Batu Akik HandCraft");
INSERT INTO kategori VALUES("K002","Tas HandCraft");
INSERT INTO kategori VALUES("K003","Sandal HandCraft");
INSERT INTO kategori VALUES("K004","Topi HandCraft");
INSERT INTO kategori VALUES("K005","Payung Handcraft");
INSERT INTO kategori VALUES("K006","Sabuk handcraft");
INSERT INTO kategori VALUES("K007","Alas handcraft");
INSERT INTO kategori VALUES("K008","Tempat Alat Tulis Handcraft");
INSERT INTO kategori VALUES("K010","lampu handcraft");
INSERT INTO kategori VALUES("K011","pajangan handcraft");


DROP TABLE IF EXISTS konfirmasi;

CREATE TABLE `konfirmasi` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `no_pemesanan` varchar(8) NOT NULL,
  `nm_pelanggan` varchar(100) DEFAULT NULL,
  `jumlah_transfer` int(12) NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

INSERT INTO konfirmasi VALUES("5","PS000015","juwita butar","525481","sudah ditransfer tanggal 12-01-2016","2016-01-12");
INSERT INTO konfirmasi VALUES("6","PS000014","dea anjani","135489","sudah ditransfer ke rekening","2016-01-12");
INSERT INTO konfirmasi VALUES("7","PS000013","Daniel Nduls","160909","punten saya udah transfer kang","2016-01-12");
INSERT INTO konfirmasi VALUES("8","PS000012","Kadank Berkamp","90658","bang aku udah transfer yaaa","2016-01-12");
INSERT INTO konfirmasi VALUES("9","PS000011","supardi","125114","mas saya sudah transfer hari ini tolong dicek","2016-01-12");
INSERT INTO konfirmasi VALUES("10","PS000010","David Mugnhi","135093","bos aku udah aku transfer tadi mohon di cek","2016-01-12");
INSERT INTO konfirmasi VALUES("11","PS000009","ucup sembiring","30311","mohon di proses kang sudah saya transfer","2016-01-12");
INSERT INTO konfirmasi VALUES("12","PS000006","Dery Marzuky","90189","broh proses yaa brooh udah ditransfer nie","2016-01-12");
INSERT INTO konfirmasi VALUES("13","PS000003","Yoga Eka Permana","160838","kang sudah ditransfer tadi maaf mohon disegerakan proses nya kang","2016-01-12");
INSERT INTO konfirmasi VALUES("14","PS000002","Fadhilah Aditya chandra","200958","awak tadi lah trasfer da tolong di pacapek ok","2016-01-12");
INSERT INTO konfirmasi VALUES("15","PS000016","Fadhilah Aditya chandra","110840","sudah transfer malam ini tolong dicek","2016-01-12");
INSERT INTO konfirmasi VALUES("16","PS000017","Yoga Eka Permana","450334","sudah ditransfer mohon dicek","2016-01-12");
INSERT INTO konfirmasi VALUES("17","PS000018","Dery Marzuky","145765","sudah di transfer mohon di setujui","2016-01-12");
INSERT INTO konfirmasi VALUES("18","PS000019","ucup sembiring","135412","sudah ditransfer ditunggu konfirmasinya","2016-01-12");
INSERT INTO konfirmasi VALUES("19","PS000020","David Mugnhi","195624","sudah di transfer mohon di lanjutkan","2016-01-12");
INSERT INTO konfirmasi VALUES("20","PS000021","supardi","135643","sudah ditransfer","2016-01-12");
INSERT INTO konfirmasi VALUES("21","PS000022","Kadank Berkamp","145346","sudah di transfer silahkan di cek","2016-01-12");
INSERT INTO konfirmasi VALUES("22","PS000023","Daniel Nduls","95623","sudah ditransfer","2016-01-12");
INSERT INTO konfirmasi VALUES("23","PS000024","juwita butar","130102","sudah di transfer ditunggu konfirmasinya","2016-01-12");
INSERT INTO konfirmasi VALUES("24","PS000025","dea anjani","225148","sudah di transfer mohon di cek","2016-01-12");


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
INSERT INTO pelanggan VALUES("P00002","Yoga Eka Permana","Laki-laki","yogasgituloh@yahoo.co.id","087723742600","Yogas21","938b4263f09b8b1dae8f027d06681ec9","2016-01-07");
INSERT INTO pelanggan VALUES("P00003","Dery Marzuky","Laki-laki","capayah@yahoo.com","081912937445","DeryCakep","827ccb0eea8a706c4c34a16891f84e7b","2016-01-12");
INSERT INTO pelanggan VALUES("P00004","ucup sembiring","Laki-laki","ucupgituloh@gmail.com","39839608608","ucupaja","a87ff679a2f3e71d9181a67b7542122c","2016-01-12");
INSERT INTO pelanggan VALUES("P00005","David Mugnhi","Laki-laki","Davidflying@gmail.com","08796787545332","david14","6074c6aa3488f3c2dddff2a7ca821aab","2016-01-12");
INSERT INTO pelanggan VALUES("P00006","supardi","Laki-laki","supardi@yahoo.co.id","8029309274","supardi","b59c67bf196a4758191e42f76670ceba","2016-01-12");
INSERT INTO pelanggan VALUES("P00007","Kadank Berkamp","Laki-laki","kadankbeh@yahoo.co.id","4745865364523","kadank","934b535800b1cba8f96a5d72f72f1611","2016-01-12");
INSERT INTO pelanggan VALUES("P00008","Daniel Nduls","Laki-laki","danielemoet@gmail.com","73754824235","nduls12","0c126bad97368942ca6b80be5d72ab63","2016-01-12");
INSERT INTO pelanggan VALUES("P00009","dea anjani","Perempuan","akudea@yahoo.co.id","42353465478","dea15","2be9bd7a3434f7038ca27d1918de58bd","2016-01-12");
INSERT INTO pelanggan VALUES("P00010","juwita butar","Perempuan","juwita@gmail.com","07786965654","juwita44","ea416ed0759d46a8de58f63a59077499","2016-01-12");


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

INSERT INTO pemesanan VALUES("PS000002","P00001","2016-01-07","Fadhilah Aditya chandra","jln sumatra","P06","jawa barat","23423","092384037958","Lunas");
INSERT INTO pemesanan VALUES("PS000003","P00002","2016-01-07","Yoga Eka Permana","jln kadipaten","P14","jawa barat","34212","012382804838","Lunas");
INSERT INTO pemesanan VALUES("PS000006","P00003","2016-01-12","Dery Marzuky","antapani parakansaat","P06","jawa barat","42121","012948204803189","Lunas");
INSERT INTO pemesanan VALUES("PS000009","P00004","2016-01-12","Ucup Sembiring","antapani no 15","P06","jawa barat","78855","4747569424311","Lunas");
INSERT INTO pemesanan VALUES("PS000010","P00005","2016-01-12","David Mugnhi","pasir kaliki no20","P06","jawa barat","43253","24980892384093","Lunas");
INSERT INTO pemesanan VALUES("PS000011","P00006","2016-01-12","supardi","metro no 23","P01","DKI Jakarta","12443","03575352114","Lunas");
INSERT INTO pemesanan VALUES("PS000012","P00007","2016-01-12","Kadank Berkamp","kopo no 28","P06","jawa barat","3124","1254543658","Lunas");
INSERT INTO pemesanan VALUES("PS000013","P00008","2016-01-12","Daniel Nduls","ansterdam no 5","P01","DKI Jakarta","34654","1215437568909","Lunas");
INSERT INTO pemesanan VALUES("PS000014","P00009","2016-01-12","dea anjani","indarung no 30","P02","sumatra barat","12423","135265489","Lunas");
INSERT INTO pemesanan VALUES("PS000015","P00010","2016-01-12","juwita butar","juanda no 40","P04","jayapura","13242","081924120481","Lunas");
INSERT INTO pemesanan VALUES("PS000016","P00001","2016-01-12","Fadhilah Aditya chandra","jln suka maju no 28","P19","kalimantan","64275","80310244801840","Lunas");
INSERT INTO pemesanan VALUES("PS000017","P00002","2016-01-12","Yoga Eka Permana","jlan suka mundur no 23","P11","jawa timur","21423","081232141334","Lunas");
INSERT INTO pemesanan VALUES("PS000018","P00003","2016-01-12","Dery Marzuky","jlan sastra negara","P16","sulawesi","12532","0128419248765","Lunas");
INSERT INTO pemesanan VALUES("PS000019","P00004","2016-01-12","Ucup Sembiring","jlan deso gede no10","P07","jawa barat","14214","08463523412","Lunas");
INSERT INTO pemesanan VALUES("PS000020","P00005","2016-01-12","David Mugnhi","jlan sudirman no 3A","P10","jawa tengah","14234","08634543624","Lunas");
INSERT INTO pemesanan VALUES("PS000021","P00006","2016-01-12","supardi","jalan enceng gondok 8B","P12","riau","12414","082435263643","Lunas");
INSERT INTO pemesanan VALUES("PS000022","P00007","2016-01-12","Kadank Berkamp","komp perum indah no21","P13","Sumatra utara","41423","08324314325346","Lunas");
INSERT INTO pemesanan VALUES("PS000023","P00008","2016-01-12","Daniel Nduls","komp sari jadi no 5","P09","jawa barat","42325","084131764623","Lunas");
INSERT INTO pemesanan VALUES("PS000024","P00010","2016-01-12","juwita butar","karang taruna blok c no 9","P05","banda aceh","21431","0812032140102","Lunas");
INSERT INTO pemesanan VALUES("PS000025","P00009","2016-01-12","dea anjani","jalan raden saleh no 28","P17","sumatra barat","21422","01238820148","Lunas");
INSERT INTO pemesanan VALUES("PS000026","P00001","2016-01-14","aldi","garut","P06","jawa barat","4037","087723743800","Lunas");


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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

INSERT INTO pemesanan_item VALUES("2","PS000002","B0005","4","35000");
INSERT INTO pemesanan_item VALUES("3","PS000003","B0008","4","30000");
INSERT INTO pemesanan_item VALUES("7","PS000006","B0002","1","75000");
INSERT INTO pemesanan_item VALUES("14","PS000009","B0017","1","15000");
INSERT INTO pemesanan_item VALUES("16","PS000010","B0022","1","20000");
INSERT INTO pemesanan_item VALUES("17","PS000010","B0020","1","35000");
INSERT INTO pemesanan_item VALUES("18","PS000010","B0009","1","35000");
INSERT INTO pemesanan_item VALUES("19","PS000011","B0008","1","30000");
INSERT INTO pemesanan_item VALUES("20","PS000011","B0002","1","75000");
INSERT INTO pemesanan_item VALUES("21","PS000012","B0011","1","25000");
INSERT INTO pemesanan_item VALUES("22","PS000012","B0010","1","35000");
INSERT INTO pemesanan_item VALUES("23","PS000013","B0005","1","35000");
INSERT INTO pemesanan_item VALUES("24","PS000013","B0006","1","45000");
INSERT INTO pemesanan_item VALUES("25","PS000013","B0007","1","50000");
INSERT INTO pemesanan_item VALUES("26","PS000014","B0007","1","50000");
INSERT INTO pemesanan_item VALUES("27","PS000014","B0014","1","45000");
INSERT INTO pemesanan_item VALUES("28","PS000015","B0010","1","35000");
INSERT INTO pemesanan_item VALUES("29","PS000015","B0013","1","15000");
INSERT INTO pemesanan_item VALUES("30","PS000015","B0018","1","25000");
INSERT INTO pemesanan_item VALUES("31","PS000016","B0008","1","30000");
INSERT INTO pemesanan_item VALUES("32","PS000016","B0021","1","20000");
INSERT INTO pemesanan_item VALUES("33","PS000017","B0001","1","150000");
INSERT INTO pemesanan_item VALUES("34","PS000017","B0003","1","250000");
INSERT INTO pemesanan_item VALUES("35","PS000018","B0017","1","15000");
INSERT INTO pemesanan_item VALUES("36","PS000018","B0019","1","20000");
INSERT INTO pemesanan_item VALUES("37","PS000018","B0022","1","20000");
INSERT INTO pemesanan_item VALUES("38","PS000019","B0009","1","35000");
INSERT INTO pemesanan_item VALUES("39","PS000019","B0006","1","45000");
INSERT INTO pemesanan_item VALUES("40","PS000019","B0018","1","25000");
INSERT INTO pemesanan_item VALUES("41","PS000020","B0009","1","35000");
INSERT INTO pemesanan_item VALUES("42","PS000020","B0004","1","100000");
INSERT INTO pemesanan_item VALUES("43","PS000021","B0005","1","35000");
INSERT INTO pemesanan_item VALUES("44","PS000021","B0016","1","30000");
INSERT INTO pemesanan_item VALUES("45","PS000022","B0010","1","35000");
INSERT INTO pemesanan_item VALUES("46","PS000022","B0012","1","30000");
INSERT INTO pemesanan_item VALUES("47","PS000023","B0009","1","35000");
INSERT INTO pemesanan_item VALUES("48","PS000023","B0008","1","30000");
INSERT INTO pemesanan_item VALUES("49","PS000024","B0010","1","35000");
INSERT INTO pemesanan_item VALUES("50","PS000024","B0020","1","35000");
INSERT INTO pemesanan_item VALUES("51","PS000025","B0005","1","35000");
INSERT INTO pemesanan_item VALUES("52","PS000025","B0015","1","150000");
INSERT INTO pemesanan_item VALUES("53","PS000026","B0001","3","150000");
INSERT INTO pemesanan_item VALUES("54","PS000026","B0021","1","20000");


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
INSERT INTO provinsi VALUES("P05","aceh","30000");
INSERT INTO provinsi VALUES("P06","Bandung","15000");
INSERT INTO provinsi VALUES("P07","bogor","10000");
INSERT INTO provinsi VALUES("P08","jambi","25000");
INSERT INTO provinsi VALUES("P09","purwakarta","15000");
INSERT INTO provinsi VALUES("P10","malang","30000");
INSERT INTO provinsi VALUES("P11","Pare","25000");
INSERT INTO provinsi VALUES("P12","Pekan Baru","35000");
INSERT INTO provinsi VALUES("P13","medan","40000");
INSERT INTO provinsi VALUES("P14","Majalengka","10000");
INSERT INTO provinsi VALUES("P15","Bangka belitung","60000");
INSERT INTO provinsi VALUES("P16","makasar","30000");
INSERT INTO provinsi VALUES("P17","pariaman","20000");
INSERT INTO provinsi VALUES("P18","sumedang","12000");
INSERT INTO provinsi VALUES("P19","Balik papan","30000");
INSERT INTO provinsi VALUES("P20","denpasar","25000");
INSERT INTO provinsi VALUES("P21","bekasi","10000");


DROP TABLE IF EXISTS tmp_keranjang;

CREATE TABLE `tmp_keranjang` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `kd_barang` char(5) NOT NULL,
  `harga` int(12) NOT NULL,
  `jumlah` int(3) NOT NULL DEFAULT '0',
  `tanggal` date NOT NULL DEFAULT '0000-00-00',
  `kd_pelanggan` char(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;



