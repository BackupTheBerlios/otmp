<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/changepersonaldata.php,v $
 * $Revision: 1.1 $
 * $Id: changepersonaldata.php,v 1.1 2001/12/04 20:53:07 alexgn Exp $
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
  $errormsg = validate_form($frm, $errors);

  if (empty($errormsg)) {
    # $status = insert_user($frm);

    $DOC_TITLE = "Changing of User Data Successful";
    include("$CFG->templatedir/header.php");
    include("templates/change_data_success.inc");
    include("$CFG->templatedir/footer.php");
    die;
  } else {
    $session['notice'] = $errormsg;
  }
}
/* Check that user is logged in is missing! */

$DOC_TITLE = "Change Personal Data";
$tmp = get_user_info($session['username']);
include("$CFG->templatedir/header.php");
include("templates/changepersonaldata.inc");
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
    $msg .= "<li>Sie haben Ihren Nachnamen nicht angegeben";  
  }
  
  if (empty($frm["firstname"])) {
    $errors->firstname = true;
    $msg .= "<li>Sie haben Ihren Vornamen nicht angegeben";
  }
  
  if (empty($frm["password"])) {
    $errors->password = true;
    $msg .= "<li>Sie haben kein Password angegeben";
  
  } elseif (empty($frm["password_check"])) {
    $errors->password_check = true;
    $msg .= "<li>Sie haben vergessen, daß Password zu wiederholen";
  
  } elseif ( $frm["password"] != $frm["password_check"] ) {
    $errors->password_check = true;
    $errors->password = true;
    $msg .= "<li>Die Passwörter stimmen nicht überein";
  }
  
  if (empty($frm["username"])) {
     $errors->username = true;
     $msg .= "<li>Sie haben keinen Benutzernamen angegeben";
     
  } elseif (username_exists($frm["username"]) ) {
    $errors->username = true;
    $msg .= "<li>Der Benutzername <b>" . ov($frm["username"]) ."</b> ist schon vergeben. Bitte wählen Sie einen anderen Namen.";
  }
  
  if (empty($frm["email"])) {
    $errors->email = true;
    $msg .= "<li>Sie haben keine Emailadresse angegeben";  
  
  } elseif ( email_exists($frm["email"]) ) {
    $errors->email = true;
    $msg .= "<li>Die Emailadresse <b>" . ov($frm["email"]) ."</b> existiert bereits.";
  }
  
  return $msg;
}

function insert_user(&$frm) {
/* add the new user into the database */
 
  return sql_addNewUser($frm['lastname'], $frm['firstname'], $frm['email'], $frm['username'], $frm['password']);
}

function get_user_info($LoginName) {
/* function gibt $qid Objekt zurück mit Firstname, Lastname, Email */ 
	return sql_getUserdataFromUsername($LoginName);
	

}

?>
