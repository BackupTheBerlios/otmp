<? /*
    * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/login.php,v $
    * $Revision: 1.1 $
    * $Id: login.php,v 1.1 2001/11/22 20:21:39 darkpact Exp $
    */
?>
<!-- doc header -->
<?
include ("../all." . $langs);
include ("login." . $langs);
$loginname = $notlogedin;
include ("../otmpheader.php");
?>
<!-- doc header end -->

<!-- doc body -->
<p align="center"> Um Dich am System anzumelden, gib bitte Deinen Usernamen und Dein Passwort ein.</p>
<form method="post" action="">
  <div align="center">
    <table border="0" cellspacing="0" cellpadding="4">
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
                    <td>passwort:</td>
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
          <p>Noch keinen Account?<br>
            <a href="signup.php">Hier</a> kannst Du Dich anmelden.</p>
          <p>Passwort vergessen? <a href="forgot_password.php"><br>
            Hier</a> gibts Hilfe.</p>
        </td>
      </tr>
    </table>
  </div>
</form>
<!-- doc body end -->

<!-- doc footer -->
<?
$maindir = "../";
$userdir = "";
$docsdir = "../docs/";
$helpdir = "../help/";
include ("../otmpfooter.php");
?>
<!-- doc footer end -->
