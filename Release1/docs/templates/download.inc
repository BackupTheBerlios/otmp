<?
/*
 * Show Dokument Info
 *
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/templates/download.inc,v $
 * $Revision: 1.3 $
 * $Id: download.inc,v 1.3 2001/12/18 23:29:22 hifix Exp $
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
      <td> 
        <?=ov($d->title)?>
      </td>
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td>Sprache:</td>
      <td> 
        <?=ov($d->language)?>
      </td>
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
      <td>Dr&uuml;cken Sie hier und der Text wird auf Ihren Rechner geladen.<br>
        Ist dies getan, klicken Sie bitte <a href="<?=nvl($session['wantsurl'],"$CFG->wwwroot/main.php")?>">hier</a>.</td>
      <td>&nbsp;</td>
    </tr>
  </table>
</form>
