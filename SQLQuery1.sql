use pizza

select sum(total_price) as Total_revenue 
from pizza_sales

select count(pizza_id) as total_pizza
from pizza_sales  as order_value

select top 1
(select sum(total_price) as Total_revenue 
from pizza_sales) / (select count(distinct(order_id)) as total_orders
from pizza_sales) as order_value
from pizza_sales

select sum(quantity) as total_sale
from pizza_sales

select count(distinct(order_id)) as total_orders
from pizza_sales

select 
cast(cast(sum(quantity) as decimal(10,2))/cast(count(distinct(order_id)) as decimal(10,2)) as decimal(10,2)) as avg_pizza_order 
from pizza_sales







