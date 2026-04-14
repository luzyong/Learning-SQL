/* Excercises from Chapter 9 Learning SQL Alan Beaulieu*/
use learning_sql;
/*9.1 Construct against the account table that uses a filter condition with noncorrelated subquery against the product table to find all loan accounts (product.product_type_cd=LOAN)
Retrieve the account ID, product code, customer id and available balance.*/
select account_id, product_cd, cust_id, avail_balance from account where product_cd in (select product_cd from product where product_type_cd='LOAN');
/*9.2 Rework the query from excersice 9-1 using a correlated suquery against the product tabe to achieve the same results*/
select account_id, product_cd, cust_id, avail_balance from account a where exists (select product_cd from product p where product_type_cd='LOAN' and a.product_cd=p.product_cd);
/*9.3 Join the following query to the employee table to show the experience level of each employee. Give the subquery the alias levels, and inlcude the employee id
first name, last name, and experience level (levels.name). */
select employee.fname, employee.lname, levels.name  from employee natural join (select 'trainee' name, '2004-01-01' strat_dt, '2005-12-31' end_dt 
union all 
select 'worker' name, '2002-01-01' strat_dt, '2003-12-31' end_dt 
union all 
select 'mentor' name, '2000-01-01' strat_dt, '2001-12-31' end_dt) levels where employee.start_date between levels.strat_dt and levels.end_dt;
/*9.4Construct a query against the employee table that retrieves the employee id, first name, and last name, along with the names of the department and branch to wich the employee is assigned. Do not join any tables.*/
select emp_id, fname, lname, (select name dept_name from department where employee.dept_id=department.dept_id) dept_name, (select name branch_name from branch where employee.assigned_branch_id=branch.branch_id) branch_name from employee; 