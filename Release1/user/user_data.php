<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/user_data.php,v $
 * $Revision: 1.1 $
 * $Id: user_data.php,v 1.1 2001/12/04 20:52:24 alexgn Exp $
 *
 * To Do:
 * - 
 * - 
 */

/******************************************************************************
 * MAIN
 *****************************************************************************/

include("../application.php");

/* Check wether user is signed in. In main.php, the link leading */
/* leading to this page should not be visible, unless user is    */
/* signed in.                                                    */

$DOC_TITLE = "User Account Info";

if ( isset($session['userid']) ){
 
	$tmp = get_user_info($session['username']);
	# echo $tmp->Firstname;

	include("$CFG->templatedir/header.php");
	include("templates/user_data.inc");
	include("$CFG->templatedir/footer.php");
} else {  
        echo("you are not logged in: <a href=\"=$CFG->wwwroot/user/login.php\">login</a>");
} 

/******************************************************************************
 * FUNCTIONS
 *****************************************************************************/

function get_user_info($LoginName) {
/* function gibt $qid Objekt zurück mit Firstname, Lastname, Email */ 
	return sql_getUserdataFromUsername($LoginName);
	

}

function insert_user(&$frm) {
/* add the new user into the database */
 
  return sql_addNewUser($frm['lastname'], $frm['firstname'], $frm['email'], $frm['username'], $frm['password']);
}

?>
