<?php
include_once "../library/inc.sesadmin.php";
include_once "../library/inc.library.php";


if(empty($_GET['Kode'])){
	echo "<b>Data yang diubah tidak ada</b>";
}
else {
	
	$Kode	= $_GET['Kode'];
	
	
	if($_GET['Aksi']=="Lunas") {
		$editSql = "UPDATE pemesanan SET status_bayar='Lunas' WHERE no_pemesanan='$Kode'";
		$editQry = mysql_query($editSql, $koneksidb) or die ("Eror Query Edit".mysql_error());
		if($editQry){
			
			$itemSql = "SELECT * FROM pemesanan_item WHERE no_pemesanan='$Kode'";
			$itemQry = mysql_query($itemSql,$koneksidb) or die ("Gagal query ambil data".mysql_error());
			while ($itemRow = mysql_fetch_array($itemQry)) {
				$jumlahBrg 	= $itemRow['jumlah'];
				$kodeBrg	= $itemRow['kd_barang'];
				
				
				$mySql = "UPDATE barang SET stok=stok- $jumlahBrg WHERE kd_barang='$kodeBrg'";
				mysql_query($mySql,$koneksidb) or die ("Gagal query update stok".mysql_error());
			}
			
			
			echo "<meta http-equiv='refresh' content='0; url=pemesanan_lihat.php?Kode=$Kode'>";
		}
	}
	
	
	if($_GET['Aksi']=="Pesan") {
		
		$editSql = "UPDATE pemesanan SET status_bayar='Pesan' WHERE no_pemesanan='$Kode'";
		$editQry = mysql_query($editSql, $koneksidb) or die ("Eror Query Edit".mysql_error());
		if($editQry){
			
			$itemSql = "SELECT * FROM pemesanan_item WHERE no_pemesanan='$Kode'";
			$itemQry = mysql_query($itemSql,$koneksidb) or die ("Gagal query ambil data".mysql_error());
			while ($itemRow = mysql_fetch_array($itemQry)) {		
				$jumlahBrg 	= $itemRow['jumlah'];
				$kodeBrg	= $itemRow['kd_barang'];

				
				$mySql = "UPDATE barang SET stok=stok + $jumlahBrg WHERE kd_barang='$kodeBrg'";
				mysql_query($mySql,$koneksidb) or die ("Gagal query update stok".mysql_error());
			}
			
			
			echo "<meta http-equiv='refresh' content='0; url=pemesanan_lihat.php?Kode=$Kode'>";
		}
	}
}
?>