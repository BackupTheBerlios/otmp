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
DROP TABLE IF EXISTS otmp_KenntSichAus ;

DROP TABLE IF EXISTS otmp_KatSpr; 
DROP TABLE IF EXISTS otmp_PerPro;



# #######################################
# -------- TABELLEN  -------------------
# #######################################

# SMALLINT UNSIGNED  0.. 65535
# MEDIUMINT UNSIGNED 0 .. 16777215
# mit Admin wird ausgedruckt, ob diese Person ein Nutzer=0, ein Uebersetzer=1 oder 
# Administrator > 1, Falls Admin Stufen gibt ?


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


	 PRIMARY KEY(PersonPID)
	 
       );


# #######################################
 

CREATE TABLE otmp_Programm 
       ( 
	 ProgrammPRGID	        SMALLINT(5) UNSIGNED AUTO_INCREMENT NOT NULL,
	 ProgrammName		VARCHAR(20)	NOT NULL,
	 ProgrammVersion	VARCHAR(20)	NOT NULL, 

	PRIMARY KEY(ProgrammPRGID)
       );



# #####################################


CREATE TABLE otmp_Filetype 
       ( 
	 FiletypeFID		SMALLINT(5) UNSIGNED AUTO_INCREMENT NOT NULL,
	 FiletypePRGID		SMALLINT(5) UNSIGNED NOT NULL,
	 FiletypeFileExt	VARCHAR(5) NOT NULL DEFAULT 'txt',

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
	 OptionenPublicEmail	CHAR(1) DEFAULT 'N', 
	 OptionenSecureGUI	VARCHAR(20), 
	 OptionenMutterSprache	VARCHAR(20), 

	PRIMARY KEY(OptionenPID)
       );



# #######################################


CREATE TABLE otmp_Sprache
       ( 
	 SpracheSID	        TINYINT(3) UNSIGNED AUTO_INCREMENT NOT NULL, 	
	 SpracheName		VARCHAR(25) NOT NULL,
	 SpracheAbkuerzung	CHAR(3)	NOT NULL DEFAULT '---', 

	PRIMARY KEY(SpracheSID)

       );


# #####################################



CREATE TABLE otmp_Kategorie 
       ( 
	 KategorieKID      	TINYINT(3) UNSIGNED AUTO_INCREMENT NOT NULL,
	 KategorieName		VARCHAR(20)	NOT NULL,
	 KategorieSprache	VARCHAR(20)	NOT NULL,

	PRIMARY KEY(KategorieKID)
       );

# #####################################

# KatSpr = Relationship zwischen Kategorie und Sprache

CREATE TABLE otmp_KatSpr 
       ( 
	 KatSprKID      	TINYINT(3) UNSIGNED NOT NULL,
	 KatSprSID		TINYINT(3) UNSIGNED NOT NULL,

	PRIMARY KEY(KatSprKID,KatSprSID)
       );







# ####################################

# OTID = Original Text ID
# NTID = neue Text ID
# UEID = Uebersetzer ID
# NID  = Nutzer ID

CREATE TABLE otmp_Auftrag 
       ( 
	 AuftragAID		MEDIUMINT  UNSIGNED AUTO_INCREMENT	NOT NULL,	 
	 AuftragOTID		MEDIUMINT  UNSIGNED NOT NULL DEFAULT 0,	 
	 AuftragNTID		MEDIUMINT  UNSIGNED NOT NULL DEFAULT 0,	 
	 AuftragStatus	ENUM('open','finished','in work','on hold','deleted') NOT NULL DEFAULT 'open',
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
	 TextAbstract		VARCHAR(255),
	 TextFileExt		VARCHAR(5) NOT NULL DEFAULT 'txt',
	 TextDatum		Datetime NOT NULL DEFAULT '0000-00-00 00:00:00'  , 
	 TextLaenge		MEDIUMINT  UNSIGNED DEFAULT 0,	 
	 TextStatus		ENUM('open','finished','in work') NOT NULL DEFAULT 'open',
	 TextSID	        TINYINT(3) UNSIGNED NOT NULL DEFAULT 0, 		 
	 TextKID      		TINYINT(3) UNSIGNED NOT NULL DEFAULT 0,
	 TextFID		SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0,
	 TextAutor		MEDIUMINT  UNSIGNED NOT NULL DEFAULT 0,	 
	 TextPfad		VARCHAR(50) NOT NULL DEFAULT '--',	

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



CREATE TABLE otmp_KenntSichAus
       ( 
	KenntSichAusUEID	MEDIUMINT  UNSIGNED NOT NULL,	 
        KenntSichAusKID		TINYINT(3) UNSIGNED NOT NULL DEFAULT '--'
	 
       );



# ##############################################################



CREATE TABLE otmp_UebersetzerSprachen
       ( 
	UebersetzerSprachenUEID		MEDIUMINT  UNSIGNED NOT NULL,	 
	UebersetzerSprachenVonSID	        TINYINT(3) UNSIGNED NOT NULL, 	        
	UebersetzerSprachenNachSID	        TINYINT(3) UNSIGNED NOT NULL 	
	
       );




