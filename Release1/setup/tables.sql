# $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/setup/tables.sql,v $
# $Revision: 1.8 $
# $Id: tables.sql,v 1.8 2001/12/05 23:36:19 hifix Exp $
# -------------------------------------------------------------
# $Log: tables.sql,v $
# Revision 1.8  2001/12/05 23:36:19  hifix
# CVS comments added
# minor changes in some default values
#
# -------------------------------------------------------------
# ####################################
# 	OTMP-Datenbank
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
DROP TABLE IF EXISTS otmp_PerHatProg ;
DROP TABLE IF EXISTS otmp_UebersetzerSprachen; 
DROP TABLE IF EXISTS otmp_PerPro;

# #######################################
# -------- TABELLEN  -------------------
# #######################################

CREATE TABLE otmp_Person 
       ( 
	 PersonPID		MEDIUMINT  UNSIGNED AUTO_INCREMENT	NOT NULL,	 
	 PersonKennung		VARCHAR(20)	NOT NULL,
	 PersonName		VARCHAR(20)	NOT NULL,
	 PersonVorname	     	VARCHAR(20), 
	 PersonSex		CHAR(1), 
	 PersonEmail		VARCHAR(100), 
	 PersonPassword		VARCHAR(20)	NOT NULL,
	 PersonStatus		VARCHAR(20)	DEFAULT 'nicht gesperrt' ,
	 PersonAdmin		CHAR(1)		DEFAULT	'0',
	 PersonPunkte	 	SMALLINT(5) DEFAULT 0,	
	 PersonType		ENUM('Nutzer', 'Uebersetzer', 'Administrator') DEFAULT 'Nutzer', 

	 PRIMARY KEY(PersonPID)
	 
       );

# #######################################
 
# ProgrammPacker 0 --> kein Packer

CREATE TABLE otmp_Programm 
       ( 
	 ProgrammPRGID	        SMALLINT(5) UNSIGNED AUTO_INCREMENT NOT NULL,
	 ProgrammName		VARCHAR(20)	NOT NULL,
	 ProgrammVersion	VARCHAR(20)	NOT NULL, 
	 ProgrammPacker		ENUM('0','1') DEFAULT '0',

	PRIMARY KEY(ProgrammPRGID)
       );

# #####################################

CREATE TABLE otmp_Filetype 
       ( 
	 FiletypeFID		SMALLINT(5) UNSIGNED AUTO_INCREMENT NOT NULL,
	 FiletypePRGID		SMALLINT(5) UNSIGNED NOT NULL,
	 FiletypeType		VARCHAR(5) NOT NULL DEFAULT '-',

	PRIMARY KEY(FiletypeFID)
       );

# ######################################

# PerPro = Relatioship zwischen Person und Programm

CREATE TABLE otmp_PerPro 
       ( 
	 PerProPRGID		SMALLINT(5) UNSIGNED NOT NULL,
	 PerProPID		MEDIUMINT UNSIGNED NOT NULL,

	PRIMARY KEY(PerProPRGID,PerProPID)
       );

# ######################################

CREATE TABLE otmp_Adresse 
       ( 
         AdressePID		MEDIUMINT UNSIGNED NOT NULL,
	 AdresseLand		VARCHAR(30),
	 AdresseStadt		VARCHAR(30), 
	 AdresseTel		VARCHAR(25), 

         PRIMARY KEY(AdressePID)
	
       );

# #######################################

CREATE TABLE otmp_Optionen 
       ( 
         OptionenPID		MEDIUMINT UNSIGNED NOT NULL,
	 OptionenSprachGUI	VARCHAR(20),
	 OptionenPublicEmail	CHAR(1) DEFAULT '0', 
	 OptionenSecureGUI	VARCHAR(20), 
	 OptionenMutterSprache	VARCHAR(20), 

	PRIMARY KEY(OptionenPID)
       );

# #######################################

CREATE TABLE otmp_Sprache
       ( 
	 SpracheSID	        TINYINT(3) UNSIGNED AUTO_INCREMENT NOT NULL, 	
	 SpracheName		VARCHAR(25) NOT NULL,
	 SpracheAbkuerzung	CHAR(3)	NOT NULL DEFAULT '-', 

	PRIMARY KEY(SpracheSID)

       );

# #####################################

CREATE TABLE otmp_Kategorie 
       ( 
	 KategorieKID      	TINYINT(3) UNSIGNED NOT NULL,
	 KategorieName		VARCHAR(60)	NOT NULL,

	PRIMARY KEY(KategorieKID)
       );

# #####################################

# OTID = Original Text ID
# NTID = neue Text ID
# UEID = Uebersetzer ID
# NID  = Nutzer ID

CREATE TABLE otmp_Auftrag 
       ( 
	 AuftragAID		MEDIUMINT  UNSIGNED AUTO_INCREMENT	NOT NULL,	 
	 AuftragOTID		MEDIUMINT  UNSIGNED NOT NULL DEFAULT 0,	 
	 AuftragNTID		MEDIUMINT  UNSIGNED NOT NULL DEFAULT 0,	 
	 AuftragStatus	ENUM('open','finished','work','hold','deleted') NOT NULL DEFAULT 'open',
	 AuftragDatum		DateTIME NOT NULL DEFAULT '0000-00-00 00:00:00'  , 
	 AuftragNID	MEDIUMINT UNSIGNED NOT NULL,
	 AuftragUEID	MEDIUMINT UNSIGNED NOT NULL DEFAULT 0, 
	 AuftragTransDatum	DATE DEFAULT '0000-00-00', 
	 AuftragBisDatum	DATE DEFAULT '0000-00-00', 


	PRIMARY KEY(AuftragAID)

       );

# #####################################

# OTID = Original Text ID

CREATE TABLE otmp_Text 
       ( 
	 TextTID		MEDIUMINT  UNSIGNED AUTO_INCREMENT	NOT NULL,	 
	 TextOTID		MEDIUMINT  UNSIGNED NOT NULL DEFAULT 0,	 
	 TextTitel		VARCHAR(200) NOT NULL,
	 TextAbstract		TINYTEXT,
	 TextDatum		Datetime NOT NULL DEFAULT '0000-00-00 00:00:00'  , 
	 TextLaenge		MEDIUMINT  UNSIGNED DEFAULT 0,	 
	 TextStatus		ENUM('open','finished','work') NOT NULL DEFAULT 'open',
	 TextSID	        TINYINT(3) UNSIGNED NOT NULL DEFAULT 0, 		 
	 TextKID      		TINYINT(3) UNSIGNED NOT NULL DEFAULT 0,
	 TextFID		SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0,
	 TextAutor		MEDIUMINT  UNSIGNED NOT NULL DEFAULT 0,	 

	 PRIMARY KEY (TextTID) 
	) ;

# ###################################

CREATE TABLE otmp_Konto
       ( 
    	 KontoPID		MEDIUMINT  UNSIGNED NOT NULL,	 
	 KontoKontoNr		INT(15)		NOT NULL, 
	 KontoName		VARCHAR(20),
	 KontoType		VARCHAR(20),

	PRIMARY KEY(KontoPID)
       );

# ###################################
 
CREATE TABLE otmp_SystemKonto 
       ( 
	 SystemKontoPID		MEDIUMINT  UNSIGNED NOT NULL,	 
	 SystemKontoGuthaben	SMALLINT(5) DEFAULT 0,	
	 SystemKontoPunkte	SMALLINT(5) DEFAULT 0,	

	PRIMARY KEY(SystemKontoPID)

       );

# #####################################

CREATE TABLE otmp_BankKonto 
       ( 
	 BankKontoPID		MEDIUMINT  UNSIGNED NOT NULL,	 
	 BankKontoBank		VARCHAR(30), 
	 BankKontoBLZ		VARCHAR(20)	NOT NULL,
	 BankKontoKontoNr	INT(15)		NOT NULL,
	
	PRIMARY KEY(BankKontoKontoNr,BankKontoBLZ)

       );

# #######################################################
# #######################################################

# ------------- Relationen als Tabellen ---------------

# #######################################################
# #######################################################

CREATE TABLE otmp_PerHatProg 
       ( 
	PerHatProgPID		MEDIUMINT  UNSIGNED NOT NULL,	 
	PerHatProgPRGID		SMALLINT(5) UNSIGNED NOT NULL,
	 
	PRIMARY KEY(PerHatProgPID,PerHatProgPRGID)
       );

# ##############################################################

# UebersetzerSprachenAuto, zeigt ob dieser Eintrag automatisch (-->1) oder vom Uebersetzer
# eingetragen wurde (0)

CREATE TABLE otmp_UebersetzerSprachen
       ( 
	UebersetzerSprachenUEID		MEDIUMINT  UNSIGNED NOT NULL,	 
	UebersetzerSprachenVonSID	TINYINT(3) UNSIGNED NOT NULL, 	        
	UebersetzerSprachenNachSID	TINYINT(3) UNSIGNED NOT NULL, 	
	UebersetzerSprachenKID		TINYINT(3) UNSIGNED NOT NULL,
	UebersetzerSprachenAuto		ENUM('0','1') DEFAULT '0',
	
	PRIMARY KEY(UebersetzerSprachenUEID,UebersetzerSprachenVonSID,UebersetzerSprachenNachSID,UebersetzerSprachenKID)

       );












