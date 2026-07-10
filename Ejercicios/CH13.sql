/* Excercises from Chapter 13 Learning SQL Alan Beaulieu*/
use learning_sql;
/*13.1 Modify the account table so that customers may not have more than one account for each product*/
select account_id, product_cd, cust_id, avail_balance from account where product_cd in (select product_cd from product where product_type_cd='LOAN');
/*13.2 Generate a multicolumn index on the transaction table that could be used both of the follwoing queries*/
