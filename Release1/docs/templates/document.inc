<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/templates/document.inc,v $
 * $Revision: 1.7 $
 * $Id: document.inc,v 1.7 2002/01/27 22:12:37 darkpact Exp $
 */

$docs = show_docs($otid);
include ("documentlist.de");
?>

<!--form method="post" action="">
<p>
  <table width="100%" border="0" cellspacing="0" cellpadding="2">
    <tr>
      <td colspan="5" bgcolor="#BBBBBB"><b><font color="#000000"><?=$docorg?></font></b></td>
    </tr>
    <tr>
      <td><b><?=$doctitle?><br><?=$description?></b></td>
      <td><b><?=$language?></b></td>
      <td><b><?=$docdate?></b></td>
      <td><b><?=$docauthor?></b></td>
      <td><b><?=$docstatus?></b></td>
    </tr>
<? $i=0; foreach ($docs as $d) { if ($i<1) {
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
      <td><? if ($d->Status=="open") {?><input type="submit" name="taketask" value="<?=$taketask?>" class="tbl_btn"><? } else { ?><?=show_name($d->AuthorID)?><? } ?></td>
      <td><?=$mystatus?></td>
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
      <td colspan="5"><?=$d->Description?></td>
    </tr>
<? } $i++; } ?>
  </table>
</p-->
<p>
  <table width="100%" border="0" cellspacing="0" cellpadding="2">
    <tr>
      <td colspan="5" bgcolor="#FFFFFF"><h3><font color="#000000"><?=$doctrans?></font></h3></td>
    </tr>
    <tr bgcolor="#DDDDDD">
      <td><b><?=$doctitle?><br><?=$description?></b></td>
      <td><b><?=$language?></b></td>
      <td><b><?=$docdate?></b></td>
      <td><b><?=$docauthor?></b></td>
      <td><b><?=$docstatus?></b></td>
    </tr>
<? $i=0; foreach ($docs as $d) { if ($i>0) {
    if ($d->Status=="open") { $mystatus = $statusopen; ?>
    <tr bgcolor=<?=$rowopen?>>
      <td><?=$d->Title?></td>
    <? } elseif ($d->Status=="work") { $mystatus = $statuswork ?>
    <tr bgcolor=<?=$rowwork?>>
      <td><?=$d->Title?></td>
    <? } elseif ($d->Status=="finished") { $mystatus = $statusfinished ?>
    <tr bgcolor=<?=$rowfinished?>>
      <td><a href="download.php?id=<?=$d->TextID?>"><?=$d->Title?></a></td>
    <? } else { ?>
    <tr>
      <td><?=$d->Title?></td>
    <? } ?>
      <td><?=$d->Language?></td>
      <td><?=$d->Date?></td>
      <td><? if ($d->Status=="open") {?><input type="submit" name="taketask" value="<?=$taketask?>" class="tbl_btn"><? } else { ?><?=show_name($d->AuthorID)?><? } ?></td>
      <td><?=$mystatus?></td>
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
      <td colspan="5"><?=$d->Description?></td>
    </tr>
<? } $i++; } ?>
  </table>
</p>
</form>
<p align="center">
<!--
<input type="submit" name="maketask" value="<?=$maketask?>" class="tbl_btn">
-->
<a href="task.php?id=<?=$otid?>"><?=$maketask?></a>
</p>
