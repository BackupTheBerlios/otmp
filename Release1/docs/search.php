<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/search.php,v $
 * $Revision: 1.3 $
 * $Id: search.php,v 1.3 2001/12/18 23:29:22 hifix Exp $
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
    $status = search($frm['keywordtitle'],$frm['search_in'],$frm['lang']);

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

function search($keywordtitle,$search_in,$lang) {
   $result = array();
   $docid  = sql_getDocumentIDFromSearch($keywordtitle,$search_in,$lang);
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
