-- case when statements 
-- if condition 1 is true then the result will be 1
-- if condition 2 is true then the result will be 2
select first_name , last_name,salary,
case 
	when salary >= 70000 then 'Rich'
    when salary between 60000 and 70000 then 'mediocre'
    else 'poor'
end as 'emp_status'
from employee;

-- if salary is more than 70000 then 20%
-- if salary between 60000 and 70000 then 40%
-- if salary below 60000 then 60%

select first_name , last_name,salary,
case 
	when salary >= 70000 then (salary*0.2)
    when salary between 60000 and 70000  then (salary*0.4)
    else (salary*0.6)
end as 'emp_increment'
from employee;

select first_name , last_name,salary,
case 
	when salary >= 70000 then salary+(salary*0.2)
    when salary between 60000 and 70000  then salary+(salary*0.4)
    else salary+(salary*0.6)
end as 'emp_incremented_salary'
from employee;





