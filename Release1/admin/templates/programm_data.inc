<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/admin/templates/programm_data.inc,v $
 * $Revision: 1.1 $
 * $Id: programm_data.inc,v 1.1 2002/01/30 01:44:17 hifix Exp $
 *
 * needs:$prgid - ProgrammID
 */

$programdata = getProgrammData($prgid);
$filetypedata = getProgrammFileTypes($prgid);
?> 
<p>&nbsp; </p>
<table border="1" cellspacing="2" cellpadding="5">
  <tr> 
    <td><b>Programm ID - Name:</b></td>
    <td> 
      <?=$programdata->id?>
      - 
      <?=$programdata->name?>
    </td>
  </tr>
  <tr> 
    <td><b>Version:</b> </td>
    <td> 
      <?=$programdata->version?>
    </td>
  </tr>
  <tr>
    <td><b>FileTypen</b></td>
    <td>&nbsp;</td>
  </tr>
  <? foreach($filetypedata as $ft) { ?>
  <tr><td><br></td>
  <td><? if($ft->isdefault) { ?>
  <b> 
  <?=$ft->extension?>
  (<?=($ft->id)?>)
  <?=($ft->note)?>
  </b> 
  <? } else { ?>
  <?=$ft->extension?>
  (<?=($ft->id)?>)
  <?=($ft->note)?>
  <? } ?>
  </td>
  </tr>
  <? } /* endfor */?>

</table>
