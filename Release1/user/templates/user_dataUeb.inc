<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/templates/user_dataUeb.inc,v $
 * $Revision: 1.5 $
 * $Id: user_dataUeb.inc,v 1.5 2001/12/19 00:16:44 hifix Exp $
 *
 * To Do:
 * - 
 * - 
 */
?> <br> 
<table cellspacing="0" cellpadding="6" border="1" width="90%">
  <tr> 
    <td align="left" bgcolor="#dddddd" colspan="3"> <b>Angaben von Textverarbeitungsprogrammen</b> 
      &nbsp;<a href="changeuserprogdata.php">&auml;ndern</a> </td>
  </tr>
</table>
<br>
<table cellspacing="0" cellpadding="4" border="0">
  <tr valign="top"> 
    <td align="right"><b>Ihre Programme: </b></td>
    <td> 
      <?php $userprogdata = getUserProgrammData($session['userid'],0); ?>
    </td>
    <td> Dies sind die Programme, die Sie benutzen. Mit diesen Angaben, k&ouml;nnen 
      Sie<br>
      sich nur die Dokumente anzeigen lassen, die Sie auch lesen k&ouml;nnen. 
    </td>
  </tr>
  <tr valign="top"> 
    <td align="right"><b>Ihre Packer: </b></td>
    <td> 
      <?php $userprogdata = getUserProgrammData($session['userid'],1); ?>
    </td>
    <td> Diese Packer Formate unterst&uuml;tzen Sie. </td>
  </tr>
</table>
<br>
<table cellspacing="0" cellpadding="6" border="1" width="90%">
  <tr> 
    <td align="left" bgcolor="#dddddd" colspan="3"> <b>Angaben zu &Uuml;bersetzerf&auml;higkeiten</b> 
      &nbsp;<a href="changetranscap.php">&auml;ndern</a> </td>
  </tr>
</table>
<? $tmp2 = getUserTransCapData($session['userid']); ?>
<? if(empty($tmp2)) { ?>
  Es wurden bislang keine Sprachangaben gemacht!
<? } else { ?>
<table cellspacing="0" cellpadding="6" border="1">

  <tr> 
    <td align="center" bgcolor="#DDDDDD"> <b>Von</b> </td>
    <td align="center" bgcolor="#DDDDDD"> <b>Nach</b> </td>
    <td align="center" bgcolor="#DDDDDD"> <b>Kategorie</b> </td>
  </tr>
<? foreach($tmp2 as $v1) { 
     $i = 0;
     foreach($v1 as $v2) {
         if ($i == 0) {
          $tmp3 = sql_getLangName($v2);
          if (empty($tmp3)) { ?>
<tr><td></td>
          <?
        } else { ?>
<tr><td><?=$tmp3?></td>
        <? $i = 1;
        }
         } elseif ($i == 1) {
        $tmp3 = sql_getLangName($v2);
        if (empty($tmp3)) { ?>
<td></td>
      <? } else { ?>
<td><?=$tmp3?></td>
     <?    $i = 2;
        }
         } else {
        $tmp3 = sql_getKatName($v2);
        if (empty($tmp3)) { ?>
<td></td></tr>
      <? } else { ?>
<td><?=$tmp3?></td></tr>
       <? $i = 0;
          }
         }
      }
    } ?>
</table>    
<? } ?>
