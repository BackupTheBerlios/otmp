<?
/*
 * Task Form
 *
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/templates/maketask_form.inc,v $
 * $Revision: 1.2 $
 * $Id: maketask_form.inc,v 1.2 2001/12/18 23:29:22 hifix Exp $
 *
 * To Do:
 * - LOcalisation
 * - make Textdetails as include ?!
 *
 * Variables:
 * id   - DokumentID to Translate
 */
 ?>

<?
 $d = sql_getDocument($id);
?>
<!-- Dokument Datas --->
<!-- ENd Dokument datas -->
<? if (isset($errors)) { ?>
<p class="warning">Es ist ein Fehler aufgetreten. Bitte überprüfen Sie die markierten 
 Felder bitte nochmals.</p>
<? } else { ?>
<p> Um einen &Uuml;bersetzungsauftrag f&uuml;r den Text zu erstellen, f&uuml;llen 
  Sie bitte folgendes Formular aus.</p>
<? } ?>
<form method="post" action="<?=$CFG->wwwroot?>/docs/task.php">
  <input type="hidden" name="textID" value="<?=nvl($d->textID)?>">
  <input type="hidden" name="title" value="<?=nvl($d->title)?>">
  <input type="hidden" name="abstract" value="<?=nvl($d->abstract)?>">
  
  <table width="100%" cellspacing="1" cellpadding="2" border="1">
    <tr bgcolor="#dddddd"> 
      <td colspan="3"><b>Angaben zur &Uuml;bersetzung</b></td>
    </tr>
    <tr> 
      <td bgcolor="#eeeeee" <?=isset($errors->lang)?'class="warning"':''?>>&Uuml;bersetzen 
        in </td>
      <td> 
        <select name="lang">
          <option value="" <?=isempty($frm['lang'],0)?'selected':''?>>bitte Sprache 
          wählen</option>
          <?=db_listbox(sql_SQL4LangIdAndName(),nvl($frm['lang']))?>
        </select>
      </td>
      <td>bitte hier die Sprache in die der Text &uuml;bersetzt werden soll ausw&auml;hlen</td>
    </tr>
    <tr> 
      <td bgcolor="#eeeeee">ggf. Frist</td>
      <td>
        <input type="text" name="frist" value="JJJJ-MM-TT">
      </td>
      <td><i>optionale Angabe</i><br>
        Datum bis wann die &Uuml;bersetzung fertig sein sollte.<br>
        Folgendes Format sollten Sie verwenden: <b>JJJJ-MM-TT</b></td>
    </tr>
    <tr> 
      <td colspan="2"> 
        <div align="center"> 
          <input type="submit" name="addTask" value="Auftrag abschicken">
        </div>
      </td>
      <td> Klicken sie <a href="<?=nvl($session['wantsurl'],"$CFG->wwwroot/main.php")?>?otid=<?=nvl($id,0)?>">keinen weiteren Auftrag eingeben</a> um abzubrechen.</td>
    </tr>
  </table>
</form>