-- Revision practice sql queries--


show databases;

use sql_store;

SELECT * FROM customers;

-- find the fisrt name and last name by points grether then 1500-- 
SELECT first_name,last_name,points
FROM customers
WHERE points > 1500
order by first_name;

-- find the fl state only customer details--  

SELECT * FROM customers
WHERE state like "FL";

-- find the  multiple state customer tragection details like FL and CA--  

SELECT * FROM customers
WHERE state in ("FL","CA");


-- SELECT first_name first alpbate R cutomer name list in this dataset-- 

SELECT * FROM customers
WHERE first_name regexp "^R";

SELECT * FROM customers
WHERE first_name regexp "R$";

SELECT * FROM customers
WHERE first_name regexp "^R|A$";

SELECT * FROM customers
WHERE first_name like "a%";

SELECT * FROM customers
WHERE first_name like "%a";



-- condition opration--

SELECT *,
case
	when points > 1500 and points < 2000 then "medium"
    when points > 2000 and points < 5000 then "high"
    else "low"
end as if_statment
FROM customers;


-- group by state wise total of poits-- 
SELECT state ,sum(points) as total_poits
FROM customers
group by state
order by total_poits desc;

-- find points of count,avg, sum, min,max FROM customers data-- 

SELECT count(*)
FROM customers;

SELECT avg(points) as total_poits
FROM customers;

SELECT sum(points) as total_poits
FROM customers;

SELECT min(points) as min_poits
FROM customers;

SELECT max(points) as max_poits
FROM customers;

SELECT std(points) as std_points
FROM customers;


-- subqueries in sql--
-- SELECT query for avg of points > customers list--
SELECT *
FROM customers 
WHERE points > (SELECT avg(points) FROM customers);

-- SELECT query for std of points > customers list--
SELECT *
FROM customers 
WHERE points > (SELECT std(points) FROM customers);


-- SELECT a query for only FL state customer details showing --
SELECT *
FROM customers 
WHERE state in (SELECT state FROM customers WHERE state like "FL");

-- window function--
-- aggragated fuction in sql--

SELECT *,
sum(points) over(partition by points order by points ) as "Total_points",
avg(points) over(partition by points order by points) as "avg_points",
min(points) over(partition by points order by points) as "min_points",
max(points) over(partition by points order by points) as "max_points",
count(points) over(partition by points order by points) as "count_points"
FROM customers;


-- rank function--

SELECT first_name ,points,
row_number() over( partition by first_name order by points) as "Total_row_number",
rank() over( partition by first_name order by points) as "Rank",
dense_rank() over(partition by first_name order by points ) as "Dense_rank",
percent_rank() over(partition by first_name order by points) as "percent_rank"
FROM customers;


-- analyst function--
SELECT points,
first_value(points) over( order by points) as "first_value",
last_value(points) over(order by points) as "last_values",
lag(points ,2) over(order by points) as "lag",
lead(points,2) over(order by points) as "lead"
FROM customers;


SELECT * FROM customers;
-- date split using extract function--

SELECT 
extract(month FROM birth_date) as "month",
extract(year FROM birth_date) as "year",
extract(day FROM birth_date) as "day"
FROM customers;



-- join multiple table like customet and orders table--
SELECT * FROM orders;
SELECT * FROM customers;

SELECT *
FROM customers c
join orders o on o.customer_id = c.customer_id ;


-- left join--
SELECT *
FROM customers c
left join orders o on o.customer_id = c.customer_id ;


-- right join--
SELECT *
FROM customers c
right join orders o on o.customer_id = c.customer_id ;



-- SELECT particular column after join statement--

SELECT c.first_name,c.last_name , o.comments
FROM customers c
join orders o on o.customer_id = c.customer_id
order by c.first_name desc
