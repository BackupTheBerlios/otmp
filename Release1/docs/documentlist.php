<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/documentlist.php,v $
 * $Revision: 1.4 $
 * $Id: documentlist.php,v 1.4 2001/12/09 13:34:01 darkpact Exp $
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

function show_tasks($status) {
/* ... */
  return sql_getAuftrag($status);
}

?>
