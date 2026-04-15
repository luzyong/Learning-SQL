/* Excercises from Chapter 14 Learning SQL Alan Beaulieu*/
use learning_sql;
/*14.1 Create a view that queries the employee table and generates the following output when queried with no where clause*/
create view employee_sp
(supervisor_name, employee_name)
as
select concat(s.fname,' ',s.lname) supervisor_name, concat(e.fname,' ',e.lname) from employee e left join employee s on e.superior_emp_id=s.emp_id;

/*14.2 The bank president would like to have a report showing the name and city of each branch, along with the total balances of all accounts opened at the branch. Create a view to generate the data.*/
create view report
(name, city, total_balance)
as 
select b.name, b.city, sum(a.avail_balance) from account a inner join branch b on a.open_branch_id=b.branch_id group by a.open_branch_id;
