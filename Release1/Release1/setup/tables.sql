#
# $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/Release1/setup/Attic/tables.sql,v $
# $Revision: 1.1 $
# $Id: tables.sql,v 1.1 2001/12/02 08:23:05 ahlabadi Exp $
#
# tables.sql
#
# File to create Tables in MySQL DB
#
# To Do:
# Test with mysql Version < 3.23.36
# ---------------------------------------------------------
    
#
# Table structure for table `otmp_user`
#

CREATE TABLE otmp_user (
  usrID smallint(5) unsigned NOT NULL auto_increment,
  usrName varchar(20) NOT NULL default '',
  usrPasswd varchar(25) NOT NULL default '',
  usrFName varchar(50) default NULL,
  usrLName varchar(50) default NULL,
  usrEmail varchar(255) default NULL,
  usrEmailPublic tinyint(1) unsigned NOT NULL default '1',
  usrAdmin tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (usrID),
  UNIQUE KEY usrName (usrName),
  KEY usrID (usrID)
);
