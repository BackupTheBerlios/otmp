<? /*
    * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/main.php,v $
    * $Revision: 1.1 $
    * $Id: main.php,v 1.1 2001/11/22 20:15:33 darkpact Exp $
    */
?>
<!-- doc header -->
<?
include ("all." . $langs);
include ("main." . $langs);
$loginname = $notlogedin;
include ("otmpheader.php");
?>
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
        <li><a href="documentlist.php?list=all">Textverzeichnis anzeigen</a></li>
        <li><a href="user.php?group=translator">Benutzer</a></li>
      </ul>
    </td>
  </tr>
</table>
<!-- doc body end -->

<!-- doc footer -->
<?
$maindir = "";
$userdir = "user/";
$docsdir = "docs/";
$helpdir = "help/";
include ("otmpfooter.php");
?>
<!-- doc footer end -->
