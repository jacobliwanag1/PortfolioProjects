-- 1. View the menu_items table
SELECT*
FROM menu_items;

-- 2. Find the number of items on the menu
SELECT COUNT(*) as num_of_items
FROM menu_items;

-- 3. What are the least and most expensive items on the menu?
SELECT item_name,category, price
FROM menu_items
ORDER BY price 
LIMIT 1;
--least
SELECT item_name, price
FROM menu_items
ORDER BY price DESC
LIMIT 1;
--most

--4. How many Italian dishes are on the menu?
SELECT COUNT(*) as num_of_ital_dishes
FROM menu_items
WHERE category = 'Italian'


--5. What are the least and most expensive Italian dishes on the menu?
SELECT item_name,category, price
FROM menu_items
WHERE category = 'Italian'
ORDER BY price 
LIMIT 1;
--least

SELECT item_name, price
FROM menu_items
WHERE category = 'Italian'
ORDER BY price DESC
LIMIT 1;
--most

--6. How many dishes are in each category?
SELECT category, COUNT(*) as num_dishes
FROM menu_items
GROUP BY category;

--7. What is the average dish price with each category?
SELECT category, ROUND(AVG(price),2) as average_price
FROM menu_items
GROUP BY category;



