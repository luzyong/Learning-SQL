/* Excercises from Chapter 11 Learning SQL Alan Beaulieu*/
use learning_sql;
/*11.1 Rewrite the following query, wich uses a simple case expression, so that the same resulcys are achieved using a searched case expression. Try to use as few when clauses as possible.*/
select emp_id,
case title
when 'President' then 'Management'
when 'Vice President' then 'Management'
when 'Treasurer' then 'Management'
when 'Loan Manager' then 'Management'
when 'Operations Manager' then 'Operations'
when 'Head Teller' then 'Operations'
when 'Teller' then 'Operations'
else 'Unknown'
end as category
from employee;
select emp_id,
case
when title ='President' or title='Vice President' or title='Treasurer' then 'Management'
when title ='Operations Manager' or title='Head Teller' or title='Teller' then 'Operations'
else 'Unknown'
end as category
from employee;
/*11.2 Rewirte the following query so that the result set cntains a single row with four columns (one for each branch). Name the four columns branch_1 through branch_4.*/
select open_branch_id, count(*) from account group by open_branch_id;
select sum(case when open_branch_id=1 then 1 else 0 end) "1", sum(case when open_branch_id=2 then 1 else 0 end) "2",  sum(case when open_branch_id=3 then 1 else 0 end) "3",  sum(case when open_branch_id=4 then 1 else 0 end) "4" from account;

