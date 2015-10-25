# ************************************************************
# Sequel Pro SQL dump
# Version 4499
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.27)
# Database: joomla
# Generation Time: 2015-10-25 10:46:50 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table pz5yp_acymailing_config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_acymailing_config`;

CREATE TABLE `pz5yp_acymailing_config` (
  `namekey` varchar(200) NOT NULL,
  `value` text,
  PRIMARY KEY (`namekey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_acymailing_config` WRITE;
/*!40000 ALTER TABLE `pz5yp_acymailing_config` DISABLE KEYS */;

INSERT INTO `pz5yp_acymailing_config` (`namekey`, `value`)
VALUES
	('level','Starter'),
	('version','4.8.1'),
	('smtp_port',''),
	('from_name','SushiKO'),
	('from_email','admin@localhost.cc'),
	('mailer_method','mail'),
	('sendmail_path','/usr/sbin/sendmail'),
	('smtp_secured',''),
	('smtp_auth','0'),
	('smtp_username',''),
	('smtp_password',''),
	('reply_name','SushiKO'),
	('reply_email','admin@localhost.cc'),
	('cron_sendto','admin@localhost.cc'),
	('bounce_email',''),
	('add_names','1'),
	('encoding_format','8bit'),
	('charset','UTF-8'),
	('word_wrapping','150'),
	('hostname',''),
	('embed_images','0'),
	('embed_files','1'),
	('editor','acyeditor'),
	('multiple_part','1'),
	('smtp_host','localhost'),
	('queue_nbmail','40'),
	('queue_nbmail_auto','70'),
	('queue_type','auto'),
	('queue_try','3'),
	('queue_pause','120'),
	('allow_visitor','1'),
	('require_confirmation','0'),
	('priority_newsletter','3'),
	('allowedfiles','zip,doc,docx,pdf,xls,txt,gzip,rar,jpg,gif,xlsx,pps,csv,bmp,ico,odg,odp,ods,odt,png,ppt,swf,xcf,mp3,wma'),
	('uploadfolder','media/com_acymailing/upload'),
	('confirm_redirect',''),
	('subscription_message','1'),
	('notification_unsuball',''),
	('cron_next','1251990901'),
	('confirmation_message','1'),
	('welcome_message','1'),
	('unsub_message','1'),
	('cron_last','0'),
	('cron_fromip',''),
	('cron_report',''),
	('cron_frequency','900'),
	('cron_sendreport','2'),
	('cron_fullreport','1'),
	('cron_savereport','2'),
	('cron_savepath','media/com_acymailing/logs/report501225567.log'),
	('notification_created',''),
	('notification_accept',''),
	('notification_refuse',''),
	('forward','0'),
	('description_starter','Joomla!™ Newsletter System'),
	('description_essential','Joomla!™ Marketing Campaign'),
	('description_business','Joomla!™ Marketing Campaign'),
	('description_enterprise','Joomla!™ E-mail Marketing'),
	('priority_followup','2'),
	('unsub_redirect',''),
	('show_footer','1'),
	('use_sef','0'),
	('itemid','0'),
	('css_module','default'),
	('css_frontend','default'),
	('css_backend','default'),
	('bootstrap_frontend','0'),
	('menu_position','under'),
	('unsub_reasons','a:2:{i:0;s:21:\"UNSUB_SURVEY_FREQUENT\";i:1;s:21:\"UNSUB_SURVEY_RELEVANT\";}'),
	('installcomplete','1'),
	('Starter','0'),
	('Essential','1'),
	('Business','2'),
	('Enterprise','3'),
	('website','http://localhost/tasks/sushiko/'),
	('max_execution_time','0'),
	('module_redirect','localhost|192.168.11.8|10cdfcc2.ngrok.com|2e9f3df9.ngrok.com|192.168.21.119|binhnk.info|sushikolv.com'),
	('security_key','BAQs9HUvFqKuca3WBNjhmW6dDOqTkd');

/*!40000 ALTER TABLE `pz5yp_acymailing_config` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_acymailing_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_acymailing_fields`;

CREATE TABLE `pz5yp_acymailing_fields` (
  `fieldid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `fieldname` varchar(250) NOT NULL,
  `namekey` varchar(50) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `value` text NOT NULL,
  `published` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ordering` smallint(5) unsigned DEFAULT '99',
  `options` text,
  `core` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `required` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `backend` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `frontcomp` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `default` varchar(250) DEFAULT NULL,
  `listing` tinyint(3) unsigned DEFAULT NULL,
  `frontlisting` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `frontjoomlaprofile` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `frontjoomlaregistration` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `joomlaprofile` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldid`),
  UNIQUE KEY `namekey` (`namekey`),
  KEY `orderingindex` (`published`,`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_acymailing_fields` WRITE;
/*!40000 ALTER TABLE `pz5yp_acymailing_fields` DISABLE KEYS */;

INSERT INTO `pz5yp_acymailing_fields` (`fieldid`, `fieldname`, `namekey`, `type`, `value`, `published`, `ordering`, `options`, `core`, `required`, `backend`, `frontcomp`, `default`, `listing`, `frontlisting`, `frontjoomlaprofile`, `frontjoomlaregistration`, `joomlaprofile`)
VALUES
	(1,'NAMECAPTION','name','text','',1,1,'',1,1,1,1,'',1,1,0,0,0),
	(2,'EMAILCAPTION','email','text','',1,2,'',1,1,1,1,'',1,1,0,0,0),
	(3,'RECEIVE','html','radio','0::JOOMEXT_TEXT\n1::HTML',1,3,'',1,1,1,1,'1',1,0,0,0,0);

/*!40000 ALTER TABLE `pz5yp_acymailing_fields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_acymailing_filter
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_acymailing_filter`;

CREATE TABLE `pz5yp_acymailing_filter` (
  `filid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `description` text,
  `published` tinyint(3) unsigned DEFAULT NULL,
  `lasttime` int(10) unsigned DEFAULT NULL,
  `trigger` text,
  `report` text,
  `action` text,
  `filter` text,
  PRIMARY KEY (`filid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table pz5yp_acymailing_geolocation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_acymailing_geolocation`;

CREATE TABLE `pz5yp_acymailing_geolocation` (
  `geolocation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `geolocation_subid` int(10) unsigned NOT NULL DEFAULT '0',
  `geolocation_type` varchar(255) NOT NULL DEFAULT 'subscription',
  `geolocation_ip` varchar(255) NOT NULL DEFAULT '',
  `geolocation_created` int(10) unsigned NOT NULL DEFAULT '0',
  `geolocation_latitude` decimal(9,6) NOT NULL DEFAULT '0.000000',
  `geolocation_longitude` decimal(9,6) NOT NULL DEFAULT '0.000000',
  `geolocation_postal_code` varchar(255) NOT NULL DEFAULT '',
  `geolocation_country` varchar(255) NOT NULL DEFAULT '',
  `geolocation_country_code` varchar(255) NOT NULL DEFAULT '',
  `geolocation_state` varchar(255) NOT NULL DEFAULT '',
  `geolocation_state_code` varchar(255) NOT NULL DEFAULT '',
  `geolocation_city` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`geolocation_id`),
  KEY `geolocation_type` (`geolocation_subid`,`geolocation_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table pz5yp_acymailing_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_acymailing_history`;

CREATE TABLE `pz5yp_acymailing_history` (
  `subid` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `action` varchar(50) NOT NULL COMMENT 'different actions: created,modified,confirmed',
  `data` text,
  `source` text,
  `mailid` mediumint(8) unsigned DEFAULT NULL,
  KEY `subid` (`subid`,`date`),
  KEY `dateindex` (`date`),
  KEY `actionindex` (`action`,`mailid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table pz5yp_acymailing_list
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_acymailing_list`;

CREATE TABLE `pz5yp_acymailing_list` (
  `name` varchar(250) NOT NULL,
  `description` text,
  `ordering` smallint(5) unsigned DEFAULT '0',
  `listid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `published` tinyint(4) DEFAULT NULL,
  `userid` int(10) unsigned DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `color` varchar(30) DEFAULT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `welmailid` mediumint(9) DEFAULT NULL,
  `unsubmailid` mediumint(9) DEFAULT NULL,
  `type` enum('list','campaign') NOT NULL DEFAULT 'list',
  `access_sub` varchar(250) NOT NULL DEFAULT 'all',
  `access_manage` varchar(250) NOT NULL DEFAULT 'none',
  `languages` varchar(250) NOT NULL DEFAULT 'all',
  `startrule` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`listid`),
  KEY `typeorderingindex` (`type`,`ordering`),
  KEY `useridindex` (`userid`),
  KEY `typeuseridindex` (`type`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_acymailing_list` WRITE;
/*!40000 ALTER TABLE `pz5yp_acymailing_list` DISABLE KEYS */;

INSERT INTO `pz5yp_acymailing_list` (`name`, `description`, `ordering`, `listid`, `published`, `userid`, `alias`, `color`, `visible`, `welmailid`, `unsubmailid`, `type`, `access_sub`, `access_manage`, `languages`, `startrule`)
VALUES
	('Newsletters','Receive our latest news',1,1,1,254,'mailing_list','#3366ff',1,NULL,NULL,'list','all','none','all','0');

/*!40000 ALTER TABLE `pz5yp_acymailing_list` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_acymailing_listcampaign
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_acymailing_listcampaign`;

CREATE TABLE `pz5yp_acymailing_listcampaign` (
  `campaignid` smallint(5) unsigned NOT NULL,
  `listid` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`campaignid`,`listid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table pz5yp_acymailing_listmail
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_acymailing_listmail`;

CREATE TABLE `pz5yp_acymailing_listmail` (
  `listid` smallint(5) unsigned NOT NULL,
  `mailid` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`listid`,`mailid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table pz5yp_acymailing_listsub
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_acymailing_listsub`;

CREATE TABLE `pz5yp_acymailing_listsub` (
  `listid` smallint(5) unsigned NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `subdate` int(10) unsigned DEFAULT NULL,
  `unsubdate` int(10) unsigned DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`listid`,`subid`),
  KEY `subidindex` (`subid`),
  KEY `listidstatusindex` (`listid`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_acymailing_listsub` WRITE;
/*!40000 ALTER TABLE `pz5yp_acymailing_listsub` DISABLE KEYS */;

INSERT INTO `pz5yp_acymailing_listsub` (`listid`, `subid`, `subdate`, `unsubdate`, `status`)
VALUES
	(1,1,1413448016,NULL,1);

/*!40000 ALTER TABLE `pz5yp_acymailing_listsub` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_acymailing_mail
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_acymailing_mail`;

CREATE TABLE `pz5yp_acymailing_mail` (
  `mailid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(250) NOT NULL,
  `body` longtext NOT NULL,
  `altbody` longtext NOT NULL,
  `published` tinyint(4) DEFAULT '1',
  `senddate` int(10) unsigned DEFAULT NULL,
  `created` int(10) unsigned DEFAULT NULL,
  `fromname` varchar(250) DEFAULT NULL,
  `fromemail` varchar(250) DEFAULT NULL,
  `replyname` varchar(250) DEFAULT NULL,
  `replyemail` varchar(250) DEFAULT NULL,
  `type` enum('news','autonews','followup','unsub','welcome','notification','joomlanotification') NOT NULL DEFAULT 'news',
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `userid` int(10) unsigned DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `attach` text,
  `html` tinyint(4) NOT NULL DEFAULT '1',
  `tempid` smallint(6) NOT NULL DEFAULT '0',
  `key` varchar(200) DEFAULT NULL,
  `frequency` varchar(50) DEFAULT NULL,
  `params` text,
  `sentby` int(10) unsigned DEFAULT NULL,
  `metakey` text,
  `metadesc` text,
  `filter` text,
  `language` varchar(50) NOT NULL DEFAULT '',
  `abtesting` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`mailid`),
  KEY `senddate` (`senddate`),
  KEY `typemailidindex` (`type`,`mailid`),
  KEY `useridindex` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_acymailing_mail` WRITE;
/*!40000 ALTER TABLE `pz5yp_acymailing_mail` DISABLE KEYS */;

INSERT INTO `pz5yp_acymailing_mail` (`mailid`, `subject`, `body`, `altbody`, `published`, `senddate`, `created`, `fromname`, `fromemail`, `replyname`, `replyemail`, `type`, `visible`, `userid`, `alias`, `attach`, `html`, `tempid`, `key`, `frequency`, `params`, `sentby`, `metakey`, `metadesc`, `filter`, `language`, `abtesting`)
VALUES
	(1,'New Subscriber on your website : {user:email}','<p>Hello {subtag:name},</p><p>A new user has been created in AcyMailing : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>','',1,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'notification_created',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),
	(2,'A User unsubscribed from all your lists : {user:email}','<p>Hello {subtag:name},</p><p>The user {user:name} : {user:email} unsubscribed from all your lists</p><p>Subscription : {user:subscription}</p><p>{survey}</p>','',1,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'notification_unsuball',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),
	(3,'A User unsubscribed : {user:email}','<p>Hello {subtag:name},</p><p>The user {user:name} : {user:email} unsubscribed from your list</p><p>Subscription : {user:subscription}</p><p>{survey}</p>','',1,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'notification_unsub',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),
	(4,'A User refuses to receive e-mails from your website : {user:email}','<p>The User {user:name} : {user:email} refuses to receive any e-mail anymore from your website.</p><p>Subscription : {user:subscription}</p><p>{survey}</p>','',1,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'notification_refuse',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),
	(5,'New contact from your website : {user:email}','<p>Hello {subtag:name},</p><p>A user submitted the form : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>','',1,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'notification_contact',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),
	(6,'A user subscribed or modified his subscription : {user:email}','<p>Hello {subtag:name},</p><p>A user submitted the form : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>','',1,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'notification_contact_menu',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),
	(7,'A user confirmed his subscription : {user:email}','<p>Hello {subtag:name},</p><p>A user confirmed his subscription : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>','',1,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'notification_confirm',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),
	(8,'{subtag:name|ucfirst}, {trans:PLEASE_CONFIRM_SUB}','<div style=\"text-align: center; width: 100%; background-color: #ffffff;\">\r\n			<table style=\"text-align:justify; margin:auto; background-color:#ebebeb; border:1px solid #e7e7e7\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\" bgcolor=\"#ebebeb\">\r\n			<tbody>\r\n			<tr style=\"line-height: 0px;\">\r\n			<td style=\"line-height: 0px;\" height=\"38px\"><img src=\"media/com_acymailing/templates/newsletter-4/top.png\" border=\"0\" alt=\" - - - \" /></td>\r\n			</tr>\r\n			<tr>\r\n			<td style=\"text-align:center\" width=\"600\">\r\n			<table style=\"margin:auto;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"520\">\r\n			<tbody>\r\n			<tr>\r\n			<td style=\"background-color: #ffffff; border: 1px solid #dbdbdb; padding: 20px; width: 500px; margin: 15px auto; text-align: left;\">\r\n			<h1>Hello {subtag:name|ucfirst},</h1>\r\n			<p>{trans:CONFIRM_MSG}<br /><br />{trans:CONFIRM_MSG_ACTIVATE}</p>\r\n			<br />\r\n			<p style=\"text-align:center;\"><strong>{confirm}{trans:CONFIRM_SUBSCRIPTION}{/confirm}</strong></p>\r\n			</td>\r\n			</tr>\r\n			</tbody>\r\n			</table>\r\n			</td>\r\n			</tr>\r\n			<tr style=\"line-height: 0px;\">\r\n			<td style=\"line-height: 0px;\" height=\"40px\"><img src=\"media/com_acymailing/templates/newsletter-4/bottom.png\" border=\"0\" alt=\" - - - \" /></td>\r\n			</tr>\r\n			</tbody>\r\n			</table>\r\n			</div>','',1,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'confirmation',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),
	(9,'AcyMailing Cron Report {mainreport}','<p>{report}</p><p>{detailreport}</p>','',1,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'report',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),
	(10,'Modify your subscription','<p>Hello {subtag:name}, </p><p>You requested some changes on your subscription,</p><p>Please {modify}click here{/modify} to be identified as the owner of this account and then modify your subscription.</p>','',1,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'modif',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL);

/*!40000 ALTER TABLE `pz5yp_acymailing_mail` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_acymailing_queue
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_acymailing_queue`;

CREATE TABLE `pz5yp_acymailing_queue` (
  `senddate` int(10) unsigned NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `mailid` mediumint(8) unsigned NOT NULL,
  `priority` tinyint(3) unsigned DEFAULT '3',
  `try` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `paramqueue` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`subid`,`mailid`),
  KEY `listingindex` (`senddate`,`subid`),
  KEY `mailidindex` (`mailid`),
  KEY `orderingindex` (`priority`,`senddate`,`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table pz5yp_acymailing_rules
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_acymailing_rules`;

CREATE TABLE `pz5yp_acymailing_rules` (
  `ruleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `ordering` smallint(6) DEFAULT NULL,
  `regex` text NOT NULL,
  `executed_on` text NOT NULL,
  `action_message` text NOT NULL,
  `action_user` text NOT NULL,
  `published` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`ruleid`),
  KEY `ordering` (`published`,`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table pz5yp_acymailing_stats
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_acymailing_stats`;

CREATE TABLE `pz5yp_acymailing_stats` (
  `mailid` mediumint(8) unsigned NOT NULL,
  `senthtml` int(10) unsigned NOT NULL DEFAULT '0',
  `senttext` int(10) unsigned NOT NULL DEFAULT '0',
  `senddate` int(10) unsigned NOT NULL,
  `openunique` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `opentotal` int(10) unsigned NOT NULL DEFAULT '0',
  `bounceunique` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fail` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `clicktotal` int(10) unsigned NOT NULL DEFAULT '0',
  `clickunique` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `unsub` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forward` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bouncedetails` text,
  PRIMARY KEY (`mailid`),
  KEY `senddateindex` (`senddate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table pz5yp_acymailing_subscriber
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_acymailing_subscriber`;

CREATE TABLE `pz5yp_acymailing_subscriber` (
  `subid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(250) NOT NULL DEFAULT '',
  `created` int(10) unsigned DEFAULT NULL,
  `confirmed` tinyint(4) NOT NULL DEFAULT '0',
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `accept` tinyint(4) NOT NULL DEFAULT '1',
  `ip` varchar(100) DEFAULT NULL,
  `html` tinyint(4) NOT NULL DEFAULT '1',
  `key` varchar(250) DEFAULT NULL,
  `confirmed_date` int(10) unsigned NOT NULL DEFAULT '0',
  `confirmed_ip` varchar(100) DEFAULT NULL,
  `lastopen_date` int(10) unsigned NOT NULL DEFAULT '0',
  `lastopen_ip` varchar(100) DEFAULT NULL,
  `lastclick_date` int(10) unsigned NOT NULL DEFAULT '0',
  `lastsent_date` int(10) unsigned NOT NULL DEFAULT '0',
  `source` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`subid`),
  UNIQUE KEY `email` (`email`),
  KEY `userid` (`userid`),
  KEY `queueindex` (`enabled`,`accept`,`confirmed`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_acymailing_subscriber` WRITE;
/*!40000 ALTER TABLE `pz5yp_acymailing_subscriber` DISABLE KEYS */;

INSERT INTO `pz5yp_acymailing_subscriber` (`subid`, `email`, `userid`, `name`, `created`, `confirmed`, `enabled`, `accept`, `ip`, `html`, `key`, `confirmed_date`, `confirmed_ip`, `lastopen_date`, `lastopen_ip`, `lastclick_date`, `lastsent_date`, `source`)
VALUES
	(1,'admin@localhost.cc',254,'Super User',1413253272,1,1,1,NULL,1,NULL,0,NULL,0,NULL,0,0,'');

/*!40000 ALTER TABLE `pz5yp_acymailing_subscriber` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_acymailing_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_acymailing_template`;

CREATE TABLE `pz5yp_acymailing_template` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `description` text,
  `body` longtext,
  `altbody` longtext,
  `created` int(10) unsigned DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '1',
  `premium` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` smallint(5) unsigned DEFAULT '0',
  `namekey` varchar(50) NOT NULL,
  `styles` text,
  `subject` varchar(250) DEFAULT NULL,
  `stylesheet` text,
  `fromname` varchar(250) DEFAULT NULL,
  `fromemail` varchar(250) DEFAULT NULL,
  `replyname` varchar(250) DEFAULT NULL,
  `replyemail` varchar(250) DEFAULT NULL,
  `thumb` varchar(250) DEFAULT NULL,
  `readmore` varchar(250) DEFAULT NULL,
  `access` varchar(250) NOT NULL DEFAULT 'all',
  PRIMARY KEY (`tempid`),
  UNIQUE KEY `namekey` (`namekey`),
  KEY `orderingindex` (`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_acymailing_template` WRITE;
/*!40000 ALTER TABLE `pz5yp_acymailing_template` DISABLE KEYS */;

INSERT INTO `pz5yp_acymailing_template` (`tempid`, `name`, `description`, `body`, `altbody`, `created`, `published`, `premium`, `ordering`, `namekey`, `styles`, `subject`, `stylesheet`, `fromname`, `fromemail`, `replyname`, `replyemail`, `thumb`, `readmore`, `access`)
VALUES
	(1,'Notification template','','<div style=\"text-align: center; width: 100%; background-color:#ffffff;\">\r\n<div class=\"acymailing_online acyeditor_delete acyeditor_text\" style=\"text-align:center\">{readonline}This email contains graphics, so if you don\'t see them, view it in your browser{/readonline}</div>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"w600\" style=\"text-align: justify; margin: auto; width:600px\">\r\n	<tbody>\r\n		<tr style=\"line-height: 0px;\" class=\"acyeditor_delete\">\r\n			<td class=\"w600\" colspan=\"5\" style=\"background-color: #69b4c0;\" valign=\"bottom\" width=\"600\"><img alt=\" - - - \" src=\"media/com_acymailing/templates/newsletter-4/images/top.png\" /></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\"></td>\r\n			<td class=\"acyeditor_text w520\" colspan=\"3\" height=\"80\" style=\"text-align: left; background-color: rgb(235, 235, 235);\" width=\"520\"><img alt=\"-\" src=\"media/com_acymailing/templates/newsletter-4/images/message_icon.png\" style=\"float:left; margin-right:10px;\" />\r\n				<h3>Topic of your message</h3>\r\n\r\n				<h4>Subtitle for your message</h4>\r\n			</td>\r\n			<td class=\"acyeditor_picture w40\" style=\"background-color: #ebebeb;\" width=\"40\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\"></td>\r\n			<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\"></td>\r\n			<td class=\"w480\" height=\"20\" style=\"background-color:#fff;\" width=\"480\"></td>\r\n			<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\"></td>\r\n			<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\"></td>\r\n			<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\"></td>\r\n			<td class=\"acyeditor_text w480 pict\" style=\"background-color:#fff; text-align: left;\" width=\"480\">\r\n			<h1>Dear {subtag:name},</h1>\r\n			Your message here...<br />\r\n			</td>\r\n			<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\"></td>\r\n			<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\"></td>\r\n			<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\"></td>\r\n			<td class=\"w480\" height=\"20\" style=\"background-color:#fff;\" width=\"480\"></td>\r\n			<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\"></td>\r\n			<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\"></td>\r\n		</tr>\r\n		<tr style=\"line-height: 0px;\" class=\"acyeditor_delete\">\r\n			<td class=\"w600\" colspan=\"5\" style=\"background-color:#ebebeb;\" width=\"600\"><img alt=\" - - - \" src=\"media/com_acymailing/templates/newsletter-4/images/bottom.png\" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div class=\"acyeditor_delete acyeditor_text\" style=\"text-align:center\">Not interested any more? {unsubscribe}Unsubscribe{/unsubscribe}</div>\r\n</div>','',NULL,1,0,1,'newsletter-4','a:10:{s:6:\"tag_h1\";s:76:\"color:#393939 !important; font-size:14px; font-weight:bold; margin:10px 0px;\";s:6:\"tag_h2\";s:106:\"color: #309fb3 !important; font-size: 14px; font-weight: normal; text-align:left; margin:0px; padding:0px;\";s:6:\"tag_h3\";s:144:\"color: #393939 !important; font-size: 18px; font-weight: bold; text-align:left; margin:0px; padding-bottom:5px; border-bottom:1px solid #bdbdbd;\";s:6:\"tag_h4\";s:117:\"color: #309fb3 !important; font-size: 14px; font-weight: bold; text-align:left; margin:0px; padding: 5px 0px 0px 0px;\";s:5:\"tag_a\";s:71:\"color:#309FB3; text-decoration:none; font-style:italic; cursor:pointer;\";s:19:\"acymailing_readmore\";s:90:\"font-size: 12px; color: #fff; background-color:#309fb3; font-weight:bold; padding:3px 5px;\";s:17:\"acymailing_online\";s:52:\"color:#a3a3a3; text-decoration:none; font-size:11px;\";s:16:\"acymailing_unsub\";s:52:\"color:#a3a3a3; text-decoration:none; font-size:11px;\";s:8:\"color_bg\";s:7:\"#ffffff\";s:18:\"acymailing_content\";s:19:\"text-align:justify;\";}',NULL,'div,table,p{font-family: Verdana, Arial, Helvetica, sans-serif; font-size:12px; text-align:justify; color:#8c8c8c; margin:0px}\r\ndiv.info{text-align:center;padding:10px;font-size:11px;color:#a3a3a3;}\r\n\r\n@media (min-width:10px){\r\n	table[class=w600], td[class=w600] { width: 320px !important;}\r\n	table[class=w520], td[class=w520] { width: 280px !important;}\r\n	table[class=w480], td[class=w480] { width: 260px !important;}\r\n	td[class=w40] { width: 20px !important;}\r\n	td[class=w20] { width: 10px !important;}\r\n	.w600 img {max-width:320px; height:auto !important}\r\n	.w480 img {max-width:260px; height:auto !important;}\r\n}\r\n\r\n@media (min-width:480px) {\r\n	table[class=w600], td[class=w600] { width: 480px !important;}\r\n	table[class=w520], td[class=w520] { width: 440px !important;}\r\n	table[class=w480], td[class=w480] { width: 420px !important;}\r\n	td[class=w40] { width: 20px !important;}\r\n	td[class=w20] { width: 10px !important;}\r\n	.w600 img {max-width:480px; height:auto !important}\r\n	.w480 img {max-width:420px;  height:auto !important;}\r\n}\r\n@media (min-width:600px){\r\n	table[class=w600], td[class=w600] { width: 600px !important;}\r\n	table[class=w520], td[class=w520] { width: 520px !important;}\r\n	table[class=w480], td[class=w480] { width: 480px !important;}\r\n	td[class=w40] { width40px !important;}\r\n	td[class=w20] { width: 20px !important;}\r\n	.w600 img {max-width:600px; height:auto !important}\r\n	.w480 img {max-width:480px;  height:auto !important;}\r\n}\r\n',NULL,NULL,NULL,NULL,'media/com_acymailing/templates/newsletter-4/newsletter-4.png','','all'),
	(2,'Newspaper','','<div align=\"center\" style=\"width:100%; background-color:#454545; padding-bottom:20px; color:#ffffff;\">\r\n<div class=\"acymailing_online acyeditor_delete acyeditor_text\">{readonline}This e-mail contains graphics, if you don\'t see them <strong>» view it online.</strong>{/readonline}</div>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"w600\" style=\"margin:auto; background-color:#ffffff; color:#454545;\" width=\"600\">\r\n		<tr>\r\n			<td class=\"w600\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"w600\" width=\"600\">\r\n					<tr class=\"acyeditor_delete\" >\r\n						<td class=\"w30\" style=\"background-color:#ffffff\" width=\"30\"></td>\r\n						<td class=\"acyeditor_text w540\" style=\"font-family:Times New Roman, Times, serif; background-color:#ffffff; text-align:left\" width=\"540\">&nbsp;\r\n						<h1><img alt=\"logo\" src=\"media/com_acymailing/templates/newsletter-5/images/logo.png\" style=\"float: right; width: 107px; height: 70px;\" /></h1>\r\n\r\n						<h1>Your title here</h1>\r\n\r\n						<h3>your subtitle</h3>\r\n						</td>\r\n						<td class=\"w30\" style=\"line-height:0px; background-color:#ffffff\" width=\"30\"></td>\r\n					</tr>\r\n					<tr class=\"acyeditor_delete\">\r\n						<td class=\"w600\" colspan=\"3\" style=\"line-height:0px; background-color:#e4e4e4\" valign=\"top\" width=\"600\"><img alt=\"---\" src=\"media/com_acymailing/templates/newsletter-5/images/header.png\" /></td>\r\n					</tr>\r\n					<tr class=\"acyeditor_delete\">\r\n						<td class=\"acyeditor_picture w600\" colspan=\"3\" style=\"line-height:0px; background-color:#ffffff\" valign=\"top\" width=\"600\"><img alt=\"banner\" src=\"media/com_acymailing/templates/newsletter-5/images/banner.png\" /></td>\r\n					</tr>\r\n					<tr class=\"acyeditor_delete\">\r\n						<td class=\"w600\" colspan=\"3\" style=\"line-height:0px;\" valign=\"top\" width=\"600\"><img alt=\"---\" src=\"media/com_acymailing/templates/newsletter-5/images/separator.png\" /></td>\r\n					</tr>\r\n					<tr>\r\n						<td class=\"w30\" style=\"background-color:#ffffff\" width=\"30\"></td>\r\n						<td class=\"acyeditor_text w540\" style=\"text-align:justify; color:#575757; font-family:Times New Roman, Times, serif; font-size:13px; background-color:#ffffff\" width=\"540\">\r\n						<h2>Interviews and reports</h2>\r\n						<span class=\"dark\">Lorem ipsum dolor sit amet, consectLorem ipsum dolor sit amet.</span><br />\r\n						consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum.ed elementum convallis mi. <a href=\"#\">Vivamus elementum</a>.Lorem ipsum dolor sit amet.<br />\r\n						<br />\r\n						cLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum.<br />\r\n						<br />\r\n						<span class=\"acymailing_readmore\">Read More</span><br />\r\n						&nbsp;\r\n						<h2>Journalism around the world</h2>\r\n						<span class=\"dark\">Lorem ipsum dolor sit amet, consectLorem. consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum.</span> consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum.ed elementum convallis mi.<br />\r\n						Vivamus elementum.<a href=\"#\">Lorem ipsum dolor</a> sit amet.Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br />\r\n						<br />\r\n						<span class=\"acymailing_readmore\">Read More</span></td>\r\n						<td class=\"w30\" style=\"background-color:#ffffff\" width=\"30\"></td>\r\n					</tr>\r\n					<tr style=\"line-height: 0px;\">\r\n						<td class=\"w600\" colspan=\"3\" style=\"background-color:#ffffff\" width=\"600\"><img alt=\"--\" src=\"media/com_acymailing/templates/newsletter-5/images/footer1.png\" width=\"600\" /></td>\r\n					</tr>\r\n					<tr>\r\n						<td class=\"acyfooter acyeditor_text w600\" colspan=\"3\" height=\"25\" style=\"text-align:center; background-color:#ebebeb;  color:#454545; font-family:Times New Roman, Times, serif; font-size:13px\" width=\"600\"><a href=\"#\">www.mywebsite.com</a> | <a href=\"#\">contact</a> | <a href=\"#\">Facebook</a> | <a href=\"#\">Twitter</a></td>\r\n					</tr>\r\n					<tr style=\"line-height: 0px;\">\r\n						<td class=\"w600\" colspan=\"3\" style=\"background-color:#454545;\" width=\"600\"><img alt=\"--\" src=\"media/com_acymailing/templates/newsletter-5/images/footer2.png\" width=\"600\" /></td>\r\n					</tr>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n</table>\r\n\r\n<div class=\"acymailing_unsub acyeditor_delete acyeditor_text\">{unsubscribe}If you\'re not interested any more <strong>» unsubscribe</strong>{/unsubscribe}</div>\r\n</div>\r\n','',NULL,1,0,2,'newsletter-5','a:10:{s:6:\"tag_h1\";s:71:\"color:#454545 !important; font-size:24px; font-weight:bold; margin:0px;\";s:6:\"tag_h2\";s:145:\"color:#b20000 !important; font-size:18px; font-weight:bold; margin:0px; margin-bottom:10px; padding-bottom:4px; border-bottom: 1px solid #d6d6d6;\";s:6:\"tag_h3\";s:76:\"color:#b20101 !important; font-weight:bold; font-size:18px; margin:10px 0px;\";s:6:\"tag_h4\";s:67:\"color:#e52323 !important; font-weight:bold; margin:0px; padding:0px\";s:5:\"tag_a\";s:65:\"cursor:pointer; color:#9d0000; text-decoration:none; border:none;\";s:19:\"acymailing_readmore\";s:152:\"cursor:pointer; color:#ffffff; background-color:#9d0000; border-top:1px solid #9d0000; border-bottom:1px solid #9d0000; padding:3px 5px; font-size:13px;\";s:17:\"acymailing_online\";s:148:\"color:#dddddd; text-decoration:none; font-size:13px; margin:10px; text-align:center; font-family:Times New Roman, Times, serif; padding-bottom:10px;\";s:8:\"color_bg\";s:7:\"#454545\";s:18:\"acymailing_content\";s:0:\"\";s:16:\"acymailing_unsub\";s:131:\"color:#dddddd; text-decoration:none; font-size:13px; text-align:center; font-family:Times New Roman, Times, serif; padding-top:10px\";}',NULL,'.acyfooter a{\r\n	color:#454545;\r\n}\r\n.dark{\r\n	color:#454545;\r\n	font-weight:bold;\r\n}\r\ndiv,table,p{font-family:\"Times New Roman\", Times, serif;font-size:13px;color:#575757;}\r\n\r\n\r\n\r\n@media (min-width:10px){\r\n	table[class=w600], td[class=w600] { width:320px !important; }\r\n	table[class=w540], td[class=w540] { width:260px !important; }\r\n	td[class=w30] { width:30px !important; }\r\n	.w600 img {max-width:320px; height:auto !important; }\r\n	.w540 img {max-width:260px; height:auto !important; }\r\n}\r\n\r\n@media (min-width: 480px){\r\n	table[class=w600], td[class=w600] { width:480px !important; }\r\n	table[class=w540], td[class=w540] { width:420px !important; }\r\n	td[class=w30] { width:30px !important; }\r\n	.w600 img {max-width:480px; height:auto !important; }\r\n	.w540 img {max-width:420px; height:auto !important; }\r\n}\r\n\r\n@media (min-width:600px){\r\n	table[class=w600], td[class=w600] { width:600px !important; }\r\n	table[class=w540], td[class=w540] { width:540px !important; }\r\n	td[class=w30] { width:30px !important; }\r\n	.w600 img     {max-width:600px; height:auto !important; }\r\n	.w540 img {max-width:540px; height:auto !important; }\r\n}\r\n',NULL,NULL,NULL,NULL,'media/com_acymailing/templates/newsletter-5/newsletter-5.png','','all'),
	(3,'Build Bio','','<div align=\"center\" style=\"width:100%; background-color:#3c3c3c; padding-bottom:20px; color:#ffffff;\">\r\n<div class=\"acymailing_online acyeditor_delete acyeditor_text\">{readonline}This e-mail contains graphics, if you don\'t see them <strong>» view it online.</strong>{/readonline}</div>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"w600\" style=\"margin:auto; background-color:#ffffff; color:#575757;\" width=\"600\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"w600\" width=\"600\">\r\n				<tr class=\"acyeditor_delete\">\r\n					<td class=\"w600\" colspan=\"3\" style=\"line-height:0px; background-color:#eeeeee\" valign=\"bottom\" width=\"600\"><img alt=\"mail\" height=\"41\" src=\"media/com_acymailing/templates/newsletter-6/images/header.png\" width=\"600\" /></td>\r\n				</tr>\r\n				<tr class=\"acyeditor_delete\">\r\n					<td class=\"w30\" style=\"color:#ffffff;\" width=\"30\"></td>\r\n					<td class=\"acyeditor_picture w540\" style=\"line-height:0px; background-color:#ffffff; text-align:center\" width=\"540\"><img alt=\"\" src=\"media/com_acymailing/templates/newsletter-6/images/banner.png\" style=\"width: 540px; height: 122px;\" /></td>\r\n					<td class=\"w30\" height=\"122\" style=\"background-color:#ffffff\" width=\"30\"></td>\r\n				</tr>\r\n				<tr class=\"acyeditor_delete\">\r\n					<td class=\"w30\" style=\"background-color:#b9cf00; color:#ffffff;\" width=\"30\"></td>\r\n					<td class=\"acyeditor_text w540\" height=\"25\" style=\"text-align:right; background-color:#b9cf00; color:#ffffff;\" width=\"540\"><span class=\"hide\">Newsletter</span> {date:3}</td>\r\n					<td class=\"w30\" style=\"background-color:#b9cf00; color:#ffffff;\" width=\"30\"></td>\r\n				</tr>\r\n				<tr>\r\n					<td class=\"w600\" colspan=\"3\" height=\"25\" style=\"background-color:#ffffff\" width=\"600\"></td>\r\n				</tr>\r\n				<tr>\r\n					<td class=\"w30\" style=\"background-color:#ffffff\" width=\"30\"></td>\r\n					<td class=\"acyeditor_text w540\" style=\"text-align:justify; color:#575757; background-color:#ffffff\" width=\"540\"><span class=\"intro\">Hello {subtag:name},</span><br />\r\n					<br />\r\n					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum Vivamus elementum. sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi.\r\n					<h2>Day One</h2>\r\n					<strong>Lorem ipsum dolor sit amet, consectLorem ipsum dolor sit amet.</strong><br />\r\n					consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed <a href=\"#\">elementum convallis</a> mi. Vivamus elementum.ed elementum convallis mi. Vivamus elementum.Lorem ipsum dolor sit amet.<br />\r\n					<br />\r\n					cLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum.<br />\r\n					<br />\r\n					<span class=\"acymailing_readmore\">Read More</span>\r\n\r\n					<h2>How to build a green house</h2>\r\n					<img alt=\"picture\" height=\"160\" src=\"media/com_acymailing/templates/newsletter-6/images/picture.png\" style=\"float:left;\" width=\"193\" /> <strong>Lorem ipsum dolor sit amet, elit.</strong> Aenean sollicitudin orci sit amet . Sed <a href=\"#\">elementum convallis</a> mi. Vivamus elementum.ed elementum convallis mi. Vivamus elementum.Lorem ipsum dolor sit amet.<br />\r\n					<br />\r\n					cLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum.<br />\r\n					<br />\r\n					<span class=\"acymailing_readmore\">Read More</span></td>\r\n					<td class=\"w30\" style=\"background-color:#ffffff\" width=\"30\"></td>\r\n				</tr>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td>\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"w600\" width=\"600\">\r\n				<tr style=\"line-height: 0px;\">\r\n					<td class=\"w600\" colspan=\"3\" style=\"line-height:0px; background-color:#efefef;\" valign=\"top\" width=\"600\"><img alt=\"--\" height=\"18\" src=\"media/com_acymailing/templates/newsletter-6/images/footer1.png\" width=\"600\" /></td>\r\n				</tr>\r\n				<tr>\r\n					<td class=\"w30\" height=\"20\" style=\"line-height:0px; background-color:#efefef;\" width=\"30\"></td>\r\n					<td class=\"acyfooter acyeditor_text w540\" style=\"text-align:right; background-color:#efefef; color:#575757;\" width=\"540\"><a href=\"#\">www.mywebsite.com</a> | <a href=\"#\">Contact</a><a href=\"#\"><img alt=\"message\" class=\"hide\" src=\"media/com_acymailing/templates/newsletter-6/images/mail.png\" style=\"border: medium none; width: 35px; height: 20px;\" /></a></td>\r\n					<td class=\"w30\" height=\"20\" style=\"line-height:0px; background-color:#efefef;\" width=\"30\"></td>\r\n				</tr>\r\n				<tr style=\"line-height: 0px;\">\r\n					<td class=\"w600\" colspan=\"3\" style=\"background-color:#efefef; line-height:0px;\" valign=\"top\" width=\"600\"><img alt=\"--\" height=\"24\" src=\"media/com_acymailing/templates/newsletter-6/images/footer2.png\" width=\"600\" /></td>\r\n				</tr>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div class=\"acymailing_unsub acyeditor_delete acyeditor_text\" >{unsubscribe}If you\'re not interested any more <strong>» unsubscribe</strong>{/unsubscribe}</div>\r\n</div>','',NULL,1,0,3,'newsletter-6','a:9:{s:6:\"tag_h1\";s:69:\"font-weight:bold; font-size:14px;color:#3c3c3c !important;margin:0px;\";s:6:\"tag_h2\";s:129:\"color:#b9cf00 !important; font-size:14px; font-weight:bold; margin-top:20px; border-bottom:1px solid #d6d6d6; padding-bottom:4px;\";s:6:\"tag_h3\";s:149:\"color:#7e7e7e !important; font-size:14px; font-weight:bold; margin:20px 0px 0px 0px; border-bottom:1px solid #d6d6d6; padding-bottom:0px 0px 4px 0px;\";s:6:\"tag_h4\";s:84:\"color:#879700 !important; font-size:12px; font-weight:bold; margin:0px; padding:0px;\";s:8:\"color_bg\";s:7:\"#3c3c3c\";s:5:\"tag_a\";s:65:\"cursor:pointer; color:#a2b500; text-decoration:none; border:none;\";s:17:\"acymailing_online\";s:91:\"color:#dddddd; text-decoration:none; font-size:11px; text-align:center; padding-bottom:10px\";s:16:\"acymailing_unsub\";s:88:\"color:#dddddd; text-decoration:none; font-size:11px; text-align:center; padding-top:10px\";s:19:\"acymailing_readmore\";s:73:\"cursor:pointer; color:#ffffff; background-color:#b9cf00; padding:3px 5px;\";}',NULL,'table, div, p{\r\n	font-family: Verdana, Arial, Helvetica, sans-serif;\r\n	font-size:11px;\r\n	color:#575757;\r\n}\r\n.intro{\r\n	font-weight:bold;\r\n	font-size:12px;}\r\n\r\n.acyfooter a{\r\n	color:#575757;}\r\n\r\n@media (min-width: 10px){\r\n	table[class=w600], td[class=w600]  { width:320px !important; }\r\n	table[class=w540], td[class=w540]  { width:260px !important; }\r\n	td[class=w30] { width:30px !important; }\r\n	.w600 img{max-width:320px; height:auto !important}\r\n	.w540 img{max-width:260px; height:auto !important}\r\n}\r\n\r\n@media (min-width: 480px){\r\n	table[class=w600], td[class=w600]  { width:480px !important; }\r\n	table[class=w540], td[class=w540]  { width:420px !important; }\r\n	td[class=w30] { width:30px !important; }\r\n	.w600 img{max-width:480px; height:auto !important}\r\n	.w540 img{max-width:420px; height:auto !important}\r\n}\r\n\r\n@media (min-width:600px){\r\n	table[class=w600], td[class=w600]  { width:600px !important; }\r\n	table[class=w540], td[class=w540]  { width:540px !important; }\r\n	td[class=w30] { width:30px !important; }\r\n	.w600 img{max-width:600px; height:auto !important}\r\n	.w540 img{max-width:540px; height:auto !important}\r\n}\r\n',NULL,NULL,NULL,NULL,'media/com_acymailing/templates/newsletter-6/newsletter-6.png','','all'),
	(4,'Technology','','<div align=\"center\" style=\"width:100%; background-color:#575757; padding-bottom:20px; color:#999999;\">\r\n<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"w600\" style=\"background-color:#fff; color:#999999; margin:auto\" width=\"600\">\r\n	<tbody>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w30\" style=\"background-color:#575757\" width=\"30\"></td>\r\n			<td class=\"acyeditor_text w540\" style=\"text-align:right; color:#d2d1d1; background-color:#575757\" width=\"540\"><span class=\"acymailing_online\">{readonline}If you can\'t see this e-mail properly, <span style=\"text-decoration:underline\">view it online</span>{/readonline}</span></td>\r\n			<td class=\"w30\" style=\"background-color:#575757\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"acyeditor_picture w600\" colspan=\"3\" style=\"line-height:0px; background-color:#575757\" valign=\"bottom\" width=\"600\"><img alt=\"--\" src=\"media/com_acymailing/templates/technology_resp/images/shadowtop.jpg\" /></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"acyeditor_picture w600\" colspan=\"3\" style=\"line-height:0px; background-color:#f5f5f5\" width=\"600\"><img alt=\"--\" src=\"media/com_acymailing/templates/technology_resp/images/top.jpg\" /></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w30\" height=\"32\" style=\"background-color:#f5f5f5; border-bottom:1px solid #ddd\" width=\"30\"></td>\r\n			<td class=\"acyeditor_text links w540\" style=\"background-color:#f5f5f5; border-bottom:1px solid #ddd; text-align:right; color:#ababab\" width=\"540\"><a href=\"#\"><img alt=\"mail\" src=\"media/com_acymailing/templates/technology_resp/images/mail.jpg\" style=\"float:right; border:none\" /></a> Newsletter {mailid} | {date:%B %Y} |&nbsp; <a href=\"#\">www.acyba.com</a> |</td>\r\n			<td class=\"w30\" height=\"32\" style=\"background-color:#f5f5f5; border-bottom:1px solid #ddd\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w600\" colspan=\"3\" height=\"16\" width=\"600\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w30\" width=\"30\"></td>\r\n			<td class=\"acyeditor_text w540\" width=\"540\"><img alt=\"picture\" src=\"media/com_acymailing/templates/technology_resp/images/pic1.jpg\" style=\"float:right\" />\r\n			<h1>Fresh and technologic news !</h1>\r\n\r\n			<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris massa quam, eleifend at ornare.</h3>\r\n			Liget, volutpat esvft sem. Praesent auctor posuere orci, sit amet molee. Integer nec scelerisque quam. Lore uctor posum ipsum dolor sit amesent auctor.</td>\r\n			<td class=\"w30\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w30\" style=\"background-color:#fafafa\" width=\"30\"></td>\r\n			<td class=\"acyeditor_picture w540\" style=\"background-color:#fafafa; line-height:0px\" width=\"540\"><img alt=\"---\" src=\"media/com_acymailing/templates/technology_resp/images/separator1.jpg\" /></td>\r\n			<td class=\"w30\" style=\"background-color:#fafafa\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w30\" style=\"background-color:#fafafa\" width=\"30\"></td>\r\n			<td class=\"acyeditor_text w540\" style=\"background-color:#fafafa; color:#999999\" width=\"540\">\r\n			<h2>Choose your smartphone</h2>\r\n			<img alt=\"picture\" src=\"media/com_acymailing/templates/technology_resp/images/pic2.jpg\" style=\"float:left\" />\r\n			<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris massa quam, eleifend at ornare.</h3>\r\n			Liget, volutpat esvft sem. Praesent auctor posuere orci, sit amet molee. Integer nec<a href=\"#\"> scelerisque quam</a>. Lore uctor posum ipsum dolor sit amesent auctor.<br />\r\n			<br />\r\n			<img alt=\"buy this product\" src=\"media/com_acymailing/templates/technology_resp/images/buyproduct.jpg\" /><br />\r\n			<br />\r\n			<br />\r\n			&nbsp;\r\n			<h2>Choose your device</h2>\r\n			<img alt=\"picture\" src=\"media/com_acymailing/templates/technology_resp/images/pic3.jpg\" style=\"float:right\" />\r\n			<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris massa quam, eleifend at ornare.</h3>\r\n			Liget, volutpat esvft sem. Praesent auctor posuere orci, sit amet molee. Integer nec scelerisque quam. Lore uctor posum ipsum dolor sit amesent auctor.<br />\r\n			<br />\r\n			<img alt=\"buy this product\" src=\"media/com_acymailing/templates/technology_resp/images/buyproduct.jpg\" /></td>\r\n			<td class=\"w30\" style=\"background-color:#fafafa\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w30\" style=\"background-color:#fafafa\" width=\"30\"></td>\r\n			<td class=\"acyeditor_picture w540\" style=\"background-color:#fafafa; line-height:0px\" width=\"540\"><img alt=\"---\" src=\"media/com_acymailing/templates/technology_resp/images/separator2.jpg\" /></td>\r\n			<td class=\"w30\" style=\"background-color:#fafafa\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w600\" colspan=\"3\" height=\"16\" width=\"600\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w30\" width=\"30\"></td>\r\n			<td class=\"acyeditor_text special w540\" style=\"color:#999999\" width=\"540\">\r\n			<h2>Best product of the month</h2>\r\n\r\n			<h3>Lorem ipsum dolor sit amet.</h3>\r\n			Liget, volutpat esvft sem. Praesent auctor posuere orci, sit amet molee. Integer nec scelerisque quam. Lore uctor posum ipsum doLiget, volutpat esvft sem. Praesent auctor posuere orci, sit amet molee. Integer nec scelerisque quam. Lore uctor posum ipsum dolor sit amesent.<br />\r\n			<br />\r\n			<img alt=\"read more\" src=\"media/com_acymailing/templates/technology_resp/images/readmore.jpg\" style=\"border:none\" /></td>\r\n			<td class=\"w30\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w600\" colspan=\"3\" height=\"16\" width=\"600\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w30\" height=\"30\" style=\"background-color:#f5f5f5; border-top:1px solid #ddd\" width=\"30\"></td>\r\n			<td class=\"acyeditor_text w540\" height=\"30\" style=\"background-color:#f5f5f5; border-top:1px solid #ddd; text-align:right; color:#ababab\" valign=\"bottom\" width=\"540\">Follow us | <img alt=\"facebook\" src=\"media/com_acymailing/templates/technology_resp/images/facebook.jpg\" style=\"border:none\" /> <img alt=\"twitter\" src=\"media/com_acymailing/templates/technology_resp/images/twitter.jpg\" style=\"border:none\" /> <img alt=\"pinterest\" src=\"media/com_acymailing/templates/technology_resp/images/pinterest.jpg\" style=\"border:none\" /> <img alt=\"rss\" src=\"media/com_acymailing/templates/technology_resp/images/rss.jpg\" style=\"border:none\" /></td>\r\n			<td class=\"w30\" height=\"30\" style=\"background-color:#f5f5f5; border-top:1px solid #ddd\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"acyeditor_picture w600\" colspan=\"3\" style=\"line-height:0px; background-color:#f5f5f5\" width=\"600\"><img alt=\"--\" src=\"media/com_acymailing/templates/technology_resp/images/bottom.jpg\" /></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"acyeditor_picture w600\" colspan=\"3\" style=\"line-height:0px; background-color:#575757\" valign=\"bottom\" width=\"600\"><img alt=\"--\" src=\"media/com_acymailing/templates/technology_resp/images/shadowbottom.jpg\" /></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w30\" style=\"background-color:#575757\" width=\"30\"></td>\r\n			<td class=\"acyeditor_text w540\" style=\"text-align:right; color:#d2d1d1; background-color:#575757\" width=\"540\"><span class=\"acymailing_unsub\">{unsubscribe}If you don\'t want to receive our news anymore, <span style=\"text-decoration:underline\">unsubscribe</span>{/unsubscribe} </span></td>\r\n			<td class=\"w30\" style=\"background-color:#575757\" width=\"30\"></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>','',NULL,1,0,4,'technology_resp','a:9:{s:6:\"tag_h1\";s:104:\"font-size:20px; margin:0px; margin-bottom:15px; padding:0px; font-weight:bold; color:#01bbe5 !important;\";s:6:\"tag_h2\";s:165:\"font-size:12px; font-weight:bold; color:#565656 !important; text-transform:uppercase; margin:10px 0px; padding:0px; padding-bottom:5px; border-bottom:1px solid #ddd;\";s:6:\"tag_h3\";s:104:\"color:#565656 !important; font-weight:bold; font-size:12px; margin:0px; margin-bottom:10px; padding:0px;\";s:6:\"tag_h4\";s:0:\"\";s:8:\"color_bg\";s:7:\"#575757\";s:5:\"tag_a\";s:62:\"cursor:pointer;color:#01bbe5;text-decoration:none;border:none;\";s:17:\"acymailing_online\";s:30:\"color:#d2d1d1; cursor:pointer;\";s:16:\"acymailing_unsub\";s:30:\"color:#d2d1d1; cursor:pointer;\";s:19:\"acymailing_readmore\";s:88:\"cursor:pointer; font-weight:bold; color:#fff; background-color:#01bbe5; padding:2px 5px;\";}',NULL,'table, div, p {\r\n	font-family:Arial, Helvetica, sans-serif;\r\n	font-size:12px;\r\n}\r\np{margin:0px; padding:0px}\r\n\r\n.special h2{font-size:18px;\r\n	margin:0px;\r\n	margin-bottom:15px;\r\n	padding:0px;\r\n	font-weight:bold;\r\n	color:#01bbe5 !important;\r\n	text-transform:none;\r\n	border:none}\r\n\r\n.links a{color:#ababab}\r\n\r\n@media (min-width:10px){\r\n	table[class=w600], td[class=w600] { width:320px !important;}\r\n	table[class=w540], td[class=w540] { width:260px !important;}\r\n	td[class=w30] { width:30px !important;}\r\n	.w600 img {max-width:320px; height:auto !important}\r\n	.w540 img {max-width:260px; height:auto !important}\r\n}\r\n\r\n@media (min-width: 480px){\r\n	table[class=w600], td[class=w600] { width:480px !important;}\r\n	table[class=w540], td[class=w540] { width:420px !important;}\r\n	td[class=w30] { width:30px !important;}\r\n	.w600 img {max-width:480px; height:auto !important}\r\n	.w540 img {max-width:420px; height:auto !important}\r\n}\r\n\r\n@media (min-width:600px){\r\n	table[class=w600], td[class=w600] { width:600px !important;}\r\n	table[class=w540], td[class=w540] { width:540px !important;}\r\n	td[class=w30] { width:30px !important;}\r\n	.w600 img {max-width:600px; height:auto !important}\r\n	.w540 img {max-width:540px; height:auto !important}\r\n}\r\n',NULL,NULL,NULL,NULL,'media/com_acymailing/templates/technology_resp/thumb.jpg','','all');

/*!40000 ALTER TABLE `pz5yp_acymailing_template` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_acymailing_url
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_acymailing_url`;

CREATE TABLE `pz5yp_acymailing_url` (
  `urlid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`urlid`),
  KEY `url` (`url`(250))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table pz5yp_acymailing_urlclick
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_acymailing_urlclick`;

CREATE TABLE `pz5yp_acymailing_urlclick` (
  `urlid` int(10) unsigned NOT NULL,
  `mailid` mediumint(8) unsigned NOT NULL,
  `click` smallint(5) unsigned NOT NULL DEFAULT '0',
  `subid` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`urlid`,`mailid`,`subid`),
  KEY `dateindex` (`date`),
  KEY `mailidindex` (`mailid`),
  KEY `subidindex` (`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table pz5yp_acymailing_userstats
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_acymailing_userstats`;

CREATE TABLE `pz5yp_acymailing_userstats` (
  `mailid` mediumint(8) unsigned NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `html` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `sent` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `senddate` int(10) unsigned NOT NULL,
  `open` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `opendate` int(11) NOT NULL,
  `bounce` tinyint(4) NOT NULL DEFAULT '0',
  `fail` tinyint(4) NOT NULL DEFAULT '0',
  `ip` varchar(100) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `browser_version` tinyint(3) unsigned DEFAULT NULL,
  `is_mobile` tinyint(3) unsigned DEFAULT NULL,
  `mobile_os` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mailid`,`subid`),
  KEY `senddateindex` (`senddate`),
  KEY `subidindex` (`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table pz5yp_assets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_assets`;

CREATE TABLE `pz5yp_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_assets` WRITE;
/*!40000 ALTER TABLE `pz5yp_assets` DISABLE KEYS */;

INSERT INTO `pz5yp_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`)
VALUES
	(1,0,1,127,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
	(2,1,1,2,1,'com_admin','com_admin','{}'),
	(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
	(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
	(6,1,11,12,1,'com_config','com_config','{}'),
	(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
	(8,1,17,38,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),
	(9,1,39,40,1,'com_cpanel','com_cpanel','{}'),
	(10,1,41,42,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
	(11,1,43,44,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(12,1,45,46,1,'com_login','com_login','{}'),
	(13,1,47,48,1,'com_mailto','com_mailto','{}'),
	(14,1,49,50,1,'com_massmail','com_massmail','{}'),
	(15,1,51,52,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
	(16,1,53,54,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(17,1,55,56,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
	(18,1,57,80,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(19,1,81,84,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
	(20,1,85,86,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(21,1,87,88,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),
	(22,1,89,90,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
	(23,1,91,92,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(24,1,93,96,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(25,1,97,100,1,'com_weblinks','com_weblinks','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),
	(26,1,101,102,1,'com_wrapper','com_wrapper','{}'),
	(27,8,18,19,2,'com_content.category.2','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
	(28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(29,7,14,15,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
	(30,19,82,83,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
	(31,25,98,99,2,'com_weblinks.category.6','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
	(32,24,94,95,1,'com_users.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
	(33,1,103,104,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
	(34,1,105,106,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),
	(35,8,20,29,2,'com_content.category.8','Menus','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
	(36,8,30,37,2,'com_content.category.9','Company','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
	(37,1,107,108,1,'com_acymailing','acymailing','{}'),
	(39,36,31,32,3,'com_content.article.1','WE ARE SPECIALIZED IN  SPICY MODERN FUSION FOOD','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(40,1,109,110,1,'com_virtuemart_allinone','virtuemart_allinone','{}'),
	(42,35,21,22,3,'com_content.article.2','Dinner Meal','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(43,35,23,24,3,'com_content.article.3','Lunch','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(44,35,25,26,3,'com_content.article.4','Breakfast','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(45,35,27,28,3,'com_content.article.5','Tea-break','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(46,1,111,112,1,'com_tags','com_tags','{}'),
	(47,1,113,114,1,'com_contenthistory','com_contenthistory','{}'),
	(48,1,115,116,1,'com_ajax','com_ajax','{}'),
	(49,1,117,118,1,'com_postinstall','com_postinstall','{}'),
	(51,18,58,59,2,'com_modules.module.114','Featured Category Menus','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(53,36,33,34,3,'com_content.article.6','About Us','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(54,1,119,120,1,'#__ucm_content.1','#__ucm_content.1','[]'),
	(58,18,60,61,2,'com_modules.module.115','Brand Listing','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(59,18,62,63,2,'com_modules.module.125','HikaShop Content Module','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(60,18,64,65,2,'com_modules.module.121','Latest products','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(61,18,66,67,2,'com_modules.module.120','Best sellers','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(62,18,68,69,2,'com_modules.module.118','Categories','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(63,18,70,71,2,'com_modules.module.123','Best rated','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(64,18,72,73,2,'com_modules.module.119','Categories on 2 levels','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(65,18,74,75,2,'com_modules.module.131','Associated products listing for category listing menu 191','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(66,18,76,77,2,'com_modules.module.133','Categories','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(68,36,35,36,3,'com_content.article.7','Directions','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
	(70,1,121,122,1,'com_jshopping','jshopping','{}'),
	(77,1,123,124,1,'com_virtuemart','VIRTUEMART','{}'),
	(78,18,78,79,2,'com_modules.module.141','VM - Administrator Module','{}'),
	(85,1,125,126,1,'com_tcpdf','tcpdf','{}');

/*!40000 ALTER TABLE `pz5yp_assets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_associations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_associations`;

CREATE TABLE `pz5yp_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_banner_clients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_banner_clients`;

CREATE TABLE `pz5yp_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_banner_tracks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_banner_tracks`;

CREATE TABLE `pz5yp_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_banners
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_banners`;

CREATE TABLE `pz5yp_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_categories`;

CREATE TABLE `pz5yp_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_categories` WRITE;
/*!40000 ALTER TABLE `pz5yp_categories` DISABLE KEYS */;

INSERT INTO `pz5yp_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`)
VALUES
	(1,0,0,0,17,0,'','system','ROOT',X'726F6F74','','',1,0,'0000-00-00 00:00:00',1,'{}','','','',0,'2009-10-18 16:07:09',0,'0000-00-00 00:00:00',0,'*',1),
	(2,27,1,1,2,1,'uncategorised','com_content','Uncategorised',X'756E63617465676F7269736564','','',-2,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:26:37',0,'0000-00-00 00:00:00',0,'*',1),
	(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised',X'756E63617465676F7269736564','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:27:35',0,'0000-00-00 00:00:00',0,'*',1),
	(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised',X'756E63617465676F7269736564','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:27:57',0,'0000-00-00 00:00:00',0,'*',1),
	(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised',X'756E63617465676F7269736564','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:15',0,'0000-00-00 00:00:00',0,'*',1),
	(6,31,1,9,10,1,'uncategorised','com_weblinks','Uncategorised',X'756E63617465676F7269736564','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*',1),
	(7,32,1,11,12,1,'uncategorised','com_users','Uncategorised',X'756E63617465676F7269736564','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*',1),
	(8,35,1,13,14,1,'menu','com_content','Menus',X'6D656E75','','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at purus id sapien laoreet dapibus. Pellentesque vitae dolor ut purus rhoncus vestibulum eu in justo. Vivamus ac purus consequat, commodo augue et, lacinia tellus. Duis leo ipsum, vehicula sit amet finibus in, lobortis ac odio.',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',254,'2014-10-16 08:19:29',254,'2014-10-18 05:02:45',0,'*',1),
	(9,36,1,15,16,1,'company','com_content','Company',X'636F6D70616E79','','',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',254,'2014-10-16 08:19:37',0,'0000-00-00 00:00:00',0,'*',1);

/*!40000 ALTER TABLE `pz5yp_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_contact_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_contact_details`;

CREATE TABLE `pz5yp_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_contact_details` WRITE;
/*!40000 ALTER TABLE `pz5yp_contact_details` DISABLE KEYS */;

INSERT INTO `pz5yp_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `hits`)
VALUES
	(1,'Daewoo',X'646165776F6F','','Kim Ma','Ba Dinh','Published','Vietnam','123770','123456789','','','','admin@hanoi.com',0,1,0,'0000-00-00 00:00:00',1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_tags\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":false,\"linkb_name\":\"\",\"linkb\":false,\"linkc_name\":\"\",\"linkc\":false,\"linkd_name\":\"\",\"linkd\":false,\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',254,4,1,'123456789','','','','','*','2014-11-13 10:24:16',254,'','0000-00-00 00:00:00',0,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',1,46);

/*!40000 ALTER TABLE `pz5yp_contact_details` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_content
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_content`;

CREATE TABLE `pz5yp_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_content` WRITE;
/*!40000 ALTER TABLE `pz5yp_content` DISABLE KEYS */;

INSERT INTO `pz5yp_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`)
VALUES
	(1,39,'WE ARE SPECIALIZED IN  SPICY MODERN FUSION FOOD',X'77652D6172652D7370656369616C697A65642D696E2D73706963792D6D6F6465726E2D667573696F6E2D666F6F64','<p><span style=\"color: #000000; font-family: Raleway; font-size: 14px; line-height: 25.2000007629395px;\"><img src=\"images/chief/chef-1.jpg\" border=\"0\" alt=\"\" />Nullam id dolor id nibh ultricies vehicula ut id elit. Cum sociis natoque penatibus et magnis dis parturient monte siculus mus.Maecenas sed diam eget risus varius blandit sit amet non magna.</span></p>','',-2,9,'2014-10-16 12:36:18',254,'','2014-11-13 10:18:54',254,0,'0000-00-00 00:00:00','2014-10-16 12:36:18','0000-00-00 00:00:00','{\"image_intro\":\"images\\/chief\\/chief-4.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,2,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(2,42,'Dinner Meal',X'64696E6E65722D6D65616C','<img src=\"images/menu/pasta.jpg\" alt=\"\" />Morbi leo risus, porta ac consectetur ac, vesti bulum at eros. Aenean lacinia bibendum nulla sed consec us eget urna mollis ornare vel euleo. Nullam id dolor id nibh ultricies vehicula ut id elit. Cum sociis natoque penatibus et magnis dis parturient monte siculus mus.Maecenas sed diam eget risus varius blandit sit amet non magna. \r\n\r\n','',-2,8,'2014-10-18 04:57:45',254,'','2014-11-13 10:21:53',254,0,'0000-00-00 00:00:00','2014-10-18 04:57:45','0000-00-00 00:00:00','{\"image_intro\":\"images\\/menu\\/pasta.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,3,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(3,43,'Lunch',X'64696E6E65722D6D65616C2D32','<img src=\"images/menu/pasta.jpg\" alt=\"\" />Morbi leo risus, porta ac consectetur ac, vesti bulum at eros. Aenean lacinia bibendum nulla sed consec us eget urna mollis ornare vel euleo. Nullam id dolor id nibh ultricies vehicula ut id elit. Cum sociis natoque penatibus et magnis dis parturient monte siculus mus.Maecenas sed diam eget risus varius blandit sit amet non magna. \r\n\r\n','',-2,8,'2014-10-18 04:57:45',254,'','2014-11-13 10:21:41',254,0,'0000-00-00 00:00:00','2014-10-18 04:57:45','0000-00-00 00:00:00','{\"image_intro\":\"images\\/menu\\/pasta.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,2,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(4,44,'Breakfast',X'64696E6E65722D6D65616C2D33','<img src=\"images/menu/pasta.jpg\" alt=\"\" />Morbi leo risus, porta ac consectetur ac, vesti bulum at eros. Aenean lacinia bibendum nulla sed consec us eget urna mollis ornare vel euleo. Nullam id dolor id nibh ultricies vehicula ut id elit. Cum sociis natoque penatibus et magnis dis parturient monte siculus mus.Maecenas sed diam eget risus varius blandit sit amet non magna. \r\n\r\n','',-2,8,'2014-10-18 04:57:45',254,'','2014-11-13 10:21:09',254,0,'0000-00-00 00:00:00','2014-10-18 04:57:45','0000-00-00 00:00:00','{\"image_intro\":\"images\\/menu\\/pasta.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,1,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(5,45,'Tea-break',X'64696E6E65722D6D65616C2D34','Morbi leo risus, porta ac consectetur ac, vesti bulum at eros. Aenean lacinia bibendum nulla sed consec us eget urna mollis ornare vel euleo. Nullam id dolor id nibh ultricies vehicula ut id elit. Cum sociis natoque penatibus et magnis dis parturient monte siculus mus.Maecenas sed diam eget risus varius blandit sit amet non magna. \r\n\r\n','',-2,8,'2014-10-18 04:57:45',254,'','2014-11-13 10:21:28',254,0,'0000-00-00 00:00:00','2014-10-18 04:57:45','0000-00-00 00:00:00','{\"image_intro\":\"images\\/menu\\/pasta.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,0,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(6,53,'About Us',X'61626F75742D7573','<p>Sushi Ko opened in 2003. It is located close to US 95 and Craig Road. </p>\r\n\r\n<p>Our atmosphere includes a big-screen TV where you can view sports, while drinking beer or sake.\r\nEnjoy a glass of wine with someone special at one of our tables.\r\nGrab a bunch of your friends and enjoy a feast at one of teppan tables. </p>\r\n<p>At Sushi Ko, we take personal pride in adding an \"extra effort\" to the quality of our food.\r\nOur sauces and dressings are homemade, from scratch, providing the freshest of flavors.\r\nOur fish is delivered daily to provide the freshest sushi possible. </p>','',-2,9,'2014-11-12 08:38:47',254,'','2014-11-15 05:05:47',254,0,'0000-00-00 00:00:00','2014-11-12 08:44:20','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/restaurant\\/3.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',8,1,'','',1,51,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
	(7,68,'Directions',X'646972656374696F6E73','page','',-2,9,'2014-11-24 10:09:40',254,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2014-11-24 10:09:40','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');

/*!40000 ALTER TABLE `pz5yp_content` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_content_frontpage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_content_frontpage`;

CREATE TABLE `pz5yp_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_content_rating
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_content_rating`;

CREATE TABLE `pz5yp_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_content_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_content_types`;

CREATE TABLE `pz5yp_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) NOT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_content_types` WRITE;
/*!40000 ALTER TABLE `pz5yp_content_types` DISABLE KEYS */;

INSERT INTO `pz5yp_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`)
VALUES
	(1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\": {\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
	(2,'Weblink','com_weblinks.weblink','{\"special\":{\"dbtable\":\"#__weblinks\",\"key\":\"id\",\"type\":\"Weblink\",\"prefix\":\"WeblinksTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"url\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\": {}}','WeblinksHelperRoute::getWeblinkRoute','{\"formFile\":\"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"featured\",\"images\"], \"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
	(3,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\": {\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
	(4,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\": {\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
	(5,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\": {}}','UsersHelperRoute::getUserRoute',''),
	(6,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
	(7,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
	(8,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
	(9,'Weblinks Category','com_weblinks.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','WeblinksHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
	(10,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
	(10000,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
	(10001,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
	(10002,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
	(10003,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
	(10004,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
	(10005,'Hikashop Product','com_hikashop.product','{\"special\":{\"dbtable\":\"#__hikashop_product\",\"key\":\"product_id\",\"type\":\"Hikashop Product\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"CoreContent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":[{\"core_content_item_id\":\"product_id\",\"core_title\":\"product_name\",\"core_state\":\"product_published\",\"core_alias\":\"product_alias\",\"core_created_time\":\"product_created\",\"core_modified_time\":\"product_modified\",\"core_body\":\"product_description\",\"core_hits\":\"product_hit\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"null\",\"core_params\":\"null\",\"core_featured\":\"null\",\"core_metadata\":\"null\",\"core_language\":\"null\",\"core_images\":\"null\",\"core_urls\":\"null\",\"core_version\":\"null\",\"core_ordering\":\"null\",\"core_metakey\":\"product_keywords\",\"core_metadesc\":\"product_meta_description\",\"core_catid\":\"null\",\"core_xreference\":\"null\",\"asset_id\":\"null\"}],\"special\":[[]]}','hikashopTagRouteHelper::getProductRoute','');

/*!40000 ALTER TABLE `pz5yp_content_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_contentitem_tag_map
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_contentitem_tag_map`;

CREATE TABLE `pz5yp_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

LOCK TABLES `pz5yp_contentitem_tag_map` WRITE;
/*!40000 ALTER TABLE `pz5yp_contentitem_tag_map` DISABLE KEYS */;

INSERT INTO `pz5yp_contentitem_tag_map` (`type_alias`, `core_content_id`, `content_item_id`, `tag_id`, `tag_date`, `type_id`)
VALUES
	('com_content.article',1,6,2,'2014-11-14 22:05:47',1);

/*!40000 ALTER TABLE `pz5yp_contentitem_tag_map` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_core_log_searches
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_core_log_searches`;

CREATE TABLE `pz5yp_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_extensions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_extensions`;

CREATE TABLE `pz5yp_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_extensions` WRITE;
/*!40000 ALTER TABLE `pz5yp_extensions` DISABLE KEYS */;

INSERT INTO `pz5yp_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`)
VALUES
	(1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(3,'com_admin','component','com_admin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(4,'com_banners','component','com_banners','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(5,'com_cache','component','com_cache','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(6,'com_categories','component','com_categories','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(8,'com_contact','component','com_contact','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_contact_category\":\"hide\",\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(10,'com_installer','component','com_installer','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(11,'com_languages','component','com_languages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}','','',0,'0000-00-00 00:00:00',0,0),
	(12,'com_login','component','com_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(13,'com_media','component','com_media','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','','',0,'0000-00-00 00:00:00',0,0),
	(14,'com_menus','component','com_menus','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(15,'com_messages','component','com_messages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(16,'com_modules','component','com_modules','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_word_count\":\"0\",\"show_headings\":\"1\",\"show_name\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"display_num\":\"\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"show_cat_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(19,'com_search','component','com_search','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(20,'com_templates','component','com_templates','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"0\",\"upload_limit\":\"2\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}','','',0,'0000-00-00 00:00:00',0,0),
	(21,'com_weblinks','component','com_weblinks','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_weblinks\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_comp_description\":\"1\",\"comp_description\":\"\",\"show_link_hits\":\"1\",\"show_link_description\":\"1\",\"show_other_cats\":\"0\",\"show_headings\":\"0\",\"show_numbers\":\"0\",\"show_report\":\"1\",\"count_clicks\":\"1\",\"target\":\"0\",\"link_icons\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(22,'com_content','component','com_content','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(23,'com_config','component','com_config','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),
	(24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(25,'com_users','component','com_users','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"guest_usergroup\":\"1\",\"sendpassword\":\"1\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(27,'com_finder','component','com_finder','',1,1,0,0,'{\"legacy\":false,\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0),
	(28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{\"updatesource\":\"sts\",\"customurl\":\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/releases\\/download\\/3.3.6\\/Joomla_3.3.6-Stable-Full_Package.zip\"}','','',0,'0000-00-00 00:00:00',0,0),
	(29,'com_tags','component','com_tags','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"March 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(30,'com_contenthistory','component','com_contenthistory','',1,1,1,0,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(31,'com_ajax','component','com_ajax','',1,1,1,0,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(32,'com_postinstall','component','com_postinstall','',1,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0),
	(100,'PHPMailer','library','phpmailer','',0,1,1,1,'{\"legacy\":false,\"name\":\"PHPMailer\",\"type\":\"library\",\"creationDate\":\"2001\",\"author\":\"PHPMailer\",\"copyright\":\"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.\",\"authorEmail\":\"jimjag@gmail.com\",\"authorUrl\":\"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/\",\"version\":\"5.2\",\"description\":\"LIB_PHPMAILER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(101,'SimplePie','library','simplepie','',0,1,1,1,'{\"legacy\":false,\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(102,'phputf8','library','phputf8','',0,1,1,1,'{\"legacy\":false,\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(103,'Joomla! Platform','library','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"11.4\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"mediaversion\":\"f93bb05d454c468a1345a53da0b84ef6\"}','','',0,'0000-00-00 00:00:00',0,0),
	(104,'IDNA Convert','library','idna_convert','',0,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0),
	(105,'FOF','library','fof','',0,1,1,1,'{\"legacy\":false,\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2013-10-08\",\"author\":\"Nicholas K. Dionysopoulos / Akeeba Ltd\",\"copyright\":\"(C)2011-2013 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https://www.akeebabackup.com\",\"version\":\"2.1.rc4\",\"description\":\"Framework-on-Framework (FOF) - A rapid component development framework for Joomla!\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(106,'PHPass','library','phpass','',0,1,1,1,'{\"legacy\":false,\"name\":\"PHPass\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http://www.openwall.com/phpass\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters.\\n\\t\\tAll rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(203,'mod_banners','module','mod_banners','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(206,'mod_feed','module','mod_feed','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(207,'mod_footer','module','mod_footer','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(208,'mod_login','module','mod_login','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(213,'mod_search','module','mod_search','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(216,'mod_users_latest','module','mod_users_latest','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(217,'mod_weblinks','module','mod_weblinks','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_weblinks\",\"type\":\"module\",\"creationDate\":\"July 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(220,'mod_articles_category','module','mod_articles_category','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"legacy\":false,\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(304,'mod_login','module','mod_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(309,'mod_status','module','mod_status','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(311,'mod_title','module','mod_title','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(314,'mod_version','module','mod_version','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(315,'mod_stats_admin','module','mod_stats_admin','',1,1,1,0,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"September 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),
	(316,'mod_tags_popular','module','mod_tags_popular','',0,1,1,0,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(317,'mod_tags_similar','module','mod_tags_similar','',0,1,1,0,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),
	(401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),
	(403,'plg_content_contact','plugin','contact','content',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',1,0),
	(404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),
	(405,'plg_content_geshi','plugin','geshi','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_geshi\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"qbnz.com\\/highlighter\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_GESHI_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),
	(406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),
	(407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),
	(408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),
	(409,'plg_content_vote','plugin','vote','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),
	(410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),
	(411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"2.5.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),
	(412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2013\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\\/\",\"version\":\"3.5.4.1\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\",\"skin\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"0\",\"lang_code\":\"en\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"toolbar\":\"top\",\"toolbar_align\":\"left\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"true\",\"resize_horizontal\":\"false\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"format_date\":\"%Y-%m-%d\",\"inserttime\":\"1\",\"format_time\":\"%H:%M:%S\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"media\":\"1\",\"hr\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"style\":\"1\",\"layer\":\"1\",\"xhtmlxtras\":\"1\",\"visualchars\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advimage\":\"1\",\"advlink\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),
	(413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),
	(414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),
	(415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),
	(416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),
	(417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(421,'plg_search_weblinks','plugin','weblinks','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_weblinks\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),
	(423,'plg_system_p3p','plugin','p3p','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),
	(424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),
	(425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),
	(426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),
	(427,'plg_system_redirect','plugin','redirect','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),
	(428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),
	(429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',8,0),
	(430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),
	(431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),
	(432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2009 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"autoregister\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),
	(433,'plg_user_profile','plugin','profile','user',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),
	(435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',10,0),
	(437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),
	(440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),
	(441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),
	(443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),
	(444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),
	(445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),
	(446,'plg_finder_weblinks','plugin','weblinks','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_weblinks\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),
	(447,'plg_finder_tags','plugin','tags','finder',0,1,1,0,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(448,'plg_twofactorauth_totp','plugin','totp','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(449,'plg_authentication_cookie','plugin','cookie','authentication',0,1,1,0,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(450,'plg_twofactorauth_yubikey','plugin','yubikey','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"Se[ptember 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(451,'plg_search_tags','plugin','tags','search',0,0,1,0,'','{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(600,'English (United Kingdom)','language','en-GB','',0,1,1,1,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.19\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(601,'English (United Kingdom)','language','en-GB','',1,1,1,1,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.19\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(700,'files_joomla','file','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"September 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.5\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(10000,'T3 Framework','plugin','t3','system',0,1,1,0,'{\"name\":\"T3 Framework\",\"type\":\"plugin\",\"creationDate\":\"September 09, 2015\",\"author\":\"JoomlArt.com\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"info@joomlart.com\",\"authorUrl\":\"http:\\/\\/www.t3-framework.org\",\"version\":\"2.5.1\",\"description\":\"\\n\\t\\n\\t<div align=\\\"center\\\">\\n\\t\\t<div class=\\\"alert alert-success\\\" style=\\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\\">\\n\\t\\t\\t\\t<a href=\\\"http:\\/\\/t3-framework.org\\/\\\"><img src=\\\"http:\\/\\/joomlart.s3.amazonaws.com\\/images\\/jat3v3-documents\\/message-installation\\/logo.png\\\" alt=\\\"some_text\\\" width=\\\"300\\\" height=\\\"99\\\"><\\/a>\\n\\t\\t\\t\\t<h4><a href=\\\"http:\\/\\/t3-framework.org\\/\\\" title=\\\"\\\">Home<\\/a> | <a href=\\\"http:\\/\\/demo.t3-framework.org\\/\\\" title=\\\"\\\">Demo<\\/a> | <a href=\\\"http:\\/\\/t3-framework.org\\/documentation\\\" title=\\\"\\\">Document<\\/a> | <a href=\\\"https:\\/\\/github.com\\/t3framework\\/t3\\/blob\\/master\\/CHANGELOG.md\\\" title=\\\"\\\">Changelog<\\/a><\\/h4>\\n\\t\\t<p> <\\/p>\\n\\t\\t<p>Copyright 2004 - 2015 <a href=\'http:\\/\\/www.joomlart.com\\/\' title=\'Visit Joomlart.com!\'>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t<\\/div>\\n     <style>table.adminform{width: 100%;}<\\/style>\\n\\t <\\/div>\\n\\t\\t\\n\\t\",\"group\":\"\",\"filename\":\"t3\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10002,'JA Slideshow Lite','module','mod_jaslideshowlite','',0,1,0,0,'{\"legacy\":false,\"name\":\"JA Slideshow Lite\",\"type\":\"module\",\"creationDate\":\"09 May 2014\",\"author\":\"JoomlArt.com\",\"copyright\":\"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.\",\"authorEmail\":\"webmaster@joomlart.com\",\"authorUrl\":\"www.joomlart.com\",\"version\":\"1.2.2\",\"description\":\"\\n\\t\\t\\n\\t\\t<h1>JA Slideshow Lite module for Joomla! 2.5 and Joomla! 3.0<\\/h1>\\n\\t\\t<div style=\'font-weight: normal\'>\\n\\t\\t\\t<p><span style=\'color: #ff6600;\'><strong>Features:<\\/strong><\\/span>Display images from a folder. Includes auto-resized images, beautiful animation effects, and inline text-embeded descriptions. This module use css3 to enable animation effects and support responsive design<\\/p>\\n\\t\\t\\t<strong><span style=\'color: #ff0000;\'>Usage Instructions:<\\/span><\\/strong><br \\/>\\n\\t\\t\\t<ul>\\n\\t\\t\\t\\t<li><strong>The module display can be enhanced by CSS overrides in the demo templates. You may have to customize CSS to get your desired effects.<\\/strong><\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<strong style=\'color: #ff0000;\'>Configuration<\\/strong>\\n\\t\\t\\t<ul>\\n\\t\\t\\t\\t<li>Fade, Slide, Verticle Rotate, Horizontal Rotate, Rotate are easy and straingt forward.<\\/li>\\n\\t\\t\\t\\t<li>\\n\\t\\t\\t\\t\\t<strong style=\\\"color: #ff3300\\\">Custom<\\/strong>\\n\\t\\t\\t\\t\\t<ul style=\\\"list-style: disc\\\">\\n\\t\\t\\t\\t\\t\\t<li>Custom Slideshow Type required a set of images. All images must have the name in format [slideItemNo-typeOfImage.imageExt]. For ex: sl1-bg.png, sl1-first.png, sl1-second.png . The first part is the slide identity and should be the same for all 3 images for a slide item. The second part should be named to \\\"bg\\\", \\\"first\\\", \\\"second\\\". Each slide item required a \\\"bg\\\" image type and have two optional \\\"first\\\" or \\\"second\\\" image types.<\\/li>\\n\\t\\t\\t\\t\\t\\t<li><strong>Advanced Configuration<\\/strong>\\n\\t\\t\\t\\t\\t\\t\\t<ul style=\\\"padding-left: 20px\\\">\\n\\t\\t\\t\\t\\t\\t\\t\\t<li style=\\\"list-style: disc\\\">[img] property should point to \\\"bg\\\" image type.<\\/li>\\n\\t\\t\\t\\t\\t\\t\\t\\t<li style=\\\"list-style: disc\\\">[class] property should be one of [leftright, leftleft, rightright, updown, downdown, rupdown, rupup].<\\/li>\\n\\t\\t\\t\\t\\t\\t\\t\\t<li style=\\\"list-style: disc\\\">[HTML tags] you can use HTML Tags for description to style like: &lt;h3&gt;title&lt;\\/h3&gt;.<\\/li>\\n\\t\\t\\t\\t\\t\\t\\t\\t<li style=\\\"list-style: disc\\\">Examlpe: [desc img=\\\"sl1-bg.jpg\\\" url=\\\"#\\\" class=\\\"rupup\\\"]&lt;h3&gt;Title here&lt;\\/h3&gt;&lt;p&gt;description here.&lt;\\/p&gt;&lt;a class=\\\"btn-action\\\" href=\\\"http:\\/\\/www.joomlart.com\\/\\\"&gt;<span>View demo<\\/span><\\/a>[\\/desc]<\\/li>\\n\\t\\t\\t\\t\\t\\t\\t<\\/ul>\\n\\t\\t\\t\\t\\t\\t<\\/li>\\n\\t\\t\\t\\t\\t<\\/ul>\\n\\t\\t\\t\\t<\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<p>Copyright 2004 - 2014 <a href=\'http:\\/\\/www.joomlart.com\\/\' title=\'Visit Joomlart.com!\'>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t\",\"group\":\"\"}','{\"folder\":\"images\\/\",\"type\":\"fade\",\"autoplay\":\"1\",\"navigation\":\"0\",\"mainWidth\":\"auto\",\"mainHeight\":\"auto\",\"thumbnail\":\"0\",\"thumbWidth\":\"60\",\"thumbHeight\":\"60\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10003,'acymailing','component','com_acymailing','',1,1,0,0,'{\"legacy\":true,\"name\":\"AcyMailing\",\"type\":\"component\",\"creationDate\":\"novembre 2014\",\"author\":\"Acyba\",\"copyright\":\"Copyright (C) 2009-2014 ACYBA SARL - All rights reserved.\",\"authorEmail\":\"dev@acyba.com\",\"authorUrl\":\"http:\\/\\/www.acyba.com\",\"version\":\"4.8.1\",\"description\":\"Manage your Mailing lists, Newsletters, e-mail marketing campaigns\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10004,'AcyMailing : trigger Joomla Content plugins','plugin','contentplugin','acymailing',0,0,1,0,'{\"version\":\"3.7.0\",\"author\":\"Acyba\",\"creationDate\":\"November 2009\"}','','','',0,'0000-00-00 00:00:00',15,0),
	(10005,'AcyMailing Manage text','plugin','managetext','acymailing',0,1,1,0,'{\"version\":\"1.0.0\",\"author\":\"Acyba\",\"creationDate\":\"October 2010\"}','','','',0,'0000-00-00 00:00:00',10,0),
	(10006,'AcyMailing Tag : Website links','plugin','online','acymailing',0,1,1,0,'{\"version\":\"3.7.0\",\"author\":\"Acyba\",\"creationDate\":\"September 2009\"}','','','',0,'0000-00-00 00:00:00',6,0),
	(10007,'AcyMailing : share on social networks','plugin','share','acymailing',0,1,1,0,'{\"version\":\"1.0.0\",\"author\":\"Acyba\",\"creationDate\":\"August 2010\"}','','','',0,'0000-00-00 00:00:00',20,0),
	(10008,'AcyMailing : Statistics Plugin','plugin','stats','acymailing',0,1,1,0,'{\"version\":\"3.7.0\",\"author\":\"Acyba\",\"creationDate\":\"September 2009\"}','','','',0,'0000-00-00 00:00:00',50,0),
	(10009,'AcyMailing table of contents generator','plugin','tablecontents','acymailing',0,1,1,0,'{\"version\":\"1.0.0\",\"author\":\"Acyba\",\"creationDate\":\"January 2011\"}','','','',0,'0000-00-00 00:00:00',5,0),
	(10010,'AcyMailing Tag : CB User information','plugin','tagcbuser','acymailing',0,0,1,0,'{\"version\":\"3.7.0\",\"author\":\"Acyba\",\"creationDate\":\"September 2009\"}','','','',0,'0000-00-00 00:00:00',4,0),
	(10011,'AcyMailing Tag : content insertion','plugin','tagcontent','acymailing',0,1,1,0,'{\"version\":\"3.7.0\",\"author\":\"Acyba\",\"creationDate\":\"September 2009\"}','','','',0,'0000-00-00 00:00:00',11,0),
	(10012,'AcyMailing Tag : Subscriber information','plugin','tagsubscriber','acymailing',0,1,1,0,'{\"version\":\"4.8.1\",\"author\":\"Acyba\",\"creationDate\":\"novembre 2014\"}','','','',0,'0000-00-00 00:00:00',2,0),
	(10013,'AcyMailing Tag : Manage the Subscription','plugin','tagsubscription','acymailing',0,1,1,0,'{\"version\":\"4.8.1\",\"author\":\"Acyba\",\"creationDate\":\"novembre 2014\"}','','','',0,'0000-00-00 00:00:00',1,0),
	(10014,'AcyMailing Tag : Date / Time','plugin','tagtime','acymailing',0,1,1,0,'{\"version\":\"4.8.1\",\"author\":\"Acyba\",\"creationDate\":\"novembre 2014\"}','','','',0,'0000-00-00 00:00:00',5,0),
	(10015,'AcyMailing Tag : Joomla User Information','plugin','taguser','acymailing',0,1,1,0,'{\"version\":\"4.8.1\",\"author\":\"Acyba\",\"creationDate\":\"novembre 2014\"}','','','',0,'0000-00-00 00:00:00',3,0),
	(10016,'AcyMailing Template Class Replacer','plugin','template','acymailing',0,1,1,0,'{\"version\":\"4.8.1\",\"author\":\"Acyba\",\"creationDate\":\"novembre 2014\"}','','','',0,'0000-00-00 00:00:00',25,0),
	(10017,'AcyMailing Editor','plugin','acyeditor','editors',0,1,1,0,'{\"version\":\"4.8.1\",\"author\":\"Acyba\",\"creationDate\":\"novembre 2014\"}','','','',0,'0000-00-00 00:00:00',5,0),
	(10018,'AcyMailing : (auto)Subscribe during Joomla registration','plugin','regacymailing','system',0,1,1,0,'{\"version\":\"4.8.1\",\"author\":\"Acyba\",\"creationDate\":\"novembre 2014\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(10019,'AcyMailing Module','module','mod_acymailing','',0,1,1,0,'{\"version\":\"3.7.0\",\"author\":\"Acyba\",\"creationDate\":\"September 2009\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(10034,'JA Content Popup','module','mod_jacontentpopup','',0,1,0,0,'{\"legacy\":false,\"name\":\"JA Content Popup\",\"type\":\"module\",\"creationDate\":\"22 May 2014\",\"author\":\"JoomlArt.com\",\"copyright\":\"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.\",\"authorEmail\":\"webmaster@joomlart.com\",\"authorUrl\":\"www.joomlart.com\",\"version\":\"1.1.0\",\"description\":\"\\n\\t\\n\\t<div align=\\\"left\\\">\\n\\t<h2>JA Content Popup module for Joomla! 2.5 and Joomla! 3.3<\\/h2>\\n\\t<div style=\'font-weight: normal\'>\\n\\t\\t<p><span style=\'color: #ff6600;\'><strong>Overview:<\\/strong><\\/span> JA Content popup module allows easy and elegant display of articles (from selected categories) and display them with thumbnail image, title and description. The thumnails together build up a portfolio layout. The full article will be opened in a popup, which supports many cool animation types such as fading, verticle slices, zoom or rotate... <\\/p>\\n\\t\\t<strong><span style=\'color: #ff0000;\'>Features:<\\/span><\\/strong><br \\/>\\n\\t\\t<ul>\\n\\t\\t\\t<li>Native with Joomla! 2.5 & Joomla! 3.3<\\/li>\\n\\t\\t\\t<li>6 animation types supported.<\\/li>\\n\\t\\t\\t<li>Title and description display can be optional.<\\/li>\\n\\t\\t\\t<li>Easy to customize Item\'s thumbnail size & popup size.<\\/li>\\n\\t\\t\\t<li>Limit number of items to display on one page.<\\/li>\\n\\t\\t\\t<li>Items can be grouped by categories.<\\/li>\\n\\t\\t\\t<li>...<\\/li>\\n\\t\\t<\\/ul>\\n\\t\\t<p><strong><span style=\\\"color: #ff0000;\\\">Upgrade Method:<\\/span><br \\/><\\/strong><\\/p>\\n\\t\\t<ol>\\n\\t\\t<li>You can install new version directly over this version. Uninstallation is not required. Backup any customized files before upgrading. OR<\\/li>\\n\\t\\t<li>Use <strong><a href=\\\"http:\\/\\/extensions.joomla.org\\/extensions\\/core-enhancements\\/installers\\/12077\\\" target=\\\"_blank\\\">JA Extensions Manager<\\/a><\\/strong> Component for easy upgrades and rollbacks. <strong><a href=\\\"http:\\/\\/www.youtube.com\\/user\\/JoomlArt#p\\/c\\/BC9B0C0BFE98657E\\/2\\/mNAuJRmifG8\\\" target=\\\"_blank\\\">Watch Video..<\\/a><\\/strong><\\/li>\\n\\t\\t<\\/ol>\\n\\t\\t<p><span style=\\\"color: #008000;\\\"><strong>Links:<\\/strong><\\/span><\\/p>\\n\\t\\t<ul>\\n\\t\\t<li><a target=\\\"_blank\\\" href=\\\"http:\\/\\/pm.joomlart.com\\/browse\\/JAMODPOPUP\\\">Report Bug<\\/a><\\/li>\\n\\t\\t<li><a target=\\\"_blank\\\" href=\\\"http:\\/\\/update.joomlart.com\\/\\\">Updates &amp; Versions<\\/a><\\/li>\\n\\t\\t<\\/ul>\\n\\t\\t<p>Copyright 2004 - 2014 <a href=\\\"http:\\/\\/www.joomlart.com\\/\\\" title=\\\"Visit Joomlart.com!\\\">JoomlArt.com<\\/a>.<\\/p>\\n\\t<\\/div>\\n\\t<\\/div>\\n\\t\\n\\t\",\"group\":\"\"}','{\"source\":\"JANewsHelper\",\"catsid\":\"\",\"k2catsid\":\"\",\"group_categories\":\"0\",\"limited\":\"10\",\"sort_order_field\":\"created\",\"sort_order_field_cat\":\"name\",\"sort_order\":\"DESC\",\"show_titles\":\"1\",\"show_introtext\":\"1\",\"show_nav_control\":\"0\",\"show_paging\":\"1\",\"thumbnail_mode\":\"crop\",\"use_ratio\":\"1\",\"width\":\"100\",\"height\":\"100\",\"show_popup\":\"1\",\"iframewidth\":\"500\",\"iframeheight\":\"500\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10070,'MOD_JA_ACM','module','mod_ja_acm','',0,1,0,0,'{\"name\":\"MOD_JA_ACM\",\"type\":\"module\",\"creationDate\":\"13 January 2015\",\"author\":\"JoomlArt\",\"copyright\":\"Copyright \\u00a9 2005 - 2014 JoomlArt.com. All Rights Reserved.\",\"authorEmail\":\"info@joomlart.com\",\"authorUrl\":\"www.joomlart.com\",\"version\":\"2.0.4\",\"description\":\"\\n\\t\\t\\n\\t\\t<div align=\\\"left\\\">\\t\\t\\n\\t\\t\\t<div style=\\\"background:url(\'http:\\/\\/joomlart.s3.amazonaws.com\\/images\\/userguide\\/ja_templates\\/uber\\/acm-logo.png\') no-repeat top left;padding-left:100px;\\\">\\n\\t\\t\\t\\t<h1>JA ACM Module for Joomla 2.5 & 3.3<\\/h1>\\n\\t\\t\\t\\t<div style=\'font-weight: normal\'>\\n\\t\\t\\t\\t\\t<p>JA ACM module (JoomlArt Advanced Custom module) is to help you build content blocks for your Joomla site easily based on pre-made layouts and styles. The content blocks together will build a landing page or a complete site for you. <\\/p>\\n\\t\\t\\t\\t<\\/div>\\n\\t\\t\\t<\\/div>\\n\\t\\t\\t<br \\/>\\n\\t\\t\\t<p>Highlighted features:<\\/p>\\n\\t\\t\\t<div style=\'font-weight: normal\'>\\n\\t\\t\\t\\t<ul>\\n\\t\\t\\t\\t\\t<li style=\\\"background:url(\'http:\\/\\/www.joomlart.com\\/templates\\/ja-v4\\/images\\/joomlart\\/icon-checklist.png\') no-repeat left center;padding:10px 0px 10px 20px;\\\">12+ block types: At this phase, we round up typical blocks that Uber has to offer. Each block type comes with multiple styles.<\\/li>\\n\\t\\t\\t\\t\\t<li style=\\\"background:url(\'http:\\/\\/www.joomlart.com\\/templates\\/ja-v4\\/images\\/joomlart\\/icon-checklist.png\') no-repeat left center;padding:10px 0px 10px 20px;\\\">Easy editing & defining your page-specific field sets within each block. Each block has its own LESS file, so you have full control to define your own class and style.<\\/li>\\n\\t\\t\\t\\t\\t<li style=\\\"background:url(\'http:\\/\\/www.joomlart.com\\/templates\\/ja-v4\\/images\\/joomlart\\/icon-checklist.png\') no-repeat left center;padding:10px 0px 10px 20px;\\\">Content-creator-friendly: completely separate content & design. No longer mixing HTML syntax embedded inside article.<\\/li>\\n\\t\\t\\t\\t\\t<li style=\\\"background:url(\'http:\\/\\/www.joomlart.com\\/templates\\/ja-v4\\/images\\/joomlart\\/icon-checklist.png\') no-repeat left center;padding:10px 0px 10px 20px;\\\">Allow us to dig deeper into the modular block approach which eases our page management effort.<\\/li>\\n\\t\\t\\t\\t<\\/ul>\\n\\t\\t\\t<\\/div>\\n\\t\\t\\t<br \\/>\\n\\t\\t\\t\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t\",\"group\":\"\"}','{\"jatools-config\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10074,'isis','template','isis','',1,1,1,0,'{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\"}','{\"templateColor\":\"\",\"logoFile\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10077,'tagcontenttags','plugin','tagcontenttags','acymailing',0,0,1,0,'false','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10171,'Redshop Fallback Redirect plugin','plugin','reds_redirect','system',0,0,1,0,'','','','',0,'0000-00-00 00:00:00',0,0),
	(10176,'JA Masshead','module','mod_jamasshead','',0,1,0,0,'{\"name\":\"JA Masshead\",\"type\":\"module\",\"creationDate\":\"June 2014\",\"author\":\"JoomlArt.com\",\"copyright\":\"J.O.O.M Solutions Co., Ltd.\",\"authorEmail\":\"webmaster@joomlart.com\",\"authorUrl\":\"www.joomlart.com\",\"version\":\"2.6.0\",\"description\":\"\\n\\t\\t\\n\\t\\t<div align=\\\"left\\\">\\t\\t\\n\\t\\t\\t<h1>JA Masshead Module for Joomla 2.5 & 3.3<\\/h1>\\n\\t\\t\\t<div style=\'font-weight: normal\'>\\n\\t\\t\\t<p>Please refer to the backend settings of the demo template quickstart for usage examples and also refer to <a target=\'_blank\' href=\'http:\\/\\/www.joomlart.com\\/forums\\/showthread.php?64198\'>General Userguide<\\/a> for details.<\\/strong><\\/p>\\n\\t\\t\\t<p><span style=\'color: #ff6600;\'><strong>Features:<\\/strong><\\/span><\\/p>\\n\\t\\t\\tJA Masshead Module displays masshead title like the JoomlArt masshead. Title and description can be specifically configured for any pages.\\n\\t\\t\\t<p><strong><span style=\'color: #ff0000;\'>Usage Instruction:<\\/span><br \\/><\\/strong><\\/p>\\n\\t\\t\\t<strong>The configuration field use 2 formats:<\\/strong> <br \\/>\\n\\t\\t\\t\\t<ul>\\n\\t\\t\\t\\t\\t<li>Format 1: <code>[Masshead option=\\\"com_name\\\" view=\\\"view_name\\\" layout=\\\"layout_name\\\" task=\\\"task_name\\\" id=\\\"id\\\" title=\\\"Title\\\" ]Description here[\\/Masshead]<\\/code><\\/li>\\n      \\t\\t\\t\\t<li>Format 2: <code>[Masshead Itemid=\\\"page_id_1,page_id_2,...\\\" title=\\\"Title\\\" ]Description here[\\/Masshead]<\\/code><\\/li>\\n\\t\\t\\t\\t<\\/ul>\\n\\t\\t\\t<br \\/>\\n\\t\\t\\t<strong>If configuration field is empty:<\\/strong>\\t\\n\\t\\t\\t\\t<ul>\\n\\t\\t\\t\\t\\t<li>If this is an article view: use the Article title as Masshead title, Article metadesc as masshead description<\\/li>\\n      \\t\\t\\t\\t<li>If not: use the Page title as Mass title.<\\/li>\\n      \\t\\t\\t\\t<li>If no value for Title & Description, use default value.<\\/li>\\n\\t\\t\\t\\t<\\/ul>\\n\\t\\t\\t<br \\/>\\t\\n\\t\\t\\t<strong>If configuration field is updated:<\\/strong><br \\/> \\n\\t\\t\\t\\t<ol>\\n\\t\\t\\t\\t\\t<li>Use that value<\\/li>\\n\\t\\t\\t\\t\\t<li>Support multiple configs, each config on a line; eg: <br \\/>\\n\\t\\t\\t\\t\\t\\t<code>\\n\\t\\t\\t\\t\\t\\t[Masshead option=\\\"com_name1\\\" view=\\\"view_name1\\\" layout=\\\"layout_name1\\\" task=\\\"task_name1\\\" id=\\\"id1\\\" title=\\\"Title1\\\" ]Description 1 here[\\/Masshead]<br \\/>\\n\\t\\t\\t\\t\\t\\t[Masshead option=\\\"com_name2\\\" view=\\\"view_name1\\\" layout=\\\"layout_name2\\\" task=\\\"task_name2\\\" id=\\\"id2\\\" title=\\\"Title2\\\" ]Description 2 here[\\/Masshead]<br \\/>\\n\\t\\t\\t\\t\\t\\t[Masshead Itemid=\\\"page_id1_1,page_id1_2,...\\\" title=\\\"Title page 1\\\" ]Description page 1 here[\\/Masshead]<br \\/>\\n\\t\\t\\t\\t\\t\\t[Masshead Itemid=\\\"page_id2_1,page_id2_2,...\\\" title=\\\"Title page 2\\\" ]Description page 2 here[\\/Masshead]\\n\\t\\t\\t\\t\\t\\t<\\/code>\\n\\t\\t\\t\\t\\t<\\/li>\\n\\t\\t\\t\\t\\t<li>If config sets multiple conditions, then the module will prefer to the first condition only and ignore the rest.<\\/li>\\n\\t\\t\\t\\t<\\/ol>\\n\\t\\t\\t<br \\/>\\n\\t\\t\\t<strong>Use extra paramaters:<\\/strong><br \\/> \\t\\t\\t\\t\\n\\t\\t\\t<ol>\\n\\t\\t\\t\\t<li>Extra parameters can put in config as <b>name=\\\"value\\\"<\\/b> and access through variables <b>$masshead[\'params\'][\'name\']<\\/b> by overwritting module layout in the template<\\/li>\\n\\t\\t\\t\\t<li>Eg: <br ?>\\n\\t\\t\\t\\t\\t<code>[Masshead Itemid=\\\"page_id\\\" title=\\\"Title\\\" <span style=\\\"color:red\\\">background=\\\"image url\\\"<\\/span>]Description[\\/Masshead]<\\/code>\\n\\t\\t\\t\\t<br \\/>\\n\\t\\t\\t\\tAccess the param background: <br \\/>\\n\\t\\t\\t\\t<code>\\n\\t\\t\\t\\t\\t&lt;div class=&quot;jamasshead&quot; <span style=\\\"color:red\\\">&lt;?php if(isset($masshead[\'params\'][\'background\'])): ?&gt;<\\/span> style=&quot;background-image: url(<span style=\\\"color:red\\\">&lt;?php echo $masshead[\'params\'][\'background\'] ?&gt;<\\/span>)&quot; <span style=\\\"color:red\\\">&lt;?php endif; ?&gt;<\\/span>&gt;\\n\\t\\t\\t\\t<\\/code>\\n\\t\\t\\t\\t<\\/li>\\n\\t\\t\\t<\\/ol>\\n\\t\\t\\t\\n\\t\\t\\t<p><strong><span style=\'color: #ff0000;\'>Upgrade Method:<\\/span><br \\/><\\/strong><\\/p>\\n\\t\\t\\t\\t<ol><li>You can install new version directly over this version. Uninstallation is not required. <\\/li>\\n\\t\\t\\t\\t<li>Backup any customized files before upgrading.<\\/li><\\/ol>\\n\\t\\t\\t<p><span style=\'color: #008000;\'><strong>Links:<\\/strong><\\/span><\\/p>\\n\\t\\t\\t  <ul><li><a target=\'_blank\' href=\'http:\\/\\/update.joomlart.com\\/\'>Updates &amp; Versions<\\/a><\\/li><li><a target=\'_blank\' href=\'http:\\/\\/www.joomlart.com\\/forums\\/showthread.php?64198\'>General Userguide<\\/a><\\/li><\\/ul>\\t\\t\\t\\n\\t\\t\\t<p>Copyright 2004 - 2014 <a href=\'http:\\/\\/www.joomlart.com\\/\' title=\'Visit Joomlart.com!\'>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t\\t<\\/div>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t\",\"group\":\"\"}','{\"default-title\":\"\",\"default-description\":\"\",\"config\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10177,'System - JA Google Map','plugin','jagooglemap','system',0,0,1,0,'{\"name\":\"System - JA Google Map\",\"type\":\"plugin\",\"creationDate\":\"22 May 2014\",\"author\":\"JoomlArt.com\",\"copyright\":\"J.O.O.M Solutions Co., Ltd.\",\"authorEmail\":\"webmaster@joomlart.com\",\"authorUrl\":\"www.joomlart.com\",\"version\":\"2.5.7\",\"description\":\"\\n\\t\\t\\n\\t\\t<div style=\'font-weight:normal; text-align: left;\'>\\n\\t\\t\\t<span style=\\\"color: #008000;\\\">\\n\\t\\t\\t\\t<strong>Google Maps Plugin for Joomla 2.5 and Joomla 3.3<\\/strong>\\n\\t\\t\\t<\\/span>\\n\\t\\t\\t<br \\/>\\n\\t\\t\\t<p><img src=\\\"http:\\/\\/joomlart.s3.amazonaws.com\\/images\\/mis\\/coming_up_teaser\\/ja_map_logo.jpg\\\" \\/><\\/p>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\t<span style=\\\"color: #ff6600;\\\">\\n\\t\\t\\t\\t\\t<strong>Features:<\\/strong>\\n\\t\\t\\t\\t<\\/span>\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<ol>\\n\\t\\t\\t\\t<li>Easy to use. Change configuration values, check the checkboxes to include the values in the code, copy the code and paste into your article.<\\/li>\\n\\t\\t\\t\\t<li>Tooltips added to all config options, with description and help text. Hover your mouse over the configuration options and read the tips.<\\/li>\\n\\t\\t\\t<\\/ol>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\t<strong>\\n\\t\\t\\t\\t\\t<span style=\\\"color: #ff6600;\\\">Requirements:<\\/span>\\n\\t\\t\\t\\t<\\/strong>\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<ol>\\n\\t\\t\\t\\t<li> Google Map API Key is required to validate requests from your site to Google Maps, sign up for a Google Map API Key <a target=\\\"_blank\\\" href=\\\"http:\\/\\/code.google.com\\/apis\\/maps\\/signup.html\\\">HERE<\\/a> .<\\/li>\\n\\t\\t\\t\\t<li>If you plan to use Latitude &amp; Longitude for your target location. Get co-ordinates from <a target=\\\"_blank\\\" href=\\\"http:\\/\\/www.satsig.net\\/maps\\/lat-long-finder.htm\\\">HERE<\\/a>. Pick the co-ordinates as shown in the screenshot below.<\\/li>\\n\\t\\t\\t<\\/ol>\\n\\t\\t\\t<img src=\\\"http:\\/\\/joomlart.s3.amazonaws.com\\/images\\/mis\\/Latitude_Longitude_picker.png\\\" \\/>\\n\\t\\t\\t<p style=\\\"clear:both;\\\"><br \\/>\\n\\t\\t\\t\\t<span style=\\\"color: #008000;\\\">\\n\\t\\t\\t\\t\\t<strong>Watch the Video<\\/strong>\\n\\t\\t\\t\\t<\\/span>\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\t<object data=\\\"http:\\/\\/www.youtube.com\\/v\\/4YHh4JGpTig&amp;hl=en&amp;fs=1&amp;rel=0\\\" type=\\\"application\\/x-shockwave-flash\\\" height=\\\"385\\\" width=\\\"480\\\"><param name=\\\"allowfullscreen\\\" value=\\\"true\\\" \\/><param name=\\\"allowscriptaccess\\\" value=\\\"always\\\" \\/><param name=\\\"src\\\" value=\\\"http:\\/\\/www.youtube.com\\/v\\/4YHh4JGpTig&amp;hl=en&amp;fs=1&amp;rel=0\\\" \\/><\\/object>\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<p>Right click on the video and Click \\\"Open in Youtube\\\" to view full screen.<\\/p>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\t<strong>\\n\\t\\t\\t\\t\\t<span style=\\\"color: #ff0000;\\\">Important Instruction:<\\/span>\\n\\t\\t\\t\\t\\t<br \\/>\\n\\t\\t\\t\\t<\\/strong>\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<ol>\\n\\t\\t\\t\\t<li>Use the Code generator to generate codes. However do not save the plugin settings when done. Always Hit the Close Button.<\\/li>\\n\\t\\t\\t\\t<li><span style=\\\"color: #ff0000;\\\">DO NOT<\\/span> save settings each time you generate the map, the default configured maps will be affected. This is true incase your earlier maps CODE do not have the override values in them. Hit the Cancel button to preserve your default settings.<\\/li>\\n\\t\\t\\t\\t<li>If your map is not seen in the article, then SwitchOver to HTML Source Edit view, while inserting the code into the desired location<\\/li>\\n\\t\\t\\t<\\/ol>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\t<span style=\\\"color: #008000;\\\">\\n\\t\\t\\t\\t\\t<strong>Links:<\\/strong>\\n\\t\\t\\t\\t<\\/span>\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\t<a target=\\\"_blank\\\" href=\\\"http:\\/\\/www.joomlart.com\\/forums\\/forumdisplay.php?f=172\\\">JA Google Map Forum<\\/a><p> <a target=\\\"_blank\\\" href=\\\"http:\\/\\/pm.joomlart.com\\/browse\\/JAECPLGGMAPJIVI\\\">Found a Bug? \\/ Have a Wishlist? Report here<\\/a><\\/p><p>Copyright 2012 <a href=\\\"http:\\/\\/www.joomlart.com\\/\\\" title=\\\"Visit Joomlart.com!\\\">JoomlArt.com<\\/a>.\\n\\t\\t\\t<\\/p>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t\",\"group\":\"\"}','{\"api_key\":\"AIzaSyCNIJV_hl5sVimQSQlc7PsP9-Kz0KGGQ1Y\",\"disable_map\":\"0\",\"to_location\":\"New York\",\"target_lat\":\"\",\"target_lon\":\"\",\"to_location_info\":\"\",\"from_location\":\"\",\"maptype\":\"normal\",\"map_width\":\"500\",\"map_height\":\"300\",\"zoom\":\"15\",\"maptype_control_display\":\"1\",\"mapstyles_control_display\":\"0\",\"map_styles\":\"\",\"maptype_control_style\":\"drop_down\",\"maptype_control_position\":\"TR\",\"toolbar_control_display\":\"1\",\"toolbar_control_style\":\"small_3d\",\"toolbar_control_position\":\"TL\",\"display_scale\":\"0\",\"display_overview\":\"0\",\"sensor\":\"0\",\"code_container\":\"{jamap }\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10178,'jshopping','component','com_jshopping','',1,0,0,0,'{\"name\":\"jshopping\",\"type\":\"component\",\"creationDate\":\"07.02.2015\",\"author\":\"MAXXmarketing GmbH\",\"copyright\":\"\",\"authorEmail\":\"marketing@maxx-marketing.net\",\"authorUrl\":\"http:\\/\\/www.webdesigner-profi.de\",\"version\":\"4.9.1\",\"description\":\"Joomshopping - shop component. Note: JoomShopping code files are named as jshopping\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10179,'Jshopping Cart','module','mod_jshopping_cart','',0,0,0,0,'{\"name\":\"Jshopping Cart\",\"type\":\"module\",\"creationDate\":\"20.12.2012\",\"author\":\"MAXXmarketing GmbH\",\"copyright\":\"\",\"authorEmail\":\"marketing@maxx-marketing.net\",\"authorUrl\":\"http:\\/\\/www.webdesigner-profi.de\",\"version\":\"4.0.1\",\"description\":\"Displays a JoomShopping cart\",\"group\":\"\"}','[]','','',0,'0000-00-00 00:00:00',0,0),
	(10180,'Jshopping Currencies','module','mod_jshopping_currencies','',0,0,0,0,'{\"name\":\"Jshopping Currencies\",\"type\":\"module\",\"creationDate\":\"20.12.2012\",\"author\":\"MAXXmarketing GmbH\",\"copyright\":\"\",\"authorEmail\":\"marketing@maxx-marketing.net\",\"authorUrl\":\"http:\\/\\/www.webdesigner-profi.de\",\"version\":\"4.0.1\",\"description\":\"Displays a joomshopping currencies select list\",\"group\":\"\"}','[]','','',0,'0000-00-00 00:00:00',0,0),
	(10181,'Jshopping Search','module','mod_jshopping_search','',0,0,0,0,'{\"name\":\"Jshopping Search\",\"type\":\"module\",\"creationDate\":\"20.12.2012\",\"author\":\"MAXXmarketing GmbH\",\"copyright\":\"\",\"authorEmail\":\"marketing@maxx-marketing.net\",\"authorUrl\":\"http:\\/\\/www.webdesigner-profi.de\",\"version\":\"4.1.0\",\"description\":\"Displays a joomshopping search\",\"group\":\"\"}','{\"advanced_search\":\"1\",\"category_id\":\"\",\"search_type\":\"any\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10182,'Jshopping Bestseller Products','module','mod_jshopping_bestseller_products','',0,0,0,0,'{\"name\":\"Jshopping Bestseller Products\",\"type\":\"module\",\"creationDate\":\"22.10.2014\",\"author\":\"MAXXmarketing GmbH\",\"copyright\":\"\",\"authorEmail\":\"marketing@maxx-marketing.net\",\"authorUrl\":\"http:\\/\\/www.webdesigner-profi.de\",\"version\":\"4.0.3\",\"description\":\"Displays bestseller products of shop.\",\"group\":\"\"}','{\"count_products\":\"5\",\"catids\":\"\",\"enable_addon\":\"1\",\"show_image\":\"1\",\"show_image_label\":\"0\",\"allow_review\":\"0\",\"short_description\":\"0\",\"manufacturer_name\":\"0\",\"product_quantity\":\"0\",\"product_old_price\":\"0\",\"product_price_default\":\"0\",\"display_price\":\"1\",\"show_tax_product\":\"0\",\"show_plus_shipping_in_product\":\"0\",\"basic_price_info\":\"0\",\"product_weight\":\"0\",\"delivery_time\":\"0\",\"extra_field\":\"0\",\"vendor\":\"0\",\"product_list_qty_stock\":\"0\",\"show_button\":\"1\",\"show_button_buy\":\"0\",\"show_button_detal\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10183,'Jshopping Last Products','module','mod_jshopping_latest_products','',0,0,0,0,'{\"name\":\"Jshopping Last Products\",\"type\":\"module\",\"creationDate\":\"20.12.2012\",\"author\":\"MAXXmarketing GmbH\",\"copyright\":\"\",\"authorEmail\":\"marketing@maxx-marketing.net\",\"authorUrl\":\"http:\\/\\/www.webdesigner-profi.de\",\"version\":\"4.0.4\",\"description\":\"Displays last products of shop.\",\"group\":\"\"}','{\"count_products\":\"5\",\"catids\":\"\",\"enable_addon\":\"1\",\"show_image\":\"1\",\"show_image_label\":\"0\",\"allow_review\":\"0\",\"short_description\":\"0\",\"manufacturer_name\":\"0\",\"product_quantity\":\"0\",\"product_old_price\":\"0\",\"product_price_default\":\"0\",\"display_price\":\"1\",\"show_tax_product\":\"0\",\"show_plus_shipping_in_product\":\"0\",\"basic_price_info\":\"0\",\"product_weight\":\"0\",\"delivery_time\":\"0\",\"extra_field\":\"0\",\"vendor\":\"0\",\"product_list_qty_stock\":\"0\",\"show_button\":\"1\",\"show_button_buy\":\"0\",\"show_button_detal\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10187,'VIRTUEMART','component','com_virtuemart','',1,1,0,0,'{\"name\":\"VIRTUEMART\",\"type\":\"component\",\"creationDate\":\"September 18 2015\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"max|at|virtuemart.net\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"3.0.10\",\"description\":\"\",\"group\":\"\",\"filename\":\"virtuemart\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10188,'VirtueMart_allinone','component','com_virtuemart_allinone','',1,1,0,0,'{\"name\":\"VirtueMart_allinone\",\"type\":\"component\",\"creationDate\":\"September 18 2015\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"3.0.10\",\"description\":\"\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10189,'VM Payment - Standard','plugin','standard','vmpayment',0,1,1,0,'{\"name\":\"Standard\",\"type\":\"plugin\",\"creationDate\":\"September 18 2015\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"3.0.10\",\"description\":\"Standard payment plugin\",\"group\":\"\",\"filename\":\"standard\"}','','','',0,'0000-00-00 00:00:00',5,0),
	(10190,'VM Payment - Klarna','plugin','klarna','vmpayment',0,0,1,0,'{\"name\":\"Klarna\",\"type\":\"plugin\",\"creationDate\":\"September 18 2015\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"3.0.10\",\"description\":\"Klarna VirtueMart Payment Plugin\",\"group\":\"\",\"filename\":\"klarna\"}','','','',0,'0000-00-00 00:00:00',1,0),
	(10191,'VM Payment - KlarnaCheckout','plugin','klarnacheckout','vmpayment',0,0,1,0,'{\"name\":\"Klarna Checkout\",\"type\":\"plugin\",\"creationDate\":\"September 18 2015\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"3.0.10\",\"description\":\"\",\"group\":\"\",\"filename\":\"klarnacheckout\"}','','','',0,'0000-00-00 00:00:00',5,0),
	(10192,'VM Payment - Sofort Banking/Überweisung','plugin','sofort','vmpayment',0,0,1,0,'{\"name\":\"Sofort\",\"type\":\"plugin\",\"creationDate\":\"September 18 2015\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"3.0.10\",\"description\":\"<a href=\\\"http:\\/www.sofort.com\\\" target=\\\"_blank\\\">Sofort<\\/a> is a popular\\n\\tpayment provider and available in many countries. \\n    \",\"group\":\"\",\"filename\":\"sofort\"}','','','',0,'0000-00-00 00:00:00',2,0),
	(10193,'VM Payment - PayPal','plugin','paypal','vmpayment',0,0,1,0,'{\"name\":\"PayPal\",\"type\":\"plugin\",\"creationDate\":\"September 18 2015\",\"author\":\"VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"3.0.10\",\"description\":\"PayPal\",\"group\":\"\",\"filename\":\"paypal\"}','','','',0,'0000-00-00 00:00:00',3,0),
	(10194,'VM Payment - Heidelpay','plugin','heidelpay','vmpayment',0,0,1,0,'{\"name\":\"Heidelpay\",\"type\":\"plugin\",\"creationDate\":\"12-Sep-2012\",\"author\":\"Heidelberger Payment GmbH\",\"copyright\":\"Copyright Heidelberger Payment GmbH\",\"authorEmail\":\"info@heidelpay.de\",\"authorUrl\":\"http:\\/\\/www.heidelpay.de\",\"version\":\"3.0.10\",\"description\":\"\\n        <h2>Virtuemart Plugin von:<\\/h2><p><a href=\\\"http:\\/\\/www.Heidelpay.de\\\" target=\\\"_blank\\\"><img src=\\\"http:\\/\\/www.heidelpay.de\\/gfx\\/logo.gif\\\" style=\\\"margin-right:20px;\\\"\\/><\\/a><\\/p> \",\"group\":\"\",\"filename\":\"heidelpay\"}','','','',0,'0000-00-00 00:00:00',5,0),
	(10195,'VM Payment - Paybox','plugin','paybox','vmpayment',0,0,1,0,'{\"name\":\"VM Payment - Paybox\",\"type\":\"plugin\",\"creationDate\":\"September 18 2015\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"3.0.10\",\"description\":\"<a href=\\\"http:\\/\\/paybox.com\\\" target=\\\"_blank\\\">Paybox<\\/a> \\n    \",\"group\":\"\",\"filename\":\"paybox\"}','','','',0,'0000-00-00 00:00:00',5,0),
	(10196,'VM Payment - Pay with Amazon','plugin','amazon','vmpayment',0,0,1,0,'{\"name\":\"AMAZON\",\"type\":\"plugin\",\"creationDate\":\"September 18 2015\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"3.0.10\",\"description\":\"AMAZON payment plugin\",\"group\":\"\",\"filename\":\"amazon\"}','','','',0,'0000-00-00 00:00:00',5,0),
	(10197,'System - Pay with Amazon','plugin','amazon','system',0,0,1,0,'{\"name\":\"AMAZON\",\"type\":\"plugin\",\"creationDate\":\"September 18 2015\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"3.0.10\",\"description\":\"AMAZON payment SYSTEM plugin\",\"group\":\"\",\"filename\":\"amazon\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(10198,'VM Payment - Realex HPP & API','plugin','realex_hpp_api','vmpayment',0,0,1,0,'{\"name\":\"realex_hpp_api\",\"type\":\"plugin\",\"creationDate\":\"September 18 2015\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"3.0.10\",\"description\":\"Realex HPP and API\",\"group\":\"\",\"filename\":\"realex_hpp_api\"}','','','',0,'0000-00-00 00:00:00',5,0),
	(10199,'VM UserField - Realex HPP & API','plugin','realex_hpp_api','vmuserfield',0,0,1,0,'{\"name\":\"Realex_hpp_api\",\"type\":\"plugin\",\"creationDate\":\"September 18 2015\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"3.0.10\",\"description\":\"Card storage plugin for Realex\",\"group\":\"\",\"filename\":\"realex_hpp_api\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(10200,'VM Payment - Skrill','plugin','skrill','vmpayment',0,0,1,0,'{\"name\":\"Skrill\",\"type\":\"plugin\",\"creationDate\":\"September 18 2015\",\"author\":\"Skrill Holdings Limited\",\"copyright\":\"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.skrill.com\",\"version\":\"3.0.10\",\"description\":\"<a href=\\\"http:\\/\\/www.skrill.com\\\" target=\\\"_blank\\\">skrill<\\/a> is a popular\\n\\tpayment provider authorised by the Financial Services Authority of the United Kingdom (FSA). \\n    \",\"group\":\"\",\"filename\":\"skrill\"}','','','',0,'0000-00-00 00:00:00',5,0),
	(10201,'VM Payment - Authorize.net','plugin','authorizenet','vmpayment',0,0,1,0,'{\"name\":\"Authorize.net AIM\",\"type\":\"plugin\",\"creationDate\":\"September 18 2015\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"3.0.10\",\"description\":\"Authorize.net AIM\",\"group\":\"\",\"filename\":\"authorizenet\"}','','','',0,'0000-00-00 00:00:00',5,0),
	(10202,'VM Payment - Sofort iDeal','plugin','sofort_ideal','vmpayment',0,0,1,0,'{\"name\":\"Sofort Ideal\",\"type\":\"plugin\",\"creationDate\":\"September 18 2015\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"3.0.10\",\"description\":\"<a href=\\\"http:\\/www.sofort.com\\\" target=\\\"_blank\\\">Sofort<\\/a> is a popular\\n\\tpayment provider and available in many countries. \\n    \",\"group\":\"\",\"filename\":\"sofort\"}','','','',0,'0000-00-00 00:00:00',2,0),
	(10203,'VM Payment - Klikandpay','plugin','klikandpay','vmpayment',0,0,1,0,'{\"name\":\"VM Payment - klikandpay\",\"type\":\"plugin\",\"creationDate\":\"September 18 2015\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"Beta1\",\"description\":\"<a href=\\\"http:\\/\\/klikandpay.com\\\" target=\\\"_blank\\\">klikandpay<\\/a> \\n    \",\"group\":\"\",\"filename\":\"klikandpay\"}','','','',0,'0000-00-00 00:00:00',5,0),
	(10204,'VM Shipment - By weight, ZIP and countries','plugin','weight_countries','vmshipment',0,1,1,0,'{\"name\":\"By weight, ZIP and countries\",\"type\":\"plugin\",\"creationDate\":\"September 18 2015\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"3.0.10\",\"description\":\"VMSHIPMENT_WEIGHT_COUNTRIES_PLUGIN_DESC\",\"group\":\"\",\"filename\":\"weight_countries\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(10205,'VM Custom - Customer text input','plugin','textinput','vmcustom',0,1,1,0,'{\"name\":\"VMCustom - textinput\",\"type\":\"plugin\",\"creationDate\":\"September 18 2015\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2014 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"3.0.10\",\"description\":\"text input plugin for product\",\"group\":\"\",\"filename\":\"textinput\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(10206,'VM Custom - Product specification','plugin','specification','vmcustom',0,1,1,0,'{\"name\":\"plgvm_specification\",\"type\":\"plugin\",\"creationDate\":\"September 18 2015\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2014 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"3.0.10\",\"description\":\"VMCustom - specification; text input plugin for product\",\"group\":\"\",\"filename\":\"specification\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(10207,'VM Calculation - Avalara Tax','plugin','avalara','vmcalculation',0,0,1,0,'{\"name\":\"VM - Calculation Avalara Tax\",\"type\":\"plugin\",\"creationDate\":\"September 18 2015\",\"author\":\"Max Milbers\",\"copyright\":\"Copyright (C) 2013 iStraxx UG (haftungsbeschr\\u00e4nkt). All rights reserved\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/virtuemart.net\",\"version\":\"3.0.10\",\"description\":\"VM - Calculation Avalara Tax; On demand tax calculation for whole U.S.A.\",\"group\":\"\",\"filename\":\"avalara\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(10208,'VirtueMart Product','plugin','virtuemart','search',0,0,1,0,'{\"name\":\"Search - VirtueMart\",\"type\":\"plugin\",\"creationDate\":\"September 18 2015\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"3.0.10\",\"description\":\"PLG_SEARCH_VIRTUEMART_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"virtuemart\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(10209,'mod_vmmenu','module','mod_vmmenu','',1,1,3,0,'{\"name\":\"VirtueMart Administrator Menu\",\"type\":\"module\",\"creationDate\":\"September 18 2015\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2013 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"max|at|virtuemart.net\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"3.0.10\",\"description\":\"MOD_VMMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_vmmenu\"}','','','',0,'0000-00-00 00:00:00',5,0),
	(10210,'mod_virtuemart_currencies','module','mod_virtuemart_currencies','',0,1,1,0,'{\"name\":\"mod_virtuemart_currencies\",\"type\":\"module\",\"creationDate\":\"September 18 2015\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"3.0.10\",\"description\":\"MOD_VIRTUEMART_CURRENCIES_DESC\",\"group\":\"\",\"filename\":\"mod_virtuemart_currencies\"}','','','',0,'0000-00-00 00:00:00',5,0),
	(10211,'mod_virtuemart_product','module','mod_virtuemart_product','',0,1,1,0,'{\"name\":\"mod_virtuemart_product\",\"type\":\"module\",\"creationDate\":\"September 18 2015\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"3.0.10\",\"description\":\"MOD_VIRTUEMART_PRODUCT_DESC\",\"group\":\"\",\"filename\":\"mod_virtuemart_product\"}','','','',0,'0000-00-00 00:00:00',3,0),
	(10212,'mod_virtuemart_search','module','mod_virtuemart_search','',0,1,1,0,'{\"name\":\"mod_virtuemart_search\",\"type\":\"module\",\"creationDate\":\"September 18 2015\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"3.0.10\",\"description\":\"MOD_VIRTUEMART_SEARCH_DESC\",\"group\":\"\",\"filename\":\"mod_virtuemart_search\"}','','','',0,'0000-00-00 00:00:00',2,0),
	(10213,'mod_virtuemart_manufacturer','module','mod_virtuemart_manufacturer','',0,1,1,0,'{\"name\":\"mod_virtuemart_manufacturer\",\"type\":\"module\",\"creationDate\":\"September 18 2015\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"3.0.10\",\"description\":\"MOD_VIRTUEMART_MANUFACTURER_DESC\",\"group\":\"\",\"filename\":\"mod_virtuemart_manufacturer\"}','','','',0,'0000-00-00 00:00:00',8,0),
	(10214,'mod_virtuemart_cart','module','mod_virtuemart_cart','',0,1,1,0,'{\"name\":\"mod_virtuemart_cart\",\"type\":\"module\",\"creationDate\":\"September 18 2015\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"3.0.10\",\"description\":\"MOD_VIRTUEMART_CART_DESC\",\"group\":\"\",\"filename\":\"mod_virtuemart_cart\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(10215,'mod_virtuemart_category','module','mod_virtuemart_category','',0,1,1,0,'{\"name\":\"mod_virtuemart_category\",\"type\":\"module\",\"creationDate\":\"September 18 2015\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"3.0.10\",\"description\":\"MOD_VIRTUEMART_CATEGORY_DESC\",\"group\":\"\",\"filename\":\"mod_virtuemart_category\"}','','','',0,'0000-00-00 00:00:00',4,0),
	(10216,'tcpdf','component','com_tcpdf','',1,1,0,0,'{\"name\":\"tcpdf\",\"type\":\"component\",\"creationDate\":\"February 2015\",\"author\":\"Nicola Asuni, The VirtueMart Development Team\",\"copyright\":\"Copyright (c) 2001-2013 Nicola Asuni - Tecnick.com LTD - Tutti i diritti riservati - All Rights Reserved. 2015 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"1.0.0\",\"description\":\"TCPDF 6.0.096 by Nicola Asuni. Joomla Installer by the VirtueMart Team\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10218,'hathor','template','hathor','',1,1,1,0,'{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"showSiteName\":\"0\",\"logoFile\":\"\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10219,'game_hcm','template','game_hcm','',0,1,1,0,'{\"name\":\"game_hcm\",\"type\":\"template\",\"creationDate\":\"30 Oct 2015\",\"author\":\"binhnk.info\",\"copyright\":\"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.\",\"authorEmail\":\"binhnk0791@gmail.com\",\"authorUrl\":\"http:\\/\\/binhnk.info\",\"version\":\"1.0\",\"description\":\"\\n\\t\\t\\n\\t\\t<div align=\\\"center\\\">\\n\\t\\t\\t<div class=\\\"alert alert-success\\\" style=\\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\\">\\n\\t\\t\\t\\t<a href=\\\"http:\\/\\/t3-framework.org\\/\\\"><img src=\\\"http:\\/\\/joomlart.s3.amazonaws.com\\/images\\/jat3v3-documents\\/message-installation\\/logo.png\\\" alt=\\\"some_text\\\" width=\\\"300\\\" height=\\\"99\\\"><\\/a>\\n\\t\\t\\t\\t<h4><a href=\\\"http:\\/\\/t3-framework.org\\/\\\" title=\\\"\\\">Home<\\/a> | <a href=\\\"http:\\/\\/demo.t3-framework.org\\/\\\" title=\\\"\\\">Demo<\\/a> | <a href=\\\"http:\\/\\/t3-framework.org\\/documentation\\\" title=\\\"\\\">Document<\\/a> | <a href=\\\"https:\\/\\/github.com\\/t3framework\\/t3\\/blob\\/master\\/CHANGELOG.md\\\" title=\\\"\\\">Changelog<\\/a><\\/h4>\\n\\t\\t\\t\\t<p> <\\/p>\\n\\t\\t\\t\\t<span style=\\\"color:#FF0000\\\">Note: T3 blank requires T3 plugin to be installed and enabled.<\\/span><p><\\/p>\\n\\t\\t\\t\\t<p>Copyright 2004 - 2015 <a href=\'http:\\/\\/www.joomlart.com\\/\' title=\'Visit Joomlart.com!\'>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t\\t<\\/div>\\n\\t\\t\\t<style>table.adminform{width: 100%;}<\\/style>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t\",\"group\":\"\",\"filename\":\"templateDetails\"}','{}','','',0,'0000-00-00 00:00:00',0,0);

/*!40000 ALTER TABLE `pz5yp_extensions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_finder_filters
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_finder_filters`;

CREATE TABLE `pz5yp_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_finder_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_finder_links`;

CREATE TABLE `pz5yp_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_finder_links_terms0
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_finder_links_terms0`;

CREATE TABLE `pz5yp_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_finder_links_terms1
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_finder_links_terms1`;

CREATE TABLE `pz5yp_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_finder_links_terms2
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_finder_links_terms2`;

CREATE TABLE `pz5yp_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_finder_links_terms3
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_finder_links_terms3`;

CREATE TABLE `pz5yp_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_finder_links_terms4
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_finder_links_terms4`;

CREATE TABLE `pz5yp_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_finder_links_terms5
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_finder_links_terms5`;

CREATE TABLE `pz5yp_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_finder_links_terms6
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_finder_links_terms6`;

CREATE TABLE `pz5yp_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_finder_links_terms7
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_finder_links_terms7`;

CREATE TABLE `pz5yp_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_finder_links_terms8
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_finder_links_terms8`;

CREATE TABLE `pz5yp_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_finder_links_terms9
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_finder_links_terms9`;

CREATE TABLE `pz5yp_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_finder_links_termsa
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_finder_links_termsa`;

CREATE TABLE `pz5yp_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_finder_links_termsb
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_finder_links_termsb`;

CREATE TABLE `pz5yp_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_finder_links_termsc
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_finder_links_termsc`;

CREATE TABLE `pz5yp_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_finder_links_termsd
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_finder_links_termsd`;

CREATE TABLE `pz5yp_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_finder_links_termse
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_finder_links_termse`;

CREATE TABLE `pz5yp_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_finder_links_termsf
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_finder_links_termsf`;

CREATE TABLE `pz5yp_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_finder_taxonomy
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_finder_taxonomy`;

CREATE TABLE `pz5yp_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `pz5yp_finder_taxonomy` DISABLE KEYS */;

INSERT INTO `pz5yp_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`)
VALUES
	(1,0,'ROOT',0,0,0);

/*!40000 ALTER TABLE `pz5yp_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_finder_taxonomy_map
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_finder_taxonomy_map`;

CREATE TABLE `pz5yp_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_finder_terms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_finder_terms`;

CREATE TABLE `pz5yp_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_finder_terms_common
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_finder_terms_common`;

CREATE TABLE `pz5yp_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `pz5yp_finder_terms_common` DISABLE KEYS */;

INSERT INTO `pz5yp_finder_terms_common` (`term`, `language`)
VALUES
	('a','en'),
	('about','en'),
	('after','en'),
	('ago','en'),
	('all','en'),
	('am','en'),
	('an','en'),
	('and','en'),
	('ani','en'),
	('any','en'),
	('are','en'),
	('aren\'t','en'),
	('as','en'),
	('at','en'),
	('be','en'),
	('but','en'),
	('by','en'),
	('for','en'),
	('from','en'),
	('get','en'),
	('go','en'),
	('how','en'),
	('if','en'),
	('in','en'),
	('into','en'),
	('is','en'),
	('isn\'t','en'),
	('it','en'),
	('its','en'),
	('me','en'),
	('more','en'),
	('most','en'),
	('must','en'),
	('my','en'),
	('new','en'),
	('no','en'),
	('none','en'),
	('not','en'),
	('noth','en'),
	('nothing','en'),
	('of','en'),
	('off','en'),
	('often','en'),
	('old','en'),
	('on','en'),
	('onc','en'),
	('once','en'),
	('onli','en'),
	('only','en'),
	('or','en'),
	('other','en'),
	('our','en'),
	('ours','en'),
	('out','en'),
	('over','en'),
	('page','en'),
	('she','en'),
	('should','en'),
	('small','en'),
	('so','en'),
	('some','en'),
	('than','en'),
	('thank','en'),
	('that','en'),
	('the','en'),
	('their','en'),
	('theirs','en'),
	('them','en'),
	('then','en'),
	('there','en'),
	('these','en'),
	('they','en'),
	('this','en'),
	('those','en'),
	('thus','en'),
	('time','en'),
	('times','en'),
	('to','en'),
	('too','en'),
	('true','en'),
	('under','en'),
	('until','en'),
	('up','en'),
	('upon','en'),
	('use','en'),
	('user','en'),
	('users','en'),
	('veri','en'),
	('version','en'),
	('very','en'),
	('via','en'),
	('want','en'),
	('was','en'),
	('way','en'),
	('were','en'),
	('what','en'),
	('when','en'),
	('where','en'),
	('whi','en'),
	('which','en'),
	('who','en'),
	('whom','en'),
	('whose','en'),
	('why','en'),
	('wide','en'),
	('will','en'),
	('with','en'),
	('within','en'),
	('without','en'),
	('would','en'),
	('yes','en'),
	('yet','en'),
	('you','en'),
	('your','en'),
	('yours','en');

/*!40000 ALTER TABLE `pz5yp_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_finder_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_finder_tokens`;

CREATE TABLE `pz5yp_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;



# Dump of table pz5yp_finder_tokens_aggregate
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_finder_tokens_aggregate`;

CREATE TABLE `pz5yp_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;



# Dump of table pz5yp_finder_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_finder_types`;

CREATE TABLE `pz5yp_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_languages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_languages`;

CREATE TABLE `pz5yp_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_languages` WRITE;
/*!40000 ALTER TABLE `pz5yp_languages` DISABLE KEYS */;

INSERT INTO `pz5yp_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`)
VALUES
	(1,'en-GB','English (UK)','English (UK)','en','en','','','','',1,1,1);

/*!40000 ALTER TABLE `pz5yp_languages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_menu`;

CREATE TABLE `pz5yp_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_menu` WRITE;
/*!40000 ALTER TABLE `pz5yp_menu` DISABLE KEYS */;

INSERT INTO `pz5yp_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`)
VALUES
	(1,'','Menu_Item_Root',X'726F6F74','','','','',1,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,99,0,'*',0),
	(2,'menu','com_banners',X'42616E6E657273','','Banners','index.php?option=com_banners','component',0,1,1,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1),
	(3,'menu','com_banners',X'42616E6E657273','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1),
	(4,'menu','com_banners_categories',X'43617465676F72696573','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1),
	(5,'menu','com_banners_clients',X'436C69656E7473','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1),
	(6,'menu','com_banners_tracks',X'547261636B73','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1),
	(7,'menu','com_contact',X'436F6E7461637473','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',19,24,0,'*',1),
	(8,'menu','com_contact',X'436F6E7461637473','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',20,21,0,'*',1),
	(9,'menu','com_contact_categories',X'43617465676F72696573','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',22,23,0,'*',1),
	(10,'menu','com_messages',X'4D6573736167696E67','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',25,30,0,'*',1),
	(11,'menu','com_messages_add',X'4E65772050726976617465204D657373616765','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',26,27,0,'*',1),
	(12,'menu','com_messages_read',X'526561642050726976617465204D657373616765','','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',28,29,0,'*',1),
	(13,'menu','com_newsfeeds',X'4E657773204665656473','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',31,36,0,'*',1),
	(14,'menu','com_newsfeeds_feeds',X'4665656473','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',32,33,0,'*',1),
	(15,'menu','com_newsfeeds_categories',X'43617465676F72696573','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',34,35,0,'*',1),
	(16,'menu','com_redirect',X'5265646972656374','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',49,50,0,'*',1),
	(17,'menu','com_search',X'426173696320536561726368','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',39,40,0,'*',1),
	(18,'menu','com_weblinks',X'5765626C696E6B73','','Weblinks','index.php?option=com_weblinks','component',0,1,1,21,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',41,46,0,'*',1),
	(19,'menu','com_weblinks_links',X'4C696E6B73','','Weblinks/Links','index.php?option=com_weblinks','component',0,18,2,21,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',42,43,0,'*',1),
	(20,'menu','com_weblinks_categories',X'43617465676F72696573','','Weblinks/Categories','index.php?option=com_categories&extension=com_weblinks','component',0,18,2,6,0,'0000-00-00 00:00:00',0,0,'class:weblinks-cat',0,'',44,45,0,'*',1),
	(21,'menu','com_finder',X'536D61727420536561726368','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',37,38,0,'*',1),
	(22,'menu','com_joomlaupdate',X'4A6F6F6D6C612120557064617465','','Joomla! Update','index.php?option=com_joomlaupdate','component',0,1,1,28,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',47,48,0,'*',1),
	(101,'defaultmenu','Home',X'686F6D65','','home','index.php?option=com_content&view=featured','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',20,'{\"featured_categories\":[\"\"],\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"multi_column_order\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_noauth\":\"\",\"article-allow_ratings\":\"\",\"article-allow_comments\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":1,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',69,70,1,'*',0),
	(149,'main','COM_VIRTUEMART_MENU_USERS',X'636F6D2D7669727475656D6172742D6D656E752D7573657273','','com-virtuemart/com-virtuemart-menu-users','index.php?option=com_virtuemart&view=user','component',0,144,1,10187,0,'0000-00-00 00:00:00',0,1,'components/com_virtuemart/assets/images/icon_16/menu-icon16-shoppers.png',0,'',49,50,0,'',1),
	(150,'main','COM_VIRTUEMART_MENU_MANUFACTURERS',X'636F6D2D7669727475656D6172742D6D656E752D6D616E75666163747572657273','','com-virtuemart/com-virtuemart-menu-manufacturers','index.php?option=com_virtuemart&view=manufacturer','component',0,144,2,10187,0,'0000-00-00 00:00:00',0,1,'components/com_virtuemart/assets/images/icon_16/menu-icon16-manufacturers.png',0,'',50,51,0,'',1),
	(151,'main','COM_VIRTUEMART_MENU_STORE',X'636F6D2D7669727475656D6172742D6D656E752D73746F7265','','com-virtuemart/com-virtuemart-menu-store','index.php?option=com_virtuemart&view=user&task=editshop','component',0,144,2,10187,0,'0000-00-00 00:00:00',0,1,'components/com_virtuemart/assets/images/icon_16/menu-icon16-shop.png',0,'',52,53,0,'',1),
	(152,'main','COM_VIRTUEMART_MENU_MEDIAFILES',X'636F6D2D7669727475656D6172742D6D656E752D6D6564696166696C6573','','com-virtuemart/com-virtuemart-menu-mediafiles','index.php?option=com_virtuemart&view=media','component',0,144,2,10187,0,'0000-00-00 00:00:00',0,1,'components/com_virtuemart/assets/images/icon_16/menu-icon16-media.png',0,'',54,55,0,'',1),
	(153,'main','COM_VIRTUEMART_MENU_SHIPMENTMETHODS',X'636F6D2D7669727475656D6172742D6D656E752D736869706D656E746D6574686F6473','','com-virtuemart/com-virtuemart-menu-shipmentmethods','index.php?option=com_virtuemart&view=shipmentmethod','component',0,144,2,10187,0,'0000-00-00 00:00:00',0,1,'components/com_virtuemart/assets/images/icon_16/menu-icon16-shipmentmethods.png',0,'',56,57,0,'',1),
	(154,'main','COM_VIRTUEMART_MENU_PAYMENTMETHODS',X'636F6D2D7669727475656D6172742D6D656E752D7061796D656E746D6574686F6473','','com-virtuemart/com-virtuemart-menu-paymentmethods','index.php?option=com_virtuemart&view=paymentmethod','component',0,144,2,10187,0,'0000-00-00 00:00:00',0,1,'components/com_virtuemart/assets/images/icon_16/menu-icon16-paymentmethods.png',0,'',58,59,0,'',1),
	(157,'main','AcyMailing',X'6163796D61696C696E67','','acymailing','index.php?option=com_acymailing','component',0,1,1,10003,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-acymailing.png',0,'',51,68,0,'',1),
	(158,'main','Users',X'7573657273','','acymailing/users','index.php?option=com_acymailing&ctrl=subscriber','component',0,157,2,10003,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-users.png',0,'',52,53,0,'',1),
	(159,'main','Lists',X'6C69737473','','acymailing/lists','index.php?option=com_acymailing&ctrl=list','component',0,157,2,10003,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-acylist.png',0,'',54,55,0,'',1),
	(160,'main','Newsletters',X'6E6577736C657474657273','','acymailing/newsletters','index.php?option=com_acymailing&ctrl=newsletter','component',0,157,2,10003,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-newsletter.png',0,'',56,57,0,'',1),
	(161,'main','Templates',X'74656D706C61746573','','acymailing/templates','index.php?option=com_acymailing&ctrl=template','component',0,157,2,10003,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-acytemplate.png',0,'',58,59,0,'',1),
	(162,'main','Queue',X'7175657565','','acymailing/queue','index.php?option=com_acymailing&ctrl=queue','component',0,157,2,10003,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-process.png',0,'',60,61,0,'',1),
	(163,'main','Statistics',X'73746174697374696373','','acymailing/statistics','index.php?option=com_acymailing&ctrl=stats','component',0,157,2,10003,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-stats.png',0,'',62,63,0,'',1),
	(164,'main','Configuration',X'636F6E66696775726174696F6E','','acymailing/configuration','index.php?option=com_acymailing&ctrl=cpanel','component',0,157,2,10003,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-acyconfig.png',0,'',64,65,0,'',1),
	(165,'main','Update_About',X'7570646174652D61626F7574','','acymailing/update-about','index.php?option=com_acymailing&ctrl=update','component',0,157,2,10003,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-update.png',0,'',66,67,0,'',1),
	(185,'mainmenu','Contact Us ',X'636F6E746163742D7573','','contact-us','index.php?option=com_contact&view=contact&id=1','component',-2,1,1,8,0,'0000-00-00 00:00:00',0,1,'',0,'{\"presentation_style\":\"plain\",\"show_contact_category\":\"hide\",\"show_contact_list\":\"0\",\"show_tags\":\"0\",\"show_name\":\"0\",\"show_position\":\"0\",\"show_email\":\"0\",\"show_street_address\":\"0\",\"show_suburb\":\"0\",\"show_state\":\"0\",\"show_postcode\":\"0\",\"show_country\":\"0\",\"show_telephone\":\"0\",\"show_mobile\":\"0\",\"show_fax\":\"0\",\"show_webpage\":\"0\",\"show_misc\":\"0\",\"show_image\":\"0\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"Contact Us \",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',15,16,0,'*',0),
	(186,'mainmenu','About Us',X'61626F75742D75732D31','','about-us-1','index.php?option=com_content&view=article&id=6','component',-2,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_tags\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"About Us\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',11,12,0,'*',0),
	(195,'mainmenu','Directions',X'646972656374696F6E73','','directions','index.php?option=com_content&view=article&id=7','component',-2,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',17,18,0,'*',0),
	(205,'mainmenu','Specials & Promotions',X'7370656369616C732D70726F6D6F74696F6E73','','specials-promotions','index.php?option=com_jshopping&view=category','component',-2,1,1,10178,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',13,14,0,'*',0),
	(206,'main','COM_VIRTUEMART',X'636F6D2D7669727475656D617274','','com-virtuemart','index.php?option=com_virtuemart','component',0,1,1,10187,0,'0000-00-00 00:00:00',0,1,'../components/com_virtuemart/assets/images/vmgeneral/menu_icon.png',0,'{}',71,94,0,'*',1),
	(207,'main','COM_VIRTUEMART_MENU_CATEGORIES',X'636F6D2D7669727475656D6172742D6D656E752D63617465676F72696573','','com-virtuemart/com-virtuemart-menu-categories','index.php?option=com_virtuemart&view=category','component',0,206,2,10187,0,'0000-00-00 00:00:00',0,1,'components/com_virtuemart/assets/images/icon_16/menu-icon16-categories.png',0,'{}',72,73,0,'',1),
	(208,'main','COM_VIRTUEMART_MENU_PRODUCTS',X'636F6D2D7669727475656D6172742D6D656E752D70726F6475637473','','com-virtuemart/com-virtuemart-menu-products','index.php?option=com_virtuemart&view=product','component',0,206,2,10187,0,'0000-00-00 00:00:00',0,1,'components/com_virtuemart/assets/images/icon_16/menu-icon16-products.png',0,'{}',74,75,0,'',1),
	(209,'main','COM_VIRTUEMART_MENU_ORDERS',X'636F6D2D7669727475656D6172742D6D656E752D6F7264657273','','com-virtuemart/com-virtuemart-menu-orders','index.php?option=com_virtuemart&view=orders','component',0,206,2,10187,0,'0000-00-00 00:00:00',0,1,'components/com_virtuemart/assets/images/icon_16/menu-icon16-orders.png',0,'{}',76,77,0,'',1),
	(210,'main','COM_VIRTUEMART_MENU_REPORT',X'636F6D2D7669727475656D6172742D6D656E752D7265706F7274','','com-virtuemart/com-virtuemart-menu-report','index.php?option=com_virtuemart&view=report','component',0,206,2,10187,0,'0000-00-00 00:00:00',0,1,'components/com_virtuemart/assets/images/icon_16/menu-icon16-report.png',0,'{}',78,79,0,'',1),
	(211,'main','COM_VIRTUEMART_MENU_USERS',X'636F6D2D7669727475656D6172742D6D656E752D7573657273','','com-virtuemart/com-virtuemart-menu-users','index.php?option=com_virtuemart&view=user','component',0,206,2,10187,0,'0000-00-00 00:00:00',0,1,'components/com_virtuemart/assets/images/icon_16/menu-icon16-shoppers.png',0,'{}',80,81,0,'',1),
	(212,'main','COM_VIRTUEMART_MENU_MANUFACTURERS',X'636F6D2D7669727475656D6172742D6D656E752D6D616E75666163747572657273','','com-virtuemart/com-virtuemart-menu-manufacturers','index.php?option=com_virtuemart&view=manufacturer','component',0,206,2,10187,0,'0000-00-00 00:00:00',0,1,'components/com_virtuemart/assets/images/icon_16/menu-icon16-manufacturers.png',0,'{}',82,83,0,'',1),
	(213,'main','COM_VIRTUEMART_MENU_STORE',X'636F6D2D7669727475656D6172742D6D656E752D73746F7265','','com-virtuemart/com-virtuemart-menu-store','index.php?option=com_virtuemart&view=user&task=editshop','component',0,206,2,10187,0,'0000-00-00 00:00:00',0,1,'components/com_virtuemart/assets/images/icon_16/menu-icon16-shop.png',0,'{}',84,85,0,'',1),
	(214,'main','COM_VIRTUEMART_MENU_MEDIAFILES',X'636F6D2D7669727475656D6172742D6D656E752D6D6564696166696C6573','','com-virtuemart/com-virtuemart-menu-mediafiles','index.php?option=com_virtuemart&view=media','component',0,206,2,10187,0,'0000-00-00 00:00:00',0,1,'components/com_virtuemart/assets/images/icon_16/menu-icon16-media.png',0,'{}',86,87,0,'',1),
	(215,'main','COM_VIRTUEMART_MENU_SHIPMENTMETHODS',X'636F6D2D7669727475656D6172742D6D656E752D736869706D656E746D6574686F6473','','com-virtuemart/com-virtuemart-menu-shipmentmethods','index.php?option=com_virtuemart&view=shipmentmethod','component',0,206,2,10187,0,'0000-00-00 00:00:00',0,1,'components/com_virtuemart/assets/images/icon_16/menu-icon16-shipmentmethods.png',0,'{}',88,89,0,'',1),
	(216,'main','COM_VIRTUEMART_MENU_PAYMENTMETHODS',X'636F6D2D7669727475656D6172742D6D656E752D7061796D656E746D6574686F6473','','com-virtuemart/com-virtuemart-menu-paymentmethods','index.php?option=com_virtuemart&view=paymentmethod','component',0,206,2,10187,0,'0000-00-00 00:00:00',0,1,'components/com_virtuemart/assets/images/icon_16/menu-icon16-paymentmethods.png',0,'{}',90,91,0,'',1),
	(217,'main','COM_VIRTUEMART_MENU_CONFIGURATION',X'636F6D2D7669727475656D6172742D6D656E752D636F6E66696775726174696F6E','','com-virtuemart/com-virtuemart-menu-configuration','index.php?option=com_virtuemart&view=config','component',0,206,2,10187,0,'0000-00-00 00:00:00',0,1,'components/com_virtuemart/assets/images/icon_16/menu-icon16-config.png',0,'{}',92,93,0,'',1),
	(219,'main','VirtueMart AIO',X'7669727475656D6172742D61696F','','virtuemart-aio','index.php?option=com_virtuemart_allinone','component',0,1,1,10188,0,'0000-00-00 00:00:00',0,1,'class:component',0,'{}',95,96,0,'',1),
	(220,'main','TCPDF',X'7463706466','','tcpdf','index.php?option=com_tcpdf','component',0,1,1,10216,0,'0000-00-00 00:00:00',0,1,'class:component',0,'{}',97,98,0,'',1);

/*!40000 ALTER TABLE `pz5yp_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_menu_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_menu_types`;

CREATE TABLE `pz5yp_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_menu_types` WRITE;
/*!40000 ALTER TABLE `pz5yp_menu_types` DISABLE KEYS */;

INSERT INTO `pz5yp_menu_types` (`id`, `menutype`, `title`, `description`)
VALUES
	(1,'mainmenu','Main Menu','The main menu for the site'),
	(5,'defaultmenu','Default Menu','');

/*!40000 ALTER TABLE `pz5yp_menu_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_messages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_messages`;

CREATE TABLE `pz5yp_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_messages_cfg
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_messages_cfg`;

CREATE TABLE `pz5yp_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_modules
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_modules`;

CREATE TABLE `pz5yp_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_modules` WRITE;
/*!40000 ALTER TABLE `pz5yp_modules` DISABLE KEYS */;

INSERT INTO `pz5yp_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`)
VALUES
	(2,0,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),
	(3,0,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),
	(4,0,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),
	(8,0,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),
	(9,0,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),
	(10,0,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),
	(12,0,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),
	(13,0,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),
	(14,0,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),
	(15,0,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),
	(79,0,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
	(86,0,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
	(141,78,'VM - Administrator Module','','',5,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_vmmenu',3,1,'',1,'*');

/*!40000 ALTER TABLE `pz5yp_modules` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_modules_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_modules_menu`;

CREATE TABLE `pz5yp_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_modules_menu` WRITE;
/*!40000 ALTER TABLE `pz5yp_modules_menu` DISABLE KEYS */;

INSERT INTO `pz5yp_modules_menu` (`moduleid`, `menuid`)
VALUES
	(2,0),
	(3,0),
	(4,0),
	(6,0),
	(7,0),
	(8,0),
	(9,0),
	(10,0),
	(12,0),
	(13,0),
	(14,0),
	(15,0),
	(79,0),
	(86,0),
	(133,0),
	(141,0);

/*!40000 ALTER TABLE `pz5yp_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_newsfeeds
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_newsfeeds`;

CREATE TABLE `pz5yp_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_overrider
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_overrider`;

CREATE TABLE `pz5yp_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_postinstall_messages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_postinstall_messages`;

CREATE TABLE `pz5yp_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_postinstall_messages` WRITE;
/*!40000 ALTER TABLE `pz5yp_postinstall_messages` DISABLE KEYS */;

INSERT INTO `pz5yp_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`)
VALUES
	(1,700,'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION','plg_twofactorauth_totp',1,'action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_condition','3.2.0',0),
	(2,700,'COM_CPANEL_MSG_EACCELERATOR_TITLE','COM_CPANEL_MSG_EACCELERATOR_BODY','COM_CPANEL_MSG_EACCELERATOR_BUTTON','com_cpanel',1,'action','admin://components/com_admin/postinstall/eaccelerator.php','admin_postinstall_eaccelerator_action','admin://components/com_admin/postinstall/eaccelerator.php','admin_postinstall_eaccelerator_condition','3.2.0',1),
	(3,700,'COM_CPANEL_MSG_PHPVERSION_TITLE','COM_CPANEL_MSG_PHPVERSION_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/phpversion.php','admin_postinstall_phpversion_condition','3.2.2',1);

/*!40000 ALTER TABLE `pz5yp_postinstall_messages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_redirect_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_redirect_links`;

CREATE TABLE `pz5yp_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_redirect_links` WRITE;
/*!40000 ALTER TABLE `pz5yp_redirect_links` DISABLE KEYS */;

INSERT INTO `pz5yp_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `hits`, `published`, `created_date`, `modified_date`)
VALUES
	(1,'http://localhost/tasks/sushiko/index.php/2014-10-19-04-23-16','','http://localhost/tasks/sushiko/','',1,0,'2014-11-12 08:39:44','0000-00-00 00:00:00'),
	(2,'http://localhost/tasks/sushiko/index.php/about-us/Tags/Post-installation messages','','http://localhost/tasks/sushiko/index.php','',9,0,'2014-11-12 08:39:50','0000-00-00 00:00:00'),
	(3,'http://localhost/tasks/sushiko/index.php/about-us','','','',4,0,'2014-11-12 08:40:11','0000-00-00 00:00:00'),
	(4,'http://localhost/tasks/sushiko/index.php/about-us-11','','','',1,0,'2014-11-12 08:40:41','0000-00-00 00:00:00'),
	(5,'http://localhost/tasks/sushiko/index.php/about-us-11/Tags/Post-installation messages','','http://localhost/tasks/sushiko/','',2,0,'2014-11-12 08:40:48','0000-00-00 00:00:00'),
	(6,'http://localhost/tasks/sushiko/index.php/2014-11-12-08-33-23','','http://localhost/tasks/sushiko/index.php/hikashop-menu-for-categories-listing/category/12-salads','',1,0,'2014-11-15 05:03:03','0000-00-00 00:00:00'),
	(7,'http://localhost/tasks/sushiko/index.php/category/13-salads-udon-donburi','','','',1,0,'2014-11-15 09:08:42','0000-00-00 00:00:00'),
	(8,'http://binhnk.info/joomla/sushiko/index.php/all-categories/category/12-salads','','','',1,0,'2014-11-22 15:31:04','0000-00-00 00:00:00'),
	(9,'http://joomla.binhnk.info/sushiko/index.php/specials-promotions','','http://joomla.binhnk.info/sushiko/','',1,0,'2015-10-23 15:09:59','0000-00-00 00:00:00');

/*!40000 ALTER TABLE `pz5yp_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_schemas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_schemas`;

CREATE TABLE `pz5yp_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_schemas` WRITE;
/*!40000 ALTER TABLE `pz5yp_schemas` DISABLE KEYS */;

INSERT INTO `pz5yp_schemas` (`extension_id`, `version_id`)
VALUES
	(700,'3.4.0-2015-02-26');

/*!40000 ALTER TABLE `pz5yp_schemas` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_session`;

CREATE TABLE `pz5yp_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_tags`;

CREATE TABLE `pz5yp_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_tags` WRITE;
/*!40000 ALTER TABLE `pz5yp_tags` DISABLE KEYS */;

INSERT INTO `pz5yp_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`)
VALUES
	(1,0,0,3,0,'','ROOT',X'726F6F74','','',1,0,'0000-00-00 00:00:00',1,'{}','','','',0,'2011-01-01 00:00:01','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(2,1,1,2,1,'about-us','about us',X'61626F75742D7573','','',1,0,'0000-00-00 00:00:00',1,'','','','',254,'2014-11-12 08:42:52','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');

/*!40000 ALTER TABLE `pz5yp_tags` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_template_styles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_template_styles`;

CREATE TABLE `pz5yp_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_template_styles` WRITE;
/*!40000 ALTER TABLE `pz5yp_template_styles` DISABLE KEYS */;

INSERT INTO `pz5yp_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`)
VALUES
	(14,'protostar',0,'0','protostar - Default','{\"templateColor\":\"#0088cc\",\"templateBackgroundColor\":\"#f4f6f7\",\"logoFile\":\"\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),
	(15,'isis',1,'1','isis - Default','{\"templateColor\":\"\",\"logoFile\":\"\"}'),
	(17,'beez3',0,'0','beez3 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\",\"backgroundcolor\":\"#eee\"}'),
	(18,'hathor',1,'0','Hathor Administrator template - Default','{\"showSiteName\":\"0\",\"logoFile\":\"\",\"colourChoice\":\"0\",\"boldText\":\"0\"}'),
	(20,'game_hcm',0,'1','game_hcm - Default','{\"t3_template\":\"1\",\"devmode\":\"1\",\"themermode\":\"1\",\"legacy_css\":\"0\",\"responsive\":\"1\",\"non_responsive_width\":\"970px\",\"build_rtl\":\"0\",\"t3-assets\":\"t3-assets\",\"t3-rmvlogo\":\"1\",\"minify\":\"0\",\"minify_js\":\"0\",\"minify_js_tool\":\"jsmin\",\"minify_exclude\":\"\",\"link_titles\":\"\",\"theme\":\"\",\"logotype\":\"image\",\"sitename\":\"\",\"slogan\":\"\",\"logoimage\":\"\",\"enable_logoimage_sm\":\"0\",\"logoimage_sm\":\"\",\"mainlayout\":\"home-1\",\"sublayout\":\"\",\"mm_type\":\"mainmenu\",\"navigation_trigger\":\"hover\",\"navigation_type\":\"megamenu\",\"navigation_animation\":\"\",\"navigation_animation_duration\":\"400\",\"mm_config\":\"\",\"navigation_collapse_enable\":\"1\",\"addon_offcanvas_enable\":\"1\",\"addon_offcanvas_effect\":\"off-canvas-effect-4\",\"snippet_open_head\":\"\",\"snippet_close_head\":\"\",\"snippet_open_body\":\"\",\"snippet_close_body\":\"\",\"snippet_debug\":\"0\"}');

/*!40000 ALTER TABLE `pz5yp_template_styles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_ucm_base
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_ucm_base`;

CREATE TABLE `pz5yp_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_ucm_base` WRITE;
/*!40000 ALTER TABLE `pz5yp_ucm_base` DISABLE KEYS */;

INSERT INTO `pz5yp_ucm_base` (`ucm_id`, `ucm_item_id`, `ucm_type_id`, `ucm_language_id`)
VALUES
	(1,6,1,0);

/*!40000 ALTER TABLE `pz5yp_ucm_base` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_ucm_content
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_ucm_content`;

CREATE TABLE `pz5yp_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';

LOCK TABLES `pz5yp_ucm_content` WRITE;
/*!40000 ALTER TABLE `pz5yp_ucm_content` DISABLE KEYS */;

INSERT INTO `pz5yp_ucm_content` (`core_content_id`, `core_type_alias`, `core_title`, `core_alias`, `core_body`, `core_state`, `core_checked_out_time`, `core_checked_out_user_id`, `core_access`, `core_params`, `core_featured`, `core_metadata`, `core_created_user_id`, `core_created_by_alias`, `core_created_time`, `core_modified_user_id`, `core_modified_time`, `core_language`, `core_publish_up`, `core_publish_down`, `core_content_item_id`, `asset_id`, `core_images`, `core_urls`, `core_hits`, `core_version`, `core_ordering`, `core_metakey`, `core_metadesc`, `core_catid`, `core_xreference`, `core_type_id`)
VALUES
	(1,'com_content.article','About Us',X'61626F75742D7573','<p>Sushi Ko opened in 2003. It is located close to US 95 and Craig Road. </p>\r\n\r\n<p>Our atmosphere includes a big-screen TV where you can view sports, while drinking beer or sake.\r\nEnjoy a glass of wine with someone special at one of our tables.\r\nGrab a bunch of your friends and enjoy a feast at one of teppan tables. </p>\r\n<p>At Sushi Ko, we take personal pride in adding an \"extra effort\" to the quality of our food.\r\nOur sauces and dressings are homemade, from scratch, providing the freshest of flavors.\r\nOur fish is delivered daily to provide the freshest sushi possible. </p>',-2,'',0,1,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',254,'','2014-11-12 08:38:47',254,'2014-11-15 05:05:47','*','2014-11-12 08:44:20','0000-00-00 00:00:00',6,54,'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/restaurant\\/3.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}',25,8,0,'','',9,'',1);

/*!40000 ALTER TABLE `pz5yp_ucm_content` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_ucm_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_ucm_history`;

CREATE TABLE `pz5yp_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_update_sites
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_update_sites`;

CREATE TABLE `pz5yp_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Sites';

LOCK TABLES `pz5yp_update_sites` WRITE;
/*!40000 ALTER TABLE `pz5yp_update_sites` DISABLE KEYS */;

INSERT INTO `pz5yp_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`)
VALUES
	(1,'Joomla Core','collection','http://update.joomla.org/core/sts/list_sts.xml',1,1445739551,''),
	(2,'Joomla Extension Directory','collection','http://update.joomla.org/jed/list.xml',0,0,''),
	(3,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist_3.xml',0,0,''),
	(4,'','collection','http://update.joomlart.com/service/tracking/list.xml',0,0,''),
	(5,'AcyMailing','extension','http://www.acyba.com/component/updateme/updatexml/component-acymailing/level-Starter/file-extension.xml',1,1445739549,''),
	(42,'Joomla! Update Component Update Site','extension','http://update.joomla.org/core/extensions/com_joomlaupdate.xml',1,1445739549,''),
	(43,'','collection','http://update.joomla.org/core/list.xml',1,1445739549,''),
	(44,'VirtueMart3 Update Site','extension','http://virtuemart.net/releases/vm3/virtuemart_update.xml',1,1445739549,''),
	(45,'VirtueMart plg_vmpayment_standard Update Site','extension','http://virtuemart.net/releases/vm3/plg_vmpayment_standard_update.xml',1,1445739549,''),
	(46,'VirtueMart plg_vmpayment_klarna Update Site','extension','http://virtuemart.net/releases/vm3/plg_vmpayment_klarna_update.xml',1,1445739549,''),
	(47,'VirtueMart plg_vmpayment_klarnacheckout Update Site','extension','http://virtuemart.net/releases/vm3/plg_vmpayment_klarnacheckout_update.xml',1,1445739549,''),
	(48,'VirtueMart plg_vmpayment_sofort Update Site','extension','http://virtuemart.net/releases/vm3/plg_vmpayment_sofort_update.xml',1,1445739549,''),
	(49,'VirtueMart plg_vmpayment_paypal Update Site','extension','http://virtuemart.net/releases/vm3/plg_vmpayment_paypal_update.xml',1,1445739549,''),
	(50,'VirtueMart plg_vmpayment_heidelpay Update Site','extension','http://virtuemart.net/releases/vm3/plg_vmpayment_heidelpay_update.xml',1,1445739549,''),
	(51,'VirtueMart plg_vmpayment_paybox Update Site','extension','http://virtuemart.net/releases/vm3/plg_vmpayment_paybox_update.xml',1,1445739549,''),
	(52,'VirtueMart plg_vmpayment_amazon Update Site','extension','http://virtuemart.net/releases/vm3/plg_vmpayment_amazon_update.xml',1,1445739549,''),
	(53,'VirtueMart plg_system_amazon Update Site','extension','http://virtuemart.net/releases/vm3/plg_system_amazon_update.xml',1,1445739549,''),
	(54,'VirtueMart plg_vmpayment_realex_hpp_api Update Site','extension','http://virtuemart.net/releases/vm3/plg_vmpayment_realex_hpp_api_update.xml',1,1445739549,''),
	(55,'VirtueMart plg_vmuserfield_realex_hpp_api Update Site','extension','\n            http://virtuemart.net/releases/vm3/plg_vmuserfield_realex_hpp_api_update.xml',1,1445739549,''),
	(56,'VirtueMart3 plg_vmpayment_skrill Update Site','extension','http://virtuemart.net/releases/vm3/plg_vmpayment_skrill_update.xml',1,1445739549,''),
	(57,'VirtueMart plg_vmpayment_authorizenet Update Site','extension','http://virtuemart.net/releases/vm3/plg_vmpayment_authorisenet_update.xml',1,1445739549,''),
	(58,'VirtueMart plg_vmpayment_sofort_ideal Update Site','extension','http://virtuemart.net/releases/vm3/plg_vmpayment_sofort_ideal_update.xml',1,1445739549,''),
	(59,'VirtueMart plg_vmpayment_klikandpay Update Site','extension','http://virtuemart.net/releases/vm3/plg_vmpayment_klikandpay_update.xml',1,1445739549,''),
	(60,'VirtueMart3 plg_vmshipment_weight_countries Update Site','extension','http://virtuemart.net/releases/vm3/plg_vmshipment_weight_countries_update.xml',1,1445739549,''),
	(61,'VirtueMart3 plg_vmcustom_textinput Update Site','extension','http://virtuemart.net/releases/vm3/plg_vmcustom_textinput_update.xml',1,1445739549,''),
	(62,'VirtueMart3 plg_vmcustom_specification Update Site','extension','http://virtuemart.net/releases/vm3/plg_vmcustom_specification_update.xml',1,1445739549,''),
	(63,'VirtueMart3 plg_vmcalculation_avalara Update Site','extension','http://virtuemart.net/releases/vm3/plg_vmcalculation_avalara_update.xml',1,1445739549,''),
	(64,'VirtueMart3 plg_search_virtuemart Update Site','extension','http://virtuemart.net/releases/vm3/plg_search_virtuemart_update.xml',1,1445739549,''),
	(65,'VirtueMart3 MOD_VMENU Update Site','extension','http://virtuemart.net/releases/vm3/mod_vmmenu_update.xml',1,1445739549,''),
	(66,'VirtueMart3 mod_virtuemart_currencies Update Site','extension','http://virtuemart.net/releases/vm3/mod_virtuemart_currencies_update.xml',1,1445739549,''),
	(67,'VirtueMart3 mod_virtuemart_product Update Site','extension','http://virtuemart.net/releases/vm3/mod_virtuemart_product_update.xml',1,1445739549,''),
	(68,'VirtueMart3 mod_virtuemart_search Update Site','extension','http://virtuemart.net/releases/vm3/mod_virtuemart_search_update.xml',1,1445739549,''),
	(69,'VirtueMart3 mod_virtuemart_manufacturer Update Site','extension','http://virtuemart.net/releases/vm3/mod_virtuemart_manufacturer_update.xml',1,1445739549,''),
	(70,'VirtueMart3 mod_virtuemart_cart Update Site','extension','http://virtuemart.net/releases/vm3/mod_virtuemart_cart_update.xml',1,1445739549,''),
	(71,'VirtueMart3 mod_virtuemart_category Update Site','extension','http://virtuemart.net/releases/vm3/mod_virtuemart_category_update.xml',1,1445739549,''),
	(72,'VirtueMart3 AIO Update Site','extension','http://virtuemart.net/releases/vm3/virtuemart_aio_update.xml',1,1445739549,''),
	(73,'TCPDF Update Site','extension','http://virtuemart.net/releases/TCPDF/tcpdf.xml',1,1445739549,'');

/*!40000 ALTER TABLE `pz5yp_update_sites` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_update_sites_extensions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_update_sites_extensions`;

CREATE TABLE `pz5yp_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

LOCK TABLES `pz5yp_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `pz5yp_update_sites_extensions` DISABLE KEYS */;

INSERT INTO `pz5yp_update_sites_extensions` (`update_site_id`, `extension_id`)
VALUES
	(1,700),
	(2,700),
	(3,600),
	(4,10000),
	(4,10002),
	(4,10034),
	(4,10219),
	(5,10003),
	(42,28),
	(43,700),
	(44,10187),
	(45,10189),
	(46,10190),
	(47,10191),
	(48,10192),
	(49,10193),
	(50,10194),
	(51,10195),
	(52,10196),
	(53,10197),
	(54,10198),
	(55,10199),
	(56,10200),
	(57,10201),
	(58,10202),
	(59,10203),
	(60,10204),
	(61,10205),
	(62,10206),
	(63,10207),
	(64,10208),
	(65,10209),
	(66,10210),
	(67,10211),
	(68,10212),
	(69,10213),
	(70,10214),
	(71,10215),
	(72,10188),
	(73,10216);

/*!40000 ALTER TABLE `pz5yp_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_updates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_updates`;

CREATE TABLE `pz5yp_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Available Updates';

LOCK TABLES `pz5yp_updates` WRITE;
/*!40000 ALTER TABLE `pz5yp_updates` DISABLE KEYS */;

INSERT INTO `pz5yp_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`)
VALUES
	(1,5,10003,'AcyMailing Starter','Latest version of AcyMailing Starter','com_acymailing','component','',1,'5.0.0','','http://www.acyba.com/component/updateme/updatexml/component-acymailing/level-Starter/file-extension.xml','http://www.acyba.com','');

/*!40000 ALTER TABLE `pz5yp_updates` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_user_keys
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_user_keys`;

CREATE TABLE `pz5yp_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_user_notes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_user_notes`;

CREATE TABLE `pz5yp_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pz5yp_user_profiles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_user_profiles`;

CREATE TABLE `pz5yp_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';



# Dump of table pz5yp_user_usergroup_map
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_user_usergroup_map`;

CREATE TABLE `pz5yp_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `pz5yp_user_usergroup_map` DISABLE KEYS */;

INSERT INTO `pz5yp_user_usergroup_map` (`user_id`, `group_id`)
VALUES
	(254,8);

/*!40000 ALTER TABLE `pz5yp_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_usergroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_usergroups`;

CREATE TABLE `pz5yp_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_usergroups` WRITE;
/*!40000 ALTER TABLE `pz5yp_usergroups` DISABLE KEYS */;

INSERT INTO `pz5yp_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`)
VALUES
	(1,0,1,20,'Public'),
	(2,1,6,17,'Registered'),
	(3,2,7,14,'Author'),
	(4,3,8,11,'Editor'),
	(5,4,9,10,'Publisher'),
	(6,1,2,5,'Manager'),
	(7,6,3,4,'Administrator'),
	(8,1,18,19,'Super Users');

/*!40000 ALTER TABLE `pz5yp_usergroups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_users`;

CREATE TABLE `pz5yp_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_users` WRITE;
/*!40000 ALTER TABLE `pz5yp_users` DISABLE KEYS */;

INSERT INTO `pz5yp_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`)
VALUES
	(254,'Super User','admin','admin@localhost.cc','$2y$10$fDRO/mg9Lgc5svqzYnHiquiYFn1turqVZPwNlWCH6K6oIvl3VpAUG',0,1,'2014-10-14 09:21:12','2015-10-25 02:19:08','0','{}','0000-00-00 00:00:00',0,'','',0);

/*!40000 ALTER TABLE `pz5yp_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_viewlevels
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_viewlevels`;

CREATE TABLE `pz5yp_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_viewlevels` WRITE;
/*!40000 ALTER TABLE `pz5yp_viewlevels` DISABLE KEYS */;

INSERT INTO `pz5yp_viewlevels` (`id`, `title`, `ordering`, `rules`)
VALUES
	(1,'Public',0,'[1]'),
	(2,'Registered',1,'[6,2,8]'),
	(3,'Special',2,'[6,3,8]');

/*!40000 ALTER TABLE `pz5yp_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_adminmenuentries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_adminmenuentries`;

CREATE TABLE `pz5yp_virtuemart_adminmenuentries` (
  `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'THE ID OF THE VM MODULE, THIS ITEM IS ASSIGNED TO',
  `parent_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` char(64) NOT NULL DEFAULT '0',
  `link` char(64) NOT NULL DEFAULT '0',
  `depends` char(64) NOT NULL DEFAULT '' COMMENT 'Names of the Parameters, this Item depends on',
  `icon_class` char(96) DEFAULT NULL,
  `ordering` int(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `tooltip` char(128) DEFAULT NULL,
  `view` char(32) DEFAULT NULL,
  `task` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `module_id` (`module_id`),
  KEY `published` (`published`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Administration Menu Items';

LOCK TABLES `pz5yp_virtuemart_adminmenuentries` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_adminmenuentries` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_adminmenuentries` (`id`, `module_id`, `parent_id`, `name`, `link`, `depends`, `icon_class`, `ordering`, `published`, `tooltip`, `view`, `task`)
VALUES
	(1,1,0,'COM_VIRTUEMART_CATEGORY_S','','','vmicon vmicon-16-folder_camera',1,1,'','category',''),
	(2,1,0,'COM_VIRTUEMART_PRODUCT_S','','','vmicon vmicon-16-camera',2,1,'','product',''),
	(3,1,0,'COM_VIRTUEMART_PRODUCT_CUSTOM_FIELD_S','','','vmicon vmicon-16-document_move',5,1,'','custom',''),
	(4,1,0,'COM_VIRTUEMART_PRODUCT_INVENTORY','','','vmicon vmicon-16-price_watch',7,1,'','inventory',''),
	(5,1,0,'COM_VIRTUEMART_CALC_S','','','vmicon vmicon-16-calculator',8,1,'','calc',''),
	(6,1,0,'COM_VIRTUEMART_REVIEW_RATE_S','','','vmicon vmicon-16-comments',9,1,'','ratings',''),
	(7,2,0,'COM_VIRTUEMART_ORDER_S','','','vmicon vmicon-16-page_white_stack',1,1,'','orders',''),
	(8,2,0,'COM_VIRTUEMART_COUPON_S','','','vmicon vmicon-16-shopping',10,1,'','coupon',''),
	(9,2,0,'COM_VIRTUEMART_REPORT','','','vmicon vmicon-16-chart_bar',3,1,'','report',''),
	(10,2,0,'COM_VIRTUEMART_USER_S','','','vmicon vmicon-16-user',4,1,'','user',''),
	(11,2,0,'COM_VIRTUEMART_SHOPPERGROUP_S','','','vmicon vmicon-16-user-group',5,1,'','shoppergroup',''),
	(12,3,0,'COM_VIRTUEMART_MANUFACTURER_S','','','vmicon vmicon-16-wrench_orange',1,1,'','manufacturer',''),
	(13,3,0,'COM_VIRTUEMART_MANUFACTURER_CATEGORY_S','','','vmicon vmicon-16-folder_wrench',2,1,'','manufacturercategories',''),
	(14,4,0,'COM_VIRTUEMART_STORE','','','vmicon vmicon-16-reseller_account_template',1,1,'','user','editshop'),
	(15,4,0,'COM_VIRTUEMART_MEDIA_S','','','vmicon vmicon-16-pictures',2,1,'','media',''),
	(16,4,0,'COM_VIRTUEMART_SHIPMENTMETHOD_S','','','vmicon vmicon-16-lorry',3,1,'','shipmentmethod',''),
	(17,4,0,'COM_VIRTUEMART_PAYMENTMETHOD_S','','','vmicon vmicon-16-creditcards',4,1,'','paymentmethod',''),
	(18,5,0,'COM_VIRTUEMART_CONFIGURATION','','','vmicon vmicon-16-config',1,1,'','config',''),
	(19,5,0,'COM_VIRTUEMART_USERFIELD_S','','','vmicon vmicon-16-participation_rate',2,1,'','userfields',''),
	(20,5,0,'COM_VIRTUEMART_ORDERSTATUS_S','','','vmicon vmicon-16-document_editing',3,1,'','orderstatus',''),
	(21,5,0,'COM_VIRTUEMART_CURRENCY_S','','','vmicon vmicon-16-coins',5,1,'','currency',''),
	(22,5,0,'COM_VIRTUEMART_COUNTRY_S','','','vmicon vmicon-16-globe',6,1,'','country',''),
	(23,11,0,'COM_VIRTUEMART_MIGRATION_UPDATE','','','vmicon vmicon-16-installer_box',0,1,'','updatesmigration',''),
	(24,11,0,'COM_VIRTUEMART_ABOUT','','','vmicon vmicon-16-info',10,1,'','about',''),
	(25,11,0,'COM_VIRTUEMART_HELP_TOPICS','http://docs.virtuemart.net/','','vmicon vmicon-16-help',5,1,'','',''),
	(26,11,0,'COM_VIRTUEMART_COMMUNITY_FORUM','http://forum.virtuemart.net/','','vmicon vmicon-16-reseller_programm',7,1,'','',''),
	(27,11,0,'COM_VIRTUEMART_STATISTIC_SUMMARY','','','vmicon vmicon-16-info',1,1,'','virtuemart',''),
	(28,77,0,'COM_VIRTUEMART_USER_GROUP_S','','','vmicon vmicon-16-user',2,1,'','usergroups',''),
	(29,11,0,'COM_VIRTUEMART_LOG','','','vmicon vmicon-16-info',2,1,'','log',''),
	(30,11,0,'COM_VIRTUEMART_SUPPORT','','','vmicon vmicon-16-help',3,1,'','support','');

/*!40000 ALTER TABLE `pz5yp_virtuemart_adminmenuentries` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_calc_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_calc_categories`;

CREATE TABLE `pz5yp_virtuemart_calc_categories` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_category_id` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_virtuemart_calc_categories` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_calc_categories` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_calc_categories` (`id`, `virtuemart_calc_id`, `virtuemart_category_id`)
VALUES
	(1,3,3);

/*!40000 ALTER TABLE `pz5yp_virtuemart_calc_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_calc_countries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_calc_countries`;

CREATE TABLE `pz5yp_virtuemart_calc_countries` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_country_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_country_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table pz5yp_virtuemart_calc_manufacturers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_calc_manufacturers`;

CREATE TABLE `pz5yp_virtuemart_calc_manufacturers` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_manufacturer_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_manufacturer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table pz5yp_virtuemart_calc_shoppergroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_calc_shoppergroups`;

CREATE TABLE `pz5yp_virtuemart_calc_shoppergroups` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_shoppergroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table pz5yp_virtuemart_calc_states
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_calc_states`;

CREATE TABLE `pz5yp_virtuemart_calc_states` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_state_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_state_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table pz5yp_virtuemart_calcs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_calcs`;

CREATE TABLE `pz5yp_virtuemart_calcs` (
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Belongs to vendor',
  `calc_jplugin_id` int(1) NOT NULL DEFAULT '0',
  `calc_name` char(64) NOT NULL DEFAULT '' COMMENT 'Name of the rule',
  `calc_descr` char(128) NOT NULL DEFAULT '' COMMENT 'Description',
  `calc_kind` char(16) NOT NULL DEFAULT '' COMMENT 'Discount/Tax/Margin/Commission',
  `calc_value_mathop` char(8) NOT NULL DEFAULT '' COMMENT 'the mathematical operation like (+,-,+%,-%)',
  `calc_value` decimal(10,4) NOT NULL DEFAULT '0.0000' COMMENT 'The Amount',
  `calc_currency` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Currency of the Rule',
  `calc_shopper_published` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Visible for Shoppers',
  `calc_vendor_published` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Visible for Vendors',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Startdate if nothing is set = permanent',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Enddate if nothing is set = permanent',
  `for_override` tinyint(1) NOT NULL DEFAULT '0',
  `calc_params` varchar(18000) NOT NULL DEFAULT '',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_calc_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `published` (`published`),
  KEY `calc_kind` (`calc_kind`),
  KEY `shared` (`shared`),
  KEY `publish_up` (`publish_up`),
  KEY `publish_down` (`publish_down`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_virtuemart_calcs` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_calcs` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_calcs` (`virtuemart_calc_id`, `virtuemart_vendor_id`, `calc_jplugin_id`, `calc_name`, `calc_descr`, `calc_kind`, `calc_value_mathop`, `calc_value`, `calc_currency`, `calc_shopper_published`, `calc_vendor_published`, `publish_up`, `publish_down`, `for_override`, `calc_params`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`)
VALUES
	(1,1,0,'Tax 20%','','VatTax','+%',20.0000,47,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(2,1,0,'Discount 5%','','DATax','-%',5.0000,47,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(3,1,0,'Special tax for category pagination 10%, an example for rule per','','VatTax','+%',10.0000,47,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);

/*!40000 ALTER TABLE `pz5yp_virtuemart_calcs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_carts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_carts`;

CREATE TABLE `pz5yp_virtuemart_carts` (
  `virtuemart_cart_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_user_id` int(1) unsigned NOT NULL,
  `virtuemart_vendor_id` int(1) unsigned NOT NULL,
  `cartData` varbinary(50000) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_cart_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `virtuemart_user_id` (`virtuemart_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Used to store the cart';



# Dump of table pz5yp_virtuemart_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_categories`;

CREATE TABLE `pz5yp_virtuemart_categories` (
  `virtuemart_category_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'BELONGS TO VENDOR',
  `category_template` char(128) DEFAULT NULL,
  `category_layout` char(64) DEFAULT NULL,
  `category_product_layout` char(64) DEFAULT NULL,
  `products_per_row` tinyint(1) DEFAULT NULL,
  `limit_list_step` char(32) DEFAULT NULL,
  `limit_list_initial` smallint(1) unsigned DEFAULT NULL,
  `hits` int(1) unsigned NOT NULL DEFAULT '0',
  `metarobot` char(40) NOT NULL DEFAULT '',
  `metaauthor` char(64) NOT NULL DEFAULT '',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_category_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `published` (`published`),
  KEY `shared` (`shared`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Product Categories are stored here';

LOCK TABLES `pz5yp_virtuemart_categories` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_categories` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_categories` (`virtuemart_category_id`, `virtuemart_vendor_id`, `category_template`, `category_layout`, `category_product_layout`, `products_per_row`, `limit_list_step`, `limit_list_initial`, `hits`, `metarobot`, `metaauthor`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`)
VALUES
	(1,1,'0','0','0',0,'0',0,0,'','',1,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(2,1,'0','0','0',0,'0',0,0,'','',2,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(3,1,'0','0','0',0,'0',0,0,'','',3,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(4,1,'0','0','0',0,'0',0,0,'','',4,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(5,1,'0','0','0',0,'0',0,0,'','',1,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(6,1,'0','0','0',0,'0',0,0,'','',2,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(7,1,'0','0','0',0,'0',0,0,'','',5,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(8,1,'0','0','0',0,'0',0,0,'','',1,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(9,1,'0','0','0',0,'0',0,0,'','',1,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);

/*!40000 ALTER TABLE `pz5yp_virtuemart_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_categories_en_gb
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_categories_en_gb`;

CREATE TABLE `pz5yp_virtuemart_categories_en_gb` (
  `virtuemart_category_id` int(1) unsigned NOT NULL,
  `category_name` char(180) NOT NULL DEFAULT '',
  `category_description` varchar(19000) NOT NULL DEFAULT '',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` char(255) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_category_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_virtuemart_categories_en_gb` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_categories_en_gb` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_categories_en_gb` (`virtuemart_category_id`, `category_name`, `category_description`, `metadesc`, `metakey`, `customtitle`, `slug`)
VALUES
	(1,'Default Products','<p>Sample of several default products. You will find settings displayed.</p>','','','','default-products'),
	(2,'Default Pattern','<p><span style=\"background-color: #FCDB73; text-align: center;padding: 5px 40px; \">Example for usage of product pattern. For showcase reason the PATTERN is NOT unpublished.</span></p>','','','','default-pattern'),
	(3,'Pagination testarea','<p><span style=\"background-color: #FCDB73; text-align: center;padding: 5px 40px;\">Notice: for correct ordering in product view set valid ordering in BE.</span><br />Ordering showcase category. Use this category to test the ordering of products. You can also select several Manufacturer.</p>','','','','pagination-testarea'),
	(4,'Headgear','<p><span style=\"background-color: #FCDB73; text-align: center;padding: 5px 40px;\">Showcase for subcategory with several sample product.</span></p>','','','','headgear'),
	(5,'Hats','<p><span style=\"background-color: #FCDB73; text-align: center;padding: 5px 40px;\">Example for usage of product pattern. For showcase reason the PATTERN is NOT unpublished.</span><br />Sample for product category. Create new category in VM BE > <em>Product Categories</em> > <em>New</em></p>','','','','hats'),
	(6,'Caps','<p><span style=\"background-color: #FCDB73; text-align: center;padding: 5px 40px;\">Example for usage of product pattern. For showcase reason the PATTERN is NOT unpublished.</span><br />Sample for product category. Create new category in VM BE > <em>Product Categories</em> > <em>New</em></p>','','','','caps'),
	(7,'Clothes','','','','','clothes'),
	(8,'Men clothes','<p>Sample for Subcategory. <br />Select superordinated category in VM BE > <em>Product Categories</em> > Your Category in section <em>Details > Category Ordering </em></p>','','','','men-clothes'),
	(9,'Women clothes','<p>Sample for Subcategory. <br />Select superordinated category in VM BE > <em>Product Categories</em> > Your Category in section <em>Details > Category Ordering </em></p>','','','','women-clothes');

/*!40000 ALTER TABLE `pz5yp_virtuemart_categories_en_gb` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_category_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_category_categories`;

CREATE TABLE `pz5yp_virtuemart_category_categories` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `category_parent_id` int(1) unsigned NOT NULL DEFAULT '0',
  `category_child_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_parent_id` (`category_parent_id`,`category_child_id`),
  KEY `category_child_id` (`category_child_id`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Category child-parent relation list';

LOCK TABLES `pz5yp_virtuemart_category_categories` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_category_categories` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_category_categories` (`id`, `category_parent_id`, `category_child_id`, `ordering`)
VALUES
	(1,0,1,0),
	(2,0,2,0),
	(3,0,3,0),
	(4,0,4,0),
	(5,4,5,5),
	(6,4,6,6),
	(7,0,7,5),
	(8,7,8,1),
	(9,7,9,1);

/*!40000 ALTER TABLE `pz5yp_virtuemart_category_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_category_medias
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_category_medias`;

CREATE TABLE `pz5yp_virtuemart_category_medias` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_category_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_category_id` (`virtuemart_category_id`,`virtuemart_media_id`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_virtuemart_category_medias` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_category_medias` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_category_medias` (`id`, `virtuemart_category_id`, `virtuemart_media_id`, `ordering`)
VALUES
	(1,1,2,1),
	(2,2,2,1),
	(3,3,2,1),
	(4,4,3,1),
	(8,7,6,1),
	(6,6,5,1),
	(7,5,3,1),
	(9,8,6,1),
	(10,9,7,1);

/*!40000 ALTER TABLE `pz5yp_virtuemart_category_medias` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_configs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_configs`;

CREATE TABLE `pz5yp_virtuemart_configs` (
  `virtuemart_config_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `config` text,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_config_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Holds configuration settings';

LOCK TABLES `pz5yp_virtuemart_configs` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_configs` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_configs` (`virtuemart_config_id`, `config`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`)
VALUES
	(1,'shop_is_offline=s:1:\"0\";|offline_message=czo3MzoiT3VyIFNob3AgaXMgY3VycmVudGx5IGRvd24gZm9yIG1haW50ZW5hbmNlLiBQbGVhc2UgY2hlY2sgYmFjayBhZ2FpbiBzb29uLiI7|use_as_catalog=s:1:\"0\";|currency_converter_module=s:14:\"convertECB.php\";|order_mail_html=s:1:\"1\";|useSSL=s:1:\"0\";|useVendorEmail=s:1:\"0\";|dangeroustools=i:0;|debug_enable=s:4:\"none\";|google_jquery=s:1:\"0\";|multix=s:4:\"none\";|usefancy=s:1:\"1\";|jchosen=s:1:\"1\";|enableEnglish=s:1:\"1\";|pdf_button_enable=s:1:\"1\";|show_emailfriend=s:1:\"0\";|show_printicon=s:1:\"1\";|show_out_of_stock_products=s:1:\"1\";|coupons_enable=s:1:\"1\";|show_uncat_child_products=s:1:\"0\";|coupons_default_expire=s:3:\"1,D\";|weight_unit_default=s:2:\"KG\";|lwh_unit_default=s:1:\"m\";|showReviewFor=s:3:\"all\";|reviewMode=s:6:\"bought\";|showRatingFor=s:3:\"all\";|ratingMode=s:6:\"bought\";|reviews_autopublish=s:1:\"1\";|reviews_minimum_comment_length=s:1:\"0\";|reviews_maximum_comment_length=s:4:\"2000\";|vmtemplate=s:1:\"0\";|categorytemplate=s:7:\"default\";|showCategory=s:1:\"1\";|categorylayout=s:1:\"0\";|categories_per_row=s:1:\"3\";|productlayout=s:1:\"0\";|products_per_row=s:1:\"3\";|vmlayout=s:1:\"0\";|show_store_desc=s:1:\"1\";|show_categories=s:1:\"1\";|homepage_categories_per_row=s:1:\"3\";|homepage_products_per_row=s:1:\"3\";|show_featured=s:1:\"1\";|featured_products_rows=s:1:\"1\";|show_topTen=s:1:\"1\";|topTen_products_rows=s:1:\"1\";|show_recent=s:1:\"1\";|recent_products_rows=s:1:\"1\";|show_latest=s:1:\"1\";|latest_products_rows=s:1:\"1\";|assets_general_path=s:33:\"components/com_virtuemart/assets/\";|media_category_path=s:35:\"images/stories/virtuemart/category/\";|media_product_path=s:34:\"images/stories/virtuemart/product/\";|media_manufacturer_path=s:39:\"images/stories/virtuemart/manufacturer/\";|media_vendor_path=s:33:\"images/stories/virtuemart/vendor/\";|forSale_path_thumb=s:42:\"images/stories/virtuemart/forSale/resized/\";|img_resize_enable=s:1:\"1\";|img_width=s:2:\"90\";|img_height=s:2:\"90\";|no_image_set=s:11:\"noimage.gif\";|no_image_found=s:11:\"warning.png\";|browse_orderby_field=s:11:\"pc.ordering\";|browse_cat_orderby_field=s:10:\"c.ordering\";|browse_orderby_fields=a:5:{i:0;s:15:\"`p`.product_sku\";i:1;s:13:\"category_name\";i:2;s:7:\"mf_name\";i:3;s:12:\"product_name\";i:4;s:11:\"pc.ordering\";}|browse_search_fields=a:7:{i:0;s:15:\"`p`.product_sku\";i:1;s:13:\"category_name\";i:2;s:20:\"category_description\";i:3;s:7:\"mf_name\";i:4;s:12:\"product_name\";i:5;s:14:\"product_s_desc\";i:6;s:12:\"product_desc\";}|askprice=s:1:\"1\";|roundindig=s:1:\"1\";|show_prices=s:1:\"1\";|price_show_packaging_pricelabel=s:1:\"0\";|show_tax=s:1:\"1\";|basePrice=s:1:\"1\";|basePriceText=s:1:\"1\";|basePriceRounding=s:2:\"-1\";|variantModification=s:1:\"1\";|variantModificationText=s:1:\"1\";|variantModificationRounding=s:2:\"-1\";|basePriceVariant=s:1:\"1\";|basePriceVariantText=s:1:\"1\";|basePriceVariantRounding=s:2:\"-1\";|basePriceWithTax=s:1:\"1\";|basePriceWithTaxText=s:1:\"1\";|basePriceWithTaxRounding=s:2:\"-1\";|discountedPriceWithoutTax=s:1:\"1\";|discountedPriceWithoutTaxText=s:1:\"1\";|discountedPriceWithoutTaxRounding=s:2:\"-1\";|salesPriceWithDiscount=s:1:\"1\";|salesPriceWithDiscountText=s:1:\"1\";|salesPriceWithDiscountRounding=s:2:\"-1\";|salesPrice=s:1:\"1\";|salesPriceText=s:1:\"1\";|salesPriceRounding=s:2:\"-1\";|priceWithoutTax=s:1:\"1\";|priceWithoutTaxText=s:1:\"1\";|priceWithoutTaxRounding=s:2:\"-1\";|discountAmount=s:1:\"1\";|discountAmountText=s:1:\"1\";|discountAmountRounding=s:2:\"-1\";|taxAmount=s:1:\"1\";|taxAmountText=s:1:\"1\";|taxAmountRounding=s:2:\"-1\";|unitPrice=s:1:\"1\";|unitPriceText=s:1:\"1\";|unitPriceRounding=s:2:\"-1\";|addtocart_popup=s:1:\"1\";|check_stock=s:1:\"0\";|automatic_payment=s:1:\"1\";|automatic_shipment=s:1:\"1\";|agree_to_tos_onorder=s:1:\"0\";|oncheckout_show_legal_info=s:1:\"1\";|oncheckout_show_register=s:1:\"1\";|oncheckout_show_steps=s:1:\"0\";|oncheckout_show_register_text=s:47:\"COM_VIRTUEMART_ONCHECKOUT_DEFAULT_TEXT_REGISTER\";|inv_os=s:1:\"C\";|email_os_s=a:5:{i:0;s:1:\"U\";i:1;s:1:\"C\";i:2;s:1:\"X\";i:3;s:1:\"R\";i:4;s:1:\"S\";}|email_os_v=a:4:{i:0;s:1:\"U\";i:1;s:1:\"C\";i:2;s:1:\"X\";i:3;s:1:\"R\";}|seo_disabled=s:1:\"0\";|seo_translate=s:1:\"0\";|seo_use_id=s:1:\"0\";|sctime=d:1414214040.4291191;|vmlang=s:5:\"en_gb\";|llimit_init_BE=s:2:\"20\";|llimit_init_FE=s:2:\"20\";|forSale_path=s:86:\"/Applications/AMPPS/www/tasks/sushiko/administrator/components/com_virtuemart/vmfiles/\";|virtuemart_config_id=i:1;','0000-00-00 00:00:00',0,'2014-10-25 05:14:00',254,'0000-00-00 00:00:00',0);

/*!40000 ALTER TABLE `pz5yp_virtuemart_configs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_countries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_countries`;

CREATE TABLE `pz5yp_virtuemart_countries` (
  `virtuemart_country_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_worldzone_id` tinyint(1) NOT NULL DEFAULT '1',
  `country_name` char(64) DEFAULT NULL,
  `country_3_code` char(3) DEFAULT NULL,
  `country_2_code` char(2) DEFAULT NULL,
  `ordering` int(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_country_id`),
  KEY `country_3_code` (`country_3_code`),
  KEY `country_2_code` (`country_2_code`),
  KEY `country_name` (`country_name`),
  KEY `ordering` (`ordering`),
  KEY `published` (`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Country records';

LOCK TABLES `pz5yp_virtuemart_countries` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_countries` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_countries` (`virtuemart_country_id`, `virtuemart_worldzone_id`, `country_name`, `country_3_code`, `country_2_code`, `ordering`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`)
VALUES
	(1,1,'Afghanistan','AFG','AF',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(2,1,'Albania','ALB','AL',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(3,1,'Algeria','DZA','DZ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(4,1,'American Samoa','ASM','AS',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(5,1,'Andorra','AND','AD',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(6,1,'Angola','AGO','AO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(7,1,'Anguilla','AIA','AI',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(8,1,'Antarctica','ATA','AQ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(9,1,'Antigua and Barbuda','ATG','AG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(10,1,'Argentina','ARG','AR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(11,1,'Armenia','ARM','AM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(12,1,'Aruba','ABW','AW',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(13,1,'Australia','AUS','AU',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(14,1,'Austria','AUT','AT',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(15,1,'Azerbaijan','AZE','AZ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(16,1,'Bahamas','BHS','BS',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(17,1,'Bahrain','BHR','BH',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(18,1,'Bangladesh','BGD','BD',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(19,1,'Barbados','BRB','BB',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(20,1,'Belarus','BLR','BY',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(21,1,'Belgium','BEL','BE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(22,1,'Belize','BLZ','BZ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(23,1,'Benin','BEN','BJ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(24,1,'Bermuda','BMU','BM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(25,1,'Bhutan','BTN','BT',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(26,1,'Bolivia','BOL','BO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(27,1,'Bosnia and Herzegowina','BIH','BA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(28,1,'Botswana','BWA','BW',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(29,1,'Bouvet Island','BVT','BV',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(30,1,'Brazil','BRA','BR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(31,1,'British Indian Ocean Territory','IOT','IO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(32,1,'Brunei Darussalam','BRN','BN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(33,1,'Bulgaria','BGR','BG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(34,1,'Burkina Faso','BFA','BF',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(35,1,'Burundi','BDI','BI',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(36,1,'Cambodia','KHM','KH',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(37,1,'Cameroon','CMR','CM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(38,1,'Canada','CAN','CA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(39,1,'Cape Verde','CPV','CV',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(40,1,'Cayman Islands','CYM','KY',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(41,1,'Central African Republic','CAF','CF',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(42,1,'Chad','TCD','TD',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(43,1,'Chile','CHL','CL',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(44,1,'China','CHN','CN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(45,1,'Christmas Island','CXR','CX',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(46,1,'Cocos (Keeling) Islands','CCK','CC',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(47,1,'Colombia','COL','CO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(48,1,'Comoros','COM','KM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(49,1,'Congo','COG','CG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(50,1,'Cook Islands','COK','CK',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(51,1,'Costa Rica','CRI','CR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(52,1,'Cote D\'Ivoire','CIV','CI',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(53,1,'Croatia','HRV','HR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(54,1,'Cuba','CUB','CU',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(55,1,'Cyprus','CYP','CY',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(56,1,'Czech Republic','CZE','CZ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(57,1,'Denmark','DNK','DK',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(58,1,'Djibouti','DJI','DJ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(59,1,'Dominica','DMA','DM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(60,1,'Dominican Republic','DOM','DO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(61,1,'East Timor','TMP','TP',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(62,1,'Ecuador','ECU','EC',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(63,1,'Egypt','EGY','EG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(64,1,'El Salvador','SLV','SV',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(65,1,'Equatorial Guinea','GNQ','GQ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(66,1,'Eritrea','ERI','ER',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(67,1,'Estonia','EST','EE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(68,1,'Ethiopia','ETH','ET',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(69,1,'Falkland Islands (Malvinas)','FLK','FK',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(70,1,'Faroe Islands','FRO','FO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(71,1,'Fiji','FJI','FJ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(72,1,'Finland','FIN','FI',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(73,1,'France','FRA','FR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(75,1,'French Guiana','GUF','GF',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(76,1,'French Polynesia','PYF','PF',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(77,1,'French Southern Territories','ATF','TF',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(78,1,'Gabon','GAB','GA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(79,1,'Gambia','GMB','GM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(80,1,'Georgia','GEO','GE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(81,1,'Germany','DEU','DE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(82,1,'Ghana','GHA','GH',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(83,1,'Gibraltar','GIB','GI',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(84,1,'Greece','GRC','GR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(85,1,'Greenland','GRL','GL',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(86,1,'Grenada','GRD','GD',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(87,1,'Guadeloupe','GLP','GP',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(88,1,'Guam','GUM','GU',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(89,1,'Guatemala','GTM','GT',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(90,1,'Guinea','GIN','GN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(91,1,'Guinea-bissau','GNB','GW',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(92,1,'Guyana','GUY','GY',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(93,1,'Haiti','HTI','HT',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(94,1,'Heard and Mc Donald Islands','HMD','HM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(95,1,'Honduras','HND','HN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(96,1,'Hong Kong','HKG','HK',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(97,1,'Hungary','HUN','HU',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(98,1,'Iceland','ISL','IS',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(99,1,'India','IND','IN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(100,1,'Indonesia','IDN','ID',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(101,1,'Iran (Islamic Republic of)','IRN','IR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(102,1,'Iraq','IRQ','IQ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(103,1,'Ireland','IRL','IE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(104,1,'Israel','ISR','IL',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(105,1,'Italy','ITA','IT',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(106,1,'Jamaica','JAM','JM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(107,1,'Japan','JPN','JP',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(108,1,'Jordan','JOR','JO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(109,1,'Kazakhstan','KAZ','KZ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(110,1,'Kenya','KEN','KE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(111,1,'Kiribati','KIR','KI',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(112,1,'Korea, Democratic People\'s Republic of','PRK','KP',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(113,1,'Korea, Republic of','KOR','KR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(114,1,'Kuwait','KWT','KW',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(115,1,'Kyrgyzstan','KGZ','KG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(116,1,'Lao People\'s Democratic Republic','LAO','LA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(117,1,'Latvia','LVA','LV',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(118,1,'Lebanon','LBN','LB',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(119,1,'Lesotho','LSO','LS',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(120,1,'Liberia','LBR','LR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(121,1,'Libya','LBY','LY',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(122,1,'Liechtenstein','LIE','LI',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(123,1,'Lithuania','LTU','LT',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(124,1,'Luxembourg','LUX','LU',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(125,1,'Macau','MAC','MO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(126,1,'Macedonia, The Former Yugoslav Republic of','MKD','MK',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(127,1,'Madagascar','MDG','MG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(128,1,'Malawi','MWI','MW',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(129,1,'Malaysia','MYS','MY',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(130,1,'Maldives','MDV','MV',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(131,1,'Mali','MLI','ML',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(132,1,'Malta','MLT','MT',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(133,1,'Marshall Islands','MHL','MH',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(134,1,'Martinique','MTQ','MQ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(135,1,'Mauritania','MRT','MR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(136,1,'Mauritius','MUS','MU',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(137,1,'Mayotte','MYT','YT',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(138,1,'Mexico','MEX','MX',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(139,1,'Micronesia, Federated States of','FSM','FM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(140,1,'Moldova, Republic of','MDA','MD',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(141,1,'Monaco','MCO','MC',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(142,1,'Mongolia','MNG','MN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(143,1,'Montserrat','MSR','MS',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(144,1,'Morocco','MAR','MA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(145,1,'Mozambique','MOZ','MZ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(146,1,'Myanmar','MMR','MM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(147,1,'Namibia','NAM','NA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(148,1,'Nauru','NRU','NR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(149,1,'Nepal','NPL','NP',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(150,1,'Netherlands','NLD','NL',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(151,1,'Netherlands Antilles','ANT','AN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(152,1,'New Caledonia','NCL','NC',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(153,1,'New Zealand','NZL','NZ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(154,1,'Nicaragua','NIC','NI',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(155,1,'Niger','NER','NE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(156,1,'Nigeria','NGA','NG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(157,1,'Niue','NIU','NU',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(158,1,'Norfolk Island','NFK','NF',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(159,1,'Northern Mariana Islands','MNP','MP',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(160,1,'Norway','NOR','NO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(161,1,'Oman','OMN','OM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(162,1,'Pakistan','PAK','PK',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(163,1,'Palau','PLW','PW',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(164,1,'Panama','PAN','PA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(165,1,'Papua New Guinea','PNG','PG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(166,1,'Paraguay','PRY','PY',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(167,1,'Peru','PER','PE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(168,1,'Philippines','PHL','PH',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(169,1,'Pitcairn','PCN','PN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(170,1,'Poland','POL','PL',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(171,1,'Portugal','PRT','PT',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(172,1,'Puerto Rico','PRI','PR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(173,1,'Qatar','QAT','QA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(174,1,'Reunion','REU','RE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(175,1,'Romania','ROM','RO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(176,1,'Russian Federation','RUS','RU',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(177,1,'Rwanda','RWA','RW',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(178,1,'Saint Kitts and Nevis','KNA','KN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(179,1,'Saint Lucia','LCA','LC',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(180,1,'Saint Vincent and the Grenadines','VCT','VC',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(181,1,'Samoa','WSM','WS',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(182,1,'San Marino','SMR','SM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(183,1,'Sao Tome and Principe','STP','ST',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(184,1,'Saudi Arabia','SAU','SA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(185,1,'Senegal','SEN','SN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(186,1,'Seychelles','SYC','SC',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(187,1,'Sierra Leone','SLE','SL',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(188,1,'Singapore','SGP','SG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(189,1,'Slovakia','SVK','SK',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(190,1,'Slovenia','SVN','SI',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(191,1,'Solomon Islands','SLB','SB',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(192,1,'Somalia','SOM','SO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(193,1,'South Africa','ZAF','ZA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(194,1,'South Georgia and the South Sandwich Islands','SGS','GS',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(195,1,'Spain','ESP','ES',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(196,1,'Sri Lanka','LKA','LK',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(197,1,'St. Helena','SHN','SH',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(198,1,'St. Pierre and Miquelon','SPM','PM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(199,1,'Sudan','SDN','SD',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(200,1,'Suriname','SUR','SR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(201,1,'Svalbard and Jan Mayen Islands','SJM','SJ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(202,1,'Swaziland','SWZ','SZ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(203,1,'Sweden','SWE','SE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(204,1,'Switzerland','CHE','CH',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(205,1,'Syrian Arab Republic','SYR','SY',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(206,1,'Taiwan','TWN','TW',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(207,1,'Tajikistan','TJK','TJ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(208,1,'Tanzania, United Republic of','TZA','TZ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(209,1,'Thailand','THA','TH',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(210,1,'Togo','TGO','TG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(211,1,'Tokelau','TKL','TK',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(212,1,'Tonga','TON','TO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(213,1,'Trinidad and Tobago','TTO','TT',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(214,1,'Tunisia','TUN','TN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(215,1,'Turkey','TUR','TR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(216,1,'Turkmenistan','TKM','TM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(217,1,'Turks and Caicos Islands','TCA','TC',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(218,1,'Tuvalu','TUV','TV',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(219,1,'Uganda','UGA','UG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(220,1,'Ukraine','UKR','UA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(221,1,'United Arab Emirates','ARE','AE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(222,1,'United Kingdom','GBR','GB',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(223,1,'United States','USA','US',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(224,1,'United States Minor Outlying Islands','UMI','UM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(225,1,'Uruguay','URY','UY',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(226,1,'Uzbekistan','UZB','UZ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(227,1,'Vanuatu','VUT','VU',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(228,1,'Vatican City State (Holy See)','VAT','VA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(229,1,'Venezuela','VEN','VE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(230,1,'Viet Nam','VNM','VN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(231,1,'Virgin Islands (British)','VGB','VG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(232,1,'Virgin Islands (U.S.)','VIR','VI',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(233,1,'Wallis and Futuna Islands','WLF','WF',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(234,1,'Western Sahara','ESH','EH',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(235,1,'Yemen','YEM','YE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(237,1,'The Democratic Republic of Congo','DRC','DC',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(238,1,'Zambia','ZMB','ZM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(239,1,'Zimbabwe','ZWE','ZW',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(240,1,'East Timor','XET','XE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(241,1,'Jersey','JEY','JE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(242,1,'St. Barthelemy','XSB','XB',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(243,1,'St. Eustatius','XSE','XU',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(244,1,'Canary Islands','XCA','XC',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(245,1,'Serbia','SRB','RS',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(246,1,'Sint Maarten (French Antilles)','MAF','MF',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(247,1,'Sint Maarten (Netherlands Antilles)','SXM','SX',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(248,1,'Palestinian Territory, occupied','PSE','PS',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);

/*!40000 ALTER TABLE `pz5yp_virtuemart_countries` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_coupons
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_coupons`;

CREATE TABLE `pz5yp_virtuemart_coupons` (
  `virtuemart_coupon_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` int(1) unsigned NOT NULL,
  `coupon_code` char(32) NOT NULL DEFAULT '',
  `percent_or_total` enum('percent','total') NOT NULL DEFAULT 'percent',
  `coupon_type` enum('gift','permanent') NOT NULL DEFAULT 'gift',
  `coupon_value` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `coupon_start_date` datetime DEFAULT NULL,
  `coupon_expiry_date` datetime DEFAULT NULL,
  `coupon_value_valid` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `coupon_used` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_coupon_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `coupon_code` (`coupon_code`),
  KEY `coupon_type` (`coupon_type`),
  KEY `published` (`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Used to store coupon codes';

LOCK TABLES `pz5yp_virtuemart_coupons` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_coupons` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_coupons` (`virtuemart_coupon_id`, `virtuemart_vendor_id`, `coupon_code`, `percent_or_total`, `coupon_type`, `coupon_value`, `coupon_start_date`, `coupon_expiry_date`, `coupon_value_valid`, `coupon_used`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`)
VALUES
	(1,0,'Sample Coupon','total','permanent',0.01000,'0000-00-00 00:00:00','2015-01-01 00:00:00',0.00000,'0',1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);

/*!40000 ALTER TABLE `pz5yp_virtuemart_coupons` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_currencies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_currencies`;

CREATE TABLE `pz5yp_virtuemart_currencies` (
  `virtuemart_currency_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `currency_name` char(64) DEFAULT NULL,
  `currency_code_2` char(2) DEFAULT NULL,
  `currency_code_3` char(3) DEFAULT NULL,
  `currency_numeric_code` int(4) DEFAULT NULL,
  `currency_exchange_rate` decimal(10,5) DEFAULT NULL,
  `currency_symbol` char(4) DEFAULT NULL,
  `currency_decimal_place` char(4) DEFAULT NULL,
  `currency_decimal_symbol` char(4) DEFAULT NULL,
  `currency_thousands` char(4) DEFAULT NULL,
  `currency_positive_style` char(64) DEFAULT NULL,
  `currency_negative_style` char(64) DEFAULT NULL,
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '1',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_currency_id`),
  UNIQUE KEY `currency_code_3` (`currency_code_3`),
  KEY `ordering` (`ordering`),
  KEY `currency_name` (`currency_name`),
  KEY `published` (`published`),
  KEY `shared` (`shared`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `currency_numeric_code` (`currency_numeric_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Used to store currencies';

LOCK TABLES `pz5yp_virtuemart_currencies` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_currencies` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_currencies` (`virtuemart_currency_id`, `virtuemart_vendor_id`, `currency_name`, `currency_code_2`, `currency_code_3`, `currency_numeric_code`, `currency_exchange_rate`, `currency_symbol`, `currency_decimal_place`, `currency_decimal_symbol`, `currency_thousands`, `currency_positive_style`, `currency_negative_style`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`)
VALUES
	(2,1,'United Arab Emirates dirham','','AED',784,0.00000,'د.إ','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(4,1,'Albanian lek','','ALL',8,0.00000,'Lek','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(5,1,'Netherlands Antillean gulden','','ANG',532,0.00000,'ƒ','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(7,1,'Argentine peso','','ARS',32,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(9,1,'Australian dollar','','AUD',36,0.00000,'$','2','.','','{symbol} {number}','{sign}{symbol} {number}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(10,1,'Aruban florin','','AWG',533,0.00000,'ƒ','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(11,1,'Barbadian dollar','','BBD',52,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(12,1,'Bangladeshi taka','','BDT',50,0.00000,'৳','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(15,1,'Bahraini dinar','','BHD',48,0.00000,'ب.د','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(16,1,'Burundian franc','','BIF',108,0.00000,'Fr','0','','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(17,1,'Bermudian dollar','','BMD',60,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(18,1,'Brunei dollar','','BND',96,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(19,1,'Bolivian boliviano','','BOB',68,0.00000,'$b','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(20,1,'Brazilian real','','BRL',986,0.00000,'R$','2',',','.','{symbol} {number}','{symbol} {sign}{number}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(21,1,'Bahamian dollar','','BSD',44,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(22,1,'Bhutanese ngultrum','','BTN',64,0.00000,'BTN','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(24,1,'Botswana pula','','BWP',72,0.00000,'P','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(25,1,'Belize dollar','','BZD',84,0.00000,'BZ$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(26,1,'Canadian dollar','','CAD',124,0.00000,'$','2','.',',','{symbol}{number}','{symbol}{sign}{number}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(27,1,'Swiss franc','','CHF',756,0.00000,'CHF','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(28,1,'Unidad de Fomento','','CLF',990,0.00000,'CLF','0',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(29,1,'Chilean peso','','CLP',152,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(30,1,'Chinese renminbi yuan','','CNY',156,0.00000,'元','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(31,1,'Colombian peso','','COP',170,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(32,1,'Costa Rican colón','','CRC',188,0.00000,'₡','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(33,1,'Czech koruna','','CZK',203,0.00000,'Kč','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(34,1,'Cuban peso','','CUP',192,0.00000,'₱','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(35,1,'Cape Verdean escudo','','CVE',132,0.00000,'$','0','','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(40,1,'Danish krone','','DKK',208,0.00000,'kr','2','.',',','{symbol}{number}','{symbol}{sign}{number}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(41,1,'Dominican peso','','DOP',214,0.00000,'RD$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(42,1,'Algerian dinar','','DZD',12,0.00000,'د.ج','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(44,1,'Egyptian pound','','EGP',818,0.00000,'£','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(46,1,'Ethiopian birr','','ETB',230,0.00000,'ETB','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(47,1,'Euro','','EUR',978,0.00000,'€','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(49,1,'Fijian dollar','','FJD',242,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(50,1,'Falkland pound','','FKP',238,0.00000,'£','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(52,1,'British pound','','GBP',826,0.00000,'£','2','.',',','{symbol}{number}','{symbol}{sign}{number}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(54,1,'Gibraltar pound','','GIP',292,0.00000,'£','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(55,1,'Gambian dalasi','','GMD',270,0.00000,'D','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(56,1,'Guinean franc','','GNF',324,0.00000,'Fr','0','','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(58,1,'Guatemalan quetzal','','GTQ',320,0.00000,'Q','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(60,1,'Guyanese dollar','','GYD',328,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(61,1,'Hong Kong dollar','','HKD',344,0.00000,'元','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(62,1,'Honduran lempira','','HNL',340,0.00000,'L','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(63,1,'Haitian gourde','','HTG',332,0.00000,'G','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(64,1,'Hungarian forint','','HUF',348,0.00000,'Ft','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(65,1,'Indonesian rupiah','','IDR',360,0.00000,'Rp','0','','','{symbol}{number}','{symbol}{sign}{number}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(67,1,'Israeli new sheqel','','ILS',376,0.00000,'₪','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(68,1,'Indian rupee','','INR',356,0.00000,'₨','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(69,1,'Iraqi dinar','','IQD',368,0.00000,'ع.د','0','','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(70,1,'Iranian rial','','IRR',364,0.00000,'﷼','2',',','','{number} {symbol}','{sign}{number}{symb0l}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(73,1,'Jamaican dollar','','JMD',388,0.00000,'J$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(74,1,'Jordanian dinar','','JOD',400,0.00000,'د.ا','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(75,1,'Japanese yen','','JPY',392,0.00000,'¥','0',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(76,1,'Kenyan shilling','','KES',404,0.00000,'Sh','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(77,1,'Cambodian riel','','KHR',116,0.00000,'៛','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(78,1,'Comorian franc','','KMF',174,0.00000,'Fr','0','','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(79,1,'North Korean won','','KPW',408,0.00000,'₩','0','','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(80,1,'South Korean won','','KRW',410,0.00000,'₩','0','','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(81,1,'Kuwaiti dinar','','KWD',414,0.00000,'د.ك','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(82,1,'Cayman Islands dollar','','KYD',136,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(83,1,'Lao kip','','LAK',418,0.00000,'₭','0','','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(84,1,'Lebanese pound','','LBP',422,0.00000,'£','0','','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(85,1,'Sri Lankan rupee','','LKR',144,0.00000,'₨','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(86,1,'Liberian dollar','','LRD',430,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(87,1,'Lesotho loti','','LSL',426,0.00000,'L','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(89,1,'Libyan dinar','','LYD',434,0.00000,'ل.د','3',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(90,1,'Moroccan dirham','','MAD',504,0.00000,'د.م.','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(92,1,'Mongolian tögrög','','MNT',496,0.00000,'₮','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(93,1,'Macanese pataca','','MOP',446,0.00000,'P','1',',','','{symbol}{number}','{symbol}{sign}{number}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(94,1,'Mauritanian ouguiya','','MRO',478,0.00000,'UM','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(96,1,'Mauritian rupee','','MUR',480,0.00000,'₨','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(97,1,'Maldivian rufiyaa','','MVR',462,0.00000,'ރ.','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(98,1,'Malawian kwacha','','MWK',454,0.00000,'MK','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(100,1,'Malaysian ringgit','','MYR',458,0.00000,'RM','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(102,1,'Nigerian naira','','NGN',566,0.00000,'₦','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(105,1,'Norwegian krone','','NOK',578,0.00000,'kr','2',',','','{symbol}{number}','{symbol}{sign}{number}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(106,1,'Nepalese rupee','','NPR',524,0.00000,'₨','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(107,1,'New Zealand dollar','','NZD',554,0.00000,'$','2',',','','{number} {symbol}','{symbol}{sign}{number}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(108,1,'Omani rial','','OMR',512,0.00000,'﷼','3','.','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(109,1,'Panamanian balboa','','PAB',590,0.00000,'B/.','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(110,1,'Peruvian nuevo sol','','PEN',604,0.00000,'S/.','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(111,1,'Papua New Guinean kina','','PGK',598,0.00000,'K','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(112,1,'Philippine peso','','PHP',608,0.00000,'₱','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(113,1,'Pakistani rupee','','PKR',586,0.00000,'₨','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(114,1,'Polish Złoty','','PLN',985,0.00000,'zł','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(116,1,'Paraguayan guaraní','','PYG',600,0.00000,'₲','0','','.','{symbol} {number}','{symbol} {sign}{number}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(117,1,'Qatari riyal','','QAR',634,0.00000,'﷼','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(118,1,'Romanian leu','','RON',946,0.00000,'lei','2',',','.','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(119,1,'Rwandan franc','','RWF',646,0.00000,'Fr','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(120,1,'Saudi riyal','','SAR',682,0.00000,'﷼','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(121,1,'Solomon Islands dollar','','SBD',90,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(122,1,'Seychellois rupee','','SCR',690,0.00000,'₨','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(124,1,'Swedish krona','','SEK',752,0.00000,'kr','2',',','.','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(125,1,'Singapore dollar','','SGD',702,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(126,1,'Saint Helenian pound','','SHP',654,0.00000,'£','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(127,1,'Sierra Leonean leone','','SLL',694,0.00000,'Le','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(128,1,'Somali shilling','','SOS',706,0.00000,'S','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(130,1,'São Tomé and Príncipe dobra','','STD',678,0.00000,'Db','0','','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(131,1,'Russian ruble','','RUB',643,0.00000,'руб','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(132,1,'Salvadoran colón','','SVC',222,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(133,1,'Syrian pound','','SYP',760,0.00000,'£','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(134,1,'Swazi lilangeni','','SZL',748,0.00000,'L','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(135,1,'Thai baht','','THB',764,0.00000,'฿','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(136,1,'Tunisian dinar','','TND',788,0.00000,'د.ت','3',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(137,1,'Tongan paʻanga','','TOP',776,0.00000,'T$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(139,1,'Turkish new lira','','TRY',949,0.00000,'YTL','2',',','.','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(140,1,'Trinidad and Tobago dollar','','TTD',780,0.00000,'TT$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(141,1,'New Taiwan dollar','','TWD',901,0.00000,'NT$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(142,1,'Tanzanian shilling','','TZS',834,0.00000,'Sh','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(144,1,'United States dollar','','USD',840,0.00000,'$','2','.',',','{symbol}{number}','{symbol}{sign}{number}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(147,1,'Vietnamese Dong','','VND',704,0.00000,'₫','0','','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(148,1,'Vanuatu vatu','','VUV',548,0.00000,'Vt','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(149,1,'Samoan tala','','WST',882,0.00000,'T','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(151,1,'Yemeni rial','','YER',886,0.00000,'﷼','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(152,1,'Serbian dinar','','RSD',941,0.00000,'Дин.','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(153,1,'South African rand','','ZAR',710,0.00000,'R','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(154,1,'Zambian kwacha','','ZMK',894,0.00000,'ZK','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(156,1,'Zimbabwean dollar','','ZWD',932,0.00000,'Z$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(158,1,'Armenian dram','','AMD',51,0.00000,'դր.','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(159,1,'Myanmar kyat','','MMK',104,0.00000,'K','2',',','','{number} {symbol}','{symbol} {sign}{number}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(160,1,'Croatian kuna','','HRK',191,0.00000,'kn','2',',','.','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(161,1,'Eritrean nakfa','','ERN',232,0.00000,'Nfk','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(162,1,'Djiboutian franc','','DJF',262,0.00000,'Fr','0','','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(163,1,'Icelandic króna','','ISK',352,0.00000,'kr','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(164,1,'Kazakhstani tenge','','KZT',398,0.00000,'лв','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(165,1,'Kyrgyzstani som','','KGS',417,0.00000,'лв','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(166,1,'Latvian lats','','LVL',428,0.00000,'Ls','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(167,1,'Lithuanian litas','','LTL',440,0.00000,'Lt','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(168,1,'Mexican peso','','MXN',484,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(169,1,'Moldovan leu','','MDL',498,0.00000,'L','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(170,1,'Namibian dollar','','NAD',516,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(171,1,'Nicaraguan córdoba','','NIO',558,0.00000,'C$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(172,1,'Ugandan shilling','','UGX',800,0.00000,'Sh','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(173,1,'Macedonian denar','','MKD',807,0.00000,'ден','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(174,1,'Uruguayan peso','','UYU',858,0.00000,'$','0','','','{symbol}number}','{symbol}{sign}{number}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(175,1,'Uzbekistani som','','UZS',860,0.00000,'лв','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(176,1,'Azerbaijani manat','','AZN',934,0.00000,'ман','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(177,1,'Ghanaian cedi','','GHS',936,0.00000,'₵','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(178,1,'Venezuelan bolívar','','VEF',937,0.00000,'Bs','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(179,1,'Sudanese pound','','SDG',938,0.00000,'£','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(180,1,'Uruguay Peso','','UYI',940,0.00000,'UYI','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(181,1,'Mozambican metical','','MZN',943,0.00000,'MT','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(182,1,'WIR Euro','','CHE',947,0.00000,'€','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(183,1,'WIR Franc','','CHW',948,0.00000,'CHW','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(184,1,'Central African CFA franc','','XAF',950,0.00000,'Fr','0','','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(185,1,'East Caribbean dollar','','XCD',951,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(186,1,'West African CFA franc','','XOF',952,0.00000,'Fr','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(187,1,'CFP franc','','XPF',953,0.00000,'Fr','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(188,1,'Surinamese dollar','','SRD',968,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(189,1,'Malagasy ariary','','MGA',969,0.00000,'MGA','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(190,1,'Unidad de Valor Real','','COU',970,0.00000,'COU','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(191,1,'Afghan afghani','','AFN',971,0.00000,'؋','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(192,1,'Tajikistani somoni','','TJS',972,0.00000,'ЅМ','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(193,1,'Angolan kwanza','','AOA',973,0.00000,'Kz','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(194,1,'Belarusian ruble','','BYR',974,0.00000,'p.','0','','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(195,1,'Bulgarian lev','','BGN',975,0.00000,'лв','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(196,1,'Congolese franc','','CDF',976,0.00000,'Fr','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(197,1,'Bosnia and Herzegovina convert','','BAM',977,0.00000,'KM','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(198,1,'Mexican Unid','','MXV',979,0.00000,'MXV','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(199,1,'Ukrainian hryvnia','','UAH',980,0.00000,'₴','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(200,1,'Georgian lari','','GEL',981,0.00000,'ლ','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(201,1,'Mvdol','','BOV',984,0.00000,'BOV','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);

/*!40000 ALTER TABLE `pz5yp_virtuemart_currencies` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_customs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_customs`;

CREATE TABLE `pz5yp_virtuemart_customs` (
  `virtuemart_custom_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `custom_parent_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_vendor_id` smallint(1) NOT NULL DEFAULT '1',
  `custom_jplugin_id` int(1) NOT NULL DEFAULT '0',
  `custom_element` char(50) NOT NULL DEFAULT '',
  `admin_only` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1:Display in admin only',
  `custom_title` char(255) NOT NULL DEFAULT '' COMMENT 'field title',
  `show_title` tinyint(1) NOT NULL DEFAULT '1',
  `custom_tip` char(255) NOT NULL DEFAULT '' COMMENT 'tip',
  `custom_value` varchar(2000) DEFAULT NULL COMMENT 'DEFAULT VALUE',
  `custom_desc` char(255) DEFAULT NULL COMMENT 'description or unit',
  `field_type` char(2) NOT NULL DEFAULT '0' COMMENT 'S:STRING,I:INT,P:PARENT, B:BOOL,D:DATE,T:TIME,H:HIDDEN',
  `is_list` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'list of values',
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1:hidden',
  `is_cart_attribute` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Add attributes to cart',
  `is_input` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Add input to cart',
  `layout_pos` char(24) DEFAULT NULL COMMENT 'Layout Position',
  `custom_params` varchar(17000) NOT NULL DEFAULT '',
  `shared` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'VALID FOR ALL VENDORS?',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_custom_id`),
  KEY `custom_parent_id` (`custom_parent_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `custom_element` (`custom_element`),
  KEY `field_type` (`field_type`),
  KEY `is_cart_attribute` (`is_cart_attribute`),
  KEY `is_input` (`is_input`),
  KEY `shared` (`shared`),
  KEY `published` (`published`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='custom fields definition';

LOCK TABLES `pz5yp_virtuemart_customs` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_customs` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_customs` (`virtuemart_custom_id`, `custom_parent_id`, `virtuemart_vendor_id`, `custom_jplugin_id`, `custom_element`, `admin_only`, `custom_title`, `show_title`, `custom_tip`, `custom_value`, `custom_desc`, `field_type`, `is_list`, `is_hidden`, `is_cart_attribute`, `is_input`, `layout_pos`, `custom_params`, `shared`, `published`, `created_on`, `created_by`, `ordering`, `modified_on`, `modified_by`, `locked_on`, `locked_by`)
VALUES
	(1,0,1,0,'',0,'COM_VIRTUEMART_RELATED_PRODUCTS',1,'COM_VIRTUEMART_RELATED_PRODUCTS_TIP','','COM_VIRTUEMART_RELATED_PRODUCTS_DESC','R',0,0,0,0,'related_products','',0,1,'2011-05-25 21:52:43',62,0,'2011-05-25 21:52:43',62,'0000-00-00 00:00:00',0),
	(2,0,1,0,'',0,'COM_VIRTUEMART_RELATED_CATEGORIES',1,'COM_VIRTUEMART_RELATED_CATEGORIES_TIP',NULL,'COM_VIRTUEMART_RELATED_CATEGORIES_DESC','Z',0,0,0,0,'related_categories','',0,1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(3,0,1,0,'0',0,'Customfield String',1,'','','','S',0,0,0,0,'','0',0,1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(4,0,1,0,'0',0,'Customfield Textarea',1,'','','','Y',0,0,0,0,'','0',0,1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(5,0,1,0,'0',0,'Customfield Parent',1,'','','','G',0,0,0,0,'','0',0,1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(6,5,1,0,'0',0,'Customfield Child String 1',1,'','','','S',0,0,0,0,'','0',0,1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(7,5,1,0,'0',0,'Customfield Child String 2',1,'','','','S',0,0,0,0,'','0',0,1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(8,5,1,0,'0',0,'Customfield Textarea Child',1,'','','','Y',0,0,0,0,'','0',0,1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(9,0,1,0,'0',0,'Customfield Cart Variant',1,'','','','S',0,0,1,1,'addtocart','0',0,1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(10,0,1,0,'0',0,'Customfield Child Variant',1,'','','','A',0,0,1,0,'ontop','0',0,1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(11,0,1,0,'0',0,'Caps Customfield Parent',1,'','','','G',0,0,0,0,'','0',0,1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(12,0,1,0,'0',0,'Cap Size',1,'','','','S',0,0,1,1,'addtocart','0',0,1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(13,11,1,0,'0',0,'Cap Details',1,'','','','S',0,0,0,0,'','0',0,1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(14,11,1,0,'0',0,'Cap Components',1,'','','','S',0,0,0,0,'','0',0,1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(15,0,1,0,'0',0,'Clothing weave',1,'','','','S',0,0,1,1,'addtocart','0',0,1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(16,0,1,0,'0',0,'Clothing size',1,'','','','S',0,0,1,1,'addtocart','0',0,1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(17,0,1,0,'0',0,'Clothing parent',1,'','','','G',0,0,0,0,'','0',0,1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(18,17,1,0,'0',0,'Clothing Composit',1,'','','','S',0,0,0,0,'','0',0,1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(19,17,1,0,'0',0,'Clothing textarea',1,'','','','Y',0,0,0,0,'','0',0,1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);

/*!40000 ALTER TABLE `pz5yp_virtuemart_customs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_invoices
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_invoices`;

CREATE TABLE `pz5yp_virtuemart_invoices` (
  `virtuemart_invoice_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `virtuemart_order_id` int(1) unsigned DEFAULT NULL,
  `invoice_number` char(64) DEFAULT NULL,
  `order_status` char(2) DEFAULT NULL,
  `xhtml` text,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_invoice_id`),
  UNIQUE KEY `invoice_number` (`invoice_number`,`virtuemart_vendor_id`),
  KEY `virtuemart_order_id` (`virtuemart_order_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='custom fields definition';



# Dump of table pz5yp_virtuemart_manufacturer_medias
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_manufacturer_medias`;

CREATE TABLE `pz5yp_virtuemart_manufacturer_medias` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_manufacturer_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_manufacturer_id` (`virtuemart_manufacturer_id`,`virtuemart_media_id`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_virtuemart_manufacturer_medias` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_manufacturer_medias` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_manufacturer_medias` (`id`, `virtuemart_manufacturer_id`, `virtuemart_media_id`, `ordering`)
VALUES
	(1,1,9,1),
	(2,2,9,1),
	(3,3,9,1);

/*!40000 ALTER TABLE `pz5yp_virtuemart_manufacturer_medias` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_manufacturercategories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_manufacturercategories`;

CREATE TABLE `pz5yp_virtuemart_manufacturercategories` (
  `virtuemart_manufacturercategories_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_manufacturercategories_id`),
  KEY `published` (`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Manufacturers are assigned to these categories';

LOCK TABLES `pz5yp_virtuemart_manufacturercategories` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_manufacturercategories` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_manufacturercategories` (`virtuemart_manufacturercategories_id`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`)
VALUES
	(1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);

/*!40000 ALTER TABLE `pz5yp_virtuemart_manufacturercategories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_manufacturercategories_en_gb
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_manufacturercategories_en_gb`;

CREATE TABLE `pz5yp_virtuemart_manufacturercategories_en_gb` (
  `virtuemart_manufacturercategories_id` int(1) unsigned NOT NULL,
  `mf_category_name` char(180) NOT NULL DEFAULT '',
  `mf_category_desc` varchar(19000) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_manufacturercategories_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_virtuemart_manufacturercategories_en_gb` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_manufacturercategories_en_gb` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_manufacturercategories_en_gb` (`virtuemart_manufacturercategories_id`, `mf_category_name`, `mf_category_desc`, `slug`)
VALUES
	(1,'default','This is the default manufacturer category ','default');

/*!40000 ALTER TABLE `pz5yp_virtuemart_manufacturercategories_en_gb` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_manufacturers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_manufacturers`;

CREATE TABLE `pz5yp_virtuemart_manufacturers` (
  `virtuemart_manufacturer_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_manufacturercategories_id` int(1) DEFAULT NULL,
  `hits` int(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_manufacturer_id`),
  UNIQUE KEY `virtuemart_manufacturercategories_id` (`virtuemart_manufacturer_id`,`virtuemart_manufacturercategories_id`),
  KEY `published` (`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Manufacturers are those who deliver products';

LOCK TABLES `pz5yp_virtuemart_manufacturers` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_manufacturers` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_manufacturers` (`virtuemart_manufacturer_id`, `virtuemart_manufacturercategories_id`, `hits`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`)
VALUES
	(1,1,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(2,1,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(3,1,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);

/*!40000 ALTER TABLE `pz5yp_virtuemart_manufacturers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_manufacturers_en_gb
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_manufacturers_en_gb`;

CREATE TABLE `pz5yp_virtuemart_manufacturers_en_gb` (
  `virtuemart_manufacturer_id` int(1) unsigned NOT NULL,
  `mf_name` char(180) NOT NULL DEFAULT '',
  `mf_email` char(255) NOT NULL DEFAULT '',
  `mf_desc` varchar(19000) NOT NULL DEFAULT '',
  `mf_url` char(255) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_manufacturer_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_virtuemart_manufacturers_en_gb` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_manufacturers_en_gb` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_manufacturers_en_gb` (`virtuemart_manufacturer_id`, `mf_name`, `mf_email`, `mf_desc`, `mf_url`, `slug`)
VALUES
	(1,'Manufacturer','manufacturer@example.org','<p>An example for a manufacturer</p>','http://www.example.org','manufacturer'),
	(2,'Default','example@manufacturer.net','<p>Default manufacturer</p>','example.manufacturer.net','default'),
	(3,'Producer','info@producer.com','<p>An example for another manufacturer.</p>','producer.com','producer');

/*!40000 ALTER TABLE `pz5yp_virtuemart_manufacturers_en_gb` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_medias
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_medias`;

CREATE TABLE `pz5yp_virtuemart_medias` (
  `virtuemart_media_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) NOT NULL DEFAULT '1',
  `file_title` char(126) NOT NULL DEFAULT '',
  `file_description` char(254) NOT NULL DEFAULT '',
  `file_meta` char(254) NOT NULL DEFAULT '',
  `file_class` char(64) NOT NULL DEFAULT '',
  `file_mimetype` char(64) NOT NULL DEFAULT '',
  `file_type` char(32) NOT NULL DEFAULT '',
  `file_url` varchar(900) NOT NULL DEFAULT '',
  `file_url_thumb` varchar(900) NOT NULL DEFAULT '',
  `file_is_product_image` tinyint(1) NOT NULL DEFAULT '0',
  `file_is_downloadable` tinyint(1) NOT NULL DEFAULT '0',
  `file_is_forSale` tinyint(1) NOT NULL DEFAULT '0',
  `file_params` varchar(17000) NOT NULL DEFAULT '',
  `file_lang` varchar(500) NOT NULL DEFAULT '',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_media_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `published` (`published`),
  KEY `file_type` (`file_type`),
  KEY `shared` (`shared`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Additional Images and Files which are assigned to products';

LOCK TABLES `pz5yp_virtuemart_medias` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_medias` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_medias` (`virtuemart_media_id`, `virtuemart_vendor_id`, `file_title`, `file_description`, `file_meta`, `file_class`, `file_mimetype`, `file_type`, `file_url`, `file_url_thumb`, `file_is_product_image`, `file_is_downloadable`, `file_is_forSale`, `file_params`, `file_lang`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`)
VALUES
	(1,1,'vendor.gif','','','','image/gif','vendor','images/stories/virtuemart/vendor/vendor.gif','',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(2,1,'student_hat_16.jpg','','','','image/jpeg','category','images/stories/virtuemart/category/student_hat_16.jpg','',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(3,1,'hat_category8.jpg','','','','image/jpeg','category','images/stories/virtuemart/category/hat_category8.jpg','',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(5,1,'cap6.jpg','','','','image/jpeg','category','images/stories/virtuemart/category/cap6.jpg','',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(6,1,'jacket_classic7.jpg','','','','image/jpeg','category','images/stories/virtuemart/category/jacket_classic7.jpg','',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(7,1,'black_dress_2.jpg','','','','image/jpeg','category','images/stories/virtuemart/category/black_dress_2.jpg','',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(8,1,'cart_logo.jpg','','','','image/jpeg','product','images/stories/virtuemart/product/cart_logo.jpg','',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(9,1,'manufacturer.jpg','','','','image/jpeg','manufacturer','images/stories/virtuemart/manufacturer/manufacturer.jpg','',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(10,1,'classic_hat.jpg','','','','image/jpeg','product','images/stories/virtuemart/product/classic_hat.jpg','',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(11,1,'cowboy_hat.jpg','','','','image/jpeg','product','images/stories/virtuemart/product/cowboy_hat.jpg','',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(12,1,'derbyhat.jpg','','','','image/jpeg','product','images/stories/virtuemart/product/derbyhat.jpg','',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(13,1,'santa_cap.jpg','','','','image/jpeg','product','images/stories/virtuemart/product/santa_cap.jpg','',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(14,1,'baseballcap.jpg','','','','image/jpeg','product','images/stories/virtuemart/product/baseballcap.jpg','',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(15,1,'marinecap.jpg','','','','image/jpeg','product','images/stories/virtuemart/product/marinecap.jpg','',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(16,1,'jumper.jpg','','','','image/jpeg','product','images/stories/virtuemart/product/jumper.jpg','',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(17,1,'wide_dress_2.jpg','','','','image/jpeg','product','images/stories/virtuemart/product/wide_dress_2.jpg','',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(18,1,'jacket_classic.jpg','','','','image/jpeg','product','images/stories/virtuemart/product/jacket_classic.jpg','',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(19,1,'poncho.jpg','','','','image/jpeg','product','images/stories/virtuemart/product/poncho.jpg','',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(20,1,'dress.jpg','','','','image/jpeg','product','images/stories/virtuemart/product/dress.jpg','',0,0,0,'','',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(21,1,'cart_logo.jpg_product','','','','image/jpeg','product','images/stories/virtuemart/product/pasta-ebi-tempura-to-gomatare-490x314.jpg','',0,0,0,'','',0,1,'2014-10-19 02:49:50',254,'2014-10-19 02:49:50',254,'0000-00-00 00:00:00',0);

/*!40000 ALTER TABLE `pz5yp_virtuemart_medias` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_migration_oldtonew_ids
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_migration_oldtonew_ids`;

CREATE TABLE `pz5yp_virtuemart_migration_oldtonew_ids` (
  `id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `cats` longblob,
  `catsxref` blob,
  `manus` longblob,
  `mfcats` blob,
  `shoppergroups` longblob,
  `products` longblob,
  `products_start` int(1) DEFAULT NULL,
  `orderstates` blob,
  `orders` longblob,
  `attributes` longblob,
  `relatedproducts` longblob,
  `orders_start` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='xref table for vm1 ids to vm2 ids';



# Dump of table pz5yp_virtuemart_modules
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_modules`;

CREATE TABLE `pz5yp_virtuemart_modules` (
  `module_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` char(255) DEFAULT NULL,
  `module_description` varchar(21000) DEFAULT NULL,
  `module_perms` char(255) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` enum('0','1') NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`module_id`),
  KEY `module_name` (`module_name`),
  KEY `ordering` (`ordering`),
  KEY `published` (`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='VirtueMart Core Modules, not: Joomla modules';

LOCK TABLES `pz5yp_virtuemart_modules` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_modules` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_modules` (`module_id`, `module_name`, `module_description`, `module_perms`, `published`, `is_admin`, `ordering`)
VALUES
	(1,'product','Here you can administer your online catalog of products.  Categories , Products (view=product), Attributes  ,Product Types      Product Files (view=media), Inventory  , Calculation Rules ,Customer Reviews  ','storeadmin,admin',1,'1',1),
	(2,'order','View Order and Update Order Status:    Orders , Coupons , Revenue Report ,Shopper , Shopper Groups ','admin,storeadmin',1,'1',2),
	(3,'manufacturer','Manage the manufacturers of products in your store.','storeadmin,admin',1,'1',3),
	(4,'store','Store Configuration: Store Information, Payment Methods , Shipment, Shipment Rates','storeadmin,admin',1,'1',4),
	(5,'configuration','Configuration: shop configuration , currencies (view=currency), Credit Card List, Countries, userfields, order status  ','admin,storeadmin',1,'1',5),
	(6,'msgs','This module is unprotected an used for displaying system messages to users.  We need to have an area that does not require authorization when things go wrong.','none',0,'0',99),
	(7,'shop','This is the Washupito store module.  This is the demo store included with the VirtueMart distribution.','none',1,'0',99),
	(8,'store','Store Configuration: Store Information, Payment Methods , Shipment, Shipment Rates','storeadmin,admin',1,'1',4),
	(9,'account','This module allows shoppers to update their account information and view previously placed orders.','shopper,storeadmin,admin,demo',1,'0',99),
	(10,'checkout','','none',0,'0',99),
	(11,'tools','Tools','admin',1,'1',8),
	(13,'zone','This is the zone-shipment module. Here you can manage your shipment costs according to Zones.','admin,storeadmin',0,'1',11);

/*!40000 ALTER TABLE `pz5yp_virtuemart_modules` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_order_calc_rules
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_order_calc_rules`;

CREATE TABLE `pz5yp_virtuemart_order_calc_rules` (
  `virtuemart_order_calc_rule_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_calc_id` int(1) DEFAULT NULL,
  `virtuemart_order_id` int(1) DEFAULT NULL,
  `virtuemart_vendor_id` smallint(1) NOT NULL DEFAULT '1',
  `virtuemart_order_item_id` int(1) DEFAULT NULL,
  `calc_rule_name` char(64) NOT NULL DEFAULT '' COMMENT 'Name of the rule',
  `calc_kind` char(16) NOT NULL DEFAULT '' COMMENT 'Discount/Tax/Margin/Commission',
  `calc_mathop` char(16) NOT NULL DEFAULT '' COMMENT 'Discount/Tax/Margin/Commission',
  `calc_amount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `calc_result` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `calc_value` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `calc_currency` smallint(1) DEFAULT NULL,
  `calc_params` varchar(18000) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_order_calc_rule_id`),
  KEY `virtuemart_calc_id` (`virtuemart_calc_id`),
  KEY `virtuemart_order_id` (`virtuemart_order_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all calculation rules which are part of an order';



# Dump of table pz5yp_virtuemart_order_histories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_order_histories`;

CREATE TABLE `pz5yp_virtuemart_order_histories` (
  `virtuemart_order_history_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_order_id` int(1) unsigned NOT NULL DEFAULT '0',
  `order_status_code` char(1) NOT NULL DEFAULT '0',
  `customer_notified` tinyint(1) NOT NULL DEFAULT '0',
  `comments` varchar(21000) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_order_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores all actions and changes that occur to an order';



# Dump of table pz5yp_virtuemart_order_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_order_items`;

CREATE TABLE `pz5yp_virtuemart_order_items` (
  `virtuemart_order_item_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_order_id` int(1) DEFAULT NULL,
  `virtuemart_vendor_id` smallint(1) NOT NULL DEFAULT '1',
  `virtuemart_product_id` int(1) DEFAULT NULL,
  `order_item_sku` char(255) NOT NULL DEFAULT '',
  `order_item_name` varchar(4096) NOT NULL DEFAULT '',
  `product_quantity` int(1) DEFAULT NULL,
  `product_item_price` decimal(15,5) DEFAULT NULL,
  `product_priceWithoutTax` decimal(15,5) DEFAULT NULL,
  `product_tax` decimal(15,5) DEFAULT NULL,
  `product_basePriceWithTax` decimal(15,5) DEFAULT NULL,
  `product_discountedPriceWithoutTax` decimal(15,5) DEFAULT NULL,
  `product_final_price` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `product_subtotal_discount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `product_subtotal_with_tax` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_item_currency` int(1) DEFAULT NULL,
  `order_status` char(1) DEFAULT NULL,
  `product_attribute` mediumtext,
  `delivery_date` varchar(200) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_order_item_id`),
  KEY `virtuemart_product_id` (`virtuemart_product_id`),
  KEY `virtuemart_order_id` (`virtuemart_order_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `order_status` (`order_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores all items (products) which are part of an order';



# Dump of table pz5yp_virtuemart_order_userinfos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_order_userinfos`;

CREATE TABLE `pz5yp_virtuemart_order_userinfos` (
  `virtuemart_order_userinfo_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_order_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `address_type` char(2) DEFAULT NULL,
  `address_type_name` char(32) DEFAULT NULL,
  `company` char(64) DEFAULT NULL,
  `title` char(32) DEFAULT NULL,
  `last_name` char(48) DEFAULT NULL,
  `first_name` char(48) DEFAULT NULL,
  `middle_name` char(48) DEFAULT NULL,
  `phone_1` char(32) DEFAULT NULL,
  `phone_2` char(32) DEFAULT NULL,
  `fax` char(32) DEFAULT NULL,
  `address_1` char(64) NOT NULL DEFAULT '',
  `address_2` char(64) DEFAULT NULL,
  `city` char(64) NOT NULL DEFAULT '',
  `virtuemart_state_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_country_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `zip` char(16) NOT NULL DEFAULT '',
  `email` char(128) DEFAULT NULL,
  `agreed` tinyint(4) DEFAULT NULL,
  `tos` varchar(255) DEFAULT NULL,
  `customer_note` mediumtext,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_order_userinfo_id`),
  KEY `virtuemart_order_id` (`virtuemart_order_id`),
  KEY `virtuemart_user_id` (`virtuemart_user_id`,`address_type`),
  KEY `address_type` (`address_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores the BillTo and ShipTo Information at order time';



# Dump of table pz5yp_virtuemart_orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_orders`;

CREATE TABLE `pz5yp_virtuemart_orders` (
  `virtuemart_order_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `order_number` varchar(64) DEFAULT NULL,
  `customer_number` varchar(32) DEFAULT NULL,
  `order_pass` varchar(34) DEFAULT NULL,
  `order_create_invoice_pass` varchar(32) DEFAULT NULL,
  `order_total` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_salesPrice` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_billTaxAmount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_billTax` varchar(400) DEFAULT NULL,
  `order_billDiscountAmount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_discountAmount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_subtotal` decimal(15,5) DEFAULT NULL,
  `order_tax` decimal(10,5) DEFAULT NULL,
  `order_shipment` decimal(10,5) DEFAULT NULL,
  `order_shipment_tax` decimal(10,5) DEFAULT NULL,
  `order_payment` decimal(10,2) DEFAULT NULL,
  `order_payment_tax` decimal(10,5) DEFAULT NULL,
  `coupon_discount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `coupon_code` char(32) DEFAULT NULL,
  `order_discount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `order_currency` smallint(1) DEFAULT NULL,
  `order_status` char(1) DEFAULT NULL,
  `user_currency_id` smallint(1) DEFAULT NULL,
  `user_currency_rate` decimal(10,5) NOT NULL DEFAULT '1.00000',
  `virtuemart_paymentmethod_id` int(1) unsigned DEFAULT NULL,
  `virtuemart_shipmentmethod_id` int(1) unsigned DEFAULT NULL,
  `oc_note` varchar(20000) NOT NULL DEFAULT '' COMMENT 'old customer notes',
  `delivery_date` varchar(200) DEFAULT NULL,
  `order_language` varchar(7) DEFAULT NULL,
  `ip_address` char(15) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_order_id`),
  KEY `virtuemart_user_id` (`virtuemart_user_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `order_number` (`order_number`),
  KEY `virtuemart_paymentmethod_id` (`virtuemart_paymentmethod_id`),
  KEY `virtuemart_shipmentmethod_id` (`virtuemart_shipmentmethod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Used to store all orders';



# Dump of table pz5yp_virtuemart_orderstates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_orderstates`;

CREATE TABLE `pz5yp_virtuemart_orderstates` (
  `virtuemart_orderstate_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) NOT NULL DEFAULT '1',
  `order_status_code` char(1) NOT NULL DEFAULT '',
  `order_status_name` char(64) DEFAULT NULL,
  `order_status_description` varchar(20000) DEFAULT NULL,
  `order_stock_handle` char(1) NOT NULL DEFAULT 'A',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_orderstate_id`),
  KEY `ordering` (`ordering`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `published` (`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='All available order statuses';

LOCK TABLES `pz5yp_virtuemart_orderstates` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_orderstates` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_orderstates` (`virtuemart_orderstate_id`, `virtuemart_vendor_id`, `order_status_code`, `order_status_name`, `order_status_description`, `order_stock_handle`, `ordering`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`)
VALUES
	(1,1,'P','COM_VIRTUEMART_ORDER_STATUS_PENDING','','R',1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(2,1,'U','COM_VIRTUEMART_ORDER_STATUS_CONFIRMED_BY_SHOPPER','','R',2,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(3,1,'C','COM_VIRTUEMART_ORDER_STATUS_CONFIRMED','','R',3,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(4,1,'X','COM_VIRTUEMART_ORDER_STATUS_CANCELLED','','A',4,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(5,1,'R','COM_VIRTUEMART_ORDER_STATUS_REFUNDED','','A',5,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(6,1,'S','COM_VIRTUEMART_ORDER_STATUS_SHIPPED','','O',6,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);

/*!40000 ALTER TABLE `pz5yp_virtuemart_orderstates` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_payment_plg_standard
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_payment_plg_standard`;

CREATE TABLE `pz5yp_virtuemart_payment_plg_standard` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_order_id` int(1) unsigned DEFAULT NULL,
  `order_number` char(64) DEFAULT NULL,
  `virtuemart_paymentmethod_id` mediumint(1) unsigned DEFAULT NULL,
  `payment_name` varchar(5000) DEFAULT NULL,
  `payment_order_total` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `payment_currency` char(3) DEFAULT NULL,
  `email_currency` char(3) DEFAULT NULL,
  `cost_per_transaction` decimal(10,2) DEFAULT NULL,
  `cost_percent_total` decimal(10,2) DEFAULT NULL,
  `tax_id` smallint(1) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Payment Standard Table';



# Dump of table pz5yp_virtuemart_paymentmethod_shoppergroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_paymentmethod_shoppergroups`;

CREATE TABLE `pz5yp_virtuemart_paymentmethod_shoppergroups` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_paymentmethod_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_paymentmethod_id` (`virtuemart_paymentmethod_id`,`virtuemart_shoppergroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='xref table for paymentmethods to shoppergroup';



# Dump of table pz5yp_virtuemart_paymentmethods
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_paymentmethods`;

CREATE TABLE `pz5yp_virtuemart_paymentmethods` (
  `virtuemart_paymentmethod_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) NOT NULL DEFAULT '1',
  `payment_jplugin_id` int(1) NOT NULL DEFAULT '0',
  `payment_element` char(50) NOT NULL DEFAULT '',
  `payment_params` varchar(19000) NOT NULL DEFAULT '',
  `shared` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'valide for all vendors?',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_paymentmethod_id`),
  KEY `payment_jplugin_id` (`payment_jplugin_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `payment_element` (`payment_element`,`virtuemart_vendor_id`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='The payment methods of your store';

LOCK TABLES `pz5yp_virtuemart_paymentmethods` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_paymentmethods` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_paymentmethods` (`virtuemart_paymentmethod_id`, `virtuemart_vendor_id`, `payment_jplugin_id`, `payment_element`, `payment_params`, `shared`, `ordering`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`)
VALUES
	(1,1,10036,'standard','payment_logos=\"\"|countries=\"\"|payment_currency=\"0\"|status_pending=\"U\"|send_invoice_on_order_null=\"1\"|min_amount=\"\"|max_amount=\"\"|cost_per_transaction=\"0.10\"|cost_percent_total=\"1.5\"|tax_id=\"0\"|payment_info=\"\"|',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);

/*!40000 ALTER TABLE `pz5yp_virtuemart_paymentmethods` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_paymentmethods_en_gb
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_paymentmethods_en_gb`;

CREATE TABLE `pz5yp_virtuemart_paymentmethods_en_gb` (
  `virtuemart_paymentmethod_id` int(1) unsigned NOT NULL,
  `payment_name` char(180) NOT NULL DEFAULT '',
  `payment_desc` varchar(19000) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_paymentmethod_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_virtuemart_paymentmethods_en_gb` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_paymentmethods_en_gb` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_paymentmethods_en_gb` (`virtuemart_paymentmethod_id`, `payment_name`, `payment_desc`, `slug`)
VALUES
	(1,'Cash on delivery','','Cash-on-delivery');

/*!40000 ALTER TABLE `pz5yp_virtuemart_paymentmethods_en_gb` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_permgroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_permgroups`;

CREATE TABLE `pz5yp_virtuemart_permgroups` (
  `virtuemart_permgroup_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `group_name` char(128) DEFAULT NULL,
  `group_level` int(11) DEFAULT NULL,
  `ordering` int(2) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_permgroup_id`),
  KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Holds all the user groups';

LOCK TABLES `pz5yp_virtuemart_permgroups` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_permgroups` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_permgroups` (`virtuemart_permgroup_id`, `virtuemart_vendor_id`, `group_name`, `group_level`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`)
VALUES
	(1,1,'admin',0,0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(2,1,'storeadmin',250,0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(3,1,'shopper',500,0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(4,1,'demo',750,0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);

/*!40000 ALTER TABLE `pz5yp_virtuemart_permgroups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_product_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_product_categories`;

CREATE TABLE `pz5yp_virtuemart_product_categories` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_category_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_category_id`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps Products to Categories';

LOCK TABLES `pz5yp_virtuemart_product_categories` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_product_categories` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_product_categories` (`id`, `virtuemart_product_id`, `virtuemart_category_id`, `ordering`)
VALUES
	(8,11,1,8),
	(9,15,1,9),
	(13,21,2,3),
	(11,20,2,2),
	(12,19,2,1),
	(20,27,3,3),
	(53,60,5,1),
	(54,61,5,2),
	(55,62,5,3),
	(57,64,6,1),
	(58,65,6,2),
	(59,66,6,3),
	(61,68,7,1),
	(64,69,7,2),
	(65,69,8,1),
	(74,62,4,3),
	(75,61,4,2),
	(76,60,4,1),
	(78,66,4,7),
	(79,65,4,6),
	(80,64,4,5);

/*!40000 ALTER TABLE `pz5yp_virtuemart_product_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_product_customfields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_product_customfields`;

CREATE TABLE `pz5yp_virtuemart_product_customfields` (
  `virtuemart_customfield_id` int(1) unsigned NOT NULL AUTO_INCREMENT COMMENT 'FIELD ID',
  `virtuemart_product_id` int(1) NOT NULL DEFAULT '0',
  `virtuemart_custom_id` int(1) NOT NULL DEFAULT '1' COMMENT 'CUSTOM GROUP ID',
  `customfield_value` varchar(2500) DEFAULT NULL COMMENT 'field value',
  `customfield_price` decimal(15,6) DEFAULT NULL COMMENT 'price',
  `disabler` int(1) unsigned NOT NULL DEFAULT '0',
  `override` int(1) unsigned NOT NULL DEFAULT '0',
  `customfield_params` varchar(17000) NOT NULL DEFAULT '' COMMENT 'PARAM FOR PLUGINS',
  `product_sku` char(64) DEFAULT NULL,
  `product_gtin` char(64) DEFAULT NULL,
  `product_mpn` char(64) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) unsigned NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) unsigned NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_customfield_id`),
  KEY `virtuemart_product_id` (`virtuemart_product_id`),
  KEY `virtuemart_custom_id` (`virtuemart_custom_id`),
  KEY `published` (`published`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='custom fields';

LOCK TABLES `pz5yp_virtuemart_product_customfields` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_product_customfields` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_product_customfields` (`virtuemart_customfield_id`, `virtuemart_product_id`, `virtuemart_custom_id`, `customfield_value`, `customfield_price`, `disabler`, `override`, `customfield_params`, `product_sku`, `product_gtin`, `product_mpn`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`, `ordering`)
VALUES
	(12,11,10,'product_sku',NULL,0,0,'withParent=\"1\"|parentOrderable=\"0\"|',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'2014-10-19 02:49:50',254,'0000-00-00 00:00:00',0,0),
	(15,15,10,'product_sku',NULL,0,0,'withParent=\"1\"|parentOrderable=\"1\"|',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,0),
	(16,15,9,'(default)',NULL,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,1),
	(17,15,9,'Variante A',10.000000,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,2),
	(18,15,9,'Variante B',20.000000,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,3),
	(19,15,9,'Variante C',30.000000,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,4),
	(28,61,1,'62',NULL,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,0),
	(31,62,1,'61',NULL,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,1),
	(44,64,13,'Details: ',NULL,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,5),
	(43,64,11,'',NULL,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,4),
	(41,64,12,'M-L',1.000000,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,2),
	(40,64,12,'S-M',NULL,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,1),
	(46,65,12,'S',NULL,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,1),
	(42,64,12,'L-XL',2.000000,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,3),
	(45,64,14,'Components: ',NULL,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,6),
	(47,65,12,'M',1.000000,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,2),
	(48,65,12,'L',3.000000,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,3),
	(49,65,11,'',NULL,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,4),
	(50,65,13,'Extra fluffy cap your Santa will be amused',NULL,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,5),
	(51,65,14,'100% Synthetic Deerimitation',NULL,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,6),
	(52,66,12,'S',NULL,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,1),
	(53,66,12,'M',3.000000,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,2),
	(54,66,12,'L',5.000000,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,3),
	(55,66,11,'',NULL,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,4),
	(56,66,13,'The players choice!',NULL,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,5),
	(57,66,14,'100% Cotton',NULL,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,6),
	(58,66,1,'65',NULL,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,0),
	(60,65,1,'66',NULL,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,0),
	(70,68,15,'Twill',NULL,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,0),
	(71,68,15,'Rip-stop',10.000000,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,1),
	(72,68,16,'M',NULL,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,2),
	(73,68,16,'L',10.000000,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,3),
	(74,68,17,'',NULL,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,4),
	(75,68,18,'100% natural wool',NULL,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,5),
	(76,68,19,'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',NULL,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,6),
	(77,69,16,'M-L',NULL,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,2),
	(78,69,16,'L-XL',15.000000,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,3),
	(79,69,17,'',NULL,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,4),
	(80,69,18,'100% Cotton',NULL,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,5),
	(81,69,19,'Jumper ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',NULL,0,0,'',NULL,NULL,NULL,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,6);

/*!40000 ALTER TABLE `pz5yp_virtuemart_product_customfields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_product_manufacturers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_product_manufacturers`;

CREATE TABLE `pz5yp_virtuemart_product_manufacturers` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) DEFAULT NULL,
  `virtuemart_manufacturer_id` smallint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_manufacturer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps a product to a manufacturer';

LOCK TABLES `pz5yp_virtuemart_product_manufacturers` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_product_manufacturers` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_product_manufacturers` (`id`, `virtuemart_product_id`, `virtuemart_manufacturer_id`)
VALUES
	(11,11,2),
	(12,15,2),
	(13,19,2),
	(14,20,2),
	(15,21,2),
	(21,27,2),
	(54,60,3),
	(55,61,3),
	(56,62,2),
	(58,64,2),
	(59,65,2),
	(60,66,1),
	(62,68,2),
	(64,69,3);

/*!40000 ALTER TABLE `pz5yp_virtuemart_product_manufacturers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_product_medias
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_product_medias`;

CREATE TABLE `pz5yp_virtuemart_product_medias` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_media_id`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_virtuemart_product_medias` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_product_medias` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_product_medias` (`id`, `virtuemart_product_id`, `virtuemart_media_id`, `ordering`)
VALUES
	(9,15,8,1),
	(10,19,8,1),
	(14,27,8,1),
	(17,60,8,1),
	(18,61,10,1),
	(19,62,11,1),
	(31,11,21,1),
	(21,64,8,1),
	(22,65,13,1),
	(23,66,14,1),
	(25,68,8,1),
	(26,69,16,1);

/*!40000 ALTER TABLE `pz5yp_virtuemart_product_medias` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_product_prices
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_product_prices`;

CREATE TABLE `pz5yp_virtuemart_product_prices` (
  `virtuemart_product_price_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `product_price` decimal(15,6) DEFAULT NULL,
  `override` tinyint(1) DEFAULT NULL,
  `product_override_price` decimal(15,5) DEFAULT NULL,
  `product_tax_id` int(1) DEFAULT NULL,
  `product_discount_id` int(1) DEFAULT NULL,
  `product_currency` smallint(1) DEFAULT NULL,
  `product_price_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_price_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `price_quantity_start` int(1) unsigned NOT NULL DEFAULT '0',
  `price_quantity_end` int(1) unsigned NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_product_price_id`),
  KEY `virtuemart_product_id` (`virtuemart_product_id`),
  KEY `product_price` (`virtuemart_product_id`),
  KEY `virtuemart_shoppergroup_id` (`virtuemart_shoppergroup_id`),
  KEY `product_price_publish_up` (`product_price_publish_up`),
  KEY `product_price_publish_down` (`product_price_publish_down`),
  KEY `price_quantity_start` (`price_quantity_start`),
  KEY `price_quantity_end` (`price_quantity_end`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Holds price records for a product';

LOCK TABLES `pz5yp_virtuemart_product_prices` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_product_prices` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_product_prices` (`virtuemart_product_price_id`, `virtuemart_product_id`, `virtuemart_shoppergroup_id`, `product_price`, `override`, `product_override_price`, `product_tax_id`, `product_discount_id`, `product_currency`, `product_price_publish_up`, `product_price_publish_down`, `price_quantity_start`, `price_quantity_end`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`)
VALUES
	(10,11,0,10.000000,0,0.00000,0,0,47,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,'2014-10-19 02:49:50',254,'2014-10-19 02:49:50',254,'0000-00-00 00:00:00',0),
	(14,15,0,10.000000,0,0.00000,0,0,47,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(19,19,0,10.000000,0,0.00000,0,0,47,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(20,21,0,20.000000,0,0.00000,0,0,47,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(25,27,0,40.000000,0,0.00000,0,0,47,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(28,61,0,29.000000,0,0.00000,0,0,47,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(29,62,0,34.900000,0,0.00000,0,0,47,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(31,64,0,25.000000,0,0.00000,0,0,47,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(32,65,0,24.900000,0,0.00000,0,0,47,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(33,66,0,15.000000,0,0.00000,0,0,47,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(35,68,0,249.900000,0,0.00000,0,0,47,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(36,69,0,149.900000,0,0.00000,0,0,47,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(43,61,3,14.900000,0,0.00000,0,0,47,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(44,62,3,24.900000,0,0.00000,0,0,47,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(46,65,3,14.900000,0,0.00000,0,0,47,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(47,66,3,9.900000,0,0.00000,0,0,47,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);

/*!40000 ALTER TABLE `pz5yp_virtuemart_product_prices` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_product_shoppergroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_product_shoppergroups`;

CREATE TABLE `pz5yp_virtuemart_product_shoppergroups` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_shoppergroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps Products to Categories';



# Dump of table pz5yp_virtuemart_products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_products`;

CREATE TABLE `pz5yp_virtuemart_products` (
  `virtuemart_product_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `product_parent_id` int(1) unsigned NOT NULL DEFAULT '0',
  `product_sku` varchar(255) DEFAULT NULL,
  `product_gtin` varchar(64) DEFAULT NULL,
  `product_mpn` varchar(64) DEFAULT NULL,
  `product_weight` decimal(10,4) DEFAULT NULL,
  `product_weight_uom` varchar(7) DEFAULT NULL,
  `product_length` decimal(10,4) DEFAULT NULL,
  `product_width` decimal(10,4) DEFAULT NULL,
  `product_height` decimal(10,4) DEFAULT NULL,
  `product_lwh_uom` varchar(7) DEFAULT NULL,
  `product_url` varchar(255) DEFAULT NULL,
  `product_in_stock` int(1) NOT NULL DEFAULT '0',
  `product_ordered` int(1) NOT NULL DEFAULT '0',
  `low_stock_notification` int(1) unsigned NOT NULL DEFAULT '0',
  `product_available_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_availability` char(32) DEFAULT NULL,
  `product_special` tinyint(1) DEFAULT NULL,
  `product_sales` int(1) unsigned NOT NULL DEFAULT '0',
  `product_unit` varchar(8) DEFAULT NULL,
  `product_packaging` decimal(8,4) unsigned DEFAULT NULL,
  `product_params` varchar(2000) NOT NULL DEFAULT '',
  `hits` int(1) unsigned DEFAULT NULL,
  `intnotes` varchar(18000) DEFAULT NULL,
  `metarobot` varchar(400) DEFAULT NULL,
  `metaauthor` varchar(400) DEFAULT NULL,
  `layout` char(16) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `pordering` int(1) unsigned NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_product_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `product_parent_id` (`product_parent_id`),
  KEY `product_special` (`product_special`),
  KEY `published` (`published`),
  KEY `pordering` (`pordering`),
  KEY `created_on` (`created_on`),
  KEY `modified_on` (`modified_on`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='All products are stored here.';

LOCK TABLES `pz5yp_virtuemart_products` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_products` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_products` (`virtuemart_product_id`, `virtuemart_vendor_id`, `product_parent_id`, `product_sku`, `product_gtin`, `product_mpn`, `product_weight`, `product_weight_uom`, `product_length`, `product_width`, `product_height`, `product_lwh_uom`, `product_url`, `product_in_stock`, `product_ordered`, `low_stock_notification`, `product_available_date`, `product_availability`, `product_special`, `product_sales`, `product_unit`, `product_packaging`, `product_params`, `hits`, `intnotes`, `metarobot`, `metaauthor`, `layout`, `published`, `pordering`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`)
VALUES
	(11,1,0,'','','',0.4000,'KG',0.1000,0.2000,0.3000,'M','',150,0,0,'0000-00-00 00:00:00','',0,0,'KG',NULL,'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|',NULL,'','','','0',1,0,'2014-10-19 02:49:50',254,'2014-10-19 02:49:50',254,'0000-00-00 00:00:00',0),
	(15,1,0,'',NULL,NULL,0.1000,'KG',0.1000,0.2000,0.3000,'M','',100,0,0,'0000-00-00 00:00:00','',0,0,'KG',NULL,'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|',NULL,'','','','0',1,0,'0000-00-00 00:00:00',635,'0000-00-00 00:00:00',635,'0000-00-00 00:00:00',0),
	(19,1,0,'',NULL,NULL,0.4000,'KG',0.1000,0.2000,0.3000,'M','',100,0,0,'0000-00-00 00:00:00','',0,0,'KG',NULL,'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"1\"|',NULL,'','','','0',1,0,'0000-00-00 00:00:00',635,'0000-00-00 00:00:00',635,'0000-00-00 00:00:00',0),
	(20,1,19,'',NULL,NULL,NULL,'KG',NULL,NULL,NULL,'M','',0,0,0,'0000-00-00 00:00:00','',0,0,'KG',NULL,'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|',NULL,'','','','0',1,0,'0000-00-00 00:00:00',635,'0000-00-00 00:00:00',635,'0000-00-00 00:00:00',0),
	(21,1,19,'',NULL,NULL,NULL,'KG',NULL,NULL,NULL,'M','',0,0,0,'0000-00-00 00:00:00','',0,0,'KG',NULL,'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|',NULL,'','','','0',1,0,'0000-00-00 00:00:00',635,'0000-00-00 00:00:00',635,'0000-00-00 00:00:00',0),
	(27,1,0,'',NULL,NULL,NULL,'KG',NULL,NULL,NULL,'M','',0,0,0,'0000-00-00 00:00:00','',0,0,'KG',NULL,'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|',NULL,'','','','0',1,0,'0000-00-00 00:00:00',635,'0000-00-00 00:00:00',635,'0000-00-00 00:00:00',0),
	(60,1,0,'',NULL,NULL,NULL,'KG',NULL,NULL,NULL,'M','',0,0,0,'0000-00-00 00:00:00','',0,0,'KG',NULL,'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|',NULL,'','','','0',1,0,'0000-00-00 00:00:00',635,'0000-00-00 00:00:00',635,'0000-00-00 00:00:00',0),
	(61,1,60,'',NULL,NULL,125.0000,'G',20.0000,20.0000,10.0000,'CM','',35,2,5,'0000-00-00 00:00:00','',0,0,'100G',0.5000,'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"1\"|',NULL,'','','','0',1,1,'0000-00-00 00:00:00',635,'0000-00-00 00:00:00',635,'0000-00-00 00:00:00',0),
	(62,1,60,'',NULL,NULL,150.0000,'G',35.0000,30.0000,15.0000,'CM','',15,1,5,'0000-00-00 00:00:00','',0,0,'KG',NULL,'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"1\"|',NULL,'','','','0',1,2,'0000-00-00 00:00:00',635,'0000-00-00 00:00:00',635,'0000-00-00 00:00:00',0),
	(64,1,0,'',NULL,NULL,NULL,'KG',NULL,NULL,NULL,'M','',0,0,0,'0000-00-00 00:00:00','',0,0,'KG',NULL,'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|',NULL,'','','','0',1,0,'0000-00-00 00:00:00',635,'0000-00-00 00:00:00',635,'0000-00-00 00:00:00',0),
	(65,1,64,'',NULL,NULL,0.1000,'KG',25.0000,20.0000,2.0000,'CM','',77,0,0,'0000-00-00 00:00:00','',0,0,'KG',1.0000,'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|',NULL,'','','','0',1,1,'0000-00-00 00:00:00',635,'0000-00-00 00:00:00',635,'0000-00-00 00:00:00',0),
	(66,1,64,'',NULL,NULL,0.0750,'KG',0.2000,0.2000,0.1500,'M','',152,0,0,'0000-00-00 00:00:00','',0,0,'KG',NULL,'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"1\"|',NULL,'','','','0',1,2,'0000-00-00 00:00:00',635,'0000-00-00 00:00:00',635,'0000-00-00 00:00:00',0),
	(68,1,0,'',NULL,NULL,NULL,'KG',NULL,NULL,NULL,'M','',0,0,0,'0000-00-00 00:00:00','',0,0,'KG',NULL,'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|',NULL,'','','','0',1,0,'0000-00-00 00:00:00',635,'0000-00-00 00:00:00',635,'0000-00-00 00:00:00',0),
	(69,1,68,'',NULL,NULL,350.0000,'G',NULL,NULL,NULL,'M','',45,0,2,'0000-00-00 00:00:00','',0,0,'KG',NULL,'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|',NULL,'','','','0',1,1,'0000-00-00 00:00:00',635,'0000-00-00 00:00:00',635,'0000-00-00 00:00:00',0);

/*!40000 ALTER TABLE `pz5yp_virtuemart_products` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_products_en_gb
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_products_en_gb`;

CREATE TABLE `pz5yp_virtuemart_products_en_gb` (
  `virtuemart_product_id` int(1) unsigned NOT NULL,
  `product_s_desc` varchar(2000) NOT NULL DEFAULT '',
  `product_desc` varchar(18400) NOT NULL DEFAULT '',
  `product_name` char(180) NOT NULL DEFAULT '',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` char(255) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_product_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_virtuemart_products_en_gb` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_products_en_gb` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_products_en_gb` (`virtuemart_product_id`, `product_s_desc`, `product_desc`, `product_name`, `metadesc`, `metakey`, `customtitle`, `slug`)
VALUES
	(11,'Product with child variant; parent not ordable','<p>This product will explain the usage of customfield generic (dynamic) child variant. The base product is not ordable in this case.</p>\r\n<p>Consider you sell products in different color settings: you want to change the color of the product by selecting a color variant.<br />Therefore dynamic child variants can be used to allow you different description, images, or product status for every variant of your base product.<br /><br />Set up a new product, set price, add child products. Add created customfield generic child variant. <br />The child products are assigned to another category as the parent product for caclulation or like in this case to no category.<br />Do not tick the checkbox <em>Display parent as option in this case</em>.</p>','Product w/child variant parent not ordable','','','','product-w-child-variant-parent-not-ordable'),
	(15,'Default product with child variant and cart variant.','<p>This product is a showcase to present the combination of product price, child variant price, and cart variant price.</p>','Product w/child variant w/cart variant','','','','product-w-child-variant-w-cart-variant'),
	(19,'Showcase for pattern usage.','<p>This product is used as a pattern for other products. It is a parent product and has multiple child products. <br />You can set several settings (content, customfields) for parent product. Childs of this parent will basically have the same settings as the parent automatically inherite until you overwrite.<br /><br /></p>\r\n<p>In this case product price is set in pattern.</p>','Basic PATTERN','','','','basic-pattern'),
	(20,'This is a basic child of Product PATTERN.','<p>This is a basic child of Product PATTERN. You see inherited settings, only Product description is overwritten.<br /><br /><span style=\"background-color: #FCDB73; text-align: center;padding: 5px 40px;\">In case the child product should be available by browsing set the product category.</span></p>','Basic child','','','','basic-pattern197'),
	(21,'This is a basic child of Product PATTERN. You see inherited settings.','<p>This is a basic child of Product PATTERN. You see inherited settings. <br />Overwritten are following setting/content:<br />- Product desc<br />- Product price<br /><br /><span style=\"background-color: #FCDB73; text-align: center;padding: 5px 40px;\">In case the child product should be available by browsing set the product category.</span></p>','Basic price overwrite','','','','basic-price-overwrite'),
	(27,'','','3- Product 1st PATTERN','','','','3-product-1st-pattern'),
	(60,'','','PATTERN Hats','','','','pattern-hats'),
	(61,'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.','<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>','Classic Hat','','','','classic-hat'),
	(62,'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.','<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>','Cowboy Hat','','','','cowboy-hat'),
	(64,'','','PATTERN Caps','','','','pattern-caps'),
	(65,'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.','<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>','Santa Cap','','','','santa-cap'),
	(66,'Base lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.','<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>','Baseball Cap','','','','baseball-cap'),
	(68,'Pattern for Clothing. For showcase reason this pattern is NOT unpublished.','<p>For showcase reason this pattern is NOT unpublished.</p>','PATTERN Clothing','','','','pattern-outer-garments'),
	(69,'Jumper dress ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.','','Jumper','','','','jumper');

/*!40000 ALTER TABLE `pz5yp_virtuemart_products_en_gb` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_rating_reviews
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_rating_reviews`;

CREATE TABLE `pz5yp_virtuemart_rating_reviews` (
  `virtuemart_rating_review_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(18000) DEFAULT NULL,
  `review_ok` tinyint(1) NOT NULL DEFAULT '0',
  `review_rates` int(1) unsigned NOT NULL DEFAULT '0',
  `review_ratingcount` int(1) unsigned NOT NULL DEFAULT '0',
  `review_rating` decimal(10,2) NOT NULL DEFAULT '0.00',
  `review_editable` tinyint(1) NOT NULL DEFAULT '1',
  `lastip` char(50) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_rating_review_id`),
  UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`created_by`),
  KEY `created_on` (`created_on`),
  KEY `created_by` (`created_by`),
  KEY `published` (`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table pz5yp_virtuemart_rating_votes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_rating_votes`;

CREATE TABLE `pz5yp_virtuemart_rating_votes` (
  `virtuemart_rating_vote_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `vote` int(1) NOT NULL DEFAULT '0',
  `lastip` char(50) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_rating_vote_id`),
  UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`created_by`),
  KEY `created_by` (`created_by`),
  KEY `created_on` (`created_on`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all ratings for a product';

LOCK TABLES `pz5yp_virtuemart_rating_votes` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_rating_votes` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_rating_votes` (`virtuemart_rating_vote_id`, `virtuemart_product_id`, `vote`, `lastip`, `created_on`, `created_by`, `modified_on`, `modified_by`)
VALUES
	(5,11,5,'::1','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(6,15,5,'::1','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(12,21,5,'::1','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(13,20,3,'::1','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(14,19,5,'::1','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(16,60,5,'::1','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(17,61,4,'::1','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(18,62,4,'::1','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(20,64,4,'::1','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(21,65,5,'::1','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(22,66,5,'::1','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(27,69,4,'::1','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);

/*!40000 ALTER TABLE `pz5yp_virtuemart_rating_votes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_ratings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_ratings`;

CREATE TABLE `pz5yp_virtuemart_ratings` (
  `virtuemart_rating_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `rates` int(1) NOT NULL DEFAULT '0',
  `ratingcount` int(1) unsigned NOT NULL DEFAULT '0',
  `rating` decimal(10,1) NOT NULL DEFAULT '0.0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_rating_id`),
  UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_rating_id`),
  KEY `published` (`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all ratings for a product';

LOCK TABLES `pz5yp_virtuemart_ratings` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_ratings` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_ratings` (`virtuemart_rating_id`, `virtuemart_product_id`, `rates`, `ratingcount`, `rating`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`)
VALUES
	(5,11,5,1,5.0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(6,15,5,1,5.0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(12,21,5,1,5.0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(13,20,3,1,3.0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(14,19,5,1,5.0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(16,60,5,1,5.0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(17,61,4,1,4.0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(18,62,4,1,4.0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(20,64,4,1,4.0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(21,65,5,1,5.0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(22,66,5,1,5.0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(27,69,4,1,4.0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);

/*!40000 ALTER TABLE `pz5yp_virtuemart_ratings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_shipmentmethod_shoppergroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_shipmentmethod_shoppergroups`;

CREATE TABLE `pz5yp_virtuemart_shipmentmethod_shoppergroups` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_shipmentmethod_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_shipmentmethod_id` (`virtuemart_shipmentmethod_id`,`virtuemart_shoppergroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='xref table for shipment to shoppergroup';



# Dump of table pz5yp_virtuemart_shipmentmethods
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_shipmentmethods`;

CREATE TABLE `pz5yp_virtuemart_shipmentmethods` (
  `virtuemart_shipmentmethod_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) NOT NULL DEFAULT '1',
  `shipment_jplugin_id` int(1) NOT NULL DEFAULT '0',
  `shipment_element` char(50) NOT NULL DEFAULT '',
  `shipment_params` varchar(19000) NOT NULL DEFAULT '',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_shipmentmethod_id`),
  KEY `shipment_jplugin_id` (`shipment_jplugin_id`),
  KEY `shipment_element` (`shipment_element`,`virtuemart_vendor_id`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Shipment created from the shipment plugins';



# Dump of table pz5yp_virtuemart_shipmentmethods_en_gb
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_shipmentmethods_en_gb`;

CREATE TABLE `pz5yp_virtuemart_shipmentmethods_en_gb` (
  `virtuemart_shipmentmethod_id` int(1) unsigned NOT NULL,
  `shipment_name` char(180) NOT NULL DEFAULT '',
  `shipment_desc` varchar(19000) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_shipmentmethod_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table pz5yp_virtuemart_shoppergroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_shoppergroups`;

CREATE TABLE `pz5yp_virtuemart_shoppergroups` (
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) NOT NULL DEFAULT '1',
  `shopper_group_name` char(128) DEFAULT NULL,
  `shopper_group_desc` char(255) DEFAULT NULL,
  `custom_price_display` tinyint(1) NOT NULL DEFAULT '0',
  `price_display` blob NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `sgrp_additional` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_shoppergroup_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `shopper_group_name` (`shopper_group_name`),
  KEY `ordering` (`ordering`),
  KEY `shared` (`shared`),
  KEY `published` (`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Shopper Groups that users can be assigned to';

LOCK TABLES `pz5yp_virtuemart_shoppergroups` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_shoppergroups` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_shoppergroups` (`virtuemart_shoppergroup_id`, `virtuemart_vendor_id`, `shopper_group_name`, `shopper_group_desc`, `custom_price_display`, `price_display`, `default`, `sgrp_additional`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`)
VALUES
	(2,1,'COM_VIRTUEMART_SHOPPERGROUP_DEFAULT','COM_VIRTUEMART_SHOPPERGROUP_DEFAULT_DESCR',0,'',1,0,0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(1,1,'COM_VIRTUEMART_SHOPPERGROUP_GUEST','COM_VIRTUEMART_SHOPPERGROUP_GUEST_DESCR',0,'',2,0,0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(3,1,'Gold Level','Gold Level Shoppers.',0,'',0,0,0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(4,1,'Wholesale','Shoppers that can buy at wholesale.',0,'',0,0,0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);

/*!40000 ALTER TABLE `pz5yp_virtuemart_shoppergroups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_states
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_states`;

CREATE TABLE `pz5yp_virtuemart_states` (
  `virtuemart_state_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `virtuemart_country_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `virtuemart_worldzone_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `state_name` char(64) DEFAULT NULL,
  `state_3_code` char(3) DEFAULT NULL,
  `state_2_code` char(2) DEFAULT NULL,
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_state_id`),
  UNIQUE KEY `state_3_code` (`virtuemart_vendor_id`,`virtuemart_country_id`,`state_3_code`),
  UNIQUE KEY `state_2_code` (`virtuemart_vendor_id`,`virtuemart_country_id`,`state_2_code`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `virtuemart_country_id` (`virtuemart_country_id`),
  KEY `ordering` (`ordering`),
  KEY `shared` (`shared`),
  KEY `published` (`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='States that are assigned to a country';

LOCK TABLES `pz5yp_virtuemart_states` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_states` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_states` (`virtuemart_state_id`, `virtuemart_vendor_id`, `virtuemart_country_id`, `virtuemart_worldzone_id`, `state_name`, `state_3_code`, `state_2_code`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`)
VALUES
	(1,1,223,0,'Alabama','ALA','AL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(2,1,223,0,'Alaska','ALK','AK',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(3,1,223,0,'Arizona','ARZ','AZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(4,1,223,0,'Arkansas','ARK','AR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(5,1,223,0,'California','CAL','CA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(6,1,223,0,'Colorado','COL','CO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(7,1,223,0,'Connecticut','CCT','CT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(8,1,223,0,'Delaware','DEL','DE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(9,1,223,0,'District Of Columbia','DOC','DC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(10,1,223,0,'Florida','FLO','FL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(11,1,223,0,'Georgia','GEA','GA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(12,1,223,0,'Hawaii','HWI','HI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(13,1,223,0,'Idaho','IDA','ID',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(14,1,223,0,'Illinois','ILL','IL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(15,1,223,0,'Indiana','IND','IN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(16,1,223,0,'Iowa','IOA','IA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(17,1,223,0,'Kansas','KAS','KS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(18,1,223,0,'Kentucky','KTY','KY',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(19,1,223,0,'Louisiana','LOA','LA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(20,1,223,0,'Maine','MAI','ME',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(21,1,223,0,'Maryland','MLD','MD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(22,1,223,0,'Massachusetts','MSA','MA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(23,1,223,0,'Michigan','MIC','MI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(24,1,223,0,'Minnesota','MIN','MN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(25,1,223,0,'Mississippi','MIS','MS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(26,1,223,0,'Missouri','MIO','MO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(27,1,223,0,'Montana','MOT','MT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(28,1,223,0,'Nebraska','NEB','NE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(29,1,223,0,'Nevada','NEV','NV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(30,1,223,0,'New Hampshire','NEH','NH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(31,1,223,0,'New Jersey','NEJ','NJ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(32,1,223,0,'New Mexico','NEM','NM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(33,1,223,0,'New York','NEY','NY',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(34,1,223,0,'North Carolina','NOC','NC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(35,1,223,0,'North Dakota','NOD','ND',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(36,1,223,0,'Ohio','OHI','OH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(37,1,223,0,'Oklahoma','OKL','OK',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(38,1,223,0,'Oregon','ORN','OR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(39,1,223,0,'Pennsylvania','PEA','PA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(40,1,223,0,'Rhode Island','RHI','RI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(41,1,223,0,'South Carolina','SOC','SC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(42,1,223,0,'South Dakota','SOD','SD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(43,1,223,0,'Tennessee','TEN','TN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(44,1,223,0,'Texas','TXS','TX',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(45,1,223,0,'Utah','UTA','UT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(46,1,223,0,'Vermont','VMT','VT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(47,1,223,0,'Virginia','VIA','VA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(48,1,223,0,'Washington','WAS','WA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(49,1,223,0,'West Virginia','WEV','WV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(50,1,223,0,'Wisconsin','WIS','WI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(51,1,223,0,'Wyoming','WYO','WY',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(52,1,38,0,'Alberta','ALB','AB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(53,1,38,0,'British Columbia','BRC','BC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(54,1,38,0,'Manitoba','MAB','MB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(55,1,38,0,'New Brunswick','NEB','NB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(56,1,38,0,'Newfoundland and Labrador','NFL','NL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(57,1,38,0,'Northwest Territories','NWT','NT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(58,1,38,0,'Nova Scotia','NOS','NS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(59,1,38,0,'Nunavut','NUT','NU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(60,1,38,0,'Ontario','ONT','ON',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(61,1,38,0,'Prince Edward Island','PEI','PE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(62,1,38,0,'Quebec','QEC','QC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(63,1,38,0,'Saskatchewan','SAK','SK',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(64,1,38,0,'Yukon','YUT','YT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(65,1,222,0,'England','ENG','EN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(66,1,222,0,'Northern Ireland','NOI','NI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(67,1,222,0,'Scotland','SCO','SD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(68,1,222,0,'Wales','WLS','WS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(69,1,13,0,'Australian Capital Territory','ACT','AC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(70,1,13,0,'New South Wales','NSW','NS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(71,1,13,0,'Northern Territory','NOT','NT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(72,1,13,0,'Queensland','QLD','QL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(73,1,13,0,'South Australia','SOA','SA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(74,1,13,0,'Tasmania','TAS','TS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(75,1,13,0,'Victoria','VIC','VI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(76,1,13,0,'Western Australia','WEA','WA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(77,1,138,0,'Aguascalientes','AGS','AG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(78,1,138,0,'Baja California Norte','BCN','BN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(79,1,138,0,'Baja California Sur','BCS','BS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(80,1,138,0,'Campeche','CAM','CA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(81,1,138,0,'Chiapas','CHI','CS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(82,1,138,0,'Chihuahua','CHA','CH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(83,1,138,0,'Coahuila','COA','CO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(84,1,138,0,'Colima','COL','CM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(85,1,138,0,'Distrito Federal','DFM','DF',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(86,1,138,0,'Durango','DGO','DO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(87,1,138,0,'Guanajuato','GTO','GO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(88,1,138,0,'Guerrero','GRO','GU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(89,1,138,0,'Hidalgo','HGO','HI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(90,1,138,0,'Jalisco','JAL','JA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(91,1,138,0,'M','EDM','EM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(92,1,138,0,'Michoac','MCN','MI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(93,1,138,0,'Morelos','MOR','MO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(94,1,138,0,'Nayarit','NAY','NY',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(95,1,138,0,'Nuevo Le','NUL','NL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(96,1,138,0,'Oaxaca','OAX','OA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(97,1,138,0,'Puebla','PUE','PU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(98,1,138,0,'Quer','QRO','QU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(99,1,138,0,'Quintana Roo','QUR','QR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(100,1,138,0,'San Luis Potos','SLP','SP',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(101,1,138,0,'Sinaloa','SIN','SI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(102,1,138,0,'Sonora','SON','SO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(103,1,138,0,'Tabasco','TAB','TA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(104,1,138,0,'Tamaulipas','TAM','TM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(105,1,138,0,'Tlaxcala','TLX','TX',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(106,1,138,0,'Veracruz','VER','VZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(107,1,138,0,'Yucat','YUC','YU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(108,1,138,0,'Zacatecas','ZAC','ZA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(109,1,30,0,'Acre','ACR','AC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(110,1,30,0,'Alagoas','ALG','AL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(111,1,30,0,'Amapá','AMP','AP',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(112,1,30,0,'Amazonas','AMZ','AM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(113,1,30,0,'Bahía','BAH','BA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(114,1,30,0,'Ceará','CEA','CE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(115,1,30,0,'Distrito Federal','DFB','DF',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(116,1,30,0,'Espírito Santo','ESS','ES',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(117,1,30,0,'Goiás','GOI','GO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(118,1,30,0,'Maranhão','MAR','MA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(119,1,30,0,'Mato Grosso','MAT','MT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(120,1,30,0,'Mato Grosso do Sul','MGS','MS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(121,1,30,0,'Minas Gerais','MIG','MG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(122,1,30,0,'Paraná','PAR','PR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(123,1,30,0,'Paraíba','PRB','PB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(124,1,30,0,'Pará','PAB','PA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(125,1,30,0,'Pernambuco','PER','PE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(126,1,30,0,'Piauí','PIA','PI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(127,1,30,0,'Rio Grande do Norte','RGN','RN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(128,1,30,0,'Rio Grande do Sul','RGS','RS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(129,1,30,0,'Rio de Janeiro','RDJ','RJ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(130,1,30,0,'Rondônia','RON','RO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(131,1,30,0,'Roraima','ROR','RR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(132,1,30,0,'Santa Catarina','SAC','SC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(133,1,30,0,'Sergipe','SER','SE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(134,1,30,0,'São Paulo','SAP','SP',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(135,1,30,0,'Tocantins','TOC','TO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(136,1,44,0,'Anhui','ANH','34',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(137,1,44,0,'Beijing','BEI','11',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(138,1,44,0,'Chongqing','CHO','50',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(139,1,44,0,'Fujian','FUJ','35',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(140,1,44,0,'Gansu','GAN','62',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(141,1,44,0,'Guangdong','GUA','44',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(142,1,44,0,'Guangxi Zhuang','GUZ','45',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(143,1,44,0,'Guizhou','GUI','52',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(144,1,44,0,'Hainan','HAI','46',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(145,1,44,0,'Hebei','HEB','13',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(146,1,44,0,'Heilongjiang','HEI','23',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(147,1,44,0,'Henan','HEN','41',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(148,1,44,0,'Hubei','HUB','42',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(149,1,44,0,'Hunan','HUN','43',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(150,1,44,0,'Jiangsu','JIA','32',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(151,1,44,0,'Jiangxi','JIX','36',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(152,1,44,0,'Jilin','JIL','22',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(153,1,44,0,'Liaoning','LIA','21',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(154,1,44,0,'Nei Mongol','NML','15',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(155,1,44,0,'Ningxia Hui','NIH','64',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(156,1,44,0,'Qinghai','QIN','63',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(157,1,44,0,'Shandong','SNG','37',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(158,1,44,0,'Shanghai','SHH','31',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(159,1,44,0,'Shaanxi','SHX','61',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(160,1,44,0,'Sichuan','SIC','51',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(161,1,44,0,'Tianjin','TIA','12',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(162,1,44,0,'Xinjiang Uygur','XIU','65',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(163,1,44,0,'Xizang','XIZ','54',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(164,1,44,0,'Yunnan','YUN','53',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(165,1,44,0,'Zhejiang','ZHE','33',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(166,1,104,0,'Israel','ISL','IL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(167,1,104,0,'Gaza Strip','GZS','GZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(168,1,104,0,'West Bank','WBK','WB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(169,1,151,0,'St. Maarten','STM','SM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(170,1,151,0,'Bonaire','BNR','BN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(171,1,151,0,'Curacao','CUR','CR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(172,1,175,0,'Alba','ABA','AB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(173,1,175,0,'Arad','ARD','AR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(174,1,175,0,'Arges','ARG','AG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(175,1,175,0,'Bacau','BAC','BC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(176,1,175,0,'Bihor','BIH','BH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(177,1,175,0,'Bistrita-Nasaud','BIS','BN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(178,1,175,0,'Botosani','BOT','BT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(179,1,175,0,'Braila','BRL','BR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(180,1,175,0,'Brasov','BRA','BV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(181,1,175,0,'Bucuresti','BUC','B',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(182,1,175,0,'Buzau','BUZ','BZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(183,1,175,0,'Calarasi','CAL','CL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(184,1,175,0,'Caras Severin','CRS','CS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(185,1,175,0,'Cluj','CLJ','CJ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(186,1,175,0,'Constanta','CST','CT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(187,1,175,0,'Covasna','COV','CV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(188,1,175,0,'Dambovita','DAM','DB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(189,1,175,0,'Dolj','DLJ','DJ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(190,1,175,0,'Galati','GAL','GL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(191,1,175,0,'Giurgiu','GIU','GR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(192,1,175,0,'Gorj','GOR','GJ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(193,1,175,0,'Hargita','HRG','HR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(194,1,175,0,'Hunedoara','HUN','HD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(195,1,175,0,'Ialomita','IAL','IL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(196,1,175,0,'Iasi','IAS','IS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(197,1,175,0,'Ilfov','ILF','IF',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(198,1,175,0,'Maramures','MAR','MM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(199,1,175,0,'Mehedinti','MEH','MH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(200,1,175,0,'Mures','MUR','MS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(201,1,175,0,'Neamt','NEM','NT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(202,1,175,0,'Olt','OLT','OT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(203,1,175,0,'Prahova','PRA','PH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(204,1,175,0,'Salaj','SAL','SJ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(205,1,175,0,'Satu Mare','SAT','SM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(206,1,175,0,'Sibiu','SIB','SB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(207,1,175,0,'Suceava','SUC','SV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(208,1,175,0,'Teleorman','TEL','TR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(209,1,175,0,'Timis','TIM','TM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(210,1,175,0,'Tulcea','TUL','TL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(211,1,175,0,'Valcea','VAL','VL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(212,1,175,0,'Vaslui','VAS','VS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(213,1,175,0,'Vrancea','VRA','VN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(214,1,105,0,'Agrigento','AGR','AG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(215,1,105,0,'Alessandria','ALE','AL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(216,1,105,0,'Ancona','ANC','AN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(217,1,105,0,'Aosta','AOS','AO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(218,1,105,0,'Arezzo','ARE','AR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(219,1,105,0,'Ascoli Piceno','API','AP',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(220,1,105,0,'Asti','AST','AT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(221,1,105,0,'Avellino','AVE','AV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(222,1,105,0,'Bari','BAR','BA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(223,1,105,0,'Belluno','BEL','BL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(224,1,105,0,'Benevento','BEN','BN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(225,1,105,0,'Bergamo','BEG','BG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(226,1,105,0,'Biella','BIE','BI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(227,1,105,0,'Bologna','BOL','BO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(228,1,105,0,'Bolzano','BOZ','BZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(229,1,105,0,'Brescia','BRE','BS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(230,1,105,0,'Brindisi','BRI','BR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(231,1,105,0,'Cagliari','CAG','CA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(232,1,105,0,'Caltanissetta','CAL','CL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(233,1,105,0,'Campobasso','CBO','CB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(234,1,105,0,'Carbonia-Iglesias','CAR','CI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(235,1,105,0,'Caserta','CAS','CE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(236,1,105,0,'Catania','CAT','CT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(237,1,105,0,'Catanzaro','CTZ','CZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(238,1,105,0,'Chieti','CHI','CH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(239,1,105,0,'Como','COM','CO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(240,1,105,0,'Cosenza','COS','CS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(241,1,105,0,'Cremona','CRE','CR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(242,1,105,0,'Crotone','CRO','KR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(243,1,105,0,'Cuneo','CUN','CN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(244,1,105,0,'Enna','ENN','EN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(245,1,105,0,'Ferrara','FER','FE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(246,1,105,0,'Firenze','FIR','FI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(247,1,105,0,'Foggia','FOG','FG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(248,1,105,0,'Forli-Cesena','FOC','FC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(249,1,105,0,'Frosinone','FRO','FR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(250,1,105,0,'Genova','GEN','GE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(251,1,105,0,'Gorizia','GOR','GO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(252,1,105,0,'Grosseto','GRO','GR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(253,1,105,0,'Imperia','IMP','IM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(254,1,105,0,'Isernia','ISE','IS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(255,1,105,0,'L\'Aquila','AQU','AQ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(256,1,105,0,'La Spezia','LAS','SP',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(257,1,105,0,'Latina','LAT','LT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(258,1,105,0,'Lecce','LEC','LE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(259,1,105,0,'Lecco','LCC','LC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(260,1,105,0,'Livorno','LIV','LI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(261,1,105,0,'Lodi','LOD','LO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(262,1,105,0,'Lucca','LUC','LU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(263,1,105,0,'Macerata','MAC','MC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(264,1,105,0,'Mantova','MAN','MN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(265,1,105,0,'Massa-Carrara','MAS','MS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(266,1,105,0,'Matera','MAA','MT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(267,1,105,0,'Medio Campidano','MED','VS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(268,1,105,0,'Messina','MES','ME',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(269,1,105,0,'Milano','MIL','MI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(270,1,105,0,'Modena','MOD','MO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(271,1,105,0,'Napoli','NAP','NA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(272,1,105,0,'Novara','NOV','NO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(273,1,105,0,'Nuoro','NUR','NU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(274,1,105,0,'Ogliastra','OGL','OG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(275,1,105,0,'Olbia-Tempio','OLB','OT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(276,1,105,0,'Oristano','ORI','OR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(277,1,105,0,'Padova','PDA','PD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(278,1,105,0,'Palermo','PAL','PA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(279,1,105,0,'Parma','PAA','PR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(280,1,105,0,'Pavia','PAV','PV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(281,1,105,0,'Perugia','PER','PG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(282,1,105,0,'Pesaro e Urbino','PES','PU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(283,1,105,0,'Pescara','PSC','PE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(284,1,105,0,'Piacenza','PIA','PC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(285,1,105,0,'Pisa','PIS','PI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(286,1,105,0,'Pistoia','PIT','PT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(287,1,105,0,'Pordenone','POR','PN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(288,1,105,0,'Potenza','PTZ','PZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(289,1,105,0,'Prato','PRA','PO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(290,1,105,0,'Ragusa','RAG','RG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(291,1,105,0,'Ravenna','RAV','RA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(292,1,105,0,'Reggio Calabria','REG','RC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(293,1,105,0,'Reggio Emilia','REE','RE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(294,1,105,0,'Rieti','RIE','RI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(295,1,105,0,'Rimini','RIM','RN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(296,1,105,0,'Roma','ROM','RM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(297,1,105,0,'Rovigo','ROV','RO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(298,1,105,0,'Salerno','SAL','SA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(299,1,105,0,'Sassari','SAS','SS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(300,1,105,0,'Savona','SAV','SV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(301,1,105,0,'Siena','SIE','SI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(302,1,105,0,'Siracusa','SIR','SR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(303,1,105,0,'Sondrio','SOO','SO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(304,1,105,0,'Taranto','TAR','TA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(305,1,105,0,'Teramo','TER','TE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(306,1,105,0,'Terni','TRN','TR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(307,1,105,0,'Torino','TOR','TO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(308,1,105,0,'Trapani','TRA','TP',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(309,1,105,0,'Trento','TRE','TN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(310,1,105,0,'Treviso','TRV','TV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(311,1,105,0,'Trieste','TRI','TS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(312,1,105,0,'Udine','UDI','UD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(313,1,105,0,'Varese','VAR','VA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(314,1,105,0,'Venezia','VEN','VE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(315,1,105,0,'Verbano Cusio Ossola','VCO','VB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(316,1,105,0,'Vercelli','VER','VC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(317,1,105,0,'Verona','VRN','VR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(318,1,105,0,'Vibo Valenzia','VIV','VV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(319,1,105,0,'Vicenza','VII','VI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(320,1,105,0,'Viterbo','VIT','VT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(321,1,195,0,'A Coru','ACO','15',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(322,1,195,0,'Alava','ALA','01',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(323,1,195,0,'Albacete','ALB','02',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(324,1,195,0,'Alicante','ALI','03',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(325,1,195,0,'Almeria','ALM','04',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(326,1,195,0,'Asturias','AST','33',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(327,1,195,0,'Avila','AVI','05',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(328,1,195,0,'Badajoz','BAD','06',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(329,1,195,0,'Baleares','BAL','07',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(330,1,195,0,'Barcelona','BAR','08',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(331,1,195,0,'Burgos','BUR','09',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(332,1,195,0,'Caceres','CAC','10',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(333,1,195,0,'Cadiz','CAD','11',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(334,1,195,0,'Cantabria','CAN','39',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(335,1,195,0,'Castellon','CAS','12',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(336,1,195,0,'Ceuta','CEU','51',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(337,1,195,0,'Ciudad Real','CIU','13',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(338,1,195,0,'Cordoba','COR','14',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(339,1,195,0,'Cuenca','CUE','16',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(340,1,195,0,'Girona','GIR','17',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(341,1,195,0,'Granada','GRA','18',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(342,1,195,0,'Guadalajara','GUA','19',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(343,1,195,0,'Guipuzcoa','GUI','20',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(344,1,195,0,'Huelva','HUL','21',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(345,1,195,0,'Huesca','HUS','22',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(346,1,195,0,'Jaen','JAE','23',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(347,1,195,0,'La Rioja','LRI','26',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(348,1,195,0,'Las Palmas','LPA','35',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(349,1,195,0,'Leon','LEO','24',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(350,1,195,0,'Lleida','LLE','25',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(351,1,195,0,'Lugo','LUG','27',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(352,1,195,0,'Madrid','MAD','28',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(353,1,195,0,'Malaga','MAL','29',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(354,1,195,0,'Melilla','MEL','52',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(355,1,195,0,'Murcia','MUR','30',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(356,1,195,0,'Navarra','NAV','31',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(357,1,195,0,'Ourense','OUR','32',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(358,1,195,0,'Palencia','PAL','34',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(359,1,195,0,'Pontevedra','PON','36',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(360,1,195,0,'Salamanca','SAL','37',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(361,1,195,0,'Santa Cruz de Tenerife','SCT','38',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(362,1,195,0,'Segovia','SEG','40',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(363,1,195,0,'Sevilla','SEV','41',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(364,1,195,0,'Soria','SOR','42',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(365,1,195,0,'Tarragona','TAR','43',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(366,1,195,0,'Teruel','TER','44',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(367,1,195,0,'Toledo','TOL','45',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(368,1,195,0,'Valencia','VAL','46',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(369,1,195,0,'Valladolid','VLL','47',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(370,1,195,0,'Vizcaya','VIZ','48',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(371,1,195,0,'Zamora','ZAM','49',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(372,1,195,0,'Zaragoza','ZAR','50',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(373,1,10,0,'Buenos Aires','BAS','BA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(374,1,10,0,'Ciudad Autonoma De Buenos Aires','CBA','CB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(375,1,10,0,'Catamarca','CAT','CA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(376,1,10,0,'Chaco','CHO','CH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(377,1,10,0,'Chubut','CTT','CT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(378,1,10,0,'Cordoba','COD','CO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(379,1,10,0,'Corrientes','CRI','CR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(380,1,10,0,'Entre Rios','ERS','ER',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(381,1,10,0,'Formosa','FRM','FR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(382,1,10,0,'Jujuy','JUJ','JU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(383,1,10,0,'La Pampa','LPM','LP',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(384,1,10,0,'La Rioja','LRI','LR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(385,1,10,0,'Mendoza','MED','ME',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(386,1,10,0,'Misiones','MIS','MI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(387,1,10,0,'Neuquen','NQU','NQ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(388,1,10,0,'Rio Negro','RNG','RN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(389,1,10,0,'Salta','SAL','SA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(390,1,10,0,'San Juan','SJN','SJ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(391,1,10,0,'San Luis','SLU','SL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(392,1,10,0,'Santa Cruz','SCZ','SC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(393,1,10,0,'Santa Fe','SFE','SF',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(394,1,10,0,'Santiago Del Estero','SEN','SE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(395,1,10,0,'Tierra Del Fuego','TFE','TF',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(396,1,10,0,'Tucuman','TUC','TU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(397,1,11,0,'Aragatsotn','ARG','AG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(398,1,11,0,'Ararat','ARR','AR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(399,1,11,0,'Armavir','ARM','AV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(400,1,11,0,'Gegharkunik','GEG','GR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(401,1,11,0,'Kotayk','KOT','KT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(402,1,11,0,'Lori','LOR','LO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(403,1,11,0,'Shirak','SHI','SH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(404,1,11,0,'Syunik','SYU','SU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(405,1,11,0,'Tavush','TAV','TV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(406,1,11,0,'Vayots-Dzor','VAD','VD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(407,1,11,0,'Yerevan','YER','ER',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(408,1,99,0,'Andaman & Nicobar Islands','ANI','AI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(409,1,99,0,'Andhra Pradesh','AND','AN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(410,1,99,0,'Arunachal Pradesh','ARU','AR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(411,1,99,0,'Assam','ASS','AS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(412,1,99,0,'Bihar','BIH','BI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(413,1,99,0,'Chandigarh','CHA','CA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(414,1,99,0,'Chhatisgarh','CHH','CH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(415,1,99,0,'Dadra & Nagar Haveli','DAD','DD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(416,1,99,0,'Daman & Diu','DAM','DA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(417,1,99,0,'Delhi','DEL','DE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(418,1,99,0,'Goa','GOA','GO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(419,1,99,0,'Gujarat','GUJ','GU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(420,1,99,0,'Haryana','HAR','HA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(421,1,99,0,'Himachal Pradesh','HIM','HI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(422,1,99,0,'Jammu & Kashmir','JAM','JA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(423,1,99,0,'Jharkhand','JHA','JH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(424,1,99,0,'Karnataka','KAR','KA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(425,1,99,0,'Kerala','KER','KE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(426,1,99,0,'Lakshadweep','LAK','LA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(427,1,99,0,'Madhya Pradesh','MAD','MD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(428,1,99,0,'Maharashtra','MAH','MH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(429,1,99,0,'Manipur','MAN','MN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(430,1,99,0,'Meghalaya','MEG','ME',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(431,1,99,0,'Mizoram','MIZ','MI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(432,1,99,0,'Nagaland','NAG','NA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(433,1,99,0,'Orissa','ORI','OR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(434,1,99,0,'Pondicherry','PON','PO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(435,1,99,0,'Punjab','PUN','PU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(436,1,99,0,'Rajasthan','RAJ','RA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(437,1,99,0,'Sikkim','SIK','SI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(438,1,99,0,'Tamil Nadu','TAM','TA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(439,1,99,0,'Tripura','TRI','TR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(440,1,99,0,'Uttaranchal','UAR','UA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(441,1,99,0,'Uttar Pradesh','UTT','UT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(442,1,99,0,'West Bengal','WES','WE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(443,1,101,0,'Ahmadi va Kohkiluyeh','BOK','BO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(444,1,101,0,'Ardabil','ARD','AR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(445,1,101,0,'Azarbayjan-e Gharbi','AZG','AG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(446,1,101,0,'Azarbayjan-e Sharqi','AZS','AS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(447,1,101,0,'Bushehr','BUS','BU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(448,1,101,0,'Chaharmahal va Bakhtiari','CMB','CM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(449,1,101,0,'Esfahan','ESF','ES',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(450,1,101,0,'Fars','FAR','FA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(451,1,101,0,'Gilan','GIL','GI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(452,1,101,0,'Gorgan','GOR','GO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(453,1,101,0,'Hamadan','HAM','HA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(454,1,101,0,'Hormozgan','HOR','HO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(455,1,101,0,'Ilam','ILA','IL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(456,1,101,0,'Kerman','KER','KE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(457,1,101,0,'Kermanshah','BAK','BA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(458,1,101,0,'Khorasan-e Junoubi','KHJ','KJ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(459,1,101,0,'Khorasan-e Razavi','KHR','KR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(460,1,101,0,'Khorasan-e Shomali','KHS','KS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(461,1,101,0,'Khuzestan','KHU','KH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(462,1,101,0,'Kordestan','KOR','KO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(463,1,101,0,'Lorestan','LOR','LO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(464,1,101,0,'Markazi','MAR','MR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(465,1,101,0,'Mazandaran','MAZ','MZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(466,1,101,0,'Qazvin','QAS','QA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(467,1,101,0,'Qom','QOM','QO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(468,1,101,0,'Semnan','SEM','SE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(469,1,101,0,'Sistan va Baluchestan','SBA','SB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(470,1,101,0,'Tehran','TEH','TE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(471,1,101,0,'Yazd','YAZ','YA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(472,1,101,0,'Zanjan','ZAN','ZA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(535,1,84,0,'ΛΕΥΚΑΔΑΣ','ΛΕΥ','ΛΕ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(532,1,84,0,'ΛΑΡΙΣΑΣ','ΛΑΡ','ΛΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(504,1,84,0,'ΑΡΚΑΔΙΑΣ','ΑΡΚ','ΑΚ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(503,1,84,0,'ΑΡΓΟΛΙΔΑΣ','ΑΡΓ','ΑΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(533,1,84,0,'ΛΑΣΙΘΙΟΥ','ΛΑΣ','ΛΑ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(534,1,84,0,'ΛΕΣΒΟΥ','ΛΕΣ','ΛΣ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(530,1,84,0,'ΚΥΚΛΑΔΩΝ','ΚΥΚ','ΚΥ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(553,1,84,0,'ΑΙΤΩΛΟΑΚΑΡΝΑΝΙΑΣ','ΑΙΤ','ΑΙ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(529,1,84,0,'ΚΟΡΙΝΘΙΑΣ','ΚΟΡ','ΚΟ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(531,1,84,0,'ΛΑΚΩΝΙΑΣ','ΛΑΚ','ΛK',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(517,1,84,0,'ΗΜΑΘΙΑΣ','ΗΜΑ','ΗΜ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(518,1,84,0,'ΗΡΑΚΛΕΙΟΥ','ΗΡΑ','ΗΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(519,1,84,0,'ΘΕΣΠΡΩΤΙΑΣ','ΘΕΠ','ΘΠ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(520,1,84,0,'ΘΕΣΣΑΛΟΝΙΚΗΣ','ΘΕΣ','ΘΕ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(521,1,84,0,'ΙΩΑΝΝΙΝΩΝ','ΙΩΑ','ΙΩ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(522,1,84,0,'ΚΑΒΑΛΑΣ','ΚΑΒ','ΚΒ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(523,1,84,0,'ΚΑΡΔΙΤΣΑΣ','ΚΑΡ','ΚΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(524,1,84,0,'ΚΑΣΤΟΡΙΑΣ','ΚΑΣ','ΚΣ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(525,1,84,0,'ΚΕΡΚΥΡΑΣ','ΚΕΡ','ΚΕ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(526,1,84,0,'ΚΕΦΑΛΛΗΝΙΑΣ','ΚΕΦ','ΚΦ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(527,1,84,0,'ΚΙΛΚΙΣ','ΚΙΛ','ΚΙ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(528,1,84,0,'ΚΟΖΑΝΗΣ','ΚΟΖ','ΚZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(507,1,84,0,'ΑΧΑΪΑΣ','ΑΧΑ','ΑΧ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(508,1,84,0,'ΒΟΙΩΤΙΑΣ','ΒΟΙ','ΒΟ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(509,1,84,0,'ΓΡΕΒΕΝΩΝ','ΓΡΕ','ΓΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(510,1,84,0,'ΔΡΑΜΑΣ','ΔΡΑ','ΔΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(511,1,84,0,'ΔΩΔΕΚΑΝΗΣΟΥ','ΔΩΔ','ΔΩ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(512,1,84,0,'ΕΒΡΟΥ','ΕΒΡ','ΕΒ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(513,1,84,0,'ΕΥΒΟΙΑΣ','ΕΥΒ','ΕΥ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(514,1,84,0,'ΕΥΡΥΤΑΝΙΑΣ','ΕΥΡ','ΕΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(515,1,84,0,'ΖΑΚΥΝΘΟΥ','ΖΑΚ','ΖΑ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(516,1,84,0,'ΗΛΕΙΑΣ','ΗΛΕ','ΗΛ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(505,1,84,0,'ΑΡΤΑΣ','ΑΡΤ','ΑΑ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(506,1,84,0,'ΑΤΤΙΚΗΣ','ΑΤΤ','ΑΤ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(536,1,84,0,'ΜΑΓΝΗΣΙΑΣ','ΜΑΓ','ΜΑ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(537,1,84,0,'ΜΕΣΣΗΝΙΑΣ','ΜΕΣ','ΜΕ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(538,1,84,0,'ΞΑΝΘΗΣ','ΞΑΝ','ΞΑ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(539,1,84,0,'ΠΕΛΛΗΣ','ΠΕΛ','ΠΕ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(540,1,84,0,'ΠΙΕΡΙΑΣ','ΠΙΕ','ΠΙ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(541,1,84,0,'ΠΡΕΒΕΖΑΣ','ΠΡΕ','ΠΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(542,1,84,0,'ΡΕΘΥΜΝΗΣ','ΡΕΘ','ΡΕ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(543,1,84,0,'ΡΟΔΟΠΗΣ','ΡΟΔ','ΡΟ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(544,1,84,0,'ΣΑΜΟΥ','ΣΑΜ','ΣΑ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(545,1,84,0,'ΣΕΡΡΩΝ','ΣΕΡ','ΣΕ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(546,1,84,0,'ΤΡΙΚΑΛΩΝ','ΤΡΙ','ΤΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(547,1,84,0,'ΦΘΙΩΤΙΔΑΣ','ΦΘΙ','ΦΘ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(548,1,84,0,'ΦΛΩΡΙΝΑΣ','ΦΛΩ','ΦΛ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(549,1,84,0,'ΦΩΚΙΔΑΣ','ΦΩΚ','ΦΩ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(550,1,84,0,'ΧΑΛΚΙΔΙΚΗΣ','ΧΑΛ','ΧΑ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(551,1,84,0,'ΧΑΝΙΩΝ','ΧΑΝ','ΧΝ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(552,1,84,0,'ΧΙΟΥ','ΧΙΟ','ΧΙ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(569,1,81,0,'Schleswig-Holstein','SHO','SH',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(554,1,81,0,'Freie und Hansestadt Hamburg','HAM','HH',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(555,1,81,0,'Niedersachsen','NIS','NI',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(556,1,81,0,'Freie Hansestadt Bremen','HBR','HB',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(557,1,81,0,'Nordrhein-Westfalen','NRW','NW',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(558,1,81,0,'Hessen','HES','HE',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(559,1,81,0,'Rheinland-Pfalz','RLP','RP',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(560,1,81,0,'Baden-Württemberg','BWÜ','BW',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(561,1,81,0,'Freistaat Bayern','BAV','BY',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(562,1,81,0,'Saarland','SLA','SL',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(563,1,81,0,'Berlin','BER','BE',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(564,1,81,0,'Brandenburg','BRB','BB',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(565,1,81,0,'Mecklenburg-Vorpommern','MVO','MV',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(566,1,81,0,'Freistaat Sachsen','SAC','SN',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(567,1,81,0,'Sachsen-Anhalt','SAA','ST',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(568,1,81,0,'Freistaat Thüringen','THÜ','TH',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(570,1,176,0,'Адыгея Республика','AD','01',1,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(571,1,176,0,'Алтай Республика','AL','04',2,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(572,1,176,0,'Алтайский край','ALT','22',3,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(573,1,176,0,'Амурская область','AMU','28',4,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(574,1,176,0,'Архангельская область','ARK','29',5,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(575,1,176,0,'Астраханская область','AST','30',6,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(576,1,176,0,'Башкортостан Республика','BA','02',7,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(577,1,176,0,'Белгородская область','BEL','31',8,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(578,1,176,0,'Брянская область','BRY','32',9,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(579,1,176,0,'Бурятия Республика','BU','03',10,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(580,1,176,0,'Владимирская область','VLA','33',11,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(581,1,176,0,'Волгоградская область','VGG','34',12,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(582,1,176,0,'Вологодская область','VLG','35',13,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(583,1,176,0,'Воронежская область','VOR','36',14,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(584,1,176,0,'Дагестан Республика','DA','05',15,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(585,1,176,0,'Еврейская автономная область','YEV','79',16,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(586,1,176,0,'Забайкальский край','ZAB','75',17,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(587,1,176,0,'Ивановская область','IVA','37',18,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(588,1,176,0,'Ингушетия Республика','IN','06',19,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(589,1,176,0,'Иркутская область','IRK','38',20,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(590,1,176,0,'Кабардино-Балкарская Республика','KB','07',21,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(591,1,176,0,'Калининградская область','KGD','39',22,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(592,1,176,0,'Калмыкия Республика','KL','08',23,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(593,1,176,0,'Калужская область','KLU','40',24,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(594,1,176,0,'Камчатский край','KAM','41',25,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(595,1,176,0,'Карачаево-Черкесская Республика','KC','09',26,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(596,1,176,0,'Карелия Республика','KR','10',27,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(597,1,176,0,'Кемеровская область','KEM','42',28,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(598,1,176,0,'Кировская область','KIR','43',29,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(599,1,176,0,'Коми Республика','KO','11',30,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(600,1,176,0,'Костромская область','KOS','44',31,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(601,1,176,0,'Краснодарский край','KDA','23',32,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(602,1,176,0,'Красноярский край','KIA','24',33,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(603,1,176,0,'Курганская область','KGN','45',34,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(604,1,176,0,'Курская область','KRS','46',35,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(605,1,176,0,'Ленинградская область','LEN','47',36,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(606,1,176,0,'Липецкая область','LIP','48',37,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(607,1,176,0,'Магаданская область','MAG','49',38,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(608,1,176,0,'Марий Эл Республика','ME','12',39,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(609,1,176,0,'Мордовия Республика','MO','13',40,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(610,1,176,0,'Москва','MOW','77',41,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(611,1,176,0,'Московская область','MOS','50',42,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(612,1,176,0,'Мурманская область','MUR','51',43,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(613,1,176,0,'Ненецкий автономный округ','NEN','83',44,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(614,1,176,0,'Нижегородская область','NIZ','52',45,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(615,1,176,0,'Новгородская область','NGR','53',46,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(616,1,176,0,'Новосибирская область','NVS','54',47,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(617,1,176,0,'Омская область','OMS','55',48,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(618,1,176,0,'Оренбургская область','ORE','56',49,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(619,1,176,0,'Орловская область','ORL','57',50,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(620,1,176,0,'Пензенская область','PNZ','58',51,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(621,1,176,0,'Пермский край','PER','59',52,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(622,1,176,0,'Приморский край','PRI','25',53,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(623,1,176,0,'Псковская область','PSK','60',54,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(624,1,176,0,'Ростовская область','ROS','61',55,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(625,1,176,0,'Рязанская область','RYA','62',56,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(626,1,176,0,'Самарская область','SAM','63',57,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(627,1,176,0,'Санкт-Петербург','SPE','78',58,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(628,1,176,0,'Саратовская область','SAR','64',59,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(629,1,176,0,'Саха (Якутия) Республика','SA','14',60,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(630,1,176,0,'Сахалинская область','SAK','65',61,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(631,1,176,0,'Свердловская область','SVE','66',62,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(632,1,176,0,'Северная Осетия-Алания Республика','SE','15',63,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(633,1,176,0,'Смоленская область','SMO','67',64,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(634,1,176,0,'Ставропольский край','STA','26',65,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(635,1,176,0,'Тамбовская область','TAM','68',66,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(636,1,176,0,'Татарстан Республика','TA','16',67,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(637,1,176,0,'Тверская область','TVE','69',68,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(638,1,176,0,'Томская область','TOM','70',69,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(639,1,176,0,'Тульская область','TUL','71',70,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(640,1,176,0,'Тыва Республика','TY','17',71,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(641,1,176,0,'Тюменская область','TYU','72',72,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(642,1,176,0,'Удмуртская Республика','UD','18',73,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(643,1,176,0,'Ульяновская область','ULY','73',74,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(644,1,176,0,'Хакасия Республика','KK','19',75,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(645,1,176,0,'Челябинская область','CHE','74',76,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(646,1,176,0,'Чеченская Республика','CE','20',77,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(647,1,176,0,'Чувашская Республика','CU','21',78,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(648,1,176,0,'Чукотский автономный округ','CHU','87',79,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(649,1,176,0,'Хабаровский край','KHA','27',80,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(650,1,176,0,'Ханты-Мансийский автономный округ','KHM','86',81,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(651,1,176,0,'Ямало-Ненецкий автономный округ','YAN','89',82,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(652,1,176,0,'Ярославская область','YAR','76',83,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(653,1,209,0,'กระบี่','กบ','กบ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(654,1,209,0,'กรุงเทพมหานคร','กทม','กท',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(655,1,209,0,'กาญจนบุรี','กจ','กจ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(656,1,209,0,'กาฬสินธุ์','กส','กส',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(657,1,209,0,'กำแพงเพชร','กพ','กพ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(658,1,209,0,'ขอนแก่น','ขก','ขก',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(659,1,209,0,'จันทบุรี','จบ','จบ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(660,1,209,0,'ฉะเชิงเทรา','ฉช','ฉช',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(661,1,209,0,'ชลบุรี','ชบ','ชบ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(662,1,209,0,'ชัยนาท','ชน','ชน',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(663,1,209,0,'ชัยภูมิ','ชย','ชย',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(664,1,209,0,'ชุมพร','ชพ','ชพ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(665,1,209,0,'เชียงราย','ชร','ชร',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(666,1,209,0,'เชียงใหม่','ชม','ชม',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(667,1,209,0,'ตรัง','ตง','ตง',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(668,1,209,0,'ตราด','ตร','ตร',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(669,1,209,0,'ตาก','ตก','ตก',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(670,1,209,0,'นครนายก','นย','นย',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(671,1,209,0,'นครปฐม','นฐ','นฐ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(672,1,209,0,'นครพนม','นพ','นพ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(673,1,209,0,'นครราชสีมา','นม','นม',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(674,1,209,0,'นครศรีธรรมราช','นศ','นศ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(675,1,209,0,'นครสวรรค์','นว','นว',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(676,1,209,0,'นนทบุรี','นบ','นบ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(677,1,209,0,'นราธิวาส','นธ','นธ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(678,1,209,0,'น่าน','นน','นน',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(679,1,209,0,'บุรีรัมย์','บร','บร',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(680,1,209,0,'บึงกาฬ','บก','บก',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(681,1,209,0,'ปทุมธานี','ปท','ปท',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(682,1,209,0,'ประจวบคีรีขันธ์','ปข','ปข',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(683,1,209,0,'ปราจีนบุรี','ปจ','ปจ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(684,1,209,0,'ปัตตานี','ปน','ปน',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(685,1,209,0,'พระนครศรีอยุธยา','อย','อย',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(686,1,209,0,'พังงา','พง','พง',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(687,1,209,0,'พัทลุง','พท','พท',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(688,1,209,0,'พิจิตร','พจ','พจ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(689,1,209,0,'พิษณุโลก','พล','พล',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(690,1,209,0,'เพชรบุรี','พบ','พบ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(691,1,209,0,'เพชรบูรณ์','พช','พช',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(692,1,209,0,'แพร่','พร','พร',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(693,1,209,0,'พะเยา','พย','พย',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(694,1,209,0,'ภูเก็ต','ภก','ภก',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(695,1,209,0,'มหาสารคาม','มค','มค',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(696,1,209,0,'แม่ฮ่องสอน','มส','มส',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(697,1,209,0,'มุกดาหาร','มห','มห',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(698,1,209,0,'ยะลา','ยล','ยล',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(699,1,209,0,'ยโสธร','ยส','ยส',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(700,1,209,0,'ร้อยเอ็ด','รอ','รอ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(701,1,209,0,'ระนอง','รน','รน',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(702,1,209,0,'ระยอง','รย','รย',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(703,1,209,0,'ราชบุรี','รบ','รบ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(704,1,209,0,'ลพบุรี','ลบ','ลบ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(705,1,209,0,'ลำปาง','ลป','ลป',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(706,1,209,0,'ลำพูน','ลพ','ลพ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(707,1,209,0,'เลย','ลย','ลย',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(708,1,209,0,'ศรีสะเกษ','ศก','ศก',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(709,1,209,0,'สกลนคร','สน','สน',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(710,1,209,0,'สงขลา','สข','สข',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(711,1,209,0,'สตูล','สต','สต',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(712,1,209,0,'สมุทรปราการ','สป','สป',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(713,1,209,0,'สมุทรสงคราม','สส','สส',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(714,1,209,0,'สมุทรสาคร','สค','สค',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(715,1,209,0,'สระบุรี','สบ','สบ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(716,1,209,0,'สระแก้ว','สก','สก',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(717,1,209,0,'สิงห์บุรี','สห','สห',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(718,1,209,0,'สุโขทัย','สท','สท',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(719,1,209,0,'สุพรรณบุรี','สพ','สพ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(720,1,209,0,'สุราษฎร์ธานี','สฎ','สฎ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(721,1,209,0,'สุรินทร์','สร','สร',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(722,1,209,0,'หนองคาย','นค','นค',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(723,1,209,0,'หนองบัวลำภู','นภ','นภ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(724,1,209,0,'อ่างทอง','อท','อท',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(725,1,209,0,'อุดรธานี','อด','อด',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(726,1,209,0,'อุตรดิตถ์','อต','อต',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(727,1,209,0,'อุทัยธานี','อน','อน',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(728,1,209,0,'อุบลราชธานี','อบ','อบ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(729,1,209,0,'อำนาจเจริญ','อจ','อจ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);

/*!40000 ALTER TABLE `pz5yp_virtuemart_states` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_userfield_values
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_userfield_values`;

CREATE TABLE `pz5yp_virtuemart_userfield_values` (
  `virtuemart_userfield_value_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_userfield_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `fieldtitle` char(255) NOT NULL DEFAULT '',
  `fieldvalue` char(255) NOT NULL DEFAULT '',
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_userfield_value_id`),
  KEY `virtuemart_userfield_id` (`virtuemart_userfield_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Holds the different values for dropdown and radio lists';

LOCK TABLES `pz5yp_virtuemart_userfield_values` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_userfield_values` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_userfield_values` (`virtuemart_userfield_value_id`, `virtuemart_userfield_id`, `fieldtitle`, `fieldvalue`, `sys`, `ordering`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`)
VALUES
	(1,10,'COM_VIRTUEMART_SHOPPER_TITLE_MR','Mr',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(2,10,'COM_VIRTUEMART_SHOPPER_TITLE_MRS','Mrs',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(3,26,'None','',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(4,26,'Non-resident (Canada)','R',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(5,26,'Federal government (United States)','A',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(6,26,'State government (United States)','B',0,2,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(7,26,'Tribe / Status Indian / Indian Band (both)','C',0,3,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(8,26,'Foreign diplomat (both)','D',0,4,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(9,26,'Charitable or benevolent org (both)','E',0,5,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(10,26,'Religious or educational org (both)','F',0,6,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(11,26,'Resale (both)','G',0,7,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(12,26,'Commercial agricultural production (both)','H',0,8,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(13,26,'Industrial production / manufacturer (both)','I',0,9,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(14,26,'Direct pay permit (United States)','J',0,10,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(15,26,'Direct mail (United States)','K',0,11,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(16,26,'Other (both)','L',0,12,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(17,26,'Local government (United States)','N',0,13,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(18,26,'Commercial aquaculture (Canada)','P',0,14,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(19,26,'Commercial Fishery (Canada)','Q',0,15,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);

/*!40000 ALTER TABLE `pz5yp_virtuemart_userfield_values` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_userfields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_userfields`;

CREATE TABLE `pz5yp_virtuemart_userfields` (
  `virtuemart_userfield_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `userfield_jplugin_id` int(1) NOT NULL DEFAULT '0',
  `name` char(255) NOT NULL DEFAULT '',
  `title` char(255) NOT NULL DEFAULT '',
  `description` varchar(2048) DEFAULT NULL,
  `type` char(70) NOT NULL DEFAULT '',
  `maxlength` int(1) DEFAULT NULL,
  `size` int(1) DEFAULT NULL,
  `required` tinyint(4) NOT NULL DEFAULT '0',
  `cols` int(1) DEFAULT NULL,
  `rows` int(1) DEFAULT NULL,
  `value` char(255) DEFAULT NULL,
  `default` char(255) DEFAULT NULL,
  `registration` tinyint(1) NOT NULL DEFAULT '0',
  `shipment` tinyint(1) NOT NULL DEFAULT '0',
  `account` tinyint(1) NOT NULL DEFAULT '1',
  `cart` tinyint(1) NOT NULL DEFAULT '0',
  `readonly` tinyint(1) NOT NULL DEFAULT '0',
  `calculated` tinyint(1) NOT NULL DEFAULT '0',
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  `userfield_params` varchar(17000) NOT NULL DEFAULT '',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_userfield_id`),
  UNIQUE KEY `name` (`name`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `ordering` (`ordering`),
  KEY `shared` (`shared`),
  KEY `published` (`published`),
  KEY `account` (`account`),
  KEY `shipment` (`shipment`),
  KEY `cart` (`cart`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Holds the fields for the user information';

LOCK TABLES `pz5yp_virtuemart_userfields` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_userfields` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_userfields` (`virtuemart_userfield_id`, `virtuemart_vendor_id`, `userfield_jplugin_id`, `name`, `title`, `description`, `type`, `maxlength`, `size`, `required`, `cols`, `rows`, `value`, `default`, `registration`, `shipment`, `account`, `cart`, `readonly`, `calculated`, `sys`, `userfield_params`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`)
VALUES
	(1,0,0,'email','COM_VIRTUEMART_REGISTER_EMAIL','','emailaddress',100,30,1,NULL,NULL,NULL,NULL,1,0,1,0,0,0,1,'',4,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(2,0,0,'password','COM_VIRTUEMART_SHOPPER_FORM_PASSWORD_1','','password',25,30,1,NULL,NULL,NULL,NULL,1,0,1,0,0,0,1,'',10,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(3,0,0,'password2','COM_VIRTUEMART_SHOPPER_FORM_PASSWORD_2','','password',25,30,1,NULL,NULL,NULL,NULL,1,0,1,0,0,0,1,'',12,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(4,1,0,'agreed','COM_VIRTUEMART_I_AGREE_TO_TOS','','checkbox',NULL,NULL,1,NULL,NULL,NULL,NULL,1,0,1,0,0,0,1,'',13,0,0,'2015-10-24 02:25:00',254,'2015-10-24 02:25:00',254,'0000-00-00 00:00:00',0),
	(5,0,0,'name','COM_VIRTUEMART_USER_DISPLAYED_NAME','','text',25,30,1,0,0,'',NULL,1,0,1,0,0,0,1,'',8,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(6,0,0,'username','COM_VIRTUEMART_USERNAME','','text',25,30,1,0,0,'',NULL,1,0,1,0,0,0,1,'',6,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(7,0,0,'address_type_name','COM_VIRTUEMART_USER_FORM_ADDRESS_LABEL','','text',32,30,1,NULL,NULL,NULL,'Shipment',0,1,0,0,0,0,1,'',16,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(8,0,0,'delimiter_billto','COM_VIRTUEMART_USER_FORM_BILLTO_LBL','','delimiter',25,30,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,0,'',18,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(9,0,0,'company','COM_VIRTUEMART_SHOPPER_FORM_COMPANY_NAME','','text',64,30,0,NULL,NULL,NULL,NULL,1,1,1,0,0,0,1,'',20,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(10,0,0,'title','COM_VIRTUEMART_SHOPPER_FORM_TITLE','','select',0,210,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,1,'',22,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(11,0,0,'first_name','COM_VIRTUEMART_SHOPPER_FORM_FIRST_NAME','','text',32,30,1,NULL,NULL,NULL,NULL,1,1,1,0,0,0,1,'',24,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(12,0,0,'middle_name','COM_VIRTUEMART_SHOPPER_FORM_MIDDLE_NAME','','text',32,30,0,NULL,NULL,NULL,NULL,1,1,1,0,0,0,1,'',26,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(13,0,0,'last_name','COM_VIRTUEMART_SHOPPER_FORM_LAST_NAME','','text',32,30,1,NULL,NULL,NULL,NULL,1,1,1,0,0,0,1,'',28,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(14,0,0,'address_1','COM_VIRTUEMART_SHOPPER_FORM_ADDRESS_1','','text',64,30,1,NULL,NULL,NULL,NULL,1,1,1,0,0,0,1,'',30,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(15,0,0,'address_2','COM_VIRTUEMART_SHOPPER_FORM_ADDRESS_2','','text',64,30,0,NULL,NULL,NULL,NULL,1,1,1,0,0,0,1,'',32,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(16,0,0,'zip','COM_VIRTUEMART_SHOPPER_FORM_ZIP','','text',32,30,1,NULL,NULL,NULL,NULL,1,1,1,0,0,0,1,'',34,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(17,0,0,'city','COM_VIRTUEMART_SHOPPER_FORM_CITY','','text',32,30,1,NULL,NULL,NULL,NULL,1,1,1,0,0,0,1,'',36,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(18,0,0,'virtuemart_country_id','COM_VIRTUEMART_SHOPPER_FORM_COUNTRY','','select',0,210,1,NULL,NULL,NULL,NULL,1,1,1,0,0,0,1,'',38,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(19,0,0,'virtuemart_state_id','COM_VIRTUEMART_SHOPPER_FORM_STATE','','select',0,210,1,NULL,NULL,NULL,NULL,1,1,1,0,0,0,1,'',40,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(20,0,0,'phone_1','COM_VIRTUEMART_SHOPPER_FORM_PHONE','','text',32,30,0,NULL,NULL,NULL,NULL,1,1,1,0,0,0,1,'',42,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(21,0,0,'phone_2','COM_VIRTUEMART_SHOPPER_FORM_PHONE2','','text',32,30,0,NULL,NULL,NULL,NULL,1,1,1,0,0,0,1,'',44,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(22,0,0,'fax','COM_VIRTUEMART_SHOPPER_FORM_FAX','','text',32,30,0,NULL,NULL,NULL,NULL,1,1,1,0,0,0,1,'',46,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(23,0,0,'delimiter_sendregistration','COM_VIRTUEMART_BUTTON_SEND_REG','','delimiter',25,30,0,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,'',2,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(24,0,0,'delimiter_userinfo','COM_VIRTUEMART_ORDER_PRINT_CUST_INFO_LBL','','delimiter',NULL,NULL,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,0,'',14,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(25,1,0,'tax_exemption_number','COM_VIRTUEMART_SHOPPER_FORM_TAXEXEMPTION_NBR','Vendors can set here a tax exemption number for a shopper. This field is only changeable by administrators.','text',10,0,0,0,0,NULL,NULL,0,0,1,0,1,0,0,'',48,0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(26,1,0,'tax_usage_type','COM_VIRTUEMART_SHOPPER_FORM_TAX_USAGE','Federal, national, educational, public, or similar often get a special tax. This field is only writable by administrators.','select',0,0,0,0,0,NULL,NULL,0,0,1,0,1,0,0,'',50,0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),
	(27,1,0,'customer_note','COM_VIRTUEMART_CNOTES_CART','','textarea',2500,NULL,0,60,1,NULL,'',0,0,0,1,0,0,0,'',51,0,1,'2015-10-24 02:25:00',254,'2015-10-24 02:25:00',254,'0000-00-00 00:00:00',0),
	(28,1,0,'tos','COM_VIRTUEMART_STORE_FORM_TOS','','custom',NULL,NULL,1,NULL,NULL,NULL,NULL,0,0,0,1,0,0,0,'',52,0,1,'2015-10-24 02:25:00',254,'2015-10-24 02:25:00',254,'0000-00-00 00:00:00',0);

/*!40000 ALTER TABLE `pz5yp_virtuemart_userfields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_userinfos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_userinfos`;

CREATE TABLE `pz5yp_virtuemart_userinfos` (
  `virtuemart_userinfo_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `address_type` char(2) NOT NULL DEFAULT '',
  `address_type_name` char(32) NOT NULL DEFAULT '',
  `name` char(64) DEFAULT NULL,
  `company` char(64) DEFAULT NULL,
  `title` char(32) DEFAULT NULL,
  `last_name` char(48) DEFAULT NULL,
  `first_name` char(48) DEFAULT NULL,
  `middle_name` char(48) DEFAULT NULL,
  `phone_1` char(32) DEFAULT NULL,
  `phone_2` char(32) DEFAULT NULL,
  `fax` char(32) DEFAULT NULL,
  `address_1` char(64) NOT NULL DEFAULT '',
  `address_2` char(64) DEFAULT NULL,
  `city` char(64) NOT NULL DEFAULT '',
  `virtuemart_state_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_country_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `zip` char(32) NOT NULL DEFAULT '',
  `agreed` tinyint(4) DEFAULT NULL,
  `tos` varchar(255) DEFAULT NULL,
  `customer_note` mediumtext,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_userinfo_id`),
  KEY `i_virtuemart_user_id` (`virtuemart_userinfo_id`,`virtuemart_user_id`),
  KEY `virtuemart_user_id` (`virtuemart_user_id`,`address_type`),
  KEY `address_type` (`address_type`),
  KEY `address_type_name` (`address_type_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Information, BT = BillTo and ST = ShipTo';

LOCK TABLES `pz5yp_virtuemart_userinfos` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_userinfos` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_userinfos` (`virtuemart_userinfo_id`, `virtuemart_user_id`, `address_type`, `address_type_name`, `name`, `company`, `title`, `last_name`, `first_name`, `middle_name`, `phone_1`, `phone_2`, `fax`, `address_1`, `address_2`, `city`, `virtuemart_state_id`, `virtuemart_country_id`, `zip`, `agreed`, `tos`, `customer_note`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`)
VALUES
	(1,254,'BT','','Super User','Sample Company','Mr','John','Doe','','555-555-555','','','PO Box 123','','Seattle',48,223,'98101',0,'0','','2014-10-17 02:58:39',254,'2014-10-17 02:58:39',254,'0000-00-00 00:00:00',0);

/*!40000 ALTER TABLE `pz5yp_virtuemart_userinfos` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_vendor_medias
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_vendor_medias`;

CREATE TABLE `pz5yp_virtuemart_vendor_medias` (
  `id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`,`virtuemart_media_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_virtuemart_vendor_medias` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_vendor_medias` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_vendor_medias` (`id`, `virtuemart_vendor_id`, `virtuemart_media_id`, `ordering`)
VALUES
	(1,1,1,1);

/*!40000 ALTER TABLE `pz5yp_virtuemart_vendor_medias` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_vendor_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_vendor_users`;

CREATE TABLE `pz5yp_virtuemart_vendor_users` (
  `id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`,`virtuemart_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table pz5yp_virtuemart_vendors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_vendors`;

CREATE TABLE `pz5yp_virtuemart_vendors` (
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `vendor_name` char(64) DEFAULT NULL,
  `vendor_currency` int(1) DEFAULT NULL,
  `vendor_accepted_currencies` varchar(1536) NOT NULL DEFAULT '',
  `vendor_params` varchar(17000) NOT NULL DEFAULT '',
  `metarobot` char(20) DEFAULT NULL,
  `metaauthor` char(64) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_vendor_id`),
  KEY `vendor_name` (`vendor_name`),
  KEY `vendor_currency` (`vendor_currency`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Vendors manage their products in your store';

LOCK TABLES `pz5yp_virtuemart_vendors` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_vendors` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_vendors` (`virtuemart_vendor_id`, `vendor_name`, `vendor_currency`, `vendor_accepted_currencies`, `vendor_params`, `metarobot`, `metaauthor`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`)
VALUES
	(1,'Sample Company',47,'52,26,47,144','vendor_min_pov=0|vendor_min_poq=1|vendor_freeshipment=0|vendor_address_format=\"\"|vendor_date_format=\"\"|vendor_letter_format=\"A4\"|vendor_letter_orientation=\"P\"|vendor_letter_margin_top=45|vendor_letter_margin_left=25|vendor_letter_margin_right=25|vendor_letter_margin_bottom=25|vendor_letter_margin_header=12|vendor_letter_margin_footer=20|vendor_letter_font=\"helvetica\"|vendor_letter_font_size=8|vendor_letter_header_font_size=7|vendor_letter_footer_font_size=6|vendor_letter_header=1|vendor_letter_header_line=1|vendor_letter_header_line_color=\"#000000\"|vendor_letter_header_image=\"1\"|vendor_letter_header_imagesize=60|vendor_letter_header_cell_height_ratio=1|vendor_letter_footer=1|vendor_letter_footer_line=1|vendor_letter_footer_line_color=\"#000000\"|vendor_letter_footer_cell_height_ratio=1|vendor_letter_add_tos=0|vendor_letter_add_tos_newpage=1|','','','0000-00-00 00:00:00',0,'2014-10-17 02:58:39',254,'0000-00-00 00:00:00',0);

/*!40000 ALTER TABLE `pz5yp_virtuemart_vendors` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_vendors_en_gb
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_vendors_en_gb`;

CREATE TABLE `pz5yp_virtuemart_vendors_en_gb` (
  `virtuemart_vendor_id` int(1) unsigned NOT NULL,
  `vendor_store_desc` text NOT NULL,
  `vendor_terms_of_service` text NOT NULL,
  `vendor_legal_info` text NOT NULL,
  `vendor_letter_css` text NOT NULL,
  `vendor_letter_header_html` varchar(8000) NOT NULL DEFAULT '<h1>{vm:vendorname}</h1><p>{vm:vendoraddress}</p>',
  `vendor_letter_footer_html` varchar(8000) NOT NULL DEFAULT '<p>{vm:vendorlegalinfo}<br />Page {vm:pagenum}/{vm:pagecount}</p>',
  `vendor_store_name` char(180) NOT NULL DEFAULT '',
  `vendor_phone` char(26) NOT NULL DEFAULT '',
  `vendor_url` char(255) NOT NULL DEFAULT '',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` char(255) NOT NULL DEFAULT '',
  `vendor_invoice_free1` char(255) NOT NULL DEFAULT '',
  `vendor_invoice_free2` char(255) NOT NULL DEFAULT '',
  `vendor_mail_free1` char(255) NOT NULL DEFAULT '',
  `vendor_mail_free2` char(255) NOT NULL DEFAULT '',
  `vendor_mail_css` char(255) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_vendor_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `pz5yp_virtuemart_vendors_en_gb` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_vendors_en_gb` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_vendors_en_gb` (`virtuemart_vendor_id`, `vendor_store_desc`, `vendor_terms_of_service`, `vendor_legal_info`, `vendor_letter_css`, `vendor_letter_header_html`, `vendor_letter_footer_html`, `vendor_store_name`, `vendor_phone`, `vendor_url`, `metadesc`, `metakey`, `customtitle`, `vendor_invoice_free1`, `vendor_invoice_free2`, `vendor_mail_free1`, `vendor_mail_free2`, `vendor_mail_css`, `slug`)
VALUES
	(1,'<p>We have the best clothing for up-to-date people. Check it out!</p> <p>We were established in 1869 in a time when getting good clothes was expensive, but the quality was good. Now that only a select few of those authentic clothes survive, we have dedicated this store to bringing the experience alive for collectors and master carrier everywhere.</p> <p>You can easily find products selecting the category you would like to browse above.</p>','<h5>You have not configured any terms of service yet. Click <a href=\"/tasks/sushiko/administrator/index.php?option=com_virtuemart&view=user&task=editshop\">here</a> to change this text.</h5>','VAT-ID: XYZ-DEMO<br />Reg.Nr: DEMONUMBER','.vmdoc-header { }.vmdoc-footer { }','<h1>{vm:vendorname}</h1><p>{vm:vendoraddress}</p>','{vm:vendorlegalinfo}<br /> Page {vm:pagenum}/{vm:pagecount}','VirtueMart 2 Sample store','555-555-1212','http://localhost/tasks/sushiko/','','','','','','','','','virtuemart-2-sample-store');

/*!40000 ALTER TABLE `pz5yp_virtuemart_vendors_en_gb` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_vmuser_shoppergroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_vmuser_shoppergroups`;

CREATE TABLE `pz5yp_virtuemart_vmuser_shoppergroups` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_user_id` (`virtuemart_user_id`,`virtuemart_shoppergroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='xref table for users to shopper group';



# Dump of table pz5yp_virtuemart_vmusers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_vmusers`;

CREATE TABLE `pz5yp_virtuemart_vmusers` (
  `virtuemart_user_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `user_is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `customer_number` char(32) DEFAULT NULL,
  `virtuemart_paymentmethod_id` int(1) unsigned DEFAULT NULL,
  `virtuemart_shipmentmethod_id` int(1) unsigned DEFAULT NULL,
  `perms` char(40) NOT NULL DEFAULT 'shopper',
  `agreed` tinyint(1) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_user_id`),
  UNIQUE KEY `u_virtuemart_user_id` (`virtuemart_user_id`,`virtuemart_vendor_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `user_is_vendor` (`user_is_vendor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Holds the unique user data';

LOCK TABLES `pz5yp_virtuemart_vmusers` WRITE;
/*!40000 ALTER TABLE `pz5yp_virtuemart_vmusers` DISABLE KEYS */;

INSERT INTO `pz5yp_virtuemart_vmusers` (`virtuemart_user_id`, `virtuemart_vendor_id`, `user_is_vendor`, `customer_number`, `virtuemart_paymentmethod_id`, `virtuemart_shipmentmethod_id`, `perms`, `agreed`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`)
VALUES
	(254,1,1,'AD21232f297',NULL,NULL,'admin',0,'2014-10-17 02:58:39',254,'2014-10-17 02:58:39',254,'0000-00-00 00:00:00',0);

/*!40000 ALTER TABLE `pz5yp_virtuemart_vmusers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pz5yp_virtuemart_waitingusers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_waitingusers`;

CREATE TABLE `pz5yp_virtuemart_waitingusers` (
  `virtuemart_waitinguser_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `notify_email` char(150) NOT NULL DEFAULT '',
  `notified` tinyint(1) NOT NULL DEFAULT '0',
  `notify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ordering` int(1) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_waitinguser_id`),
  KEY `virtuemart_product_id` (`virtuemart_product_id`),
  KEY `notify_email` (`notify_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores notifications, users waiting f. products out of stock';



# Dump of table pz5yp_virtuemart_worldzones
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_virtuemart_worldzones`;

CREATE TABLE `pz5yp_virtuemart_worldzones` (
  `virtuemart_worldzone_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) DEFAULT NULL,
  `zone_name` char(255) DEFAULT NULL,
  `zone_cost` decimal(10,2) DEFAULT NULL,
  `zone_limit` decimal(10,2) DEFAULT NULL,
  `zone_description` varchar(18000) DEFAULT NULL,
  `zone_tax_rate` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_worldzone_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='The Zones managed by the Zone Shipment Module';



# Dump of table pz5yp_weblinks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pz5yp_weblinks`;

CREATE TABLE `pz5yp_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
