<? 
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/lib/sql.php,v $
 * $Revision: 1.6 $
 * $Id: sql.php,v 1.6 2001/12/05 01:14:49 alexgn Exp $
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
    SELECT PersonPID as usrID, LoginName as Name, '0' as AdminLevel
    FROM $CFG->tbl_user
    WHERE LoginName = '$username' AND PersonPassword = PASSWORD('$password')
  ");
  return db_fetch_array($qid);
}

function sql_addNewUser($lastname, $firstname, $email, $username, $password) {
/* insert a new user into the DB */
  global $CFG;
  $query = "INSERT INTO $CFG->tbl_user
            (LoginName, PersonPassword, PersonEmail, PersonName, PersonVorname)
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
  $qid = db_query("SELECT 1 FROM $CFG->tbl_user WHERE LoginName = '$username'");
  return db_num_rows($qid);
}

function sql_nameExists($firstname, $lastname) {
/* returns 1 if the name (first, last) exists otherwise 0*/
  global $CFG;
  $qid = db_query("SELECT 1 FROM $CFG->tbl_user WHERE usrFirstname = '$firstname' AND usrLastname = '$lastname'");
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
  $qid = db_query("SELECT usrName FROM $CFG->tbl_user WHERE usrEmail = '$email'");
  $user = db_fetch_object($qid);

  return $user->usrName;
}

function sql_getUserdataFromUsername($username) {
/* return the user (object) based on the username 
   user : Lastname, Firstname, LastName, Email */
  global $CFG;
  $qid = db_query("SELECT PersonVorname as Firstname, PersonName as Lastname, PersonEmail as Email FROM $CFG->tbl_user WHERE LoginName = '$username'");
  return db_fetch_object($qid);
}

function sql_setUserpasswd($username, $passwd) {
/* set new password for user with username */
  global $CFG;
  $qid = db_query("UPDATE $CFG->tbl_user SET usrPasswd = PASSWORD('$passwd') WHERE usrName = '$username'");
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
/* PerHatProg Table */
/********************/
/*                  */

function sql_getUserProgrammData($userid) {
  global $CFG;
  $qid = db_query("SELECT ProgrammName FROM $CFG->tbl_perhatprog WHERE PersonPID= '$userid'");
  $i = 0;
  while ($row = mysql_fetch_object ($qid)) {
    $result[$i] = $row->ProgrammName;
    $i = $i + 1;
  }
 return $result;
}

/* UebersetzerVonSprache Table */

function sql_getUebersetzerVonSprache($userid) {
  global $CFG;
  $qid = db_query("SELECT t1.SpracheName FROM $CFG->tbl_sprache AS t1, $CFG->tbl_uebvonsprach AS t2 WHERE t2.UebersetzerUEID = '$userid' AND t1.SpracheAbkuerzung = t2.SpracheAbkuerzung");
  $i = 0;
  while ($row = mysql_fetch_object ($qid)) {
    $result[$i] = $row->SpracheName;
    $i = $i + 1;
  }
 return $result; 
}

/* UbersetzerNachSprache Table */

function sql_getUebersetzerNachSprache($userid) {
  global $CFG;
  $qid = db_query("SELECT t1.SpracheName From $CFG->tbl_sprache AS t1, $CFG->tbl_uebnachsprach AS t2 WHERE t2.UebersetzerUEID = '$userid' AND t1.SpracheAbkuerzung = t2.SpracheAbkuerzung");
   $i = 0;
  while ($row = mysql_fetch_object ($qid)) {
    $result[$i] = $row->SpracheName;
    $i = $i + 1;
  }
 return $result; 
}

/* KenntSichAus Table */

function sql_getUebersetzerKategorien($userid) {
  global $CFG;
  $qid = db_query("Select KategorieName FROM $CFG->tbl_kenntsichaus WHERE UebersetzerUEID = '$userid'");
  $i = 0;
  while ($row = mysql_fetch_object ($qid)) {
    $result[$i] = $row->KategorieName;
    $i = $i + 1;
  }
 return $result;
}
?>
