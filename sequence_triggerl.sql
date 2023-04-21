create table cars(
id number,
brand varchar2(50),
model varchar2(20));

alter table cars add(constraint cars_pk primary key (id));

create sequence cars_sequence start with 1 increment by 1 maxvalue 9999999;

create or replace trigger cars_trigger
before insert on cars
for each row
begin
      select cars_sequence.nextval into :new.id
      from dual;
end;

insert into cars (brand, model) values ('FORD', 'Mustang');
insert into cars (brand, model) values ('TESLA', 'Model S');

select * from cars;
