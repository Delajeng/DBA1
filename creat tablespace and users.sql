CREATE TABLESPACE tbs_data
DATAFILE 'C:\app\Lenovo\product\21c\oradata\XE\XEPDB1\tbs_data_01.dbf' SIZE 100M
AUTOEXTEND ON NEXT 10M MAXSIZE 1024M;

CREATE TABLESPACE tbs_index
DATAFILE 'C:\app\Lenovo\product\21c\oradata\XE\XEPDB1\tbs_index_01.dbf' SIZE 100M
AUTOEXTEND ON NEXT 10M MAXSIZE 1024M;


CREATE USER hosapp 
IDENTIFIED BY hospass_123
DEFAULT TABLESPACE tbs_data
TEMPORARY TABLESPACE temp;

--privileges
grant connect, resource, dba to hosapp ;

grant unlimited tablespace to hosapp;

CREATE USER mytest 
IDENTIFIED BY test_123
DEFAULT TABLESPACE tbs_data
TEMPORARY TABLESPACE temp;

--privileges
grant connect, create session, resource to mytest ;

-- you need to give authorization on tablespace to user for being able to create tables 
alter user mytest quota 100M on tbs_data;

alter user mytest quota 100M on tbs_index;