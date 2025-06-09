--1. View the order_details table
SELECT*
FROM order_details;

--2. What is the date range of the table?
SELECT MIN(order_date) as start_date, MAX(order_date) as end_date
FROM order_details;

--3. How many orders were made within this date range?
SELECT COUNT(DISTINCT order_id) as total_orders
FROM order_details;

--4. How many items were ordered within this date range?
SELECT COUNT(*) FROM order_details;

--5. Which orders had the most number of items?
SELECT order_id, COUNT(item_id) num_of_items
FROM order_details
GROUP BY order_id
ORDER BY num_of_items_purchased DESC;

--6. How many orders had more than 12 items?

SELECT COUNT(*) 
FROM 
(SELECT order_id, COUNT(item_id) AS item_count
FROM order_details
GROUP BY order_id
HAVING COUNT(item_id) > 12) as num_orders;






