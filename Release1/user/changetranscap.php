<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/changetranscap.php,v $
 * $Revision: 1.2 $
 * $Id: changetranscap.php,v 1.2 2001/12/13 21:24:49 hifix Exp $
 *
 * To Do:
 * - 
 * - 
 */

/******************************************************************************
 * MAIN
 *****************************************************************************/

include("../application.php");

/* form has been submitted, changing user data */
if (match_referer() && isset($HTTP_POST_VARS)) {
  if($delete == 0) {
     /* user wants to add new translation capabilities */
     $frm = $HTTP_POST_VARS;

     $errormsg = validate_form($frm, $errors);

     if (empty($errormsg)) {
       $status = update_transcap($frm,$session['userid']);

       $DOC_TITLE = "Database update successful!";
       include("$CFG->templatedir/header.php");
       include("templates/change_data_success.inc");
       include("$CFG->templatedir/footer.php");
       die;
     } else {
       $session['notice'] = $errormsg;
     }
  } else {
    /* user wants to delete his translation capabilities */
    $frm = $HTTP_POST_VARS;
    $deletemarked = deletemarked($frm,$session['userid']);    

    $DOC_TITLE = "Changing of User Data Successful";
    include("$CFG->templatedir/header.php");
    include("templates/change_data_success.inc");
    include("$CFG->templatedir/footer.php");
    die;
  }
}
/* Check that user is logged in is missing! */

$DOC_TITLE = "Change Translation Capabilities Data";
$tmp = get_user_info($session['username']);
include("$CFG->templatedir/header.php");
include("templates/changetranscap.inc");
include("$CFG->templatedir/footer.php");

/******************************************************************************
 * FUNCTIONS
 *****************************************************************************/

function validate_form(&$frm, &$errors) {
/* validate the signup form, and return the error messages in a string.  if
 * the string is empty, then there are no errors */

  $errors = new Object;
  $msg = "";

  
  if (empty($frm["fromlang"])) {
    $errors->fromlang = true;
    $msg .= "<li>Sie haben keine Quellsprache angegeben";  
  }
  
  if (empty($frm["tolang"])) {
    $errors->tolang = true;
    $msg .= "<li>Sie haben keine Zielsprache angegeben";
  }
  
  if (empty($frm["kat"])) {
    $errors->kat = true;
    $msg .= "<li>Sie haben keine Kategorie angegeben";  
  
  }
  
  return $msg;
}

function deletemarked(&$frm,$userid) {
/* function deletes all marked entries from database */

    $tmp4 = sql_deleteMarkedTransData($frm,$userid);
  
}

function getUserTransCapData($userid) {
/* function returns users translation capabilities */
$tmp2 = sql_getUserTransCapData($userid);
  $j = 1;
  $valuestr = "";
  if(empty($tmp2)) {
    echo("<tr><td colspan=\"4\">Es wurden bislang keine Sprachangaben gemacht!</td></tr>\n");
  } else {
    foreach($tmp2 as $v1) {
      $i = 0;
      foreach($v1 as $v2){
         if ($i == 0) {
        $tmp3 = sql_getLangName($v2);
        if (empty($tmp3)) {
          echo("<tr><td></td>\n");
          $i = 1;
        } else {
          echo ("<tr><td>" .$tmp3. "</td>\n");
          $valuestr = "" .$v2. ":";
          $i = 1;
        }
         } elseif ($i == 1) {
        $tmp3 = sql_getLangName($v2);
        if (empty($tmp3)) {
          echo("<td></td>\n");
          $i = 2;
        } else {
          echo ("<td>" .$tmp3. "</td>\n");
          $valuestr = $valuestr . $v2 .":";
          $i = 2;
        }
         } else {
        $tmp3 = sql_getKatName($v2);
        if (empty($tmp3)) {
          echo("<td></td></tr>\n");
          $i = 0;
        } else {
          $valuestr = $valuestr . $v2;
          echo ("<td>" .$tmp3. "</td>\n");
          echo ("<td align=\"center\">
           <input type=\"checkbox\" name=\"transl" .$j. "\" 
           value=\"". $valuestr  ."\"></td>\n</tr>\n");
          $i = 0;
          $j = $j + 1;
          $valuestr = "";
          }
         }
      }
    }
  }
}

function getAllTransPoss() {
  $alllang = sql_getAllLangs();
  $allcateg = sql_getAllCategories();

  $i = 0;
   echo("<tr>\n");
  if(empty($alllang)){
  echo("<td colspan=\"2\">No languages found in database!</td>\n");
  } else {  
     while( $i < 2){
        if($i == 0) {
     echo("<td><select name=\"fromlang\" size=\"5\">\n");
  } else {
     echo("<td><select name=\"tolang\" size=\"5\">\n");
        }
  foreach($alllang as $v1) {
    $j = 0;
    foreach($v1 as $v2) {
       if($j == 0) {
          echo("<option value=\"".$v2."\">\n");
          $j = 1;   
       } else {
          echo($v2."</option>\n");
                   }
    }
        }
        echo("</td>\n");
        $i = $i + 1;
     }
     if(empty($allcateg)){
        echo("<td>No categories found in database!</td>");
     } else {
  echo("<td><select name=\"kat\" size=\"5\">\n");
        foreach($allcateg as $v1) {
    $j = 0;
    foreach($v1 as $v2) {
       if($j == 0) {
          echo("<option value=\"".$v2."\">\n");
          $j = 1;   
       } else {
          echo($v2."</option>\n");
                   }
    }
        }
     }
  }
  echo("</tr>\n");
}

function update_transcap($frm,$userid) {

   $valuestring = NULL;
   $elements = count($frm);
   $j = 1;

   foreach($frm as $v1){
       if ($j == 1) {
          $valuestring = $v1;
    $j = $j + 1;
       } elseif($j > 1 AND $j < $elements) {
    $valuestring = $valuestring . ":" .$v1;
    $j = $j + 1;
       } else {
       }
     }
   
   return sql_updateUebsetzerSprachen($valuestring,$userid);  

}

function get_user_info($LoginName) {
/* function gibt $qid Objekt zurück mit Firstname, Lastname, Email */ 
  return sql_getUserdataFromUsername($LoginName);
  

}

?>
