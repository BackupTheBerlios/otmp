<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/changetranscap.php,v $
 * $Revision: 1.7 $
 * $Id: changetranscap.php,v 1.7 2002/01/11 13:15:05 alexgn Exp $
 *
 * To Do:
 * - 
 * - 
 */

/******************************************************************************
 * MAIN
 *****************************************************************************/

include("../application.php");
/* $session['wantsurl']=me();  // Rücksprung (ggf) */
checklogin();

/* form has been submitted, changing user data */
if (match_referer() && isset($HTTP_POST_VARS)) {
  if($delete == 0) {
     /* user wants to add new translation capabilities */
     $frm = $HTTP_POST_VARS;

     $errormsg = validate_form($frm, $errors, $session['userid']);

     if (empty($errormsg)) {
       $status = update_transcap($frm,$session['userid']);

       /* change user translator status to translator */
       if ( $session['translator'] == 0){
           changeUserToTranslator($session['userid']);
	   $session['translator'] = 1;
       }
       
       /* Obsolete Code                                 */
       /* $DOC_TITLE = "Database update successful!";   */
       /* include("$CFG->templatedir/header.php");      */
       /* include("templates/change_data_success.inc"); */
       /* include("$CFG->templatedir/footer.php");      */

       $session['notice']="&Uuml;bersetzer F&auml;higkeiten erfolgreich hinzugef&uuml;gt!";
       $goto = empty($session["wantsurl"]) ? "$CFG->wwwroot/user/user_data.php" : $session["wantsurl"];
       header("Location: $goto");
       die;

     } else {
       $session['notice'] = $errormsg;
     }
  } else {
    /* user wants to delete his translation capabilities */
    $frm = $HTTP_POST_VARS;
    $deletemarked = deletemarked($frm,$session['userid']);    

    /* Obsolete Code                                    */
    /* $DOC_TITLE = "Changing of User Data Successful"; */
    /* include("$CFG->templatedir/header.php");         */
    /* include("templates/change_data_success.inc");    */
    /* include("$CFG->templatedir/footer.php");         */
    
    $session['notice']="&Uuml;bersetzer F&auml;higkeiten erfolgreich gel&ouml;scht!";
    $goto = empty($session["wantsurl"]) ? "$CFG->wwwroot/user/user_data.php" : $session["wantsurl"];
    header("Location: $goto");
    die;
  }
}

$DOC_TITLE = "Change Translation Capabilities Data";
$tmp = get_user_info($session['username']);
include("$CFG->templatedir/header.php");
include("templates/changetranscap.inc");
include("$CFG->templatedir/footer.php");

/******************************************************************************
 * FUNCTIONS
 *****************************************************************************/

function changeUserToTranslator($userid) {
   return sql_changeUserToTranslator($userid);
}

function validate_form(&$frm, &$errors,$userid) {
/* validate the signup form, and return the error messages in a string.  if
 * the string is empty, then there are no errors */

  $errors = new Object;
  $msg = "";

  if (empty($frm["fromlang"]) OR empty($frm["tolang"]) OR empty($frm["kat"])) {
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
  } elseif (transCapExists($frm["fromlang"],$frm["tolang"],$frm["kat"],$userid) == TRUE) {
   $errors->fromlang = true;
   $errors->tolang = true; 
   $errors->kat = true;
   $msg .= "<li>Dieser Eintrag existiert bereits!";	
  }

   if( !empty($frm["fromlang"]) AND !empty($frm["tolang"]) AND $frm["fromlang"] == $frm["tolang"]) {
   $errors->fromlang = true;
   $errors->tolang = true;
   $msg .= "<li>Quell- und Zielsprache m&uuml;&szlig;en unterschiedlich sein.";
  }

  return $msg;
}

function transCapExists($fromlang, $tolang, $kat, $userid) {
/* Checks wether data already exists in UebersetzerSprachen table */
  return sql_existsTransCap($fromlang, $tolang, $kat, $userid);
}


function deletemarked(&$frm,$userid) {
/* function deletes all marked entries from database */

    $tmp4 = sql_deleteMarkedTransData($frm,$userid);
  
}

/* function obsolete */
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
        echo("</select></td>\n");
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
       echo("</select></td>\n");
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
