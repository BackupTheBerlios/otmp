<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/document.php,v $
 * $Revision: 1.8 $
 * $Id: document.php,v 1.8 2001/12/18 23:29:22 hifix Exp $
 *
 * To Do:
 * - Localisation
 */

/******************************************************************************
 * MAIN
 *****************************************************************************/

include("../application.php");
$session['wantsurl']=me();  // Rücksprung (ggf)

$DOC_TITLE = "Document List";

setdefault($otid,"1");

include("$CFG->templatedir/header.php");

// testing
$id = $otid;
echo "\n<!-- ID: $id -->\n";
include("templates/document_details.inc");
//include("templates/document_langdetails.inc");
//echo "<hr>";
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
