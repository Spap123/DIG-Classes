-- SQL Views
select * from employee where sex = 'M';
create view male_emp 
as select * from employee where sex = 'M';
select first_name from male_emp where salary>70000;
select first_name from employee where salary>70000;
create view female_emp 
as select * from employee where sex = 'F';
select * from female_emp;
alter view 
female_emp as select * from 
employee where sex = 'F' and salary>60000;
select * from female_emp;

-- SQL Sub queries
-- Find out the student name with the highest grade
-- single row sub query
select * from student_grades;
select student_name
from students
where
student_id = (select student_id from student_grades order by grade desc limit 1);
select * from students;
-- multiple row sub-query
-- find all the students who has grades 90 or above
select *
from students
where student_id in (select student_id from student_grades where grade>= 90);
-- Multiple Column Subquery 
-- find students who's age matches average age of all students
select avg(age) from students; -- inner query
select student_name  from students where age = (select avg(age) from students);
select student_name  from students where age = 21;




