<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/templates/document.inc,v $
 * $Revision: 1.4 $
 * $Id: document.inc,v 1.4 2001/12/10 22:09:00 darkpact Exp $
 */

$docs = show_docs($otid);
include ("documentlist.de");
?>

<form method="post" action="">
  <table width="100%" border="0" cellspacing="0" cellpadding="2">
    <tr>
      <td colspan="6" bgcolor="#BBBBBB"><b><font color="#000000"><?=$docinfos?></font></b></td>
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
   foreach ($docs as $d) {
    if ($d->Status=="open") { $mystatus = $statusopen; ?>
    <tr bgcolor=<?=$rowopen?>>
    <? } elseif ($d->Status=="work") { $mystatus = $statuswork ?>
    <tr bgcolor=<?=$rowwork?>>
    <? } elseif ($d->Status=="finished") { $mystatus = $statusfinished ?>
    <tr bgcolor=<?=$rowfinished?>>
    <? } else { ?>
    <tr>
    <? } ?>
      <td><a href="download.php?id=<?=$d->TextID?>"><?=$d->Title?></a></td>
      <td><?=$d->Language?></td>
      <td><?=$d->Date?></td>
      <td><?=show_name($d->AuthorID)?></td>
      <td><?=$mystatus?></td>
      <td><!--input type="submit" name="download_X" value=<?=$download;?> class="tbl_btn"--></td>
    </tr>
    <? if ($d->Status=="open") { ?>
    <tr bgcolor=<?=$rowopen?>>
    <? } elseif ($d->Status=="work") { ?>
    <tr bgcolor=<?=$rowwork?>>
    <? } elseif ($d->Status=="finished") { ?>
    <tr bgcolor=<?=$rowfinished?>>
    <? } else { ?>
    <tr>
    <? } ?>
      <td colspan="6"><b><?=$d->Description?></b></td>
    </tr>
<? $i=1-$i; } ?>
  </table>
</form>
