<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/templates/changetranscap.inc,v $
 * $Revision: 1.2 $
 * $Id: changetranscap.inc,v 1.2 2002/01/09 13:57:08 alexgn Exp $
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

    
    <?php 
       $tmp2 = sql_getUserTransCapData($session['userid']);
       $j = 1;
       $valuestr = "";
       if(empty($tmp2)) {
          ?><tr><td colspan="4">Es wurden bislang keine Sprachangaben gemacht!</td></tr><?php
       } else {
          foreach($tmp2 as $v1) {
             $i = 0;
             foreach($v1 as $v2){
                if ($i == 0) {
                   $tmp3 = sql_getLangName($v2);
                   if (empty($tmp3)) {
                      ?><tr><td></td><?php
          	      $i = 1;
                   } else {
                      ?><tr><td>&nbsp;<?php echo $tmp3;?></td><?php
          	      $valuestr = "" .$v2. ":";
                      $i = 1;
                   }
                } elseif ($i == 1) {
                   $tmp3 = sql_getLangName($v2);
                   if (empty($tmp3)) {
                      ?><td></td><?php
                      $i = 2;
                   } else {
                      ?><td><?php echo $tmp3;?></td><?php
                      $valuestr = $valuestr . $v2 .":";
                      $i = 2;
                   }
                } else {
                   $tmp3 = sql_getKatName($v2);
                   if (empty($tmp3)) {
                      ?><td></td></tr><?php
                      $i = 0;
                   } else {
                      $valuestr = $valuestr . $v2;
                      ?><td><?php echo $tmp3;?></td>
                      <td align="center">
                         <input type="checkbox" name="transl<?php echo $j;?>" value="<?php echo $valuestr;?>">
                      </td>
                      </tr><?php
                      $i = 0;
                      $j = $j + 1;
                      $valuestr = "";
                   }
                }
            }
         }
      }
   ?>
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

    <!-- <?php $transposdata = getAllTransPoss(); ?> -->
  <?php  
     $alllang = sql_getAllLangs();
     $allcateg = sql_getAllCategories();

     $i = 0;
     ?><tr><?php
  
     if(empty($alllang)){
        ?><td colspan="2">No languages found in database!</td><?php
     } else {  
        while( $i < 2){
           if($i == 0) {
              ?><td><select name="fromlang" size="5"><?php
           } else {
              ?><td><select name="tolang" size="5"><?php
           }
           foreach($alllang as $v1) {
              $j = 0;
                 foreach($v1 as $v2) {
                    if($j == 0) {
                       ?><option value="<?php echo $v2;?>"><?php
                       $j = 1;   
                    } else {
                       echo $v2;?></option><?php
                    }
                 }
           }
        ?></select></td><?php
        $i = $i + 1;
     }
     if(empty($allcateg)){
        ?><td>No categories found in database!</td><?php
     } else {
        ?><td><select name="kat" size="5"><?php
        foreach($allcateg as $v1) {
           $j = 0;
           foreach($v1 as $v2) {
              if($j == 0) {
                 ?><option value="<?php echo $v2;?>"><?php
                 $j = 1;   
              } else {
                 echo $v2;?></option><?php
              }
           }
        }
        ?></select></td><?php
     }
  }
  ?></tr>
    <tr> 
      <td align="center" colspan="3" bgcolor="#EEEEEE"> 
        <input type="submit" name="change" value="Daten speichern">
      </td>
    </tr>
  </table>
</form>
</center>
