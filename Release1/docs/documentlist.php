<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/documentlist.php,v $
 * $Revision: 1.6 $
 * $Id: documentlist.php,v 1.6 2001/12/14 09:33:04 darkpact Exp $
 *
 * To Do:
 * - Localisation
 */

/******************************************************************************
 * MAIN
 *****************************************************************************/

include("../application.php");

$DOC_TITLE = "Document Info";

include("$CFG->templatedir/header.php");
include("templates/documentlist.inc");
include("$CFG->templatedir/footer.php");

/******************************************************************************
 * FUNCTIONS
 *****************************************************************************/

function show_docs($status) {
/* ... */
  return sql_getDocuments($status);
}

function show_name($id) {
/* ... */
  return sql_getUserFromText($id);
}

?>
