<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/templates/user_data.inc,v $
 * $Revision: 1.4 $
 * $Id: user_data.inc,v 1.4 2001/12/12 10:14:04 hifix Exp $
 *
 * Displays all of the users current data
 *
 * To Do:
 * -
 * -
 * -
 */
?> 
<center>
<br>
  Hier sehen Sie alle Ihre angegebenen Daten. Diese können Sie mit einem klick 
  auf <i>ändern</i> &auml;ndern.<br>
  <br>
  <table border="0">
<tr>
<td>  
  <table cellspacing="0" cellpadding="6" border="1">
    <tr> 
      <td align="left" bgcolor="#CCCCCC" colspan="3"> 
        <b>Angaben zu Ihrer Person</b>
        &nbsp;<a href="changepersonaldata.php">&auml;ndern</a>
      </td>
    </tr>
    <tr> 
      <td align="right" bgcolor="#DDDDDD"><b>Ihr Name</b></td>
      <td> 
        <?=$tmp->Lastname;?>
      </td>
      <td rowspan="2">
        Hier k&ouml;nnen Sie den von Ihnen angegebenen Vor- und Nachname &auml;ndern. 
      </td>
    </tr>
    <tr> 
      <td align="right" bgcolor="#DDDDDD"><b>Ihr Vorname</b></td>
      <td> 
        <?=$tmp->Firstname?>
      </td>
    </tr>
    <tr> 
      <td align="right" bgcolor="#DDDDDD"><b>Ihre Email Adresse </b></td>
      <td> 
        <?=$tmp->Email?>
      </td>
      <td>
        Die von Ihnen angegebene Email Adresse.
      </td>
    </tr>
    <tr>
   </table>
</td>
</tr>
<tr>
<td height="10">
</td>
</tr>
<tr>
<td>
   <table cellspacing="0" cellpadding="6" border="1"> 
      <td align="left" bgcolor="#CCCCCC" colspan="3"> 
        <b>Angaben f&uuml;r die Benutzung von OTMP</b>
  &nbsp;<a href="changepassword.php">&auml;ndern</a>
      </td>
    </tr>
    <tr> 
      <td align="right" bgcolor="#DDDDDD"><b>Benutzername</b></td>
      <td> 
        <?=$session['username']?>
      </td>
      <td>
  Der Name mit dem Sie sich einloggen. (Dieser kann nicht geändert werden)
      </td>
    </tr>
    <tr> 
      <td align="right" bgcolor="#DDDDDD"><b>Passwort</b></td>
      <td> <br>
      </td>
      <td>
        Ihr Passwort wird hier natürlich nicht angezeigt. Sie können es allerdings ändern.<br>
  Sollten Sie Ihr Passwort vergessen haben, dann klicken Sie bitte <a href="">hier</a>.
      </td>
    </tr>
    </table>
</td>
</tr>
<tr>
<td height="15">
</td>
</tr>

</table></center>