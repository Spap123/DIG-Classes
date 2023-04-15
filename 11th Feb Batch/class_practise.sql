select g.*,
nth_value(name,2) over(partition by category order by price desc range between unbounded preceding 
and unbounded following) from gadgets g;