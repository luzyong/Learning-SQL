/* Excercises from Chapter 5 Learning SQL Alan Beaulieu*/
use learning_sql;
/*5.1 Fill the blanks for the following query to obtain the results that follow*/
select e.emp_id, e.fname, e.lname, b.name from employee e inner join branch b on e.assigned_branch_id = b.branch_id;
/*5.2 Write a query that returns the account ID for each nonbusiness customer (customer.cust_type_cd='I') with the customer's federal id (customer.fed_id) and the name of the product on which the account is based (product.name)*/
select a.account_id, c.fed_id, p.name from account a inner join customer c on c.cust_id = a.cust_id inner join product p on p.product_cd = a.product_cd where c.cust_type_cd = 'I';
/*5.3 Construct a query that finds all employees whose supervisor is assigned to a different department. Retrieve the employees ID, first name and last name.*/
select e.emp_id from employee e join employee s on e.superior_emp_id=s.emp_id where e.dept_id != s.dept_id;
 