<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/changepersonaldata.php,v $
 * $Revision: 1.4 $
 * $Id: changepersonaldata.php,v 1.4 2002/01/11 13:15:41 alexgn Exp $
 *
 * To Do:
 * - 
 * - 
 */

/******************************************************************************
 * MAIN
 *****************************************************************************/

include("../application.php");
/* $session['wantsurl']=me();  // Rücksprung (ggf) */
checklogin();

/* form has been submitted, changing user data */
if (match_referer() && isset($HTTP_POST_VARS)) {
  $frm = $HTTP_POST_VARS;
  $errormsg = validate_form($frm, $errors);

  if (empty($errormsg)) {
    $status = update_user($frm,$session['userid']);

    /* Obsolete Code                                    */
    /* $DOC_TITLE = "Changing of User Data Successful"; */
    /* include("$CFG->templatedir/header.php");         */
    /* include("templates/change_data_success.inc");    */
    /* include("$CFG->templatedir/footer.php");         */ 

    $session['notice']="Angaben zu Ihrer Person erfolgreich ge&auml;ndert!";
    $goto = empty($session["wantsurl"]) ? "$CFG->wwwroot/user/user_data.php" : $session["wantsurl"];
    header("Location: $goto");
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
  
  elseif (empty($frm["email"])) {
    $errors->email = true;
    $msg .= "<li>Sie haben keine Emailadresse angegeben";  
  
  }
  
  return $msg;
}

function update_user(&$frm,$userid) {
/* update user data in the database*/
 
  return sql_updateUser($frm['lastname'], $frm['firstname'], $frm['email'],$userid);
}

function get_user_info($LoginName) {
/* function gibt $qid Objekt zurück mit Firstname, Lastname, Email */ 
	return sql_getUserdataFromUsername($LoginName);
	

}

?>
