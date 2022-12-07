SELECT * FROM ineuron_fsda.bank_details;

create view bank_view as select age, job, martial, balance , education from ineuron_fsda.bank_details;

SELECT * FROM ineuron_fsda.bank_view;

select avg(balance) from bank_details where job='retired';
select avg(balance) from bank_view where job='retired';
