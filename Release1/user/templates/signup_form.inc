<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/templates/signup_form.inc,v $
 * $Revision: 1.4 $
 * $Id: signup_form.inc,v 1.4 2001/11/29 20:16:29 hifix Exp $
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
<? } else { ?> Die folgenden Angaben brauchen wir für Ihre Anmeldung bei OTMP. 
Bitte f&uuml;llen Sie das Formular vollständig aus. <br>
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
        <input type="text" size="40" name="lastname" value="<?=nvl($frm['lastname'])?>">
      </td>
      <td rowspan="2">
        Ihren vollst&auml;ndigen Namen brauchen wir um Sie ansprechen 
        zu k&ouml;nnen. Ihr Name wird ohne Ihr Einverst&auml;ndnis nirgends 
        angezeigt! 
      </td>
    </tr>
    <tr> 
      <td align="right" <?=isset($errors->firstname)?'class="warning"':''?> bgcolor="#DDDDDD"><b>Ihr Vorname</b></td>
      <td> 
        <input type="text" size="40" name="firstname" value="<?=nvl($frm['firstname'])?>">
      </td>
    </tr>
    <tr> 
      <td align="right" <?=isset($errors->email)?'class="warning"':''?> bgcolor="#DDDDDD"><b>Ihre Email Adresse </b></td>
      <td> 
        <input type="text" size="40" name="email" value="<?=nvl($frm['email'])?>">
      </td>
      <td>
        &Uuml;ber diese Adresse k&ouml;nnen wir mit Ihnen in Verbindung treten. 
        Sie sollten eine Emailadresse angeben, da Ihnen sonst nicht alle Funktionen 
        des Systems zu Verf&uuml;gung stehen. <a href="../../help/help.php">[mehr 
        Informationen dazu</a>]<br>
        Ihre Emailadresse wird in keinem Fall angezeigt und nat&uuml;rlich vertraulich 
        behandelt.<br>
        Haben Sie keine email-Adresse, dann klicken Sie bitte <a href="%20">hier</a>.
      </td>
    </tr>
    <tr> 
      <td align="left" bgcolor="#CCCCCC" colspan="3"> 
        <b>Angaben zur Benutzung von OTMP</b>
      </td>
    </tr>
    <tr> 
      <td align="right" <?=isset($errors->username)?'class="warning"':''?> bgcolor="#DDDDDD"><b>Benutzername</b></td>
      <td> 
        <input type="text" size="40" name="username" value="<?=nvl($frm['username'])?>">
      </td>
      <td>
        Mit diesem Namen melden Sie sich sp&auml;ter am System an. Dieser 
        Name wird auch bei Ihren Texten und &Uuml;bersetzungen angezeigt.<br>
        W&auml;hlen Sie einen Namen Ihrer Wahl. Hier einige Beispiele:<br>
        a.M&uuml;ller 
      </td>
    </tr>
    <tr> 
      <td align="right" <?=isset($errors->password)?'class="warning"':''?> bgcolor="#DDDDDD"><b>Passwort</b></td>
      <td> 
        <input type="password" size="20" name="password">
      </td>
      <td>
        Mit diesem Password melden Sie sich sp&auml;ter am System an. W&auml;hlen 
        Sie ein Passwort welches nur Sie kennen sollten und welches mindestens 
        6 Zeichen lang ist.
      </td>
    </tr>
    <tr> 
      <td align="right" <?=isset($errors->password)?'class="warning"':''?> bgcolor="#DDDDDD"><b>Passwort (wiederholen)</b></td>
      <td> 
        <input type="password" size="20" name="password_check">
      </td>
      <td>
        Wiederholen Sie hier zur Sicherheit Ihr Passwort. Damit wird sichergestellt, 
        da&szlig; Sie sich nicht vertippt haben.
      </td>
    </tr>
    <tr> 
      <td align="center" colspan="3" bgcolor="#EEEEEE"> 
        <input type="submit" name="signup" value="Anmelden">
      </td>
    </tr>
  </table>
</form>
</center>
