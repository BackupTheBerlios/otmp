<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/templates/user_data.inc,v $
 * $Revision: 1.1 $
 * $Id: user_data.inc,v 1.1 2001/12/04 20:55:42 alexgn Exp $
 *
 * Displays all of the users current data
 *
 * To Do:
 * -
 * -
 * -
 */
?> 
<center>
<br>
Hier sehen Sie alle Ihre angegebenen Daten. Diese k�nnen Sie (fast) nach
belieben �ndern.<br>
Hinweise zu den einzelnen Felder stehen rechts daneben. 
  <table cellspacing="0" cellpadding="6" border="1">
    <tr> 
      <td align="left" bgcolor="#CCCCCC" colspan="3"> 
        <b>Angaben zu Ihrer Person</b>
        &nbsp;<a href="changepersonaldata.php">&auml;ndern</a>
      </td>
    </tr>
    <tr> 
      <td align="right" bgcolor="#DDDDDD"><b>Ihr Name</b></td>
      <td> 
        <?=$tmp->Lastname;?>
      </td>
      <td rowspan="2">
        Dies ist der von Ihnen angegebene Vor- und Nachname. 
      </td>
    </tr>
    <tr> 
      <td align="right" bgcolor="#DDDDDD"><b>Ihr Vorname</b></td>
      <td> 
        <?=$tmp->Firstname?>
      </td>
    </tr>
    <tr> 
      <td align="right" bgcolor="#DDDDDD"><b>Ihre Email Adresse </b></td>
      <td> 
        <?=$tmp->Email?>
      </td>
      <td>
        Die von Ihnen angegebene Email Adresse.
      </td>
    </tr>
    <tr> 
      <td align="left" bgcolor="#CCCCCC" colspan="3"> 
        <b>Angaben f&uuml;r die Benutzung von OTMP</b>
	&nbsp;<a href="">&auml;ndern</a>
      </td>
    </tr>
    <tr> 
      <td align="right" bgcolor="#DDDDDD"><b>Benutzername</b></td>
      <td> 
        <?=$session['username']?>
      </td>
      <td>
	Der Name mit dem Sie sich einloggen. (Dieser kann nicht ge�ndert werden)
      </td>
    </tr>
    <tr> 
      <td align="right" bgcolor="#DDDDDD"><b>Passwort</b></td>
      <td> 
      </td>
      <td>
        Ihr Passwort wird hier nat�rlich nicht angezeigt. Sie k�nnen es allerdings �ndern.<br>
	Sollten Sie Ihr Passwort vergessen haben, dann klicken Sie bitte <a href="">hier</a>.
      </td>
    </tr>
    <tr> 
      <td align="left" bgcolor="#CCCCCC" colspan="3"> 
        <b>Angaben von Textverarbeitungsprogrammen</b>
        &nbsp;<a href="">&auml;ndern</a>
      </td>
    </tr>
    <tr> 
      <td align="right" bgcolor="#DDDDDD"><b>Ihre Programme</b></td>
      <td> 
        <?php
		$tmp2 = sql_getUserProgrammData(111); # Es muss unbedingt die userid aus der 
						      # Session genommen werden! Hier ist    
 						      # userid = 111 richtig ist session['userid']
		foreach($tmp2 as $v) {
			echo ($v. "<br>");
		}
	?>
      </td>
      <td>
        Dies sind die Programme, die Sie benutzen. Mit diesen Angaben, k&ouml;nnen Sie<br>
        sich nur die Dokumente anzeigen lassen, die Sie auch lesen k&ouml;nnen.
      </td>
    </tr>
  </table>
  <table border="0">
    <tr>
	<td height="15">
  	</td>
    </tr>
  </table>
  <table cellspacing="0" cellpadding="6" border="1">
	<tr> 
      <td align="left" bgcolor="#CCCCCC" colspan="3"> 
        <b>Angaben zu &Uuml;bersetzerf&auml;higkeiten</b>
        &nbsp;<a href="">&auml;ndern</a>
      </td>
    </tr>
    <tr> 
      <td align="left" colspan="3">Hier finden Sie Ihre �bersetzerf�higkeiten.</td>
    </tr>
    <tr>
      <td align="center" bgcolor="#DDDDDD"> 
        <b>Von</b>
      </td>
      <td align="center" bgcolor="#DDDDDD">
        <b>Nach</b> 
      </td>
      <td align="center" bgcolor="#DDDDDD">
        <b>Kategorien</b>
      </td>
    </tr>
    <tr>
      <td>
	<?php
		$tmp2 = sql_getUebersetzerVonSprache(111); # Es muss unbedingt die userid aus der 
						          # Session genommen werden! Hier ist    
 						          # userid = 111 richtig ist session['userid']
		 foreach($tmp2 as $v) {
			echo ($v. "<br>");
		}
 	?>
      </td>
      <td>
	<?php
		$tmp2 = sql_getUebersetzerNachSprache(111); # Es muss unbedingt die userid aus der 
						            # Session genommen werden! Hier ist    
 						            # userid = 111 richtig ist session['userid']
		 foreach($tmp2 as $v) {
			echo ($v. "<br>");
		}
 	?>
      </td>
      <td>
	<?php
		$tmp2 = sql_getUebersetzerKategorien(111); # Es muss unbedingt die userid aus der 
						           # Session genommen werden! Hier ist    
 						           # userid = 111 richtig ist session['userid']
		 foreach($tmp2 as $v) {
			echo ($v. "<br>");
		}
	?>
      </td>
    </tr>
  </table>	
</center>