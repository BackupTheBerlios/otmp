<?
include "application.php";
$DOC_TITLE = "Dokumentation";
include("$CFG->templatedir/header.php");
?>

<p><a href="buch_3.php">Buch 3</a></p>
<a href="Inhalt.php">Inhaltsverzeichnis</a><br><br>

<p align="center"><img src="<?=$CFG->imagedir?>/docs/301.jpg" width="600"></p>

<p><table border="1">
 <tr>
  <th>&nbsp;</th>
  <th>Name</th>
  <th>Type</th>
  <th>Beschreibung</th>
 </tr>
 <tr>
  <td><b>A</b></td>
  <td>Auftrag</td>
  <td>Entity-Type</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>Adresse</td>
  <td>Entity-Type</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>Auf_Hat_File</td>
  <td>Relationship-Type</td>
  <td>R(Auftrag,Filetype). Der Auftrag muss in einer bestimmten Format(Filetype) vorliegen</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>Auf_Hat_Spr</td>
  <td>Relationship-Type</td>
  <td>R(Auftrag,Sprache). Das ist die Sprache in die der Auftrag uebersetzt wird</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>Auf_Hat_Orig</td>
  <td>Relationship-Type</td>
  <td>R(Auftrag,Text). Jeder Auftrag hat ein original Text in der Tabelle Text, fuer die neue Auftraege ist das original Text das Text selbst.</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>AuftragAID</td>
  <td>Attribute</td>
  <td>Jeder Auftrag hat eine eindeutige ID im System</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>AuftragOTID</td>
  <td>Attribute</td>
  <td>Die ID vom original Text, von der Tabelle Text</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>AuftragNTID</td>
  <td>Attribute</td>
  <td>eine neues Text wird im System in der Tabelle Text mit der neuen Spracht angelegt.</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>AuftragDatum</td>
  <td>Attribute</td>
  <td>das Datum des
  Auftrages</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>AuftragNID</td>
  <td>Attribute</td>
  <td>das ist die Person (PID), die dieser Auftrag beauftragt</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>AuftragTransDatum</td>
  <td>Attribute</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>AuftragBisDatum</td>
  <td>Attribute</td>
  <td>bis wann soll das
  Text uebersetzt werden (letzter Termin fuer die Uebsetzung)</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>AdressePID</td>
  <td>Attribute</td>
  <td>die Person ID fuer eine Adresse in der Tabelle Adresse</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>AdresseLand</td>
  <td>Attribute</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>AdresseStadt</td>
  <td>Attribute</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>AdresseTel</td>
  <td>Attribute</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td><b>B</b></td>
  <td>BankKonto</td>
  <td>Entity-Type</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>BankKontoPID</td>
  <td>Attribute</td>
  <td>BankKontoPID = PersonPID</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>BankKontoBank</td>
  <td>Attribute</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>BankKontoBLZ</td>
  <td>Attribute</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>BankKontoKontoNr</td>
  <td>Attribute</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td><b>F</b></td>
  <td>Filetype</td>
  <td>Entity-Type</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>FiletypeFID</td>
  <td>Attribute</td>
  <td>eine eindeutige ID fuer jedes Filetype</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>FiletypePRGID</td>
  <td>Attribute</td>
  <td>FiletypePRGID = ProgrammPRGID</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>FiletypeType</td>
  <td>Attribute</td>
  <td>doc, txt, rtf…..</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>FiletypeSort</td>
  <td>Attribute</td>
  <td>Systemintern, fuer Sortierung der Filetypen</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td><b>K</b></td>
  <td>Kategorie</td>
  <td>Entity-Type</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>Konto</td>
  <td>Entity-Type</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>KontoPID</td>
  <td>Attribute</td>
  <td>KontoPID = PersonPID</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>KontoKontoNr</td>
  <td>Attribute</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>KontoName</td>
  <td>Attribute</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>KontoType</td>
  <td>Attribute</td>
  <td>System oder Bankkonto</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td><b>O</b></td>
  <td>Optionen</td>
  <td>Entity-Type</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>OptionenPID</td>
  <td>Attribute</td>
  <td>OptionenPID = PersonPID</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>OptionenSprachGUI </td>
  <td>Attribute</td>
  <td>die Sprache der www-Seiten</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>OptionenPublicEmail </td>
  <td>Attribute</td>
  <td>ob die email veroeffentlichen darf oder nicht</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>OptionenSecureGUI </td>
  <td>Attribute</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>OptionenMutterSprache</td>
  <td>Attribute</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td><b>P</b></td>
  <td>Person</td>
  <td>Entity-Type</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>Programm</td>
  <td>Entity-Type</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>Per_Besitzt_Konto</td>
  <td>Relationship-Type</td>
  <td>R(Person,Bank). Jede Person kann ein Konto im System besitzen fuer die Finanzierungszwecke.</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>Per_Hat_Opt</td>
  <td>Relationship-Type</td>
  <td>R(Person,Optionen).
  Jede Person hat seine eigene Optionen</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>Per_Hat_Adr</td>
  <td>Relationship-Type</td>
  <td>R(Person,Adresse).
  Jede Person hat eine Adresse.</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>Per_Hat_Prog</td>
  <td>Relationship-Type</td>
  <td>R(Person,Programm).Jede Person besitzt (mindestens) ein Programm.</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>Per_Beherrscht_Spr</td>
  <td>Relationship-Type</td>
  <td>R(Person,Sprache). Jede Person benutzt eine bestimmte Sprache fuer die Seiten(www-Seiten). Der &Uuml;bersetzer kann von einer Sprache i<span style='display:none'>n einer anderen Sprache uebersetzen.</span></td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>Per_Beherrscht_Kat</td>
  <td>Relationship-Type</td>
  <td>R(Person,Kategorie). Ein Uebersetzer kennt sich in verschiedene Kategorien aus.</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>Per_Uebersetzt_Auf</td>
  <td>Relationship-Type</td>
  <td>R(Person,Auftrag). Der Uebersetzer uebersetzt einen Auftrag</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>Prog_Kennt_Type</td>
  <td>Relationship-Type</td>
  <td>R(Programm,Filetye). Jedes Programm kennt versiedene Filetypen</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>PersonPID</td>
  <td>Attribute</td>
  <td>Jede Person hat eine eindeutige ID im System</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>PersonKennung</td>
  <td>Attribute</td>
  <td>Das ist die Kennung, mit der man sich einlogen kann</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>PersonName</td>
  <td>Attribute</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>PersonVorname</td>
  <td>Attribute</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>PersonSex</td>
  <td>Attribute</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>PersonEmail</td>
  <td>Attribute</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>PersonPassword </td>
  <td>Attribute</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>PersonStatus</td>
  <td>Attribute</td>
  <td>Ob eine Person gesperrt ist oder nicht</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>PersonAdminlevel </td>
  <td>Attribute</td>
  <td>0..9, was kann eine Person im System machen. Zugriffs rechte der Person</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>PersonPunkte</td>
  <td>Attribute</td>
  <td>fuer jede Uebersetzung eines Auftrages gibt es Punkte das ist wichtig fuer die Finanzierung des Systems (also fuer die weitere Entwickl<span style='display:none'>ung des Systems).</span></td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>PersonUebersetzer </td>
  <td>Attribute</td>
  <td>0 oder 1, ob eine Person ein Uebersetzer ist oder nicht</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>ProgrammPRGID</td>
  <td>Attribute</td>
  <td>eine eindeutige ID fuer jedes Programm</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>ProgrammVersion </td>
  <td>Attribute</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>ProgrammName</td>
  <td>Attribute</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>ProgrammPacker </td>
  <td>Attribute</td>
  <td>ob da Programm ein Packer ist oder nicht(0 oder 1)</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>ProgrammSort</td>
  <td>Attribute</td>
  <td>Systemintern, fuer Sortierung der Programme</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td><b>S</b></td>
  <td>Sprache</td>
  <td>Entity-Type</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>SystemKonto</td>
  <td>Entity-Type</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>SpracheSID</td>
  <td>Attribute</td>
  <td>Eine Eindeutige ID fuer jede Sprache im System</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>SpracheName</td>
  <td>Attribute</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>SpracheAbkuerzung </td>
  <td>Attribute</td>
  <td>abkuerzung fuer die Sprache(z.B:de fuer deutsch)</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>SpracheEthnoCode </td>
  <td>Attribute</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>SpracheSort</td>
  <td>Attribute</td>
  <td>Systemintern, fuer Sortierung der Sprachen</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>SystemKontoPID </td>
  <td>Attribute</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>SystemKontoPunkte </td>
  <td>Attribute</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>SystemKontoGuthaben</td>
  <td>Attribute</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td><b>T</b></td>
  <td>Text</td>
  <td>Entity-Type</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>Txt_Hat_Spr</td>
  <td>Relationship-Type</td>
  <td>R(Text,Sprache). Jedes Text liegt in einer Sprache vor.</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>Txt_Hat_Kat</td>
  <td>Relationship-Type</td>
  <td>Jedes Text hat eine Kategorie.</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>TextTID</td>
  <td>Attribute</td>
  <td>Jedes Text im System
  hat eine eindeutige ID</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>TextOTID</td>
  <td>Attribute</td>
  <td>Das ist die ID vom original Text, falls kein original Text vorhanden ist, dann ist TID = OTID</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>TextTitel</td>
  <td>Attribute</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>TextAbstract</td>
  <td>Attribute</td>
  <td>Eine kleine Beschreibung des Textes</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>TextDatum</td>
  <td>Attribute</td>
  <td>wann wurde das Text gespeichert im System</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>TextLaenge</td>
  <td>Attribute</td>
  <td>die Laenge des Textes(fuer die Finanzierung des Systems</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>TextStatus</td>
  <td>Attribute</td>
  <td>ob ein Text ferig, in der Arbeit oder offen ist.</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>TextSID</td>
  <td>Attribute</td>
  <td>die Sprache des Textes</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>TextKID</td>
  <td>Attribute</td>
  <td>die Kategorie des Textes</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>TextFID</td>
  <td>Attribute</td>
  <td>Filetype des Textes</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>TextAutor</td>
  <td>Attribute</td>
  <td>die Person, die diese Text zur uebersetzung beauftragt hat</td>
 </tr>
</table>
<table>
 <tr>
  <td colspan=2>Abkuerzungen:</td>
  <td colspan=2></td>
 </tr>
 <tr>
  <td>1.</td>
  <td>PID</td>
  <td>Person ID</td>
  <td></td>
 </tr>
 <tr>
  <td>2.</td>
  <td>OTID</td>
  <td>Original Text ID</td>
  <td></td>
 </tr>
 <tr>
  <td>3.</td>
  <td>FID</td>
  <td>Filetype ID</td>
  <td></td>
 </tr>
 <tr>
  <td>4.</td>
  <td>KID</td>
  <td>Kategorie ID</td>
  <td></td>
 </tr>
 <tr>
  <td>5.</td>
  <td>SID</td>
  <td>Sprache ID</td>
  <td></td>
 </tr>
 <tr>
  <td>6.</td>
  <td>PRGID</td>
  <td>Programm ID</td>
  <td></td>
 </tr>
 <tr>
  <td>7.</td>
  <td>AID</td>
  <td>Auftrag ID</td>
  <td></td>
 </tr>
 <tr>
  <td>8.</td>
  <td>NTID</td>
  <td>Neue Text ID</td>
  <td></td>
 </tr>
 <tr>
  <td>9.</td>
  <td>NID</td>
  <td>Nutzer ID</td>
  <td></td>
 </tr>
 <tr>
  <td>10.</td>
  <td>TID</td>
  <td>Text ID</td>
  <td></td>
 </tr>
</table>
</p>
<p><a href="buch_3.php">Buch 3</a></p>
<a href="Inhalt.php">Inhaltsverzeichnis</a><br>

<?
include("$CFG->templatedir/footer.php");
?>
