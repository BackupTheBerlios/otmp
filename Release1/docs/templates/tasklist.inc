<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/templates/tasklist.inc,v $
 * $Revision: 1.2 $
 * $Id: tasklist.inc,v 1.2 2001/12/18 23:29:22 hifix Exp $
 */

include ("documentlist.de");

if ($list=="all") {
$docopen = show_tasks("open");
$docwork = show_tasks("work");
$docfinished = show_tasks("finished");
} else {
$docopen = $docwork = $docfinished = show_tasks($list);
}

?>
<p><font size=-1><?=$show;?> <a href="tasklist.php?list=open"><?=$opendocs?></a> |
   <a href="tasklist.php?list=work"><?=$workdocs?></a> |
   <a href="tasklist.php?list=finished"><?=$finisheddocs?></a> |
   <a href="tasklist.php?list=all"><?=$alldocs?></a></font></p>
<? if ($list=="all" || $list=="open") { ?>
<form method="post" action="">
  <table width="100%" border="0" cellspacing="0" cellpadding="2">
    <tr>
      <td colspan="6" bgcolor=<?=$headeropen?>><b><font size="+1" color="#000000"><?=$opendocs?></font></b></td>
    </tr>
    <tr>
      <td><b><?=$doctitle?></b></td>
      <td><b><?=$languagefrom?></b></td>
      <td><b><?=$languageto?></b></td>
      <td><b><?=$docdate?></b></td>
      <td><b><?=$docauthor?></b></td>
      <td>&nbsp;</td>
    </tr>
<? $i=0;
   foreach ($docopen as $d) {
    if ($i==0) { ?>
    <tr bgcolor=<?=$rowopen?>>
    <? } else { ?>
    <tr bgcolor=<?=$rowopen2?>>
    <? } ?>
      <td><a href="document.php?otid=<?=($d->BaseID)?$d->BaseID:$d->TextID?>"><?=$d->Title?></a></td>
      <td><?=$d->FromLanguage?></td>
      <td><?=$d->ToLanguage?></td>
      <td><?=$d->Date?></td>
      <td><?=show_name($d->AuthorID)?></td>
      <td><input type="submit" name="download_X" value=<?=$taketask?> class="tbl_btn"></td>
    </tr>
<? $i=1-$i; } ?>
  </table>
</form>
<? } ?>
<? if ($list=="all" || $list=="work") { ?>
<form method="post" action="">
  <table width="100%" border="0" cellspacing="0" cellpadding="2">
    <tr>
      <td colspan="6" bgcolor=<?=$headerwork?>><b><font size="+1" color="#000000"><?=$workdocs;?></font></b></td>
    </tr>
    <tr>
      <td><b><?=$doctitle; ?></b></td>
      <td><b><?=$languagefrom; ?></b></td>
      <td><b><?=$languageto; ?></b></td>
      <td><b><?=$docdate; ?></b></td>
      <td><b><?=$docauthor; ?></b></td>
      <td><b><?=$translator; ?></b></td>
    </tr>
<? $i=0;
   foreach ($docwork as $d) {
    if ($i==0) { ?>
    <tr bgcolor=<?=$rowwork?>>
    <? } else { ?>
    <tr bgcolor=<?=$rowwork2?>>
    <? } ?>
      <td><a href="document.php?otid=<?=($d->BaseID)?$d->BaseID:$d->TextID?>"><?=$d->Title?></a></td>
      <td><?=$d->FromLanguage?></td>
      <td><?=$d->ToLanguage?></td>
      <td><?=$d->Date?></td>
      <td><?=show_name($d->AuthorID)?></td>
      <td><?=show_name($d->TranslatorID)?></td>
    </tr>
<? $i=1-$i; } ?>
  </table>
</form>
<? } ?>
<? if ($list=="all" or $list=="finished") { ?>
<form method="post" action="">
  <table width="100%" border="0" cellspacing="0" cellpadding="2">
    <tr>
      <td colspan="5" bgcolor=<?=$headerfinished?>><b><font size="+1" color="#000000"><?=$finisheddocs;?></font></b></td>
    </tr>
    <tr>
      <td><b><?=$doctitle; ?></b></td>
      <td><b><?=$languagefrom; ?></b></td>
      <td><b><?=$languageto; ?></b></td>
      <td><b><?=$docdate; ?></b></td>
      <td><b><?=$docauthor; ?></b></td>
    </tr>
<? $i=0;
   foreach ($docfinished as $d) {
    if ($i==0) { ?>
    <tr bgcolor=<?=$rowfinished?>>
    <? } else { ?>
    <tr bgcolor=<?=$rowfinished2?>>
    <? } ?>
      <td><a href="document.php?otid=<?=($d->BaseID)?$d->BaseID:$d->TextID?>"><?=$d->Title?></a></td>
      <td><?=$d->FromLanguage?></td>
      <td><?=$d->ToLanguage?></td>
      <td><?=$d->Date?></td>
      <td><?=show_name($d->AuthorID)?></td>
    </tr>
<? $i=1-$i; } ?>
  </table>
</form>
<? } ?>
