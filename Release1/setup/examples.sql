#
# Beispielsql für OTMP
# $Id: examples.sql,v 1.11 2002/01/30 01:42:58 hifix Exp $
# $Revision: 1.11 $
#
# ----------------------------------------------------------------------
# Log for examples.sql
# ----------------------------------------------------------------------
# $Log: examples.sql,v $
# Revision 1.11  2002/01/30 01:42:58  hifix
# release 1.3
#
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

INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragDatum, AuftragNID, AuftragTransDatum, AuftragBisDatum) VALUES (1, 1, 2, '2002-01-29 20:10:56', 1, '2002-01-30', '0000-00-00');
INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragDatum, AuftragNID, AuftragTransDatum, AuftragBisDatum) VALUES (2, 1, 3, '2002-01-29 20:11:09', 1, '2002-01-30', '0000-00-00');
INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragDatum, AuftragNID, AuftragTransDatum, AuftragBisDatum) VALUES (3, 1, 4, '2002-01-29 20:11:18', 1, '2002-01-30', '0000-00-00');
INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragDatum, AuftragNID, AuftragTransDatum, AuftragBisDatum) VALUES (4, 5, 6, '2002-01-30 02:24:03', 4, '0000-00-00', '0000-00-00');
INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragDatum, AuftragNID, AuftragTransDatum, AuftragBisDatum) VALUES (5, 5, 7, '2002-01-30 02:25:46', 4, '0000-00-00', '0000-00-00');
INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragDatum, AuftragNID, AuftragTransDatum, AuftragBisDatum) VALUES (6, 5, 8, '2002-01-30 02:25:51', 4, '2002-01-30', '0000-00-00');
INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragDatum, AuftragNID, AuftragTransDatum, AuftragBisDatum) VALUES (7, 5, 9, '2002-01-30 02:26:23', 4, '2002-01-30', '0000-00-00');
INSERT INTO otmp_Auftrag (AuftragAID, AuftragOTID, AuftragNTID, AuftragDatum, AuftragNID, AuftragTransDatum, AuftragBisDatum) VALUES (8, 5, 10, '2002-01-30 02:26:33', 4, '0000-00-00', '0000-00-00');

#
# Dumping data for table `otmp_BankKonto`
#


#
# Dumping data for table `otmp_Filetype`
#

INSERT INTO otmp_Filetype (FiletypeFID, FiletypeType, FiletypeNote) VALUES (1, 'txt', NULL);
INSERT INTO otmp_Filetype (FiletypeFID, FiletypeType, FiletypeNote) VALUES (2, 'rtf', NULL);
INSERT INTO otmp_Filetype (FiletypeFID, FiletypeType, FiletypeNote) VALUES (3, 'html', NULL);
INSERT INTO otmp_Filetype (FiletypeFID, FiletypeType, FiletypeNote) VALUES (4, 'xml', NULL);
INSERT INTO otmp_Filetype (FiletypeFID, FiletypeType, FiletypeNote) VALUES (5, 'csv', NULL);
INSERT INTO otmp_Filetype (FiletypeFID, FiletypeType, FiletypeNote) VALUES (101, 'doc', 'Word2000');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypeType, FiletypeNote) VALUES (102, 'doc', 'Word95');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypeType, FiletypeNote) VALUES (103, 'doc', 'WordPerfect');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypeType, FiletypeNote) VALUES (104, 'doc', 'StarOffice');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypeType, FiletypeNote) VALUES (105, 'xls', 'Excel 95');

#
# Dumping data for table `otmp_Kategorie`
#

INSERT INTO otmp_Kategorie (KategorieKID, KategorieName, KategorieSort) VALUES (1, 'Wissenschaftlich_allgemein', 10);
INSERT INTO otmp_Kategorie (KategorieKID, KategorieName, KategorieSort) VALUES (10, 'Geisteswissenschaften', 20);
INSERT INTO otmp_Kategorie (KategorieKID, KategorieName, KategorieSort) VALUES (20, 'Ingenieurwissenschaften', 30);
INSERT INTO otmp_Kategorie (KategorieKID, KategorieName, KategorieSort) VALUES (30, 'Medizin', 40);
INSERT INTO otmp_Kategorie (KategorieKID, KategorieName, KategorieSort) VALUES (40, 'Naturwissenschaften', 50);
INSERT INTO otmp_Kategorie (KategorieKID, KategorieName, KategorieSort) VALUES (50, 'Rechtswissenschaften', 60);
INSERT INTO otmp_Kategorie (KategorieKID, KategorieName, KategorieSort) VALUES (60, 'Sozialwissenschaften', 70);
INSERT INTO otmp_Kategorie (KategorieKID, KategorieName, KategorieSort) VALUES (70, 'Wirtschaftswissenschaften', 80);
INSERT INTO otmp_Kategorie (KategorieKID, KategorieName, KategorieSort) VALUES (100, 'Nichtwissenschaftlich', 5);
INSERT INTO otmp_Kategorie (KategorieKID, KategorieName, KategorieSort) VALUES (80, 'Sonstiges', 255);

#
# Dumping data for table `otmp_Konto`
#


#
# Dumping data for table `otmp_Land`
#


#
# Dumping data for table `otmp_LandSprache`
#


#
# Dumping data for table `otmp_Optionen`
#


#
# Dumping data for table `otmp_PerPro`
#

INSERT INTO otmp_PerPro (PerProPRGID, PerProPID) VALUES (12, 1);
INSERT INTO otmp_PerPro (PerProPRGID, PerProPID) VALUES (15, 5);
INSERT INTO otmp_PerPro (PerProPRGID, PerProPID) VALUES (21, 1);
INSERT INTO otmp_PerPro (PerProPRGID, PerProPID) VALUES (22, 1);
INSERT INTO otmp_PerPro (PerProPRGID, PerProPID) VALUES (23, 1);

#
# Dumping data for table `otmp_Person`
#

INSERT INTO otmp_Person (PersonPID, PersonKennung, PersonName, PersonVorname, PersonSex, PersonEmail, PersonPassword, PersonStatus, PersonAdminlevel, PersonPunkte, PersonUebersetzer) VALUES (1, 'feb', 'Borchers', 'Felix', 'm', 'hifix@citygrid.de', '627364d648719f7b', NULL, 1, 0, '1');
INSERT INTO otmp_Person (PersonPID, PersonKennung, PersonName, PersonVorname, PersonSex, PersonEmail, PersonPassword, PersonStatus, PersonAdminlevel, PersonPunkte, PersonUebersetzer) VALUES (2, 'iszuzi', 'Szuzi', 'Indara', 'f', 'szui@yahoo.com', '76d9607f417308e4', NULL, 0, 0, '1');
INSERT INTO otmp_Person (PersonPID, PersonKennung, PersonName, PersonVorname, PersonSex, PersonEmail, PersonPassword, PersonStatus, PersonAdminlevel, PersonPunkte, PersonUebersetzer) VALUES (3, 'chrisi', 'Goldhorn', 'Chris', 'm', 'goldhorn@citygrid.de', '627364d648719f7b', NULL, 0, 0, '1');
INSERT INTO otmp_Person (PersonPID, PersonKennung, PersonName, PersonVorname, PersonSex, PersonEmail, PersonPassword, PersonStatus, PersonAdminlevel, PersonPunkte, PersonUebersetzer) VALUES (4, 'hachen', 'Nagy', 'Matthias Sylvester', 'm', 'darkpact@cs.tu-berlin.de', '5e97e40d4bcb93b6', NULL, 1, 0, '0');
INSERT INTO otmp_Person (PersonPID, PersonKennung, PersonName, PersonVorname, PersonSex, PersonEmail, PersonPassword, PersonStatus, PersonAdminlevel, PersonPunkte, PersonUebersetzer) VALUES (5, 'viet-duc', 'Borchers', 'Viet-Duc', NULL, 'vd@citygrid.de', '627364d648719f7b', NULL, 0, 0, '1');

#
# Dumping data for table `otmp_PrgHasType`
#

INSERT INTO otmp_PrgHasType (prtPRGID, prtFID, prtDefault, prtSortOrder) VALUES (1, 1, '0', 2);
INSERT INTO otmp_PrgHasType (prtPRGID, prtFID, prtDefault, prtSortOrder) VALUES (1, 2, '0', 3);
INSERT INTO otmp_PrgHasType (prtPRGID, prtFID, prtDefault, prtSortOrder) VALUES (1, 3, '0', 4);
INSERT INTO otmp_PrgHasType (prtPRGID, prtFID, prtDefault, prtSortOrder) VALUES (1, 4, '0', 5);
INSERT INTO otmp_PrgHasType (prtPRGID, prtFID, prtDefault, prtSortOrder) VALUES (1, 5, '0', 6);
INSERT INTO otmp_PrgHasType (prtPRGID, prtFID, prtDefault, prtSortOrder) VALUES (1, 104, '1', 1);
INSERT INTO otmp_PrgHasType (prtPRGID, prtFID, prtDefault, prtSortOrder) VALUES (3, 103, '1', 1);
INSERT INTO otmp_PrgHasType (prtPRGID, prtFID, prtDefault, prtSortOrder) VALUES (3, 1, '0', 2);
INSERT INTO otmp_PrgHasType (prtPRGID, prtFID, prtDefault, prtSortOrder) VALUES (3, 2, '0', 2);
INSERT INTO otmp_PrgHasType (prtPRGID, prtFID, prtDefault, prtSortOrder) VALUES (3, 3, '0', 3);
INSERT INTO otmp_PrgHasType (prtPRGID, prtFID, prtDefault, prtSortOrder) VALUES (3, 5, '0', 4);
INSERT INTO otmp_PrgHasType (prtPRGID, prtFID, prtDefault, prtSortOrder) VALUES (12, 101, '1', 1);
INSERT INTO otmp_PrgHasType (prtPRGID, prtFID, prtDefault, prtSortOrder) VALUES (12, 1, '0', 2);
INSERT INTO otmp_PrgHasType (prtPRGID, prtFID, prtDefault, prtSortOrder) VALUES (12, 2, '0', 3);
INSERT INTO otmp_PrgHasType (prtPRGID, prtFID, prtDefault, prtSortOrder) VALUES (12, 3, '0', 4);
INSERT INTO otmp_PrgHasType (prtPRGID, prtFID, prtDefault, prtSortOrder) VALUES (12, 4, '0', 5);
INSERT INTO otmp_PrgHasType (prtPRGID, prtFID, prtDefault, prtSortOrder) VALUES (12, 5, '0', 6);
INSERT INTO otmp_PrgHasType (prtPRGID, prtFID, prtDefault, prtSortOrder) VALUES (12, 102, '0', 255);
INSERT INTO otmp_PrgHasType (prtPRGID, prtFID, prtDefault, prtSortOrder) VALUES (15, 102, '1', 1);
INSERT INTO otmp_PrgHasType (prtPRGID, prtFID, prtDefault, prtSortOrder) VALUES (15, 1, '0', 2);
INSERT INTO otmp_PrgHasType (prtPRGID, prtFID, prtDefault, prtSortOrder) VALUES (15, 2, '0', 3);
INSERT INTO otmp_PrgHasType (prtPRGID, prtFID, prtDefault, prtSortOrder) VALUES (15, 3, '0', 4);
INSERT INTO otmp_PrgHasType (prtPRGID, prtFID, prtDefault, prtSortOrder) VALUES (15, 4, '0', 5);
INSERT INTO otmp_PrgHasType (prtPRGID, prtFID, prtDefault, prtSortOrder) VALUES (15, 5, '0', 6);
INSERT INTO otmp_PrgHasType (prtPRGID, prtFID, prtDefault, prtSortOrder) VALUES (20, 105, '1', 1);
INSERT INTO otmp_PrgHasType (prtPRGID, prtFID, prtDefault, prtSortOrder) VALUES (20, 5, '0', 2);
INSERT INTO otmp_PrgHasType (prtPRGID, prtFID, prtDefault, prtSortOrder) VALUES (20, 1, '0', 3);

#
# Dumping data for table `otmp_Programm`
#

INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (1, 'StarOffice', '5.2', '0', 60);
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (3, 'WordPerfect', '10', '0', 40);
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (12, 'MS Word', '2000', '0', 10);
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (15, 'MS Word', '95', '0', 12);
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (20, 'MS Excel', '95', '0', 22);
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (21, 'WinZip', '', '1', 100);
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (22, 'Stuff It!', '', '1', 110);
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker, ProgrammSort) VALUES (23, 'WinRar', '', '1', 105);

#
# Dumping data for table `otmp_Sprache`
#

INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (1, 'Afar', 'aa', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (2, 'Armenisch', 'hy', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (3, 'Quechua', 'qu', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (4, 'Abchasisch', 'ab', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (5, 'Interlingua', 'ia', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (6, 'Rätoromanisch', 'rm', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (7, 'Afrikaans', 'af', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (8, 'Indonesisch', 'id', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (9, 'Kirundisch', 'rn', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (10, 'Amharisch', 'am', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (11, 'Interlingue', 'ie', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (12, 'Rumänisch', 'ro', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (13, 'Arabisch', 'ar', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (14, 'Inupiak', 'ik', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (15, 'Russisch', 'ru', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (16, 'Assamesisch', 'as', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (17, 'Isländisch', 'is', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (18, 'Kijarwanda', 'rw', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (19, 'Aymara', 'ay', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (20, 'Italienisch', 'it', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (21, 'Sanskrit', 'sa', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (22, 'Aserbaidschanisch', 'az', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (23, 'Inuktitut', 'iu', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (24, 'Zinti', 'sd', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (25, 'Baschkirisch', 'ba', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (26, 'Japanisch', 'ja', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (27, 'Sango', 'sg', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (28, 'Belorussisch', 'be', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (29, 'Javanisch', 'jw', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (30, 'Serbokroatisch', 'sh', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (31, 'Bulgarisch', 'bg', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (32, 'Georgisch', 'ka', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (33, 'Singhalesisch', 'si', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (34, 'Biharisch', 'bh', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (35, 'Kasachisch', 'kk', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (36, 'Slowakisch', 'sk', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (37, 'Bislamisch', 'bi', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (38, 'Kalaallisut (Grönländisch)', 'kl', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (39, 'Slowenisch', 'sl', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (40, 'Bengalisch', 'bn', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (41, 'Kambodschanisch', 'km', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (42, 'Samoanisch', 'sm', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (43, 'Tibetanisch', 'bo', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (44, 'Kannada', 'kn', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (45, 'Schonisch', 'sn', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (46, 'Bretonisch', 'br', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (47, 'Koreanisch', 'ko', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (48, 'Somalisch', 'so', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (49, 'Katalanisch', 'ca', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (50, 'Kaschmirisch', 'ks', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (51, 'Albanisch', 'sq', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (52, 'Korsisch', 'co', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (53, 'Kurdisch', 'ku', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (54, 'Serbisch', 'sr', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (55, 'Tschechisch', 'cs', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (56, 'Kornisch', 'kw', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (57, 'Swasiländisch', 'ss', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (58, 'Walisisch', 'cy', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (59, 'Kirgisisch', 'ky', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (60, 'Sesothisch', 'st', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (61, 'Dänisch', 'da', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (62, 'Lateinisch', 'la', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (63, 'Sudanesisch', 'su', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (64, 'Deutsch', 'de', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (65, 'Luxemburgisch', 'lb', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (66, 'Schwedisch', 'sv', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (67, 'Dzongkha; Bhutani', 'dz', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (68, 'Lingala sw Suaheli', 'ln', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (69, 'Griechisch', 'el', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (70, 'Laotisch', 'lo', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (71, 'Tamilisch', 'ta', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (72, 'Englisch', 'en', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (73, 'Litauisch', 'lt', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (74, 'Telugu', 'te', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (75, 'Esperanto', 'eo', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (76, 'Lettisch', 'lv', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (77, 'Tadschikisch', 'tg', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (78, 'Spanisch', 'es', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (79, 'Malagasisch', 'mg', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (80, 'Thai', 'th', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (81, 'Estnisch', 'et', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (82, 'Maorisch', 'mi', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (83, 'Tigrinja', 'ti', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (84, 'Baskisch', 'eu', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (85, 'Mazedonisch', 'mk', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (86, 'Turkmenisch', 'tk', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (87, 'Persisch', 'fa', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (88, 'Malajalam', 'ml', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (89, 'Tagalog', 'tl', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (90, 'Finnisch', 'fi', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (91, 'Mongolisch', 'mn', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (92, 'Sezuan', 'tn', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (93, 'Fiji', 'fj', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (94, 'Moldavisch', 'mo', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (95, 'Tongaisch', 'to', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (96, 'Faröisch', 'fo', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (97, 'Marathi', 'mr', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (98, 'Türkisch', 'tr', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (99, 'Französisch', 'fr', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (100, 'Malaysisch', 'ms', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (101, 'Tsongaisch', 'ts', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (102, 'Friesisch', 'fy', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (103, 'Maltesisch', 'mt', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (104, 'Tatarisch', 'tt', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (105, 'Irisch', 'ga', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (106, 'Burmesisch', 'my', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (107, 'Twi', 'tw', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (108, 'Schottisches Gälisch', 'gd', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (109, 'Nauruisch', 'na', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (110, 'Ukrainisch', 'uk', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (111, 'Galizisch', 'gl', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (112, 'Nepalisch', 'ne', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (113, 'Urdu', 'ur', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (114, 'Guarani', 'gn', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (115, 'Holländisch', 'nl', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (116, 'Usbekisch', 'uz', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (117, 'Gujaratisch', 'gu', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (118, 'Norwegisch', 'no', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (119, 'Vietnamesisch', 'vi', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (120, 'Gälisch der Ile of Man', 'gv', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (121, 'Okzitanisch', 'oc', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (122, 'Volapük', 'vo', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (123, 'Haussa', 'ha', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (124, 'Oromo', 'om', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (125, 'Wolof', 'wo', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (126, 'Hebräisch', 'he', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (127, 'Orija', 'or', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (128, 'Xhosa', 'xh', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (129, 'Hindi', 'hi', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (130, 'Pundjabisch', 'pa', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (131, 'Jiddish', 'yi', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (132, 'Kroatisch', 'hr', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (133, 'Polnisch', 'pl', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (134, 'Joruba', 'yo', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (135, 'Ungarisch', 'hu', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (136, 'Paschtu', 'ps', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (137, 'Zhuang', 'za', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (138, 'Armenisch', 'hy', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (139, 'Portugiesisch', 'pt', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (140, 'Chinesisch', 'zh', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (141, 'Interlingua', 'ia', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (142, 'Quechua', 'qu', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (143, 'Zulu', 'zu', NULL, NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (144, 'Lingala', NULL, 'LIN', NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (145, 'Bangi', NULL, 'BNI', NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (146, 'Fang', NULL, 'FNG', NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (147, 'Hausa', NULL, 'HUA', NULL, NULL, NULL, 255);
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheEthnoCode, SpracheAltNamen, SpracheFamilie, SpracheLink_fam, SpracheSort) VALUES (148, 'Yoruba', NULL, 'YOR', NULL, NULL, NULL, 255);

#
# Dumping data for table `otmp_SystemKonto`
#


#
# Dumping data for table `otmp_Text`
#

INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (1, 0, 'BIO-BOP ein Produkt aus den Entwicklungsländern', 'kurzer Abstract über eine biologisch angebaute Teesorte in den Entwicklungsländern.', '2002-01-29 20:10:24', 109, 'finished', 64, 100, 1, 1);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (2, 1, 'BIO-BOP a product of developing countries', 'short abstract of a bio-cultivating sort of tea in developing countries.', '2002-01-29 20:10:56', 130, 'finished', 72, 0, 1, 4);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (3, 1, 'BIO-BOP ein Produkt aus den Entwicklungsländern', 'kurzer Abstract über eine biologisch angebaute Teesorte in den Entwicklungsländern.', '2002-01-29 20:11:09', 0, 'open', 99, 0, 0, 1);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (4, 1, 'BIO-BOP ein Produkt aus den Entwicklungsländern', 'kurzer Abstract über eine biologisch angebaute Teesorte in den Entwicklungsländern.', '2002-01-29 20:11:18', 0, 'work', 119, 0, 0, 5);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (5, 0, 'DCI Universal Tournament Rules', '2001-2002 \r\n- Apply to tournaments for all DCI-supported games. ', '2002-01-30 02:22:22', 0, 'finished', 72, 80, 102, 4);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (6, 5, 'DCI Universal Tournament Rules', '2001-2002 \r\n- Apply to tournaments for all DCI-supported games. ', '2002-01-30 02:24:03', 0, 'open', 140, 0, 0, 4);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (7, 5, 'DCI Universal Tournament Rules', '2001-2002 \r\n- Apply to tournaments for all DCI-supported games. ', '2002-01-30 02:25:46', 0, 'open', 145, 0, 0, 4);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (8, 5, 'DCI Universal Tournament Rules', '2001-2002 \r\n- Apply to tournaments for all DCI-supported games. ', '2002-01-30 02:25:51', 0, 'work', 64, 0, 0, 1);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (9, 5, 'DCI Universal Tournament Rules', '2001-2002 \r\n- Apply to tournaments for all DCI-supported games. ', '2002-01-30 02:26:23', 0, 'finished', 26, 0, 2, 3);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (10, 5, 'DCI Universal Tournament Rules', '2001-2002 \r\n- Apply to tournaments for all DCI-supported games. ', '2002-01-30 02:26:33', 0, 'open', 139, 0, 0, 4);

#
# Dumping data for table `otmp_UebersetzerSprachen`
#

INSERT INTO otmp_UebersetzerSprachen (UebersetzerSprachenUEID, UebersetzerSprachenVonSID, UebersetzerSprachenNachSID, UebersetzerSprachenKID, UebersetzerSprachenAuto) VALUES (1, 64, 72, 80, '0');
INSERT INTO otmp_UebersetzerSprachen (UebersetzerSprachenUEID, UebersetzerSprachenVonSID, UebersetzerSprachenNachSID, UebersetzerSprachenKID, UebersetzerSprachenAuto) VALUES (1, 72, 64, 80, '0');
INSERT INTO otmp_UebersetzerSprachen (UebersetzerSprachenUEID, UebersetzerSprachenVonSID, UebersetzerSprachenNachSID, UebersetzerSprachenKID, UebersetzerSprachenAuto) VALUES (1, 64, 15, 80, '0');
INSERT INTO otmp_UebersetzerSprachen (UebersetzerSprachenUEID, UebersetzerSprachenVonSID, UebersetzerSprachenNachSID, UebersetzerSprachenKID, UebersetzerSprachenAuto) VALUES (1, 15, 64, 80, '0');
INSERT INTO otmp_UebersetzerSprachen (UebersetzerSprachenUEID, UebersetzerSprachenVonSID, UebersetzerSprachenNachSID, UebersetzerSprachenKID, UebersetzerSprachenAuto) VALUES (1, 119, 64, 100, '0');
INSERT INTO otmp_UebersetzerSprachen (UebersetzerSprachenUEID, UebersetzerSprachenVonSID, UebersetzerSprachenNachSID, UebersetzerSprachenKID, UebersetzerSprachenAuto) VALUES (1, 64, 119, 100, '0');
INSERT INTO otmp_UebersetzerSprachen (UebersetzerSprachenUEID, UebersetzerSprachenVonSID, UebersetzerSprachenNachSID, UebersetzerSprachenKID, UebersetzerSprachenAuto) VALUES (5, 64, 119, 100, '0');
INSERT INTO otmp_UebersetzerSprachen (UebersetzerSprachenUEID, UebersetzerSprachenVonSID, UebersetzerSprachenNachSID, UebersetzerSprachenKID, UebersetzerSprachenAuto) VALUES (5, 119, 64, 100, '0');

    