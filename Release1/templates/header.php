<? 
/*
* $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/templates/header.php,v $
* $Revision: 1.2 $
* $Id: header.php,v 1.2 2001/11/29 19:01:00 hifix Exp $
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
  <tr bgcolor="#666666">
    <td><div align="right"><b><font color="#FFFFFF">
    <? if ( isset($session['userid']) ){ ?> 
        you are logged in as: <?=$session['username']?>
    <? } else { ?> 
        you are not logged in: <a href="<?=$CFG->wwwroot?>/user/login.php">login</a>
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