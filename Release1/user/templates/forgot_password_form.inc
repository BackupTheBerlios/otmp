<? 
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/templates/forgot_password_form.inc,v $
 * $Revision: 1.1 $
 * $Id: forgot_password_form.inc,v 1.1 2001/11/25 23:21:19 hifix Exp $
 *
 * Password vergessen Form
 *
 * To Do:
 * - Localize
 * - remove javascript or testit
 * - remove html "errors"
 */
?> 
<h1>OTMP Password Recovery</h1>
<hr size=1>
<br>
<table cellpadding=20>
  <tr valign=top> 
    <td width=300 class=normal> 
      <p>Enter in your email address to recover your password. When you submit 
        this request, your password will be reset, and a new password will be 
        sent to you via email.</p> 
      <p>If you do not want to do this, you can return to the <a href="<?=$CFG->wwwroot?>/login.php">login 
        screen</a> or the <a href="<?=$CFG->wwwroot?>/">home page</a> now.</p>
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
                    <input type="submit" value="Submit">
                    <input type="button" value="Cancel" onClick="javascript: history.go(-1)">
                    <p> <a href="login.php">Login Screen</a> | <a href="<?=$CFG->wwwroot?>/main.php">Home 
                      Page</a></p> 
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
