<? /*
    * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/prototyp/show.php,v $ 
    * $Revision: 1.3 $
    * $Id: show.php,v 1.3 2001/11/11 19:57:57 hifix Exp $
    */
?>
<html>
<head>
<title>otmp - Show</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta name="description" content="OTMP - Online Translation Marketplace
Show">
<link rel="stylesheet" href="otmp.css">
</head>

<body bgcolor="#FFFFFF" leftmargin="1" topmargin="1">
<table width="100%" border="0" cellspacing="0" cellpadding="2">
  <tr bgcolor="#666666"> 
    <td colspan="2"> 
      <div align="right"><b><font color="#FFFFFF">you are not logged in</font></b></div>
    </td>
  </tr>
  <tr bgcolor="#CCCCCC"> 
    <td><b class="logo">OTMP</b></td>
    <td>&nbsp;</td>
  </tr>
  <tr> 
    <td colspan="2">
      <div align="right"><a href="main.php">home</a> | <a href="show.php">texts</a> 
        | <a href="user/options.php">options</a> | <a href="user/login.php">login</a></div>
    </td>
  </tr>
</table>

<form method="post" action="">
  <table width="100%" border="0" cellspacing="0" cellpadding="2">
    <tr> 
      <td colspan="6" bgcolor="#6699FF"><b><font color="#FFFFFF">offene &Uuml;bersetzungen</font></b></td>
    </tr>
    <tr> 
      <td bgcolor="#E1E1FF"><b>Nr</b></td>
      <td bgcolor="#E1E1FF"><b>Titel</b></td>
      <td bgcolor="#E1E1FF"><b>Datum</b></td>
      <td bgcolor="#E1E1FF"><b>Author<br>
        Kontakt </b></td>
      <td bgcolor="#E1E1FF"><b>Status</b></td>
      <td bgcolor="#E1E1FF" width="5%">&nbsp;</td>
    </tr>
    <tr> 
      <td>4</td>
      <td>Mechanisierung der Kopfarbeit</td>
      <td>4.11.2001</td>
      <td><a href="mailto:nake@localhost">nake</a></td>
      <td>offen</td>
      <td> 
        <input type="submit" name="translate4" value="&uuml;bersetzen" class="tbl_btn">
      </td>
    </tr>
    <tr> 
      <td bgcolor="#E1E1FF">5</td>
      <td bgcolor="#E1E1FF">Theorien der Stammbildung</td>
      <td bgcolor="#E1E1FF">4.11.2001</td>
      <td bgcolor="#E1E1FF"><a href="mailto:siebert@localhost">siebert</a></td>
      <td bgcolor="#E1E1FF">offen</td>
      <td bgcolor="#E1E1FF">
        <input type="submit" name="translate5" value="&uuml;bersetzen" class="tbl_btn">
      </td>
    </tr>
    <tr> 
      <td>6</td>
      <td>Semiotik &amp; Klicksprachen</td>
      <td>11.11.2001</td>
      <td> - <a href="contact_user.php">mail</a> -</td>
      <td>offen</td>
      <td>
        <input type="submit" name="translate6" value="&uuml;bersetzen" class="tbl_btn">
      </td>
    </tr>
  </table>
</form>
<form method="post" action="">
  <table width="100%" border="0" cellspacing="0" cellpadding="2">
    <tr> 
      <td colspan="6" bgcolor="#6699FF"><b><font color="#FFFFFF"> &Uuml;bersetzungen 
        in Arbeit</font></b></td>
    </tr>
    <tr> 
      <td bgcolor="#E1E1FF"><b>Nr</b></td>
      <td bgcolor="#E1E1FF"><b>Titel</b></td>
      <td bgcolor="#E1E1FF"><b>Datum</b></td>
      <td bgcolor="#E1E1FF"><b>&Uuml;bersetzer<br>
        Kontakt </b></td>
      <td bgcolor="#E1E1FF"><b>Status</b></td>
      <td bgcolor="#E1E1FF" width="5%">&nbsp;</td>
    </tr>
    <tr> 
      <td>3</td>
      <td>Umwelt und Cola</td>
      <td>1.11.2001</td>
      <td><a href="mailto:prinz@localhost">prinz</a></td>
      <td>in arbeit</td>
      <td>&nbsp; </td>
    </tr>
    <tr> 
      <td bgcolor="#E1E1FF">2</td>
      <td bgcolor="#E1E1FF">CMSV </td>
      <td bgcolor="#E1E1FF">1.11.2001</td>
      <td bgcolor="#E1E1FF"><a href="mailto:prinz@localhost">prinz</a></td>
      <td bgcolor="#E1E1FF">in arbeit</td>
      <td bgcolor="#E1E1FF">&nbsp; </td>
    </tr>
  </table>
</form>
<p align="left">&nbsp;</p>
<p align="center" class="footer"><a href="main.php">home</a>| <a href="show.php">texts</a> 
  | <a href="upload.php">upload</a> | <a href="contact.php">contact</a> | <a href="help.php">help</a><br>
  <a href="user/login.php">login</a><br>
  <br>
  $Revision: 1.3 $ &copy; 2001 otmp-developer :)</p>
</body>
</html>