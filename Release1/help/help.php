<? /*
    * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/help/help.php,v $
    * $Revision: 1.3 $
    * $Id: help.php,v 1.3 2001/12/17 18:40:54 hifix Exp $
    */

include "../application.php";
$session['wantsurl']=me();  // Rücksprung (ggf)

$DOC_TITLE = "OTMP FAQ";

include("$CFG->templatedir/header.php");
include("templates/help.inc");
include("$CFG->templatedir/footer.php");
?>