<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/templates/changepersonaldata.inc,v $
 * $Revision: 1.2 $
 * $Id: changepersonaldata.inc,v 1.2 2001/12/05 01:12:09 alexgn Exp $
 *
 * Signup Formular
 *
 * To Do:
 * - LOcalisation
 * - more help on error
 * - showexamples() function for usernames
 */
?> 
<center>
<br>
<? if (isset($errors)) { ?> 
<p class="warning">Es ist ein Fehler aufgetreten. Bitte überprüfen Sie die markierten 
  Felder bitte nochmals.</p>
  Bitte beachten Sie, daß Sie Ihr Passwort nochmals eingeben müssen.
<? } else { ?> Hier k&ouml;nnen Sie Ihre pers&ouml;nlichen Daten &auml;ndern.<br>
Hinweise zu den einzelnen Felder stehen rechts daneben. <? } ?> 
<form method="post" action="<?=ME()?>">
  <table cellspacing="0" cellpadding="6" border="1">
    <tr> 
      <td align="left" bgcolor="#CCCCCC" colspan="3"> 
        <b>Angaben zu Ihrer Person</b>
      </td>
    </tr>
    <tr> 
      <td align="right" <?=isset($errors->lastname)?'class="warning"':''?> bgcolor="#DDDDDD"><b>Ihr Name</b></td>
      <td> 
        <input type="text" size="40" name="lastname" value="<?=$tmp->Lastname;?>">
      </td>
      <td rowspan="2">
        Hier können Sie Ihren Namen ändern! 
      </td>
    </tr>
    <tr> 
      <td align="right" <?=isset($errors->firstname)?'class="warning"':''?> bgcolor="#DDDDDD"><b>Ihr Vorname</b></td>
      <td> 
        <input type="text" size="40" name="firstname" value="<?=$tmp->Firstname;?>"
      </td>
    </tr>
    <tr> 
      <td align="right" <?=isset($errors->email)?'class="warning"':''?> bgcolor="#DDDDDD"><b>Ihre Email Adresse </b></td>
      <td> 
        <input type="text" size="40" name="email" value="<?=$tmp->Email;?>">
      </td>
      <td>
        Hier k&ouml;nnen Sie Ihre Email Adresse &auml;ndern.<br>
        Haben Sie keine email-Adresse, dann klicken Sie bitte <a href="%20">hier</a>.
      </td>
    </tr>
    <tr> 
      <td align="center" colspan="3" bgcolor="#EEEEEE"> 
        <input type="submit" name="change" value="Daten &auml;ndern">
      </td>
    </tr>
  </table>
</form>
</center>
