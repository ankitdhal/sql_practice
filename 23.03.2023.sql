create database demo_trigger;
use demo_trigger;

create table course(
course_id int,
course_desc varchar(50),
course_mentor varchar(50),
course_price int,
course_discount int,
create_date date );

create table course2(
course_id int,
course_desc varchar(50),
course_mentor varchar(50),
course_price int,
course_discount int,
create_date date,
user_info varchar(50));

drop table course;

select * from course2;

select user();

create table course_update(
course_mentor_update varchar(50),
course_price_update int,
course_discount_update int);

delimiter //
create trigger course_before_insert3
before insert 
on course2 for each row
begin 
	declare user_val varchar(40);
	set new.create_date = sysdate();
    select user() into user_val;
    set new.user_info = user_val;
    insert into ref_course values(sysdate(),user_val);
end;  //

insert into course2(course_id,course_desc,course_mentor,course_price,course_discount) values(101, 'fsda', 'sudhanshu',4000,10);

select * from ref_course;
create table ref_course(
record_insert_date date,
record_insert_user varchar(50));

create table test1(
c1 varchar(50),
c2 date,
c3 int);

create table test2(
c1 varchar(50),
c2 date,
c3 int);

create table test3(
c1 varchar(50),
c2 date,
c3 int);

delimiter //
create trigger to_update_c23
before insert on test1 for each row	
begin
	INSERT INTO test2 values("abc",sysdate(),123);
	INSERT INTO test3 values("abcd",sysdate(),1234);

end ; //
SET SQL_SAFE_UPDATES=0;



insert into test1 values("ankit",sysdate(),12345111);
select * from test2;

delimiter //
create trigger after_update_c23
after insert on test1 for each row	
begin
	update test2 set c1 ="xyz" where c1= "abc";
	delete from test3 where c1 ="abcd";

end ; //

delimiter //
create trigger after_delete_1234
after delete on test1 for each row	
begin
	update test2 set c1 ="aaaaaaaaaaa" where c1= "xyz";
	insert into test3 values("ankit",sysdate(),27);
end ; //

delete from test1 where c1="ankit";

delimiter //
create trigger observation
before delete on test1 for each row	
begin
	insert into test3 values(old.c1,old.c2,old.c3);
end ; //
