#
# Beispielsql für OTMP
# $Id: examples.sql,v 1.1 2001/12/09 19:36:06 hifix Exp $
# $Revision: 1.1 $
# 
# Diese Version wurde zuletzt mit Revision 1.11 der tables.sql getestet.
#
# Database : `otmp`
# Achtung: Diese BeispielSQL sollte nach einem Delete auf die Tabellen eingespielt werden!

#
# Dumping data for table `otmp_Adresse`
#


#
# Dumping data for table `otmp_Auftrag`
#

INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragStatus, AuftragDatum, AuftragNID, AuftragUEID, AuftragTransDatum, AuftragBisDatum) VALUES (4, 1, 6, 'open', '2001-12-01 23:52:48', 1, 0, '0000-00-00', '0000-00-00');
INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragStatus, AuftragDatum, AuftragNID, AuftragUEID, AuftragTransDatum, AuftragBisDatum) VALUES (2, 1, 4, 'open', '2001-12-01 23:52:48', 1, 0, '0000-00-00', '0000-00-00');
INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragStatus, AuftragDatum, AuftragNID, AuftragUEID, AuftragTransDatum, AuftragBisDatum) VALUES (1, 1, 3, 'work', '2001-12-01 23:52:48', 1, 3, '0000-00-00', '2001-12-08');
INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragStatus, AuftragDatum, AuftragNID, AuftragUEID, AuftragTransDatum, AuftragBisDatum) VALUES (3, 1, 5, 'open', '2001-12-01 23:52:48', 1, 0, '0000-00-00', '0000-00-00');
INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragStatus, AuftragDatum, AuftragNID, AuftragUEID, AuftragTransDatum, AuftragBisDatum) VALUES (5, 2, 7, 'finished', '2001-12-01 00:02:19', 3, 4, '2001-12-07', '0000-00-00');

#
# Dumping data for table `otmp_BankKonto`
#


#
# Dumping data for table `otmp_Filetype`
#


#
# Dumping data for table `otmp_Kategorie`
#


#
# Dumping data for table `otmp_Konto`
#


#
# Dumping data for table `otmp_Optionen`
#


#
# Dumping data for table `otmp_PerPro`
#


#
# Dumping data for table `otmp_Person`
#

INSERT INTO otmp_Person (PersonPID, PersonKennung, PersonName, PersonVorname, PersonSex, PersonEmail, PersonPassword, PersonStatus, PersonAdminlevel, PersonPunkte, PersonUebersetzer) VALUES (1, 'feb', 'Borchers', 'Felix', NULL, 'hifix@citygrid.de', '627364d648719f7b', NULL, 0, 0, 0);
INSERT INTO otmp_Person (PersonPID, PersonKennung, PersonName, PersonVorname, PersonSex, PersonEmail, PersonPassword, PersonStatus, PersonAdminlevel, PersonPunkte, PersonUebersetzer) VALUES (2, 'iszuzi', 'Szuzi', 'Indara', 'f', 'szui@yahoo.com', '76d9607f417308e4', NULL, 0, 0, 1);
INSERT INTO otmp_Person (PersonPID, PersonKennung, PersonName, PersonVorname, PersonSex, PersonEmail, PersonPassword, PersonStatus, PersonAdminlevel, PersonPunkte, PersonUebersetzer) VALUES (3, 'chrisi', 'Goldhorn', 'Chris', 'm', 'goldhorn@citygrid.de', '0c9cea580647a65f', NULL, 0, 0, 1);
INSERT INTO otmp_Person (PersonPID, PersonKennung, PersonName, PersonVorname, PersonSex, PersonEmail, PersonPassword, PersonStatus, PersonAdminlevel, PersonPunkte, PersonUebersetzer) VALUES (4, 'nagy', 'Nagy', 'Matthias Sylvester', 'm', 'darkpact@cs.tu-berlin.de', '5e97e40d4bcb93b6', NULL, 1, 0, 0);

#
# Dumping data for table `otmp_Programm`
#


#
# Dumping data for table `otmp_Sprache`
#


#
# Dumping data for table `otmp_SystemKonto`
#


#
# Dumping data for table `otmp_Text`
#

INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (1, 1, 'Biologischer Anbau von Tee in Angola', '', '2001-12-01 23:42:46', 0, 'finished', 4, 0, 0, 1);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (2, 2, 'Solidaritätsverhalten der DDR gegenüber Nicaragua', '', '2001-12-01 23:42:46', 1000, 'open', 1, 0, 0, 1);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (3, 1, 'Biologischer Anbau von Tee in Angola', '', '2001-12-04 23:42:46', 0, 'work', 5, 0, 0, 3);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (4, 1, 'Biologischer Anbau von Tee in Angola', '', '2001-12-01 23:42:46', 0, 'open', 2, 0, 0, 0);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (5, 1, 'Biologischer Anbau von Tee in Angola', '', '2001-12-01 23:42:46', 0, 'open', 1, 0, 0, 0);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (6, 1, 'Biologischer Anbau von Tee in Angola', '', '2001-12-01 23:42:46', 0, 'open', 3, 0, 0, 0);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (7, 2, 'Solidaritätsverhalten der DDR gegenüber Nicaragua', '', '2001-12-07 23:42:46', 875, 'finished', 1, 0, 0, 4);

#
# Dumping data for table `otmp_UebersetzerSprachen`
#





