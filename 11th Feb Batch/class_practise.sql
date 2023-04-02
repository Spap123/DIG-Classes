select e.first_name , b.branch_name , c.client_name
from branch b 
join client c ON b.branch_id = c.branch_id
join employee e ON b.mgr_id = e.super_id;