-- Windows/Analytical Functions
select * from details;
select max(emp_salary) from details;
select emp_department,max(emp_salary)
from details
group by emp_department;
-- over clause
select * , max(emp_salary)
over() as 'Maximum salary'
from details;
select * , max(emp_salary)
over(partition by emp_department) as 'Maximum Salary'
from details;
select * , min(emp_salary)
over(partition by emp_department) as 'Mnimum Salary'
from details;
select * , count(emp_id)
over(partition by emp_department) as 'Emp_Count_Deptwise'
from details;
select * , avg(emp_salary)
over(partition by emp_department) as 'Average Salary'
from details;

-- Row Number Clause
select * , row_number() over() as 'row num'
from details;
select * , row_number() over(partition by emp_department) as 'row num'
from details;
select * , row_number() over(
partition by emp_department
order by emp_salary desc
) as 'row_num'
from details;
select * , row_number() over(
partition by emp_department
order by emp_salary 
) as 'row_num'
from details;
-- get us the employee from each department with the highest salary
select * from(
select *,row_number() over(
partition by emp_department
order by emp_salary desc
) as rn from details 
)x where x.rn = 1;




