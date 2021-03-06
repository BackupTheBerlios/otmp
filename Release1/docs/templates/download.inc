<?
/*
 * Show Dokument Info
 *
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/templates/download.inc,v $
 * $Revision: 1.6 $
 * $Id: download.inc,v 1.6 2002/01/30 09:55:41 hifix Exp $
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
<form method="post" action="<?=$CFG->wwwroot?>/docs/download.php">
  <input type="hidden" name="textID" value="<?=$id?>">
  <table width="100%" cellspacing="1" cellpadding="2">
    <tr> 
      <td><b>runterzuladener Text:</b></td>
      <td> 
        <?=ov($d->title)?>
      </td>
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td><b>Sprache:</b></td>
      <td> 
        <?=ov($d->language)?>
      </td>
      <td>&nbsp;</td>
    </tr>
    <tr>
        <td><b>Dateiformat:</b></td>
        <td><?=ov($d->filetyp)?> <?=isset($d->filetypnote)?"(".ov($d->filetypnote).")":''?></td>
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
        <input type="submit" name="download" value="Datei runterladen">
      </td>
      <td>Dr&uuml;cken Sie hier und der Text wird auf Ihren Rechner geladen.<br>
        Ist dies getan, klicken Sie bitte <a href="<?=nvl($session['wantsurl'],"$CFG->wwwroot/main.php")?>">hier</a>.</td>
      <td>&nbsp;</td>
    </tr>
  </table>
</form>
