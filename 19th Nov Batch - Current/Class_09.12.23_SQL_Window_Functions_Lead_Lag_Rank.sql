-- Rank Function
select e.* ,
rank() over(partition by emp_department order by emp_salary)as rnk
from details e;

select * from
(select e.* , rank() over(partition by emp_department order by emp_salary desc) as rnk from details e)X
where X.rnk < 3;

-- combined rank and row
select e.*,
row_number() over(partition by emp_department order by emp_salary) as row_no,
rank() over(partition by emp_department order by emp_salary)as rank_no,
dense_rank() over(partition by emp_department order by emp_salary)as dense_rank_no
from details e;

-- Lag Function
select e.* ,
lag(emp_salary) over(partition by emp_department order by emp_id) as previous_salary
from details e; 


-- Lag Function
select e.* ,
lag(emp_salary) over(partition by emp_department order by emp_id) as previous_salary
from details e; 
select e.* ,
lag(emp_salary,2,0) over(partition by emp_department order by emp_id) as previous_salary
from details e;

-- Lead Function
select e.*,
lead(emp_salary,1,0) over(partition by emp_department order by emp_id) as next_salary
from details e;

-- Comparison - lead and lag
select e.* ,
lag(emp_salary,1,0) over(partition by emp_department order by emp_id) as previous_salary,
lead(emp_salary,1,0) over(partition by emp_department order by emp_id) as next_salary
from details e;

