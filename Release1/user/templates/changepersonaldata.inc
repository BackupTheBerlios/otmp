<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/templates/changepersonaldata.inc,v $
 * $Revision: 1.1 $
 * $Id: changepersonaldata.inc,v 1.1 2001/12/04 20:54:34 alexgn Exp $
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
<p class="warning">Es ist ein Fehler aufgetreten. Bitte �berpr�fen Sie die markierten 
  Felder bitte nochmals.</p>
  Bitte beachten Sie, da� Sie Ihr Passwort nochmals eingeben m�ssen.
<? } else { ?> Die folgenden Angaben brauchen wir f�r Ihre Anmeldung bei OTMP. 
Bitte f&uuml;llen Sie das Formular vollst�ndig aus. <br>
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
        Hier k�nnen Sie Ihren Namen �ndern! 
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
        <input type="text" size="40" name="email" value="<?tmp->Email?>">
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
      <td align="center" colspan="3" bgcolor="#EEEEEE"> 
        <input type="submit" name="signup" value="Anmelden">
      </td>
    </tr>
  </table>
</form>
</center>