use Pizza
select distinct pizza_category,count(quantity) as Num_of_pizza 
from pizza_sales
group by pizza_category

select distinct pizza_size,count(quantity) as Num_of_pizza 
from pizza_sales
group by pizza_size;


with cte_main as
	(select distinct pizza_name as Pizza, cast(sum(total_price) as decimal(10,2)) as revenue 
	from pizza_sales
	group by pizza_name
	) 

select top 5 Pizza, revenue from cte_main
order by revenue desc;


with cte_main as
	(select distinct pizza_name as Pizza, cast(sum(total_price) as decimal(10,2)) as revenue 
	from pizza_sales
	group by pizza_name
	) 

select top 5 Pizza, revenue from cte_main
order by revenue 




