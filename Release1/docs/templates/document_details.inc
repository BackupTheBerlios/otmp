<?
/*
 * Show Dokument Info
 *
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/templates/document_details.inc,v $
 * $Revision: 1.1 $
 * $Id: document_details.inc,v 1.1 2001/12/14 19:21:46 hifix Exp $
 *
 * To Do:
 * - LOcalisation
 *
 * Variables:
 * id   - DokumentID to Show
 */

$d = getDocumentDetails($id);
?>

<table cellpadding="2" cellspacing="2" bgcolor="#FFFFFF" width="100%">
  <tr> 
    <td colspan="2" bgcolor="#CCCCCC"><b><font size="+1">Dokument</font></b><b><font size="+1"></font></b><b><font size="+1"></font></b><b></b></td>
  </tr>
  <tr> 
    <td><b>Titel:</b></td>
    <td><?=ov($d->title)?></td>
  </tr>
  <tr> 
    <td><b>Kurzbeschreibung:</b></td>
    <td><?=ov($d->abstract)?></td>
  </tr>
  <tr> 
    <td><b>Originalsprache:</b></td>
    <td><?=$d->language?></td>
  </tr>
  <tr> 
    <td><b>erstellt von:</b></td>
    <td>feb (20.12.2001)</td>
  </tr>
  <tr> 
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<!-- END Details -->

<? $d = getDocuments4BaseID($id); ?>
<!-- BEGIN LAnguages, Tasks for the Dokument -->
<table border="0" cellspacing="4" cellpadding="0" bgcolor="#FFFFFF">
  <tr> 
    <td><b>Dieses Dokument gibt es in:</b></td>
    <td valign="top"> 
      <? foreach($d as $_d) {
     if($_d->status == "finished") { ?>
      &nbsp;<a href=""><?=$_d->language?>
      </a> 
      <? }
   } ?>
    </td>
  </tr>
  <tr> 
    <td colspan="2"><font size="-1">(zum downloaden auf gew&uuml;nschte Sprache 
      klicken)</font></td>
  </tr>
  <tr> 
    <td colspan="2" bgcolor="#eeeeee"><b>&Uuml;bersetzungen</b></td>
  </tr>
  <tr> 
    <td> - in Arbeit</td>
    <td> 
      <? foreach($d as $_d) {
     if($_d->status == "in work") { ?>
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
    <td colspan="2"><font size="-1">(zum &Uuml;bersetzen, klicken Sie auf die 
      Sprache)</font></td>
  </tr>
</table>
<!-- END -->
