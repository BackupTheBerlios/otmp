# phpMyAdmin MySQL-Dump
# version 2.2.2-rc1
# http://phpwizard.net/phpMyAdmin/
# http://phpmyadmin.sourceforge.net/ (download page)
#
# Host: ou812
# Generation Time: Dec 04, 2001 at 09:46 PM
# Server version: 3.23.32
# PHP Version: 4.0.4pl1
# Database : `otmp`
# --------------------------------------------------------

#
# Table structure for table `otmp_Administrator`
#

DROP TABLE IF EXISTS otmp_Administrator;
CREATE TABLE otmp_Administrator (
  AdministratorAID char(20) NOT NULL default '',
  PRIMARY KEY (AdministratorAID)
) TYPE=MyISAM;

#
# Dumping data for table `otmp_Administrator`
#

# --------------------------------------------------------

#
# Table structure for table `otmp_Adresse`
#

DROP TABLE IF EXISTS otmp_Adresse;
CREATE TABLE otmp_Adresse (
  PersonPID varchar(20) NOT NULL default '',
  AdresseLand varchar(20) default NULL,
  AdresseStadt varchar(20) default NULL,
  AdresseTel varchar(20) default NULL,
  PRIMARY KEY (PersonPID)
) TYPE=MyISAM;

#
# Dumping data for table `otmp_Adresse`
#

# --------------------------------------------------------

#
# Table structure for table `otmp_Auftrag`
#

DROP TABLE IF EXISTS otmp_Auftrag;
CREATE TABLE otmp_Auftrag (
  AuftragAID int(20) NOT NULL auto_increment,
  AuftragTitel varchar(20) NOT NULL default '',
  AuftragDatum date default NULL,
  AuftragFrist varchar(10) default NULL,
  AuftragUmfang varchar(20) default NULL,
  AuftragStatus varchar(20) default 'in der Bearbeitung',
  AuftragPfad varchar(30) NOT NULL default '',
  NutzerNID varchar(20) NOT NULL default '',
  UebersetzerUEID varchar(20) default NULL,
  VonSpracheAbkuerzung char(3) NOT NULL default '',
  NachSpracheAbkuerzung char(3) NOT NULL default '',
  FileyypeType varchar(20) default NULL,
  KategorieName varchar(20) default NULL,
  PRIMARY KEY (AuftragAID)
) TYPE=MyISAM;

#
# Dumping data for table `otmp_Auftrag`
#

# --------------------------------------------------------

#
# Table structure for table `otmp_BankKonto`
#

DROP TABLE IF EXISTS otmp_BankKonto;
CREATE TABLE otmp_BankKonto (
  BankKontoPID varchar(20) default NULL,
  BankKontoBank varchar(20) default NULL,
  BankKontoBLZ varchar(20) NOT NULL default '',
  BankKontoKontoNr int(15) NOT NULL default '0',
  PRIMARY KEY (BankKontoKontoNr,BankKontoBLZ)
) TYPE=MyISAM;

#
# Dumping data for table `otmp_BankKonto`
#

# --------------------------------------------------------

#
# Table structure for table `otmp_Filetype`
#

DROP TABLE IF EXISTS otmp_Filetype;
CREATE TABLE otmp_Filetype (
  FiletypeType varchar(20) NOT NULL default '',
  ProgrammName varchar(20) default NULL,
  PRIMARY KEY (FiletypeType)
) TYPE=MyISAM;

#
# Dumping data for table `otmp_Filetype`
#

# --------------------------------------------------------

#
# Table structure for table `otmp_Kategorie`
#

DROP TABLE IF EXISTS otmp_Kategorie;
CREATE TABLE otmp_Kategorie (
  KategorieName varchar(20) NOT NULL default '',
  KategorieSprache varchar(20) NOT NULL default '',
  PRIMARY KEY (KategorieName,KategorieSprache)
) TYPE=MyISAM;

#
# Dumping data for table `otmp_Kategorie`
#

# --------------------------------------------------------

#
# Table structure for table `otmp_KenntSichAus`
#

DROP TABLE IF EXISTS otmp_KenntSichAus;
CREATE TABLE otmp_KenntSichAus (
  UebersetzerUEID varchar(20) default NULL,
  KategorieName varchar(20) default NULL
) TYPE=MyISAM;

#
# Dumping data for table `otmp_KenntSichAus`
#

INSERT INTO otmp_KenntSichAus (UebersetzerUEID, KategorieName) VALUES ('111', 'Geisteswissenschafte');
INSERT INTO otmp_KenntSichAus (UebersetzerUEID, KategorieName) VALUES ('111', 'Medizin');
INSERT INTO otmp_KenntSichAus (UebersetzerUEID, KategorieName) VALUES ('111', 'nicht Wissenschaftli');
# --------------------------------------------------------

#
# Table structure for table `otmp_Konto`
#

DROP TABLE IF EXISTS otmp_Konto;
CREATE TABLE otmp_Konto (
  KontoKontoNr int(15) NOT NULL default '0',
  KontoName varchar(20) default NULL,
  KontoType varchar(20) default NULL,
  PersonPID varchar(20) NOT NULL default '',
  PRIMARY KEY (PersonPID)
) TYPE=MyISAM;

#
# Dumping data for table `otmp_Konto`
#

# --------------------------------------------------------

#
# Table structure for table `otmp_Nutzer`
#

DROP TABLE IF EXISTS otmp_Nutzer;
CREATE TABLE otmp_Nutzer (
  NutzerNID char(20) NOT NULL default '',
  PRIMARY KEY (NutzerNID)
) TYPE=MyISAM;

#
# Dumping data for table `otmp_Nutzer`
#

# --------------------------------------------------------

#
# Table structure for table `otmp_Optionen`
#

DROP TABLE IF EXISTS otmp_Optionen;
CREATE TABLE otmp_Optionen (
  PersonPID varchar(20) NOT NULL default '',
  OptionenSprachGUI varchar(20) default NULL,
  OptionenPublicEmail char(1) NOT NULL default '',
  OptionenSecureGUI varchar(20) default NULL,
  OptionenMutterSprache varchar(20) default NULL,
  PRIMARY KEY (PersonPID)
) TYPE=MyISAM;

#
# Dumping data for table `otmp_Optionen`
#

# --------------------------------------------------------

#
# Table structure for table `otmp_PerHatProg`
#

DROP TABLE IF EXISTS otmp_PerHatProg;
CREATE TABLE otmp_PerHatProg (
  PersonPID varchar(20) NOT NULL default '',
  ProgrammName varchar(20) NOT NULL default '',
  PRIMARY KEY (PersonPID,ProgrammName)
) TYPE=MyISAM;

#
# Dumping data for table `otmp_PerHatProg`
#

INSERT INTO otmp_PerHatProg (PersonPID, ProgrammName) VALUES ('111', 'KOffice');
INSERT INTO otmp_PerHatProg (PersonPID, ProgrammName) VALUES ('111', 'StarOffice');
# --------------------------------------------------------

#
# Table structure for table `otmp_Person`
#

DROP TABLE IF EXISTS otmp_Person;
CREATE TABLE otmp_Person (
  PersonPID varchar(20) NOT NULL default '',
  LoginName varchar(30) NOT NULL default '',
  PersonName varchar(20) NOT NULL default '',
  PersonVorname varchar(20) default NULL,
  PersonSex char(1) default NULL,
  PersonEmail varchar(40) default NULL,
  PersonPassword varchar(20) NOT NULL default '',
  PersonStatus varchar(20) default 'nicht gesperrt',
  PRIMARY KEY (PersonPID)
) TYPE=MyISAM;

#
# Dumping data for table `otmp_Person`
#

INSERT INTO otmp_Person (PersonPID, LoginName, PersonName, PersonVorname, PersonSex, PersonEmail, PersonPassword, PersonStatus) VALUES ('111', 'mehmet', 'Scholl', 'Mehmet',  NULL, 'mehmet@web.de', '7c32ca2e49046ad7', 'nicht gesperrt');
# --------------------------------------------------------

#
# Table structure for table `otmp_Programm`
#

DROP TABLE IF EXISTS otmp_Programm;
CREATE TABLE otmp_Programm (
  ProgrammName varchar(20) NOT NULL default '',
  ProgrammVersion varchar(20) NOT NULL default '',
  PRIMARY KEY (ProgrammName,ProgrammVersion)
) TYPE=MyISAM;

#
# Dumping data for table `otmp_Programm`
#

# --------------------------------------------------------

#
# Table structure for table `otmp_Sprache`
#

DROP TABLE IF EXISTS otmp_Sprache;
CREATE TABLE otmp_Sprache (
  SpracheName varchar(20) default NULL,
  SpracheAbkuerzung char(3) NOT NULL default '',
  PRIMARY KEY (SpracheAbkuerzung)
) TYPE=MyISAM;

#
# Dumping data for table `otmp_Sprache`
#

INSERT INTO otmp_Sprache (SpracheName, SpracheAbkuerzung) VALUES ('Deutsch', 'DE');
INSERT INTO otmp_Sprache (SpracheName, SpracheAbkuerzung) VALUES ('Englisch', 'EN');
INSERT INTO otmp_Sprache (SpracheName, SpracheAbkuerzung) VALUES ('Französisch', 'FR');
INSERT INTO otmp_Sprache (SpracheName, SpracheAbkuerzung) VALUES ('Spanisch', 'ES');
# --------------------------------------------------------

#
# Table structure for table `otmp_SystemKonto`
#

DROP TABLE IF EXISTS otmp_SystemKonto;
CREATE TABLE otmp_SystemKonto (
  SystemKontoPID varchar(20) NOT NULL default '',
  SystemKontoGuthaben varchar(20) default NULL,
  SystemKontoPunkte int(20) default NULL
) TYPE=MyISAM;

#
# Dumping data for table `otmp_SystemKonto`
#

# --------------------------------------------------------

#
# Table structure for table `otmp_Uebersetzer`
#

DROP TABLE IF EXISTS otmp_Uebersetzer;
CREATE TABLE otmp_Uebersetzer (
  UebersetzerUEID char(20) NOT NULL default '',
  UebersetzerPunkte int(10) default NULL,
  PRIMARY KEY (UebersetzerUEID)
) TYPE=MyISAM;

#
# Dumping data for table `otmp_Uebersetzer`
#

INSERT INTO otmp_Uebersetzer (UebersetzerUEID, UebersetzerPunkte) VALUES ('111',  NULL);
# --------------------------------------------------------

#
# Table structure for table `otmp_UebersetzerNachSprache`
#

DROP TABLE IF EXISTS otmp_UebersetzerNachSprache;
CREATE TABLE otmp_UebersetzerNachSprache (
  UebersetzerUEID char(20) default NULL,
  SpracheAbkuerzung char(3) default NULL
) TYPE=MyISAM;

#
# Dumping data for table `otmp_UebersetzerNachSprache`
#

INSERT INTO otmp_UebersetzerNachSprache (UebersetzerUEID, SpracheAbkuerzung) VALUES ('111', 'DE');
INSERT INTO otmp_UebersetzerNachSprache (UebersetzerUEID, SpracheAbkuerzung) VALUES ('111', 'EN');
# --------------------------------------------------------

#
# Table structure for table `otmp_UebersetzerVonSprache`
#

DROP TABLE IF EXISTS otmp_UebersetzerVonSprache;
CREATE TABLE otmp_UebersetzerVonSprache (
  UebersetzerUEID char(20) default NULL,
  SpracheAbkuerzung char(3) default NULL
) TYPE=MyISAM;

#
# Dumping data for table `otmp_UebersetzerVonSprache`
#

INSERT INTO otmp_UebersetzerVonSprache (UebersetzerUEID, SpracheAbkuerzung) VALUES ('111', 'DE');
INSERT INTO otmp_UebersetzerVonSprache (UebersetzerUEID, SpracheAbkuerzung) VALUES ('111', 'ES');
INSERT INTO otmp_UebersetzerVonSprache (UebersetzerUEID, SpracheAbkuerzung) VALUES ('111', 'EN');
INSERT INTO otmp_UebersetzerVonSprache (UebersetzerUEID, SpracheAbkuerzung) VALUES ('111', 'FR');

