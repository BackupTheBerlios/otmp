<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/userdocuments.php,v $
 * $Revision: 1.1 $
 * $Id: userdocuments.php,v 1.1 2001/12/06 15:55:01 hifix Exp $
 *
 * To Do:
 * - Localisation
 * - minimal password length check
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
  return sql_getDocuments($usrid);
}

?>
