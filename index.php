<?php
session_start();
error_reporting(0);
include_once "library/inc.connection.php";
include_once "library/inc.library.php";
?>
<html>
<head>
<title>TOKO HANDCRAFT - Toko Kerajinan Online</title>
<meta name="robots" content="index, follow">

<meta name="description" content="TOKO RANDUGEDE adalah Toko Kerajinan Online yang menjual aneka macam kerajinan dengan harga murah meriah. Tersedia kelom geulis, payung geulis, tas batok, tas pandan, topi pandan, sandal tarumpah dan lainnya">

<meta name="keywords" content="toko kerajinan online, toko kerajinan, kelom geulis, payung geulis, tas batok, tas pandan, topi pandan, sandal tarumpah  dan lainnya">

<link href="style/styles_user.css" rel="stylesheet" type="text/css">
<link href="style/button.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="js.popupWindow.js"></script>
</head>
<body topmargin="3">
<table width="800" border="0" align="center" cellpadding="0" cellspacing="0" class="border">
  <tr bgcolor="#FFFFFF">
    <td height="24" align="right" bgcolor="#F5F5F5"><?php include "inc.login_status.php"; ?></td>
  </tr>
  <tr>
    <td height="43" bgcolor="#FFFFFF"><a href="?open=Home"><img src="images/header.jpg" alt="" width="800" border="0"></a></td>
  </tr>
</table>
<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr bgcolor="#FFFFFF" class="header"> 
    <td width="261" height="25" valign="middle" bgcolor="#F5F5F5"> </td>
    <td width="98" align="center" bgcolor="#F5F5F5"><a href="?open=Home" target="_self"><b>HOME</b></a>	</td>    
    <td width="98" align="center" bgcolor="#F5F5F5"><a href="?open=Profil" target="_self"><b>PROFIL</b></a></td>
    <td width="97" align="center" bgcolor="#F5F5F5"><a href="?open=Barang" target="_self"><b>BARANG</b></a></td>
    <td width="101" align="center" bgcolor="#F5F5F5"><a href="?open=Panduan" target="_self"><b>PANDUAN</b></a></td>
    <td width="101" align="center" bgcolor="#F5F5F5"><a href="?open=Konfirmasi" target="_self"><b>KONFIRMASI</b></a></td>
  </tr>
</table>
<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td height="47" colspan="3" align="right" valign="bottom" bgcolor="#CCCCCC" class="head"> 
	<form action="?open=Barang-Pencarian" method="post" name="form1">
	<strong>Cari Barang</strong> 
	<input name="txtKeyword" type="text" size="30" maxlength="100">
	<input type="submit" name="btnCari" value=" Cari "> 
	</form>
</td>
  </tr>
  <tr> 
    <td width="232" bgcolor="#FFFFFF">&nbsp;</td>
    <td width="4" bgcolor="#FFFFFF">&nbsp;</td>
    <td width="564" align="right" bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
  <tr> 
    <td align="center" valign="top" bgcolor="#FFFFFF"  class="utama">
	<table width="100%" border="0" cellpadding="2" cellspacing="0">
      <tr>
        
      </tr>
    </table> <?php include "login.php"; ?>
	<table width="100%" border="0" cellpadding="2" cellspacing="0">
      <tr>
        <td align="center" valign="top" bgcolor="#FFFFFF"></td>
      </tr>
      <tr align="center">
        <td width="121" height="22" bgcolor="#CCCCCC" class="head"><b>KATEGORI</b></td>
      </tr>
      <tr>
        <td height="18" align="center" valign="top" bgcolor="#FFFFFF">
		<table width="98%" border="0" align="center" cellpadding="4" cellspacing="0">
         <?php
		  $mySql = "SELECT * FROM kategori ORDER BY nm_kategori";
		  $myQry = mysql_query($mySql, $koneksidb) or die ("Query salah : ".mysql_error());
		  while($myData = mysql_fetch_array($myQry)) {
		  	$Kode = $myData['kd_kategori'];
		  ?>
            <tr>
              <td width="8%"><img src="images/ikon.png" width="9" height="9"></td>
              <td width="92%"><b> <?php echo "<a href=?open=Barang-Kategori&Kode=$Kode>$myData[nm_kategori]</a>"; ?> </b></td>
            </tr>
            <?php
		  }
		  ?>
        </table></td>
      </tr>
      
      <tr>
        <td height="18" align="center" valign="top" bgcolor="#FFFFFF">&nbsp;</td>
      </tr>
    </table></td>
    <td>&nbsp;</td>
    <td align="center" valign="top" bgcolor="#FFFFFF" class="utama">
	<?php include "buka_file.php"; ?></td>
  </tr>
  <tr> 
    <td height="4">&nbsp;</td>
    <td height="4">&nbsp;</td>
    <td height="4">&nbsp;</td>
  </tr>
  <tr> 
    <td colspan="3" align="center" bgcolor="#F5F5F5" class="FOOT">
	  <p>Copyright &copy; 2018<br>
    TOKO HANDCRAFT - Toko Kerajinan Online<br>
    UNIVERSITAS KOMPUTER INDONESIA</p></td>
  </tr>
</table>
</body>
</html>
