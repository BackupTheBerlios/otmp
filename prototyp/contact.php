<? /*
    * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/prototyp/contact.php,v $
    * $Revision: 1.3 $
    * $Id: contact.php,v 1.3 2001/11/20 17:21:44 darkpact Exp $
    */
?>
<!-- doc header -->
<html>
<head>
<title>OTMP - Kontakt</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta name="description" content="OTMP - Online Translation Marketplace">
<link rel="stylesheet" href="otmp.css">
</head>

<body bgcolor="#FFFFFF" leftmargin="3" topmargin="1" marginwidth="1">
<table width="100%" border="0" cellspacing="0" cellpadding="5">
  <tr bgcolor="#666666">
    <td><div align="right"><b><font color="#FFFFFF">Sie sind eingeloggt als: Nicht Eingeloggt</font></b></div></td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td><b class="logo">OTMP</b></td>
  </tr>
</table>
<!-- doc header end -->

<!-- doc body -->
<p>&Uuml;ber dieses Formular k&ouml;nnen sie dem Administrator eine Nachricht zukommen lassen.</p>
<form method="post" action="">
  <table>
    <tr><td>Ihre Emailadresse:</td><td><input type="text" name="email"></td></tr>
    <tr><td>Ihre Nachricht an uns:</td><td><textarea name="msg" cols="60" wrap="virtual" rows="7"></textarea></td></tr>
    <tr><td></td><td><input type="submit" name="send" value="Nachricht abschicken"></td></tr>
  </table>
</form>
<p>Oder schreiben sie direkt eine Email an: <a href="mailto:hifix@berlios.de">hifix@berlios.de</a></p>
<!-- doc body end -->

<!-- doc footer -->
<table width="100%">
  <tr>
    <td align="center"><a href="main.php">Hauptseite</a> | <a href="show.php?list=all">Texte</a> | <a href="contact.php">Kontakt</a> | <a href="help.php">Hilfe</a> | <a href="user/login.php">Einloggen</a></td>
  </tr>
</table>

<p align="center" class="footer">
  Revision: <? echo $revision; echo $datum; ?> &copy; 2001 otmp-developer</p>
</body>
</html>
<!-- doc footer end -->
