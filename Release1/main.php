<? /*
    * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/main.php,v $
    * $Revision: 1.7 $
    * $Id: main.php,v 1.7 2001/12/10 22:06:21 darkpact Exp $
    */

include "application.php";

$DOC_TITLE = "Main";

include("$CFG->templatedir/header.php");
?>
<!-- doc body -->
<table width="100%">
  <tr>
    <td width="70%">
      <h3>Willkommen bei OTMP - Ihrem &Uuml;bersetzungsdienst!</font></h3>

      <p>OTMP ist eine offene &Uuml;bersetzungsplattform. Auf OTMP k�nnen sie Ihre
      Texte ver�ffentlichen und in verschiedene andere Sprachen &uuml;bersetzen
      lassen.</p>

      <p>Texte bezeichnet hierbei sowohl Artikel, Ausarbeitungen, B�cher, Skripte,
      Prosa, Diplomarbeiten usw. als auch einfache Schriften, Liebesbriefe, und mehr.</p>

      <p>Wenn sie diesen Service auch nutzen m&ouml;chten, so m&uuml;ssen sie sich
      hierf&uuml;r anmelden. Die Anmeldung ist kostenlos und ihre Daten werden nicht
      an andere Personen weitergegeben. Nachdem sie sich angemeldet haben, k&ouml;nnen
      sie sowohl Texte f�r &Uuml;bersetzungen ablegen als auch welche &Uuml;bersetzen.</p>

      <p>OTMP ist auf gute &Uuml;bersetzer angewiesen, und daher stets auf der Suche
      nach neuen &Uuml;bersetzern. Lesen sie weiter, wenn sie wissen wollen, welche
      Vorteile ihnen das Arbeiten als &Uuml;bersetzer bringt.</p>

      <p>Wir w&uuml;nschen Ihnen viel Spass und Erfolg mit unserem System!</p>
    </td>
    <td valign="top">
      <br>
      <ul>
        <li><a href="<?=$CFG->wwwroot?>/help/what.html">Was ist OTMP ?</a></li>
        <li><a href="<?=$CFG->wwwroot?>/help/faq.html">H&auml;ufig gestellte Fragen (FAQ)</a></li>
        <li><a href="<?=$CFG->wwwroot?>/help/help.html">Weitere Hilfen und Kontakt</a></li>
      </ul>
      <ul>
        <li><a href="<?=$CFG->wwwroot?>/user/signup.php">Neu Anmelden</a></li>
        <li><a href="<?=$CFG->wwwroot?>/user/login.php">Einloggen</a></li>
      </ul>
      <ul>
        <li><a href="<?=$CFG->wwwroot?>/docs/documentlist.php?list=all">Das gesammte Textverzeichnis anzeigen</a></li>
        <li><a href="<?=$CFG->wwwroot?>/docs/search.php?list=all">Das Textverzeichnis durchsuchen</a></li>
        <li><a href="<?=$CFG->wwwroot?>/docs/upload.php">Einen Text �bersetzen lassen</a></li>
        <li><a href="<?=$CFG->wwwroot?>/docs/tasks.php">Einen Text �bersetzen wollen</a></li>
        <li><a href="<?=$CFG->wwwroot?>/user/user_data.php">Ihre Daten</a></li>
      </ul>
    </td>
  </tr>
</table>
<!-- doc body end -->

<!-- doc footer -->
<?
include("$CFG->templatedir/footer.php");
?>
