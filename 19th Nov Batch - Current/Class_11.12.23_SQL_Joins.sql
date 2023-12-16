-- SQL JOINS
-- Join - Inner
select e.*,b.*
from employee e
join branch b
on e.branch_id = b.branch_id;
-- Join - Left
select e.first_name,e.last_name,ifnull(c.client_name,'no client')
from client c
left join employee e
on e.branch_id = c.branch_id;
select w.client_id,w.total_sales,e.first_name
from employee e
right join works_with w
on w.emp_id = e.emp_id;
-- BRD - Business required documents
-- What information is required
-- where exactly these informations are located
-- are all these informations present or we need to generate them
-- are these things in the same table or joins required
-- which should be the primary table

select ifnull(w.client_id,'not present'),ifnull(w.total_sales,'not present')
,ifnull(e.first_name,'not present'),
ifnull(e.super_id,'not present')
from employee e right join works_with w on w.emp_id = e.emp_id
union
select ifnull(w.client_id,'not present'),ifnull(w.total_sales,'not present')
,ifnull(e.first_name,'not present'),
ifnull(e.super_id,'not present')
from employee e left join works_with w on w.emp_id = e.emp_id;
select ifnull(w.client_id,'not present'),ifnull(w.total_sales,'not present')
,ifnull(e.first_name,'not present'),
ifnull(e.super_id,'not present')
from employee e right join works_with w on w.emp_id = e.emp_id;
select ifnull(w.client_id,'not present'),ifnull(w.total_sales,'not present')
,ifnull(e.first_name,'not present'),
ifnull(e.super_id,'not present')
from employee e left join works_with w on w.emp_id = e.emp_id;

select e.first_name , e.last_name , e1.first_name as 'manager_name'
from employee e 
inner join employee e1 
on e.super_id = e1.emp_id;
-- cross join or cartesian
select * from employee 
cross join branch;
















