insert into department (departmentid,departmentname,campus)
values (1,'General Medicine','Site A');

insert into department (departmentid,departmentname,campus)
values (2,'Surgery','Site B');

insert into department (departmentid,departmentname,campus)
values (3,'Management Office','Site C');



insert into doctors (doctorid,name,position,department)
values (1,'David McGrey','Attending Physician',1);

insert into doctors (doctorid,name,position,department)
values (2,'Michael Smith','Senior Attending Physician',2);

insert into doctors (doctorid,name,position,department)
values (3,'George Miller','Staff Internist',1);

insert into doctors 
values (4,'Eva Wilson','Surgical Attending Physician',2);

insert into doctors (doctorid,name,position,department)
values (5,'Bill Green',null,1); 


insert into doctors (doctorid,name,department)
values (6,'Leia Black',1);


insert into doctors (doctorid,name,position,department)
values (1,'Ben Stock','Attending Physician',1);



insert into patient (patientid,name,adress,phone)
values (1,'John Thin','2271  Sundown Lane, Austin, TX 78749','999-888-22-11');

insert into patient (patientid,name,adress,phone)
values (2,'Mary Garcia','95 Greystone St.','999-822-90-11');

insert into patient (patientid,name,adress,phone)
values (3,'Aaron Wilson','111 Yellow Statue St. Austin, TX 78749','999-801-01-02');

insert into patient (patientid,name,adress,phone)
values (4,'Elizabeth Taylor','24 Marsh St. Austin, TX 78749','999-880-00-11');

insert into patient (patientid,name,adress,phone)
values (5,'Amanda Lee','123 Hall Avenue, Austin, TX 78749','999-880-00-91');

insert into patient (patientid,name,adress,phone)
values (6,'Mark Robinson','77 West Talbot St. Austin, TX 78749','999-808-09-08');

insert into patient (patientid,name,adress,phone)
values (7,'John Thin','121 BlackChain St. Austin, TX 78749','999-900-10-12');

insert into patient (patientid,name,adress,phone)
values (8,'Carlos Keyton','334 Pearl St. Austin, TX 78749','999-909-22-32');

insert into patient (patientid,name,adress,phone)
values (9,'Edmond Icon','12 Dorothy St. Austin, TX 78749','991-909-09-12');




insert into inspections (inspectionid,patientid,doctorid,INSPECTIONDATE)
values (101,1,1,to_date('04.12.2018','DD.MM.YYYY'));

insert into inspections (inspectionid,patientid,doctorid,INSPECTIONDATE)
values (102,2,2,to_date('03.12.2018','DD.MM.YYYY'));

insert into inspections (inspectionid,patientid,doctorid,INSPECTIONDATE)
values (103,3,1,to_date('04.12.2018','DD.MM.YYYY'));

insert into inspections (inspectionid,patientid,doctorid,INSPECTIONDATE)
values (104,4,3,to_date('02.12.2018','DD.MM.YYYY'));

insert into inspections (inspectionid,patientid,doctorid,INSPECTIONDATE)
values (105,5,3,to_date('02.12.2018','DD.MM.YYYY'));

insert into inspections (inspectionid,patientid,doctorid,INSPECTIONDATE)
values (106,6,1,to_date('04.12.2018','DD.MM.YYYY'));


--doctorid:4
insert into inspections (inspectionid,patientid,doctorid,INSPECTIONDATE)
values (107,7,4,to_date('05.12.2018','DD.MM.YYYY'));





insert into inspectiondetail (inspectiondetailid,inspectionid,diagnosticname)
values (1001,101,'flu');

insert into inspectiondetail (inspectiondetailid,inspectionid,diagnosticname)
values (1002,102,'incision');

insert into inspectiondetail (inspectiondetailid,inspectionid,diagnosticname)
values (1003,103,'cold');

insert into inspectiondetail (inspectiondetailid,inspectionid,diagnosticname)
values (1004,103,'diarrhea');

insert into inspectiondetail (inspectiondetailid,inspectionid,diagnosticname)
values (1005,104,'cold');

insert into inspectiondetail (inspectiondetailid,inspectionid,diagnosticname)
values (1006,105,'flu');

insert into inspectiondetail (inspectiondetailid,inspectionid,diagnosticname)
values (1007,106,'bronchitis');

insert into inspectiondetail (inspectiondetailid,inspectionid,diagnosticname)
values (1008,106,'flu');

insert into inspectiondetail (inspectiondetailid,inspectionid,diagnosticname)
values (1009,107,'fracture');

COMMIT;