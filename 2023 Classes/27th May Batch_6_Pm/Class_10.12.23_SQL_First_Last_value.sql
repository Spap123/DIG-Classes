-- First Value
-- with the help of first value window function can extract the most expensive product on each category
select g.*,
first_value(name) over(partition by category order by price desc) 
as most_expensive
from gadgets g;
select g.*,
first_value(name) over(partition by category order by price) 
as least_expensive
from gadgets g;
select g.*,
last_value(name) over(partition by category order by price desc) 
as least_expensive
from gadgets g;
-- frame clause
-- range between unbounded preceding and current row
select g.*,
last_value(name) over(partition by category order by price desc 
range between unbounded preceding and current row) 
as least_expensive
from gadgets g;
-- First Value
-- with the help of first value window function can extract the most expensive product on each category
select g.*,
first_value(name) over(partition by category order by price desc) 
as most_expensive
from gadgets g;
select g.*,
first_value(name) over(partition by category order by price) 
as least_expensive
from gadgets g;
select g.*,
last_value(name) over(partition by category order by price desc) 
as least_expensive
from gadgets g;
-- frame clause
-- range between unbounded preceding and current row
select g.*,
last_value(name) over(partition by category order by price desc 
range between unbounded preceding and current row) 
as least_expensive
from gadgets g;

select g.* ,
last_value(name) over(partition by category order by price desc 
range between unbounded preceding and unbounded following) 
as least_expensive
from gadgets g;

select category , name , price
from(
	select
		category,
        name,
        price,
        row_number() over(partition by category order by price) as row_num from gadgets) as ranked
where row_num = 1;

select category,brand,min(price) from gadgets
group by category,brand
limit 3;

select g.*,
first_value(name) over w as expensive_product,
last_value(name) over w as cheap_product
from gadgets g 
window w as (partition by category order by price desc range between unbounded preceding and  unbounded following);










