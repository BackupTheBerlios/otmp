<?
/*
 * Show Dokument Info (additional)
 *
 * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/docs/templates/document_langdetails.inc,v $
 * $Revision: 1.1 $
 * $Id: document_langdetails.inc,v 1.1 2001/12/16 22:25:17 hifix Exp $
 *
 * To Do:
 * - LOcalisation
 *
 * Variables:
 * id   - DokumentID to Show
 */
 
 $d = getDocuments4BaseID($id); 

?>
<!-- BEGIN LAnguages, Tasks for the Dokument -->
<table border="0" cellspacing="4" cellpadding="0" bgcolor="#FFFFFF">
  <tr> 
    <td><b>Dieses Dokument gibt es in:</b></td>
    <td valign="top"> 
      <? foreach($d as $_d) {
     if($_d->status == "finished") { ?>
      &nbsp;<a href=""><?=$_d->language?>
      </a> 
      <? }
   } ?>
    </td>
  </tr>
  <tr> 
    <td colspan="2"><font size="-1">(zum downloaden auf gew&uuml;nschte Sprache 
      klicken)</font></td>
  </tr>
  <tr> 
    <td colspan="2" bgcolor="#eeeeee"><b>&Uuml;bersetzungen</b></td>
  </tr>
  <tr> 
    <td> - in Arbeit</td>
    <td> 
      <? foreach($d as $_d) {
     if($_d->status == "in work") { ?>
      &nbsp;<a href=""><?=$_d->language?>
      </a> 
      <? }
   } ?>
    </td>
  </tr>
  <tr> 
    <td>- offen<br>
    </td>
    <td valign="top"> 
      <? foreach($d as $_d) {
     if($_d->status == "open") { ?>
      &nbsp;<a href=""><?=$_d->language?>
      </a> 
      <? }
   } ?>
    </td>
  </tr>
  <tr> 
    <td colspan="2"><font size="-1">(zum &Uuml;bersetzen, klicken Sie auf die 
      Sprache)</font></td>
  </tr>
</table>
<!-- END -->
