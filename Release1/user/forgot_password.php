<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/forgot_password.php,v $
 * $Revision: 1.1 $
 * $Id: forgot_password.php,v 1.1 2001/11/25 23:21:53 hifix Exp $
 *
 * Password vergessen - Retrieval
 *
 * This is not testet ! Sorry
 *
 * ToDo:
 *
 * - Localize
 */
 
 
/******************************************************************************
 * MAIN
 *****************************************************************************/

include("../application.php");

/* form has been submitted, check if it the user login information is correct */
if (match_referer() && isset($HTTP_POST_VARS)) {
  $frm = $HTTP_POST_VARS;
  $errormsg = validate_form($frm, $errors);

  if (empty($errormsg)) {
    $username = get_username($frm["email"]);
    reset_user_password($username);

    $DOC_TITLE = "Password Recovery";
    include("$CFG->templatedir/header.php");
    include("templates/forgot_password_success.inc");
    include("$CFG->templatedir/footer.php");
    die;
  }
}

$DOC_TITLE = "Password Recovery";

include("$CFG->templatedir/header.php");
include("templates/forgot_password_form.inc");
include("$CFG->templatedir/footer.php");

/******************************************************************************
 * FUNCTIONS
 *****************************************************************************/

function validate_form(&$frm, &$errors) {
/* validate the forgot password form, and return the error messages in a string.
 * if the string is empty, then there are no errors */

  $errors = new Object;
  $msg = "";

  if (empty($frm["email"])) {
    $errors->email = true;
    $msg .= "You did not specify your email address";

  } elseif (! email_exists($frm["email"])) {
    $errors->email = true;
    $msg .= "The specified email address is not known!";
  }

  return $msg;
}

function get_username($email) {
/* get the username based on an email address */

  return sql_getUsername($email);
}

?>