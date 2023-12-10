          -- SQL - Structured Query Language --
                   -- Databases --
-- Website - Booking.com - Hotel Bookings , Flight Bookings --
		-- Passenger's information - Table 1 --
		-- Accounts Information - Table 2 --
		-- Content Information - Table 3 --
-- Query - Booking.com Manager - On the month of May how many passenger's under the age of 25 has booked with us for a hotel in Greece
		-- under the age of 25 - will be fetched from Table 1 
		-- On the month of May - Table 2 
		-- hotel in Greece - Table 3
        
-- select count(passenger_id) from table_1 - Table 1
-- join table 2 on table1.passenger_id = table2.passenger_id
-- join table 3 on table3.passenger_id = table1.passenger_id
-- where the transaction_date between '2023-05-01' and '2023-05-30' - Table 2
-- and location = 'Greece' - table 3

		
-- DDL - Data definition language - Create , Drop , Alter , Truncate
-- DML - Data manupulation langugae - Insert , Update , Delete , Lock 
-- TCL - Transaction control language - Commit , Savepoint , Rollback 
-- DQL - Data query language - Select 
-- DCL - - Data control language - Grant , Revoke

select * from employee;
select * from employee where birth_day > '1965-12-31';
select * , date_format(birth_day,'%Y-%M-%D') from employee;
select * , date_format(birth_day,'%d-%m-%y') from employee;
select * from employee where date_format(birth_day,'%Y') > '1965';
select * , year(birth_day) from employee;
select * , month(birth_day) from employee;
select * , monthname(birth_day) from employee;
select * , day(birth_day) from employee;
select curdate() as'current_date' , curdate() - interval 7 day as 'previous_date';
select monthname(curdate()) as 'current_month';
select year(curdate()) as 'current_month';
select curtime() as 'current_time';
select curdate() as 'current_date' , date_sub(curdate(),interval 2023 year) as 'one year_previous_day';
select curdate() as 'current_date' , date_sub(curdate(),interval 8 month) as '6_month_previous_day';
select * from employee 
order by salary desc;
select emp_id,salary
from employee
order by salary desc limit 1;























