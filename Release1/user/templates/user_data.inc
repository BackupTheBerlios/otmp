<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/templates/user_data.inc,v $
 * $Revision: 1.7 $
 * $Id: user_data.inc,v 1.7 2001/12/19 00:16:44 hifix Exp $
 *
 * Displays all of the users current data
 *
 * To Do:
 * -
 * -
 * -
 */
?> 
<p>Hier sehen Sie alle Ihre angegebenen Daten. Diese können Sie mit einem klick 
  auf <i>&auml;ndern</i> &auml;ndern.
  <br>
</p>
<table cellspacing="0" cellpadding="4" border="1" width="90%">
  <tr> 
    <td align="left" bgcolor="#DDDDDD" colspan="2"> <b>Angaben zu Ihrer Person</b> 
      &nbsp;<a href="changepersonaldata.php">&auml;ndern</a> </td>
  </tr>
</table>
  
<table cellspacing="0" cellpadding="4" border="0">
  <tr> 
    <td> <b>Ihr Name: </b></td>
    <td> 
      <?=$tmp->Lastname;?>
    </td>
  </tr>
  <tr> 
    <td> <b>Ihr Vorname: </b></td>
    <td> 
      <?=$tmp->Firstname?>
    </td>
  </tr>
  <tr> 
    <td> <b>Ihre Email Adresse: </b></td>
    <td> 
      <?=$tmp->Email?>
    </td>
  </tr>
</table>
<br>
<table cellspacing="0" cellpadding="4" border="1" width="90%">
    <td align="left" bgcolor="#dddddd" colspan="3"> <b>Ihr Benutzerpasswort</b> 
      &nbsp;<a href="changepassword.php">&auml;ndern</a> </td>
    </tr>
  </table>
