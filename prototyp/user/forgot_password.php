<? /*
    * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/prototyp/user/forgot_password.php,v $ 
    * $Revision: 1.1 $
    * $Id: forgot_password.php,v 1.1 2001/11/16 16:08:44 hifix Exp $
    */
?>
<html>
<head>
<title>otmp - password vergessen</title>
<meta name="robot-index" content="no">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta name="description" content="OTMP - Online Translation Marketplace
Passwort Recovery">
<link rel="stylesheet" href="../otmp.css">
</head>

<body bgcolor="#FFFFFF" leftmargin="1" topmargin="1">
<table width="100%" border="0" cellspacing="0" cellpadding="2">
  <tr bgcolor="#666666"> 
    <td colspan="2"> 
      <div align="right"><b><font color="#FFFFFF">you are not logged in</font></b></div>
    </td>
  </tr>
  <tr bgcolor="#CCCCCC"> 
    <td><b class="logo">OTMP</b></td>
    <td>&nbsp;</td>
  </tr>
  <tr> 
    <td colspan="2"> 
      <div align="right"><a href="../main.php">home</a> | <a href="../show.php">texts</a> 
        | <a href="options.php">options</a> | <a href="login.php">login</a></div>
    </td>
  </tr>
</table>
<p align="center"> Passwort Wiederherstellung</p>
<form method="post" action="forgot_password_ok.php">
  <div align="center"> 
    <table cellpadding=20>
      <tr valign=top> 
        <td width=300 class=normal> 
          <p><!--Das muss noch Übersetzt werden  ..... -->Enter in your email 
            address to recover your password. When you submit this request, your 
            password will be reset, and a new password will be sent to you via 
            email. 
          <p>If you do not want to do this, you can return to the <a href="login.php">login 
            screen</a> or the <a href="../main.php">home page</a> now. 
        </td>
        <td> 
          <div class=warning align=center></div>
          <table cellspacing="0" cellpadding="1" bgcolor="#000000">
            <tr> 
              <td> 
                <table bgcolor="#FFFFFF" cellspacing="10">
                  <tr> 
                    <td class=label>Email Address:</td>
                    <td>
                      <input type="text" name="email" size=25>
                    </td>
                  </tr>
                  <tr> 
                    <td></td>
                    <td>
                      <input type="submit" value="Submit" name="submit">
                      <input type="button" value="Cancel" onClick="javascript: history.go(-1)" name="button">
                      <p class=normal> <a href="login.php">Login Screen</a> | 
                        <a href="../main.php">Home Page</a> 
                    </td>
                  </tr>
                </table>
              </td>
            </tr>
          </table>
        </td>
      </tr>
    </table>
  </div>
</form>
<p align="center" class="footer"><a href="../main.php"> home</a>| <a href="../show.php">texts</a> 
  | <a href="../upload.php">upload</a> | <a href="../contact.php">contact</a> 
  | <a href="../help.php">help</a><br>
  <a href="login.php">login</a><br>
  <br>
  $Revision: 1.1 $ &copy; 2001 otmp-developer :)</p>
</body>
</html>
