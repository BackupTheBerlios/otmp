<? 
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/Release1/user/templates/Attic/forgot_password_form.inc,v $
 * $Revision: 1.1 $
 * $Id: forgot_password_form.inc,v 1.1 2001/12/02 08:23:05 ahlabadi Exp $
 *
 * Password vergessen Form
 *
 * To Do:
 * - Localize
 * - remove javascript or testit
 * - remove html "errors"
 */
?> 
<h2>OTMP Password Recovery</h2>
<hr size=1>
<br>
<table cellpadding=20>
  <tr valign=top> 
    <td width=300 class=normal> 
      <p>Um Ihre Logindaten zu erhalten geben Sie hier Ihre emailadresse an (mit der Sie sich am System angemeldet haben).
         Wenn Sie auf Recover klicken wird Ihr Passwort auf ein neues Passwort gesetzt und Ihnen per mail zugesandt. Alles weitere steht in der mail.</p> 
      <p>Wenn Sie dies nicht tun wollen können sie zur <a href="<?=$CFG->wwwroot?>/login.php">Login 
        Seite</a> oder zur <a href="<?=$CFG->wwwroot?>/main.php">Haupseite</a> gehen.</p>
    </td>
    <td> <? if (! empty($errormsg)) { ?> 
      <div class=warning align=center><? pv($errormsg) ?></div>
      <? } ?> 
      <form method="post" action="<?=$ME?>">
        <table cellspacing="0" cellpadding="1" bgcolor="#000000">
          <tr> 
            <td> 
              <table bgcolor="#FFFFFF" cellspacing="10">
                <tr> 
                  <td class=label>Email Address:</td>
                  <td>
                    <input type="text" name="email" size=25 value="<? pv($frm["email"]) ?>">
                  </td>
                </tr>
                <tr> 
                  <td></td>
                  <td>
                    <input type="submit" value="Recover">
                    <input type="button" value="Abbruch" onClick="javascript: history.go(-1)">
                    <p> <a href="login.php">Login Seite</a> | <a href="<?=$CFG->wwwroot?>/main.php">Hauptseite </a></p> 
                  </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </form>
    </td>
  </tr>
</table>
