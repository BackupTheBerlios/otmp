<? /*
    * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/templates/search_result.inc,v $ 
    * $Revision: 1.3 $
    * $Id: search_result.inc,v 1.3 2001/12/18 23:29:22 hifix Exp $
    *
    */
?> 

<h3 align="left">Ihr Suchergebnis:</h3>
<center>
  <table border="1" width="90%" cellpadding="2" cellspacing="0">
    <?php if(empty($status)){ ?>
    <tr>
     <td colspan="5">
         Leider hat Ihre Suche keine Treffer erzielt!
     </td>
  </tr>
  <?php } else { ?>
  <?php  ?>
     <tr>
        <td colspan="5"><? echo ("Es wurden<b> ". count($status) ."</b> Eintr&auml;ge gefunden!"); ?>
        </td>
     </tr>
     
    <tr bgcolor="#eeeeee"> 
      <td><b>Titel</b> </td>
	  <td><b>Sprache</b> </td>
	  <td><b>Kategorie</b> </td>
	  <td><b>Datum</b> </td>
	  <td><b>Autor</b> </td>
     </tr>
     <? foreach($status as $v1) { ?>
     <tr>
        <td>
	   <? if(empty($v1->title)) { ?>
	   <br>
	   <? } else { ?>
	    <a href="document.php?otid=<?=$v1->textOTID?$v1->textOTID:$v1->textID?>"><?=$v1->title ?></a>
	   <? } ?>
        </td>
	<td>
	   <? if(empty($v1->language)) { ?>
	   <br>
	   <? } else { ?>
	    <?=$v1->language?> 
	   <? } ?>
	</td>
	<td>
	   <? if(empty($v1->category)) { ?>
	   -
	   <? } else { ?> 
	      <?=$v1->category?> 
	   <? } ?>
	</td>
	<td>
	   <? if(empty($v1->date)) { ?>
	    <br>
	   <? } else { ?> 
	     <?=$v1->date?> 
	   <? } ?>
	</td>
	  <td> 
        <? if(empty($v1->author)) { ?>
        <i>offen</i> 
        <? } else { ?>
        <?=$v1->author?>
        <? } ?>
      </td>
     </tr>
     <? } ?>
  <? } ?>
</table>
</center>
<p>
Hier k&ouml;nnen Sie erneut <a href="search.php?noerror=1">suchen</a>. 
Hier gelangen Sie zur&uuml;ck auf die <a href="<?=$CFG->wwwroot?>/main.php">Hauptseite</a>.
</p>
<p>Weiterhin viel Spa&szlig; mit OTMP.</p>
