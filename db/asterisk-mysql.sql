USE asterisk;

CREATE TABLE `cdr` (
`calldate` datetime NOT NULL default '0000-00-00 00:00:00',
`clid` varchar(80) NOT NULL default '',
`src` varchar(80) NOT NULL default '',
`dst` varchar(80) NOT NULL default '',
`dcontext` varchar(80) NOT NULL default '', 
`channel` varchar(80) NOT NULL default '',
`dstchannel` varchar(80) NOT NULL default '',
`lastapp` varchar(80) NOT NULL default '',
`lastdata` varchar(80) NOT NULL default '',
`duration` int(11) NOT NULL default '0',
`billsec` int(11) NOT NULL default '0',
`disposition` varchar(45) NOT NULL default '', 
`amaflags` int(11) NOT NULL default '0',
`accountcode` varchar(20) NOT NULL default '',
`userfield` varchar(255) NOT NULL default '',
`uniqueid` VARCHAR(32) NOT NULL default '',
`linkedid` VARCHAR(32) NOT NULL default '',
`sequence` VARCHAR(32) NOT NULL default '',
`peeraccount` VARCHAR(32) NOT NULL default '',
PRIMARY KEY (clid,channel,calldate)
);

ALTER TABLE `cdr` ADD INDEX ( `calldate` );
ALTER TABLE `cdr` ADD INDEX ( `dst` );
ALTER TABLE `cdr` ADD INDEX ( `accountcode` );

CREATE TABLE queue_table (
	name VARCHAR(128) PRIMARY KEY,
	musiconhold VARCHAR(128),
	announce VARCHAR(128),
	context VARCHAR(128),
	timeout INT(11),
	monitor_join BOOL,
	monitor_format VARCHAR(128),
	queue_youarenext VARCHAR(128),
	queue_thereare VARCHAR(128),
	queue_callswaiting VARCHAR(128),
	queue_holdtime VARCHAR(128),
	queue_minutes VARCHAR(128),
	queue_seconds VARCHAR(128),
	queue_lessthan VARCHAR(128),
	queue_thankyou VARCHAR(128),
	queue_reporthold VARCHAR(128),
	announce_frequency INT(11),
	announce_round_seconds INT(11),
	announce_holdtime VARCHAR(128),
	retry INT(11),
	wrapuptime INT(11),
	maxlen INT(11),
	servicelevel INT(11),
	strategy VARCHAR(128),
	joinempty VARCHAR(128),
	leavewhenempty VARCHAR(128),
	eventmemberstatus BOOL,
	eventwhencalled BOOL,
	reportholdtime BOOL,
	memberdelay INT(11),
	weight INT(11),
	timeoutrestart BOOL,
	periodic_announce VARCHAR(50),
	periodic_announce_frequency INT(11),
	ringinuse BOOL,
	setinterfacevar BOOL
);

CREATE TABLE queue_members (
	uniqueid INT(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	membername varchar(40),
	queue_name varchar(128),
	interface varchar(128),
	penalty INT(11),
	paused INT(11),
	UNIQUE KEY queue_interface (queue_name, interface)
);

CREATE TABLE `queue_log` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `time` char(10) NOT NULL default '',
  `callid` varchar(32) NOT NULL default '',
  `queuename` varchar(32) NOT NULL default '',
  `agent` varchar(32) NOT NULL default '',
  `event` varchar(32) NOT NULL default '',
  `data` varchar(255) NOT NULL default '',
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `queue_log_processed` (
`recid` int(10) unsigned NOT NULL auto_increment,
`origid` int(10) unsigned NOT NULL,
`callid` varchar(32) NOT NULL default '',
`queuename` varchar(32) NOT NULL default '',
`agentdev` varchar(32) NOT NULL,
`event` varchar(32) NOT NULL default '',
`data1` varchar(128) NOT NULL,
`data2` varchar(128) NOT NULL,
`data3` varchar(128) NOT NULL,
`datetime` datetime NOT NULL default '0000-00-00 00:00:00',
PRIMARY KEY (`recid`),
KEY `data1` (`data1`),
KEY `data2` (`data2`),
KEY `data3` (`data3`),
KEY `event` (`event`),
KEY `queuename` (`queuename`),
KEY `callid` (`callid`),
KEY `datetime` (`datetime`),
KEY `agentdev` (`agentdev`),
KEY `origid` (`origid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

/* INSERT INTO queue_log_processed (origid,callid,queuename,agentdev,event,data1,data2,data3,datetime)
SELECT id,callid,queue_log.queuename,agent,event,
replace(substring(substring_index(`data`, '|', 1), length(substring_index(`data`, '|', 1 - 1)) + 1), '|', ''),
replace(substring(substring_index(`data`, '|', 2), length(substring_index(`data`, '|', 2 - 1)) + 1), '|', ''),
replace(substring(substring_index(`data`, '|', 3), length(substring_index(`data`, '|', 3 - 1)) + 1), '|', ''),
FROM_UNIXTIME(time) FROM queue_log;
DELETE FROM queue_log; */

CREATE TABLE IF NOT EXISTS `queue_log` (
`id` int(10) unsigned NOT NULL auto_increment,
`time` varchar(40) default NULL,
`callid` varchar(32) NOT NULL default '',
`queuename` varchar(32) NOT NULL default '',
`agent` varchar(32) NOT NULL default '',
`event` varchar(32) NOT NULL default '',
`data` varchar(255) NOT NULL default '',
PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Triggers `queue_log`
--
DROP TRIGGER IF EXISTS `asterisk`.`update_processed`;
DELIMITER //
CREATE TRIGGER `asterisk`.`update_processed` AFTER INSERT ON `asterisk`.`queue_log`
FOR EACH ROW BEGIN
INSERT INTO queue_log_processed (origid,callid,queuename,agentdev,event,data1,data2,data3,datetime)
VALUES (
NEW.id,NEW.callid,NEW.queuename,NEW.agent,NEW.event,
replace(substring(substring_index(NEW.data, '|', 1), length(substring_index(NEW.data, '|', 1 - 1)) + 1), '|', ''),
replace(substring(substring_index(NEW.data, '|', 2), length(substring_index(NEW.data, '|', 2 - 1)) + 1), '|', ''),
replace(substring(substring_index(NEW.data, '|', 3), length(substring_index(NEW.data, '|', 3 - 1)) + 1), '|', ''),
FROM_UNIXTIME(NEW.time)
);
END
//
DELIMITER ;

DROP TRIGGER IF EXISTS `asterisk`.`bi_queueEvents`;
DELIMITER //
CREATE TRIGGER `asterisk`.`bi_queueEvents` BEFORE INSERT ON `asterisk`.`queue_log`
FOR EACH ROW BEGIN
IF NEW.event = 'ADDMEMBER' THEN
INSERT INTO agent_status (agentId,agentStatus,timestamp,callid,queue) VALUES (NEW.agent,'READY',FROM_UNIXTIME(NEW.time),NULL,NEW.queuename) ON DUPLICATE KEY UPDATE agentStatus = "READY", timestamp = FROM_UNIXTIME(NEW.time), callid = NULL, queue = NEW.queuename;
ELSEIF NEW.event = 'REMOVEMEMBER' THEN
INSERT INTO `agent_status` (agentId,agentStatus,timestamp,callid,queue) VALUES (NEW.agent,'LOGGEDOUT',FROM_UNIXTIME(NEW.time),NULL,NEW.queuename) ON DUPLICATE KEY UPDATE agentStatus = "LOGGEDOUT", timestamp = FROM_UNIXTIME(NEW.time), callid = NULL, queue = NEW.queuename;
ELSEIF NEW.event = 'AGENTLOGIN' THEN
INSERT INTO `agent_status` (agentId,agentStatus,timestamp,callid,queue) VALUES (NEW.agent,'LOGGEDIN',FROM_UNIXTIME(NEW.time),NULL,NEW.queuename) ON DUPLICATE KEY UPDATE agentStatus = "LOGGEDIN", timestamp = FROM_UNIXTIME(NEW.time), callid = NULL, queue = NEW.queuename;
ELSEIF NEW.event = 'AGENTLOGOFF' THEN
INSERT INTO `agent_status` (agentId,agentStatus,timestamp,callid,queue) VALUES (NEW.agent,'LOGGEDOUT',FROM_UNIXTIME(NEW.time),NULL,NEW.queuename) ON DUPLICATE KEY UPDATE agentStatus = "LOGGEDOUT", timestamp = FROM_UNIXTIME(NEW.time), callid = NULL, queue = NEW.queuename;
ELSEIF NEW.event = 'PAUSE' THEN
INSERT INTO agent_status (agentId,agentStatus,timestamp,callid,queue) VALUES (NEW.agent,'PAUSE',FROM_UNIXTIME(NEW.time),NULL,NEW.queuename) ON DUPLICATE KEY UPDATE agentStatus = "PAUSE", timestamp = FROM_UNIXTIME(NEW.time), callid = NULL, queue = NEW.queuename;
ELSEIF NEW.event = 'UNPAUSE' THEN
INSERT INTO `agent_status` (agentId,agentStatus,timestamp,callid,queue) VALUES (NEW.agent,'READY',FROM_UNIXTIME(NEW.time),NULL,NEW.queuename) ON DUPLICATE KEY UPDATE agentStatus = "READY", timestamp = FROM_UNIXTIME(NEW.time), callid = NULL, queue = NEW.queuename;
ELSEIF NEW.event = 'ENTERQUEUE' THEN
REPLACE INTO `call_status` VALUES
(NEW.callid,
replace(replace(substring(substring_index(NEW.data, '|', 2), length(substring_index(New.data, '|', 2 - 1)) + 1), '|', '')
, '|', ''),
'inQue',
FROM_UNIXTIME(NEW.time),
NEW.queuename,
'',
'',
'',
'',
0);
ELSEIF NEW.event = 'CONNECT' THEN
UPDATE `call_status` SET
callid = NEW.callid,
status = NEW.event,
timestamp = FROM_UNIXTIME(NEW.time),
queue = NEW.queuename,
holdtime = replace(substring(substring_index(NEW.data, '|', 1), length(substring_index(NEW.data, '|', 1 - 1)) + 1), '|', '')
where callid = NEW.callid;
INSERT INTO agent_status (agentId,agentStatus,timestamp,callid,queue) VALUES
(NEW.agent,NEW.event,
FROM_UNIXTIME(NEW.time),
NEW.callid,
NEW.queuename)
ON DUPLICATE KEY UPDATE
agentStatus = NEW.event,
timestamp = FROM_UNIXTIME(NEW.time),
callid = NEW.callid,
queue = NEW.queuename;
ELSEIF NEW.event in ('COMPLETECALLER','COMPLETEAGENT') THEN
UPDATE `call_status` SET
callid = NEW.callid,
status = NEW.event,
timestamp = FROM_UNIXTIME(NEW.time),
queue = NEW.queuename,
originalPosition = replace(substring(substring_index(NEW.data, '|', 3), length(substring_index(NEW.data, '|', 3 - 1)) + 1), '|', ''),
holdtime = replace(substring(substring_index(NEW.data, '|', 1), length(substring_index(NEW.data, '|', 1 - 1)) + 1), '|', ''),
callduration = replace(substring(substring_index(NEW.data, '|', 2), length(substring_index(NEW.data, '|', 2 - 1)) + 1), '|', '')
where callid = NEW.callid;
INSERT INTO agent_status (agentId,agentStatus,timestamp,callid,queue) VALUES (NEW.agent,NEW.event,FROM_UNIXTIME(NEW.time),NULL,NEW.queuename) ON DUPLICATE KEY UPDATE agentStatus = "READY", timestamp = FROM_UNIXTIME(NEW.time), callid = NULL, queue = NEW.queuename;
ELSEIF NEW.event in ('TRANSFER') THEN
UPDATE `call_status` SET
callid = NEW.callid,
status = NEW.event,
timestamp = FROM_UNIXTIME(NEW.time),
queue = NEW.queuename,
holdtime = replace(substring(substring_index(NEW.data, '|', 1), length(substring_index(NEW.data, '|', 1 - 1)) + 1), '|', ''),
callduration = replace(substring(substring_index(NEW.data, '|', 3), length(substring_index(NEW.data, '|', 3 - 1)) + 1), '|', '')
where callid = NEW.callid;
INSERT INTO agent_status (agentId,agentStatus,timestamp,callid,queue) VALUES
(NEW.agent,'READY',FROM_UNIXTIME(NEW.time),NULL,NEW.queuename)
ON DUPLICATE KEY UPDATE
agentStatus = "READY",
timestamp = FROM_UNIXTIME(NEW.time),
callid = NULL,
queue = NEW.queuename;
ELSEIF NEW.event in ('ABANDON','EXITEMPTY') THEN
UPDATE `call_status` SET
callid = NEW.callid,
status = NEW.event,
timestamp = FROM_UNIXTIME(NEW.time),
queue = NEW.queuename,
position = replace(substring(substring_index(NEW.data, '|', 1), length(substring_index(NEW.data, '|', 1 - 1)) + 1), '|', ''),
originalPosition = replace(substring(substring_index(NEW.data, '|', 2), length(substring_index(NEW.data, '|', 2 - 1)) + 1), '|', ''),
holdtime = replace(substring(substring_index(NEW.data, '|', 3), length(substring_index(NEW.data, '|', 3 - 1)) + 1), '|', '')
where callid = NEW.callid;
ELSEIF NEW.event = 'EXITWITHKEY'THEN
UPDATE `call_status` SET
callid = NEW.callid,
status = NEW.event,
timestamp = FROM_UNIXTIME(NEW.time),
queue = NEW.queuename,
position = replace(substring(substring_index(NEW.data, '|', 2), length(substring_index(NEW.data, '|', 2 - 1)) + 1), '|', ''),
keyPressed = replace(substring(substring_index(NEW.data, '|', 1), length(substring_index(NEW.data, '|', 1 - 1)) + 1), '|', '')
where callid = NEW.callid;
ELSEIF NEW.event = 'EXITWITHTIMEOUT' THEN
UPDATE `call_status` SET
callid = NEW.callid,
status = NEW.event,
timestamp = FROM_UNIXTIME(NEW.time),
queue = NEW.queuename,
position = replace(substring(substring_index(NEW.data, '|', 1), length(substring_index(NEW.data, '|', 1 - 1)) + 1), '|', '')
where callid = NEW.callid;
END IF;
END
//
DELIMITER ;

CREATE TABLE IF NOT EXISTS `agent_status` (
`agentId` varchar(40) NOT NULL default '',
`agentName` varchar(40) default NULL,
`agentStatus` varchar(30) default NULL,
`timestamp` timestamp NULL default NULL,
`callid` double(18,6) unsigned default '0.000000',
`queue` varchar(20) default NULL,
PRIMARY KEY (`agentId`),
KEY `agentName` (`agentName`),
KEY `agentStatus` (`agentStatus`,`timestamp`,`callid`),
KEY `queue` (`queue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `call_status` (
`callId` double(18,6) NOT NULL,
`callerId` varchar(13) NOT NULL,
`status` varchar(30) NOT NULL,
`timestamp` timestamp NULL default NULL,
`queue` varchar(25) NOT NULL,
`position` varchar(11) NOT NULL,
`originalPosition` varchar(11) NOT NULL,
`holdtime` varchar(11) NOT NULL,
`keyPressed` varchar(11) NOT NULL,
`callduration` int(11) NOT NULL,
PRIMARY KEY (`callId`),
KEY `callerId` (`callerId`),
KEY `status` (`status`),
KEY `timestamp` (`timestamp`),
KEY `queue` (`queue`),
KEY `position` (`position`,`originalPosition`,`holdtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

