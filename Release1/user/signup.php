<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/signup.php,v $
 * $Revision: 1.2 $
 * $Id: signup.php,v 1.2 2001/11/25 23:20:02 hifix Exp $
 *
 * To Do:
 * - LOcalisation
 * - minimal password length check
 */

/******************************************************************************
 * MAIN
 *****************************************************************************/

include("../application.php");

/* form has been submitted, try to create the new user account */
if (match_referer() && isset($HTTP_POST_VARS)) {
  $frm = $HTTP_POST_VARS;
  $errormsg = validate_form($frm, $errors);

  if (empty($errormsg)) {
    $status = insert_user($frm);

    $DOC_TITLE = "Signup Successful";
    include("$CFG->templatedir/header.php");
    include("templates/signup_success.inc");
    include("$CFG->templatedir/footer.php");
    die;
  } else {
    $session['notice'] = $errormsg;
  }
}

$DOC_TITLE = "Signup";
include("$CFG->templatedir/header.php");
include("templates/signup_form.inc");
include("$CFG->templatedir/footer.php");

/******************************************************************************
 * FUNCTIONS
 *****************************************************************************/

function validate_form(&$frm, &$errors) {
/* validate the signup form, and return the error messages in a string.  if
 * the string is empty, then there are no errors */

  $errors = new Object;
  $msg = "";

  
  if (empty($frm["lastname"])) {
    $errors->lastname = true;
    $msg .= "<li>You did not specify your lastname";  
  }
  
  if (empty($frm["firstname"])) {
    $errors->firstname = true;
    $msg .= "<li>You did not specify your firstname";
  }
  
  if (empty($frm["password"])) {
    $errors->password = true;
    $msg .= "<li>You did not specify a password";
  
  } elseif (empty($frm["password_check"])) {
    $errors->password_check = true;
    $msg .= "<li>You did not repeat your password";
  
  } elseif ( $frm["password"] != $frm["password_check"] ) {
    $errors->password_check = true;
    $errors->password = true;
    $msg .= "<li>the password you entered doesn't match!";
  }
  
  if (empty($frm["username"])) {
     $errors->username = true;
     $msg .= "<li>You did not specify a username";
     
  } elseif (username_exists($frm["username"]) ) {
    $errors->username = true;
    $msg .= "<li>The username <b>" . ov($frm["email"]) ."</b> already exists. Please choose an other name.";
  }
  
  if (empty($frm["email"])) {
    $errors->email = true;
    $msg .= "<li>You did not specify your email adress";  
  
  } elseif ( email_exists($frm["email"]) ) {
    $errors->email = true;
    $msg .= "<li>The email address <b>" . ov($frm["email"]) ."</b> already exists";
  }
  
  return $msg;
}

function insert_user(&$frm) {
/* add the new user into the database */
 
  return sql_addNewUser($frm['lastname'], $frm['firstname'], $frm['email'], $frm['username'], $frm['password']);
}

?>
