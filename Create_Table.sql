/*create new database*/
CREATE DATABASE sql_turial

/*use fuction is help to selected database*/
USE sql_turial


/*create new table for customer*/
CREATE TABLE customer (
                        customer_id NUMERIC,
                        first_name VARCHAR(55),
			last_name VARCHAR(55),
			city VARCHAR(15),
			pin_code NUMERIC,
			product_name VARCHAR(250),
                        product_order NUMERIC,
                        Sales NUMERIC
                       )



/*insert into fuction is help to add new data points*/
INSERT INTO customer()
VALUES  (1,"shubham","meshram","Gondia",411601,"mobile",2,24000),
	(2,"Labham","Mesra","Nagpur",411001,"iphone",3,36000),
        (3,"Aachal","varma","murpar",411010,"moto",4,43000),
        (4,"Pallavi","meshram","Hydrabad",411011,"realmy",7,12000),
        (5,"Parmanand","Agrval","Delhi",411012,"nokia",2,25000)


/*view created dataset*/
SELECT * FROM customer
