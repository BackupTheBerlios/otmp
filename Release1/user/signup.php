<? /*
    * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/signup.php,v $
    * $Revision: 1.1 $
    * $Id: signup.php,v 1.1 2001/11/23 08:03:04 darkpact Exp $
    */
?>
<!-- doc header -->
<?
$langs=isset($langs)?$langs:"us";
include ("../all." . $langs);
include ("signup." . $langs);
$loginname=isset($loginname)?$loginname:$notlogedin;
$maindir = "../";
include ("../otmpheader.php");
?>
<!-- doc header end -->

<!-- doc body -->
<h3 align="left"><? echo $signuphead; ?></h3>
<p><? echo $signuptext; ?>
Egal ob Sie sich als Übersetzer oder als Nutzer anmelden, die Anmeldung beim OTMP erfolgt in
wenigen einfachen Schritten. Füllen Sie einfach untenstehendes Formular aus und folgen Sie
den weiteren Anweisungen.</p>

<form method="post" action="signup2a.php">
  <table cellspacing="0" cellpadding="6">
    <tr>
      <td align="right"><? echo $signupname; ?></td>
      <td><input type="text" size=60 name="name"></td>
    </tr>
    <tr>
      <td align="right"><? echo $signupfirstname; ?></td>
      <td><input type="text" size=60 name="vorname"></td>
    </tr>
    <tr>
      <td align="right"><? echo $signupemail; ?></td>
      <td><input type="password" size=60 name="email"></td>
    </tr>
    <tr>
      <td align="right"><? echo $signuppasswd; ?></td>
      <td><input type="password" size=60 name="password"></td>
    </tr>
    <tr>
      <td align="right"><? echo $signuppasswdrepeat; ?></td>
      <td><input type="password" size=60 name="password2"></td>
    </tr>
  </table>
</form>

<h4>Hilfe:</h4>
<p><i>Ich habe keine Emailadresse, kann ich mich trotzdem anmelden?</i><br><br>
Sicher. Um den Dienst von OTMP nutzen zu k&ouml;nnen, m&uuml;ssen sie keine Emailadresse haben.</p>
<p><i>Wie kann ich ein Passwort eingeben obwohl ich keins habe?</i><br><br>
An dieser Stelle w&auml;hlen Sie Ihr Passwort selber fest. Um sicher zu gehen, da&szlig; Sie sich nicht vertippt haben, m&uuml;ssen Sie das Passwort dann ein zweites Mal eingeben.</p>
<!-- doc body end -->

<!-- doc footer -->
<?
$userdir = "";
$docsdir = "../docs/";
$helpdir = "../help/";
include ("../otmpfooter.php");
?>
<!-- doc footer end -->
