<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/login.php,v $
 * $Revision: 1.3 $
 * $Id: login.php,v 1.3 2001/11/24 16:13:21 hifix Exp $
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
       $session['username']   = $user['usrName'];
       $session['userid']     = $user['usrID'];
       $session['adminLevel'] = $user['usrAdminLevel'];
    
      /* if wantsurl is set, that means we came from a page that required
       * log in, so let's go back there.  otherwise go back to the main page */
      $goto = empty($session["wantsurl"]) ? "$CFG->wwwroot/" : $session["wantsurl"];
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