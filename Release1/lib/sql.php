<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/lib/sql.php,v $
 * $Revision: 1.27 $
 * $Id: sql.php,v 1.27 2001/12/16 22:23:38 hifix Exp $
 *
 * sql.php
 * This file stores all sql commands in functions.
 *
 * Note:
 * - all functionnames has to start with "sql_"
 *
 * To Do:
 * - error trapping
 */

/*
 * ******************
 * Usertable
 * ******************
 */

function sql_LoginGetUserdata($username, $password) {
/* return an array of userdata if password is valid for given username.
   Otherwise return false
   return:  array(usrID, Name, AdminLevel, Translator) */
  global $CFG;
  $qid = db_query("
    SELECT PersonPID as usrID, PersonKennung as Name, PersonAdminlevel as AdminLevel, PersonUebersetzer as Translator
    FROM $CFG->tbl_user
    WHERE PersonKennung = '$username' AND PersonPassword = PASSWORD('$password')
  ");
  return db_fetch_array($qid);
}

function sql_addNewUser($lastname, $firstname, $email, $username, $password) {
/* insert a new user into the DB */
  global $CFG;
  $query = "INSERT INTO $CFG->tbl_user
            (PersonKennung, PersonPassword, PersonEmail, PersonName, PersonVorname)
            VALUES (
            '$username'
            ,PASSWORD('$password')
            ,'$email'
            ,'$lastname'
            ,'$firstname'
            )";
  $qid = db_query($query);
  return $qid;
}

function sql_usernameExists($username) {
/* returns 1 if the username exists, otherwise 0 */
  global $CFG;
  $qid = db_query("SELECT 1 FROM $CFG->tbl_user WHERE PersonKennung = '$username'");
  return db_num_rows($qid);
}

function sql_nameExists($firstname, $lastname) {
/* returns 1 if the name (first, last) exists otherwise 0*/
  global $CFG;
  $qid = db_query("SELECT 1 FROM $CFG->tbl_user WHERE PersonVorname = '$firstname' AND PersonNachname = '$lastname'");
  return db_num_rows($qid);
}

function sql_emailExists($email) {
/* returns 1 if the email address exists otherwise 0 */
  global $CFG;
  $qid = db_query("SELECT 1 FROM $CFG->tbl_user WHERE PersonEmail = '$email'");
  return db_num_rows($qid);
}

function sql_getUsername($email) {
/* return the username based on an email address */
  global $CFG;
  $qid = db_query("SELECT PersonKennung FROM $CFG->tbl_user WHERE PersonEmail = '$email'");
  $user = db_fetch_object($qid);

  return $user->PersonKennung;
}

function sql_getUserdataFromUsername($username) {
/* return the user (object) based on the username
   user : Lastname, Firstname, LastName, Email */
  global $CFG;
  $qid = db_query("SELECT PersonVorname as Firstname, PersonName as Lastname, PersonEmail as Email FROM $CFG->tbl_user WHERE PersonKennung = '$username'");
  return db_fetch_object($qid);
}

function sql_setUserpasswd($username, $passwd) {
/* set new password for user with username */
  global $CFG;
  $qid = db_query("UPDATE $CFG->tbl_user SET PersonPassword = PASSWORD('$passwd') WHERE PersonKennung = '$username'");
  return $qid;
}

function sql_updateUser($lastname, $firstname, $email,$userid) {
/* Update User Data in the Database */
  global $CFG;
  $query = "UPDATE $CFG->tbl_user SET PersonName = '$lastname', PersonVorname= '$firstname', PersonEmail= '$email' WHERE PersonPID= '$userid'";
  $qid = db_query($query);
  return $qid;
}

function sql_changeUserToTranslator($userid) {
/* set PersonUebersetzer = 1 */
   global $CFG;
   $query = "UPDATE $CFG->tbl_user SET PersonUebersetzer = 1  WHERE PersonPID= '$userid'";
  $qid = db_query($query);
  return $qid;
}

/*                  */
/********************/
/* PerPro Table     */
/********************/
/*                  */

function sql_getUserProgrammData($userid, $archive) {
/* returns an array of ProgrammName and ProgrammVersion */
/* $packer = 0 returns non archiving programms          */
/* $packer = 1 returns archiving programms              */
  global $CFG;
  $result = NULL;
  $qid = db_query("SELECT t1.ProgrammName, t1.ProgrammVersion FROM $CFG->tbl_programm AS t1, $CFG->tbl_perhatprog AS t2 WHERE t2.PerProPID = '$userid' AND t2.PerProPRGID = t1.ProgrammPRGID AND t1.ProgrammPacker = '$archive' ORDER BY t1.ProgrammSort");
  $i = 0;
  while ($row = mysql_fetch_object ($qid)) {
  $result[$i][0] = $row->ProgrammName;
  $result[$i][1] = $row->ProgrammVersion;
        $i = $i + 1;
  }
  return $result;
}

function sql_getUserProgrammData2($userid) {
/* returns programmID of all programms user has selected */
  global $CFG;
  $result = NULL;
  $qid = db_query("SELECT PerProPRGID FROM $CFG->tbl_perhatprog WHERE PerProPID = '$userid'");
  $i = 0;
  while ($row = mysql_fetch_object ($qid)) {
  $result[$i] = $row->PerProPRGID;
        $i = $i + 1;
  }
  return $result;
}

function sql_deleteUserProgrammData($userid) {
  global $CFG;
  $qid = db_query("DELETE FROM $CFG->tbl_perhatprog WHERE PerProPID = '$userid'");
  return $qid;
}

function sql_setUserProgrammData($v,$userid) {
  global $CFG;
  $query = "INSERT INTO $CFG->tbl_perhatprog
            (PerProPID, PerProPRGID)
            VALUES (
             '$userid'
            ,'$v'
            )";
  return db_query($query);
}

/*                  */
/********************/
/* Programm Table   */
/********************/
/*                  */

function sql_getProgramms($archive) {
/* Function returns all programms and their versions */
 global $CFG;
 $result = NULL;
 $qid = db_query("SELECT * FROM $CFG->tbl_programm WHERE ProgrammPacker = '$archive' ORDER BY ProgrammSort");
 $i = 0;
 while ($row = mysql_fetch_object($qid)) {
  $result[$i][0] = $row->ProgrammPRGID;
  $result[$i][1] = $row->ProgrammName;
  $result[$i][2] = $row->ProgrammVersion;
        $i = $i + 1;
  }
 return $result;
}

function sql_SQL4PrgIdAndName($packer=0) {
/* returns the Query for Selecting the ID and Name of all Programms/Packer in the Table */
  global $CFG;
  return "SELECT ProgrammPRGID as id, CONCAT(ProgrammName, ' ',ProgrammVersion) as name FROM $CFG->tbl_programm WHERE ProgrammPacker='$packer' ORDER BY ProgrammSort";
}

/*                               */
/*********************************/
/* UebersetzerSprachen Table     */
/*********************************/
/*                               */

function sql_getUserTransCapData($userid) {
/*  */
  global $CFG;
  $result = NULL;
  $qid = db_query("SELECT UebersetzerSprachenVonSID, UebersetzerSprachenNachSID, UebersetzerSprachenKID FROM $CFG->tbl_uebsprach WHERE UebersetzerSprachenUEID = '$userid'");
  $i = 0;
  while ($row = mysql_fetch_object($qid)) {
  $result[$i][0] = $row->UebersetzerSprachenVonSID;
  $result[$i][1] = $row->UebersetzerSprachenNachSID;
  $result[$i][2] = $row->UebersetzerSprachenKID;
  $i = $i + 1;
  }
  return $result;
}

function sql_deleteMarkedTransData($frm,$userid) {
 $katid = NULL;
 $vonid = NULL;
 $nachid = NULL;
 global $CFG;

 $repeats = count($frm);
 $i = 1;

 if($repeats > 1) {
    foreach($frm as $v1) {
       if($i < $repeats) {
          $tmparray = explode(":",$v1);
          $vonid = $tmparray[0];
          $nachid = $tmparray[1];
          $katid = $tmparray[2];

          $qid = db_query("DELETE FROM $CFG->tbl_uebsprach WHERE UebersetzerSprachenUEID = '$userid' AND
        UebersetzerSprachenVonSID = '$vonid' AND UebersetzerSprachenNachSID = '$nachid' AND
      UebersetzerSprachenKID = '$katid'");
          $i = $i + 1;
       }
    }
  }
  return 1;
}

function sql_updateUebsetzerSprachen($valuestring,$userid) {
 $katid = NULL;
 $vonid = NULL;
 $nachid = NULL;
 global $CFG;

 $tmparray = explode(":",$valuestring);
 $vonid = $tmparray[0];
 $nachid = $tmparray[1];
 $katid = $tmparray[2];

 $qid = db_query("INSERT INTO $CFG->tbl_uebsprach (UebersetzerSprachenUEID, UebersetzerSprachenVonSID,
     UebersetzerSprachenNachSID, UebersetzerSprachenKID, UebersetzerSprachenAuto)
    VALUES ('$userid','$vonid','$nachid','$katid','0')");

  return 1;
}

function sql_existsTransCap($fromlang, $tolang, $kat, $userid) {
/* Function checks wether entry already exists in table UebersetzerSprachen */
  
  global $CFG;
  $qid = db_query("SELECT * FROM $CFG->tbl_uebsprach WHERE UebersetzerSprachenUEID = '$userid' AND
    UebersetzerSprachenVonSID = '$fromlang' AND UebersetzerSprachenNachSID = '$tolang' AND
    UebersetzerSprachenKID ='$kat'");
  if (mysql_num_rows($qid)>0) {
    return TRUE;
  } else {
    return FALSE; 
  }
}

/*                               */
/*********************************/
/* Sprache Table                 */
/*********************************/
/*                               */

function sql_getLangName($langkey) {
  global $CFG;
  $qid = db_query("SELECT SpracheName FROM $CFG->tbl_sprache WHERE SpracheSID = '$langkey' ORDER BY SpracheSort");
  $lang = db_fetch_object($qid);

  return $lang->SpracheName;
}

function sql_getAllLangs() {
/* function returns all language names and their keys */
  global $CFG;
  $result = NULL;
  $i = 0;

  $qid = db_query("SELECT SpracheSID, SpracheName FROM $CFG->tbl_sprache ORDER BY SpracheSort");

  while ($row = mysql_fetch_object($qid)) {
        $result[$i][0] = $row->SpracheSID;
    $result[$i][1] = $row->SpracheName;
    $i = $i + 1;
  }
  return $result;
}

function sql_SQL4LangIdAndName() {
/* returns the Query for Selecting the ID and Name of all Languages in the Table */
  global $CFG;
  return "SELECT SpracheSID as id, SpracheName as name FROM $CFG->tbl_sprache ORDER BY SpracheSort";

}

/*                               */
/*********************************/
/* Kategorie Table               */
/*********************************/
/*                               */

function sql_getKatName($katkey) {
/* function returns kategorie name for a given key */
  global $CFG;
  $qid = db_query("SELECT KategorieName FROM $CFG->tbl_kategorie WHERE KategorieKID = '$katkey' ORDER BY KategorieSort ");
  $kat = db_fetch_object($qid);

  return $kat->KategorieName;
}

function sql_getAllCategories() {
/* function returns array containing all category names and keys */
  global $CFG;
  $result = NULL;
  $i = 0;

  $qid = db_query("SELECT KategorieKID, KategorieName FROM $CFG->tbl_kategorie ORDER BY KategorieSort");

  while ($row = mysql_fetch_object($qid)) {
  $result[$i][0] = $row->KategorieKID;
  $result[$i][1] = $row->KategorieName;
  $i = $i + 1;
  }
  return $result;
}

function sql_SQL4KatNameAndID() {
/* returns the Query for Selecting the ID and Name of all Kategories in the Table */
  global $CFG;
  return "SELECT KategorieKID as id, KategorieName as name FROM $CFG->tbl_kategorie ORDER BY KategorieSort";
}



/*******************************/
/* Text Table                  */
/*******************************/

function sql_getDocumentIDFromSearch($keyword) {
   global $CFG;
   $i = 0;
   $result = NULL;
   $qid = db_query("SELECT TextTID FROM otmp_Text WHERE TextTitel LIKE '%$keyword%'");
      
   while ($row = mysql_fetch_object($qid)) {
   $result[$i] = $row->TextTID;
   $i = $i + 1;
   }
   
   return $result; 
} 

function sql_getDocumentFromSearch($docid) {
   global $CFG;
   $qid = db_query ("
    SELECT
      TextTID         as textID,
      TextTitel       as title,
      PersonKennung   as author,
      PersonEmail     as email,
      SpracheName     as language,
      KategorieName   as category,
      TextDatum       as date
    FROM otmp_Text
    LEFT JOIN otmp_Person ON PersonPID = TextAutor
    LEFT JOIN otmp_Sprache ON SpracheSID = TextSID
    LEFT JOIN otmp_Kategorie ON KategorieKID = TextKID
    WHERE TextTID = '$docid'
    ");
   $out = db_fetch_object($qid);
  return $out;
}

function sql_getDocument($id) {
/* Dokument mit id zurückgeben (alle "wichtigen" Felder)
 * returns: Object
 */
  global $CFG;
  $out = array();
  $qid = db_query ("
    SELECT
      TextTID         as textID,
      TextTitel       as title,
      DATE_FORMAT(TextDatum,'%e.%b.%Y')  as date,
      PersonKennung   as author,
      PersonEmail     as email,
      SpracheName     as language,
      TextAbstract    as abstract,
      TextStatus      as status
    FROM otmp_Text
    LEFT JOIN otmp_Person ON PersonPID = TextAutor
    LEFT JOIN otmp_Sprache ON SpracheSID = TextSID
    WHERE TextTID = $id
    ");
   $out = db_fetch_object($qid);
  return $out;
}

function sql_getDocuments4BaseID($id) {
/* returns all Documents (with Datas) with BASEID = $id
 * returns: Object
 */
  global $CFG;
  $out = array();
  $qid = db_query ("
    SELECT
      TextTID         as textID,
      TextTitel       as title,
      SpracheName     as language,
      TextStatus      as status
    FROM otmp_Text
    LEFT JOIN otmp_Person ON PersonPID = TextAutor
    LEFT JOIN otmp_Sprache ON SpracheSID = TextSID
    WHERE ((TextOTID = $id) OR (TextTID = $id))
    ORDER BY TextStatus
    ");
  while( $r = db_fetch_object($qid) ) {
   array_push($out,$r);
  }
  return $out;
}

function sql_addNewText($title,$abstract,$length,$langID,$CategoryID,$filetypID,$authorID,$OriginalTextID=0) {
/* add a new Text, return generated textID or 0 if an error occured
 * if $OriginalTextID == 0, this is an brandNew Text with Status=finished, otherwise Status set to open
 */
 $status = $OriginalTextID==0?'finished':'open';

 $query = "
    INSERT INTO `otmp_Text`
    (`TextOTID`, `TextTitel`, `TextAbstract`, `TextLaenge`, `TextSID`, `TextKID`, `TextFID`, `TextAutor` , `TextStatus`, `TextDatum`)
    VALUES ('$OriginalTextID', '$title', '$abstract','$length', '$langID', '$CategoryID', '$filetypID', '$authorID', '$status', NOW())";
  $qid = db_query($query);
  if(!$qid) {
    $session['notice'] = "Ein interner Fehler ist aufgetreten. Versuchen Sie es bitte nochmals<br>";
    return 0;
  }
  return db_insert_id();
}

/*********************************/
/* Auftrag                       */
/*********************************/

function sql_addNewTask($fromTextID,$toTextID,$userID,$frist='0000-00-00') {
/* add a new Task for the given arguments, return generated TaskID*/
 
  $query = "
    INSERT INTO otmp_Auftrag (`AuftragOTID`, `AuftragNTID`, `AuftragDatum`, `AuftragNID`, `AuftragBisDatum`) 
    VALUES ('$fromTextID', '$toTextID', NOW(), '$userID', '$frist')
  ";
  $qid = db_query($query);
  return db_insert_id();
}

/*                               */
/*********************************/
/* Dokument Seiten               */
/*********************************/
/*                               */

function sql_getBaseDocuments($otid) {
/* Alle Dokumente im System, welche eine BaseID haben */
  global $CFG;
  $out = array();
  $qid = db_query ("SELECT
      TextTID          as TextID,
      TextTitel        as Title,
      TextAutor        as AuthorID,
      DATE_FORMAT(TextDatum,'%e.%b.%Y') as Date,
      SpracheName      as Language,
      TextAbstract     as Description,
      TextStatus       as Status
    FROM otmp_Text, otmp_Sprache
    WHERE ((TextOTID = $otid) OR (TextTID = $otid))
      AND TextSID = SpracheSID");
   while( $r = db_fetch_object($qid) ) {
     array_push($out,$r);
   }
  return $out;
}

function sql_getUserDocuments($usrid) {
/* Alle Dokumente im System, welche eine UserID haben */
  global $CFG;
  $out = array();
  $qid = db_query ("SELECT
      TextOTID         as BaseID,
      TextTitel        as Title,
      TextAutor        as AuthorID,
      DATE_FORMAT(TextDatum,'%e.%b.%Y') as Date,
      SpracheName      as Language,
      TextAbstract     as Description,
      TextStatus       as Status
    FROM otmp_Text, otmp_Sprache, otmp_Person
    WHERE PersonPID = $usrid
      AND TextSID = SpracheSID
      AND TextAutor = $usrid");
  while( $r = db_fetch_object($qid) ) {
    array_push($out,$r);
  }
  return $out;
}

function sql_getDocuments($status) {
/* Alle fertigen Dokumente aus dem System holen */
  global $CFG;
  $out = array();
  $qid = db_query ("SELECT
      TextTID          as TextID,
      TextOTID         as BaseID,
      TextTitel        as Title,
      TextAutor        as AuthorID,
      DATE_FORMAT(TextDatum,'%e.%b.%Y') as Date,
      SpracheName      as Language,
      TextAbstract     as Description,
      TextStatus       as Status
    FROM otmp_Text, otmp_Sprache
    WHERE TextStatus = '$status'
      AND TextSID = SpracheSID");
  while( $r = db_fetch_object($qid) ) {
    array_push($out,$r);
  }
  return $out;
}

function sql_getAuftrag($status) {
/* Alle Aufträge mit $status aus dem System holen */
  global $CFG;
  $out = array();
  $qid = db_query ("SELECT
      DATE_FORMAT(a1.AuftragDatum,'%e.%b.%Y') as Date,
      d1.TextTitel     as Title,
      d1.TextOTID      as BaseID,
      s1.SpracheName   as FromLanguage,
      d1.TextAutor     as AuthorID,
      s2.SpracheName   as ToLanguage,
      d2.TextAutor     as TranslatorID
    FROM otmp_Auftrag  as a1, otmp_Text as d1, otmp_Text as d2, otmp_Sprache as s1, otmp_Sprache as s2
    WHERE d1.TextTID = a1.AuftragOTID
      AND d2.TextTID = a1.AuftragNTID
      AND d2.TextStatus = '$status'
      AND s1.SpracheSID = d1.TextSID
      AND s2.SpracheSID = d2.TextSID");
  while( $r = db_fetch_object($qid) ) {
    array_push($out,$r);
  }
  return $out;
}

function sql_getUserFromText($usrid) {
/* UserNamen zu den IDs holen */
  $qid = db_query ("SELECT PersonKennung as Author FROM otmp_Person WHERE PersonPID = $usrid");
  $qname = db_fetch_object($qid);
  return $qname->Author;
}

/*********************************/
/* Ende Dokument Seiten          */
/*********************************/


?>
