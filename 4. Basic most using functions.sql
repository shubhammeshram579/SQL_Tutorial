
/*I. basic most used fuctions in sql */
SELECT * FROM sql_store.customers

/*1. find the customer first name is Ilene FROM this customer table using LIKE fuction */
SELECT * FROM sql_store.customers
WHERE  first_name LIKE "Ilene"

/*2. find the text start to m */
SELECT * FROM sql_store.customers
WHERE  last_name LIKE "m%"

/*3. find the text end to m */
SELECT * FROM sql_store.customers
WHERE  last_name LIKE "%m"

-- find the text midele to s-- 
SELECT * FROM sql_store.customers
WHERE  last_name LIKE "__s%"

/4. find the cutomer last name start to M caplital FROM cutomer table using regxp */
SELECT * FROM sql_store.customers
WHERE last_name REGEXP "^M"

/*5. find the cutomer last name end to text m FROM cutomer table using regxp */
SELECT * FROM sql_store.customers
WHERE last_name REGEXP "m$"

/*6. find multiple text LIKE start to R OR end to y */
SELECT * FROM sql_store.customers
WHERE last_name REGEXP "^R|y$"

/*7. find the customer name is Romola AND Levy FROM the customer table using the in fuction */
SELECT * FROM sql_store.customers
WHERE first_name in ("Romola","Levy")  


/*II. used AND, OR, NOT, NULL fuction in sql  */

-- OR fuction used fOR maltiple queries run--   
SELECT * FROM sql_store.customers
WHERE points > 1000 OR points < 500

-- AND fuction used fOR maltiple queries run--
SELECT * FROM sql_store.customers
WHERE points >= 1000
AND birth_date >= "1973-11-07"

-- Not function is used to not show this paticulater statement OR mabey values OR text-- 
SELECT * FROM sql_store.customers
WHERE not points >= 1000
AND not birth_date >= "1973-11-07"

--NULL function used to find the NULL values--
SELECT * FROM sql_store.customers
WHERE birth_date is NULL

--is not NULL is not showing NULL values--
SELECT * FROM sql_store.customers
WHERE birth_date is not NULL

--find the point values are BETWEEN 1000 to 1500 under--
SELECT * FROM sql_store.customers 
WHERE points between 1000 AND 1500

--limit fuction SELECTthe raw of data as per want to show statement--
SELECT * FROM sql_store.customers
LIMITE 5
