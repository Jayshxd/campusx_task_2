-- Find out the average sleep duration of top 15 male candidates whose sleep duration are equal to 7.5 or greater than 7.5.
select se.ID,avg(se.`Sleep duration`) as 'avg_sleep'
from se
where `Sleep duration`>=7.5
group by ID
order by avg_sleep desc
limit 15;


--  Show avg deep sleep time for both gender. Round result at 2 decimal places.
select Gender,round(avg(`Deep sleep percentage`),2) as 'avg_deep_sleep'
from se
group by Gender;



-- Find out the lowest 10th to 30th light sleep percentage records where deep sleep percentage values are between 25 to 45. Display age, light sleep percentage and deep sleep percentage columns only.

select se.`Light sleep percentage`,se.Age,se.`Deep sleep percentage`
from se
where `Deep sleep percentage` between 20 and 45
order by `Light sleep percentage`
limit 10,20;


-- Group by on exercise frequency and smoking status and show average deep sleep time, average light sleep time and avg rem sleep time.
SELECT se.`Exercise frequency`,se.`Smoking status`,AVG(se.`Deep sleep percentage`),AVG(se.`Light sleep percentage`),AVG(se.`REM sleep percentage`)
FROM se
GROUP BY `Exercise frequency`,`Smoking status`


-- Group By on Awekning and show AVG Caffeine consumption, AVG Deep sleep time and AVG Alcohol consumption
-- only for people who do exercise atleast 3 days a week.
-- Show result in descending order awekenings

SELECT se.Awakenings AS 'AWAKES',AVG(se.`Caffeine consumption`),AVG(se.`Deep sleep percentage`),AVG(se.`Alcohol consumption`)
FROM se
WHERE `Exercise frequency`>=3
GROUP BY AWAKES
ORDER BY AWAKES DESC