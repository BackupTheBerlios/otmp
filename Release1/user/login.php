<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/login.php,v $
 * $Revision: 1.5 $
 * $Id: login.php,v 1.5 2001/12/15 17:33:18 hifix Exp $
 */
 
include "../application.php";

$DOC_TITLE = "Login";

if (isset($HTTP_POST_VARS) && $REQUEST_METHOD=="POST") {
    $frm = $HTTP_POST_VARS;
  /* form has been submitted, check if it the user login information is correct */
  if (isset($frm['login'])) {

    $user = verify_login($frm["username"], $frm["password"]);

    /* set all user's sessionvariables */
    if ($user) {
       unset($session);
       $session['username']   = $user['Name'];
       $session['userid']     = $user['usrID'];
       $session['adminlevel'] = $user['AdminLevel'];
       $session['translator'] = $user['Translator'];
       
      /* if wantsurl is set, that means we came from a page that required
       * log in, so let's go back there.  otherwise go back to the main page */
      $goto = empty($session["wantsurl"]) ? "$CFG->wwwroot/main.php" : $session["wantsurl"];
      header("Location: $goto");
      die;

    } else {
        $errormsg = "Invalid login, please try again";
    } // endif user
  } // endif frm[login]

}

include("$CFG->templatedir/header.php");
if (!empty($errormsg)) { 
 echo "<div class=warning align=center>$errormsg</div>";
}
include("templates/login_form.inc");
  
include("$CFG->templatedir/footer.php");


/******************************************************************************
 * FUNCTIONS
 *****************************************************************************/

function verify_login($username, $password) {
/* verify the username and password.  if it is a valid login, return an array
 * with the userdatas */

  return sql_LoginGetUserdata($username, $password);
}

/******************************************************************************/
?>