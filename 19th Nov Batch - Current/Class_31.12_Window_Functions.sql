-- lead lag functions
select 
d.* ,
lag(d.emp_salary)over(partition by d.emp_department order by d.emp_id) as previous_salary
from details d;
select * from details;
select 
d.* ,
lag(d.emp_salary,1,0)over() as previous_salary
from details d;
select d.*,
lead(d.emp_salary,2,0) over(partition by d.emp_department order by d.emp_id) as next_salary
from details d;
select d.*,
lag(d.emp_salary,1,0)over(partition by d.emp_department order by d.emp_id) as previous_salary,
lead(d.emp_salary,1,0) over(partition by d.emp_department order by d.emp_id) as next_salary
from details d;
select d.*,
lag(d.emp_salary,1,0)over() as previous_salary,
lead(d.emp_salary,1,0) over() as next_salary
from details d;

select d.* ,
lag(d.emp_salary,1,0) over(partition by emp_department order by emp_id) as previous_salary,
case
	when d.emp_salary> lag(d.emp_salary,1,0) over(partition by emp_department order by emp_id) then 'Higher'
    when d.emp_salary< lag(d.emp_salary,1,0) over(partition by emp_department order by emp_id) then 'Lower'
    when d.emp_salary =  lag(d.emp_salary,1,0) over(partition by emp_department order by emp_id) then 'Same'
    end sal_range
from details d ;
-- First_Value , Last_Value Functions
SELECT * FROM gadgets;
select g.*,
first_value(g.name) over(partition by g.category order by g.price) as cheapest
from gadgets g;
select g.*,
first_value(g.name) over(partition by g.category order by g.price desc) as most_expensive
from gadgets g;
select g.*,
last_value(g.name) over(partition by g.category order by g.price desc) as cheapest
from gadgets g;
-- Frame Clause
select g.*,
last_value(g.name) over(partition by g.category order by g.price desc
range between unbounded preceding and unbounded following
) as cheapest
from gadgets g;









    
    












