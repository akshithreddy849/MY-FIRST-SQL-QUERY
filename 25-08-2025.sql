show databases;
use sathyabama;
drop table if exists student_details;
drop table if exists dep_id_new;
drop table if exists college_details_new;
create table college_details_new(srno int ,col_id int primary key,col_name varchar (25));
insert into college_details_new(srno,col_id,col_name)
values (1,101,"srm"),(2,102,"vit");
select * from college_details_new;
create table dep_id_new(srno int,dep_id int primary key,dep_name varchar(25), col_id int,
foreign key(col_id) references college_details_new(col_id)  
on delete cascade on update cascade );
insert into dep_id_new(srno,dep_id,dep_name,col_id)
values(1,1001,"cse",101),(2,1002,"ece",102);
select *
from dep_id_new;
create table student_details(srno int ,std_id int primary key,std_name varchar(25),
dep_id int,foreign key (dep_id) references dep_id_new(dep_id) on delete cascade
on update cascade);
insert into student_details(srno,std_id,std_name,dep_id)
values (1,01,"akshith","1001"),(2,02,"harshith","1002");
select * 
from student_details;