-- DDL - Data definition language - Create , Drop , Alter , Truncate
-- DML - Data manupulation langugae - Insert , Update , Delete , Lock 
-- TCL - Transaction control language - Commit , Savepoint , Rollback 
-- DQL - Data query language - Select 
-- DCL - - Data control language - Grant , Revoke

select * from employee;
-- where clause
-- i want to fetch all the information where the employees are male
select * from employee where sex = 'M' and salary > 70000 and birth_day > '1965-01-01';
-- i want to fetch all the information where the employees are either female or earns more than 60000
select * from employee where sex = 'F' or salary > 60000;
-- order by clause
-- i want to fetch information on all the employees based on their salary , from highest to lowest (deafult order by is ascending)
select * from employee order by salary desc;
-- group by clause 
-- aggregated data comes along with group by clause
select sex,branch_id,min(salary) from employee 
group by branch_id,sex;
-- having clause
select sex,avg(salary)
from employee
group by sex;
-- combining the clauses
select first_name,last_name,salary from employee 
where sex = 'F' and salary > 60000;







