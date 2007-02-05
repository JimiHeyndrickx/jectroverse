-- phpMyAdmin SQL Dump
-- version 2.6.1
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Feb 05, 2007 at 10:55 PM
-- Server version: 4.1.9
-- PHP Version: 4.3.11RC1-dev
-- 
-- Database: `ectroverse`
-- 
CREATE DATABASE `ectroverse` DEFAULT CHARACTER SET latin1 COLLATE latin1_bin;
USE ectroverse;

-- --------------------------------------------------------

-- 
-- Table structure for table `family`
-- 

CREATE TABLE `family` (
  `family_number` int(11) NOT NULL auto_increment,
  `family_name` varchar(32) collate latin1_bin NOT NULL default '',
  `family_leader` int(11) NOT NULL default '0',
  `family_forum` int(11) NOT NULL default '0',
  PRIMARY KEY  (`family_number`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `family`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `forum`
-- 

CREATE TABLE `forum` (
  `id` int(11) NOT NULL auto_increment,
  `forum_name` varchar(16) collate latin1_bin NOT NULL default '',
  `owner` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `forum_name` (`forum_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `forum`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `messages`
-- 

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL auto_increment,
  `from` int(11) NOT NULL default '0',
  `to` int(11) NOT NULL default '0',
  `text` text collate latin1_bin NOT NULL,
  PRIMARY KEY  (`message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `messages`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `notes`
-- 

CREATE TABLE `notes` (
  `playerid` int(11) NOT NULL default '0',
  `message_id` bigint(20) NOT NULL default '0',
  `text` longtext collate latin1_bin NOT NULL,
  PRIMARY KEY  (`message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

-- 
-- Dumping data for table `notes`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `player`
-- 

CREATE TABLE `player` (
  `id` int(11) NOT NULL auto_increment,
  `login_name` varchar(16) collate latin1_bin NOT NULL default '',
  `pass` varchar(16) collate latin1_bin NOT NULL default '',
  `forum_name` varchar(16) collate latin1_bin NOT NULL default '',
  `tagpoints` int(11) NOT NULL default '0',
  `race` int(11) default '-1',
  `tag` int(11) default NULL,
  `play_name` varchar(16) collate latin1_bin NOT NULL default '',
  `group` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `login_name` (`login_name`,`forum_name`,`play_name`),
  FULLTEXT KEY `pass` (`pass`),
  FULLTEXT KEY `login_name_2` (`login_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `player`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `post`
-- 

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL auto_increment,
  `poster_id` int(11) NOT NULL default '0',
  `timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `text` text collate latin1_bin NOT NULL,
  PRIMARY KEY  (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `post`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `relation`
-- 

CREATE TABLE `relation` (
  `family_1` int(11) NOT NULL default '0',
  `family_2` int(11) NOT NULL default '0',
  `type` int(11) NOT NULL default '0',
  PRIMARY KEY  (`family_1`,`family_2`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

-- 
-- Dumping data for table `relation`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `thread`
-- 

CREATE TABLE `thread` (
  `thread_name` varchar(16) collate latin1_bin NOT NULL default '',
  `forum_id` int(11) NOT NULL default '0',
  `thread_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`thread_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

-- 
-- Dumping data for table `thread`
-- 

