<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/user_data.php,v $
 * $Revision: 1.4 $
 * $Id: user_data.php,v 1.4 2001/12/08 02:20:15 alexgn Exp $
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

	include("$CFG->templatedir/header.php");
	include("templates/user_data.inc");
	/* if user = uebersetzer */
		/* include user_dataUeb.inc */
	/* else include </table></center> */
 	/* end if */
	include("templates/user_dataUeb.inc");
	include("$CFG->templatedir/footer.php");
} else {
	include("$CFG->templatedir/header.php");  
        echo("<br><br>you are not logged in: <a href=\"$CFG->wwwroot/user/login.php\">login</a><br><br>");
	include("$CFG->templatedir/footer.php");
} 

/******************************************************************************
 * FUNCTIONS
 *****************************************************************************/

function get_user_info($LoginName) {
/* function gibt $qid Objekt zurück mit Firstname, Lastname, Email */ 
	return sql_getUserdataFromUsername($LoginName);
	

}

function getUserTransCapData($userid) {
}

function getUserProgrammData($userid) {

$tmp2 = sql_getUserProgrammData($userid);
           if(is_null($tmp2)) {
	   echo ("Keine Angaben");
	   } else {
		foreach($tmp2 as $v1) {
			$i = 0;
			foreach($v1 as $v2){
			   if ($i == 0) {
				echo ($v2. " ");
				$i = 1;
			   } else {
				echo ($v2. "<br>");
				$i = 0;
			   }
			}
		}
           }
}


?>
