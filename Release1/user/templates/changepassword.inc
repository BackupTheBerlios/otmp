<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/templates/changepassword.inc,v $
 * $Revision: 1.1 $
 * $Id: changepassword.inc,v 1.1 2001/12/07 18:20:49 alexgn Exp $
 *
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
  Bitte beachten Sie, daß Sie Ihr Passwort nochmals eingeben müssen.
<? } else { ?> Hier k&ouml;nnen Sie Ihr Passwort &auml;ndern.<br>
Hinweise zu den einzelnen Felder stehen rechts daneben. <? } ?> 
<form method="post" action="<?=ME()?>">
  <table cellspacing="0" cellpadding="6" border="1">
    <tr> 
      <td align="left" bgcolor="#CCCCCC" colspan="3"> 
        <b>Angaben f&uuml;r die Benutzung von OTMP</b>
      </td>
    </tr>
    <tr> 
      <td align="right" bgcolor="#DDDDDD"><b>Ihr Benutzername</b></td>
      <td> 
        <?=$session['username'];?>
      </td>
      <td>
        Dies ist Ihr pers&ouml;nlicher Loginname. Dieser l&auml;&szlig;t sich nachtr&auml;glich nicht &auml;ndern.
      </td>
    </tr>
    <tr> 
      <td align="right" <?=isset($errors->oldpassword)?'class="warning"':''?> bgcolor="#DDDDDD"><b>Ihr altes Passwort</b></td>
      <td> 
        <input type="password" size="40" name="oldpassword" value="">
      </td>
      <td>
        Geben Sie hier zun&auml;chst Ihr altes Passwort ein.<br>
      </td>
    </tr>
    <tr> 
      <td align="right" <?=isset($errors->password)?'class="warning"':''?> bgcolor="#DDDDDD"><b>Ihr neues Passwort</b></td>
      <td> 
        <input type="password" size="40" name="password" value="">
      </td>
      <td>
        W&auml;hlen Sie sich ein neues Passwort aus.<br>
      </td>
    </tr>
    <tr> 
      <td align="right" <?=isset($errors->password_check)?'class="warning"':''?> bgcolor="#DDDDDD"><b>Ihr neues Passwort<br>(wiederholen)</b></td>
      <td> 
        <input type="password" size="40" name="password_check" value="">
      </td>
      <td>
        Um zu &uuml;berpr&uuml;fen, da&szlig; Sie sich nicht vertippt haben, wiederholen Sie Ihr neues Passwort.<br>
      </td>
    </tr>
    <tr> 
      <td align="center" colspan="3" bgcolor="#EEEEEE"> 
        <input type="submit" name="change" value="Passwort &auml;ndern">
      </td>
    </tr>
  </table>
</form>
</center>
