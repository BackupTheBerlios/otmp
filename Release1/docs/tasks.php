<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/Attic/tasks.php,v $
 * $Revision: 1.1 $
 * $Id: tasks.php,v 1.1 2001/12/10 22:08:46 darkpact Exp $
 *
 * To Do:
 * - Localisation
 */

/******************************************************************************
 * MAIN
 *****************************************************************************/

include("../application.php");

$DOC_TITLE = "Tasks Info";

setdefault($list,"all");

include("$CFG->templatedir/header.php");
include("templates/tasks.inc");
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
