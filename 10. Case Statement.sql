/*CASE statement*/
use sql_store
SELECT * FROM customers

/*1 method for find the value by 1500 greter THEN and less THEN remark name*/
SELECT Points,
CASE
    WHEN points > 1500 THEN "good"
    WHEN points <= 1500 THEN "bad"
    ELSE
end as cas_statement
FROM customers

/*2  method  all dataset for find the value by 1500 greter THEN and less THEN remark name*/
SELECT *,
CASE
    WHEN points > 1500 THEN "greter THEN"
    WHEN points <= 1500 THEN "less THEN"
    ELSE
END AS cas_statement
FROM customers


/* 3 multiple SELECT CASE statment change apply the remark*/
SELECT *,
CASE 
   WHEN state like "VA" THEN "VAG"
   WHEN state in ("IL","FL","CA") THEN "final"
   ELSE "no found"
END AS Remark
FROM customers