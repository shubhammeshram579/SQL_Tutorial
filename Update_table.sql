/*update table*/
SELECT * FROM CUSTOMER


/*1. Single update*/
UPDATE customer
SET 
   first_name = "Rahul"
   WHERE customer_id = 4


/*2. Multiple update*/
UPDATE customer
SET 
   last_name = "Shah", Sales=25000
   WHERE customer_id like 4


/*3. Update by names wise*/
UPDATE customer
SET 
   Sales = 55000
   WHERE first_name LIKE "shubham"


/*4. update by multiple id*/
UPDATE customer
SET 
   Sales = 3900
   WHERE customer_id in (2,5)


/*5. update by subqueries max values */
UPDATE customer
SET 
   Sales = (select max(Sales) from cust)
WHERE customer_id like 4


/*6. update subqueries by min values */
UPDATE customer 
SET 
   Sales = 45000
WHERE Sales IN (select min(Sales) from cust)


/*7. update subqueries by multiple id > */
UPDATE customer 
SET 
   Sales = 35000
WHERE customer_id in (select customer_id from cust where customer_id > 3)