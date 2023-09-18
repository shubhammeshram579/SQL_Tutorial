/*subqueries */
use sql_store
SELECT * FROM customers

-- find the min values by points--
SELECT * FROM  customers
WHERE points in (select min(points) from customers)

-- find the min grether then points values--
SELECT * FROM customers
WHERE points > (select min(points) from customers)
ORDER BY points desc 

-- find the max less then points values--
SELECT * FROM customers
WHERE points < (select max(points) from customers)
ORDER BY points desc

-- find the avg less points values-- 
SELECT * FROM customers
WHERE first_name REGEXP "A"
and points <= (select avg(points) from customers)
OREDR BY points desc