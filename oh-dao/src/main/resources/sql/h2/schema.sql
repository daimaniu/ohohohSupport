
DROP TABLE IF EXISTS `r_faq`;

CREATE TABLE `r_faq` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `faq_id` int(11) DEFAULT NULL,
  `faq_id_ref` int(11) DEFAULT NULL,
  `created` bigint(20) DEFAULT NULL,
  `deleted` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB ;


DROP TABLE IF EXISTS `t_admin`;

CREATE TABLE `t_admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50)  DEFAULT NULL,
  `email` varchar(255)  DEFAULT NULL,
  `salt` varchar(128)  DEFAULT NULL,
  `pwd` varchar(255)  DEFAULT NULL,
  `created` bigint(20) DEFAULT NULL,
  `deleted` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB ;


DROP TABLE IF EXISTS `t_click_log`;

CREATE TABLE `t_click_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `faq_id` int(11) DEFAULT NULL,
  `up` int(1) DEFAULT '1',
  `created` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB ;


DROP TABLE IF EXISTS `t_feedback`;

CREATE TABLE `t_feedback` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `des` varchar(255)  DEFAULT NULL,
  `imgs` text ,
  `type_id` int(11) DEFAULT NULL,
  `occur_time` bigint(20) DEFAULT NULL,
  `contact` varchar(50)  DEFAULT NULL,
  `created` bigint(20) DEFAULT NULL,
  `updated` bigint(20) DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB ;



DROP TABLE IF EXISTS `t_faq`;

CREATE TABLE `t_faq` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128)  DEFAULT NULL COMMENT '问题名称',
  `content` text ,
  `up` int(11) DEFAULT NULL,
  `down` int(11) DEFAULT NULL,
  `hot` int(1) DEFAULT NULL,
  `view_num` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '相关类别',
  `created` bigint(20) DEFAULT NULL,
  `updated` bigint(20) DEFAULT NULL,
  `deleted` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB ;


DROP TABLE IF EXISTS `t_feedback_type`;

CREATE TABLE `t_feedback_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50)  DEFAULT NULL,
  `des` varchar(255)  DEFAULT NULL,
  `created` bigint(20) DEFAULT NULL,
  `updated` bigint(20) DEFAULT NULL,
  `deleted` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB ;

DROP TABLE IF EXISTS `t_type`;

CREATE TABLE `t_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `icon` varchar(128)  DEFAULT NULL,
  `name` varchar(50)  DEFAULT NULL,
  `group` int(2) DEFAULT NULL,
  `created` bigint(20) DEFAULT NULL,
  `update` bigint(20) DEFAULT NULL,
  `deleted` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB ;

