#
# Beispielsql für OTMP
# $Id: examples.sql,v 1.10 2002/01/28 17:46:12 hifix Exp $
# $Revision: 1.10 $
#
# ----------------------------------------------------------------------
# Log for examples.sql
# ----------------------------------------------------------------------
# $Log: examples.sql,v $
# Revision 1.10  2002/01/28 17:46:12  hifix
# added types
#
# Revision 1.9  2002/01/27 22:11:16  darkpact
# Änderungen vom So
#
# Revision 1.8  2001/12/18 23:29:22  hifix
# sorry, major modifications for relase1
#
# Revision 1.7  2001/12/17 18:59:52  hifix
# examples updated
# user hifix now has translator capabilities and Programms
# Programlist shortened
# Kategories sortorder changed
# Added Packer to Programme
#
# Revision 1.6  2001/12/14 17:31:15  hifix
# Sprachen nochmal neu! (wg. event. Abschnitte durch Varchar(25))
#
# Revision 1.5  2001/12/14 09:34:57  darkpact
# Anpassung der Beispile an die tables 1.14 und das neue Sprachverzeichnis
#
# Revision 1.5  2001/12/13 21:49:41  darkpact
# Aufträge Korrigiert wegen verkürzter Auftragtabelle
# Texte Korrigiert wegen neuem Inhalt der Sprachtabelle
#
# Revision 1.4  2001/12/13 21:49:41  hifix
# Sprachen jetzt wirklich drin
#
# Revision 1.3  2001/12/13 21:23:23  hifix
# added languages (iso) !!!
#
# ----------------------------------------------------------------------
# Diese Version wurde zuletzt mit Revision 1.15 der tables.sql getestet.
#
# Database : `otmp`
# Achtung: Diese BeispielSQL sollte nach einem Delete auf die Tabellen eingespielt werden!

#
# Dumping data for table `otmp_Adresse`
#


#
# Dumping data for table `otmp_Auftrag`
#

INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragDatum, AuftragNID, AuftragTransDatum, AuftragBisDatum) VALUES (1, 1, 3, '2001-12-01 23:52:48', 1, '0000-00-00', '2001-12-08');
INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragDatum, AuftragNID, AuftragTransDatum, AuftragBisDatum) VALUES (2, 1, 4, '2001-12-01 23:52:48', 1, '0000-00-00', '0000-00-00');
INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragDatum, AuftragNID, AuftragTransDatum, AuftragBisDatum) VALUES (3, 1, 5, '2001-12-01 23:52:48', 1, '0000-00-00', '0000-00-00');
INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragDatum, AuftragNID, AuftragTransDatum, AuftragBisDatum) VALUES (4, 1, 6, '2001-12-01 23:52:48', 1, '0000-00-00', '0000-00-00');
INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragDatum, AuftragNID, AuftragTransDatum, AuftragBisDatum) VALUES (5, 2, 7, '2001-12-01 00:02:19', 3, '2001-12-07', '0000-00-00');
INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragDatum, AuftragNID, AuftragTransDatum, AuftragBisDatum) VALUES (6, 1, 8, '2001-12-01 00:02:19', 1, '2001-12-07', '0000-00-00');
INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragDatum, AuftragNID, AuftragTransDatum, AuftragBisDatum) VALUES (7, 9, 10, '2001-12-09 00:02:19', 4, '2001-12-07', '0000-00-00');
INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragDatum, AuftragNID, AuftragTransDatum, AuftragBisDatum) VALUES (8, 9, 11, '2001-12-09 00:02:19', 4, '2001-12-07', '0000-00-00');
INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragDatum, AuftragNID, AuftragTransDatum, AuftragBisDatum) VALUES (9, 9, 12, '2001-12-09 00:02:19', 4, '2001-12-07', '0000-00-00');
INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragDatum, AuftragNID, AuftragTransDatum, AuftragBisDatum) VALUES (10, 9, 13, '2001-12-09 00:02:19', 4, '2001-12-07', '0000-00-00');
INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragDatum, AuftragNID, AuftragTransDatum, AuftragBisDatum) VALUES (11, 9, 14, '2001-12-09 00:02:19', 4, '2001-12-07', '0000-00-00');

#
# Dumping data for table `otmp_BankKonto`
#


#
# Dumping data for table `otmp_Filetype`
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
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (40, 11, 'doc', '2');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (41, 11, 'xls', '4');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (42, 11, 'txt', '1');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (43, 11, 'html', '3');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (44, 12, 'doc', '2');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (45, 12, 'txt', '3');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (54, 12, 'rtf', '1');

INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (46, 14, 'doc', '2');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (47, 14, 'txt', '3');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (55, 14, 'rtf', '1');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (48, 14, 'doc', '2');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (49, 15, 'txt', '1');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (50, 15, 'doc', '2');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (51, 15, 'txt', '1');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (52, 16, 'doc', '2');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType, FiletypeSort) VALUES (53, 16, 'txt', '1');

#
# Dumping data for table `otmp_Kategorie`
#

INSERT INTO otmp_Kategorie (KategorieKID, KategorieName, KategorieSort) VALUES ('1', 'Wissenschaftlich_allgemein', '10');
INSERT INTO otmp_Kategorie (KategorieKID, KategorieName, KategorieSort) VALUES ('10', 'Geisteswissenschaften', '20');
INSERT INTO otmp_Kategorie (KategorieKID, KategorieName, KategorieSort) VALUES ('20', 'Ingenieurwissenschaften', '30');
INSERT INTO otmp_Kategorie (KategorieKID, KategorieName, KategorieSort) VALUES ('30', 'Medizin', '40');
INSERT INTO otmp_Kategorie (KategorieKID, KategorieName, KategorieSort) VALUES ('40', 'Naturwissenschaften', '50');
INSERT INTO otmp_Kategorie (KategorieKID, KategorieName, KategorieSort) VALUES ('50', 'Rechtswissenschaften', '60');
INSERT INTO otmp_Kategorie (KategorieKID, KategorieName, KategorieSort) VALUES ('60', 'Sozialwissenschaften', '70');
INSERT INTO otmp_Kategorie (KategorieKID, KategorieName, KategorieSort) VALUES ('70', 'Wirtschaftswissenschaften', '80');
INSERT INTO otmp_Kategorie (KategorieKID, KategorieName, KategorieSort) VALUES ('100', 'Nichtwissenschaftlich', '5');
INSERT INTO otmp_Kategorie (KategorieKID, KategorieName, KategorieSort) VALUES ('80', 'Sonstiges', '255');

#
# Dumping data for table `otmp_Konto`
#


#
# Dumping data for table `otmp_Optionen`
#


#
# Dumping data for table `otmp_PerPro`
#

INSERT INTO otmp_PerPro (PerProPRGID, PerProPID) VALUES (12, 1);
INSERT INTO otmp_PerPro (PerProPRGID, PerProPID) VALUES (21, 1);
INSERT INTO otmp_PerPro (PerProPRGID, PerProPID) VALUES (22, 1);
INSERT INTO otmp_PerPro (PerProPRGID, PerProPID) VALUES (23, 1);

#
# Dumping data for table `otmp_Person`
#

INSERT INTO otmp_Person (PersonPID, PersonKennung, PersonName, PersonVorname, PersonSex, PersonEmail, PersonPassword, PersonStatus, PersonAdminlevel, PersonPunkte, PersonUebersetzer) VALUES (1, 'feb', 'Borchers', 'Felix', 'm', 'hifix@citygrid.de', '627364d648719f7b',  NULL, '0', 0, '1');
INSERT INTO otmp_Person (PersonPID, PersonKennung, PersonName, PersonVorname, PersonSex, PersonEmail, PersonPassword, PersonStatus, PersonAdminlevel, PersonPunkte, PersonUebersetzer) VALUES (2, 'iszuzi', 'Szuzi', 'Indara', 'f', 'szui@yahoo.com', '76d9607f417308e4',  NULL, '0', 0, '1');
INSERT INTO otmp_Person (PersonPID, PersonKennung, PersonName, PersonVorname, PersonSex, PersonEmail, PersonPassword, PersonStatus, PersonAdminlevel, PersonPunkte, PersonUebersetzer) VALUES (3, 'chrisi', 'Goldhorn', 'Chris', 'm', 'goldhorn@citygrid.de', '0c9cea580647a65f',  NULL, '0', 0, '1');
INSERT INTO otmp_Person (PersonPID, PersonKennung, PersonName, PersonVorname, PersonSex, PersonEmail, PersonPassword, PersonStatus, PersonAdminlevel, PersonPunkte, PersonUebersetzer) VALUES (4, 'hachen', 'Nagy', 'Matthias Sylvester', 'm', 'darkpact@cs.tu-berlin.de', '5e97e40d4bcb93b6',  NULL, '1', 0, '0');

#
# Dumping data for table `otmp_Programm`
#

INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (1, 'StarOffice', '5.2', '0', '60');
#INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (2, 'KOffice KWord', '', '0', '30');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (3, 'WordPerfect', '10', '0', '40');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (4, 'WordPerfect Office', '2002', '0', '50');
#INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (5, 'StarOffice', '5.2', '0', '60');
#INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (6, 'KOffice KWord', '', '0', '30');
#INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (7, 'WordPerfect', '10', '0', '40');
#INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (8, 'WordPerfect Office', '2002', '0', '50');
#INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (9, 'Gnome Office AbiWord', '', '0', '70');
#INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (10, 'OpenOffice OpenWriter', '', '0', '80');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (11, 'MS Word', '97', '0', '11');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (12, 'MS Word', '2000', '0', '10');
#INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (13, 'MS Excel', '97', '0', '21');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (14, 'MS Excel', '2000', '0', '20');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (15, 'MS Word', '95', '0', '12');
#INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (16, 'MS WinWord', '6.0', '0', '13');
#INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (17, 'MS WinWord', '5.0', '0', '14');
#INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (18, 'MS Excel', '4.0', '0', '24');
#INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (19, 'MS Excel', '5.0', '0', '23');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (20, 'MS Excel', '95', '0', '22');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (21, 'WinZip', '', '1', '100');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (22, 'Stuff It!', '', '1', '110');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (23, 'WinRar', '', '1', '105');

#
# Dumping data for table `otmp_Sprache`
#

#
# Daten für Tabelle `otmp_Sprache`
#

INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (1, 'Afar', 'aa', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (2, 'Armenisch', 'hy', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (3, 'Quechua', 'qu', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (4, 'Abchasisch', 'ab', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (5, 'Interlingua', 'ia', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (6, 'Rätoromanisch', 'rm', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (7, 'Afrikaans', 'af', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (8, 'Indonesisch', 'id', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (9, 'Kirundisch', 'rn', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (10, 'Amharisch', 'am', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (11, 'Interlingue', 'ie', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (12, 'Rumänisch', 'ro', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (13, 'Arabisch', 'ar', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (14, 'Inupiak', 'ik', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (15, 'Russisch', 'ru', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (16, 'Assamesisch', 'as', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (17, 'Isländisch', 'is', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (18, 'Kijarwanda', 'rw', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (19, 'Aymara', 'ay', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (20, 'Italienisch', 'it', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (21, 'Sanskrit', 'sa', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (22, 'Aserbaidschanisch', 'az', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (23, 'Inuktitut', 'iu', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (24, 'Zinti', 'sd', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (25, 'Baschkirisch', 'ba', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (26, 'Japanisch', 'ja', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (27, 'Sango', 'sg', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (28, 'Belorussisch', 'be', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (29, 'Javanisch', 'jw', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (30, 'Serbokroatisch', 'sh', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (31, 'Bulgarisch', 'bg', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (32, 'Georgisch', 'ka', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (33, 'Singhalesisch', 'si', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (34, 'Biharisch', 'bh', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (35, 'Kasachisch', 'kk', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (36, 'Slowakisch', 'sk', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (37, 'Bislamisch', 'bi', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (38, 'Kalaallisut (Grönländisch)', 'kl', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (39, 'Slowenisch', 'sl', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (40, 'Bengalisch', 'bn', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (41, 'Kambodschanisch', 'km', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (42, 'Samoanisch', 'sm', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (43, 'Tibetanisch', 'bo', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (44, 'Kannada', 'kn', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (45, 'Schonisch', 'sn', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (46, 'Bretonisch', 'br', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (47, 'Koreanisch', 'ko', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (48, 'Somalisch', 'so', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (49, 'Katalanisch', 'ca', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (50, 'Kaschmirisch', 'ks', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (51, 'Albanisch', 'sq', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (52, 'Korsisch', 'co', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (53, 'Kurdisch', 'ku', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (54, 'Serbisch', 'sr', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (55, 'Tschechisch', 'cs', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (56, 'Kornisch', 'kw', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (57, 'Swasiländisch', 'ss', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (58, 'Walisisch', 'cy', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (59, 'Kirgisisch', 'ky', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (60, 'Sesothisch', 'st', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (61, 'Dänisch', 'da', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (62, 'Lateinisch', 'la', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (63, 'Sudanesisch', 'su', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (64, 'Deutsch', 'de', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (65, 'Luxemburgisch', 'lb', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (66, 'Schwedisch', 'sv', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (67, 'Dzongkha; Bhutani', 'dz', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (68, 'Lingala sw Suaheli', 'ln', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (69, 'Griechisch', 'el', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (70, 'Laotisch', 'lo', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (71, 'Tamilisch', 'ta', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (72, 'Englisch', 'en', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (73, 'Litauisch', 'lt', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (74, 'Telugu', 'te', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (75, 'Esperanto', 'eo', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (76, 'Lettisch', 'lv', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (77, 'Tadschikisch', 'tg', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (78, 'Spanisch', 'es', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (79, 'Malagasisch', 'mg', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (80, 'Thai', 'th', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (81, 'Estnisch', 'et', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (82, 'Maorisch', 'mi', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (83, 'Tigrinja', 'ti', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (84, 'Baskisch', 'eu', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (85, 'Mazedonisch', 'mk', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (86, 'Turkmenisch', 'tk', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (87, 'Persisch', 'fa', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (88, 'Malajalam', 'ml', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (89, 'Tagalog', 'tl', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (90, 'Finnisch', 'fi', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (91, 'Mongolisch', 'mn', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (92, 'Sezuan', 'tn', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (93, 'Fiji', 'fj', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (94, 'Moldavisch', 'mo', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (95, 'Tongaisch', 'to', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (96, 'Faröisch', 'fo', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (97, 'Marathi', 'mr', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (98, 'Türkisch', 'tr', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (99, 'Französisch', 'fr', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (100, 'Malaysisch', 'ms', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (101, 'Tsongaisch', 'ts', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (102, 'Friesisch', 'fy', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (103, 'Maltesisch', 'mt', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (104, 'Tatarisch', 'tt', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (105, 'Irisch', 'ga', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (106, 'Burmesisch', 'my', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (107, 'Twi', 'tw', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (108, 'Schottisches Gälisch', 'gd', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (109, 'Nauruisch', 'na', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (110, 'Ukrainisch', 'uk', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (111, 'Galizisch', 'gl', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (112, 'Nepalisch', 'ne', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (113, 'Urdu', 'ur', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (114, 'Guarani', 'gn', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (115, 'Holländisch', 'nl', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (116, 'Usbekisch', 'uz', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (117, 'Gujaratisch', 'gu', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (118, 'Norwegisch', 'no', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (119, 'Vietnamesisch', 'vi', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (120, 'Gälisch der Ile of Man', 'gv', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (121, 'Okzitanisch', 'oc', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (122, 'Volapük', 'vo', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (123, 'Haussa', 'ha', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (124, 'Oromo', 'om', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (125, 'Wolof', 'wo', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (126, 'Hebräisch', 'he', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (127, 'Orija', 'or', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (128, 'Xhosa', 'xh', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (129, 'Hindi', 'hi', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (130, 'Pundjabisch', 'pa', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (131, 'Jiddish', 'yi', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (132, 'Kroatisch', 'hr', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (133, 'Polnisch', 'pl', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (134, 'Joruba', 'yo', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (135, 'Ungarisch', 'hu', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (136, 'Paschtu', 'ps', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (137, 'Zhuang', 'za', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (138, 'Armenisch', 'hy', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (139, 'Portugiesisch', 'pt', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (140, 'Chinesisch', 'zh', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (141, 'Interlingua', 'ia', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (142, 'Quechua', 'qu', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (143, 'Zulu', 'zu', NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (144, 'Lingala', NULL, 'LIN', 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (145, 'Bangi', NULL, 'BNI', 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (146, 'Fang', NULL, 'FNG', 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (147, 'Hausa', NULL, 'HUA', 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheSort) VALUES (148, 'Yoruba', NULL, 'YOR', 255);

#
# Dumping data for table `otmp_SystemKonto`
#


#
# Dumping data for table `otmp_Text`
#

INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (1, 1, 'Biologischer Anbau von Tee in Angola', '', '2001-12-01 23:42:46', 0, 'finished', '64', '0', 0, 1);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (2, 2, 'Solidarit&auml;tsverhalten der DDR gegenüber Nicaragua', '', '2001-12-01 23:42:46', 1000, 'finished', '64', '0', 0, 1);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (3, 1, 'Biologischer Anbau von Tee in Angola', '', '2001-12-04 23:42:46', 0, 'work', '72', '0', 0, 3);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (4, 1, 'Biologischer Anbau von Tee in Angola', '', '2001-12-01 23:42:46', 0, 'open', '123', '0', 0, 0);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (5, 1, 'Biologischer Anbau von Tee in Angola', '', '2001-12-01 23:42:46', 0, 'open', '141', '0', 0, 0);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (6, 1, 'Biologischer Anbau von Tee in Angola', '', '2001-12-01 23:42:46', 0, 'open', '39', '0', 0, 0);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (7, 2, 'Solidarit&auml;tsverhalten der DDR gegenüber Nicaragua', '', '2001-12-07 23:42:46', 875, 'open', '90', '0', 0, 0);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (8, 1, 'Biologischer Anbau von Tee in Angola', '', '2001-12-08 23:42:46', 0, 'finished', '60', '0', 0, 4);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (9, 9, 'Universal DCI Tournament Rules', '', '2001-12-08 03:42:46', 0, 'finished', '72', '0', 0, 4);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (10, 9, 'Allgemeine DCI-Veranstaltungsregeln', '', '2001-12-09 03:42:46', 0, 'finished', '64', '0', 0, 4);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (11, 9, 'Universal DCI Tournament Rules', '', '2001-12-10 03:42:46', 0, 'work', '61', '0', 0, 1);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (12, 9, 'Universal DCI Tournament Rules', '', '2001-12-10 03:42:46', 0, 'work', '122', '0', 0, 1);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (13, 9, 'Universal DCI Tournament Rules', '', '2001-12-11 03:42:46', 0, 'open', '140', '0', 0, 0);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (14, 9, 'Universal DCI Tournament Rules', '', '2001-12-12 03:42:46', 0, 'open', '99', '0', 0, 0);

#
# Dumping data for table `otmp_UebersetzerSprachen`
#

INSERT INTO otmp_UebersetzerSprachen (UebersetzerSprachenUEID, UebersetzerSprachenVonSID, UebersetzerSprachenNachSID, UebersetzerSprachenKID, UebersetzerSprachenAuto) VALUES (1, '64', '72', '80', '0');
INSERT INTO otmp_UebersetzerSprachen (UebersetzerSprachenUEID, UebersetzerSprachenVonSID, UebersetzerSprachenNachSID, UebersetzerSprachenKID, UebersetzerSprachenAuto) VALUES (1, '72', '64', '80', '0');
INSERT INTO otmp_UebersetzerSprachen (UebersetzerSprachenUEID, UebersetzerSprachenVonSID, UebersetzerSprachenNachSID, UebersetzerSprachenKID, UebersetzerSprachenAuto) VALUES (1, '64', '15', '80', '0');
INSERT INTO otmp_UebersetzerSprachen (UebersetzerSprachenUEID, UebersetzerSprachenVonSID, UebersetzerSprachenNachSID, UebersetzerSprachenKID, UebersetzerSprachenAuto) VALUES (1, '15', '64', '80', '0');
INSERT INTO otmp_UebersetzerSprachen (UebersetzerSprachenUEID, UebersetzerSprachenVonSID, UebersetzerSprachenNachSID, UebersetzerSprachenKID, UebersetzerSprachenAuto) VALUES (1, '119', '64', '100', '0');
INSERT INTO otmp_UebersetzerSprachen (UebersetzerSprachenUEID, UebersetzerSprachenVonSID, UebersetzerSprachenNachSID, UebersetzerSprachenKID, UebersetzerSprachenAuto) VALUES (1, '64', '119', '100', '0');
