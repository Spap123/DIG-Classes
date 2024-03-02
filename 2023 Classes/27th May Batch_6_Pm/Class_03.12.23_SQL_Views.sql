-- SQL Views
-- sql views are temporary tables , containing main table information and is dynamic
select * from details
where emp_department = 'Sales';
alter view sales_dept as
select * from details
where emp_department = 'Sales';
select * from sales_dept where emp_salary>8000;
create view admin_dept as select * from details
where emp_department = 'Admin';
select * from admin_dept;
select * from sales_dept;
