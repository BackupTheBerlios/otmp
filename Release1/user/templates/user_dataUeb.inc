<tr>
<td>
   <table cellspacing="0" cellpadding="6" border="1">
    <tr> 
      <td align="left" bgcolor="#CCCCCC" colspan="3"> 
        <b>Angaben von Textverarbeitungsprogrammen</b>
        &nbsp;<a href="changeuserprogdata.php">&auml;ndern</a>
      </td>
    </tr>
    <tr> 
      <td align="right" bgcolor="#DDDDDD"><b>Ihre Programme</b></td>
      <td> 
        <?php $userprogdata = getUserProgrammData($session['userid']); ?>
      </td>
      <td>
        Dies sind die Programme, die Sie benutzen. Mit diesen Angaben, k&ouml;nnen Sie<br>
        sich nur die Dokumente anzeigen lassen, die Sie auch lesen k&ouml;nnen.
      </td>
    </tr>
   </table>
</td>
</tr>
<tr>
<td height="15">
</td>
</tr>
<tr>
<td> 
  <table cellspacing="0" cellpadding="6" border="1">
    <tr> 
      <td align="left" bgcolor="#CCCCCC" colspan="3"> 
        <b>Angaben zu &Uuml;bersetzerf&auml;higkeiten</b>
        &nbsp;<a href="changetranscap.php">&auml;ndern</a>
      </td>
    </tr>
    <tr> 
      <td align="left" colspan="3">Hier finden Sie Ihre &Uuml;bersetzerf&auml;higkeiten.</td>
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
	<?php $usertranscapdata = getUserTransCapData($session['userid']); ?>
  </table>
</td>
</tr>
</table>
</center>
