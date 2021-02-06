select * from sqlite_master;

create table employee(empid integer,name varchar(20),title varchar(10));
create table department(deptid integer,name varchar(20),location varchar(10));

insert into employee values(101,'John Smith','CEO');
insert into employee values(102,'Raj Reddy','Sysadmin');
insert into employee values(103,'Jason Bourne','Developer');
insert into employee values(104,'Jane Smith','Sale Manager');
insert into employee values(105,'Rita Patel','DBA');

insert into department values(1,'Sales','Los Angeles');
insert into department values(2,'Technology','San Jose');
insert into department values(3,'Marketing','Los Angeles');

select * from employee;
select * from department;

-- alter table department rename to dept;
-- alter table employee add column deptid integer;

-- update employee set deptid=3 where empid=101;
-- update employee set deptid=2 where empid=102;
-- update employee set deptid=2 where empid=103;
-- update employee set deptid=1 where empid=104;
-- update employee set deptid=2 where empid=105;
-- select * from employee;

-- create unique index empidx on employee(empid);
-- insert into employee values (101,'James Bond','Secret Agent',1);
-- alter table employee add column updatedon date;
-- create trigger employee_update_trg after update on employee
-- begin
--   update employee set updatedon = datetime('NOW') where rowid = new.rowid;
-- end;
-- update employee set title='Sales Manager' where empid=104;
-- create view empdept as select empid, e.name, title, d.name, location from employee e, dept d where e.deptid = d.deptid;
-- select empid,datetime(updatedon,'localtime') from employee;
-- select empid,strftime('%d-%m-%Y %w %W',updatedon) from employee;
-- drop index empidx;
-- drop trigger employee_update_trg;
-- drop view empdept;
-- drop table employee;
-- drop table dept;
-- select * from employee where empid >= 102 and empid  select * from dept where location like 'Los%';
-- select * from empdept;
-- explain query plan select * from empdept;