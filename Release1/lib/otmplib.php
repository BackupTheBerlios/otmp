<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/lib/otmplib.php,v $
 * $Revision: 1.7 $
 * $Id: otmplib.php,v 1.7 2002/01/30 01:42:58 hifix Exp $
 * 
 */
 
function wday(&$dnummer) {
  $wday = array("","Mo","Di","Mi","Do","Fr","Sa","So");
  return nvl($wday[$dnummer])." ";
}

function require_priv($level) {
/* this function checks to see if the user has the privilege $level.  if not,
 * return 0 */

  global $session;
  return ($session["adminlevel"] == $level); 
}

function generate_password($maxlen=10) {
/* returns a randomly generated password of length $maxlen.  inspired by
 * http://www.phpbuilder.com/columns/jesus19990502.php3 */

  global $CFG;

  $fillers = "1234567890!@#$%&*-_=+^";
  $wordlist = file($CFG->wordlist);

  srand((double) microtime() * 1000000);
  $word1 = trim($wordlist[rand(0, count($wordlist) - 1)]);
  $word2 = trim($wordlist[rand(0, count($wordlist) - 1)]);
  $filler1 = $fillers[rand(0, strlen($fillers) - 1)];

  return substr($word1 . $filler1 . $word2, 0, $maxlen);
}

function reset_user_password($username) {
/* resets the password for the user with the username $username, and sends it
 * to him/her via email */

  global $CFG;

  /* load up the user record */
  $user = sql_getUserdataFromUsername($username);

  /* reset the password */
  $newpassword = generate_password();
  sql_setUserpasswd($username, $newpassword);

  /* email the user with the new account information */
  $var = new Object;
  $var->username = $username;
  $var->fullname = $user->Firstname . " " . $user->Lastname;
  $var->newpassword = $newpassword;
  $var->support = $CFG->support;

  $emailbody = read_template("$CFG->templatedir/email/reset_password.php", $var);

  mail(
    "$var->fullname <$user->Email>",
    "OTMP Account Information",
    $emailbody,
    "From: $var->support");
}


function username_exists($username) {
/* returns true if the username exists */

  return sql_usernameExists($username);
}

function name_exists($firstname, $lastname) {
/* returns the true if the name (first, last) exists */

  return sql_nameExists($firstname, $lastname);
}

function email_exists($email) {
/* returns true the email address exists */

  return sql_emailExists($email);
}

function checklogin() 
{
  global $session, $CFG;
  if( !isset($session['userid']) ) {
    $session['notice'] = "Sie müssen sich erst einloggen um diese Seite benutzen zu können";
    header("Location: ".$CFG->wwwroot."/user/login.php");
    die;
  }
}

function err(&$errorvar) {
/* if $errorvar is set, then print an error marker */

  if (isset($errorvar)) {
    echo "<font color=#ff0000><B>&lt;&lt;</B></font>";
  }
}

function mydebug(&$var) {
  echo "<hr><pre>\n";
  print_r($var);
  echo "</pre>\n<hr>";
}


function getDocumentDetails($id,$full=0) {
/* Daten zum Dokument zurückgeben */
  return sql_getDocument($id,$full);
}

function getDocuments4BaseID($id) {
/* Alle Dokumente im System, welche eine BaseID haben 
 * return object of dokument data */
  global $CFG;
  $d = sql_getDocuments4BaseID($id);
  return $d;
}

function get_downloadURL($textID, $packerID) {
/* gibt eine URL für den Download zurück */
  global $CFG;
  
  $CFG->filedirwww="$CFG->wwwroot/files";  // temp
  // dummy
  $packerID = 1;
  $ext = getExtension4TextID($textID);
  
  //dummy
  $filename = "$CFG->filedirwww/$textID.$ext";
  return $filename;
}

function getExtension4TextID($textID) {
  /* this function has to be in sqlLib */
  /* returns the FileTypeType (extension) for the given TextID */
  
  $query = "SELECT FiletypeType FROM otmp_Filetype
            LEFT JOIN otmp_Text ON TextFID = FiletypeFID
            WHERE TextTID = $textID";
  $qid = db_query($query);
  list($ext) = db_fetch_array($qid);
  if( $ext == "" ) {
    echo "internal error: can't find extension for Text in DB";
    die;
  }
  return $ext;  
}

function getFileID4ext($prgID,$ext) {
  /* returns fileTypeID for given extension and Programm*/
  global $CFG;
  // FileTypID bestimmen
    $qid = db_query("
      SELECT  
      FiletypeFID 
      FROM $CFG->tbl_programm 
      LEFT JOIN $CFG->tbl_prgHasType ON prtPRGID = ProgrammPRGID
      LEFT JOIN $CFG->tbl_filetype ON FiletypeFID = prtFID
      WHERE ProgrammPRGID=$prgID AND FiletypeType like '".$ext."'
      ");
    list($filetypeID) = db_fetch_array($qid);
    if(!isset($filetypeID)) {
      // errorhandling for unknown fileExtension for given Programm here ...
      return 0;
    }
    return $filetypeID;
}
?>
