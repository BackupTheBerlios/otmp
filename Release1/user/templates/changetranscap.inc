<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/templates/changetranscap.inc,v $
 * $Revision: 1.1 $
 * $Id: changetranscap.inc,v 1.1 2001/12/09 23:32:50 alexgn Exp $
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
<? if (isset($errors)) { ?> 
<p class="warning">Es ist ein Fehler aufgetreten. Bitte überprüfen Sie die markierten 
  Felder bitte nochmals.</p>
<? } else { ?> Hier k&ouml;nnen Sie Ihre &Uuml;bersetzer F&auml;higkeiten einstellen, bzw. anpassen.<br>
Hinweise zu den einzelnen Felder stehen rechts daneben. <? } ?> 
<form method="post" action="changetranscap.php?delete=1">
  <table cellspacing="0" cellpadding="6" border="1">
    <tr> 
      <td align="left" bgcolor="#CCCCCC" colspan="4"> 
        <b>Ihre bisherigen Angaben</b>
      </td>
    </tr>
    <tr>
      <td align="center" bgcolor="#DDDDDD"> <b>Von</b>
      </td>
      <td align="center" bgcolor="#DDDDDD"> <b>Nach</b> 
      </td>
      <td align="center" bgcolor="#DDDDDD"> <b>Kategorie</b>
      </td>
      <td align="center" bgcolor="#DDDDDD"> <b>L&ouml;schen</b>
      </td>
    </tr>

    <?php $usertranscapdata = getUserTransCapData($session['userid']); ?>

     <tr> 
      <td align="center" colspan="2" bgcolor="#EEEEEE"> 
        <input type="submit" name="change" value="Daten l&ouml;schen">
      </td>
      <td colspan="2">Alle Eintr&auml;ge die Sie rechts markieren werden gelöscht!
      </td>
    </tr>
  </table>
</form>
    	
<table border="0">
<tr><td heigth="15"></td></tr>
</table>

<form method="post" action="changetranscap.php?delete=0">
  <table cellspacing="0" cellpadding="6" border="1">
    <tr> 
      <td align="left" bgcolor="#CCCCCC" colspan="3"> 
        <b>Neue Angaben</b>
      </td>
    </tr>
    <tr>
      <td align="center" <?=isset($errors->fromlang)?'class="warning"':''?> bgcolor="#DDDDDD"><b>Von</b>
      </td>
      <td align="center" <?=isset($errors->tolang)?'class="warning"':''?>bgcolor="#DDDDDD"><b>Nach</b> 
      </td>
      <td align="center" <?=isset($errors->kat)?'class="warning"':''?> bgcolor="#DDDDDD"> <b>Kategorie</b>
      </td>
    </tr>

    <?php $transposdata = getAllTransPoss(); ?>

<!-- 
    <tr> 
      <td align="right" <?=isset($errors->lastname)?'class="warning"':''?> bgcolor="#DDDDDD"><b>Ihr Name</b></td>
      <td> 
        <input type="text" size="40" name="lastname" value="<?=$tmp->Lastname;?>">
      </td>
      <td rowspan="2">
        Hier können Sie Ihren Namen ändern! 
      </td>
    </tr>
    <tr> 
      <td align="right" <?=isset($errors->firstname)?'class="warning"':''?> bgcolor="#DDDDDD"><b>Ihr Vorname</b></td>
      <td> 
        <input type="text" size="40" name="firstname" value="<?=$tmp->Firstname;?>"
      </td>
    </tr>
    <tr> 
      <td align="right" <?=isset($errors->email)?'class="warning"':''?> bgcolor="#DDDDDD"><b>Ihre Email Adresse </b></td>
      <td> 
        <input type="text" size="40" name="email" value="<?=$tmp->Email;?>">
      </td>
      <td>
        Hier k&ouml;nnen Sie Ihre Email Adresse &auml;ndern.<br>
        Haben Sie keine email-Adresse, dann klicken Sie bitte <a href="%20">hier</a>.
      </td>
    </tr> -->


    <tr> 
      <td align="center" colspan="3" bgcolor="#EEEEEE"> 
        <input type="submit" name="change" value="Daten speichern">
      </td>
    </tr>
  </table>
</form>
</center>
