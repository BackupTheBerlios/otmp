#
# Beispielsql für OTMP
# $Id: examples.sql,v 1.3 2001/12/13 21:23:23 hifix Exp $
# $Revision: 1.3 $
#
# ----------------------------------------------------------------------
# Log for examples.sql
# ----------------------------------------------------------------------
# $Log: examples.sql,v $
# Revision 1.3  2001/12/13 21:23:23  hifix
# added languages (iso) !!!
#
# ----------------------------------------------------------------------
# Diese Version wurde zuletzt mit Revision 1.13 der tables.sql getestet.
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

INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (1, 1, 'html');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (2, 1, 'txt');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (3, 1, 'doc');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (4, 1, 'xls');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (5, 1, 'rtf');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (6, 1, 'csv');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (7, 2, 'txt');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (8, 2, 'html');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (9, 2, 'rtf');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (10, 2, 'doc');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (11, 3, 'doc');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (12, 4, 'txt');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (13, 4, 'txt');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (14, 4, 'txt');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (15, 4, 'txt');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (16, 5, 'xml');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (17, 5, 'doc');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (18, 5, 'xhtml');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (19, 5, 'rtf');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (20, 5, 'txt');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (21, 6, 'txt');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (22, 6, 'doc');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (23, 6, 'html');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (24, 6, 'rtf');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (25, 7, 'doc');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (26, 7, 'rtf');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (27, 7, 'txt');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (28, 7, 'html');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (29, 7, 'xls');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (30, 8, 'doc');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (31, 8, 'rtf');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (32, 8, 'txt');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (33, 8, 'html');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (34, 8, 'xls');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (35, 9, 'doc');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (36, 9, 'xls');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (37, 9, 'txt');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (38, 9, 'html');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (39, 10, 'doc');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (40, 10, 'xls');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (41, 10, 'txt');
INSERT INTO otmp_Filetype (FiletypeFID, FiletypePRGID, FiletypeType) VALUES (42, 10, 'html');

#
# Dumping data for table `otmp_Kategorie`
#

INSERT INTO otmp_Kategorie (KategorieKID, KategorieName) VALUES ('1', 'allgemein');
INSERT INTO otmp_Kategorie (KategorieKID, KategorieName) VALUES ('2', 'wissentschaftlich');

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

INSERT INTO otmp_Person (PersonPID, PersonKennung, PersonName, PersonVorname, PersonSex, PersonEmail, PersonPassword, PersonStatus, PersonAdminlevel, PersonPunkte, PersonUebersetzer) VALUES (1, 'feb', 'Borchers', 'Felix',  NULL, 'fixbutte@localhost', '627364d648719f7b',  NULL, '0', 0, '0');
INSERT INTO otmp_Person (PersonPID, PersonKennung, PersonName, PersonVorname, PersonSex, PersonEmail, PersonPassword, PersonStatus, PersonAdminlevel, PersonPunkte, PersonUebersetzer) VALUES (2, 'iszuzi', 'Szuzi', 'Indara', 'f', 'szui@yahoo.com', '76d9607f417308e4',  NULL, '0', 0, '1');
INSERT INTO otmp_Person (PersonPID, PersonKennung, PersonName, PersonVorname, PersonSex, PersonEmail, PersonPassword, PersonStatus, PersonAdminlevel, PersonPunkte, PersonUebersetzer) VALUES (3, 'chrisi', 'Goldhorn', 'Chris', 'm', 'goldhorn@citygrid.de', '0c9cea580647a65f',  NULL, '0', 0, '1');
INSERT INTO otmp_Person (PersonPID, PersonKennung, PersonName, PersonVorname, PersonSex, PersonEmail, PersonPassword, PersonStatus, PersonAdminlevel, PersonPunkte, PersonUebersetzer) VALUES (4, 'nagy', 'Nagy', 'Matthias Sylvester', 'm', 'darkpact@cs.tu-berlin.de', '5e97e40d4bcb93b6',  NULL, '1', 0, '0');

#
# Dumping data for table `otmp_Programm`
#

INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker) VALUES (1, 'StarOffice', '5.2', '0');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker) VALUES (2, 'KOffice KWord', 'ggg', '0');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker) VALUES (3, 'WordPerfect 10', 'ggg', '0');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker) VALUES (4, 'WordPerfect Office 2002', 'ggg', '0');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker) VALUES (5, 'Gnome Office AbiWord', 'ggg', '0');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker) VALUES (6, 'OpenOffice OpenWriter', 'ggg', '0');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker) VALUES (7, 'MS Word', '97', '0');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker) VALUES (8, 'MS Word', '2000', '0');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker) VALUES (9, 'MS Excel', '97', '0');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker) VALUES (10, 'MS Excel', '2000', '0');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker) VALUES (11, 'MS Word', '95', '0');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker) VALUES (12, 'MS WinWord', '6.0', '0');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker) VALUES (13, 'MS WinWord', '5.0', '0');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker) VALUES (14, 'MS Excel', '4.0', '0');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker) VALUES (15, 'MS Excel', '5.0', '0');
INSERT INTO otmp_Programm (ProgrammPRGID, ProgrammName, ProgrammVersion, ProgrammPacker) VALUES (16, 'MS Excel', '95', '0');

#
# Dumping data for table `otmp_Sprache`
#

INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung) VALUES ('1', 'Deutsch', 'de');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung) VALUES ('2', 'English', 'en');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung) VALUES ('3', 'Vietnamesisch', 'vi');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung) VALUES ('4', 'Russisch', 'ru');

#
# Dumping data for table `otmp_SystemKonto`
#


#
# Dumping data for table `otmp_Text`
#

INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (1, 1, 'Biologischer Anbau von Tee in Angola', '', '2001-12-01 23:42:46', 0, 'finished', '4', '0', 0, 1);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (2, 2, 'Solidaritätsverhalten der DDR gegenüber Nicaragua', '', '2001-12-01 23:42:46', 1000, 'open', '1', '0', 0, 1);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (3, 1, 'Biologischer Anbau von Tee in Angola', '', '2001-12-04 23:42:46', 0, 'work', '5', '0', 0, 3);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (4, 1, 'Biologischer Anbau von Tee in Angola', '', '2001-12-01 23:42:46', 0, 'open', '2', '0', 0, 0);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (5, 1, 'Biologischer Anbau von Tee in Angola', '', '2001-12-01 23:42:46', 0, 'open', '1', '0', 0, 0);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (6, 1, 'Biologischer Anbau von Tee in Angola', '', '2001-12-01 23:42:46', 0, 'open', '3', '0', 0, 0);
INSERT INTO otmp_Text (TextTID, TextOTID, TextTitel, TextAbstract, TextDatum, TextLaenge, TextStatus, TextSID, TextKID, TextFID, TextAutor) VALUES (7, 2, 'Solidaritätsverhalten der DDR gegenüber Nicaragua', '', '2001-12-07 23:42:46', 875, 'finished', '1', '0', 0, 4);

#
# Dumping data for table `otmp_UebersetzerSprachen`
#
