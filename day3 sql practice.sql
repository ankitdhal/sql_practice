use dress_data;

drop table dress_data.dress;


create table if not exists dress(
`Dress_ID` varchar(30),	
`Style`	varchar(30),	
`Price`	varchar(30),	
`Rating`	varchar(30),	
`Size`	varchar(30),	
`Season`	varchar(30),	
`NeckLine`	varchar(30),	
`SleeveLength` varchar(30),		
`waiseline`	varchar(30),	
`Material`	varchar(30),	
`FabricType`	varchar(30),	
`Decoration`	varchar(30),	
`Pattern Type` varchar(30),		
`Recommendation` varchar(30))

select * from dress_data.dress;

LOAD DATA INFILE  
'D:/AttributeDataSet.csv'
into table dress
FIELDS TERMINATED by ','
ENCLOSED by '"'
lines terminated by '\n'
IGNORE 1 ROWS;

create view dress_view as (select Dress_ID, Style, Price, Rating from dress);

create table if not exists test(
`test_id` int auto_increment,
`test_name` varchar(30),
`test_mailid` varchar(30),
`test_address` varchar(30),
primary key (test_id)
);
use dress_data;
select * from dress_data.test;

insert into test values
(1, 'ankit', 'aaaa', 'aaaaaaaa');
insert into test values
(2, 'a0b5', 'aaaa2', 'aaaaaaaa2'),
(3, 'abb', 'aaaa3', 'aaaaaaaa3'),
(4, 'abcd', 'aaaa4', 'aaaaaaaa4');

create table if not exists test2(
`test_id` int auto_increment,
`test_name` varchar(30),
`test_mailid` varchar(30),
`test_address` varchar(30),
primary key (test_id)
);

insert into test2(test_name, test_mailid, test_address) values('ambi','ambi@gmail.com','bbsr'),('ambik','ambik@gmail.com','ctc'),('ambika','ambika@gmail.com','cap'), ('ambika dhal','ambiapd@gmail.com','MUNI')

select * from test2;

load data infile 'location'
into table 'table name'
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows