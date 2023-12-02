-- single row sub query -
-- lets find the student with highest grade
select student_name
from students
where student_id= (
select student_id from grades order by grade desc limit 1
);
-- multiple row subquery
-- find out all the students who has grades above 90
select student_name
from students
where student_id=(select student_id from grades where grade>90);
-- multiple column subquery
-- find out students who's age matches the average age of all students
select student_name
from students
where age = 
(select avg(age) from students);
-- co related sub query
-- we want to find out student's who has grades higher than the average grade in their respective age group

select student_name,age,grade
from students s 
join grades g on s.student_id = g.student_id
where grade>=
(select avg(grade) from grades);





