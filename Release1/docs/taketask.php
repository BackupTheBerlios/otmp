<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/taketask.php,v $
 * $Revision: 1.1 $
 * $Id: taketask.php,v 1.1 2002/01/28 17:48:17 hifix Exp $
 *
 * Download TextFile & Annahme Task
 * To Do:
 * - LOcalisation
 */

/******************************************************************************
 * MAIN
 *****************************************************************************/

include("../application.php");

/* form has been submitted */
if (isset($HTTP_POST_VARS) ) {
  $frm = $HTTP_POST_VARS;
  //mydebug($frm);
  if (isset($frm['download']) ) {
    
    /* if Packer not choosen, then check if user has an default packer */
    if (nvl($frm['packerID'],0) == 0) {
      $packerID = isset($session['usepackerID'])?$session['usepackerID']:0;
    } else {
    /* Packer choosen, so set default-packer for user if not set */
      $packerID = $frm['packerID'];
      setdefault($session['usepackerID'],$packerID);
    }
    
    // get the downloadURL for the File
    $goto = get_downloadURL(nvl($frm['textID']),$packerID);
    //$goto = empty($session["wantsurl"]) ? "$CFG->wwwroot/main.php" : $session["wantsurl"];
    header("Location: $goto");
    die;

  }
}

// textID angegeben ?!
if(!isset($id)) {
  $goto = empty($session["wantsurl"]) ? "$CFG->wwwroot/main.php" : $session["wantsurl"];
  header("Location: $goto");
  die;
}

$DOC_TITLE = "&Uuml;bersetzen &amp; Download";
include("$CFG->templatedir/header.php");
include("templates/takeTask.inc");
include("templates/download.inc");
include("$CFG->templatedir/footer.php");

/******************************************************************************
 * FUNCTIONS
 *****************************************************************************/

?>

