<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/search.php,v $
 * $Revision: 1.1 $
 * $Id: search.php,v 1.1 2001/12/16 21:56:33 alexgn Exp $
 *
 * To Do:
 * - 
 * - 
 */

/******************************************************************************
 * MAIN
 *****************************************************************************/

include("../application.php");
if (!isset($noerror)) {
   $noerror = 0;
}

/* form has been submitted, changing user data */
if (match_referer() && isset($HTTP_POST_VARS) && $noerror!=1) {
  $frm = $HTTP_POST_VARS;
  $errormsg = validate_form($frm, $errors);

  if (empty($errormsg)) {
    /* Should be search */
    $status = search($keywordtitle);

    $DOC_TITLE = "Your Search Results";
    include("$CFG->templatedir/header.php");
    include("templates/search_result.inc");
    include("$CFG->templatedir/footer.php");
    die;
  } else {
    $session['notice'] = $errormsg;
  }
}

$DOC_TITLE = "Suche nach einem Dokument.";
include("$CFG->templatedir/header.php");
include("templates/search.inc");
include("$CFG->templatedir/footer.php");

/******************************************************************************
 * FUNCTIONS
 *****************************************************************************/

function search($keywordtitle) {
   $result = array();
   $docid  = sql_getDocumentIDFromSearch($keywordtitle);
   /* returns an array of document IDs */

   if(!empty($docid)){
      foreach($docid as $v1) {
      $tmp2 = sql_getDocumentFromSearch($v1);
      array_push($result, $tmp2);
      /* return an object with result */
      }
   }
   if(!empty($result)) {
      return $result;
   }
}

function validate_form(&$frm, &$errors) {
/* validate the signup form, and return the error messages in a string.  if
 * the string is empty, then there are no errors */

  $errors = new Object;
  $msg = "";

  
  if (empty($frm["keywordtitle"])) {  
     $errors->lastname = true; 
     $msg .= "<li>Sie m&uuml;ssen ein Stichwort angeben.";  
  }
  
  return $msg;
}


?>
