/* Excercises from Chapter 7 Learning SQL Alan Beaulieu*/
use learning_sql;
/*7.1 Write a query that returns the 17th through 25th characters of the string 'Please find the substring in this string'*/
select substring('Please find the substring in this string',17,25) substring;
/*7.2 Write a query that returns the absolute value and sign (-1,0 or 1) of the number -25.76823. Also return the number rounded to the nearest hundredth.*/
select abs(-25.76823) absolute, sign(-25.76823) sign, round(-25.76823,1) rounded;
/*7.3 Write a query to retturn just the month protion of the current date*/
select extract(month from current_date()) month;