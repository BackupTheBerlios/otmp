<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/Release1/lib/Attic/otmplib.php,v $
 * $Revision: 1.1 $
 * $Id: otmplib.php,v 1.1 2001/12/02 08:23:05 ahlabadi Exp $
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
    header("Location: $CFG->wwwroot/login.php");
    die;
  }
}

function err(&$errorvar) {
/* if $errorvar is set, then print an error marker */

  if (isset($errorvar)) {
    echo "<font color=#ff0000><B>&lt;&lt;</B></font>";
  }
}

function mydebug($txt) {
  echo "<h5>$txt</h5>\n";
}

?>
