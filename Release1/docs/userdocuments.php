<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/userdocuments.php,v $
 * $Revision: 1.2 $
 * $Id: userdocuments.php,v 1.2 2001/12/06 22:38:34 darkpact Exp $
 *
 * To Do:
 * - Localisation
 */

/******************************************************************************
 * MAIN
 *****************************************************************************/

include("../application.php");

$DOC_TITLE = "All User Documents";

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
