<? 
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/lib/sql.php,v $
 * $Revision: 1.1 $
 * $Id: sql.php,v 1.1 2001/11/25 20:47:51 hifix Exp $
 *
 * sql.php
 * This file stores all sql commands in functions.
 *
 * Note: 
 * - all functionnames has to start with "sql_"
 */

function sql_LoginGetUserdata($username, $password) {
/* return an array of userdata if password is valid for given username. 
   Otherwise return false 
   return:  array(usrID, Name, AdminLevel) */
  global $CFG;
  $qid = db_query("
    SELECT usrID, usrName as Name, usrAdminLevel as AdminLevel
    FROM $CFG->tbl_user
    WHERE usrName = '$username' AND usrPassword = PASSWORD('$password')
  ");
  return db_fetch_array($qid);
}
?>
