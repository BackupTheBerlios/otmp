<? /*
    * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/prototyp/user/signup3a.php,v $ 
    * $Revision: 1.1 $
    * $Id: signup3a.php,v 1.1 2001/11/20 12:53:14 alexgn Exp $
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
  Im dritten Schritt der Anmeldung m&uuml;ssen Sie angeben in welchen Kategorien Sie Übersetzungsarbeit leisten können.<br>
  <br><br>
  <b>Schritt 3</b>
</div>
<form method="post" action="signup4a.php">
  <div align="center"> 
    <table cellspacing="0" cellpadding="1" bgcolor="#000000">
      <tr> 
        <td> 
          <table cellspacing="0" cellpadding="6">
            <tr bgcolor="#FFFFFF"> 
              <td class="label" colspan="2" align="center">Sie können und wollen in folgenden Kategorien übersetzen.</td>
            </tr>
	    <tr bgcolor="#FFFFFF"> 
              <td class=label colspan="2"><b>Wissenschaftliche Texte</b>
	      </td>
            </tr>
	    <tr bgcolor="#FFFFFF"> 
              <td class=label colspan="1">Geisteswissenschaften
	      </td>
	      <td class=label colspan="1">Ingenieurwissenschaften
	      </td>
            </tr>
            <tr bgcolor="#FFFFFF"> 
              <td class=label>
		<p>
		  <select name="geisteswissenschaften" size="3" multiple>
		    <option>&Auml;gyptologie</option>
		    <option>Geschichte</option>
		    <option>Japanologie</option>
		    <option>Philosophie</option>
		    <option>Slawistik</option>
		    <option>Anglistik</option>
		    <option>Ethnologie</option>
		    <option>Judaistik</option>
		    <option>Kunstwissenschaften</option>
		    <option>Medienwissenschaften</option>
		    <option>Romanistik</option>
		    <option>Theaterwissenschaften</option>
		    <option>Arch&auml;ologie</option>
		    <option>Germanistik</option>
		    <option>Linguistik</a>
		    <option>Musikwissenschaften</option>
		    <option>Sinologie</option>
		    <option>Theologie</option>
		    <option>Sonstige Geisteswissenschaften</option>	
		  </select>
		</p>
	      </td>
	      <td class=label>
		<p>
		  <select name="ingenieurwissenschaften" size="3" multiple>
		    <option>Architektur</option>
		    <option>Bergbau</option>
		    <option>Luft & Raumfahrttechnik</option>
		    <option>Raumplanung & St&auml;dtebau</option>
		    <option>Verkehrswesen</option>
		    <option>Werkstofftechnik</option>
		    <option>Bionik</option>
		    <option>Elektrotechnik</option>
		    <option>Informatik</option>
		    <option>Land- & Forstwirtschaft</option>
		    <option>Maschinenbau</option>
		    <option>Schiffstechnik</option>
		    <option>Bauingenieurwesen</option>
		    <option>Energietechnik</option>
		    <option>Nachrichtentechnik</a>
		    <option>Verfahrenstechnik</option>
		    <option>Sonstige Ingenieurwissenschaften</option>
		  </select>
		</p>
	      </td>      
            </tr>
	     <tr bgcolor="#FFFFFF"> 
              <td class=label colspan="1">Naturwissenschaften
	      </td>
	      <td class=label colspan="1">Sozialwissenschaften
	      </td>
            </tr>
            <tr bgcolor="#FFFFFF"> 
              <td class=label>
		<p>
		  <select name="naturwissenschaften" size="3" multiple>
		    <option>Chemie</option>
		    <option>Mathematik</option>
		    <option>Astronomie</option>
		    <option>Lebensmittelwissenschaften</option>
		    <option>Pharmazie</option>
		    <option>Biologie</option>
		    <option>Physik</option>
		    <option>Sonstige Naturwissenschaften</option>	
		  </select>
		</p>
	      </td>
	      <td class=label>
		<p>
		  <select name="sozialwissenschaften" size="3" multiple>
		    <option>Arbeitswissenschaft</option>
		    <option>Politikwissenschaft</option>
		    <option>Soziologie</option>
		    <option>Kommunikationswissenschaft</option>
		    <option>Psychologie</option>
		    <option>Sportwissenschaft</option>
		    <option>P&auml;dagogik</option>
		    <option>Statistik</option>
		    <option>Sonstige Sozialwissenschaften</option>
		  </select>
		</p>
	      </td>      
            </tr>
	    <tr bgcolor="#FFFFFF"> 
              <td class=label colspan="1">Medizin
	      </td>
	      <td class=label colspan="1">Rechtswissenschaften
	      </td>
            </tr>
            <tr bgcolor="#FFFFFF"> 
              <td class=label>
		<p>
		  <select name="medizin" size="1" multiple>
		    <option>Medizin</option>	
		  </select>
		</p>
	      </td>
	      <td class=label>
		<p>
		  <select name="rechtswissenschaften" size="1" multiple>
		    <option>Rechtswissenschaften</option>
		  </select>
		</p>
	      </td>      
            </tr>
	    <tr bgcolor="#FFFFFF"> 
              <td class=label colspan="1">Wirschaftswissenschaften
	      </td>
	      <td class=label colspan="1">Sonstige wissenschaftliche Texte
	      </td>
            </tr>
            <tr bgcolor="#FFFFFF"> 
              <td class=label>
		<p>
		  <select name="wirtschaftwissenschaften" size="3">
		    <option>Betriebswirtschaftslehre</option>
		    <option>Volkswirtschaftslehre</option>
		    <option>Sonstige Wirtschaftswissenschaften</option>	
		  </select>
		</p>
	      </td>
	      <td class=label>
		<p>
		  <select name="sonstigewissenschaft" size="1" multiple>
		    <option>Sonstige Wissenschaftliche Texte</option>
		  </select>
		</p>
	      </td>      
            </tr>
	    <tr bgcolor="#FFFFFF"> 
              <td class=label colspan="2"><b>Nicht-Wissenschaftliche Texte</b>
	      </td>
            </tr>	   
	    <tr bgcolor="#FFFFFF"> 
              <td class=label colspan="2">Nicht-Wissenschaftliche Texte
	      </td>
            </tr>
	    <tr bgcolor="#FFFFFF">
	      <td class=label colspan="2">
		<p>
		  <select name="nichtwissenschaft" size="1" multiple>
		    <option>Nicht Wissenschaftliche Texte</option>
		  </select>
		</p>
	      </td>      
            </tr>
            <tr bgcolor="#FFFFFF" > 
              <td colspan="2" align="center"> 
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
<i>Wie kann ich mehrere Kategorien auswählen?</i><br><br>
Dies ist leider von Browser zu Browser unterschiedlich.<br>
 Bei Netscape 4.x wählen Sie mit der Maus einfach weitere Sprachen aus. Klicken Sie ein zweites Mal auf einen selektierten Eintrag, dann ist er nicht mehr selektiert.<br>
Beim IE müssen Sie die <KBD>Schift</KBD> Taste gedrückt halten und dann mit der Maus weitere Elemente auswählen.<br>
<p align="center" class="footer"><a href="../main.php"> home</a>| <a href="../show.php">texts</a> 
  | <a href="../upload.php">upload</a> | <a href="../contact.php">contact</a> 
  | <a href="../help.php">help</a><br>
  <a href="login.php">login</a><br>
  <br>
  $Revision: 1.1 $ &copy; 2001 otmp-developer :)</p>
</body>
</html>
