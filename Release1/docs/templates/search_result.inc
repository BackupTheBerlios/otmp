<? /*
    * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/templates/search_result.inc,v $ 
    * $Revision: 1.1 $
    * $Id: search_result.inc,v 1.1 2001/12/16 21:58:14 alexgn Exp $
    *
    */
?> 

<h3 align="left">Ihr Suchergebnis:</h3>
<center>
<table border="1">
  <?php if(empty($status)){ ?>
  <tr>
     <td>
         Leider hat Ihre Suche keine Treffer erzielt!
     </td>
  </tr>
  <?php } else { ?>
  <?php  ?>
     <tr>
        <td colspan="5"><?php echo ("Es wurden<b> ". count($status) ."</b> Eintr&auml;ge gefunden!"); ?>
        </td>
     </tr>
     <tr>
	<td><b>Titel</b>
	</td>
	<td><b>Sprache</b>
	</td>
	<td><b>Kategorie</b>
	</td>
	<td><b>Datum</b>
	</td>
	<td><b>Autor</b>
	</td>
     </tr>
     <?php foreach($status as $v1) { ?>
     <tr>
        <td>
	   <?php if(!empty($v1->title)) { echo $v1->title;}  ?>
        </td>
	<td>
	   <?php if(!empty($v1->language)) { echo $v1->language;} ?>
	</td>
	<td>
	   <?php if(!empty($v1->category)) { echo $v1->category;}  ?>
	</td>
	<td>
	   <?php if(!empty($v1->date)) { echo $v1->date;} ?>
	</td>
	<td>
	   <?php if(!empty($v1->author)) { echo $v1->author;} ?>
	</td>
     </tr>
     <?php } ?>
  <?php } ?>
</table>
</center>
<p>
Hier k&ouml;nnen Sie erneut <a href="search.php?noerror=1">suchen</a>. 
Hier gelangen Sie zur&uuml;ck auf die <a href="<?=$CFG->wwwroot?>/main.php">Hauptseite</a>.
</p>
<p>Weiterhin viel Spa&szlig; mit OTMP.</p>
