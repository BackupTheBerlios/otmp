<?
/*
 * Show Dokument Info
 *
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/templates/document_details.inc,v $
 * $Revision: 1.6 $
 * $Id: document_details.inc,v 1.6 2002/01/30 09:55:29 hifix Exp $
 *
 * To Do:
 * - LOcalisation
 *
 * Variables:
 * id   - DokumentID to Show (this should be the otid ??!)
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
  <tr>
      <td><b>Dateiformat:</b></td>
      <td><?=ov($d->filetyp)?> <?=isset($d->filetypnote)?"(".ov($d->filetypnote).")":''?></td>
  </tr>
  <tr>
    <td><br></td>
    <td><a href="<?=$CFG->wwwroot?>/docs/download.php?id=<?=$id?>">download</a></td>
  </tr>
</table>
<!-- END Details -->
