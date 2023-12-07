SELECT * FROM employee_details.details;
-- window/analytical functions in MySQL
-- window functions complies your query better
-- window functions optimizes your query better
select max(emp_salary) from details;
-- group by query workflow
-- first the query will group the data based on given argument
-- then the perform the query operation on all of those groups individually
select emp_department, max(emp_salary) as 'Max Salary'
from details
group by emp_department;
-- Over Clause
-- provide us with the average salary in each department
select * , avg(emp_salary)
over(partition by emp_department) as avg_salary
from details;
-- provide us with the maximum salary in each department
select * , max(emp_salary)
over(partition by emp_department) as max_salary
from details;
-- provide us with the minimum salary in each department
select * , min(emp_salary)
over(partition by emp_department) as min_salary
from details;
-- provide us with the count of employees in each department
select * , count(emp_id)
over(partition by emp_department) as emp_count
from details;
-- Row Number Clause



