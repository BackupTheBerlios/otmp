# ####################################

#       OTMP-Datenbank

# ####################################



DROP TABLE IF EXISTS otmp_Person ;
DROP TABLE IF EXISTS otmp_Nutzer ; 
DROP TABLE IF EXISTS otmp_Administrator;
DROP TABLE IF EXISTS otmp_Uebersetzer;

DROP TABLE IF EXISTS otmp_Adresse ;
DROP TABLE IF EXISTS otmp_Optionen ;

DROP TABLE IF EXISTS otmp_Sprache ;
DROP TABLE IF EXISTS otmp_Programm ; 
DROP TABLE IF EXISTS otmp_Auftrag ;
DROP TABLE IF EXISTS otmp_Filetype ;
DROP TABLE IF EXISTS otmp_Kategorie ;

DROP TABLE IF EXISTS otmp_Konto ;
DROP TABLE IF EXISTS otmp_SystemKonto ;
DROP TABLE IF EXISTS otmp_BankKonto ;

DROP TABLE IF EXISTS otmp_PerHatProg ;
DROP TABLE IF EXISTS otmp_UebersetzerVonSprache ;
DROP TABLE IF EXISTS otmp_UebersetzerNachSprache ;
DROP TABLE IF EXISTS otmp_KenntSichAus ;





# #######################################
# -------- TABELLEN  -------------------
# #######################################

CREATE TABLE otmp_Person 
( 
 PersonPID              CHAR(20)        NOT NULL, 
 PersonName             VARCHAR(20)     NOT NULL,
 PersonVorname          VARCHAR(20), 
 PersonSex              CHAR(1), 
 PersonEmail            VARCHAR(40), 
 PersonPassword         VARCHAR(20)     NOT NULL,
 PersonStatus           VARCHAR(20)     DEFAULT 'nicht gesperrt' ,

 PRIMARY KEY(PersonPID)

);



# #######################################

CREATE TABLE otmp_Nutzer 
( 
 NutzerNID              CHAR(20)        NOT NULL, 


 PRIMARY KEY(NutzerNID)
);



# ######################################

CREATE TABLE otmp_Administrator
( 
 AdministratorAID               CHAR(20)        NOT NULL,

 PRIMARY KEY(AdministratorAID)
);



# #####################################


CREATE TABLE otmp_Uebersetzer
( 
 UebersetzerUEID                CHAR(20)        NOT NULL, 
 UebersetzerPunkte              INT(10),

 PRIMARY KEY(UebersetzerUEID)
);



# ######################################



CREATE TABLE otmp_Adresse 
( 
 PersonPID              CHAR(20)        NOT NULL,
 AdresseLand            VARCHAR(20),
 AdresseStadt           VARCHAR(20), 
 AdresseTel             VARCHAR(20), 

 PRIMARY KEY(PersonPID)

);



# #######################################


CREATE TABLE otmp_Optionen 
( 
 PersonPID              CHAR(20)        NOT NULL, 
 OptionenSprachGUI      VARCHAR(20),
 OptionenPublicEmail    CHAR(1)         NOT NULL, 
 OptionenSecureGUI      VARCHAR(20), 
 OptionenMutterSprache  VARCHAR(20), 

 PRIMARY KEY(PersonPID)
);



# #######################################


CREATE TABLE otmp_Sprache
( 
 SpracheName            VARCHAR(20),
 SpracheAbkuerzung      CHAR(3)         NOT NULL, 

 PRIMARY KEY(SpracheAbkuerzung)
);


# #######################################
 

CREATE TABLE otmp_Programm 
( 
 ProgrammName           VARCHAR(20)     NOT NULL,
 ProgrammVersion        VARCHAR(20)     NOT NULL, 

 PRIMARY KEY(ProgrammName,ProgrammVersion)
);

# #####################################


CREATE TABLE otmp_Auftrag 
( 
 AuftragAID             INT(20) AUTO_INCREMENT  NOT NULL, 
 AuftragTitel           VARCHAR(20)             NOT NULL,
 AuftragDatum           Date, 
 AuftragFrist           VARCHAR(10), 
 AuftragUmfang          VARCHAR(20), 
 AuftragStatus          VARCHAR(20)     DEFAULT 'in der Bearbeitung',
 AuftragPfad            VARCHAR(30)             NOT NULL,

 NutzerNID              CHAR(20)                NOT NULL, 
 UebersetzerUEID        CHAR(20), 
 VonSpracheAbkuerzung   CHAR(3)                 NOT NULL, 
 NachSpracheAbkuerzung  CHAR(3)                 NOT NULL, 
 FileyypeType           VARCHAR(20),
 KategorieName          VARCHAR(20),

 PRIMARY KEY(AuftragAID)

);



# #####################################


CREATE TABLE otmp_Filetype 
( 
 FiletypeType           VARCHAR(20)     NOT NULL,
 ProgrammName           VARCHAR(20),

 PRIMARY KEY(FiletypeType)
);


# ####################################

CREATE TABLE otmp_Kategorie 
( 
 KategorieName          VARCHAR(20)     NOT NULL,
 KategorieSprache       VARCHAR(20)     NOT NULL,

 PRIMARY KEY(KategorieName,KategorieSprache)
);

# ###################################


CREATE TABLE otmp_Konto
( 
 KontoKontoNr           INT(15)         NOT NULL, 
 KontoName              VARCHAR(20),
 KontoType              VARCHAR(20),

 PersonPID              CHAR(20)        NOT NULL,       

 PRIMARY KEY(PersonPID)
);


# ###################################
 

CREATE TABLE otmp_SystemKonto 
( 
 SystemKontoPID         CHAR(20)        NOT NULL, 
 SystemKontoGuthaben    VARCHAR(20),
 SystemKontoPunkte      INT (20)
);


# #####################################

CREATE TABLE otmp_BankKonto 
( 
 BankKontoPID           CHAR(20), 
 BankKontoBank          VARCHAR(20), 
 BankKontoBLZ           CHAR(20)        NOT NULL,
 BankKontoKontoNr       INT(15)         NOT NULL,

 PRIMARY KEY(BankKontoKontoNr,BankKontoBLZ)

);


# #######################################################
# #######################################################

# ------------- Relationen als Tabellen ---------------

# #######################################################
# #######################################################



CREATE TABLE otmp_PerHatProg 
( 
 PersonPID              CHAR(20)        NOT NULL,
 ProgrammName           VARCHAR(20)     NOT NULL,

 PRIMARY KEY(PersonPID,ProgrammName)
);



# ##############################################################



CREATE TABLE otmp_KenntSichAus
( 
 UebersetzerUEID                CHAR(20),       
 KategorieName          VARCHAR(20)

);


# ##############################################################



CREATE TABLE otmp_UebersetzerVonSprache
( 
 UebersetzerUEID                CHAR(20),       
 SpracheAbkuerzung      CHAR(3)

);


CREATE TABLE otmp_UebersetzerNachSprache
( 
 UebersetzerUEID                CHAR(20),       
 SpracheAbkuerzung      CHAR(3)

);
