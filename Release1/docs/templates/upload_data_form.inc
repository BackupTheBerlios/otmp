<?
/*
 * Dokument Uploaddata Form
 *
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/templates/upload_data_form.inc,v $
 * $Revision: 1.3 $
 * $Id: upload_data_form.inc,v 1.3 2001/12/09 21:18:12 hifix Exp $
 *
 * To Do:
 * - LOcalisation
 * - Dropdowns fill with DB Content
 */
 ?>
<? if (isset($errors)) { ?> 
<p class="warning">Es ist ein Fehler aufgetreten. Bitte überprüfen Sie die markierten 
 Felder bitte nochmals.</p>
<? } else { ?>
<p>
Die folgenden Angaben brauchen wir um den Text in das System stellen zu können.
</p>
<? } ?>

<form name="" method="post" action="<?=me()?>" enctype="multipart/form-data">
  <table width="100%" cellspacing="1" cellpadding="2" border="1">
    <tr> 
      <td bgcolor="#dddddd" colspan="3"><b>Angaben zum Text</b></td>
    </tr>
    <tr> 
      <td bgcolor="#eeeeee" <?=isset($errors->title)?'class="warning"':''?>>Titel</td>
      <td> 
        <input type="text" name="title" size="50" maxlength="150" value="<?=nvl($frm['title'])?>">
      </td>
      <td>W&auml;hlen Sie bitte einen Aussagekr&auml;ftigen Titel, 
        der f&uuml;r Ihren Text immer angezeigt wird.</td>
    </tr>
    <tr> 
      <td bgcolor="#eeeeee" <?=isset($errors->abstract)?'class="warning"':''?>>Kurzbeschreibung</td>
      <td> 
        <textarea name="abstract" wrap="VIRTUAL" cols="40" rows="5"><?=nvl($frm['abstract'])?></textarea>
      </td>
      <td>Geben Sie hier bitte eine Kurze Zusammenfassung oder Inhaltsangabe zu 
        Ihrem Text ein.</td>
    </tr>
    <tr> 
      <td bgcolor="#eeeeee" <?=isset($errors->lang)?'class="warning"':''?>>Language</td>
      <td> 
        <select name="lang">
          <option value="" <?=isempty($frm['lang'],0)?'selected':''?>>bitte Sprache wählen</option>
          <?=db_listbox(sql_SQL4LangIdAndName(),nvl($frm['lang']))?> 
        </select>
      </td>
      <td>Die Sprache des Textes.</td>
    </tr>
    <tr> 
      <td bgcolor="#eeeeee" <?=isset($errors->cat)?'class="warning"':''?>>Kategorie</td>
      <td>
        <select name="cat">
          <option value="" <?=isempty($frm['cat'],0)?'selected':''?>>bitte w&auml;hlen</option>
          <?=db_listbox(sql_SQL4KatNameAndID(),nvl($frm['cat']))?> 
        </select>
      </td>
      <td>Welches Fachvokabular ist n&ouml;tig um diesen Text zu verstehen/&uuml;bersetzen 
        zu k&ouml;nnen</td>
    </tr>
    <tr> 
      <td colspan="3" bgcolor="#dddddd"><b>technische Angaben zur Datei</b></td>
    </tr>
    <tr> 
      <td <?=isset($errors->file)?'class="warning"':''?> bgcolor="#eeeeee">Datei</td>
      <td> 
        <input type="file" name="file" value="<?=nvl($frm['file'])?>">
      </td>
      <td>Geben Sie den Dateipfad auf Ihrem Computer ein, oder w&auml;hlen Sie 
        mit &lt;Browse&gt; das File auf hrem Computer aus.</td>
    </tr>
    <tr> 
      <td bgcolor="#eeeeee" <?=isset($errors->filetyp)?'class="warning"':''?>>Dateiformat</td>
      <td> 
        <select name="filetyp">
          <option value="" <?=isempty($frm['filetyp'],0)?'selected':''?>>bitte Programm w&auml;hlen</option>
          <?=db_listbox(sql_SQL4PrgIdAndName(),nvl($frm['filetyp']))?> 
        </select>
      </td>
      <td>W&auml;hlen Sie das Programm aus, f&uuml;r dem Sie den Text erstellt/gespeichert 
        haben. </td>
    </tr>
    <tr> 
      <td bgcolor="#eeeeee">Anzahl der W&ouml;rter</td>
      <td> 
        <input type="text" name="length" value="<?=nvl($frm['length'])?>">
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