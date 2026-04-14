/* Excercises from Chapter 8 Learning SQL Alan Beaulieu*/
use learning_sql;
/*8.1 Construct a query that counts the number of rows in the account table*/
select count(account_id) accounts from account;
/*8.2 Modify your query from excersice 8-1 to count the number of accounts held by each customer. Show the customer id and the number of accounts for each customer*/
select cust_id customer, count(account_id) accounts from account group by cust_id;
/*8.3 Modify your query from excersie 8-2 to inlcude only those customers having at least two accounts*/
select cust_id customer, count(account_id) accounts from account group by cust_id having count(account_id)>2; 
/*8.4 Find the total available balance by product and branch where there is more than one account per product and branch. Order the results by total balance (highest to lowest)*/
select product_cd product,open_branch_id branch, count(account_id) accounts from account group by product_cd,branch having count(account_id)>1 order by count(account_id) desc; 