/*windows functions*/

/*create new table*/
create table WF_NEW(
new_id numeric,
category varchar(55)
)

insert into WF_NEW()
value (1200,"apple"),
(1300,"apple"),
(1500,"orange"),
(1600,"orange"),
(1800,"mosombi"),
(1200,"mosombi"),
(1000,"mosombi")



SELECT * from WF_NEW


/*1. aggregate function*/
SELECT new_id,category,
SUM(new_id) OVER(PARTITION BY category ORDER BY new_id) as "total",
MIN(new_id) OVER(PARTITION BY category ORDER BY new_id) as "Min",
MAX(new_id) OVER( PARTITION BY category ORDER BY new_id) as "max",
AVG(new_id) OVER( PARTITION BY category ORDER BY new_id) as "avarage",
COUNT(new_id) OVER( PARTITION BY category ORDER BY new_id) as "count"
from WF_NEW


/* second method for rows between unbounded preceding and unbounded following*/
SELECT new_id,category,
SUM(new_id) OVER(ORDER BY new_id rows between unbounded preceding and unbounded following ) as "total",
MIN(new_id) OVER(ORDER BY new_id rows between unbounded preceding and unbounded following) as "Min",
MAX(new_id) OVER(ORDER BY new_id rows between unbounded preceding and unbounded following) as "max",
AVG(new_id) OVER( ORDER BY new_id rows between unbounded preceding and unbounded following) as "avarage",
COUNT(new_id) OVER(ORDER BY new_id rows between unbounded preceding and unbounded following) as "count"
from WF_NEW


/*2. Ranking function*/
SELECT new_id,
ROW_NUMBER() OVER(ORDER BY new_id) as "row_number",
RANK() OVER(ORDER BY new_id) as "rank",
DENSE_RANK() OVER(ORDER BY new_id) as "dense_rank",
PERCENT_RANK() OVER(ORDER BY new_id) as "percent_rank"
from WF_NEW


/*3. analysis function*/ 
SELECT new_id,
FIRST_VALUE(new_id) OVER( ORDER BY new_id) AS "FIRST_VALUE",
LAST_VALUE(new_id) OVER( ORDER BY new_id) AS "LAST_VALUE", 
LEAD(new_id) OVER( ORDER BY new_id) AS "LEAD",
LAG(new_id) OVER( ORDER BY new_id) AS "LAG"
FROM WF_NEW


/* LEAD AND LAG function*/
SELECT new_id,
LEAD(new_id,2) OVER( ORDER BY new_id) AS "LEAD",
LAG(new_id,2) OVER( ORDER BY new_id) AS "LAG"
FROM WF_NEW
