<?
/*
 * Dokument Upload
 *
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/upload.php,v $
 * $Revision: 1.1 $
 * $Id: upload.php,v 1.1 2001/12/04 23:57:35 hifix Exp $
 *
 * To Do:
 * - LOcalisation
 * 
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
    $status = upload_file($frm);

    $DOC_TITLE = "Signup Successful";
    include("$CFG->templatedir/header.php");
    include("templates/upload_success.inc");
    include("$CFG->templatedir/footer.php");
    die;
  } else {
    $session['notice'] = $errormsg;
  }
}

$DOC_TITLE = "Upload";
include("$CFG->templatedir/header.php");
include("templates/upload_data_form.inc");
include("$CFG->templatedir/footer.php");

/******************************************************************************
 * FUNCTIONS
 *****************************************************************************/

function validate_form(&$frm, &$errors) {
/* validate the upload form, and return the error messages in a string.  if
 * the string is empty, then there are no errors */

  $errors = new Object;
  $msg = "";

  
  if (empty($frm["title"])) {
    $errors->title = true;
    $msg .= "<li>Sie haben keinen Titel angegeben";  
  }
  
  if (empty($frm["lang"])) {
    $errors->lang = true;
    $msg .= "<li>Sie haben die Sprache für den Text nicht angegeben";
  }
  
  if (empty($frm["file"])) {
    $errors->file = true;
    $msg .= "<li>Sie haben keine Datei angegeben/ausgewählt";
  }

  if (empty($frm["filetype"])) {
     $errors->filetype = true;
     $msg .= "<li>Sie haben kein Dateiformat angegeben";
  }
  return $msg;
}

function upload_file(&$frm) {
  
  // wie handelt man denn ein per form geschicktes File ?
  return 1;
}
?>