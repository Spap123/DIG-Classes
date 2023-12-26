-- Windows Function - Analytical Functions
-- Over Clause
select emp_department , max(emp_salary)
from details
group by emp_department;
select * , max(emp_salary)
over(partition by emp_department) as 'max_salary'
from details;
select * , min(emp_salary)
over(partition by emp_department) as 'min_salary'
from details;
select * , avg(emp_salary)
over(partition by emp_department) as 'avg_salary'
from details;
-- Row Number
select * from details;
select row_number() over() as rn,emp_id,emp_name
from details;
select * , row_number() over(partition by emp_department) as rn
from details;
select * , row_number()over(partition by emp_department order by emp_salary desc) as rn
from details;
select * from 
(select * , row_number()over(partition by emp_department order by emp_salary desc) as rn
from details) X
where X.rn < 3;
select * , row_number()over(partition by emp_department order by emp_salary desc) as rn
from details;
select details.emp_name
from details;
-- Rank Number
select *, rank() over(partition by emp_department order by emp_salary desc) as rnk
from details;
-- Dense Rank
select * , dense_rank() over(partition by emp_department order by emp_salary desc) as drank
from details;
select * ,
row_number()over(partition by emp_department order by emp_salary desc) as row_n,
rank() over(partition by emp_department order by emp_salary desc) as rank_n,
dense_rank() over(partition by emp_department order by emp_salary desc) as dense_rank_n
from details;





