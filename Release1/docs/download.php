<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/download.php,v $
 * $Revision: 1.3 $
 * $Id: download.php,v 1.3 2002/01/27 22:12:50 darkpact Exp $
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

$DOC_TITLE = "Download";
include("$CFG->templatedir/header.php");
include("templates/download.inc");
include("$CFG->templatedir/footer.php");

/******************************************************************************
 * FUNCTIONS
 *****************************************************************************/
function get_downloadURL($textID, $packerID) {
/* gibt eine URL für den Download zurück */
  global $CFG;
  
  $CFG->filedirwww="$CFG->wwwroot/files";  // temp
  // dummy
  $packerID = 1;
  $ext = getExtension4TextID($textID);
  
  //dummy
  $filename = "$CFG->filedirwww/$textID.$ext";
  return $filename;
}

function getExtension4TextID($textID) {
  /* this function has to be in sqlLib */
  /* returns the FileTypeType (extension) for the given TextID */
  
  $query = "SELECT FiletypeType FROM otmp_Filetype
            LEFT JOIN otmp_Text ON TextFID = FiletypeFID
            WHERE TextTID = $textID";
  $qid = db_query($query);
  list($ext) = db_fetch_array($qid);
  if( $ext == "" ) {
    echo "internal error: can't find extension for Text in DB";
    die;
  }
  return $ext;  
}
?>

