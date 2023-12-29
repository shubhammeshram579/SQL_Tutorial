
/* Operators in MySQL perform operations on data. Examples include arithmetic operators (+, -, *, /), 
   comparison operators (=, <>,<,> <=, >=), and logical operators (AND, OR, NOT,BETWEEN).*/
   


select * from customers;
  
-- 1. Arithmetic Operators (+ - * / %)--


/* i) select points columns from customer table and addition(+) 120 points each of the data*/

select *, (Points + 120) as plustpoints  
from customers;

/* ii) select points columns from customer table, minus(-) 102 points each of the data*/

select *, (Points - 102) as minustpoints  
from customers;

/* iii) select points columns from customer table, multiply(*) 10 points each of the data*/

select *, (Points * 10) as mplpoints  
from customers;


/* iv) select points columns from customer table, Divide by 3 points each of the data*/

select *, (Points /10) as mplpoints  
from customers;

select *, (Points % 10) as mplpoints  
from customers;



-- 2. comparison Operators  (< > <= >= <> !=) --


/* select points columns and find the > 1000 values*/

select * from customers
where points > 1000;


/* select points columns and find the < 1000 values*/

select * from customers
where points < 1000;


/* select points columns and find  the >= 300 values*/

select * from customers
where points >= 300;


/* select points columns and find the  <= 300 values*/

select * from customers
where points <= 300;


/* select points columns and not showing the 947 points values*/

select * from customers
where points != 947;

-- 3. logical operators (AND,BETWEEN, OR, NOT) --

 -- AND-- 
select * from customers
where points > 300 and points < 1000;

-- Between --
select * from customers
where points between 300 and 1000;

-- or --
select * from customers
where points = 947 or points = 457;

-- not --
select * from customers
where not points = 947 or points = 457;
