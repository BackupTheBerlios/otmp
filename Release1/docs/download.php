<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/download.php,v $
 * $Revision: 1.1 $
 * $Id: download.php,v 1.1 2001/12/18 15:24:34 hifix Exp $
 *
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
    $goto = get_downloadURL(nvl($frm['fileID']),$packerID);
    //$goto = empty($session["wantsurl"]) ? "$CFG->wwwroot/main.php" : $session["wantsurl"];
    header("Location: $goto");
    die;

  }
}

$DOC_TITLE = "Download";
include("$CFG->templatedir/header.php");
include("templates/download.inc");
include("$CFG->templatedir/footer.php");

/******************************************************************************
 * FUNCTIONS
 *****************************************************************************/
function get_downloadURL($fileID, $packerID) {
/* gibt eine URL für den Download zurück */
  global $CFG;
  
  $CFG->filedirwww="$CFG->";  // temp
  // dummy
  $packerID = 1;
  $ext = 0;
  
  if($ext) {
    // filename erzeugen
    $filename = "$CFG->filedirwww/$fileID_$packerID.$packerExt";
  } else {
    // hier Fehlerbehandlung
    $filename = "$CFG->filedirwww/$fileID";
  }
  
  //dummy
  $filename = "$CFG->filedirwww/text.doc";
  return $filename;
}
?>

