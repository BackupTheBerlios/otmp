<? /*
    * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/Attic/otmpheader.php,v $
    * $Revision: 1.2 $
    * $Id: otmpheader.php,v 1.2 2001/11/23 08:03:04 darkpact Exp $
    *
    * This header should be inserted in all files.
    *
    * Following Variables must be defined:
    *
    * $loginname - the name of the logged in user
    * $maindir - path to the main directory from this file
    */

echo '<html>
<head>
<title>OTMP - '; echo $pagename; echo '</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta name="description" content="OTMP - Online Translation Marketplace">
<link rel="stylesheet" href="'; echo $maindir; echo 'otmp.css">
</head>

<body bgcolor="#FFFFFF" leftmargin="3" topmargin="1" marginwidth="1">
<table width="100%" border="0" cellspacing="0" cellpadding="5">
  <tr bgcolor="#666666">
    <td><div align="right"><b><font color="#FFFFFF">'; echo $login; echo $loginname; echo '</font></b></div></td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td><b class="logo">OTMP</b></td>
  </tr>
</table>
';
?>
