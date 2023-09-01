
/*1. Addinal fuction mostly used for str in sql*/
SELECT * FROM sql_store.customers

SELECT first_name, upper(first_name) as Capitalise 
FROM sql_store.customers

SELECT first_name, lower(first_name) as Capitalise 
FROM sql_store.customers


SELECT first_name, length(first_name) as Capitalise 
FROM sql_store.customers

SELECT first_name ,substr(first_name,2,3) 
FROM sql_store.customers

SELECT first_name,last_name,concat(first_name,' ',Last_name) as full_name
FROM sql_store.customers

SELECT first_name,replace(first_name,"labham","shubham") as new_name
FROM sql_store.customers

SELECT * FROM sql_store.customers

/*2. basic maths fuctionin sql*/

SELECT sum(points) as total 
FROM sql_store.customers

SELECT max(points) as total 
FROM sql_store.customers

SELECT min(points) as total 
FROM sql_store.customers

SELECT count(points) as total 
FROM sql_store.customers

SELECT std(points) as total 
FROM sql_store.customers

SELECT avg(points) as total 
FROM sql_store.customers

/*3. extract fuction used for mostly date*/

SELECT * FROM sql_store.customers

SELECT birth_date,extract(month FROM birth_date) as months
FROM sql_store.customers


SELECT birth_date,extract(day FROM birth_date) as day
FROM sql_store.customers


SELECT birth_date,extract(year FROM birth_date) as year
FROM sql_store.customers


SELECT birth_date,extract(week FROM birth_date) as week
FROM sql_store.customers


SELECT birth_date,extract(quarter FROM birth_date) as querter
FROM sql_store.customers