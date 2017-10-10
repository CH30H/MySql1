CREATE DATABASE gradesystem;

use gradesystem;

CREATE TABLE student(
  sid int(5) NOT NULL auto_increment,
  sname char(10) NOT NULL,
  gender char(10) NOT NULL,
  UNIQUE (sid),
  CONSTRAINT std_pk Primary Key (sid)
);

CREATE TABLE course(
  cid int(10) NOT NULL auto_increment,
  cname char(10) NOT NULL,
  UNIQUE(cid),
  CONSTRAINT cou_pk Primary Key (cid)
);

CREATE TABLE mark(
  mid int(10) NOT NULL auto_increment,
  sid int(5) NOT NULL,
  cid int(10) NOT NULL,
  score int(5) NOT NULL,
  UNIQUE(mid),
  CONSTRAINT mark_pk Primary Key (mid),
  CONSTRAINT mark_fks Foreign Key (sid)  REFERENCES student(sid),
  CONSTRAINT mark_fkc Foreign Key (cid)  REFERENCES course(cid)
);
#insert复制出错需要修改
INSERT INTO mark(sid, cid, score) VALUES (1, 1, 80),(2,1,85),(3,1,90),(1,2,60),(2,2,90),(3,2,75),(1, 3, 95),(2,3, 75),(3,3,85);
INSERT INTO mark(sid, cid, score) VALUES (1, 1, 80),(2,1,85),(3,1,90),(1,2,60),(2,2,90),(3,2,75),(1, 3, 95),(2,3, 75),(3,3,85);
INSERT INTO mark(sid, cid, score) VALUES (1, 1, 80),(2,1,85),(3,1,90),(1,2,60),(2,2,90),(3,2,75),(1, 3, 95),(2,3, 75),(3,3,85);
