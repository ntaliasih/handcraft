<table width="100%" border="0" cellpadding="2" cellspacing="0">
<?php
if (! isset($_SESSION['SES_PELANGGAN'])) {

?>
  <form name="frmLogin" method="post" action="?open=Login-Validasi">
    <tr>
      <td height="22" align="center" bgcolor="#CCCCCC" class="head"><b>LOGIN </b></td>
    </tr>
    <tr> 
      <td width="531" height="18"><b>Username : </b><br />
        <input name="txtUsername" type="text"  size="20" maxlength="30"> </td>
    </tr>
    <tr> 
      <td height="18"> <b>Password :</b> <br />
      <input name="txtPassword" type="password" size="20" maxlength="30"></td>
    </tr>
    
    <tr> 
      <td><input type="submit" name="btnLogin" value="Login" /></td>
    </tr>
    <tr> 
      <td><b><img src="images/ikon.png" width="9" height="9">
		<a href="?open=Pelanggan-Baru" target="_self">Pendaftaran Baru </a></b></td>
    </tr>
    <tr> 
      <td ></td>
    </tr>
  </form>
<?php 
}
else { 

?>
    <tr>
      <td height="22" align="center" bgcolor="#CCCCCC"  class="head"><b>TRANSAKSI</b></td>
    </tr>  
  <tr> 
    <td><b> <img src="images/ikon.png" width="9" height="9"> <a href="?open=Keranjang-Belanja" target="_self">Keranjang Belanja</a> </b></td>
  </tr>
  
  <tr> 
    <td><b> <img src="images/ikon.png" width="9" height="9"> <a href="?open=Transaksi-Tampil" target="_self">Tampil Transaksi </a> </b></td>
  </tr>
  <tr>
    <td><b> <img src="images/ikon.png" width="9" height="9" /> <a href="login_out.php" target="_self">Logout</a></b></td>
  </tr>
<?php } ?>
</table>
