<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/templates/search.inc,v $
 * $Revision: 1.1 $
 * $Id: search.inc,v 1.1 2001/12/16 21:58:01 alexgn Exp $
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
      <td rowspan="1">
        Geben Sie hier ein Stichwort ein, nach dem gesucht werden soll! 
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
