<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/userdocuments.php,v $
 * $Revision: 1.3 $
 * $Id: userdocuments.php,v 1.3 2001/12/09 13:34:01 darkpact Exp $
 *
 * To Do:
 * - Localisation
 */

/******************************************************************************
 * MAIN
 *****************************************************************************/

include("../application.php");

$DOC_TITLE = "All User Documents";

setdefault($usrid,"1");

include("$CFG->templatedir/header.php");
include("templates/userdocuments.inc");
include("$CFG->templatedir/footer.php");

/******************************************************************************
 * FUNCTIONS
 *****************************************************************************/

function show_docs($usrid) {
/* ... */
  return sql_getUserDocuments($usrid);
}

?>
