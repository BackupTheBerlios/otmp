<? /*
    * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/Release1/Attic/contact.php,v $
    * $Revision: 1.1 $
    * $Id: contact.php,v 1.1 2001/12/02 08:23:05 ahlabadi Exp $
    */
?>
<!-- doc header -->
<?
$langs=isset($langs)?$langs:"us";
include ("all." . $langs);
include ("contact." . $langs);
$loginname=isset($loginname)?$loginname:$notlogedin;
$maindir = "";
include ("otmpheader.php");
?>
<!-- doc header end -->

<!-- doc body -->
<p>&Uuml;ber dieses Formular k&ouml;nnen sie dem Administrator eine Nachricht zukommen lassen.</p>
<form method="post" action="">
  <table>
    <tr><td>Ihre Emailadresse:</td><td><input type="text" name="email"></td></tr>
    <tr><td>Ihre Nachricht an uns:</td><td><textarea name="msg" cols="60" wrap="virtual" rows="7"></textarea></td></tr>
    <tr><td></td><td><input type="submit" name="send" value="Nachricht abschicken"></td></tr>
  </table>
</form>
<p>Oder schreiben sie direkt eine Email an: <a href="mailto:hifix@berlios.de">hifix@berlios.de</a></p>
<!-- doc body end -->

<!-- doc footer -->
<?
$userdir = "user/";
$docsdir = "docs/";
$helpdir = "help/";
include ("otmpfooter.php");
?>
<!-- doc footer end -->
