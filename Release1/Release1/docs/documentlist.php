<? /*
    * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/Release1/docs/Attic/documentlist.php,v $
    * $Revision: 1.1 $
    * $Id: documentlist.php,v 1.1 2001/12/02 08:23:05 ahlabadi Exp $
    */
?>
<!-- doc header -->
<?
$langs=isset($langs)?$langs:"us";
include ("../all." . $langs);
include ("documentlist." . $langs);
$loginname=isset($loginname)?$loginname:$notlogedin;
$maindir = "../";
include ("../otmpheader.php");
?>
<!-- doc header end -->

<!-- doc body -->
<p><font size=-1><? echo $show;?> <a href="documentlist.php?langs=<? echo $langs; ?>?list=open"><? echo $opendocs;?></a> |
   <a href="documentlist.php?langs=<? echo $langs; ?>?list=work"><? echo $workdocs;?></a> |
   <a href="documentlist.php?langs=<? echo $langs; ?>?list=finished"><? echo $finisheddocs;?></a> |
   <a href="documentlist.php?langs=<? echo $langs; ?>?list=all"><? echo $alldocs;?></a></font></p>

<? $list=isset($list)?$list:"all"; ?>
<? if ($list=="all" || $list=="open") { ?>
<form method="post" action="">
  <table width="100%" border="0" cellspacing="0" cellpadding="2">
    <tr>
      <td colspan="8" bgcolor="#8888FF"><b><font color="#000000"><? echo $opendocs;?></font></b></td>
    </tr>
    <tr>
      <td><b><? echo $number; ?></b></td>
      <td><b><? echo $doctitle; ?></b></td>
      <td><b><? echo $languagefrom; ?></b></td>
      <td><b><? echo $languageto; ?></b></td>
      <td><b><? echo $docdate; ?></b></td>
      <td><b><? echo $docauthor; ?></b></td>
      <td><b><? echo $docstatus; ?></b></td>
      <td></td>
    </tr>
    <tr>
      <td bgcolor="#CCCCFF">4</td>
      <td bgcolor="#CCCCFF"><a href="doc.php?doc=4">Mechanisierung der Kopfarbeit</a></td>
      <td bgcolor="#CCCCFF">Deutsch</td>
      <td bgcolor="#CCCCFF">Suaheli</td>
      <td bgcolor="#CCCCFF">23. Mai 2001</td>
      <td bgcolor="#CCCCFF"><a href="mailto:nake@localhost">Biel E. Fake</a></td>
      <td bgcolor="#CCCCFF"><? echo $statusopen; ?></td>
      <td bgcolor="#CCCCFF"><input type="submit" name="translate4" value=<? echo $translate;?> class="tbl_btn"></td>
    </tr>
    <tr>
      <td>15</td>
      <td>Theorien der Stammbildung</td>
      <td>Deutsch</td>
      <td>Juristendeutsch</td>
      <td>4. November 2001</td>
      <td><a href="mailto:siebert@localhost">Dr. Siebert</a></td>
      <td><? echo $statusopen; ?></td>
      <td><input type="submit" name="translate15" value=<? echo $translate;?> class="tbl_btn"></td>
    </tr>
    <tr>
      <td bgcolor="#CCCCFF">16</td>
      <td bgcolor="#CCCCFF">Semiotik &amp; Click Languages</td>
      <td bgcolor="#CCCCFF">Englisch</td>
      <td bgcolor="#CCCCFF">Französisch</td>
      <td bgcolor="#CCCCFF">11. November 2001</td>
      <td bgcolor="#CCCCFF"> - <a href="contact_user.php?user=doc16">Anonym</a> -</td>
      <td bgcolor="#CCCCFF"><? echo $statusopen; ?></td>
      <td bgcolor="#CCCCFF"><input type="submit" name="translate16" value=<? echo $translate;?> class="tbl_btn"></td>
    </tr>
  </table>
</form>
<? } ?>
<? if ($list=="all" || $list=="work") { ?>
<form method="post" action="">
  <table width="100%" border="0" cellspacing="0" cellpadding="2">
    <tr>
      <td colspan="8" bgcolor="#88FF88"><b><font color="#000000"><? echo $workdocs;?></font></b></td>
    </tr>
    <tr>
      <td><b><? echo $number; ?></b></td>
      <td><b><? echo $doctitle; ?></b></td>
      <td><b><? echo $languagefrom; ?></b></td>
      <td><b><? echo $languageto; ?></b></td>
      <td><b><? echo $translator; ?></b></td>
      <td><b><? echo $docdate; ?></b></td>
      <td><b><? echo $docstatus; ?></b></td>
      <td></td>
    </tr>
    <tr>
      <td bgcolor="#CCFFCC">13</td>
      <td bgcolor="#CCFFCC"><a href="doc.php?doc=13">Umwelt und Cola</a></td>
      <td bgcolor="#CCFFCC">Deutsch</td>
      <td bgcolor="#CCFFCC">Sanskrit</td>
      <td bgcolor="#CCFFCC"><a href="mailto:prinz@localhost">Prinz Felix</a></td>
      <td bgcolor="#CCFFCC">3. November 2001</td>
      <td bgcolor="#CCFFCC"><? echo $statuswork; ?></td>
      <td bgcolor="#CCFFCC"></td>
    </tr>
    <tr>
      <td>12</td>
      <td>Entwicklungl&auml;nder an der TU</td>
      <td>Deutsch</td>
      <td>Hebräisch</td>
      <td><a href="mailto:prinz@localhost">Prinz Felix</a></td>
      <td>1. November 2001</td>
      <td><? echo $statuswork; ?></td>
      <td></td>
    </tr>
  </table>
</form>
<? } ?>
<? if ($list=="all" or $list=="finished") { ?>
<form method="post" action="">
  <table width="100%" border="0" cellspacing="0" cellpadding="2">
    <tr>
      <td colspan="8" bgcolor="#FF8888"><b><font color="#000000"><? echo $finisheddocs;?></font></b></td>
    </tr>
    <tr>
      <td><b><? echo $number; ?></b></td>
      <td><b><? echo $doctitle; ?></b></td>
      <td><b><? echo $languagefrom; ?></b></td>
      <td><b><? echo $languageto; ?></b></td>
      <td><b><? echo $docdate; ?></b></td>
      <td><b><? echo $docauthor; ?></b></td>
      <td><b><? echo $translator; ?></b></td>
      <td></td>
    </tr>
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
  </table>
</form>
<? } ?>
<!-- doc body end -->

<!-- doc footer -->
<?
$userdir = "../user/";
$docsdir = "";
$helpdir = "../help/";
include ("../otmpfooter.php");
?>
<!-- doc footer end -->
