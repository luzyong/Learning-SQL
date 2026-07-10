/* Excercises from Chapter 3 Learning SQL Alan Beaulieu*/
use learning_sql;
/*3.1 Retrieve the employee ID, first name, and last name for all bank emplotees. Sort by last name and then by firts name*/
select emp_id, fname, lname from employee order by lname, fname;
/*3.2 Retrieve the account id, customer id, and available balance for all accounts whose status equals 'ACTIVE' and whose available balance is greater than 2500*/
select account_id, cust_id, avail_balance from account where status='ACTIVE' and avail_balance > 2500;
/*3.3 Write a query against the account table that retruns the IDs of the employees whho opened the accounts (use the account.open:emp:id column). Include a single row
for each distinct employee*/
select distinct(open_emp_id) from account;
/*3.4 Fill in the blanks (denoted by <#>) for this multidataset query to achieve the results shown here*/
select p.product_cd, a.cust_id, a.avail_balance from product p inner join account a on p.product_cd = a.product_cd where p.product_type_cd='ACCOUNT' order by p.product_cd, a.cust_id;