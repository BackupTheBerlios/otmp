<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/user_data.php,v $
 * $Revision: 1.6 $
 * $Id: user_data.php,v 1.6 2001/12/09 00:31:38 alexgn Exp $
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
/* function returns $qid Object containing Firstname, Lastname, Email */ 
	return sql_getUserdataFromUsername($LoginName);
	

}

function getUserTransCapData($userid) {
/* function returns users translation capabilities */
$tmp2 = sql_getUserTransCapData($userid);
	if(is_null($tmp2)) {
		echo("<tr><td colspan=\"3\">Es wurden bislang keine Sprachangaben gemacht!</td></tr>\n");
	} else {
		foreach($tmp2 as $v1) {
			$i = 0;
			foreach($v1 as $v2){
			   if ($i == 0) {
				$tmp3 = sql_getLangName($v2);
				if (is_null($tmp3)) {
				  echo("<tr><td></td>\n");
				} else {
				  echo ("<tr><td>" .$tmp3. "</td>\n");
				  $i = 1;
				}
			   } elseif ($i == 1) {
				$tmp3 = sql_getLangName($v2);
				if (is_null($tmp3)) {
				  echo("<td></td>\n");
				} else {
				  echo ("<td>" .$tmp3. "</td>\n");
				  $i = 2;
				}
			   } else {
				$tmp3 = sql_getKatName($v2);
				if (is_null($tmp3)) {
				  echo("<td></td></tr>\n");
				} else {
				  echo ("<td>" .$tmp3. "</td></tr>\n");
				  $i = 0;
   				}
			   }
			}
		}
	}
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
