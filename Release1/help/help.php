<? /*
    * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/help/help.php,v $
    * $Revision: 1.1 $
    * $Id: help.php,v 1.1 2001/11/22 20:24:04 darkpact Exp $
    */
?>
<!-- doc header -->
<?
include ("../all." . $langs);
include ("help." . $langs);
$loginname = $notlogedin;
include ("../otmpheader.php");
?>
<!-- doc header end -->

<!-- doc body -->
<p>Hilfe gibt es unter folgenden Links:</p>
<ul>
  <li><a href="doc/faq.html">Was ist OTMP ?</a></li>
  <li> <a href="doc/faq.html">H&auml;ufig gestellte Fragen</a></li>
  <li><a href="contact.php?origin=help">Kontakt zur OTMP-Crew</a></li>
</ul>
<!-- doc body end -->

<!-- doc footer -->
<?
$maindir = "../";
$userdir = "../user/";
$docsdir = "../docs/";
$helpdir = "";
include ("../otmpfooter.php");
?>
<!-- doc footer end -->
