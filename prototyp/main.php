<? /*
    * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/prototyp/main.php,v $
    * $Revision: 1.6 $
    * $Id: main.php,v 1.6 2001/11/20 17:20:43 darkpact Exp $
    */
?>
<!-- doc header -->
<html>
<head>
<title>OTMP - Hauptseite</title>
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
<table width="100%">
  <tr>
    <td width="70%">
      <h3>Willkommen bei OTMP - Ihrem &Uuml;bersetzungsdienst!</font></h3>

      <p>OTMP ist eine offene &Uuml;bersetzungsplattform. Auf OTMP können sie Ihre
      Texte veröffentlichen und in verschiedene andere Sprachen &uuml;bersetzen
      lassen.</p>

      <p>Texte bezeichnet hierbei sowohl Artikel, Ausarbeitungen, Bücher, Skripte,
      Prosa, Diplomarbeiten usw. als auch einfache Schriften, Liebesbriefe, und mehr.</p>

      <p>Wenn sie diesen Service auch nutzen m&ouml;chten, so m&uuml;ssen sie sich
      hierf&uuml;r anmelden. Die Anmeldung ist kostenlos und ihre Daten werden nicht
      an andere Personen weitergegeben. Nachdem sie sich angemeldet haben, k&ouml;nnen
      sie sowohl Texte für &Uuml;bersetzungen ablegen als auch welche &Uuml;bersetzen.</p>

      <p>OTMP ist auf gute &Uuml;bersetzer angewiesen, und daher stets auf der Suche
      nach neuen &Uuml;bersetzern. Lesen sie weiter, wenn sie wissen wollen, welche
      Vorteile ihnen das Arbeiten als &Uuml;bersetzer bringt.</p>

      <p>Wir w&uuml;nschen Ihnen viel Spass und Erfolg mit unserem System!</p>
    </td>
    <td valign="top">
      <br>
      <ul>
        <li><a href="doc/what.html">Was ist OTMP ?</a></li>
        <li><a href="doc/faq.html">H&auml;ufig gestellte Fragen (FAQ)</a></li>
        <li><a href="doc/faq.html">Weitere Hilfen</a></li>
      </ul>
      <ul>
        <li><a href="user/signup.php">Neu Anmelden</a></li>
        <li><a href="user/login.php">Einloggen</a></li>
      </ul>
      <ul>
        <li><a href="show.php?list=all">Textverzeichnis anzeigen</a></li>
        <li><a href="user.php?group=translator">Benutzer</a></li>
      </ul>
    </td>
  </tr>
</table>
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
