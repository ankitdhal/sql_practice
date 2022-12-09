create table if not exists test3(
test_id int auto_increment not null,
test_name varchar(30),
test_phone varchar(30),
primary key(test_id))

select * from test3;

insert into test3(test_name, test_phone) values('Ankit','9937496441'),('Anu','9438720161'),('Ambika','90403285611'),('sumi','7978573087'),('lala','8895029941'),('shyam','7894561230'),('ram','8888888888');

create view testview as (select test_id, test_name, test_mailid from test2);

select * from test2.testview;


create table if not exists test_check(
test_id int ,
test_address varchar(30),
test_dept varchar(30),
test_salary int check(test_salary>=30000));

insert into test_check values(101,'bbsr','it',555505),(102,'bam','hr',355500),(103,'ctc','marketting',60000),(104,'ctp','sales',700000),(105,'mub','it',55000);

select * from test_check; 

create table if not exists test5(
test_id int not null default 999,
test_adress varchar(30),
test_phone int,
test_gender varchar(10));

select * from test5;

insert into test5(test_id, test_adress,test_phone,test_gender) values(2,'bbs',85201479,'m'),(2,'bam',8899855,'f'),(5,'ctc',98754432,'m');
insert into test5( test_adress,test_phone,test_gender) values('bbsr',85201,'f');


create table if not exists test6(
test_id int not null  default 1,
test_email varchar(30) unique,
test_age int check(test_age>22),
test_address varchar(30));

insert into test6(test_id, test_email,test_age,test_address) values(1,'bbsr',25,'m'),(2,'baam',23,'f'),(5,'cttc',70,'m');




