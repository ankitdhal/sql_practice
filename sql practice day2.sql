select * from ineuron_fsda.bank_details;

//create a procedure

Delimiter &&
Create procedure max_balance()
Begin
 select * from bank_details where balance =(select max(balance) from bank_details); 
End &&

//create a procedure for avg balance based on job
Delimiter &&
Create procedure avg_bal_jobrole(IN var varchar(30))
begin
select avg(balance) from bank_details where job=var;
end &&

call avg_bal_jobrole('retired');

Delimiter &&
Create procedure bal_edu_job1(IN edu varchar(30), job_role varchar(30))
Begin 
select * from bank_details where education=edu and job=job_role;
End &&

call bal_edu_job1("primary","retired"); 