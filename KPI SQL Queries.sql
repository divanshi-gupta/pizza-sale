--KPI

--Total Revenue
SELECT SUM(total_price)  AS Total_Revenue from pizza_sales

SELECT * FROM pizza_sales

--Average Order Value
SELECT SUM(total_price) / COUNT(DISTINCT order_id) AS Avg_Order_Value from pizza_sales

--Total Pizzas sold
SELECT SUM(quantity) AS Total_Pizza_Sold from pizza_sales;

--Total Orders Placed
SELECT COUNT(DISTINCT order_id) AS Total_orders from pizza_sales;

--Average Pizza per order
SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) / 
CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2))
AS Avg_Pizzas_per_order
FROM pizza_sales;




