<? 
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/Release1/lib/Attic/sql.php,v $
 * $Revision: 1.1 $
 * $Id: sql.php,v 1.1 2001/12/02 08:23:05 ahlabadi Exp $
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
    SELECT usrID, usrName as Name, usrAdmin as AdminLevel
    FROM $CFG->tbl_user
    WHERE usrName = '$username' AND usrPasswd = PASSWORD('$password')
  ");
  return db_fetch_array($qid);
}

function sql_addNewUser($lastname, $firstname, $email, $username, $password) {
/* insert an new user into the DB */
  global $CFG;
  $query = "INSERT INTO $CFG->tbl_user
            (usrName, usrPasswd, usrEmail, usrFName, usrLName)
            VALUES (
            '$username'
            ,PASSWORD('$password')
            ,'$email'
            ,'$firstname'
            ,'$lastname'
            )";
  $qid = db_query($query);
  return $qid;
}

function sql_usernameExists($username) {
/* returns 1 if the username exists, otherwise 0 */
  global $CFG;
  $qid = db_query("SELECT 1 FROM $CFG->tbl_user WHERE usrName = '$username'");
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
  $qid = db_query("SELECT 1 FROM $CFG->tbl_user WHERE usrEmail = '$email'");
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
  $qid = db_query("SELECT usrFName as Firstname, usrLName as Lastname, usrEmail as Email FROM $CFG->tbl_user WHERE usrName = '$username'");
  return db_fetch_object($qid);
}

function sql_setUserpasswd($username, $passwd) {
/* set new password for user with username */
  global $CFG;
  $qid = db_query("UPDATE $CFG->tbl_user SET usrPasswd = PASSWORD('$passwd') WHERE usrName = '$username'");
}
?>