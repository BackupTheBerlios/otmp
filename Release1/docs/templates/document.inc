<?
$docs = show_docs($baseid);
include ("documentlist.de");
?>

<form method="post" action="">
  <table width="100%" border="0" cellspacing="0" cellpadding="2">
    <tr>
      <td colspan="6" bgcolor="#8888FF"><b><font color="#000000"><?=$docinfos;?></font></b></td>
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
    if ($d->Status=="open") { ?>
    <tr bgcolor="#CCCCFF">
    <? } elseif ($d->Status=="work") { ?>
    <tr bgcolor="#CCFFCC">
    <? } elseif ($d->Status=="finished") { ?>
    <tr bgcolor="#FFCCCC">
    <? } else { ?>
    <tr>
    <? } ?>
      <td><?=$d->Title?></td>
      <td><?=$d->Language?></td>
      <td><?=$d->Date?></td>
      <td><?=$d->Author?></td>
      <td><?=$d->Status?></td>
      <td><input type="submit" name="download_X" value=<?=$download;?> class="tbl_btn"></td>
    </tr>
    if ($d->Status=="open") { ?>
    <tr bgcolor="#CCCCFF">
    <? } elseif ($d->Status=="work") { ?>
    <tr bgcolor="#CCFFCC">
    <? } elseif ($d->Status=="finished") { ?>
    <tr bgcolor="#FFCCCC">
    <? } else { ?>
    <tr>
    <? } ?>
      <td colspan="6"><b><?=$d->Description?></b></td>
    </tr>
<? $i=1-$i; } ?>
  </table>
</form>
