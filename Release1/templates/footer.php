<?
/*
* $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/templates/footer.php,v $
* $Revision: 1.5 $
* $Id: footer.php,v 1.5 2001/12/10 22:06:57 darkpact Exp $
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
  |&nbsp;&nbsp;<a href="<?=$CFG->wwwroot?>/docs/tasks.php">Aufträge</A>&nbsp;&nbsp;
  |&nbsp;&nbsp;<a href="<?=$CFG->wwwroot?>/docs/search.php">Suche</A>&nbsp;&nbsp;
  |&nbsp;&nbsp;<a href="mailto:ostkino@citygrid.de">Kontakt</A>&nbsp;&nbsp;
  <br>
  <?if (isset($session['userid'])) { ?>
    &nbsp;&nbsp;<a href="<?=$CFG->wwwroot?>/logout.php">Ausloggen</A>&nbsp;&nbsp;
    |&nbsp;&nbsp;<a href="<?=$CFG->wwwroot?>/user/changepassword.php">Passwort ändern</A>&nbsp;&nbsp;
    <?if (require_priv(1)) { /* general Admin */?>
    |&nbsp;&nbsp;<a href="<?=$CFG->wwwroot?>/opt.php?debug=<?= nvl($session['mode_debug'])==1? 0:1;?>">debug <?= nvl($session['mode_debug'])==1? "off":"on";?></A>&nbsp;&nbsp;
    |&nbsp;&nbsp;<a href="<?=$CFG->wwwroot?>/opt.php?admin=<?= nvl($session['mode_admin'])==1? 0:1;?>">admin mode <?= nvl($session['mode_admin'])==1? "off":"on";?></A>&nbsp;&nbsp;
    |&nbsp;&nbsp;<a href="<?=$CFG->wwwroot?>/admin.php">adminpage</A>&nbsp;&nbsp;
    <?}?>
  <?} else {?>
  <a href="<?=$CFG->wwwroot?>/user/login.php">Einloggen</A>
  <?}?>
  <br>
  release: <?=$RELEASE?> Date: <?=$RELEASEDATE?>  &copy; 2001 otmp-developer
  </span>
</center>
</td></tr></table>
</body>
</html>
