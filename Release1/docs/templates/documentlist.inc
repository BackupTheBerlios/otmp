<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/templates/documentlist.inc,v $
 * $Revision: 1.4 $
 * $Id: documentlist.inc,v 1.4 2001/12/10 22:09:00 darkpact Exp $
 */

include ("documentlist.de");

$docfinished = show_docs("finished");

?>
<form method="post" action="">
  <table width="100%" border="0" cellspacing="0" cellpadding="2">
    <tr>
      <td colspan="4" bgcolor=<?=$headerfinished?>><b><font color="#000000"><?=$allready;?></font></b></td>
    </tr>
    <tr>
      <td><b><?=$doctitle; ?></b></td>
      <td><b><?=$languagefrom; ?></b></td>
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
      <td><?=$d->Language?></td>
      <td><?=$d->Date?></td>
      <td><?=show_name($d->AuthorID)?></td>
    </tr>
<? $i=1-$i; } ?>
  </table>
</form>
