<?php
include_once "../library/inc.sesadmin.php";


if(isset($_POST['btnSimpan'])){
	
	$txtNama=$_POST['txtNama'];
	$txtNama= str_replace("'","&acute;",$txtNama);
	
	$txtBiaya	=$_POST['txtBiaya'];
	$txtBiaya 	= str_replace("'","&acute;",$txtBiaya);

	
	$pesanError = array();
	if (trim($txtNama)=="") {
		$pesanError[] = "Data <b>Nama Provinsi</b> tidak boleh kosong !";		
	}
	if (trim($txtBiaya)=="" or ! is_numeric(trim($txtBiaya))) {
		$pesanError[] = "Data <b>Biaya Kirim (Rp)</b> tidak boleh kosong, dan harus diisi angka !";		
	}
		

	
	$txtNamaLama	= $_POST['txtNamaLama'];
	$cekSql	= "SELECT * FROM provinsi WHERE nm_provinsi='$txtNama' AND NOT(nm_provinsi='$txtNamaLama')";
	$cekQry	= mysql_query($cekSql, $koneksidb) or die ("Eror Query".mysql_error()); 
	if(mysql_num_rows($cekQry)>=1){
		$pesanError[] = "Maaf, Provinsi <b> $txtNama </b> sudah ada, ganti dengan yang nama berbeda";
	}
	
	
	if (count($pesanError)>=1 ){
		echo "<div class='mssgBox'>";
		echo "<img src='../images/attention.png'> <br><hr>";
			$noPesan=0;
			foreach ($pesanError as $indeks=>$pesan_tampil) { 
			$noPesan++;
				echo "&nbsp;&nbsp; $noPesan. $pesan_tampil<br>";	
			} 
		echo "</div> <br>"; 
	}
	else {
		
		$Kode	= $_POST['txtKode'];
		$mySql	= "UPDATE provinsi SET nm_provinsi ='$txtNama', biaya_kirim ='$txtBiaya' WHERE kd_provinsi ='$Kode'";
		$myQry	= mysql_query($mySql, $koneksidb)  or die ("Query salah : ".mysql_error());
		if($myQry){
			echo "<meta http-equiv='refresh' content='0; url=?open=Provinsi-Data'>";
		}
		exit;
	}	
} 

$Kode	= isset($_GET['Kode']) ?  $_GET['Kode'] : $_POST['txtKode'];
$mySql	 = "SELECT * FROM provinsi WHERE kd_provinsi='$Kode'";
$myQry	 = mysql_query($mySql, $koneksidb)  or die ("Query ambil data salah : ".mysql_error());
$myData  = mysql_fetch_array($myQry);

	
	$dataKode	= $myData['kd_provinsi'];
	$dataNama 	= isset($_POST['txtNama']) ?  $_POST['txtNama'] : $myData['nm_provinsi'];
	$dataBiaya	= isset($_POST['txtBiaya']) ?  $_POST['txtBiaya'] : $myData['biaya_kirim'];
?>
<form action="<?php $_SERVER['PHP_SELF']; ?>" method="post" name="frmedit">
<table class="table-list" width="100%" style="margin-top:0px;">
	<tr>
	  <th colspan="3">UBAH DATA PROVINSI</th>
	</tr>
	<tr>
	  <td width="18%"><strong>Kode</strong></td>
	  <td width="1%"><strong>:</strong></td>
	  <td width="81%"><input name="textfield" value="<?php echo $dataKode; ?>" size="10" maxlength="10" readonly="readonly"/>
    <input name="txtKode" type="hidden" value="<?php echo $dataKode; ?>" /></td></tr>
	<tr>
	  <td><strong>Nama Kota</strong></td>
	  <td><strong>:</strong></td>
	  <td><input name="txtNama" type="text" value="<?php echo $dataNama; ?>" size="80" maxlength="100" />
      <input name="txtNamaLama" type="hidden" value="<?php echo $myData['nm_provinsi']; ?>" /></td></tr>
	<tr>
      <td><strong>Biaya Kirim (Rp) </strong></td>
	  <td><strong>:</strong></td>
	  <td><input name="txtBiaya" type="text" value="<?php echo $dataBiaya; ?>" size="20" maxlength="12" /></td>
    </tr>
	<tr><td>&nbsp;</td>
	  <td>&nbsp;</td>
	  <td><input type="submit" name="btnSimpan" value=" SIMPAN " style="cursor:pointer;"></td>
    </tr>
</table>
</form>

