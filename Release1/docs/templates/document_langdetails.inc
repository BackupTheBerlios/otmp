<?
/*
 * Show Dokument Info (additional)
 *
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/templates/document_langdetails.inc,v $
 * $Revision: 1.3 $
 * $Id: document_langdetails.inc,v 1.3 2001/12/18 23:29:22 hifix Exp $
 *
 * To Do:
 * - LOcalisation
 *
 * Variables:
 * id   - DokumentID to Show
 */

 $d = getDocuments4BaseID($id);

?>
<!-- BEGIN LAnguages, Tasks for the Dokument -->
<table border="0" cellspacing="4" cellpadding="0" bgcolor="#FFFFFF">
  <tr>
    <td><b>Dieses Dokument gibt es in:</b></td>
    <td valign="top">
      <? foreach($d as $_d) {
     if($_d->status == "finished") { ?>
      &nbsp;<a href="<?=$CFG->wwwroot?>/docs/download.php?id=<?=$_d->textID?>"><?=$_d->language?></a>
      <? }
   } ?>
    </td>
  </tr>
  <tr>
    <td colspan="2" class="hint">(zum downloaden auf gew&uuml;nschte Sprache klicken)</td>
  </tr>
  <tr>
    <td colspan="2" bgcolor="#eeeeee"><b>&Uuml;bersetzungen</b></td>
  </tr>
  <tr>
    <td> - in Arbeit</td>
    <td>
      <? foreach($d as $_d) {
     if($_d->status == "work") { ?>
      &nbsp;<a href=""><?=$_d->language?>
      </a>
      <? }
   } ?>
    </td>
  </tr>
  <tr>
    <td>- offen<br>
    </td>
    <td valign="top">
      <? foreach($d as $_d) {
     if($_d->status == "open") { ?>
      &nbsp;<a href=""><?=$_d->language?>
      </a>
      <? }
   } ?>
    </td>
  </tr>
  <tr>
    <td colspan="2" class="hint">(zum &Uuml;bersetzen, klicken Sie auf die  Sprache)</td>
  </tr>
</table>
<!-- END -->
