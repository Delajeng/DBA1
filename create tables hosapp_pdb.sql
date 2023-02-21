create table doctors
(doctorid number,
name varchar2(50),
position varchar2(100))
tablespace tbs_data;

grant select on doctors to mytest;

create table inspections
(inspectionid number,
patientid number,
doctorid number,
inspectiondate date)
tablespace tbs_data;

grant insert, select on inspections to mytest;

create table patient
(patientid number,
name varchar2(50),
adress varchar2(150),
phone varchar2(10))
tablespace tbs_data;

grant insert, update, delete, select on patient to mytest;

create table inspectiondetail
(inspectiondetailid number,
inspectionid number,
diagnosticname varchar2(100))
tablespace tbs_data;

grant all on inspectiondetail to mytest;

create table department
(departmentid number,
departmentname varchar2(150),
campus varchar2(50))
tablespace tbs_data;