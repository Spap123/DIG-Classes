SELECT e.first_name , e.last_name , b.branch_name,
CASE 
    WHEN salary>70000 THEN salary+(salary*0.2)
    WHEN salary BETWEEN 60000 and 70000 then salary+(salary*0.3)
    ELSE salary+(salary*0.6)
END AS emp_incremented_salary
FROM employee e JOIN branch b
ON e.branch_id = b.branch_id;