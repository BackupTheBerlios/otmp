<?
/*
* $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/templates/header.php,v $
* $Revision: 1.3 $
* $Id: header.php,v 1.3 2001/12/09 13:34:26 darkpact Exp $
*
*
* ToDo:
* - Localize
* - make it smaller (see notice-table)
*/
?>

<html>
<head>
<title><?=$CFG->PNAME?> - <?=$DOC_TITLE?></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta name="description" content="OTMP - Online Translation Marketplace">
<link rel="stylesheet" href="<?=$CFG->wwwroot?>/otmp.css">
</head>

<body bgcolor="#FFFFFF" leftmargin="3" topmargin="1" marginwidth="1">
<table width="100%" border="0" cellspacing="0" cellpadding="5">
  <tr bgcolor="#898989">
    <td><div align="right"><b><font color="#FFFFFF">
    <? if ( isset($session['userid']) ){ ?>
        Dein Status: Eingelogged als <?=$session['username']?>
    <? } else { ?>
        Dein Status: Du bist nicht eingelogged. <a href="<?=$CFG->wwwroot?>/user/login.php">Einloggen</a>
    <? } ?>
    </font></b></div></td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td><b class="logo">OTMP</b></td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="1" bgcolor="#333333">
  <tr>
    <td>
      <table border="0" width="100%" cellspacing="0" cellpadding="2"  bgcolor="#FFCC99">
        <tr>
          <td colspan="5" class="notice">
            <div align="center"><? echo nvl($session['notice']); unset($session['notice']);?></div>
          </td>
        </tr>
      </table>
    </td>
  <tr>
</table>