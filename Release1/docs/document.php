<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/document.php,v $
 * $Revision: 1.1 $
 * $Id: document.php,v 1.1 2001/12/06 15:55:01 hifix Exp $
 *
 * To Do:
 * - Localisation
 * - minimal password length check
 */

/******************************************************************************
 * MAIN
 *****************************************************************************/

include("../application.php");

$DOC_TITLE = "Document List";

setdefault($list,"all");

include("$CFG->templatedir/header.php");
include("templates/documentlist.inc");
include("$CFG->templatedir/footer.php");



/******************************************************************************
 * FUNCTIONS
 *****************************************************************************/

function show_docs($baseid) {
/* ... */
  return sql_getDocuments($baseid);
}

?>
