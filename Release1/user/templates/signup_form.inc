<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/templates/signup_form.inc,v $
 * $Revision: 1.1 $
 * $Id: signup_form.inc,v 1.1 2001/11/25 23:21:19 hifix Exp $
 *
 * Signup Formular
 *
 * To Do:
 * - LOcalisation
 * - make errors visible at fields itself
 */
?> Bitte f&uuml;llen SIe nachfolgende Felder aus. 
<form method="post" action="<?=ME()?>">
  <table cellspacing="0" cellpadding="6">
    <tr> 
      <td align="right">Name</td>
      <td> 
        <input type="text" size=40 name="lastname" value="<?=nvl($frm['lastname'])?>">
      </td>
    </tr>
    <tr> 
      <td align="right">Vorname</td>
      <td> 
        <input type="text" size=40 name="firstname" value="<?=nvl($frm['firstname'])?>">
      </td>
    </tr>
    <tr> 
      <td align="right">Email</td>
      <td> 
        <input type="text" size=40 name="email" value="<?=nvl($frm['email'])?>">
      </td>
    </tr>
    <tr> 
      <td align="right">UserName</td>
      <td> 
        <input type="text" size=40 name="username" value="<?=nvl($frm['username'])?>">
      </td>
    </tr>
    <tr> 
      <td align="right">Password</td>
      <td> 
        <input type="password" size=40 name="password">
      </td>
    </tr>
    <tr> 
      <td align="right">Password (wiederholen)</td>
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

<h4>Hilfe:</h4>
<p><i>Ich habe keine Emailadresse, kann ich mich trotzdem anmelden?</i><br><br>
Sicher. Um den Dienst von OTMP nutzen zu k&ouml;nnen, m&uuml;ssen sie keine Emailadresse haben.</p>
<p><i>Wie kann ich ein Passwort eingeben obwohl ich keins habe?</i><br><br>
An dieser Stelle w&auml;hlen Sie Ihr Passwort selber fest. Um sicher zu gehen, da&szlig; Sie sich nicht vertippt haben, m&uuml;ssen Sie das Passwort dann ein zweites Mal eingeben.</p>
