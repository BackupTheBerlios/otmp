<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/templates/tasklist.inc,v $
 * $Revision: 1.1 $
 * $Id: tasklist.inc,v 1.1 2001/12/14 09:32:01 darkpact Exp $
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
      <td colspan="7" bgcolor=<?=$headeropen?>><b><font color="#000000"><?=$opendocs?></font></b></td>
    </tr>
    <tr>
      <td><b><?=$doctitle?></b></td>
      <td><b><?=$languagefrom?></b></td>
      <td><b><?=$languageto?></b></td>
      <td><b><?=$docdate?></b></td>
      <td><b><?=$docauthor?></b></td>
      <td><b><?=$docstatus?></b></td>
      <td>&nbsp;</td>
    </tr>
<? $i=0;
   foreach ($docopen as $d) {
    if ($i==0) { ?>
    <tr bgcolor=<?=$rowopen?>>
    <? } else { ?>
    <tr>
    <? } ?>
      <td><a href="document.php?otid=<?=$d->BaseID?>"><?=$d->Title?></a></td>
      <td><?=$d->FromLanguage?></td>
      <td><?=$d->ToLanguage?></td>
      <td><?=$d->Date?></td>
      <td><?=show_name($d->AuthorID)?></td>
      <td><?=$statusopen?></td>
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
      <td colspan="7" bgcolor=<?=$headerwork?>><b><font color="#000000"><?=$workdocs;?></font></b></td>
    </tr>
    <tr>
      <td><b><?=$doctitle; ?></b></td>
      <td><b><?=$languagefrom; ?></b></td>
      <td><b><?=$languageto; ?></b></td>
      <td><b><?=$docdate; ?></b></td>
      <td><b><?=$docauthor; ?></b></td>
      <td><b><?=$translator; ?></b></td>
      <td><b><?=$docstatus; ?></b></td>
    </tr>
<? $i=0;
   foreach ($docwork as $d) {
    if ($i==0) { ?>
    <tr bgcolor=<?=$rowwork?>>
    <? } else { ?>
    <tr>
    <? } ?>
      <td><a href="document.php?otid=<?=$d->BaseID?>"><?=$d->Title?></a></td>
      <td><?=$d->FromLanguage?></td>
      <td><?=$d->ToLanguage?></td>
      <td><?=$d->Date?></td>
      <td><?=show_name($d->AuthorID)?></td>
      <td><?=show_name($d->TranslatorID)?></td>
      <td><?=$statuswork?></td>
    </tr>
<? $i=1-$i; } ?>
  </table>
</form>
<? } ?>
<? if ($list=="all" or $list=="finished") { ?>
<form method="post" action="">
  <table width="100%" border="0" cellspacing="0" cellpadding="2">
    <tr>
      <td colspan="5" bgcolor=<?=$headerfinished?>><b><font color="#000000"><?=$finisheddocs;?></font></b></td>
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
    <tr>
    <? } ?>
      <td><a href="document.php?otid=<?=$d->BaseID?>"><?=$d->Title?></a></td>
      <td><?=$d->FromLanguage?></td>
      <td><?=$d->ToLanguage?></td>
      <td><?=$d->Date?></td>
      <td><?=show_name($d->AuthorID)?></td>
    </tr>
<? $i=1-$i; } ?>
  </table>
</form>
<? } ?>
