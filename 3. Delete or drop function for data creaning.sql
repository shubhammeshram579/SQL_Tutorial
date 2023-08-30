/* data creaning using delete function for column  or raw  and data table remove the dataset*/
SELECT* From customer
SELECT* From covid_vac

/*1. delete pincode column From customer data*/
alter table customer
drop column pin_code

/*2. delete From cumstomer_id 4 number raw data*/
DELETE From customer
WHERE customer_id = 4


/*3. create new table as cust for copy customer table*/
create table cust
SELECT* From customer

/*4. delete table dataset*/
drop table cust
SELECT* From cust

/*5. delete data From first_name is shubham customer*/
DELETE From customer
WHERE first_name = "Shubham"

/*6. delete for null values for total_booster column*/
DELETE From covid_vac
WHERE total_boosters is null


/*7. i want to delete using subquries, for some male people are the age about 65 to 75 range */
DELETE From covid_vac
WHERE location in (SELECTlocation From covid_vac WHERE male_smokers between 65.50 and 70.5)


