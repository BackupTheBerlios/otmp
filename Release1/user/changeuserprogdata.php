<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/changeuserprogdata.php,v $
 * $Revision: 1.3 $
 * $Id: changeuserprogdata.php,v 1.3 2001/12/13 21:27:04 hifix Exp $
 *
 * To Do:
 * - Check that user is logged in! 
 * - How to let users select programms not found in our database?
 */

/******************************************************************************
 * MAIN
 *****************************************************************************/

include("../application.php");

/* form has been submitted, changing user data */
if (match_referer() && isset($HTTP_POST_VARS)) {
  $frm = $HTTP_POST_VARS;

    $status = update_userProgramms($frm,$session['userid']);

    $DOC_TITLE = "Changing of User Programm Data Successful";
    include("$CFG->templatedir/header.php");
    include("templates/change_data_success.inc");
    include("$CFG->templatedir/footer.php");
    die;

}
/* Check that user is logged in is missing! */

$DOC_TITLE = "Change User Programm Data";
# $tmp = get_user_info($session['username']);
include("$CFG->templatedir/header.php");
include("templates/changeuserprogdata.inc");
include("$CFG->templatedir/footer.php");

/******************************************************************************
 * FUNCTIONS
 *****************************************************************************/

function update_userProgramms(&$frm,$userid) {
/* update programms, that user has access to*/
  $i = count($frm);
  $delete = sql_deleteUserProgrammData($userid);

  foreach($frm as $v) {
    if ($i > 1) { 
       $i = $i - 1;
       $changedata = sql_setUserProgrammData($v,$userid);
    }
  } 
  # return sql_updateuserProgramms($frm['lastname'], $frm['firstname'], $frm['email'],$userid);
}

function getProgramms($userid) {
/* gets every programm from db and checks wether user has programm */

$userprogramms = sql_getUserProgrammData2($userid);
$programms = sql_getProgramms();
  $i = 0;
  if (empty($programms)) {
  /* In case no programms can be found in the database */
  echo("Leider keine Programme zur Auswahl!");
  } else {
  foreach($programms as $v1) {
      foreach($v1 as $v2){
        if ($i == 0) {
          echo ("<input type=\"checkbox\" name=\"progs".$v2."\" value=\"".$v2."\" ");
          # check wether user has programm
          if (empty($userprogramms)) {
          } else {
             foreach($userprogramms as $up) {
               if ( $up == $v2) {
                 echo ("checked");
                 break;
               }
             }
          }
          echo(">");
          $i = 1;
          } elseif($i == 1) {
          echo (" " .$v2. " ");
          $i = 2;
          } else {
          echo ($v2. "<br>\n ");
          $i = 0;
        }
      }
  }
  }
}

?>
