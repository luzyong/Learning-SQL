/* Excercises from Chapter 4 Learning SQL Alan Beaulieu*/
use learning_sql;
/*4.1 Which of the transactions ids would be returned by the following filter conditions? txn_date <'2005-02-26' and (txn_type_cd = 'DBT' or amount >100*/
/*A: 1,2,3,4,5,6,7*/
/*4.2 Which of the transactions ids would be returned by the following filter conditions? account_id in (101,103) and not (txn_type_cd = 'DBT' or amount >100*/
/*A: 9*/
/*4.3 Construct a query that retrieves all accounts opened in 2002*/
select account_id from account where extract(year from open_date) = 2002;
/*4.4 Construct a query that finds all nonbusiness customers whose last name contains an a in the second position and an e anywhere after tha a*/
select i.fname firts_name, i.lname last_name from individual i inner join customer c on i.cust_id = c.cust_id where  c.cust_type_cd = 'i' and i.lname like '_a%e%'; 