<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#FFFFFF" text="#000000">
<p>Textupload</p>
<form name="" method="post" action="=me()" enctype="multipart/form-data">
  <table width="100%" cellspacing="1" cellpadding="2">
    <tr> 
      <td bgcolor="#dddddd" colspan="3"><b>Angaben zum Text</b></td>
    </tr>
    <tr> 
      <td height="21">Titel</td>
      <td height="21"> 
        <input type="text" name="title" size="50" maxlength="150">
      </td>
      <td height="21">W&auml;hlen Sie bitte einen Aussagekr&auml;ftigen Titel, 
        der f&uuml;r Ihren Text immer angezeigt wird.</td>
    </tr>
    <tr> 
      <td>Kurzbeschreibung</td>
      <td> 
        <textarea name="abstract" wrap="VIRTUAL" cols="40" rows="5"></textarea>
      </td>
      <td>Geben Sie hier bitte eine Kurze Zusammenfassung oder Inhaltsangabe zu 
        Ihrem Text ein.</td>
    </tr>
    <tr> 
      <td>Language</td>
      <td> 
        <select name="lang">
          <option value="Deutsch">de</option>
        </select>
      </td>
      <td>Die Sprache des Textes.</td>
    </tr>
    <tr> 
      <td bgcolor="#DDDDDD" colspan="3"><b>technische Angaben zur Datei</b></td>
    </tr>
    <tr>
      <td>Datei</td>
      <td>
        <input type="file" name="file">
      </td>
      <td>Geben Sie den Dateipfad auf Ihrem Computer ein, oder w&auml;hlen Sie 
        mit &lt;Browse&gt; das File auf hrem Computer aus.</td>
    </tr>
    <tr> 
      <td>Dateiformat</td>
      <td> 
        <select name="prg">
        </select>
      </td>
      <td>W&auml;hlen Sie das Programm aus, f&uuml;r dem Sie den Text erstellt/gespeichert 
        haben. </td>
    </tr>
    <tr> 
      <td>Anzahl der W&ouml;rter</td>
      <td> 
        <input type="text" name="length">
      </td>
      <td><i>Diese Angabe ist optional.</i><br>
        Geben Sie hier bitte die Anzahl der W&ouml;rter des Textes an, wenn Sie 
        dies wissen.</td>
    </tr>
    <tr> 
      <td colspan="2"> 
        <div align="center"> 
          <input type="submit" name="Submit" value="Text abschicken">
        </div>
      </td>
      <td>&nbsp;</td>
    </tr>
  </table>
</form>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>
