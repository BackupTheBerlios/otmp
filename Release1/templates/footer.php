<?
/*
* $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/templates/footer.php,v $
* $Revision: 1.8 $
* $Id: footer.php,v 1.8 2002/01/30 01:42:58 hifix Exp $
*
*/
?>

<hr size=1>
<table width="100%" bgcolor="#AAAAFF">
<tr><td>
<center>
  <span class="footer">
  &nbsp;&nbsp;<a href="<?=$CFG->wwwroot?>/main.php">Hauptseite</A>&nbsp;&nbsp;
  |&nbsp;&nbsp;<a href="<?=$CFG->wwwroot?>/docs/documentlist.php">Dokumente</A>&nbsp;&nbsp;
  |&nbsp;&nbsp;<a href="<?=$CFG->wwwroot?>/docs/tasklist.php">&Uuml;bersetzungsaufträge</A>&nbsp;&nbsp;
  |&nbsp;&nbsp;<a href="<?=$CFG->wwwroot?>/docs/search.php">Suche</A>&nbsp;&nbsp;
  |&nbsp;&nbsp;<a href="mailto:ostkino@citygrid.de">Kontakt</A>&nbsp;&nbsp;
  <br>
  <?if (isset($session['userid'])) { ?>
    &nbsp;&nbsp;<a href="<?=$CFG->wwwroot?>/user/logout.php">Ausloggen</A>&nbsp;&nbsp;
    |&nbsp;&nbsp;<a href="<?=$CFG->wwwroot?>/user/changepassword.php">Passwort ändern</A>&nbsp;&nbsp;
    <?if (require_priv(1)) { /* general Admin */?>
    |&nbsp;&nbsp;<a href="<?=$CFG->wwwroot?>/opt.php?debug=<?= nvl($session['mode_debug'])==1? 0:1;?>">Debug Modus <?= nvl($session['mode_debug'])==1? "Aus":"An";?></A>&nbsp;&nbsp;
    |&nbsp;&nbsp;<a href="<?=$CFG->wwwroot?>/opt.php?admin=<?= nvl($session['mode_admin'])==1? 0:1;?>">Admin Modus <?= nvl($session['mode_admin'])==1? "Aus":"An";?></A>&nbsp;&nbsp;
    |&nbsp;&nbsp;<a href="<?=$CFG->wwwroot?>/admin/admin.php">Admin Seite</A>&nbsp;&nbsp;
    <?}?>
  <?} else {?>
  <a href="<?=$CFG->wwwroot?>/user/login.php">Einloggen</A>
  <?}?>
  <br>
  release: <?=$RELEASE?> Date: <?=$RELEASEDATE?>  &copy; 2001-2002 otmp-developer
  </span>
</center>
</td></tr></table>
</body>
</html>
