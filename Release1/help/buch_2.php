<?
include "application.php";
$DOC_TITLE = "Dokumentation";
include("$CFG->templatedir/header.php");
?>
<h1>OTMP Buch 2</h1>
<h2>Anwenderhandbuch</h2>

<ol>
<li><A href="#Anmelden">Anmelden</A>
<li><A href="#Einloggen">Einloggen</A>
<li><A href="#UserDatenverwalten">User Daten verwalten</A>
<li>Texte hochladen
<li>Texte runterladen
<li><A href="#Texte_suchen">Texte suchen</A>
</ol>

<a href="Inhalt.php">Inhaltsverzeichnis</a><br>

<A name=Anmelden></A><hr>
<h3>1&nbsp;&nbsp;&nbsp;&nbsp;Anmelden</h3>

<h4>1.1 Sprache ausw&auml;hlen</h4>
<p>Nachdem Sie die OTMP Seite aufgerufen haben (<A href="http://otmp.berlios.de/">http://otmp.berlios.de/</A>) w&auml;hlen Sie eine Sprache aus, in der Sie sich die nun folgenden Seiten anschauen wollen.</p>

<p align="center"><a name="2abb1"></a><img src="<?=$CFG->imagedir?>/docs/1.jpg" alt="1.jpg"><br>Abb. 1</p>

<h4>1.2 Anmelde Seite aufrufen</h4>
<p>Auf der rechten Seite der <A href="/main.php?langs=de">Hauptseite</A>, sehen Sie ein Menu, wo Sie den Punkt <A href="/user/signup.php">Neu Anmelden</A> anklicken k&ouml;nnen, um sich als neuer Benutzer am System anzumelden.</p>

<p align="center"><a name="2abb2"></a><img src="<?=$CFG->imagedir?>/docs/2.jpg" alt="2.jpg"><br>Abb. 2</p>

<h4>1.3 Angaben zu Ihrer Person machen</h4>
<p>F&uuml;llen Sie das nun vorliegende Formular aus. Hilfestellungen zu den einzelnen Punkten finden Sie jeweils direkt neben den Formularfeldern.</p>

<p align="center"><a name="2abb3"></a><img src="<?=$CFG->imagedir?>/docs/3.jpg" alt="3.jpg"><br>Abb. 3</p>

<h4>1.4 Anmeldung abschliessen</h4>
<p>Wenn Sie alle Felder richtig ausgef&uuml;llt haben, erscheint eine Anmeldebest&auml;tigung. Hier sehen Sie nocheinmal Ihren Benutzernamen und Ihr Passwort. Schreiben Sie beide am besten gleich auf. Mit Ihren Zugangsdaten k&ouml;nnen Sie sich nun <A href="#Einloggen">einloggen</A>.</p>

<A name=Einloggen></A><hr>
<h3>2&nbsp;&nbsp;&nbsp;&nbsp;Einloggen</h3>

<h4>2.1 Einlogg Seite aufrufen</h4>
<p>Auf der <A href="/main.php">Hauptseite</A> von OTMP finden Sie im Menu auf der linken Seite einen Verweiss auf die <A href="/user/login.php">Einlogg-Seite</A>. Auf allen anderen Seiten finden Sie diesen Verweis in der Unterzeile der Seite (siehe <a href="#2abb1">Abb. 1</a>).</p>

<h4>2.2 Einloggen</h4>
<p>Geben Sie hier Ihre Zugangsdaten an und klicken Sie anschliessend auf den zugeh&ouml;rigen Knopf. Sie sind nun eingelogged und k&ouml;nnen OTMP in vollem Umfang nutzen.</p>

<p align="center"><a name="2abb4"></a><img src="<?=$CFG->imagedir?>/docs/4.jpg" alt="4.jpg"><br>Abb. 4</p>

<h4>2.3 Passwort vergessen</h4>
<p>Falls Sie Ihr Passwort vergessen haben sollten, finden Sie auf der <A href="/user/login.php">Einlogg-Seite</A> einen Verweiss zu entsprechender Hilfestellung (siehe <a href="#2abb4">Abb. 4</a>). <A href="/user/forgot_password.php">Hier</A> k&ouml;nnen Sie die E-mail Adresse angeben, die Sie auch bei der <A href="#Anmelden">Anmeldung</A> an das System angegeben haben, und Ihr Passwort wird Ihnen dann automatisch zugeschickt.</p>

<A name=UserDatenverwalten></A><hr>
<h3>3&nbsp;&nbsp;&nbsp;&nbsp;User Daten verwalten</h3>

<h4>3.1 "Ihre Daten" Seite aufrufen</h4>
<p>Um auf die "Ihre Daten" Seite zu gelangen, muss man zun&auml;chst <A href="#Einloggen">eingeloggt</A> sein. Danach muss man auf die <A href="/main.php">Hauptseite</A>, um dann im Menu auf der linken Seite den Verweis "<A href="/user/user_data.php">Ihre Daten</A>" anzuklicken (siehe <a href="#2abb1">Abb. 1</a>). Die &Uuml;bersicht &uuml;ber Ihre Daten ist in vier Teile untergliedert: "Angaben zu Ihrer Person", "Ihr Benutzerpasswort", ... von denen Sie aber zun&auml;chst</p>

<p align="center"><a name="2abb5"></a><img src="<?=$CFG->imagedir?>/docs/5.jpg" alt="5.jpg"><br>Abb. 5</p>

<h4>3.2 Angaben zu Ihrer Person &auml;ndern</h4>
<p>Die oberste Tabelle auf der "<A href="/user/user_data.php">Ihre Daten</A>" Seite beinhaltet Angaben zu Ihrer Person wie Name, Vorname und E-mail Adresse. Durch klicken auf den "&auml;ndern" Link gelangen Sie auf die <A href="/user/changepersonaldata.php">Seite</A>, wo Sie &Auml;nderungen vornehmen k&ouml;nnen. &Auml;ndern Sie hier Ihre Daten. Als Hilfestellung k&ouml;nnen Sie sich auf den Text neben den Formularfeldern beziehen und klicken Sie anschliessend auf den "Daten &auml;ndern" Knopf. Wenn Sie bei Ihrer Eingabe keine Fehler gemacht haben werden Ihre neuen Daten &uuml;bernommen und Sie gelangen anschliessend wieder zu der "<A href="/user/user_data.php">Ihre Daten</A>" Seite und k&ouml;nnen hier weitere Daten&auml;nderungen vornehmen.</p>

<p align="center"><a name="2abb6"></a><img src="<?=$CFG->imagedir?>/docs/6.jpg" alt="6.jpg"><br>Abb. 6</p>

<h4>3.3 Passwort &auml;ndern</h4>
<p>Die zweite Tabelle auf der "<A href="/user/user_data.php"> Ihre Daten</A>" Seite bietet einen Link zur "<A href="/user/changepassword.php"> Passwort &Auml;ndern</A>" Seite an. Diesen Link finden Sie auch auf allen anderen Seiten in der Fusszeile. Die erforderlichen Eingaben sind alle neben den einzelnen Formularfeldern erkl&auml;rt. Wenn Sie Ihr neues Passwort korrekt eingegeben haben klicken Sie auf den "Passwort &auml;ndern" Knopf und Sie gelangen wieder zur "<A href="/user/changepassword.php">Ihre Daten</A>" Seite.</p>

<p align="center"><a name="2abb7"></a><img src="<?=$CFG->imagedir?>/docs/7.jpg" alt="7.jpg"><br>Abb. 7</p>

<h4>3.4 Zusatzangaben f&uuml;r &Uuml;bersetzer</h4>
<p>Wenn Sie <b>OTMP</b> auch als &Uuml;bersetzer nutzen wollen, so k&ouml;nnen Sie zus&auml;tzliche Angaben machen, die Ihnen sp&auml;ter das Auffinden von Ihren Angaben entsprechenden Texten und den zugeh&ouml;rigen Formaten erleichtert.</p>
<p>Wenn Sie diese Angaben zum ersten Mal machen, so m&uuml;ssen Sie auf den entsprechenden <A href="/user/user_data.php?newtrans=1">Link</A> unter den Tabellen "Angaben zu Ihrer Person" und "Passwort &auml;ndern" klicken. Es erscheinen hiernach zwei weitere Tabellen (anders als in <a href="#2abb5">Abb. 5</a>), wo Sie Ihnen zur Verf&uuml;gung stehende Textverarbeitungsprogramme ausw&auml;hlen k&ouml;nnen, sowie Angaben zu Ihren &Uuml;bersetzerf&auml;higkeiten machen k&ouml;nnen.</p>

<h4>3.5 Angaben von Textverarbeitungsprogrammen</h4>
<p>Die Angabe von Textverarbeitungsprogrammen erleichtert Ihnen als &Uuml;bersetzer den Umgang mit <b>OTMP</b>. Sie bekommen nur die Texte angezeigt, die in einem Format vorliegen, dass Sie auch tats&auml;chlich lesen k&ouml;nnen. Um diese Daten auszuw&auml;hlen m&uuml;ssen Sie zun&auml;chst die Zusatzangaben f&uuml;r &Uuml;bersetzer Ansicht <A href="#Zusatzangaben_f%FCr_%DCbersetzer">aktivieren</A>. Dann klicken Sie in der entsprechenden Tabelle auf den "&auml;ndern" Link.</p>
<p>W&auml;hlen Sie nun in dem <A href="/user/changeuserprogdata.php">Formular</A> ein oder mehrere Programme, sowie ein oder mehrere Packer aus. Klicken Sie auf "Daten &auml;ndern", Ihre Angaben werden dann &uuml;bernommen und Sie gelangen zur&uuml;ck auf die "<A href="/user/user_data.php">Ihre Daten</A>" Seite.</p>
<p>Zum L&ouml;schen von schon Angaben zu Textverarbeitungsprogrammen, m&uuml;ssen Sie die beim Aufruf des Formulars vorselektierten H&auml;ckchen einfach deaktivieren.</p>

<p align="center"><a name="2abb8"></a><img src="<?=$CFG->imagedir?>/docs/8.jpg" alt="8.jpg"><br>Abb. 8</p>

<h4>3.6 Angabe zu &Uuml;bersetzerf&auml;higkeiten</h4>
<p>Wenn Sie als &Uuml;bersetzer Ihre Sprach und Kategorien Kenntnisse angeben, so werden Ihnen bei Anzeige von zu &uuml;bersetzenden Texten nur die Texte angezeigt, die Sie auch &uuml;bersetzen k&ouml;nnen bzw. wollen. Um diese Daten auszuw&auml;hlen m&uuml;ssen Sie zun&auml;chst die Zusatzangaben f&uuml;r &Uuml;bersetzer Ansicht <A href="file:///home/alexgn/user_doc.html#Zusatzangaben_f%C3%BCr_%C3%9Cbersetzer">aktivieren</A>. Dann klicken Sie in der entsprechenden Tabelle auf den "&auml;ndern" Link. Sie sehen nun zwei <A href="/user/changetranscap.php">Formulare</A> mit denen Sie Ihre bisherigen Daten &auml;ndern bzw. neue Daten hinzuf&uuml;gen k&ouml;nnen. Im oberen Formular k&ouml;nnen Sie gemachte Angaben l&ouml;schen w&auml;hrend Sie im unteren Formular neue Angaben hinzuf&uuml;gen k&ouml;nnen.</p>
<p>Beim L&ouml;schen von Daten m&uuml;ssen Sie die entsprechenden "Von", "Nach", "Kategorie" Kombination selektieren und den "Daten l&ouml;schen" Knopf dr&uuml;cken. Sie gelangen dann wieder auf die "<A href="/user/user_data.php">Ihre Daten</A>" Seite.</p>
<p>Beim Hinzuf&uuml;gen neuer "Von", "Nach", "Kategorie" Kombinationen m&uuml;ssen Sie darauf achten, dass Sie jeweils in jeder Liste nur einen Wert ausw&auml;hlen k&ouml;nnen. Wenn Sie mehrere Kombinationen ausw&auml;hlen wollen, so m&uuml;ssen Sie das Formular mehrmals aufrufen. Falls Ihre Angaben das richtige Format haben so gelangen Sie wieder auf die "<A href="file:///user/user_data.php">Ihre Daten</A>" Seite. Falls Ihre Eingaben fehlerhaft waren wird Ihnen das Problem im oberen Teil der Seite beschrieben und die entsprechenden Formularfelder werden farbig hervorgehoben.</p>

<p align="center"><a name="2abb9"></a><img src="<?=$CFG->imagedir?>/docs/9.jpg" alt="9.jpg"><br>Abb. 9</p>

<A name=Texte_suchen></A><hr>
<h3>6&nbsp;&nbsp;&nbsp;&nbsp;Texte suchen</h3>

<h4>6.1 Suchformular aufrufen</h4>
<p>Um das Suchformular aufzurufen m&uuml;ssen Sie entweder auf der <A href="/main.php">Hauptseite</A> im Menu an der linken Seite auf Dokument suchen oder auf jeder anderen Seite in der Fusszeile auf "<A href="/docs/search.php">Suche</A>" klicken.</p>

<p align="center"><a name="2abb10"></a><img src="<?=$CFG->imagedir?>/docs/10.jpg" alt="10.jpg"><br>Abb. 10</p>

<h4>6.2 Suche formulieren</h4>
<p>Auf der "<A href="/docs/search.php">Such Seite</A>" (siehe <a href="#2abb10_">Abb. 10</a>) erscheint ein Formular, das drei Angaben ben&ouml;tigt. Zun&auml;chst ein Stichwort nach dem gesucht werden soll. Hierbei m&uuml;ssen Sie nicht auf Gross- und Kleinschreibung achten. Das Stichwort kann auch Teil eines Wortes sein. Wenn Sie beispielsweise nach dem Wort "Brief" suchen, erhalten Sie als m&ouml;gliches Suchergebniss "<B>Brief</B>kasten", "<B>Brief</B>zentrum", "ver<B>brief</B>en", "<B>brief</B>", "<B>BRIEF</B>" etc.</p>
<p>Als zweites m&uuml;ssen Sie bestimmen wo nach diesem Stichwort gesucht werden soll. Entweder im Titel des Textes oder im Abstrakt, d.h. in der Kurzbeschreibung des jeweiligen Textes.</p>
<p>Die letzte Angabe bezieht sich auf die Angabe der Sprache des zu suchenden Textes.</p>
<p>Wurden alle Angaben korrekt gemacht, muss man auf den "Suche starten" Knopf dr&uuml;cken und es erscheint eine tabelarische Darstellung aller gefundenen Dokumente. Wenn man den Dokumenten Namen anklickt, so gelangt man auf eine Seite, die die Details zum jeweiligen Text anzeigt.</p>

<p align="center"><a name="2abb11"></a><img src="<?=$CFG->imagedir?>/docs/11.jpg" alt="11.jpg"><br>Abb. 11</p>

<a href="Inhalt.php">Inhaltsverzeichnis</a><br>

<?
include("$CFG->templatedir/footer.php");
?>
