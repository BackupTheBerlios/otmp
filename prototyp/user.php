<? /*
    * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/prototyp/user.php,v $
    * $Revision: 1.1 $
    * $Id: user.php,v 1.1 2001/11/20 17:22:49 darkpact Exp $
    */
?>
<!-- doc header -->
<html>
<head>
<title>OTMP - Benutzer</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta name="description" content="OTMP - Online Translation Marketplace">
<link rel="stylesheet" href="otmp.css">
</head>

<body bgcolor="#FFFFFF" leftmargin="3" topmargin="1" marginwidth="1">
<table width="100%" border="0" cellspacing="0" cellpadding="5">
  <tr bgcolor="#666666">
    <td><div align="right"><b><font color="#FFFFFF">Sie sind eingeloggt als: Matthias Nagy</font></b></div></td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td><b class="logo">OTMP</b></td>
  </tr>
</table>
<!-- doc header end -->

<!-- doc body -->
<h3>Ihre Dokumente</h3>

<p>
<form method="post" action="">
<table width="100%" cellspacing="0">
  <tr>
    <td bgcolor="#CCCCCC"></td>
    <td bgcolor="#CCCCCC"></td>
    <td bgcolor="#CCCCCC"><b>Titel</b></td>
    <td bgcolor="#CCCCCC"><b>Sprache</b></td>
    <td bgcolor="#CCCCCC"><b>Nach</b></td>
    <td bgcolor="#CCCCCC"><b>Datum</b></td>
    <td bgcolor="#CCCCCC"><b>Status</b></td>
    <td bgcolor="#CCCCCC"><b>&Uuml;bersetzer</b></td>
    <td bgcolor="#CCCCCC"></td>
  <tr>
  <tr>
    <td bgcolor="#FFE1E1"><a href="">&Auml;ndern</a></td>
    <td bgcolor="#FFE1E1"><a href="">L&ouml;schen</a></td>
    <td bgcolor="#FFE1E1">Elektrotechnik - Eine Einf&uuml;hrung</td>
    <td bgcolor="#FFE1E1">Deutsch</td>
    <td bgcolor="#FFE1E1">Spanisch </td>
    <td bgcolor="#FFE1E1">10. Oktober 2000</td>
    <td bgcolor="#FFE1E1">&Uuml;bersetzt</td>
    <td bgcolor="#FFE1E1"><a href="mailto:prinz@localhost">Prinz Felix</a></td>
    <td bgcolor="#FFE1E1">button</td>
  </tr>
  <tr>
    <td bgcolor="#E1FFE1"><a href="">&Auml;ndern</a></td>
    <td bgcolor="#E1FFE1"><a href="">L&ouml;schen</a></td>
    <td bgcolor="#E1FFE1">Mein Leben nach der Technik</td>
    <td bgcolor="#E1FFE1">Deutsch</td>
    <td bgcolor="#E1FFE1">Suaheli</td>
    <td bgcolor="#E1FFE1">13. Oktober 2001</td>
    <td bgcolor="#E1FFE1">in Arbeit</td>
    <td bgcolor="#E1FFE1"><a href="mailto:prinz@localhost">Prinz Felix</a></td>
    <td bgcolor="#E1FFE1"><? if ($group=="translator") {echo '<input type="submit" name="upload" value="Hochladen" class="tbl_btn">'} ?></td>
  </tr>
  <tr>
    <td bgcolor="#CCCCCC" colspan="2"></td>
    <td bgcolor="#CCCCCC" colspan="7"><a href="upload.php">Neues Dokument hinzufügen</a></td>
  <tr>
</table>
</form>
</p>
<!-- doc body end -->

<!-- doc footer -->
<table width="100%">
  <tr>
    <td align="center"><a href="main.php">Hauptseite</a> | <a href="show.php?list=all">Texte</a> | <a href="contact.php">Kontakt</a> | <a href="help.php">Hilfe</a> | <a href="user/login.php">Ausloggen</a></td>
  </tr>
</table>

<p align="center" class="footer">
  Revision: <? echo $revision; echo $datum; ?> &copy; 2001 otmp-developer</p>
</body>
</html>
<!-- doc footer end -->
