<? 
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/lib/sql.php,v $
 * $Revision: 1.10 $
 * $Id: sql.php,v 1.10 2001/12/09 00:30:19 alexgn Exp $
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
   return:  array(usrID, Name, AdminLevel) */
  global $CFG;
  $qid = db_query("
    SELECT PersonPID as usrID, PersonKennung as Name, PersonAdminlevel as AdminLevel
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

/*                  */
/********************/
/* PerPro Table */
/********************/
/*                  */

function sql_getUserProgrammData($userid) {
/* returns ProgrammName and ProgrammVersion inside an array */
  global $CFG;
  $result = NULL;
  $qid = db_query("SELECT t1.ProgrammName, t1.ProgrammVersion FROM $CFG->tbl_programm AS t1, $CFG->tbl_perhatprog AS t2 WHERE t2.PerProPID = '$userid' AND t2.PerProPRGID = t1.ProgrammPRGID");
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
  $qid = db_query($query);
  return $qid;
}

/*                  */
/********************/
/* Programm Table   */
/********************/
/*                  */

function sql_getProgramms() {
/* Function returns all programms and their versions */
 global $CFG;
 $result = NULL;
 $qid = db_query("SELECT * FROM $CFG->tbl_programm");
 $i = 0;
 while ($row = mysql_fetch_object($qid)) {
	$result[$i][0] = $row->ProgrammPRGID;
	$result[$i][1] = $row->ProgrammName;
	$result[$i][2] = $row->ProgrammVersion;
        $i = $i + 1;
	}
 return $result;
}

/*                               */
/*********************************/
/* UebersetzerSprachen Table   */
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

/*                               */
/*********************************/
/* Sprache Table                 */
/*********************************/
/*                               */

function sql_getLangName($langkey) {
  global $CFG;
  $qid = db_query("SELECT SpracheName FROM $CFG->tbl_sprache WHERE SpracheSID = '$langkey'");
  $lang = db_fetch_object($qid);

  return $lang->SpracheName; 
}

/*                               */
/*********************************/
/* Kategorie Table               */
/*********************************/
/*                               */

function sql_getKatName($katkey) {
  global $CFG;
  $qid = db_query("SELECT KategorieName FROM $CFG->tbl_kategorie WHERE KategorieKID = '$katkey'");
  $kat = db_fetch_object($qid);

  return $kat->KategorieName; 
}


?>
