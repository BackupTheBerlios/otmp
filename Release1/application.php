<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/application.php,v $
 *
 * $Revision: 1.13 $
 * $Id: application.php,v 1.13 2002/01/30 01:42:58 hifix Exp $ 
 * 
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
$RELEASE = "1.3";
$RELEASEDATE = "29-01-2002";

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
/* Werte von alexgn                               */
/* $CFG->wwwroot     = "/projekt/Release1";       */
/* $CFG->dirwww      = "/var/www/html/projekt/Release1";*/ 

$CFG->libdir      = "$CFG->dirwww/lib";
$CFG->imagedir    = "$CFG->wwwroot/imgs";
$CFG->templatedir = "$CFG->dirwww/templates";
$CFG->support     = "root@localhost";
$CFG->sspath      = "$CFG->dirwww/.sessions";
$CFG->uploadDir   = "$CFG->dirwww/files";

$CFG->bgcolorOne    = "#FFFFFF";
$CFG->bgcolorTwo    = "#EEEEEE";

$CFG->bgcolorNav    = "#eeeee0";

$CFG->wordlist    = "$CFG->libdir/wordlist.txt";

/* setup the db variables for "mapping" of tablenames */
$CFG->tbl_person = "otmp_Person";
$CFG->tbl_perpro = "otmp_PerPro";
$CFG->tbl_sprache = "otmp_Sprache";
$CFG->tbl_uebsprach = "otmp_UebersetzerSprachen";
$CFG->tbl_programm = "otmp_Programm";
$CFG->tbl_kategorie = "otmp_Kategorie";

$CFG->tbl_adresse = "otmp_Adresse";
$CFG->tbl_optionen = "otmp_Optionen";
$CFG->tbl_auftrag = "otmp_Auftrag";
$CFG->tbl_text = "otmp_Text";
$CFG->tbl_konto = "otmp_Konto";
$CFG->tbl_systemkonto = "otmp_SystemKonto";
$CFG->tbl_bankkonto = "otmp_BankKonto";
$CFG->tbl_filetype = "otmp_Filetype";
$CFG->tbl_prgHasType = "otmp_PrgHasType";

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
/* session_save_path($CFG->sspath); */
session_start();
session_register("session");

/* connect to the database */
db_connect($CFG->dbhost, $CFG->dbname, $CFG->dbuser, $CFG->dbpass);

set_magic_quotes_runtime(0);
?>