<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/templates/signup_form.inc,v $
 * $Revision: 1.2 $
 * $Id: signup_form.inc,v 1.2 2001/11/29 19:23:35 hifix Exp $
 *
 * Signup Formular
 *
 * To Do:
 * - LOcalisation
 * - make errors visible at fields itself
 */
?> 
<center>
<br>
<? if (isset($errors)) { ?>
<p class="warning">Es ist ein Fehler aufgetreten. Bitte überprüfen Sie die markierten Felder nochmals.</p>  
<? } else { ?>
Die folgenden Angaben brauchen wir für Ihre Anmeldung bei OTMP. Bitte f&uuml;llen Sie das Formular vollständig aus. 
<br>Hinweise zu den einzelnen Felder stehen rechts daneben.
<? } ?>

<form method="post" action="<?=ME()?>">
  <table cellspacing="0" cellpadding="6">
    <tr> 
      <td align="right" <?=isset($errors->lastname)?'class="warning"':''?>>Name</td>
      <td> 
        <input type="text" size=40 name="lastname" value="<?=nvl($frm['lastname'])?>">
      </td>
    </tr>
    <tr> 
      <td align="right" <?=isset($errors->firstname)?'class="warning"':''?>>Vorname</td>
      <td> 
        <input type="text" size=40 name="firstname" value="<?=nvl($frm['firstname'])?>">
      </td>
    </tr>
    <tr> 
      <td align="right" <?=isset($errors->email)?'class="warning"':''?>>Email</td>
      <td> 
        <input type="text" size=40 name="email" value="<?=nvl($frm['email'])?>">
      </td>
    </tr>
    <tr> 
      <td align="right" <?=isset($errors->username)?'class="warning"':''?>>UserName</td>
      <td> 
        <input type="text" size=40 name="username" value="<?=nvl($frm['username'])?>">
      </td>
    </tr>
    <tr> 
      <td align="right" <?=isset($errors->password)?'class="warning"':''?>>Password</td>
      <td> 
        <input type="password" size=40 name="password">
      </td>
    </tr>
    <tr> 
      <td align="right" <?=isset($errors->password)?'class="warning"':''?>>Password (wiederholen)</td>
      <td> 
        <input type="password" size=40 name="password_check">
      </td>
    </tr>
    <tr> 
      <td align="right" colspan="2"> 
        <div align="center"> 
          <input type="submit" name="signup" value="Anmelden">
        </div>
      </td>
    </tr>
  </table>
</form>

</center>