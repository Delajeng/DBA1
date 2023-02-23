
alter table patient modify phone varchar2(15);

alter table doctors add department number;


--primary keys
alter table doctors add constraint doctors_pk primary key (doctorid) ;

alter table inspections add constraint inspections_pk primary key (inspectionid) ;

alter table patient add constraint patient_pk primary key (patientid) ;

alter table inspectiondetail add constraint inspectiondetail_pk primary key (inspectiondetailid) ;

alter table department add constraint department_pk primary key (departmentid) ;

--foreign keys
alter table doctors add constraint fk_doctors_01 foreign key (department) references department (departmentid);

alter table inspections add constraint fk_inspections_01 foreign key (patientid) references patient (patientid);

alter table inspections add constraint fk_inspections_02 foreign key (doctorid) references doctors (doctorid);

alter table inspectiondetail add constraint fk_inspectiondetail_01 foreign key (inspectionid) references inspections (inspectionid);
