#
# $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/setup/Attic/otmpdata.sql,v $
# $Revision: 1.1 $
# $Id: otmpdata.sql,v 1.1 2001/12/10 22:07:35 darkpact Exp $
#

#
# Dumping data for table `otmp_Sprache`
#

INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung) VALUES (1, 'Deutsch', 'de');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung) VALUES (2, 'English', 'en');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung) VALUES (3, 'Franz&ouml;sisch', 'fr');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung) VALUES (4, 'Spanisch', 'es');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung) VALUES (5, 'Chinesisch', 'ch');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung) VALUES (6, 'Hindi', 'hi');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung) VALUES (7, 'Portugisisch', 'po');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung) VALUES (8, 'Japanisch', 'jp');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung) VALUES (9, 'Vitnamesisch', 'vi');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung) VALUES (10, 'Türkisch', 'tu');

#
# Dumping data for table `otmp_Person`
#

INSERT INTO otmp_Person (PersonPID, PersonKennung, PersonName, PersonVorname, PersonSex, PersonEmail, PersonPassword, PersonStatus, PersonAdminlevel, PersonPunkte, PersonUebersetzer) VALUES (1, 'hifix', 'Borchers', 'Felix', NULL, 'fixbutte@localhost', '627364d648719f7b', NULL, 0, 0, 0);
INSERT INTO otmp_Person (PersonPID, PersonKennung, PersonName, PersonVorname, PersonSex, PersonEmail, PersonPassword, PersonStatus, PersonAdminlevel, PersonPunkte, PersonUebersetzer) VALUES (2, 'iszuzi', 'Szuzi', 'Indara', 'f', 'szui@yahoo.com', '76d9607f417308e4', NULL, 0, 0, 1);
INSERT INTO otmp_Person (PersonPID, PersonKennung, PersonName, PersonVorname, PersonSex, PersonEmail, PersonPassword, PersonStatus, PersonAdminlevel, PersonPunkte, PersonUebersetzer) VALUES (3, 'chrisi', 'Goldhorn', 'Chris', 'm', 'goldhorn@citygrid.de', '0c9cea580647a65f', NULL, 0, 0, 1);
INSERT INTO otmp_Person (PersonPID, PersonKennung, PersonName, PersonVorname, PersonSex, PersonEmail, PersonPassword, PersonStatus, PersonAdminlevel, PersonPunkte, PersonUebersetzer) VALUES (4, 'hachen', 'Nagy', 'Matthias Sylvester', 'm', 'darkpact@cs.tu-berlin.de', '5e97e40d4bcb93b6', NULL, 1, 0, 0);

#
# Dumping data for table `otmp_Text`
#

INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (1, 1, 'Biologischer Anbau von Tee in Angola', '', '2001-12-01 23:42:46', 0, 'finished', 4, 0, 0, 1);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (2, 2, 'Solidarit&auml;tsverhalten der DDR gegenüber Nicaragua', '', '2001-12-01 23:42:46', 1000, 'finished', 1, 0, 0, 1);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (3, 1, 'Biologischer Anbau von Tee in Angola', '', '2001-12-04 23:42:46', 0, 'work', 5, 0, 0, 3);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (4, 1, 'Biologischer Anbau von Tee in Angola', '', '2001-12-01 23:42:46', 0, 'open', 2, 0, 0, 0);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (5, 1, 'Biologischer Anbau von Tee in Angola', '', '2001-12-01 23:42:46', 0, 'open', 1, 0, 0, 0);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (6, 1, 'Biologischer Anbau von Tee in Angola', '', '2001-12-01 23:42:46', 0, 'open', 3, 0, 0, 0);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (7, 2, 'Solidarit&auml;tsverhalten der DDR gegenüber Nicaragua', '', '2001-12-07 23:42:46', 875, 'open', 1, 0, 0, 0);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (8, 1, 'Biologischer Anbau von Tee in Angola', '', '2001-12-08 23:42:46', 0, 'finished', 6, 0, 0, 4);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (9, 9, 'Universal DCI Tournament Rules', '', '2001-12-08 03:42:46', 0, 'finished', 2, 0, 0, 4);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (10, 9, 'Allgemeine DCI-Veranstaltungsregeln', '', '2001-12-09 03:42:46', 0, 'finished', 1, 0, 0, 4);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (11, 9, 'Universal DCI Tournament Rules', '', '2001-12-10 03:42:46', 0, 'work', 3, 0, 0, 1);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (12, 9, 'Universal DCI Tournament Rules', '', '2001-12-10 03:42:46', 0, 'work', 4, 0, 0, 1);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (13, 9, 'Universal DCI Tournament Rules', '', '2001-12-11 03:42:46', 0, 'open', 6, 0, 0, 0);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (14, 9, 'Universal DCI Tournament Rules', '', '2001-12-12 03:42:46', 0, 'open', 9, 0, 0, 0);


#
# Dumping data for table `otmp_Auftrag`
#

INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragStatus, AuftragDatum, AuftragNID, AuftragUEID, AuftragTransDatum, AuftragBisDatum) VALUES (1, 1, 3, 'work', '2001-12-01 23:52:48', 1, 3, '0000-00-00', '2001-12-08');
INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragStatus, AuftragDatum, AuftragNID, AuftragUEID, AuftragTransDatum, AuftragBisDatum) VALUES (2, 1, 4, 'open', '2001-12-01 23:52:48', 1, 0, '0000-00-00', '0000-00-00');
INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragStatus, AuftragDatum, AuftragNID, AuftragUEID, AuftragTransDatum, AuftragBisDatum) VALUES (3, 1, 5, 'open', '2001-12-01 23:52:48', 1, 0, '0000-00-00', '0000-00-00');
INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragStatus, AuftragDatum, AuftragNID, AuftragUEID, AuftragTransDatum, AuftragBisDatum) VALUES (4, 1, 6, 'open', '2001-12-01 23:52:48', 1, 0, '0000-00-00', '0000-00-00');
INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragStatus, AuftragDatum, AuftragNID, AuftragUEID, AuftragTransDatum, AuftragBisDatum) VALUES (5, 2, 7, 'open', '2001-12-01 00:02:19', 3, 4, '2001-12-07', '0000-00-00');
INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragStatus, AuftragDatum, AuftragNID, AuftragUEID, AuftragTransDatum, AuftragBisDatum) VALUES (6, 1, 8, 'finished', '2001-12-01 00:02:19', 3, 4, '2001-12-07', '0000-00-00');
INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragStatus, AuftragDatum, AuftragNID, AuftragUEID, AuftragTransDatum, AuftragBisDatum) VALUES (7, 9, 10, 'finished', '2001-12-09 00:02:19', 4, 4, '2001-12-07', '0000-00-00');
INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragStatus, AuftragDatum, AuftragNID, AuftragUEID, AuftragTransDatum, AuftragBisDatum) VALUES (8, 9, 11, 'work', '2001-12-09 00:02:19', 4, 1, '2001-12-07', '0000-00-00');
INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragStatus, AuftragDatum, AuftragNID, AuftragUEID, AuftragTransDatum, AuftragBisDatum) VALUES (9, 9, 12, 'work', '2001-12-09 00:02:19', 4, 1, '2001-12-07', '0000-00-00');
INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragStatus, AuftragDatum, AuftragNID, AuftragUEID, AuftragTransDatum, AuftragBisDatum) VALUES (10, 9, 13, 'open', '2001-12-09 00:02:19', 4, 0, '2001-12-07', '0000-00-00');
INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragStatus, AuftragDatum, AuftragNID, AuftragUEID, AuftragTransDatum, AuftragBisDatum) VALUES (11, 9, 14, 'open', '2001-12-09 00:02:19', 4, 0, '2001-12-07', '0000-00-00');
