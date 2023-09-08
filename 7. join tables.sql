/* join dataset using join fuction in sql (inner join ,left join ,right join ,self join)*/

/*1. A JOIN clause is used to combine rows from two or more tables, based on a related column between them.*/

SELECT * 
FROM sql_store.products p
JOIN sql_store.customers c
on c.customer_id = p.product_id

/*2. The INNER JOIN keyword selects records that have matching values in both tables.*/
SELECT * 
FROM sql_store.products p
inner join sql_store.customers c
on c.customer_id = p.product_id

/*3. The LEFT JOIN keyword returns all records from the left table (table1), and the matching records from the right table (table2).*/ 
--The result is 0 records from the right side, if there is no match.--

SELECT * 
FROM sql_store.products p
LEFT JOIN sql_store.customers c
on c.customer_id = p.product_id

/*4. The RIGHT JOIN keyword returns all records from the right table (table2), and the matching records from the left table (table1). */
--The result is 0 records from the left side, if there is no match.--

SELECT * 
FROM sql_store.products p
RIGHT JOIN sql_store.customers c
on c.customer_id = p.product_id



use sql_store

/* 5. A self join is a regular join, but the table is joined with itself.*/
SELECT a.first_name as first_name1 , b.first_name as first_name2 ,a.state
FROM customers a , customers b
WHERE a.customer_id <> b.customer_id
AND a.state = b.state
order by a.state
