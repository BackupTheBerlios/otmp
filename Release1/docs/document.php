<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/document.php,v $
 * $Revision: 1.6 $
 * $Id: document.php,v 1.6 2001/12/16 22:26:29 hifix Exp $
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

// testing
$id = $otid;
include("templates/document_details.inc");
include("templates/document_langdetails.inc");
echo "<hr>";

include("templates/document.inc");
include("$CFG->templatedir/footer.php");

/******************************************************************************
 * FUNCTIONS
 *****************************************************************************/

function show_docs($otid) {
/* ... */
  return sql_getBaseDocuments($otid);
}

function show_name($id) {
/* ... */
  return sql_getUserFromText($id);
}

?>
