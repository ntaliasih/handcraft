<?php
include_once "../library/inc.sesadmin.php";  
include_once "../library/inc.connection.php"; 
include_once "../library/inc.library.php";    
?>
<h2> LAPORAN DATA PROVINSI</h2>
<table class="table-list" width="600" border="0" cellspacing="1" cellpadding="2">
  <tr>
    <td width="29" align="center" bgcolor="#CCCCCC"><strong>No</strong></td>
    <td width="413" bgcolor="#CCCCCC"><strong>Nama Provinsi </strong></td>
    <td width="142" align="right" bgcolor="#CCCCCC"><strong>Biaya Kirim (Rp) </strong></td>
  </tr>
  <?php
	$mySql = "SELECT * FROM provinsi ORDER BY nm_provinsi ASC";
	$myQry = mysql_query($mySql, $koneksidb)  or die ("Query salah : ".mysql_error());
	$nomor = 0; 
	while ($myData = mysql_fetch_array($myQry)) {
		$nomor++;
	?>
  <tr>
    <td align="center"><?php echo $nomor; ?></td>
    <td><?php echo $myData['nm_provinsi']; ?></td>
    <td align="right"><?php echo format_angka($myData['biaya_kirim']); ?></td>
  </tr>
  <?php } ?>
</table>
