<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/logout.php,v $
 * $Revision: 1.1 $
 * $Id: logout.php,v 1.1 2001/12/15 15:15:26 hifix Exp $
 *
 * Logout User 
 *
 * To Do:
 * - Localize
 */
 
include("../application.php");
session_destroy();
unset($session);

$DOC_TITLE = "Logout";
include("$CFG->templatedir/header.php");
?>
<div align="center"> 
  <h3>Sie sind nun nicht mehr eingeloggt im System.</h3>
  <p>Wenn Sie OTMP in vollem Umfang nutzen möchten, können Sie sich jederzeit wieder einloggen</p>
</div>

<?
include("$CFG->templatedir/footer.php");
?>