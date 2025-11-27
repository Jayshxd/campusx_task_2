-- Find out the average sleep duration of top 15 male candidates whose sleep duration are equal to 7.5 or greater than 7.5.
select se.ID,avg(se.`Sleep duration`) as 'avg_sleep'
from se
where `Sleep duration`>=7.5
group by ID
order by avg_sleep desc
limit 15


--  Show avg deep sleep time for both gender. Round result at 2 decimal places.
select Gender,round(avg(`Deep sleep percentage`),2) as 'avg_deep_sleep'
from se
group by Gender



--