select category ,name ,cume_distribution 
from (select gadgets.*, round(cume_dist() over(order by price)*100,2) as cume_distribution FROM
gadgets) X
where x.cume_distribution >=30;