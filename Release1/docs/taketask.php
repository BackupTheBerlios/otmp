<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/taketask.php,v $
 * $Revision: 1.2 $
 * $Id: taketask.php,v 1.2 2002/01/30 01:42:58 hifix Exp $
 *
 * Download TextFile & Annahme Task
 * To Do:
 * - LOcalisation
 */

/******************************************************************************
 * MAIN
 *****************************************************************************/

include("../application.php");
checklogin();

$session['notice'] = '';
/* form has been submitted */
if (isset($HTTP_POST_VARS) AND ( isset($HTTP_POST_VARS['taketask']) OR isset($HTTP_POST_VARS['notake']) ) ) {
  $frm = $HTTP_POST_VARS;
  //mydebug($frm);
  $errormsg = validate_form($frm, $errors);

  if (empty($errormsg) ) {
    if(isset($frm['notake'])) {
      $session['notice'] = "Sie haben den &Uuml;bersetzungsauftrag nicht angenommen - ok";
      $goto = empty($session["wantsurl"]) ? "$CFG->wwwroot/main.php" : $session["wantsurl"];
      header("Location: $goto");
      die;
    }

    /* apply use for task */
    if( applyTask($frm['textID'],$session['userid']) ) {
      $session['notice'] = "Sie sind nun als &Uuml;bersetzer f&uuml;r diesen Text eingetragen";
      $id = $frm['otextID'];
      $DOC_TITLE = "Download";
      include("$CFG->templatedir/header.php");
      include("templates/download.inc");
      include("$CFG->templatedir/footer.php");
      die;
    } else {
      $session['notice'] = "Ihre Eintragung als &Uuml;bersetzer schlug fehl. Möglicherweise hat bereits ein anderer die &Uuml;bersetzung angenommen.";
    }
  } else {
    $session['notice'] = $errormsg;
    $goto = empty($session["wantsurl"]) ? "$CFG->wwwroot/main.php" : $session["wantsurl"];
    header("Location: $goto");
    die;
  }
}


if(!isset($id)) {
  $session['notice'] .= "interner Fehler: Sicherheitverletzung";
  $goto = empty($session["wantsurl"]) ? "$CFG->wwwroot/main.php" : $session["wantsurl"];
  header("Location: $goto");
  die;
}
$DOC_TITLE = "&Uuml;bersetzen &amp; Download";
include("$CFG->templatedir/header.php");
include("templates/takeTask.inc");
include("$CFG->templatedir/footer.php");

/******************************************************************************
 * FUNCTIONS
 *****************************************************************************/
function validate_form(&$frm, &$errors) {
/* validate the upload form, and return the error messages in a string.  if
 * the string is empty, then there are no errors */

  $errors = new Object;
  $msg = "";

  
  if (empty($frm["textID"])) {
    $errors->title = true;
    $msg .= "<li>fehler: TextID nicht angegeben! Versuchen Sie es nochmals.";  
  }

  return $msg;
}

function applyTask($textid, $userid) {
  /* set user as translator for text */
  return sql_setTranslator($textid, $userid);
}

function sql_setTranslator($textid, $userid) {
  /* set the translator for the given text with textid to the userid 
   * returns 1 if ok, otherwise 0 */
  global $CFG;
  /* for security check if TextStatus = 'open',
     if something went wrong, affected rows will be ZERO and returned */
  db_query("UPDATE otmp_Text SET TextStatus = 'work', TextAutor = $userid WHERE TextTID = $textid AND TextStatus = 'open'");
  if(db_affected_rows()>0) {
    db_query("UPDATE otmp_Auftrag SET AuftragTransDatum = NOW() WHERE AuftragNTID = $textid");
    if(db_affected_rows()==0) {
      echo "fatal error: Auftrag update";
    }
    return 1;
  }
  return 0;
}
?>

