<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/Release1/Attic/application.php,v $
 * $Revision: 1.1 $
 * $Id: application.php,v 1.1 2001/12/02 08:23:05 ahlabadi Exp $
 *
 * -----------------------------------------------------------------
 *
 * Original File was:
 * application.php (c) 2000 Ying Zhang (ying@zippydesign.com)
 *
 * TERMS OF USAGE:
 * This file was written and developed by Ying Zhang (ying@zippydesign.com)
 * for educational and demonstration purposes only.  You are hereby granted the
 * rights to use, modify, and redistribute this file as you like.  The only
 * requirement is that you must retain this notice, without modifications, at
 * the top of your source code.  No warranties or guarantees are expressed or
 * implied. DO NOT use this code in a production environment without
 * understanding the limitations and weaknesses pretaining to or caused by the
 * use of these scripts, directly or indirectly. USE AT YOUR OWN RISK!
 */

/* turn on verbose error reporting (15) to see all warnings and errors */
error_reporting(15);
$RELEASE = "1.0";
$RELEASEDATE = "24-11-2001";

$debug_mode=1;

/* define a generic object */
class object {};

/* setup the configuration object */
$CFG = new object;

$CFG->PNAME  = "OTMP ";
$CFG->dbhost = "localhost";
$CFG->dbname = "otmp";
$CFG->dbuser = "otmp";
$CFG->dbpass = "";

$CFG->wwwroot     = "/otmp/Release1";
$CFG->dirwww      = "/var/www/otmp/Release1";
$CFG->libdir      = "$CFG->dirwww/lib";
$CFG->imagedir    = "$CFG->wwwroot/imgs";
$CFG->templatedir = "$CFG->dirwww/templates";
$CFG->support     = "root@localhost";
$CFG->sspath      = "$CFG->dirwww/.sessions";

$CFG->bgcolorOne    = "#FFFFFF";
$CFG->bgcolorTwo    = "#EEEEEE";

$CFG->bgcolorNav    = "#eeeee0";

$CFG->wordlist    = "$CFG->libdir/wordlist.txt";

/* setup the db variables for "mapping" of tablenames */
$CFG->tbl_user = "otmp_user";

/* define database error handling behavior, since we are in development stages
 * we will turn on all the debugging messages to help us troubleshoot */
$DB_DEBUG = true;
$DB_DIE_ON_FAIL = true;

/* load up standard libraries  */
require("$CFG->libdir/stdlib.php");
require("$CFG->libdir/dblib.php");
require("$CFG->libdir/otmplib.php");

require("$CFG->libdir/sql.php");

/* setup some global variables */
$ME = qualified_me();

/* start up the sessions, to keep things clean and manageable we will just
 * use one array called SESSION to store our persistent variables */
session_save_path($CFG->sspath);
session_start();
session_register("session");

/* connect to the database */
db_connect($CFG->dbhost, $CFG->dbname, $CFG->dbuser, $CFG->dbpass);

?>
