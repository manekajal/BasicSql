
create database Student

create table students(  rollno int primary key
			name varchar(26),
			dept varchar(26),
			marks varchar(26),
			division varchar(6));


insert into students values(1,'kajal','CSE','78','A');
insert into students values(2,'teju','IT','67','B');
insert into students values(2,'komal','Mech','60','A');

select * from students where name LIKE 'k%';


create table department 
( name varchar(26),
    id int primary key
  
);

insert into department values
( 'IT',233);

select students.name,students.department,students.division
from students
inner join department
on students.department=department.name;

select students.name,students.department,students.division
from students
left outer join department
on students.department=department.name;
