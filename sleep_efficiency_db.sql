-- Find out the average sleep duration of top 15 male candidates who's sleep duration are equal to 7.5 or greater than 7.5.
select se.ID,avg(se.`Sleep duration`) as 'avg_sleep'
from se
where `Sleep duration`>=7.5
group by ID
order by avg_sleep desc
limit 15


