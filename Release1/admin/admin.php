<?
/*
* $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/admin/admin.php,v $
* $Revision: 1.1 $
* $Id: admin.php,v 1.1 2002/01/30 01:43:42 hifix Exp $
*
*/

include("../application.php");
checklogin();
if (!require_priv(1)) { 
  $session['notice'] = "You have not the permission to access this page!!";
  header("Location: $session[wantsurl]");
  die;
}

$DOC_TITLE = "Admin";
include("$CFG->templatedir/header.php");
?>
<h1> Administratorseite </h1>
<ul>
 <li> <a href="programm.php">Programme verwalten</a>
</ul>
<?
include("$CFG->templatedir/footer.php");
?>
