<?
/*
 *
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/templates/takeTask.inc,v $
 * $Revision: 1.2 $
 * $Id: takeTask.inc,v 1.2 2002/01/30 01:42:58 hifix Exp $
 *
 * To Do:
 * - LOcalisation
 *
 * Variables:
 * id   - DokumentID
 */
$d = getDocumentDetails($id,1);
?>
<h3>&Uuml;bersetzungsauftrag f&uuml;r den Text annehmen</h3>
<p>Bitte best&auml;tigen Sie, dass Sie folgenden Text &uuml;bersetzen wollen:</p>
<p>
<b>Texttitel:</b> <?=ov($d->title)?><br>
<b>Kurzbeschreibung:</b> <?=ov($d->abstract)?><br>
<b>Originalsprache:</b> <?=ov($d->original->language)?><br>
<br>
Zur &Uuml;bersetzung nach <b><?=ov($d->language)?></b> annehmen. 
<form method="post" action="<?=$CFG->wwwroot?>/docs/taketask.php">
  <input type="hidden" name="textID" value="<?=$id?>">
  <input type="hidden" name="otextID" value="<?=$d->original->textID?>">
  <input type="submit" name="taketask" value="ja">
  <input type="submit" name="notake" value="nein">
</form>
</p>