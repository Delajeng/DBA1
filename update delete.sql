--update

select * from doctors where doctorid = 5;

update doctors set position='Staff Internist' where doctorid = 5;

select * from doctors where position is null;


update doctors set position='Attending Physician' where position is null;

commit;

select * from doctors where department = 2;

update doctors set name = 'George Smith' where department = 2;

savepoint doctor;

select * from inspections;

update inspections set doctorid=3;

rollback to savepoint doctor;

rollback;


--delete
select * from inspectiondetail where inspectiondetailid = 1006;

delete from inspectiondetail where inspectiondetailid = 1006;

select * from inspections where patientid = 105;

delete from inspections where patientid = 105;

delete patient where patientid = 5;


delete from doctors where doctorid = 1;

delete from inspections where doctorid=1;

select inspectionid from inspections where doctorid = 1;

delete from inspectiondetail where inspectionid in (101,103,106);


select * from inspectiondetail;

delete from inspectiondetail;

rollback;

truncate table inspectiondetail;

