<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/templates/userdocuments.inc,v $
 * $Revision: 1.3 $
 * $Id: userdocuments.inc,v 1.3 2001/12/09 13:34:06 darkpact Exp $
 */

$mydocs = show_docs($usrid);
include ("documentlist.de");
?>

<form method="post" action="">
  <table width="100%" border="0" cellspacing="0" cellpadding="2">
    <tr>
      <td colspan="6" bgcolor="#888888"><b><font color="#000000"><?=$docinfos;?></font></b></td>
    </tr>
    <tr>
      <td><b><?=$doctitle?></b></td>
      <td><b><?=$language?></b></td>
      <td><b><?=$docdate?></b></td>
      <td><b><?=$docauthor?></b></td>
      <td><b><?=$docstatus?></b></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td colspan="6"><b><?=$description?></b></td>
    </tr>
<? $i=0;
 foreach ($mydocs as $d) {
    if ($d->Status=="open") { ?>
    <tr bgcolor="#CCCCFF">
    <? } elseif ($d->Status=="work") { ?>
    <tr bgcolor="#CCFFCC">
    <? } elseif ($d->Status=="finished") { ?>
    <tr bgcolor="#FFCCCC">
    <? } else { ?>
    <tr>
    <? } ?>
      <td><b><a href="document.php?otid<?=$d->BaseID?>"><?=$d->Title?></a></b></td>
      <td><?=$d->Language?></td>
      <td><?=$d->Date?></td>
      <td><?=$d->Author?></td>
      <td><?=$d->Status?></td>
      <td><!--input type="submit" name="download_X" value=<?=$download;?> class="tbl_btn"--></td>
    </tr>
    <? if ($d->Status=="open") { ?>
    <tr bgcolor="#CCCCFF">
    <? } elseif ($d->Status=="work") { ?>
    <tr bgcolor="#CCFFCC">
    <? } elseif ($d->Status=="finished") { ?>
    <tr bgcolor="#FFCCCC">
    <? } else { ?>
    <tr>
    <? } ?>
      <td colspan="6"><?=$d->Description?></td>
    </tr>
<? $i=1-$i; } ?>
  </table>
</form>
