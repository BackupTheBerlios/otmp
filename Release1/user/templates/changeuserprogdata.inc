<?
/*
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/templates/changeuserprogdata.inc,v $
 * $Revision: 1.3 $
 * $Id: changeuserprogdata.inc,v 1.3 2002/01/09 13:58:25 alexgn Exp $
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
	<?php $userprogramms = sql_getUserProgrammData2($session['userid']);
	      $programms = sql_getProgramms(0);
  	      $i = 0;
  	      if (empty($programms)) {
  	      /* In case no programms can be found in the database */
  	         ?>Leider keine Programme zur Auswahl!<?php
  	      } else {
     	         foreach($programms as $v1) {
      		    foreach($v1 as $v2){
        	       if ($i == 0) {
            		  ?><input type="checkbox" name="progs<?php echo $v2;?>" value="<?php echo $v2;?>"<?php
                          /* check wether user has programm */
                          if (empty($userprogramms)) {
                          } else {
                             foreach($userprogramms as $up) {
                                if ( $up == $v2) {
                                   ?>checked<?php
                 		   break;
                 		}
             		     }
           		  }
          		  ?>><?php
          		  $i = 1;
          		  } elseif($i == 1) {
          		     ?>&nbsp;<?php echo $v2;?>&nbsp;<?php
          		     $i = 2;
                          } else {
          		     echo $v2."\n";?><br><?php
          		     $i = 0;
        		  }
      	 	       }
  		  }
              }
      ?>
      </td>
      <td rowspan="1">
        W&auml;hlen Sie hier alle Programme aus, die Ihnen zur Verf&uuml;gung stehen.<br>
	Dadurch k&ouml;nnen Sie sich dann nur noch die Texte anzeigen lassen, die Sie auch wirklich lesen k&ouml;nnen.<br>
      </td>
    </tr>
    <tr> 
      <td align="right" bgcolor="#DDDDDD"><b>Ihre Packer</b></td>
      <td> 
	<?php $userprogramms = sql_getUserProgrammData2($session['userid']);
	      $programms = sql_getProgramms(1);
  	      $i = 0;
  	      if (empty($programms)) {
  	      /* In case no programms can be found in the database */
  	         ?>Leider keine Programme zur Auswahl!<?php
  	      } else {
     	         foreach($programms as $v1) {
      		    foreach($v1 as $v2){
        	       if ($i == 0) {
            		  ?><input type="checkbox" name="progs<?php echo $v2;?>" value="<?php echo $v2;?>"<?php
                          /* check wether user has programm */
                          if (empty($userprogramms)) {
                          } else {
                             foreach($userprogramms as $up) {
                                if ( $up == $v2) {
                                   ?>checked<?php
                 		   break;
                 		}
             		     }
           		  }
          		  ?>><?php
          		  $i = 1;
          		  } elseif($i == 1) {
          		     ?>&nbsp;<?php echo $v2;?>&nbsp;<?php
          		     $i = 2;
                          } else {
          		     echo $v2."\n";?><br><?php
          		     $i = 0;
        		  }
      	 	       }
  		  }
              }
      ?>
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
