#
# Beispielsql für OTMP
# $Id: examples.sql,v 1.6 2001/12/14 17:31:15 hifix Exp $
# $Revision: 1.6 $
#
# ----------------------------------------------------------------------
# Log for examples.sql
# ----------------------------------------------------------------------
# $Log: examples.sql,v $
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
# Diese Version wurde zuletzt mit Revision 1.14 der tables.sql getestet.
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
INSERT INTO otmp_Kategorie (KategorieKID, KategorieName, KategorieSort) VALUES ('100', 'Nichtwissenschaftlich', '90');
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


#
# Dumping data for table `otmp_Person`
#

INSERT INTO otmp_Person (PersonPID, PersonKennung, PersonName, PersonVorname, PersonSex, PersonEmail, PersonPassword, PersonStatus, PersonAdminlevel, PersonPunkte, PersonUebersetzer) VALUES (1, 'feb', 'Borchers', 'Felix', 'm', 'hifix@citygrid.de', '627364d648719f7b',  NULL, '0', 0, '0');
INSERT INTO otmp_Person (PersonPID, PersonKennung, PersonName, PersonVorname, PersonSex, PersonEmail, PersonPassword, PersonStatus, PersonAdminlevel, PersonPunkte, PersonUebersetzer) VALUES (2, 'iszuzi', 'Szuzi', 'Indara', 'f', 'szui@yahoo.com', '76d9607f417308e4',  NULL, '0', 0, '1');
INSERT INTO otmp_Person (PersonPID, PersonKennung, PersonName, PersonVorname, PersonSex, PersonEmail, PersonPassword, PersonStatus, PersonAdminlevel, PersonPunkte, PersonUebersetzer) VALUES (3, 'chrisi', 'Goldhorn', 'Chris', 'm', 'goldhorn@citygrid.de', '0c9cea580647a65f',  NULL, '0', 0, '1');
INSERT INTO otmp_Person (PersonPID, PersonKennung, PersonName, PersonVorname, PersonSex, PersonEmail, PersonPassword, PersonStatus, PersonAdminlevel, PersonPunkte, PersonUebersetzer) VALUES (4, 'hachen', 'Nagy', 'Matthias Sylvester', 'm', 'darkpact@cs.tu-berlin.de', '5e97e40d4bcb93b6',  NULL, '1', 0, '0');

#
# Dumping data for table `otmp_Programm`
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
# Dumping data for table `otmp_Sprache`
#

INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('1', 'Afar', 'aa', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('2', 'Armenisch', 'hy', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('3', 'Quechua', 'qu', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('4', 'Abchasisch', 'ab', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('5', 'Interlingua', 'ia', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('6', 'Rätoromanisch', 'rm', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('7', 'Afrikaans', 'af', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('8', 'Indonesisch', 'id', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('9', 'Kirundisch', 'rn', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('10', 'Amharisch', 'am', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('11', 'Interlingue', 'ie', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('12', 'Rumänisch', 'ro', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('13', 'Arabisch', 'ar', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('14', 'Inupiak', 'ik', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('15', 'Russisch', 'ru', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('16', 'Assamesisch', 'as', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('17', 'Isländisch', 'is', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('18', 'Kijarwanda', 'rw', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('19', 'Aymara', 'ay', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('20', 'Italienisch', 'it', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('21', 'Sanskrit', 'sa', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('22', 'Aserbaidschanisch', 'az', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('23', 'Inuktitut', 'iu', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('24', 'Zinti', 'sd', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('25', 'Baschkirisch', 'ba', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('26', 'Japanisch', 'ja', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('27', 'Sango', 'sg', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('28', 'Belorussisch', 'be', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('29', 'Javanisch', 'jw', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('30', 'Serbokroatisch', 'sh', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('31', 'Bulgarisch', 'bg', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('32', 'Georgisch', 'ka', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('33', 'Singhalesisch', 'si', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('34', 'Biharisch', 'bh', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('35', 'Kasachisch', 'kk', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('36', 'Slowakisch', 'sk', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('37', 'Bislamisch', 'bi', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('38', 'Kalaallisut (Grönländisch)', 'kl', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('39', 'Slowenisch', 'sl', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('40', 'Bengalisch', 'bn', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('41', 'Kambodschanisch', 'km', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('42', 'Samoanisch', 'sm', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('43', 'Tibetanisch', 'bo', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('44', 'Kannada', 'kn', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('45', 'Schonisch', 'sn', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('46', 'Bretonisch', 'br', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('47', 'Koreanisch', 'ko', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('48', 'Somalisch', 'so', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('49', 'Katalanisch', 'ca', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('50', 'Kaschmirisch', 'ks', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('51', 'Albanisch', 'sq', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('52', 'Korsisch', 'co', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('53', 'Kurdisch', 'ku', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('54', 'Serbisch', 'sr', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('55', 'Tschechisch', 'cs', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('56', 'Kornisch', 'kw', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('57', 'Swasiländisch', 'ss', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('58', 'Walisisch', 'cy', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('59', 'Kirgisisch', 'ky', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('60', 'Sesothisch', 'st', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('61', 'Dänisch', 'da', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('62', 'Lateinisch', 'la', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('63', 'Sudanesisch', 'su', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('64', 'Deutsch', 'de', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('65', 'Luxemburgisch', 'lb', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('66', 'Schwedisch', 'sv', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('67', 'Dzongkha; Bhutani', 'dz', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('68', 'Lingala sw Suaheli', 'ln', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('69', 'Griechisch', 'el', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('70', 'Laotisch', 'lo', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('71', 'Tamilisch', 'ta', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('72', 'Englisch', 'en', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('73', 'Litauisch', 'lt', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('74', 'Telugu', 'te', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('75', 'Esperanto', 'eo', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('76', 'Lettisch', 'lv', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('77', 'Tadschikisch', 'tg', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('78', 'Spanisch', 'es', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('79', 'Malagasisch', 'mg', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('80', 'Thai', 'th', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('81', 'Estnisch', 'et', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('82', 'Maorisch', 'mi', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('83', 'Tigrinja', 'ti', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('84', 'Baskisch', 'eu', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('85', 'Mazedonisch', 'mk', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('86', 'Turkmenisch', 'tk', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('87', 'Persisch', 'fa', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('88', 'Malajalam', 'ml', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('89', 'Tagalog', 'tl', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('90', 'Finnisch', 'fi', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('91', 'Mongolisch', 'mn', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('92', 'Sezuan', 'tn', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('93', 'Fiji', 'fj', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('94', 'Moldavisch', 'mo', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('95', 'Tongaisch', 'to', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('96', 'Faröisch', 'fo', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('97', 'Marathi', 'mr', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('98', 'Türkisch', 'tr', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('99', 'Französisch', 'fr', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('100', 'Malaysisch', 'ms', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('101', 'Tsongaisch', 'ts', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('102', 'Friesisch', 'fy', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('103', 'Maltesisch', 'mt', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('104', 'Tatarisch', 'tt', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('105', 'Irisch', 'ga', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('106', 'Burmesisch', 'my', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('107', 'Twi', 'tw', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('108', 'Schottisches Gälisch', 'gd', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('109', 'Nauruisch', 'na', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('110', 'Ukrainisch', 'uk', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('111', 'Galizisch', 'gl', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('112', 'Nepalisch', 'ne', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('113', 'Urdu', 'ur', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('114', 'Guarani', 'gn', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('115', 'Holländisch', 'nl', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('116', 'Usbekisch', 'uz', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('117', 'Gujaratisch', 'gu', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('118', 'Norwegisch', 'no', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('119', 'Vietnamesisch', 'vi', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('120', 'Gälisch der Ile of Man', 'gv', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('121', 'Okzitanisch', 'oc', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('122', 'Volapük', 'vo', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('123', 'Haussa', 'ha', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('124', 'Oromo', 'om', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('125', 'Wolof', 'wo', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('126', 'Hebräisch', 'he', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('127', 'Orija', 'or', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('128', 'Xhosa', 'xh', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('129', 'Hindi', 'hi', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('130', 'Pundjabisch', 'pa', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('131', 'Jiddish', 'yi', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('132', 'Kroatisch', 'hr', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('133', 'Polnisch', 'pl', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('134', 'Joruba', 'yo', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('135', 'Ungarisch', 'hu', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('136', 'Paschtu', 'ps', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('137', 'Zhuang', 'za', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('138', 'Armenisch', 'hy', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('139', 'Portugiesisch', 'pt', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('140', 'Chinesisch', 'zh', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('141', 'Interlingua', 'ia', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('142', 'Quechua', 'qu', '255');
INSERT INTO otmp_Sprache (SpracheSID, SpracheName, SpracheAbkuerzung, SpracheSort) VALUES ('143', 'Zulu', 'zu', '255');

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
