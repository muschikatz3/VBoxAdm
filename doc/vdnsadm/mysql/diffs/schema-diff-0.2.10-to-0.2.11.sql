## mysqldiff 0.43
## 
## Run on Thu Feb  2 21:19:48 2012
## Options: debug=0
##
## --- file: doc/vdnsadm/mysql/vdnsadm-current.sql
## +++ file: /tmp/HqDr_n4h10/vdnsadm-current.sql

ALTER TABLE domains ADD COLUMN linked_template int(11) NOT NULL;
ALTER TABLE domains ADD COLUMN CONSTRAINT domains_ibfk_1 FOREIGN KEY (group_id) REFERENCES groups (id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE domains ADD COLUMN group_id int(16) NOT NULL;
ALTER TABLE domains ADD INDEX group_id (group_id);
CREATE TABLE groups (
  id int(16) NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE template_records (
  id int(11) NOT NULL AUTO_INCREMENT,
  tpl_id int(11) NOT NULL,
  name varchar(255) NOT NULL,
  type varchar(10) NOT NULL,
  content varchar(4096) NOT NULL,
  ttl int(11) NOT NULL,
  prio int(11) NOT NULL,
  PRIMARY KEY (id),
  KEY tpl_id (tpl_id),
  CONSTRAINT template_records_ibfk_1 FOREIGN KEY (tpl_id) REFERENCES templates (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE templates (
  id int(16) NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

