<? /*
    * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/main.php,v $
    * $Revision: 1.10 $
    * $Id: main.php,v 1.10 2001/12/16 22:18:18 hifix Exp $
    */

include "application.php";
$session['wantsurl']=me();  // Rücksprung (ggf)

$DOC_TITLE = "Hauptseite";

include("$CFG->templatedir/header.php");
?>

<table width="100%" cellpadding="10">
  <tr>
    <td width="65%" rowspan="3">
    <? include("$CFG->templatedir/intro.inc"); ?>
    </td>
    <td bgcolor="#CCCCCC">
      <h5>Benutzer</h5>
      <p> 
    <? if ( isset($session['userid']) ){ ?>
      <br><a href="<?=$CFG->wwwroot?>/user/logout.php">Ausloggen</a>
      <br><a href="<?=$CFG->wwwroot?>/user/user_data.php">Ihre Daten</a>
    <? } else { ?>
      <a href="<?=$CFG->wwwroot?>/user/signup.php">Neu Anmelden</a>
      <br><a href="<?=$CFG->wwwroot?>/user/login.php">Einloggen</a>  
    <? } ?>
      </p>
    </td>
  </tr>
  <tr>
    <td bgcolor="#CCCCCC">
      <h5>Dokumente</h5>
      <p> <a href="<?=$CFG->wwwroot?>/docs/tasklist.php">Ich will &Uuml;bersetzen</a>
      <br><a href="<?=$CFG->wwwroot?>/docs/upload.php">Ich brauche eine &Uuml;bersetzung</a>
      <br><a href="<?=$CFG->wwwroot?>/docs/search.php?list=all">Ich suche ein Dokument</a>
      </p>
    </td>
  </tr>
  <tr>
    <td bgcolor="#CCCCCC">
      <h5>Informationen</h5>
      <p> <a href="<?=$CFG->wwwroot?>/help/what.php">Was ist OTMP?</a>
      <br><a href="<?=$CFG->wwwroot?>/help/faq.php">H&auml;ufig gestellte Fragen (FAQ)</a>
      <br><a href="<?=$CFG->wwwroot?>/help/help.php">Weitere Hilfen und Kontakt</a>
      </p>
    </td>
  </tr>
</table>

<?
include("$CFG->templatedir/footer.php");
?>
