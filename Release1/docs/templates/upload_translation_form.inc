<?
/*
 * Dokument Translation Upload Form
 *
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/templates/upload_translation_form.inc,v $
 * $Revision: 1.1 $
 * $Id: upload_translation_form.inc,v 1.1 2002/01/30 01:40:51 hifix Exp $
 *
 * needs: $id - TextID for Upload / change
 * To Do:
 * - LOcalisation
 */
 
 $d = getDocumentDetails($id,1);
 
?>
<? if (isset($errors)) { ?> 
<p class="warning">Es ist ein Fehler aufgetreten. Bitte überprüfen Sie die markierten 
 Felder bitte nochmals.</p>
<? } else { ?>
<p>
Die folgenden Angaben brauchen wir um den Text in das System stellen zu können.
</p>
<? } ?>

<form method="post" action="<?=me()?>" enctype="multipart/form-data">
  <input type="hidden" name="id" value="<?=$d->textID?>">
  <table width="100%" cellspacing="1" cellpadding="2" border="1">
    <tr> 
      <td bgcolor="#dddddd" colspan="3"><b>Angaben zum Text</b></td>
    </tr>
    <tr> 
      <td bgcolor="#eeeeee">Sprache</td>
      <td><b><?=ov($d->language)?></b></td>
      <td>Die Sprache des &Uuml;bersetzten Textes.</td>
    </tr>
    <tr> 
      <td bgcolor="#eeeeee">Original Titel </td>
      <td> 
        <?=ov($d->original->title)?>
      </td>
      <td>Titel des Textes in Originalsprache.</td>
    </tr>
    <tr> 
      <td bgcolor="#eeeeee">&uuml;bersetzter Titel</td>
      <td> 
        <input type="text" name="title" size="50" maxlength="150" value="<? if(empty($d->title) or ($d->title == $d->original->title)) { 
             echo nvl($frm['title']);
           } else {
             echo $d->title;
           }
        ?>">
      </td>
      <td>Bitte geben Sie hier die &Uuml;bersetzung des Titels ein.</td>
    </tr>
    <tr> 
      <td bgcolor="#eeeeee">Original<br>Kurzbeschreibung </td>
      <td> 
        <?=ov($d->original->abstract)?>
      </td>
      <td>Die Kurzbeschreibung des Textes in Originalsprache.</td>
    </tr>
    <tr> 
      <td bgcolor="#eeeeee">&uuml;bersetzte<br> Kurzbeschreibung</td>
      <td> 
        <textarea name="abstract" wrap="VIRTUAL" cols="40" rows="5"><? if(empty($d->abstract) or ($d->abstract == $d->original->abstract)) { 
             echo nvl($frm['abstract']);
           } else {
             echo $d->abstract;
           }
        ?></textarea>
      </td>
      <td>Geben Sie hier bitte die &Uuml;bersetzung der Kurzbeschreibung des Textes 
        ein. </td>
    </tr>
    <tr> 
      <td colspan="2"> 
        <div align="center">
          <input type="submit" name="change" value="Daten &auml;ndern">
        </div>
      </td>
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td colspan="3" bgcolor="#dddddd"><b>technische Angaben zur &Uuml;bersetzung</b></td>
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
          <option value="" <?=isempty($frm['filetyp'],0)?'selected':''?>>bitte 
          Programm w&auml;hlen</option>
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
          <input type="submit" name="upload" value="Übersetzung abschicken">
        </div>
      </td>
      <td>&nbsp;</td>
    </tr>
  </table>
</form>