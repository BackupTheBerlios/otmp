<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/admin/programm.php,v $
 * $Revision: 1.1 $
 * $Id: programm.php,v 1.1 2002/01/30 01:43:42 hifix Exp $
 *
 */

/******************************************************************************
 * MAIN
 *****************************************************************************/

include("../application.php");
checklogin();
if (!require_priv(1)) { 
  $session['notice'] = "You have not the permission to access this page!!";
  header("Location: $session[wantsurl]");
  die;
}

$session['notice'] = '';
unset($show);

/* form has been submitted, try to create the new user account */
if (match_referer() && isset($HTTP_POST_VARS)) {
  $frm = $HTTP_POST_VARS;
  if(isset($frm['prgid']) )  {
    $show=1; 
  } else {
    $session['notice'] .= "error: no programmID given!<br>";
  }
}

$DOC_TITLE = "Admin - Programm";
include("$CFG->templatedir/header.php");
include("templates/programm_form.inc");
if (isset($show)) {
  include("templates/programm_data.inc");
}
include("$CFG->templatedir/footer.php");

/******************************************************************************
 * FUNCTIONS
 *****************************************************************************/

function getProgrammData($id) {
/* get Programminfos, Filetypes for give PRGID */
  return sql_getProgrammData($id);
}

function getProgrammFileTypes($id) {
  return sql_getProgrammFileTypes($id);
}

function sql_getProgrammData($id) {
 /* returns Data from Programm Table for ID */
   global $CFG;
   $qid = db_query("
     SELECT 
     ProgrammPRGID as id, 
     ProgrammName as name, 
     ProgrammVersion as version
     FROM $CFG->tbl_programm 
     WHERE ProgrammPRGID=$id ORDER BY ProgrammSort
   ");
   return db_fetch_object($qid);
}

function sql_getProgrammFileTypes($id) {
 /* returns FileTypes for Programm ID */
   global $CFG;
   $out = array();
   $query = "
     SELECT 
     prtDefault as isdefault, 
     FiletypeFID as id, 
     FiletypeType as extension,
     FiletypeNote as note
     FROM $CFG->tbl_programm 
     LEFT JOIN $CFG->tbl_prgHasType ON prtPRGID = ProgrammPRGID
     LEFT JOIN $CFG->tbl_filetype ON FiletypeFID = prtFID
     WHERE ProgrammPRGID=$id 
     ORDER BY prtSortOrder
   ";
   $qid = db_query($query);
   while ($r = mysql_fetch_object($qid)) {
      array_push($out,$r);
   }
   return $out;
}
?>
