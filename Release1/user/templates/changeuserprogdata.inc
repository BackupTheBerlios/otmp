<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/templates/changeuserprogdata.inc,v $
 * $Revision: 1.2 $
 * $Id: changeuserprogdata.inc,v 1.2 2001/12/14 23:51:44 alexgn Exp $
 *
 * Signup Formular
 *
 * To Do:
 * - 
 * - 
 * - 
 */
?> 
<center>
<br>
Hier k&ouml;nnen Sie angeben, welche Programme Sie benutzen.<br>
Hinweise zu den einzelnen Felder stehen rechts daneben. 
<form method="post" action="<?=ME()?>">
  <table cellspacing="0" cellpadding="6" border="1">
    <tr> 
      <td align="left" bgcolor="#CCCCCC" colspan="3"> 
        <b>Angaben von Textverarbeitungsprogrammen</b>
      </td>
    </tr>
    <tr> 
      <td align="right" bgcolor="#DDDDDD"><b>Ihre Programme</b></td>
      <td> 
        <?php $programs = getProgramms($session['userid'],0); ?> 
      </td>
      <td rowspan="1">
        W&auml;hlen Sie hier alle Programme aus, die Ihnen zur Verf&uuml;gung stehen.<br>
	Dadurch k&ouml;nnen Sie sich dann nur noch die Texte anzeigen lassen, die Sie auch wirklich lesen k&ouml;nnen.<br>
      </td>
    </tr>
    <tr> 
      <td align="right" bgcolor="#DDDDDD"><b>Ihre Packer</b></td>
      <td> 
        <?php $programs = getProgramms($session['userid'],1); ?> 
      </td>
      <td rowspan="1">
        W&auml;hlen Sie hier alle Packer aus, die Ihnen zur Verf&uuml;gung stehen.<br>
	Dadurch werden Ihnen nur die Dateien angezeigt, die Sie auch entpacken k&ouml;nnen<br>
      </td>
    </tr>
    <tr> 
      <td align="center" colspan="3" bgcolor="#EEEEEE"> 
        <input type="submit" name="change" value="Daten &auml;ndern">
      </td>
    </tr>
  </table>
</form>
</center>
