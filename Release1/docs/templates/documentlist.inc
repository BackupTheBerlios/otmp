<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/templates/documentlist.inc,v $
 * $Revision: 1.2 $
 * $Id: documentlist.inc,v 1.2 2001/12/06 22:38:50 darkpact Exp $
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
<p><font size=-1><?=$show;?> <a href="documentlist.php?list=open"><?=$opendocs;?></a> |
   <a href="documentlist.php?list=work"><?=$workdocs;?></a> |
   <a href="documentlist.php?list=finished"><?=$finisheddocs;?></a> |
   <a href="documentlist.php?list=all"><?=$alldocs;?></a></font></p>
<? if ($list=="all" || $list=="open") { ?>
<form method="post" action="">
  <table width="100%" border="0" cellspacing="0" cellpadding="2">
    <tr>
      <td colspan="8" bgcolor="#8888FF"><b><font color="#000000"><?=$opendocs;?></font></b></td>
    </tr>
    <tr>
      <td><b><?=$number; ?></b></td>
      <td><b><?=$doctitle; ?></b></td>
      <td><b><?=$languagefrom; ?></b></td>
      <td><b><?=$languageto; ?></b></td>
      <td><b><?=$docdate; ?></b></td>
      <td><b><?=$docauthor; ?></b></td>
      <td></td>
      <td><b><?=$docstatus; ?></b></td>
    </tr>
<? $i=0;
   foreach ($docopen as $d) {
    if ($i==0) { ?>
    <tr>
    <? } else { ?>
    <tr bgcolor="#CCCCFF">
    <? } ?>
      <td></td>
      <td><a href="document.php?otid<?=$d->TextOTID?>"><?=$d->Title?></td>
      <td><?=$d->FromLanguage?></td>
      <td><?=$d->ToLanguage?></td>
      <td><?=$d->Date?></td>
      <td><?=$d->Author?></td>
      <td>&nbsp;</td>
      <td><?=$d->Status?></td>
    </tr>
<? $i=1-$i; } ?>
  </table>
</form>
<? } ?>
<? if ($list=="all" || $list=="work") { ?>
<form method="post" action="">
  <table width="100%" border="0" cellspacing="0" cellpadding="2">
    <tr>
      <td colspan="8" bgcolor="#88FF88"><b><font color="#000000"><?=$workdocs;?></font></b></td>
    </tr>
    <tr>
      <td><b><?=$number; ?></b></td>
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
    <tr>
    <? } else { ?>
    <tr bgcolor="#CCFFCC">
    <? } ?>
      <td></td>
      <td><a href="document.php?otid<?=$d->TextOTID?>"><?=$d->Title?></td>
      <td><?=$d->FromLanguage?></td>
      <td><?=$d->ToLanguage?></td>
      <td><?=$d->Date?></td>
      <td><?=$d->Author?></td>
      <td><?=$d->Translator?></td>
      <td><?=$d->Status?></td>
    </tr>
<? $i=1-$i; } ?>
  </table>
</form>
<? } ?>
<? if ($list=="all" or $list=="finished") { ?>
<form method="post" action="">
  <table width="100%" border="0" cellspacing="0" cellpadding="2">
    <tr>
      <td colspan="8" bgcolor="#FF8888"><b><font color="#000000"><?=$finisheddocs;?></font></b></td>
    </tr>
    <tr>
      <td><b><?=$number; ?></b></td>
      <td><b><?=$doctitle; ?></b></td>
      <td><b><?=$languagefrom; ?></b></td>
      <td><b><?=$languageto; ?></b></td>
      <td><b><?=$docdate; ?></b></td>
      <td><b><?=$docauthor; ?></b></td>
      <td><b><?=$translator; ?></b></td>
      <td></td>
    </tr>
<? $i=0;
   foreach ($docfinished as $d) {
    if ($i==0) { ?>
    <tr>
    <? } else { ?>
    <tr bgcolor="#FFCCCC">
    <? } ?>
      <td></td>
      <td><a href="document.php?otid<?=$d->TextOTID?>"><?=$d->Title?></td>
      <td><?=$d->FromLanguage?></td>
      <td><?=$d->ToLanguage?></td>
      <td><?=$d->Date?></td>
      <td><?=$d->Author?></td>
      <td><?=$d->Translator?></td>
      <td>&nbsp;</td>
    </tr>
<? $i=1-$i; } ?>
  </table>
</form>
<? } ?>
