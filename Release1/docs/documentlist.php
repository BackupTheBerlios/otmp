<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/documentlist.php,v $
 * $Revision: 1.3 $
 * $Id: documentlist.php,v 1.3 2001/12/06 22:38:34 darkpact Exp $
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
include("templates/document.inc");
include("$CFG->templatedir/footer.php");

/******************************************************************************
 * FUNCTIONS
 *****************************************************************************/

function show_tasks($status) {
/* ... */
  return sql_getAuftrag($status);
}

?>
