<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/templates/search.inc,v $
 * $Revision: 1.3 $
 * $Id: search.inc,v 1.3 2001/12/18 23:29:22 hifix Exp $
 *
 * Signup Formular
 *
 * To Do:
 * - 
 * - 
 * - 
 */
?> 
<center>
<br>
<? if (isset($errors)) { ?> 
<p class="warning">Es ist ein Fehler aufgetreten. Bitte überprüfen Sie die markierten 
  Felder bitte nochmals.</p>
<? } else { ?> Hier k&ouml;nnen Sie nach einem Dokument suchen.<br>
Hinweise zu den einzelnen Felder stehen rechts daneben. <? } ?> 
<form method="post" action="<?=ME()?>">
  <table cellspacing="0" cellpadding="6" border="1">
    <tr> 
      <td align="left" bgcolor="#CCCCCC" colspan="3"> 
        <b>Angaben zum Dokument</b>
      </td>
    </tr>
    <tr> 
      <td align="right" <?=isset($errors->lastname)?'class="warning"':''?> bgcolor="#DDDDDD"><b>Stichwort im Titel</b></td>
      <td> 
        <input type="text" size="40" name="keywordtitle" value="">
      </td>
      <td>
        Geben Sie hier ein Stichwort ein, nach dem gesucht werden soll! 
      </td>
    </tr>
    <tr>
      <td align="right" bgcolor="#DDDDDD"><b>Suche in</b>
      </td>
      <td>
	<select name="search_in" size="1">
          <option value="TextTitel" selected>Text Titel</option>
          <option value="TextAbstract">Text Abstract</option>
        </select>
      </td>
      <td> 
      </td>
    </tr>
    <tr>
      <td align="right" bgcolor="#DDDDDD"><b>Sprache</b>
      </td>
      <td>
	  <select name="lang">
          <option value="" <?=isempty($frm['lang'],0)?'selected':''?>>Alle Sprachen</option>
          <?=db_listbox(sql_SQL4LangIdAndName(),nvl($frm['lang']))?> 
        </select>
      </td>
      <td> 
      </td>
    </tr>
    <tr> 
      <td align="center" colspan="3" bgcolor="#EEEEEE"> 
        <input type="submit" name="change" value="Suche starten">
      </td>
    </tr>
  </table>
</form>
</center>
