-- DDL - Data definition language - Create , Drop , Alter , Truncate
-- DML - Data manupulation langugae - Insert , Update , Delete , Lock 
-- TCL - Transaction control language - Commit , Savepoint , Rollback 
-- DQL - Data query language - Select 
-- DCL - - Data control language - Grant , Revoke

-- select statement 
select * from employee;
select first_name,last_name from employee;
-- where clause
select * from employee where salary >70000;
-- first condition - salary range
-- second condition - gender selection
-- third condition - branch selection
-- all of the above condition needs to be true for and operator
select * from employee where salary >70000 and sex = 'M' and branch_id = 3;
-- first condition - gender selection
-- second condition - branch selection
-- any of the condition can be true
select * from employee where sex = 'F' and branch_id = 2;
select * from employee where sex = 'M' or branch_id != 3;
-- group by clause
select sex,count(emp_id),sum(salary) 
from employee
where branch_id = 2
group by sex;
-- order by clause - default is ascending order 
select * from employee order by salary desc;
-- having clause
select sex , sum(salary)
from employee
group by sex
having sum(salary)>80000;
-- what are the clients of those employee for whom the salary is more than 70000
-- sub query
select em.first_name,em.last_name,c.client_name 
from works_with w 
join client c on w.client_id = c.client_id
join employee em on w.emp_id = em.emp_id 
where em.emp_id in
(select emp_id from employee where salary>70000);


