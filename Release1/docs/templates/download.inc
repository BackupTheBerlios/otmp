<?
/*
 * Show Dokument Info
 *
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/templates/download.inc,v $
 * $Revision: 1.2 $
 * $Id: download.inc,v 1.2 2001/12/18 15:25:31 hifix Exp $
 *
 * To Do:
 * - LOcalisation
 *
 * Variables:
 * id   - DokumentID to Show
 */

$d = getDocumentDetails($id);
?>
<h2>Text download</h2>
<form method="post" action="">
  <table width="100%" cellspacing="1" cellpadding="2">
    <tr> 
      <td>runterzuladener Text:</td>
      <td><?=ov($d->title)?></td>
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td>Sprache:</td>
      <td><?=ov($d->language)?></td>
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td>m&ouml;chten Sie es gepackt?<br>
        w&auml;hlen Sie einen Packer aus</td>
      <td> 
        <select name="filetype">
          <option value="0" selected>kein Packer</option>
          <option value="1">.zip</option>
          <option value="2">.tar</option>
        </select>
      </td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>
        <input type="submit" name="download" value="File runterladen">
      </td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
</form>
