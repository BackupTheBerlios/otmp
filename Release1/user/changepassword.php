<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/changepassword.php,v $
 * $Revision: 1.1 $
 * $Id: changepassword.php,v 1.1 2001/12/07 18:19:20 alexgn Exp $
 *
 * To Do:
 * - 
 * - 
 */

/******************************************************************************
 * MAIN
 *****************************************************************************/

include("../application.php");

/* form has been submitted, changing user data */
if (match_referer() && isset($HTTP_POST_VARS)) {
  $frm = $HTTP_POST_VARS;
  $errormsg = validate_form($frm, $errors,$session);

  if (empty($errormsg)) {
    $status = change_userPassword($session['username'],$frm);

    $DOC_TITLE = "Password Change Successfull";
    include("$CFG->templatedir/header.php");
    include("templates/change_password_success.inc");
    include("$CFG->templatedir/footer.php");
    die;
  } else {
    $session['notice'] = $errormsg;
  }
}
/* Check that user is logged in is missing! */

$DOC_TITLE = "Change Password";
$tmp = get_user_info($session['username']);
include("$CFG->templatedir/header.php");
include("templates/changepassword.inc");
include("$CFG->templatedir/footer.php");

/******************************************************************************
 * FUNCTIONS
 *****************************************************************************/

function validate_form(&$frm, &$errors,$session) {
/* validate the signup form, and return the error messages in a string.  if
 * the string is empty, then there are no errors */
  
  $errors = new Object;
  $msg = "";
  $tmp = verify_login($session['username'],$frm["oldpassword"]); 

    if (empty($frm["oldpassword"])) {
     $errors->oldpassword = true;
     $msg .= "<li>Sie m&uuml;ssen Ihr altes Passwort eingeben";
     
  } elseif (!$tmp) {
    $errors->oldpassword = true;
    $msg .= "<li>Ihr altes Passwort ist nicht richtig";
  }

  if (empty($frm["password"])) {
    $errors->password = true;
    $msg .= "<li>Sie haben kein neues Passwort angegeben";
  
  } elseif (empty($frm["password_check"])) {
    $errors->password_check = true;
    $msg .= "<li>Sie haben vergessen, Ihr neues Passwort zu wiederholen";
  
  } elseif ( $frm["password"] != $frm["password_check"] ) {
    $errors->password_check = true;
    $errors->password = true;
    $msg .= "<li>Die Neuen Passw&ouml;rter stimmen nicht &uuml;berein";
  }
  return $msg;
}

function change_userPassword($username,&$frm) {
/* update user data in the database*/
 
  return sql_setUserpasswd($username, $frm['password']);
}

function get_user_info($LoginName) {
/* function gibt $qid Objekt zurück mit Firstname, Lastname, Email */ 
	return sql_getUserdataFromUsername($LoginName);
	

}


function verify_login($username, $password) {
/* verify the username and password.  if it is a valid login, return an array
 * with the userdatas */

  return sql_LoginGetUserdata($username, $password);
}

?>
