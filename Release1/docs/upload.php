<?
/*
 * Dokument Upload
 *
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/upload.php,v $
 * $Revision: 1.6 $
 * $Id: upload.php,v 1.6 2002/01/27 22:12:50 darkpact Exp $
 *
 * To Do:
 * - LOcalisation
 * - check for doublettes of title in DB 
 *
 * last done:
 * - added Fileupload for real
 */

/******************************************************************************
 * MAIN
 *****************************************************************************/

include("../application.php");
checklogin();

$CFG->uploadDir = "$CFG->dirwww/files";

/* form has been submitted, try to create the new user account */
if (match_referer() && isset($HTTP_POST_VARS)) {
  $frm = $HTTP_POST_VARS;
  $frm['file'] = nvl($HTTP_POST_FILES['file']);
  $errormsg = validate_form($frm, $errors);
  
  //print_r($frm);
  if (empty($errormsg)) {
    $id = upload_file($frm);
    unset($errors);
    unset($frm);
    $DOC_TITLE = "Upload Successful";
    include("$CFG->templatedir/header.php");
    include("templates/upload_success.inc");
    include("templates/document_details.inc");
    include("templates/maketask_form.inc");
    include("$CFG->templatedir/footer.php");
    die;
  } else {
    $session['notice'] = $errormsg;
  }
}

$DOC_TITLE = "Upload";
include("$CFG->templatedir/header.php");
include("templates/upload_data_form.inc");
include("$CFG->templatedir/footer.php");

/******************************************************************************
 * FUNCTIONS
 *****************************************************************************/

function validate_form(&$frm, &$errors) {
/* validate the upload form, and return the error messages in a string.  if
 * the string is empty, then there are no errors */

  $errors = new Object;
  $msg = "";

  
  if (empty($frm["title"])) {
    $errors->title = true;
    $msg .= "<li>Sie haben keinen Titel angegeben";  
  }
  
  if (empty($frm["lang"])) {
    $errors->lang = true;
    $msg .= "<li>Sie haben die Sprache f&uml;r den Text nicht angegeben";
  }
  
  if (empty($frm["cat"])) {
      $errors->cat = true;
      $msg .= "<li>Sie haben keine Textkategorie angegeben";
  }
  
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

function upload_file(&$frm) {
  global $session, $CFG;      
  $ext=$frm['file']['ext']; // fileextension for savefile

  // neuen Text anlegen
  $textID = sql_addNewText($frm['title'],nvl($frm['abstract']),nvl($frm['length'],0),$frm['lang'],nvl($frm['cat'],0),$frm['file']['fileID'],$session['userid']);
  // file anlegen/kopieren
  copy($frm['file']['tmp_name'],$CFG->uploadDir."/$textID.$ext");
  
  return $textID;
  
}

function getFileID4ext($prgID,$ext) {
  /* returns */
  // FileTypID bestimmen
    $qid = db_query("
    	SELECT FiletypeFID FROM otmp_Filetype 
    	WHERE FiletypePRGID = $prgID
    	  AND FiletypeType like '".$ext."'
    	");
   	list($filetypeID) = db_fetch_array($qid);
   	if(!isset($filetypeID)) {
   	  // errorhandling for unknown fileExtension for given Programm here ...
   	  return 0;
   	}
    return $filetypeID;
}
?>