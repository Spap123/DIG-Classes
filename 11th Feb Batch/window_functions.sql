SELECT e.* ,
ROW_NUMBER() OVER(PARTITION BY emp_department ORDER BY emp_salary) AS Rownum ,
RANK() OVER(PARTITION BY emp_department ORDER BY emp_salary) AS Rnk,
DENSE_RANK() OVER(PARTITION BY emp_department ORDER BY emp_salary) AS DRnk FROM
details e;