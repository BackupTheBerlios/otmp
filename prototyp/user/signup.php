<? /*
    * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/prototyp/user/signup.php,v $ 
    * $Revision: 1.2 $
    * $Id: signup.php,v 1.2 2001/11/20 12:39:12 alexgn Exp $
    */
?>
<html>
<head>
<title>otmp - signup</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta name="description" content="OTMP - Online Translation Marketplace
Signup">
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
<h3 align="left">Anmeldung f&uuml;r OTMP</h3>
<div align="center"><br>
  Egal ob Sie sich als Übersetzer oder als Nutzer anmelden, die Anmeldung beim OTMP erfolgt in 
  wenigen einfachen Schritten. Füllen Sie einfach untenstehendes Formular aus und folgen Sie
  den weiteren Anweisungen.<br>
  <br><br>
  <b>Schritt 1</b>
</div>
<form method="post" action="signup2a.php">
  <div align="center"> 
    <table cellspacing="0" cellpadding="1" bgcolor="#000000">
      <tr> 
        <td> 
          <table cellspacing="0" cellpadding="6">
            <tr bgcolor="#FFFFFF"> 
              <td class=label>Name:</td>
              <td> 
                <input type="text" size=25 name="name">
              </td>
            </tr>
            <tr bgcolor="#FFFFFF"> 
              <td class=label>Vorname:</td>
              <td> 
                <input type="text" size=25 name="vorname">
              </td>
            </tr>
            <tr bgcolor="#FFFFFF"> 
              <td class=label> 
                <p>E-mail:</p>
              </td>
              <td> 
                <input type="password" size=25 name="email">
              </td>
            </tr>
            <tr bgcolor="#FFFFFF"> 
              <td class=label>Passwort:</td>
              <td> 
                <input type="password" size=25 name="password">
              </td>
            </tr>
            <tr bgcolor="#FFFFFF"> 
              <td class=label>Passwort wiederholen:</td>
              <td> 
                <input type="password" size=25 name="password2">
              </td>
            </tr>
	    <tr bgcolor="#FFFFFF">
	      <td class="label" colspan="2" align="center">Anmelden als</td>
	    </tr>
            <tr bgcolor="#FFFFFF" > 
              <td colspan="1" align="center"> 
                <input type="submit" name="signup" value="Übersetzer">
	      </td>
	      <td colspan="1" align="center"> 
                <input type="button" name="signup" value="Nutzer">
              </td>
            </tr>
          </table>
        </td>
      </tr>
    </table>
  </div>
</form>
<b>Hilfe:</b><br>
<i>Wie kann ich ein Passwort eingeben obwohl ich keins habe?</i><br><br>
An dieser Stelle w&auml;hlen Sie Ihr Passwort selber fest. Um sicher zu gehen, da&szlig; Sie sich nicht vertippt haben, m&uuml;ssen Sie das Passwort dann ein zweites Mal eingeben.<br>
<p align="center" class="footer"><a href="../main.php"> home</a>| <a href="../show.php">texts</a> 
  | <a href="../upload.php">upload</a> | <a href="../contact.php">contact</a> 
  | <a href="../help.php">help</a><br>
  <a href="login.php">login</a><br>
  <br>
  $Revision: 1.2 $ &copy; 2001 otmp-developer :)</p>
</body>
</html>
