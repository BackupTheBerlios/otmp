<? /*
    * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/main.php,v $
    * $Revision: 1.3 $
    * $Id: main.php,v 1.3 2001/11/25 21:12:32 hifix Exp $
    */
?>
<!-- doc header -->
<?
$langs=isset($langs)?$langs:"us";
include ("all." . $langs);
include ("main." . $langs);
$loginname=isset($loginname)?$loginname:$notlogedin;
$maindir = "";
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
        <li><a href="docs/what.html">Was ist OTMP ?</a></li>
        <li><a href="docs/faq.html">H&auml;ufig gestellte Fragen (FAQ)</a></li>
        <li><a href="docs/help.html">Weitere Hilfen und Kontakt</a></li>
      </ul>
      <ul>
        <li><a href="user/signup.php?langs=<? echo $langs; ?>">Neu Anmelden</a></li>
        <li><a href="user/login.php?langs=<? echo $langs; ?>">Einloggen</a></li>
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
$userdir = "user/";
$docsdir = "docs/";
$helpdir = "help/";
include ("otmpfooter.php");
?>
<!-- doc footer end -->
