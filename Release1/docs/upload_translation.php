<?
/*
 * Dokumenttranslation Upload
 *
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/upload_translation.php,v $
 * $Revision: 1.1 $
 * $Id: upload_translation.php,v 1.1 2002/01/30 01:40:27 hifix Exp $
 *
 * To Do:
 * - LOcalisation
 * - sicherheitschecks
 *
 */

/******************************************************************************
 * MAIN
 *****************************************************************************/

include("../application.php");
checklogin();

$session['notice'] = '';
/* form has been submitted, try to create the new user account */
if (match_referer() && isset($HTTP_POST_VARS)) {
  $frm = $HTTP_POST_VARS;
  $frm['file'] = nvl($HTTP_POST_FILES['file']);
  
  if(!empty($frm['title'])) { 
    if( change_title($frm['id'],$frm['title']) ) {
      $session['notice'] .= "Titel erfolgreich ge&auml;ndert!<br>";  
    } else {
      $session['notice'] .= "Titel nicht ge&auml;ndert!<br>"; 
    }
  }
  if( !empty($frm['abstract']) ) {
    if( change_abstract($frm['id'],$frm['abstract']) ) {
      $session['notice'] .= "Kurzbeschreibung erfolgreich ge&auml;ndert!<br>";  
    } else {
      $session['notice'] .= "Kurzbeschreibung nicht ge&auml;ndert!<br>"; 
    }
  }

  if(isset($frm['upload'])){

    $errormsg = validate_form($frm, $errors);

    //print_r($frm);
    if (empty($errormsg)) {
      if(!upload_file($frm['id'], $frm['file']['tmp_name'], $frm['file']['ext'], $frm['file']['fileID'], nvl($frm['length']),0) ) {
        $id=$frm['id'];
        $DOC_TITLE = "Upload";
        include("$CFG->templatedir/header.php");
        include("templates/upload_translation_form.inc");
        include("$CFG->templatedir/footer.php");
        die;
      } else {
        $session['notice'] .= "Datei erfolgreich hochgeladen<br>";
      }
    } else {
      $session['notice'] = $errormsg;
      $stay = 1;
    }
  } // endif is upload?!
  if( !( isset($stay) AND $stay ) ) {
    $goto = empty($session["wantsurl"]) ? "$CFG->wwwroot/main.php" : $session["wantsurl"];
    header("Location: $goto");
    die;
  }
}

$DOC_TITLE = "Upload";
include("$CFG->templatedir/header.php");
include("templates/upload_translation_form.inc");
include("$CFG->templatedir/footer.php");

/******************************************************************************
 * FUNCTIONS
 *****************************************************************************/
function validate_form(&$frm, &$errors) {
/* validate the upload form, and return the error messages in a string.  if
 * the string is empty, then there are no errors */

  $errors = new Object;
  $msg = "";

  if (empty($frm["filetyp"])) {
      $errors->filetyp = true;
      $msg .= "<li>Sie haben kein Dateiformat angegeben";
  } else {
    if (!isset($frm['file'])) {
    $errors->file = true;
    $msg .= "<li>Sie haben keine Datei angegeben/ausgew&auml;hlt";
    
    } elseif(is_uploaded_file($frm['file']['tmp_name'])) {
    // file checken
    if(preg_match("/\.(\w{2,4})$/",$frm['file']['name'],$parts)){
      /* extension given */
      $frm['file']['ext'] = $parts[1];
      // extension is valid ?
      $fileID = getFileID4ext( $frm['filetyp'],$frm['file']['ext'] );
      if( !$fileID ) {
        $errors->file = true;
      $msg .= "<li>Fehler beim Hochladen der Datei! Die Dateierweiterung ist nicht g&uuml;ltig f&uuml;r das gew&auml;hlte Programm!";
      } else {
        $frm['file']['fileID'] = $fileID;
        //mydebug($frm);
        //die;
      }
    } else {
      $errors->file = true;
      $msg .= "<li>Fehler im Dateinamen! Es ist eine Datei ohne Dateierweiterung (z.B. .doc, .txt) ausgw&auml;t worden, w&auml;len Sie eine andere Datei!<br>F&uuml;r weitere Hilfe, lesen sie bitte auf den Hilfeseiten nach.";
    }
    } else { // hacking ?!
    $errors->file = true;
    $msg .= "<li>Fehler beim Hochladen der Datei! Sicherheitsverletzung!";
    }
  }  

  return $msg;
}

function upload_file($id, $tmp_name, $ext, $typeID, $fileLength=0) {
  /* upload translationfile */
  global $session, $CFG;      

  // file anlegen/kopieren
  copy($tmp_name,$CFG->uploadDir."/$id.$ext");
  
  // Text anlegen / ändern
  return sql_AddFile4Text($id, $typeID,$session['userid'],$fileLength);
}

function sql_AddFile4Text($id, $typeID, $userid, $length=0) {
  global $CFG;
  db_query("UPDATE otmp_Text SET TextFID=$typeID, TextAutor=$userid, TextLaenge='$length', TextStatus='finished' WHERE TextTID=$id");
  return db_affected_rows();
}

function change_title($id,$title) {
  global $session;
  return sql_changeTextTitle($id,$title);
}

function sql_changeTextTitle($id,$title) {
  global $CFG;
  db_query("UPDATE otmp_Text SET TextTitel='".sqlv($title)."' WHERE TextTID=$id");
  return db_affected_rows();
}

function change_abstract($id,$abstract) {
  global $session;
  return sql_changeTextAbstract($id,$abstract);
}

function sql_changeTextAbstract($id,$abstract) {
  global $CFG;
  db_query("UPDATE otmp_Text SET TextAbstract='".sqlv($abstract)."' WHERE TextTID=$id");
  return db_affected_rows();
}