/*1. create new table fo tata_groupss*/
CREATE TABLE tata_groupss(
group_id NUMERIC,
client_name VARCHAR(255),
state VARCHAR(20),
Sales NUMERIC)

INSERT INTO tata_groupss()
VALUES (1,"titin","MH",3400),
        (2,"tata motors","MP",3000),
        (3,"tata steel","CG",5000),
        (4,"titin","AP",6000),
        (5,"titin","MH",4500),
        (5,"titin","MH",4500)
        
        
        
SELECT * FROM tata_groupss

/*2. find the titin group total sales*/

SELECT  client_name,sum(Sales) AS total_sales
FROM tata_groupss
GROUP BY client_name
ORDER BY  total_sales DESC

/*3. having count is help to total count of columns wise or all dataset*/
SELECT client_name,count(client_name) AS counts
FROM tata_groupss
GROUP BY client_name
HAVING count(client_name)>1

/*4. order by asending or descing*/
SELECT * 
FROM customers
ORDER BY  first_name DESC

SELECT * 
FROM customers
ORDER BY first_name ASC

