#
# Datenbank für OTMP
# $Id: tables.sql,v 1.19 2002/01/30 01:42:58 hifix Exp $
# $Revision: 1.19 $
#
# ----------------------------------------------------------------------
# Log for tables.sql
# ----------------------------------------------------------------------
# $Log: tables.sql,v $
# Revision 1.19  2002/01/30 01:42:58  hifix
# release 1.3
#
# Revision 1.18  2002/01/29 17:07:56  hifix
# changed Table Sprache
# prpared for Ethnocode Languages
#
# Revision 1.17  2001/12/18 23:54:25  hifix
# SpracheTabelle um EthnoCode erweitert
#
# Revision 1.16  2001/12/17 19:01:17  hifix
# added CVS Header
#

# ####################################
#   OTMP-Datenbank
# ####################################


DROP TABLE IF EXISTS otmp_Person ;
DROP TABLE IF EXISTS otmp_Adresse ;
DROP TABLE IF EXISTS otmp_Optionen ;
DROP TABLE IF EXISTS otmp_Sprache ;
DROP TABLE IF EXISTS otmp_Programm ;
DROP TABLE IF EXISTS otmp_Auftrag ;
DROP TABLE IF EXISTS otmp_Text;
DROP TABLE IF EXISTS otmp_Filetype ;
DROP TABLE IF EXISTS otmp_Kategorie ;
DROP TABLE IF EXISTS otmp_Konto ;
DROP TABLE IF EXISTS otmp_SystemKonto ;
DROP TABLE IF EXISTS otmp_BankKonto ;
DROP TABLE IF EXISTS otmp_UebersetzerSprachen;
DROP TABLE IF EXISTS otmp_PerPro;
DROP TABLE IF EXISTS otmp_PrgHasType;


# #######################################
# -------- TABELLEN  -------------------
# #######################################

CREATE TABLE otmp_Person
       (
   PersonPID    MEDIUMINT  UNSIGNED AUTO_INCREMENT  NOT NULL,
   PersonKennung    VARCHAR(20) NOT NULL,
   PersonName   VARCHAR(50) NOT NULL DEFAULT '',
   PersonVorname        VARCHAR(50),
   PersonSex    ENUM('m','f') DEFAULT NULL,
   PersonEmail    VARCHAR(255)  DEFAULT '',
   PersonPassword   VARCHAR(20) NOT NULL,
   PersonStatus   ENUM('locked','deleted')  DEFAULT NULL ,
   PersonAdminlevel TINYINT UNSIGNED DEFAULT 0,
   PersonPunkte   SMALLINT(5) UNSIGNED DEFAULT 0,
   PersonUebersetzer  ENUM('1', '0') DEFAULT '0',

   PRIMARY KEY(PersonPID)

       );

# #######################################

# ProgrammPacker 0 --> kein Packer
# ProgrammSort DEFAULT 255, falls nicht gegeben, dann am Ende der Liste

CREATE TABLE otmp_Programm (
  ProgrammPRGID smallint(5) unsigned NOT NULL auto_increment,
  ProgrammName varchar(50) NOT NULL default '',
  ProgrammVersion varchar(20) NOT NULL default '',
  ProgrammPacker enum('0','1') default '0',
  ProgrammSort tinyint(3) unsigned default '255',
  PRIMARY KEY  (ProgrammPRGID,ProgrammVersion)
);

CREATE TABLE otmp_PrgHasType (
  prtPRGID smallint(5) unsigned NOT NULL default '0',
  prtFID smallint(5) unsigned NOT NULL default '0',
  prtDefault enum('0','1') NOT NULL default '0',
  prtSortOrder tinyint(3) unsigned default NULL,
  PRIMARY KEY  (prtPRGID,prtFID),
  KEY prtPRGID (prtPRGID,prtFID)
);


# #####################################

# FiletypePRGID --> Fremdschluessel von der Tabelle Programm, also ProgrammPRGID
# FiletypeSort DEFAULT 255, falls nicht gegeben, dann am Ende der Liste.
# FiletypeType 0 kein Packer, 1 Packer

CREATE TABLE otmp_Filetype (
  FiletypeFID smallint(5) unsigned NOT NULL auto_increment,
  FiletypeType varchar(5) default '---',
  FiletypeNote varchar(100) default NULL,
  PRIMARY KEY  (FiletypeFID)
);


# ######################################

# AdressePID --> PersonPID

CREATE TABLE otmp_Adresse
       (
         AdressePID   MEDIUMINT UNSIGNED NOT NULL,
   AdresseLand    VARCHAR(30),
   AdresseStadt   VARCHAR(30),
   AdresseTel   VARCHAR(25),

         PRIMARY KEY(AdressePID)

       );

# #######################################

# OptionenPID --> PersonPID

CREATE TABLE otmp_Optionen
       (
         OptionenPID    MEDIUMINT UNSIGNED NOT NULL,
   OptionenSprachGUI  VARCHAR(20),
   OptionenPublicEmail  ENUM('y','n') DEFAULT 'n',
   OptionenSecureGUI  VARCHAR(20),
   OptionenMutterSprache  VARCHAR(30),

  PRIMARY KEY(OptionenPID)
       );


########################################
#   Sprache
########################################

CREATE TABLE otmp_Sprache (
  SpracheSID smallint(5) unsigned NOT NULL auto_increment,
  SpracheName varchar(50) NOT NULL default '',
  SpracheAbkuerzung char(3) default NULL,
  SpracheEthnoCode varchar(4) default NULL,
  SpracheAltNamen varchar(255) default NULL,
  SpracheFamilie varchar(30) default NULL,
  SpracheLink_fam varchar(50) default NULL,
  SpracheSort tinyint(3) unsigned default '255',
  PRIMARY KEY  (SpracheSID)
);



# #####################################

CREATE TABLE otmp_Kategorie
       (
   KategorieKID       TINYINT(3) UNSIGNED NOT NULL,
   KategorieName    VARCHAR(60) NOT NULL,
   KategorieSort      TINYINT UNSIGNED DEFAULT 255,

  PRIMARY KEY(KategorieKID)
       );

# #####################################

# OTID = Original Text ID
# NTID = neue Text ID
# UEID = Uebersetzer ID
# NID  = Nutzer ID
#

CREATE TABLE otmp_Auftrag
       (
   AuftragAID   MEDIUMINT  UNSIGNED AUTO_INCREMENT  NOT NULL,
   AuftragOTID    MEDIUMINT  UNSIGNED NOT NULL DEFAULT 0,
   AuftragNTID    MEDIUMINT  UNSIGNED NOT NULL DEFAULT 0,
   AuftragDatum   DateTIME NOT NULL DEFAULT '0000-00-00 00:00:00'  ,
   AuftragNID MEDIUMINT UNSIGNED NOT NULL,
   AuftragTransDatum  DATE DEFAULT '0000-00-00',
   AuftragBisDatum  DATE DEFAULT '0000-00-00',


  PRIMARY KEY(AuftragAID)

       );

# #####################################

# OTID = Original Text ID
# TID = Text ID
# TextSID = SpracheSID
# TextKID = KategorieKID
# TextFID = FiletypeFID
# TextAutor = PersonPID

CREATE TABLE otmp_Text
       (
   TextTID    MEDIUMINT  UNSIGNED AUTO_INCREMENT  NOT NULL,
   TextOTID   MEDIUMINT  UNSIGNED NOT NULL DEFAULT 0,
   TextTitel    VARCHAR(200) NOT NULL,
   TextAbstract   TINYTEXT,
   TextDatum    Datetime NOT NULL DEFAULT '0000-00-00 00:00:00'  ,
   TextLaenge   MEDIUMINT  UNSIGNED DEFAULT 0,
   TextStatus   ENUM('open','finished','work') NOT NULL DEFAULT 'open',
   TextSID          TINYINT(3) UNSIGNED NOT NULL DEFAULT 0,
   TextKID          TINYINT(3) UNSIGNED NOT NULL DEFAULT 0,
   TextFID    SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0,
   TextAutor    MEDIUMINT  UNSIGNED NOT NULL DEFAULT 0,

   PRIMARY KEY (TextTID)
  ) ;

# ###################################

# KontoPID = PersonPID

CREATE TABLE otmp_Konto
       (
       KontoPID   MEDIUMINT  UNSIGNED NOT NULL,
   KontoKontoNr   INT(15) UNSIGNED NOT NULL,
   KontoName    VARCHAR(20),
   KontoType    VARCHAR(20),

  PRIMARY KEY(KontoPID)
       );

# ###################################

# SystemKontoPID = PersonPID

CREATE TABLE otmp_SystemKonto
       (
   SystemKontoPID   MEDIUMINT  UNSIGNED NOT NULL,
   SystemKontoGuthaben  SMALLINT(5) DEFAULT 0,
   SystemKontoPunkte  SMALLINT(5) DEFAULT 0,

  PRIMARY KEY(SystemKontoPID)

       );

# #####################################

# BankKontoPID = PersonPID

CREATE TABLE otmp_BankKonto
       (
   BankKontoPID   MEDIUMINT  UNSIGNED NOT NULL,
   BankKontoBank    VARCHAR(30),
   BankKontoBLZ   VARCHAR(20) NOT NULL,
   BankKontoKontoNr INT(15) UNSIGNED NOT NULL,

  PRIMARY KEY(BankKontoKontoNr,BankKontoBLZ)

       );

# #######################################################
# #######################################################

# ------------- Relationen als Tabellen ---------------

# #######################################################
# #######################################################


# PerPro = Relatioship zwischen Person und Programm
# PerProPRGID --> Fremdschluessel von der Tabelle Programm, also ProgrammPRGID
# PerProPID --> Fremdschluessel von der Tabelle Person, also PersonPID


CREATE TABLE otmp_PerPro
       (
   PerProPRGID    SMALLINT(5) UNSIGNED NOT NULL,
   PerProPID    MEDIUMINT UNSIGNED NOT NULL,

  PRIMARY KEY(PerProPRGID,PerProPID)
       );




# ##############################################################

# UebersetzerSprachenAuto, zeigt ob dieser Eintrag automatisch (-->1) oder vom Uebersetzer
# eingetragen wurde (0)
# UebersetzerSprachenUEID = PersonPID
# UebersetzerSprachenVovSID = SpracheSID
# UebersetzerSprachenNachSID =SpracheSID
# UebersetzerSprachenKID = KategorieKID

CREATE TABLE otmp_UebersetzerSprachen
       (
  UebersetzerSprachenUEID   MEDIUMINT  UNSIGNED NOT NULL,
  UebersetzerSprachenVonSID TINYINT(3) UNSIGNED NOT NULL,
  UebersetzerSprachenNachSID  TINYINT(3) UNSIGNED NOT NULL,
  UebersetzerSprachenKID    TINYINT(3) UNSIGNED NOT NULL,
  UebersetzerSprachenAuto   ENUM('0','1') DEFAULT '0',

  PRIMARY KEY(UebersetzerSprachenUEID,UebersetzerSprachenVonSID,UebersetzerSprachenNachSID,UebersetzerSprachenKID)

       );

















