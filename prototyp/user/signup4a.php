<? /*
    * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/prototyp/user/signup4a.php,v $ 
    * $Revision: 1.2 $
    * $Id: signup4a.php,v 1.2 2001/11/21 10:04:46 hifix Exp $
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
<h3 align="left">Anmeldung als &Uuml;bersetzer</h3>
<div align="center"><br>
  Im vierten und letzten Schritt der Anmeldung m&uuml;ssen Sie angeben welche Filetypen Sie lesen können bzw. welche Textverarbeitungsprogramme Sie verwenden.<br>
  <br><br>
  <b>Schritt 4</b>
</div>
<form method="post" action="signupcheck.php">
  <div align="center"> 
    <table cellspacing="0" cellpadding="1" bgcolor="#000000">
      <tr> 
        <td> 
          <table cellspacing="0" cellpadding="6">
            <tr bgcolor="#FFFFFF"> 
              <td class="label" colspan="1" align="center">Folgende Ressourcen stehen Ihnen zur Verfügung:</td>
            </tr>
	    <tr bgcolor="#FFFFFF"> 
              <td class=label colspan="1"><b>Programme</b>
	      </td>
            </tr>
            <tr bgcolor="#FFFFFF"> 
              <td class=label>
		<p>
		  <select name="programme" size="5" multiple>
		    <option>StarOffice</option>
		    <option>StarWriter</option>
		    <option>KOffice</option>
		    <option>KWord</option>
		    <option>WordPerfect</option>
		    <option>Gnome Office</option>
                    <option>AbiWord</option>
		    <option>OpenOffice</option>
		    <option>OpenWriter</option>
		    <option>MS Office</option>
		    <option>MS Word</option>
		    <option>Emacs</option>
		    <option>WordPad</option>
		    <option>Applix Word</option>
		    <option>Sonstige</option>	
		  </select>
		</p>
	      </td>      
            </tr>
<!--
	     <tr bgcolor="#FFFFFF"> 
              <td class=label colspan="1"><b>Formate</b>
	      </td>
            </tr>
            <tr bgcolor="#FFFFFF"> 
              <td class=label>
		<p>
		  <select name="formate" size="5" multiple>
		    <option>HTML</option>
		    <option>RTF</option>
		    <option>ASCII Text</option>
		    <option>WordPerfect 5.x</option>
		    <option>WordPerfect 6.x</option>
		    <option>WordPerfect 7.x</option>
		    <option>WordPerfect 9.x</option>
		    <option>WordPerfect 10.x</option>
		    <option>Sonstige</option>	
		  </select>
		</p>
	      </td> 
            </tr>
-->
	    <tr bgcolor="#FFFFFF"> 
              <td class=label colspan="1"><b>Packer</b>
	      </td>	     
            </tr>
            <tr bgcolor="#FFFFFF"> 
              <td class=label>
		<p>
		  <select name="packer" size="3" multiple>
		    <option>Tar</option>	
                    <option>Zip</option>	
                    <option>Rar</option>
		    <option>Ace</option>
		    <option>Sonstige</option>		
		    <option>Keinen</option>	
		  </select>
		</p>
	      </td>    
            </tr>	   
            <tr bgcolor="#FFFFFF" > 
              <td colspan="1" align="center"> 
                <input type="submit" name="signup" value="Weiter">
              </td>
            </tr>
          </table>
        </td>
      </tr>
    </table>
  </div>
</form>
<b>Hilfe:</b><br>
<i>Wie kann ich mehrere Programme, Formate, Packer  auswählen?</i><br><br>
Dies ist leider von Browser zu Browser unterschiedlich.<br>
 Bei Netscape 4.x wählen Sie mit der Maus einfach weitere Sprachen aus. Klicken Sie ein zweites Mal auf einen selektierten Eintrag, dann ist er nicht mehr selektiert.<br>
Beim IE müssen Sie die <KBD>Schift</KBD> Taste gedrückt halten und dann mit der Maus weitere Elemente auswählen.<br><br>
<i>Ich wei&szlig; nicht was ein Packer ist.</i><br><br>
Packer sind ...<br>
<p align="center" class="footer"><a href="../main.php"> home</a>| <a href="../show.php">texts</a> 
  | <a href="../upload.php">upload</a> | <a href="../contact.php">contact</a> 
  | <a href="../help.php">help</a><br>
  <a href="login.php">login</a><br>
  <br>
  $Revision: 1.2 $ &copy; 2001 otmp-developer :)</p>
</body>
</html>
