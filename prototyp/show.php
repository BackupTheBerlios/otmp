<? /*
    * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/prototyp/show.php,v $
    * $Revision: 1.5 $
    * $Id: show.php,v 1.5 2001/11/20 17:31:51 darkpact Exp $
    */
?>
<!-- doc header -->
<html>
<head>
<title>OTMP - Textverzeichnis anzeigen</title>
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
<p><font size=-1>Zeige <a href="show.php?list=open">Offene &Uuml;bersetzungen</a> |
<a href="show.php?list=work">&Uuml;bersetzungen in Arbeit</a> |
<a href="show.php?list=finished">Fertige &Uuml;bersetzungen</a> |
<a href="show.php?list=all">alle Dokumente</a> an.</font></p>

<? $list=isset($list)?$list:"all"; ?>

<? if ($list=="all" || $list=="open") { ?>
<form method="post" action="">
  <table width="100%" border="0" cellspacing="0" cellpadding="2">
    <tr>
      <td colspan="8" bgcolor="#6699FF"><b><font color="#FFFFFF">Offene &Uuml;bersetzungen</font></b></td>
    </tr>
    <tr>
      <td bgcolor="#E1E1FF"><b>Nr</b></td>
      <td bgcolor="#E1E1FF"><b>Titel</b></td>
      <td bgcolor="#E1E1FF"><b>Sprache</b></td>
      <td bgcolor="#E1E1FF"><b>Nach</b></td>
      <td bgcolor="#E1E1FF"><b>Datum</b></td>
      <td bgcolor="#E1E1FF"><b>Autor</b></td>
      <td bgcolor="#E1E1FF"><b>Status</b></td>
      <td bgcolor="#E1E1FF">&nbsp;</td>
    </tr>
    <tr>
      <td>4</td>
      <td><a href="doc.php?doc=4">Mechanisierung der Kopfarbeit</a></td>
      <td>Deutsch</td>
      <td>Suaheli</td>
      <td>23. Mai 2001</td>
      <td><a href="mailto:nake@localhost">Biel E. Fake</a></td>
      <td>Offen</td>
      <td>
        <input type="submit" name="translate4" value="&Uuml;bersetzen" class="tbl_btn">
      </td>
    </tr>
    <tr>
      <td bgcolor="#E1E1FF">15</td>
      <td bgcolor="#E1E1FF">Theorien der Stammbildung</td>
      <td bgcolor="#E1E1FF">Deutsch</td>
      <td bgcolor="#E1E1FF">Juristendeutsch</td>
      <td bgcolor="#E1E1FF">4. November 2001</td>
      <td bgcolor="#E1E1FF"><a href="mailto:siebert@localhost">Dr. Siebert</a></td>
      <td bgcolor="#E1E1FF">Offen</td>
      <td bgcolor="#E1E1FF">
        <input type="submit" name="translate15" value="&Uuml;bersetzen" class="tbl_btn">
      </td>
    </tr>
    <tr>
      <td>16</td>
      <td>Semiotik &amp; Click Languages</td>
      <td>Englisch</td>
      <td>Französisch</td>
      <td>11. November 2001</td>
      <td> - <a href="contact_user.php?user=doc16">Anonym</a> -</td>
      <td>Offen</td>
      <td>
        <input type="submit" name="translate16" value="&Uuml;bersetzen" class="tbl_btn">
      </td>
    </tr>
  </table>
</form>
<? } ?>
<? if ($list=="all" || $list=="work") { ?>
<form method="post" action="">
  <table width="100%" border="0" cellspacing="0" cellpadding="2">
    <tr>
      <td colspan="8" bgcolor="#66FF99"><b><font color="#FFFFFF">&Uuml;bersetzungen in Arbeit</font></b></td>
    </tr>
    <tr>
      <td bgcolor="#E1FFE1"><b>Nr</b></td>
      <td bgcolor="#E1FFE1"><b>Titel</b></td>
      <td bgcolor="#E1FFE1"><b>Sprache</b></td>
      <td bgcolor="#E1FFE1"><b>Nach</b></td>
      <td bgcolor="#E1FFE1"><b>Datum</b></td>
      <td bgcolor="#E1FFE1"><b>&Uuml;bersetzer</b></td>
      <td bgcolor="#E1FFE1"><b>Status</b></td>
      <td bgcolor="#E1FFE1">&nbsp;</td>
    </tr>
    <tr>
      <td>13</td>
      <td><a href="doc.php?doc=13">Umwelt und Cola</a></td>
      <td>Deutsch</td>
      <td>Sanskrit</td>
      <td>3. November 2001</td>
      <td><a href="mailto:prinz@localhost">Prinz Felix</a></td>
      <td>In Arbeit</td>
      <td>&nbsp; </td>
    </tr>
    <tr>
      <td bgcolor="#E1FFE1">12</td>
      <td bgcolor="#E1FFE1">Entwicklungl&auml;nder an der TU</td>
      <td bgcolor="#E1FFE1">Deutsch</td>
      <td bgcolor="#E1FFE1">Hebräisch</td>
      <td bgcolor="#E1FFE1">1. November 2001</td>
      <td bgcolor="#E1FFE1"><a href="mailto:prinz@localhost">Prinz Felix</a></td>
      <td bgcolor="#E1FFE1">In Arbeit</td>
      <td bgcolor="#E1FFE1">&nbsp; </td>
    </tr>
  </table>
</form>
<? } ?>
<? if ($list=="all" or $list=="finished") { ?>
<form method="post" action="">
  <table width="100%" border="0" cellspacing="0" cellpadding="2">
    <tr>
      <td colspan="8" bgcolor="#FF6699"><b><font color="#FFFFFF">Fertige &Uuml;bersetzungen</font></b></td>
    </tr>
    <tr>
      <td bgcolor="#FFE1E1"><b>Nr</b></td>
      <td bgcolor="#FFE1E1"><b>Titel</b></td>
      <td bgcolor="#FFE1E1"><b>Sprache</b></td>
      <td bgcolor="#FFE1E1"><b>Nach</b></td>
      <td bgcolor="#FFE1E1"><b>Datum</b></td>
      <td bgcolor="#FFE1E1"><b>Autor</b></td>
      <td bgcolor="#FFE1E1"><b>&Uuml;bersetzer</b></td>
      <td bgcolor="#FFE1E1">&nbsp;</td>
    </tr>
    <tr>
      <td>11</td>
      <td><a href="doc.php?doc=11">Nazir und seine Nerven</a></td>
      <td>Deutsch</td>
      <td>Arabisch</td>
      <td>2. Oktober 2001</td>
      <td><a href="mailto:adam@localhost">Adam Eva</a></td>
      <td><a href="mailto:prinz@localhost">Prinz Felix</a></td>
      <td>&nbsp; </td>
    </tr>
    <tr>
      <td bgcolor="#FFE1E1">10</td>
      <td bgcolor="#FFE1E1">Entwicklungl&auml;nder an der FU</td>
      <td bgcolor="#FFE1E1">Deutsch</td>
      <td bgcolor="#FFE1E1">Hebräisch</td>
      <td bgcolor="#FFE1E1">12. September 2001</td>
      <td bgcolor="#FFE1E1"><a href="mailto:nazir@localhost">Nazir Peroz</a></td>
      <td bgcolor="#FFE1E1"><a href="mailto:king@localhost">König Hottentotten</a></td>
      <td bgcolor="#FFE1E1">&nbsp; </td>
    </tr>
  </table>
</form>
<? } ?>
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
