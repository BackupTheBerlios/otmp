

# phpMyAdmin MySQL-Dump
# version 2.2.2
# http://phpwizard.net/phpMyAdmin/
# http://phpmyadmin.sourceforge.net/ (download page)
#
# Host: db.berlios.de
# Erstellungszeit: 11. Dez 2001 um 14:03
# Server Version: 3.23.37
# PHP Version: 3.0.16
# Datenbank : `otmp`

#
# Daten für Tabelle `otmp_Adresse`
#
#
# Daten für Tabelle `otmp_Auftrag`
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

#
# Daten für Tabelle `otmp_BankKonto`
#


#
# Daten für Tabelle `otmp_Filetype`
#

INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (1, 1, 'html', '3');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (2, 1, 'txt', '1');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (3, 1, 'doc', '2');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (4, 1, 'xls', '4');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (5, 1, 'rtf', '5');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (6, 1, 'csv', '255');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (7, 2, 'txt', '1');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (8, 2, 'html', '3');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (9, 2, 'rtf', '5');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (10, 2, 'doc', '2');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (11, 3, 'doc', '2');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (12, 4, 'txt', '1');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (13, 5, 'xml', '7');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (14, 5, 'doc', '2');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (15, 5, 'xhtml', '6');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (16, 5, 'rtf', '5');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (17, 5, 'txt', '1');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (18, 6, 'txt', '1');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (19, 6, 'doc', '2');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (20, 6, 'html', '3');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (21, 6, 'rtf', '5');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (22, 7, 'doc', '2');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (23, 7, 'rtf', '5');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (24, 7, 'txt', '1');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (25, 7, 'html', '3');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (26, 7, 'xls', '4');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (27, 8, 'doc', '2');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (28, 8, 'rtf', '5');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (29, 8, 'txt', '1');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (30, 8, 'html', '3');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (31, 8, 'xls', '4');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (32, 9, 'doc', '2');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (33, 9, 'xls', '4');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (34, 9, 'txt', '1');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (35, 9, 'html', '3');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (36, 10, 'doc', '2');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (37, 10, 'xls', '4');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (38, 10, 'txt', '1');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (39, 10, 'html', '3');

#
# Daten für Tabelle `otmp_Kategorie`
#

INSERT INTO otmp_Kategorie (KategorieKID, KategorieName, KategorieSort) VALUES ('1', 'Wissenschaftlich_allgemein', '10');
INSERT INTO otmp_Kategorie (KategorieKID, KategorieName, KategorieSort) VALUES ('10', 'Geisteswissenschaften', '20');
INSERT INTO otmp_Kategorie (KategorieKID, KategorieName, KategorieSort) VALUES ('20', 'Ingenieurwissenschaften', '30');
INSERT INTO otmp_Kategorie (KategorieKID, KategorieName, KategorieSort) VALUES ('30', 'Medizin', '40');
INSERT INTO otmp_Kategorie (KategorieKID, KategorieName, KategorieSort) VALUES ('40', 'Naturwissenschaften', '50');
INSERT INTO otmp_Kategorie (KategorieKID, KategorieName, KategorieSort) VALUES ('50', 'Rechtswissenschaften', '60');
INSERT INTO otmp_Kategorie (KategorieKID, KategorieName, KategorieSort) VALUES ('60', 'Sozialwissenschaften', '70');
INSERT INTO otmp_Kategorie (KategorieKID, KategorieName, KategorieSort) VALUES ('70', 'Wirtschaftswissenschaften', '80');
INSERT INTO otmp_Kategorie (KategorieKID, KategorieName, KategorieSort) VALUES ('100', 'Nichtwissenschaftlich', '90');
INSERT INTO otmp_Kategorie (KategorieKID, KategorieName, KategorieSort) VALUES ('80', 'Sonstiges', '255');

#
# Daten für Tabelle `otmp_Konto`
#


#
# Daten für Tabelle `otmp_Optionen`
#


#
# Daten für Tabelle `otmp_PerPro`
#


#
# Daten für Tabelle `otmp_Person`
#

INSERT INTO otmp_Person (PersonPID, PersonKennung, PersonName, PersonVorname, PersonSex, PersonEmail, PersonPassword, PersonStatus, PersonAdminlevel, PersonPunkte, PersonUebersetzer) VALUES (1, 'hifix', 'Borchers', 'Felix',  NULL, 'fixbutte@localhost', '627364d648719f7b',  NULL, '0', 0, '0');
INSERT INTO otmp_Person (PersonPID, PersonKennung, PersonName, PersonVorname, PersonSex, PersonEmail, PersonPassword, PersonStatus, PersonAdminlevel, PersonPunkte, PersonUebersetzer) VALUES (2, 'iszuzi', 'Szuzi', 'Indara', 'f', 'szui@yahoo.com', '76d9607f417308e4',  NULL, '0', 0, '1');
INSERT INTO otmp_Person (PersonPID, PersonKennung, PersonName, PersonVorname, PersonSex, PersonEmail, PersonPassword, PersonStatus, PersonAdminlevel, PersonPunkte, PersonUebersetzer) VALUES (3, 'chrisi', 'Goldhorn', 'Chris', 'm', 'goldhorn@citygrid.de', '0c9cea580647a65f',  NULL, '0', 0, '1');
INSERT INTO otmp_Person (PersonPID, PersonKennung, PersonName, PersonVorname, PersonSex, PersonEmail, PersonPassword, PersonStatus, PersonAdminlevel, PersonPunkte, PersonUebersetzer) VALUES (4, 'hachen', 'Nagy', 'Matthias Sylvester', 'm', 'darkpact@cs.tu-berlin.de', '5e97e40d4bcb93b6',  NULL, '1', 0, '0');

#
# Daten für Tabelle `otmp_Programm`
#

INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (1, 'StarOffice', '5.2', '0', '60');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (2, 'KOffice KWord', '', '0', '30');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (3, 'WordPerfect', '10', '0', '40');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (4, 'WordPerfect Office', '2002', '0', '50');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (5, 'StarOffice', '5.2', '0', '60');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (6, 'KOffice KWord', '', '0', '30');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (7, 'WordPerfect', '10', '0', '40');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (8, 'WordPerfect Office', '2002', '0', '50');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (9, 'Gnome Office AbiWord', '', '0', '70');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (10, 'OpenOffice OpenWriter', '', '0', '80');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (11, 'MS Word', '97', '0', '11');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (12, 'MS Word', '2000', '0', '10');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (13, 'MS Excel', '97', '0', '21');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (14, 'MS Excel', '2000', '0', '20');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (15, 'MS Word', '95', '0', '12');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (16, 'MS WinWord', '6.0', '0', '13');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (17, 'MS WinWord', '5.0', '0', '14');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (18, 'MS Excel', '4.0', '0', '24');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (19, 'MS Excel', '5.0', '0', '23');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (20, 'MS Excel', '95', '0', '22');

#
# Daten für Tabelle `otmp_Sprache`
#

INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('1', 'Deutsch', 'de', '2');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('2', 'English', 'en', '1');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('3', 'Franz&ouml;sisch', 'fr', '3');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('4', 'Spanisch', 'es', '4');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('5', 'Chinesisch', 'ch', '5');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('6', 'Hindi', 'hi', '6');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('7', 'Portugisisch', 'po', '7');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('8', 'Japanisch', 'jp', '8');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('9', 'Vitnamesisch', 'vi', '9');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('10', 'Türkisch', 'tu', '10');

#
# Daten für Tabelle `otmp_SystemKonto`
#


#
# Daten für Tabelle `otmp_Text`
#

INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (1, 1, 'Biologischer Anbau von Tee in Angola', '', '2001-12-01 23:42:46', 0, 'finished', '4', '0', 0, 1);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (2, 2, 'Solidarit&auml;tsverhalten der DDR gegenüber Nicaragua', '', '2001-12-01 23:42:46', 1000, 'finished', '1', '0', 0, 1);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (3, 1, 'Biologischer Anbau von Tee in Angola', '', '2001-12-04 23:42:46', 0, 'work', '5', '0', 0, 3);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (4, 1, 'Biologischer Anbau von Tee in Angola', '', '2001-12-01 23:42:46', 0, 'open', '2', '0', 0, 0);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (5, 1, 'Biologischer Anbau von Tee in Angola', '', '2001-12-01 23:42:46', 0, 'open', '1', '0', 0, 0);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (6, 1, 'Biologischer Anbau von Tee in Angola', '', '2001-12-01 23:42:46', 0, 'open', '3', '0', 0, 0);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (7, 2, 'Solidarit&auml;tsverhalten der DDR gegenüber Nicaragua', '', '2001-12-07 23:42:46', 875, 'open', '1', '0', 0, 0);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (8, 1, 'Biologischer Anbau von Tee in Angola', '', '2001-12-08 23:42:46', 0, 'finished', '6', '0', 0, 4);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (9, 9, 'Universal DCI Tournament Rules', '', '2001-12-08 03:42:46', 0, 'finished', '2', '0', 0, 4);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (10, 9, 'Allgemeine DCI-Veranstaltungsregeln', '', '2001-12-09 03:42:46', 0, 'finished', '1', '0', 0, 4);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (11, 9, 'Universal DCI Tournament Rules', '', '2001-12-10 03:42:46', 0, 'work', '3', '0', 0, 1);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (12, 9, 'Universal DCI Tournament Rules', '', '2001-12-10 03:42:46', 0, 'work', '4', '0', 0, 1);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (13, 9, 'Universal DCI Tournament Rules', '', '2001-12-11 03:42:46', 0, 'open', '6', '0', 0, 0);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (14, 9, 'Universal DCI Tournament Rules', '', '2001-12-12 03:42:46', 0, 'open', '9', '0', 0, 0);

#
# Daten für Tabelle `otmp_UebersetzerSprachen`
#


    