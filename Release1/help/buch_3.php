<?
include "application.php";
$DOC_TITLE = "Dokumentation";
include("$CFG->templatedir/header.php");
?>
<h1>OTMP Buch 3</h1>
<h2>Entwicklerdokumentation</h2>

<ol>
<li>System-Installtion
<li>Erweiterbarkeit des Systems
<li>Probleme
<li>Komponenten-Austausch
<li><a href="buch_3_glossar.php">EER Diagramm und Datenbankglossar</a>
</ol>

<a href="Inhalt.php">Inhaltsverzeichnis</a><br>

<hr>
<h3>System-Installation</h3>

<p>Um das System zu installieren, braucht man folgende Software:</p>

<ol>
<li>php4<br>unter der adresse (www.php.net) kann man php herunterladen.
<li>Apache-Server<br>unter der adresse (www.apache.org) kann man das Apache-Server herunterladen.
<li>MySQL<br>und unter der Adresse (www.mysql.com) kann Mann MySQL herunterladen.
</ol>

<p>Nachdem man diese Software heruntergeladen hat und sie im Rechner installiert hat, muss man die Pfade in der datei (application.php)
anpassen. Man muss die Variablen </p>
<ol>
<li>$CFG->wwwroot = "<i>hier muss angegeben werden, wo das System gespeichert ist!!</i>"
<li>$CFG->dirwww = "<i>hier muss angegeben werden, wo das System gespeichert ist!!</i>"
</ol>
<p>anpassen.</p>

<p>Wenn das alles geklappt hat, dann muss das System laufen, also ein Internet-Browser oeffnen, dann die Datei (index.htm) oeffnen.</p>

<h3>Erweiterbarbarkeit des Systems</h3>

<p>Das System kann in den folgenden Punkten erweitert werden:</p>

<ol>
<li>Mehrsprachigkeit<br>
Bis jetzt unterstuetzt unser System nur die deutsche Sprache, da das System fuer die Entwicklungslaender gedacht ist, ist es sinnvoll das System um ein paar Sprachen (Entwicklungslaendersprachen) zu erweitern.
<li>Administarator-Typen oder Stufen<br>
Bis jetzt haben wir ein Attribute (Adminlevel)in der Tabelle Person angelegt, aber diese Information wurde bis jetzt nicht benutzt, man kann ein Konzept fuer die Administration des Systems konzipieren und anhand dessen das System weiter entwecklen.<br>
   Z.B: Adminlevel 0 darf alles im System machen, Personen sperren und entsperren. Auftraege oder Texte loeschen. etc...<br>
        Adminlevel 1 darf die Auftraege/Texte ansehen aber er darf nichts aendern.<br>
        Adminlevel 2 etc....
<li>Dateiformate<br>
Die Texte, die das System bekommt konvertieren in eine bestimmte Format, die alle Nutzer des Systems lesen koennen (z.B: pdf)
<li>Uebersetzer benachrichtigen<br>
Fuer einen neuen Auftrag, der von der Sprache X nach Y uebersetzt werden soll, sollen alle Uebersetzer, die als Uebersetzer von der Sprache X nach der Sprache Y angemeldet, gefiltert werden und diese Uebersetzer benachrichtigen per mail, dass einen neuen Text fuer sie gibt. 
</ol>

<h3>Probleme</h3>
<ol>
<li>Finanzierung<br>
Wir haben das System hauptsaechlich fuer die Entwicklungslaender entwickelt. Aber wie soll das System finanziert werden? also fuer die Weiterentwicklung des Systems.
<li>Buchstaben/Zeichen Untersuetzung unter Unicode<br>
Nicht alle Buchstaben oder Zeichen der Sprachen kann man durch die Tastatur eingeben, also es gibt Zeichen, die von der uni-Code nicht unterstuetzt. 
<li>Dateiformate<br>
Es gibt viele Dateiformate(txt, doc, pdf...) unser System akziptiert fast alle Dateiformate. Aber es gibt das Problem, dass ein Nutzer ein Auftrag in einer selten bentzten Dateiformat beauftragt, dann wird dieser Auftrag lange in dem System bleiben ohne Uebersetzung.
</ol>

<h3>Komponenten-Austausch</h3>
<p>Wir haben fuer MySQL als Datenbanksystem entschieden, wenn man ein anderes Datenbanksystem benutzen moecht, geht das. Mann muss die Tabellen in das neue Datenbanksystem erstellen. Ein Script fuer das erstellen unsere Datenbank ist in dem Verzeichniss (OTMP/setup/tables.sql). wobei <b>OTMP</b> das Verzeichniss, wo unser System gespeichert ist.</p>

<a href="Inhalt.php">Inhaltsverzeichnis</a><br>

<?
include("$CFG->templatedir/footer.php");
?>
