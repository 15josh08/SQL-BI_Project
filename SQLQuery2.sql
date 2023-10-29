use Pizza
select datename(dw, order_date) as order_day,count(distinct order_id) as num_of_orders from pizza_sales
group by datename(dw, order_date)



SELECT 
	CASE
		WHEN hrs < 12 THEN 'morning'
		WHEN hrs BETWEEN 12 AND 18 THEN 'afternoon'
		WHEN hrs >= 18 THEN 'evening'
	END AS T_of_day,
	COUNT(order_id) AS orders
FROM pizza_sales
GROUP BY 
	CASE 
		WHEN hrs < 12 THEN 'morning'
		WHEN hrs BETWEEN 12 AND 18 THEN 'afternoon'
		WHEN hrs >= 18 THEN 'evening'
	END


 




