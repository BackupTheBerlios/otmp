<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/tasklist.php,v $
 * $Revision: 1.1 $
 * $Id: tasklist.php,v 1.1 2001/12/14 09:32:44 darkpact Exp $
 *
 * To Do:
 * - Localisation
 */

/******************************************************************************
 * MAIN
 *****************************************************************************/

include("../application.php");

$DOC_TITLE = "Tasks Info";

setdefault($list,"open");

include("$CFG->templatedir/header.php");
include("templates/tasklist.inc");
include("$CFG->templatedir/footer.php");

/******************************************************************************
 * FUNCTIONS
 *****************************************************************************/

function show_tasks($status) {
/* ... */
  return sql_getAuftrag($status);
}

function show_name($id) {
/* ... */
  return sql_getUserFromText($id);
}

?>
