<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/templates/login_form.inc,v $
 * $Revision: 1.1 $
 * $Id: login_form.inc,v 1.1 2001/11/25 20:45:01 hifix Exp $
 */
?>
<p align="center"> Um OTMP in vollem Umfang benutzen zu können, müssen Sie sich einloggen!</p>
<form method="post" action="<?=ME()?>">
  <div align="center">
    <table width="100%" border="0" cellspacing="0" cellpadding="4">
      <tr>
        <td align="center" valign="top"> 
          <table cellspacing="0" cellpadding="1" bgcolor="#000000">
          <tr> 
          <td>
            <table cellspacing="0" cellpadding="6">
              <tr bgcolor="#FFFFFF"> 
                <td>username:</td>
                <td> 
                  <input type="text" name="username">
                </td>
              </tr>
              <tr bgcolor="#FFFFFF"> 
                <td>password:</td>
                <td> 
                  <input type="password" name="password">
                </td>
              </tr>
              <tr bgcolor="#FFFFFF" > 
                <td colspan=2 align="center"> 
                  <input type="submit" name="login" value="login">
                </td>
              </tr>
            </table>
          </td>
          </tr>
        </table>
        </td>
        <td valign="top"> 
          <p>Noch nich Angemeldet bei OTMP?<br>
            <a href="<?=$CFG->wwwroot?>/signup.php">Hier</a> können Sie sich anmelden.</p>
          <p>Haben Sie Ihr Password vergessen? <a href="<?=$CFG->wwwroot?>/forgot_password.php"><br>
            Hier</a> gibts Hilfe.</p>
        </td>
      </tr>
    </table>
    
  </div>
</form>
