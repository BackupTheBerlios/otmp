<? /*
    * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/help/help.php,v $
    * $Revision: 1.2 $
    * $Id: help.php,v 1.2 2001/11/23 08:03:04 darkpact Exp $
    */
?>
<!-- doc header -->
<?
$langs=isset($langs)?$langs:"us";
include ("../all." . $langs);
include ("help." . $langs);
$loginname=isset($loginname)?$loginname:$notlogedin;
$maindir = "../";
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
$userdir = "../user/";
$docsdir = "../docs/";
$helpdir = "";
include ("../otmpfooter.php");
?>
<!-- doc footer end -->
