<?
/*
 * Task (make)
 *
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/task.php,v $
 * $Revision: 1.4 $
 * $Id: task.php,v 1.4 2002/01/27 22:12:50 darkpact Exp $
 *
 * To Do:
 * - LOcalisation
 * - Task check (if double)
 */

/******************************************************************************
 * MAIN
 *****************************************************************************/

include("../application.php");
checklogin();

/* form has been submitted, try to create the new user account */
if (isset($HTTP_POST_VARS)) {
  $frm = $HTTP_POST_VARS;
  // yes / no Button abfangen
  if (isset($frm['no'])) {
    $session['notice'] = "&Uuml;bersetzungsaufträge im System gespeichert";
    
    $goto = "$CFG->wwwroot/docs/document.php?otid=$frm[textID]";
    header("Location: $goto");
    die;
  }
  
  if(isset($frm['addTask']) ) {
    $errormsg = validate_form($frm, $errors);

    if (empty($errormsg)) {
      $status = makeTask($frm);


      $DOC_TITLE = "Task Successful";
      include("$CFG->templatedir/header.php");
      include("templates/task_success.inc");
      include("$CFG->templatedir/footer.php");
      die;
    } else {
      $session['notice'] = $errormsg;
    }
  }
}

setdefault($id,nvl($frm['textID']));
$DOC_TITLE = "Task management";
include("$CFG->templatedir/header.php");
include("templates/maketask_form.inc");
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
      $errors->lang = true;
      $msg .= "<li>interner Fehler. Bitte kontaktieren Sie den Administrator von OTMP. (Fehler: no textid)";
  }
  
  if (empty($frm["lang"])) {
    $errors->lang = true;
    $msg .= "<li>Sie haben die Sprache f&uuml;r den Text nicht angegeben";
  }
  
  return $msg;
}

function makeTask(&$frm) {
  global $session;
  
  /* frist feld formatieren */
  $frist = "0000-00-00";
  if ( isset($frm['frist']) && ($frm['frist'] != "JJJJ-MM-TT") ) {
     $frist = $frm['frist']; 
  }
  
  // Überprüfung ob Task mit Language schon vorhanden
  /////////////
  
  // neuen Text anlegen
  $ntextid = sql_addNewText(sqlv($frm['title']),sqlv(nvl($frm['abstract'])),0,$frm['lang'],nvl($frm['cat'],0),nvl($frm['filetyp'],0),$session['userid'],$frm['textID']); 
  if (!isset($ntextid) or ($ntextid==0)) {
    $session['notice'] = "error making Task. Cannot generate new Text! Please contact the administrator via contact-link<br>Errorcode: tid=$frm[textID]";
    return 0;
  }
  // neuen Task anlegen
  $taskID = sql_addNewTask($frm['textID'],$ntextid,$session['userid'],$frist);
  
  return 1;
}

?>
