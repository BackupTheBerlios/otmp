#
# Datenbank für OTMP
# $Id: tables.sql,v 1.16 2001/12/17 19:01:17 hifix Exp $
# $Revision: 1.16 $
#
# ----------------------------------------------------------------------
# Log for tables.sql
# ----------------------------------------------------------------------
# $Log: tables.sql,v $
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

CREATE TABLE otmp_Programm
       (
   ProgrammPRGID    SMALLINT(5) UNSIGNED AUTO_INCREMENT NOT NULL,
   ProgrammName     VARCHAR(50) NOT NULL,
   ProgrammVersion  VARCHAR(20) NOT NULL,
   ProgrammPacker   ENUM('0','1') DEFAULT '0',
   ProgrammSort     TINYINT UNSIGNED DEFAULT 255,

  PRIMARY KEY(ProgrammPRGID,ProgrammVersion)
       );

# #####################################

# FiletypePRGID --> Fremdschluessel von der Tabelle Programm, also ProgrammPRGID
# FiletypeSort DEFAULT 255, falls nicht gegeben, dann am Ende der Liste.
# FiletypeType 0 kein Packer, 1 Packer

CREATE TABLE otmp_Filetype
       (
   FiletypeFID    SMALLINT(5) UNSIGNED AUTO_INCREMENT NOT NULL,
   FiletypePRGID    SMALLINT(5) UNSIGNED NOT NULL,
   FiletypeType   VARCHAR(5) DEFAULT '---',
   FiletypeSort     TINYINT UNSIGNED DEFAULT 255,

  PRIMARY KEY(FiletypeFID)
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

# #######################################

CREATE TABLE otmp_Sprache
(
  SpracheSID         TINYINT(3) UNSIGNED AUTO_INCREMENT NOT NULL,
  SpracheName        VARCHAR(40) NOT NULL,
  SpracheAbkuerzung  CHAR(3) NOT NULL DEFAULT '---',
  SpracheSort        TINYINT UNSIGNED DEFAULT 255,

PRIMARY KEY(SpracheSID)
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

















