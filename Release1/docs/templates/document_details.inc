<?
/*
 * Show Dokument Info
 *
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/templates/document_details.inc,v $
 * $Revision: 1.4 $
 * $Id: document_details.inc,v 1.4 2001/12/18 23:29:22 hifix Exp $
 *
 * To Do:
 * - LOcalisation
 *
 * Variables:
 * id   - DokumentID to Show
 */

$d = getDocumentDetails($id);
?>

<table cellpadding="2" cellspacing="2" bgcolor="#FFFFFF">
  <tr>
    <td colspan="2"><h3>Dokumentinformationen</h3></td>
  </tr>
  <tr>
    <td><b>Titel:</b></td>
    <td>
      <?=ov($d->title)?>
    </td>
  </tr>
  <tr>
    <td valign="top"><b>Kurzbeschreibung:</b></td>
    <td>
      <?=ov($d->abstract)?>
    </td>
  </tr>
  <tr>
    <td><b>Originalsprache:</b></td>
    <td>
      <?=ov($d->language)?>
    </td>
  </tr>
  <tr>
    <td><b>erstellt von:</b></td>
    <td><?=ov($d->author)?> (<?=$d->date?>)</td>
  </tr>
</table>
<!-- END Details -->
