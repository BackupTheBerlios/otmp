<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/templates/task_success.inc,v $
 * $Revision: 1.1 $
 * $Id: task_success.inc,v 1.1 2001/12/16 22:56:11 hifix Exp $
 *
 * To Do:
 * - LOcalisation
 */
 ?> 
<p align="center">Ihr Übersetzungsauftrag wurde erfolgreich in OTMP erstellt.</p>
<form name="form1" method="post" action="">
  <div align="center"> 
    <input type="hidden" name="textID" value="<?=nvl($frm['textID'])?>">
    <input type="hidden" name="title" value="<?=nvl($frm['title'])?>">
    <input type="hidden" name="abstract" value="<?=nvl($frm['abstract'])?>">
    <table border="1" cellspacing="0" cellpadding="2">
      <tr bgcolor="#CCCCCC"> 
        <td>Möchten Sie für den Text einen weiteren Übersetzungsauftrag eingeben? 
        </td>
      </tr>
      <tr align="center"> 
        <td> 
          <input type="submit" name="yes" value="ja">
          <input type="submit" name="no" value="nein">
        </td>
      </tr>
    </table>
  </div>
</form>
