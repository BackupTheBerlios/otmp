<?
/*
 * Dokument Upload
 *
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/upload.php,v $
 * $Revision: 1.4 $
 * $Id: upload.php,v 1.4 2001/12/16 22:29:22 hifix Exp $
 *
 * To Do:
 * - LOcalisation
 * - Screen, wenn nicht eingeloggt
 * - Fileupload implementation
 * - Filetyp (now dummy)
 * - check for doublettes of title in DB 
 */

/******************************************************************************
 * MAIN
 *****************************************************************************/

include("../application.php");
checklogin();

/* form has been submitted, try to create the new user account */
if (match_referer() && isset($HTTP_POST_VARS)) {
  $frm = $HTTP_POST_VARS;
  $errormsg = validate_form($frm, $errors);

  if (empty($errormsg)) {
    $id = upload_file($frm);
    unset($errors);
    unset($frm);
    $DOC_TITLE = "Upload Successful";
    include("$CFG->templatedir/header.php");
    include("templates/upload_success.inc");
    include("templates/document_details.inc");
    include("templates/maketask_form.inc");
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
  
  if (empty($frm["cat"])) {
      $errors->cat = true;
      $msg .= "<li>Sie haben keine Textkategorie angegeben";
  }
  
  /*
  if (empty($frm["file"])) {
    $errors->file = true;
    $msg .= "<li>Sie haben keine Datei angegeben/ausgewählt";
  }
  */
  if (empty($frm["filetyp"])) {
     $errors->filetyp = true;
     $msg .= "<li>Sie haben kein Dateiformat angegeben";
  }
  return $msg;
}

function upload_file(&$frm) {
  global $session;
  // wie handelt man denn ein per form geschicktes File ?
  
  // neuen Text anlegen
  // FileTypID ist falsch gesetzt (dummy)
  return sql_addNewText($frm['title'],nvl($frm['abstract']),nvl($frm['length'],0),$frm['lang'],nvl($frm['cat'],0),nvl($frm['filetyp'],0),$session['userid']); 
  
}


?>