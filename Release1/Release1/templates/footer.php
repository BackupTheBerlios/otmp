<? 
/*
* $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/Release1/templates/Attic/footer.php,v $
* $Revision: 1.1 $
* $Id: footer.php,v 1.1 2001/12/02 08:23:05 ahlabadi Exp $
*
*/
?>

<hr size=1>
<center>
  <span class="footer">
  &nbsp;&nbsp;<a href="<?=$CFG->wwwroot?>/main.php">home</A>&nbsp;&nbsp;
  |&nbsp;&nbsp;<a href="<?=$CFG->wwwroot?>/documentlist.php">documents</A>&nbsp;&nbsp;
  |&nbsp;&nbsp;<a href="mailto:ostkino@citygrid.de">contact</A>&nbsp;&nbsp;
  <br>
  <?if (isset($session['userid'])) { ?>
    &nbsp;&nbsp;<a href="<?=$CFG->wwwroot?>/logout.php">logout</A>&nbsp;&nbsp;
    |&nbsp;&nbsp;<a href="<?=$CFG->wwwroot?>/user/change_password.php">change password</A>&nbsp;&nbsp;
    <?if (require_priv(1)) { /* general Admin */?> 
    |&nbsp;&nbsp;<a href="<?=$CFG->wwwroot?>/opt.php?debug=<?= nvl($session['mode_debug'])==1? 0:1;?>">debug <?= nvl($session['mode_debug'])==1? "off":"on";?></A>&nbsp;&nbsp;
    |&nbsp;&nbsp;<a href="<?=$CFG->wwwroot?>/opt.php?admin=<?= nvl($session['mode_admin'])==1? 0:1;?>">admin mode <?= nvl($session['mode_admin'])==1? "off":"on";?></A>&nbsp;&nbsp;
    |&nbsp;&nbsp;<a href="<?=$CFG->wwwroot?>/admin.php">adminpage</A>&nbsp;&nbsp;
    <?}?>
  <?} else {?>
  <a href="<?=$CFG->wwwroot?>/user/login.php">login</A>
  <?}?>
  <br>
  release: <?=$RELEASE?> Date: <?=$RELEASEDATE?>  &copy; 2001 otmp-developer
  </span> 
</center>

</body>
</html>