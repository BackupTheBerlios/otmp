<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/user_data.php,v $
 * $Revision: 1.7 $
 * $Id: user_data.php,v 1.7 2001/12/12 10:19:43 hifix Exp $
 *
 * To Do:
 * - 
 * - 
 */

/******************************************************************************
 * MAIN
 *****************************************************************************/

include("../application.php");
$session['wantsurl']=me();  // Rücksprung (ggf)
checklogin();

$DOC_TITLE = "User Account Info";
 
$tmp = get_user_info($session['username']);

include("$CFG->templatedir/header.php");
include("templates/user_data.inc");
/* if user = uebersetzer */
/* include user_dataUeb.inc */
/* else include </table></center> */
/* end if */
include("templates/user_dataUeb.inc");
include("$CFG->templatedir/footer.php");

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
  if(empty($tmp2)) {
    echo("<tr><td colspan=\"3\">Es wurden bislang keine Sprachangaben gemacht!</td></tr>\n");
  } else {
    foreach($tmp2 as $v1) {
      $i = 0;
      foreach($v1 as $v2){
         if ($i == 0) {
        $tmp3 = sql_getLangName($v2);
        if (empty($tmp3)) {
          echo("<tr><td></td>\n");
        } else {
          echo ("<tr><td>" .$tmp3. "</td>\n");
          $i = 1;
        }
         } elseif ($i == 1) {
        $tmp3 = sql_getLangName($v2);
        if (empty($tmp3)) {
          echo("<td></td>\n");
        } else {
          echo ("<td>" .$tmp3. "</td>\n");
          $i = 2;
        }
         } else {
        $tmp3 = sql_getKatName($v2);
        if (empty($tmp3)) {
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
           if(empty($tmp2)) {
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
