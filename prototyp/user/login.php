<? /*
	* $Revision: 1.1 $
	* $ID$
    */
?>
<html>
<head>
<title>otmp - login</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta name="description" content="OTMP - Online Translation Marketplace">
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
<p align="center"> Um Dich am System anzumelden, gib bitte Deinen Usernamen und 
  Dein Passwort ein.</p>
<form method="post" action="">
  <div align="center"> 
    <table width="100%" border="0" cellspacing="0" cellpadding="4">
      <tr> 
        <td align="center" valign="top"> 
          <table cellspacing="0" cellpadding="1" bgcolor="#000000">
            <tr> 
              <td> 
                <table cellspacing="0" cellpadding="6">
                  <tr bgcolor="#FFFFFF"> 
                    <td>username:</td>
                    <td> 
                      <input type="text" name="username">
                    </td>
                  </tr>
                  <tr bgcolor="#FFFFFF"> 
                    <td>passwort:</td>
                    <td> 
                      <input type="password" name="password">
                    </td>
                  </tr>
                  <tr bgcolor="#FFFFFF" > 
                    <td colspan=2 align="center"> 
                      <input type="submit" name="login" value="login">
                    </td>
                  </tr>
                </table>
              </td>
            </tr>
          </table>
        </td>
        <td valign="top"> 
          <p>Noch keinen Account?<br>
            <a href="signup.php">Hier</a> kannst Du Dich anmelden.</p>
          <p>Passwort vergessen? <a href="forgot_password.php"><br>
            Hier</a> gibts Hilfe.</p>
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
  &copy; 2001 otmp-developer :)</p>
</body>
</html>
