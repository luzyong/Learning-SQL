/* Excercises from Chapter 12 Learning SQL Alan Beaulieu*/
use learning_sql;
/*12.1 Generate a transaction to transfer $50 from Frank Tucker's money market account to his checking account. You will need to insert two rows into the transaction table and update two rows in the account table.*/

delimiter //
create procedure deposito()
	begin
        start transaction;
		update account set avail_balance = avail_balance-50, pending_balance = pending_balance-50, last_activity_date=current_date() where cust_id=3 and avail_balance>=50 and product_cd='MM';
		if row_count()=1 then
			insert into transaction (txn_date, account_id, txn_type_cd, amount, funds_avail_date) values (current_date(),8,'CDT',50,current_date());
			if row_count()=1 then
                update account set avail_balance = avail_balance+50, pending_balance = pending_balance+50, last_activity_date=current_date() where cust_id=3 and product_cd='CHK';
                if row_count()=1 then
                    insert into transaction (txn_date, account_id, txn_type_cd, amount, funds_avail_date) values (current_date(),7,'CDT',50,current_date());
                    if row_count()=1 then
						commit;
					else rollback;
                    end if;
				else rollback;
				end if;
			else rollback;
            end if;
		else rollback;
		end if;
	end;
//

call deposito();


        