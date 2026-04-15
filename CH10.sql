/* Excercises from Chapter 10 Learning SQL Alan Beaulieu*/
use learning_sql;
/*10.1 Write a query that returns all product names along with the accounts based on that product (use the product_cd column in the account table to link to the product table).
Include all products, even if no accounts have been opened for that product*/
select p.name, a.account_id from product p left join account a on p.product_cd = a.product_cd;
/*10.2 Reformulate your query from excercise 10-1 to use the other outer join type such the results are identical to Exercise 10-1.*/
select p.name, a.account_id from account a right join product p on p.product_cd = a.product_cd;
/*10.3 Outer-join the account table to both the individual and business tables ( via the account.cust_id column) such that the result set contains one row per account.
Columns to include are account.account_id, account.product_cd, individual.fname, individual.lname, and business.name. */
select account.account_id, account.product_cd, individual.fname, individual.lname, business.name from account left join individual on account.cust_id = individual.cust_id left join business on account.cust_id = business.cust_id; 
/*10.4 Devise a query that will generate the set {1,2,3,...,99,100}. (Hit: use a cross join with at least two from clause subqueries) */
select (ones.num+tens.num+hundreds.num) from 
(select 0 num union all select 1 num union all select 2 num union all select 3 num union all select 4 num union all select 5 num union all select 6 num union all select 7 num union all select 8 num union all select 9 num) ones 
cross join
(select 0 num union all select 10 num union all select 20 num union all select 30 num union all select 40 num union all select 50 num union all select 60 num union all select 70 num union all select 80 num union all select 90 num) tens
cross join
(select 1 num ) hundreds
order by 1;