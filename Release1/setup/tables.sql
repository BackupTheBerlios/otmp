#
# $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/setup/tables.sql,v $
# $Revision: 1.1 $
# $Id: tables.sql,v 1.1 2001/11/25 20:47:30 hifix Exp $
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
  usrName varchar(12) NOT NULL default '',
  usrFName varchar(50) default NULL,
  usrSName varchar(50) default NULL,
  usrEmail varchar(255) default NULL,
  usrEmailPublic tinyint(1) unsigned NOT NULL default '1',
  usrAdmin tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (usrID),
  KEY usrID (usrID)
);
