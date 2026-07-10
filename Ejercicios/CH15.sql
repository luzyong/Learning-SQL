/* Excercises from Chapter 15 Learning SQL Alan Beaulieu*/
use learning_sql;
/*15.1 Write a query that lists all of the indexes in the bank schema. Inlcude the table names.*/
select index_name,table_name from information_schema.statistics where table_schema='learning_sql';
/*15.2 Write a query that generates output that can be used to create all of the indexes on the bank.employee table.*/
