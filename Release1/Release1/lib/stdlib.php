<?
 /* stdlib.php
  * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/Release1/lib/Attic/stdlib.php,v $
  * $Revision: 1.1 $
  * $Id: stdlib.php,v 1.1 2001/12/02 08:23:05 ahlabadi Exp $
  *
  * Original File was:
  * stdlib.php (c) 2000 Ying Zhang (ying@zippydesign.com)
  *
  * TERMS OF USAGE:
  * This file was written and developed by Ying Zhang (ying@zippydesign.com)
  * for educational and demonstration purposes only.  You are hereby granted the 
  * rights to use, modify, and redistribute this file as you like.  The only
  * requirement is that you must retain this notice, without modifications, at
  * the top of your source code.  No warranties or guarantees are expressed or
  * implied. DO NOT use this code in a production environment without
  * understanding the limitations and weaknesses pretaining to or caused by the
  * use of these scripts, directly or indirectly. USE AT YOUR OWN RISK
  */

function setdefault(&$var, $default="") {
/* if $var is undefined, set it to $default.  otherwise leave it alone */

  if (! isset($var)) {
    $var = $default;
  }
}

function setdefaultE(&$var, $default="") {
/* if $var is undefined or empty, set it to $default.  otherwise leave it alone */

  if (empty($var)) {
    $var = $default;
  }
}

function nvl(&$var, $default="") {
/* if $var is undefined, return $default, otherwise return $var */

  return isset($var) ? $var : $default;
}

function nvlpp(&$var, $default="", $pre="", $post="") {
/* if $var is undefined or empty, return $default, otherwise return $pre$var$post */

  return (isset($var) && !empty($var) ) ? $pre.$var.$post : $default;
}

function varis(&$var, $isval , $out="checked", $default="") {
/* returns $out if $var is set and equal $isval, otherwise return $default */
  if (isset($var)) {
    return $var==$isval ? $out : $default;
  }
  return $default;
}

function varis_not(&$var, $isval , $out="checked", $default="") {
/* returns $out if $var is set and not equal $isval, otherwise return $default */
  if (isset($var)) {
    return $var!=$isval ? $out : $default;
  }
  return $default;
}

function isempty(&$var, $default="") {
/* returns $default if $var is empty, otherwise return $var */
  return empty($var) ? $default : $var;
}

function ov(&$var) {
/* returns $var with the HTML characters (like "<", ">", etc.) properly quoted,
 * or if $var is undefined, will return an empty string.  note this function
 * must be called with a variable, for normal strings or functions use o() */

  return isset($var) ? htmlSpecialChars(stripslashes($var)) : "";
}

function pv(&$var) {
/* prints $var with the HTML characters (like "<", ">", etc.) properly quoted,
 * or if $var is undefined, will print an empty string.  note this function
 * must be called with a variable, for normal strings or functions use p() */

  echo isset($var) ? htmlSpecialChars(stripslashes($var)) : "";
}

function o($var) {
/* returns $var with HTML characters (like "<", ">", etc.) properly quoted,
 * or if $var is empty, will return an empty string. */

  return empty($var) ? "" : htmlSpecialChars(stripslashes($var));
}

function p($var) {
/* prints $var with HTML characters (like "<", ">", etc.) properly quoted,
 * or if $var is empty, will print an empty string. */

  echo empty($var) ? "" : htmlSpecialChars(stripslashes($var));
}

function db_query_loop($query, $prefix, $suffix, $found_str, $default="") {
/* this is an internal function and normally isn't called by the user.  it
 * loops through the results of a select query $query and prints HTML
 * around it, for use by things like listboxes and radio selections
 *
 * NOTE: this function uses dblib.php */

  $output = "";
  $result = db_query($query);
  while (list($val, $label) = db_fetch_row($result)) {
    if (is_array($default))
      $selected = empty($default[$val]) ? "" : $found_str;
    else
      $selected = $val == $default ? $found_str : "";

    $output .= "$prefix value='$val' $selected>$label$suffix";
  }

  return $output;
}

function db_listbox($query, $default="", $suffix="</option>\n") {
/* generate the <option> statements for a <select> listbox, based on the
 * results of a SELECT query ($query).  any results that match $default
 * are pre-selected, $default can be a string or an array in the case of
 * multi-select listboxes.  $suffix is printed at the end of each <option>
 * statement, and normally is just a line break */

  return db_query_loop($query, "<option", $suffix, "selected", $default);
}

function strip_querystring($url) {
/* takes a URL and returns it without the querystring portion */

  if ($commapos = strpos($url, '?')) {
    return substr($url, 0, $commapos);
  } else {
    return $url;
  }
}

function me_query($querystring='') {
// FUNKTIONIERT NICHT !!!!
/* returns the name of the current script, with the querystring portion and
 * appended querystring */

  global $PHP_SELF, $REQUEST_URI;
  $my_url = isset($REQUEST_URI) ? $REQUEST_URI : $PHP_SELF;
  $querydelimiter = $querystring=='' ? '?' : '&';
  return $my_url.$querydelimiter.$querystring;
}

function get_referer() {
/* returns the URL of the HTTP_REFERER, less the querystring portion */

  global $HTTP_REFERER;
  return strip_querystring(nvl($HTTP_REFERER));
}

function me() {
/* returns the name of the current script, without the querystring portion */

  global $PHP_SELF, $REQUEST_URI;
  $my_url = isset($REQUEST_URI) ? $REQUEST_URI : $PHP_SELF;
  return strip_querystring($my_url);
}

function qualified_me() {
/* like me() but returns a fully URL */

  global $HTTPS, $SERVER_PROTOCOL, $HTTP_HOST;
  $protocol = (isset($HTTPS) && $HTTPS == "on") ? "https://" : "http://";
  $url_prefix = "$protocol$HTTP_HOST";
  return $url_prefix . me();
}

function match_referer($good_referer = "") {
/* returns true if the referer is the same as the good_referer.  If
 * good_refer is not specified, use qualified_me as the good_referer */

  if ($good_referer == "") { $good_referer = qualified_me(); }
  return $good_referer == get_referer();
}

function redirect($url, $message="", $delay=0) {
/* redirects to a new URL using meta tags */
  echo "<meta http-equiv='Refresh' content='$delay; url=$url'>";
  if (!empty($message)) echo "<div style='font-family: Arial, Sans-serif; font-size: 12pt;' align=center>$message</div>";
  die;
}

function read_template($filename, &$var) {
/* return a (big) string containing the contents of a template file with all
 * the variables interpolated.  all the variables must be in the $var[] array or
 * object (whatever you decide to use).
 *
 * WARNING: do not use this on big files!! */
 
  $temp = str_replace("\\", "\\\\", implode(file($filename), ""));
  $temp = str_replace('"', '\"', $temp);
  eval("\$template = \"$temp\";");
  return $template;
}

function sqlv(&$var) {
/* returns $var with the "SQL-Problems" (like "'" etc.) properly quoted,
 * returns "" if $var is not set
 */
 $ret='';
 if ( isset($var)) {
   $ret = str_replace ("'", "''", $var);
   $ret = str_replace ("\\", "\\\\", $ret);
 }
 return $ret;
}

function sqlpv($sql,$pp='') {
/* returns a string with the "SQL-Problems" (like "'" etc.) properly quoted,
 *  with enclosing $pp */
 $ret = str_replace ("'", "''", $sql);
 $ret = str_replace ("\\", "\\\\", $ret);
 return $pp.$ret.$pp;
}

function is(&$var) {
/* returns $var,
 * or if $var is undefined, will return an empty string.  note this function
 * must be called with a variable */

  return isset($var) ? $var : "";
}

function array_listbox($listarray, $default="", $suffix="</option>\n") {
/* generate the <option> statements for a <select> listbox, based on the
 * array ($listarray).  any results that match $default
 * are pre-selected, $default can only be a string.  
 * $suffix is printed at the end of each <option>
 * statement, and normally is just a line break */
 
  $output = "";
  $found_str= "selected";
  $prefix = "<option";
  foreach ($listarray as $label => $val) {
    $selected = $val == $default ? $found_str : "";
    $output .= "$prefix value='$val' $selected>$label$suffix";
  }

  return $output;
}

function array_listbox2($listarray, $default="", $suffix="</option>\n") {
/* generate the <option> statements for a <select> listbox, based on the
 * array ($listarray).  any results that match $default
 * are pre-selected, $default can only be a string.  
 * $suffix is printed at the end of each <option>
 * statement, and normally is just a line break */
 
  $output = "";
  $found_str= "selected";
  $prefix = "<option";
  foreach ($listarray as $label => $val) {
    $selected = $label == $default ? $found_str : "";
    $output .= "$prefix value='$label' $selected>$val$suffix";
  }

  return $output;
}
?>