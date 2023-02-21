--drop table test_tabl;

CREATE TABLE test_tab1
(id number,
name varchar2(30),
surname varchar2(30),
birth_date date
)
TABLESPACE tbs_data;

grant all on test_tab1 to public;

--drop table test_tab2;

CREATE TABLE test_tab2
(id number,
name varchar2(30),
surname varchar2(30)
)
TABLESPACE tbs_data;

grant all on test_tab2 to public;

--drop table test_tab3; 

CREATE TABLE test_tab3
(id number,
name varchar2(30)
)
TABLESPACE tbs_data;

grant all on test_tab3 to public;