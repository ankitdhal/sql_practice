SELECT * FROM ineuron_fsda.bank_details;

select sum(balance) from bank_details;

select avg(balance)	from bank_details;

select   min(balance) as MINBALANCE from bank_details;

select * from bank_details order by balance limit 1;
select * from bank_details where balance=(select min(balance) as MinBalance from bank_details);

select * from bank_details order by balance limit 1;

select * from bank_details where balance in (select max(balance) from bank_details);

select * from bank_details where loan = "yes";

select avg(balance) from bank_details where job = "admin.";

select * from bank_details where age<45 AND job= "unknown";

select * from bank_details where education="primary" AND job= "unknown";

select	* from bank_details	where balance<0;

select balance, housing from bank_details where housing = "no" order by balance;

Delimiter &&
create procedure Max_bal()
Begin 
	select * from bank_details where balance= (select max(balance) as MAXBAL from bank_details);
End &&
DELIMITER &&
create procedure ank()
BEGIN	
	select * from bank_details	;
END &&	

call ank();
call Max_bal();