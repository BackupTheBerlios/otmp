<?
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
      <td><?=$d->Title?></td>
      <td><?=$d->FromLanguage?></td>
      <td><?=$d->ToLanguage?></td>
      <td><?=$d->Date?></td>
      <td><?=$d->Author?></td>
      <td>&nbsp;</td>
      <td><?=$d->Status?></td>
    </tr>
<? $i=1-$i; } ?>
<!--
    <tr>
      <td bgcolor="#CCCCFF">4</td>
      <td bgcolor="#CCCCFF"><a href="doc.php?doc=4">Mechanisierung der Kopfarbeit</a></td>
      <td bgcolor="#CCCCFF">Deutsch</td>
      <td bgcolor="#CCCCFF">Suaheli</td>
      <td bgcolor="#CCCCFF">23. Mai 2001</td>
      <td bgcolor="#CCCCFF"><a href="mailto:nake@localhost">Biel E. Fake</a></td>
      <td bgcolor="#CCCCFF"><?=$statusopen; ?></td>
      <td bgcolor="#CCCCFF"><input type="submit" name="translate4" value=<?=$translate;?> class="tbl_btn"></td>
    </tr>
    <tr>
      <td>15</td>
      <td>Theorien der Stammbildung</td>
      <td>Deutsch</td>
      <td>Juristendeutsch</td>
      <td>4. November 2001</td>
      <td><a href="mailto:siebert@localhost">Dr. Siebert</a></td>
      <td><?=$statusopen; ?></td>
      <td><input type="submit" name="translate15" value=<?=$translate;?> class="tbl_btn"></td>
    </tr>
    <tr>
      <td bgcolor="#CCCCFF">16</td>
      <td bgcolor="#CCCCFF">Semiotik &amp; Click Languages</td>
      <td bgcolor="#CCCCFF">Englisch</td>
      <td bgcolor="#CCCCFF">Französisch</td>
      <td bgcolor="#CCCCFF">11. November 2001</td>
      <td bgcolor="#CCCCFF"> - <a href="contact_user.php?user=doc16">Anonym</a> -</td>
      <td bgcolor="#CCCCFF"><?=$statusopen; ?></td>
      <td bgcolor="#CCCCFF"><input type="submit" name="translate16" value=<?=$translate;?> class="tbl_btn"></td>
    </tr>
-->
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
      <td><?=$d->Title?></td>
      <td><?=$d->FromLanguage?></td>
      <td><?=$d->ToLanguage?></td>
      <td><?=$d->Date?></td>
      <td><?=$d->Author?></td>
      <td><?=$d->Translator?></td>
      <td><?=$d->Status?></td>
    </tr>
<? $i=1-$i; } ?>
<!--
    <tr>
      <td bgcolor="#CCFFCC">13</td>
      <td bgcolor="#CCFFCC"><a href="doc.php?doc=13">Umwelt und Cola</a></td>
      <td bgcolor="#CCFFCC">Deutsch</td>
      <td bgcolor="#CCFFCC">Sanskrit</td>
      <td bgcolor="#CCFFCC">3. November 2001</td>
      <td bgcolor="#CCFFCC"><a href="mailto:prinz@localhost">Prinz Felix</a></td>
      <td bgcolor="#CCFFCC"><?=$statuswork; ?></td>
      <td bgcolor="#CCFFCC"></td>
    </tr>
    <tr>
      <td>12</td>
      <td>Entwicklungl&auml;nder an der TU</td>
      <td>Deutsch</td>
      <td>Hebräisch</td>
      <td>1. November 2001</td>
      <td><a href="mailto:prinz@localhost">Prinz Felix</a></td>
      <td><?=$statuswork; ?></td>
      <td></td>
    </tr>
-->
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
      <td><?=$d->Title?></td>
      <td><?=$d->FromLanguage?></td>
      <td><?=$d->ToLanguage?></td>
      <td><?=$d->Date?></td>
      <td><?=$d->Author?></td>
      <td><?=$d->Translator?></td>
      <td>&nbsp;</td>
    </tr>
<? $i=1-$i; } ?>
<!--
    <tr>
      <td bgcolor="#FFCCCC">11</td>
      <td bgcolor="#FFCCCC"><a href="doc.php?doc=11">Nazir und seine Nerven</a></td>
      <td bgcolor="#FFCCCC">Deutsch</td>
      <td bgcolor="#FFCCCC">Arabisch</td>
      <td bgcolor="#FFCCCC">2. Oktober 2001</td>
      <td bgcolor="#FFCCCC"><a href="mailto:adam@localhost">Adam Eva</a></td>
      <td bgcolor="#FFCCCC"><a href="mailto:prinz@localhost">Prinz Felix</a></td>
      <td bgcolor="#FFCCCC"></td>
    </tr>
    <tr>
      <td>10</td>
      <td>Entwicklungl&auml;nder an der FU</td>
      <td>Deutsch</td>
      <td>Hebräisch</td>
      <td>12. September 2001</td>
      <td><a href="mailto:nazir@localhost">Nazir Peroz</a></td>
      <td><a href="mailto:king@localhost">König Hottentotten</a></td>
      <td></td>
    </tr>
-->
  </table>
</form>
<? } ?>
