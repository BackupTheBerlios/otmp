<?
/*
 * Dokument Uploaddata Form
 *
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/templates/upload_data_form.inc,v $
 * $Revision: 1.2 $
 * $Id: upload_data_form.inc,v 1.2 2001/12/04 23:58:26 hifix Exp $
 *
 * To Do:
 * - LOcalisation
 * - Dropdowns fill with DB Content
 */
 ?>
 <p>Textupload</p>
<form name="" method="post" action="=me()" enctype="multipart/form-data">
  <table width="100%" cellspacing="1" cellpadding="2" border="1">
    <tr> 
      <td bgcolor="#dddddd" colspan="3"><b>Angaben zum Text</b></td>
    </tr>
    <tr> 
      <td height="21" bgcolor="#eeeeee">Titel</td>
      <td height="21"> 
        <input type="text" name="title" size="50" maxlength="150">
      </td>
      <td height="21">W&auml;hlen Sie bitte einen Aussagekr&auml;ftigen Titel, 
        der f&uuml;r Ihren Text immer angezeigt wird.</td>
    </tr>
    <tr> 
      <td bgcolor="#eeeeee">Kurzbeschreibung</td>
      <td> 
        <textarea name="abstract" wrap="VIRTUAL" cols="40" rows="5"></textarea>
      </td>
      <td>Geben Sie hier bitte eine Kurze Zusammenfassung oder Inhaltsangabe zu 
        Ihrem Text ein.</td>
    </tr>
    <tr> 
      <td bgcolor="#eeeeee">Language</td>
      <td> 
        <select name="lang">
          <option value="Deutsch">de</option>
        </select>
      </td>
      <td>Die Sprache des Textes.</td>
    </tr>
    <tr bgcolor="#dddddd"> 
      <td colspan="3"><b>technische Angaben zur Datei</b></td>
    </tr>
    <tr>
      <td bgcolor="#eeeeee">Datei</td>
      <td>
        <input type="file" name="file">
      </td>
      <td>Geben Sie den Dateipfad auf Ihrem Computer ein, oder w&auml;hlen Sie 
        mit &lt;Browse&gt; das File auf hrem Computer aus.</td>
    </tr>
    <tr> 
      <td bgcolor="#eeeeee">Dateiformat</td>
      <td> 
        <select name="prg">
        </select>
      </td>
      <td>W&auml;hlen Sie das Programm aus, f&uuml;r dem Sie den Text erstellt/gespeichert 
        haben. </td>
    </tr>
    <tr> 
      <td bgcolor="#eeeeee">Anzahl der W&ouml;rter</td>
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