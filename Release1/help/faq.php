<? /*
    * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/help/faq.php,v $
    * $Revision: 1.1 $
    * $Id: faq.php,v 1.1 2001/12/17 18:25:39 hifix Exp $
    */

include "../application.php";
$session['wantsurl']=me();  // Rücksprung (ggf)

$DOC_TITLE = "OTMP FAQ";

include("$CFG->templatedir/header.php");
include("templates/faq.inc");
include("$CFG->templatedir/footer.php");
?>
