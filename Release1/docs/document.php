<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/document.php,v $
 * $Revision: 1.3 $
 * $Id: document.php,v 1.3 2001/12/09 13:34:01 darkpact Exp $
 *
 * To Do:
 * - Localisation
 */

/******************************************************************************
 * MAIN
 *****************************************************************************/

include("../application.php");

$DOC_TITLE = "Document List";

setdefault($otid,"1");

include("$CFG->templatedir/header.php");
include("templates/document.inc");
include("$CFG->templatedir/footer.php");

/******************************************************************************
 * FUNCTIONS
 *****************************************************************************/

function show_docs($otid) {
/* ... */
  return sql_getBaseDocuments($otid);
}

?>
