<? /*
    * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/user/templates/signup_success.inc,v $ 
    * $Revision: 1.2 $
    * $Id: signup_success.inc,v 1.2 2001/11/29 20:09:39 hifix Exp $
    *
    */
?> 
<h3 align="left">Anmeldung f&uuml;r OTMP - erfolgreich</h3>
<p>Herzlichen Dank f&uuml;r Ihre Anmeldung. Sie k&ouml;nnen jetzt das System in 
  vollem Umfang benutzen.<br>
  Bitte notieren Sie sich Ihren Benutzernamen und das Passwort:<br>
</p>
<h4>Ihre ALogindaten</h4>
<b>Benutzername:</b> <?=$frm['username']?><br>
<b>Passwort:</b> <?=$frm['password']?>
<p>
Schreiben Sie sich diese Daten auf und bewahren Sie das Passwort an einem sicheren Ort auf. Geben Sie es unter keinen Umständen an dritte Personen weiter, auch nicht an einen Mitarbeiter von OTMP!
</p>
<p>
Sie k&ouml;nnen sich jetzt mit Ihrem Benutzernamen und Passwort hier <a href="login.php">einloggen</a>, oder zur <a href="<?=CFG->wwwroot?>/main.php">Hauptseite</a> gehen.
</p>
<p>Viel Spa&szlig; mit OTMP.</p>
