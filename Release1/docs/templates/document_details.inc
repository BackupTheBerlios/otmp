<?
/*
 * Show Dokument Info
 *
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/templates/document_details.inc,v $
 * $Revision: 1.2 $
 * $Id: document_details.inc,v 1.2 2001/12/16 22:24:50 hifix Exp $
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
    <td colspan="2"><b><font size="+1">Dokumentinformationen</font></b></td>
  </tr>
  <tr> 
    <td><b>Titel:</b></td>
    <td> 
      <?=ov($d->title)?>
    </td>
  </tr>
  <tr> 
    <td><b>Kurzbeschreibung:</b></td>
    <td> 
      <?=ov($d->abstract)?>
    </td>
  </tr>
  <tr> 
    <td><b>Originalsprache:</b></td>
    <td> 
      <?=$d->language?>
    </td>
  </tr>
  <tr> 
    <td><b>erstellt von:</b></td>
    <td><?=$d->author?> (<?=$d->date?>)</td>
  </tr>
</table>
<!-- END Details -->
