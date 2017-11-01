MY  SAMPLE SELECT  for Chinook database  https://github.com/lerocha/chinook-database 

SELECT  *
FROM TRACK
where composer  like '%'

SELECT  *
FROM TRACK
where composer is null        

select *
from track 
where UNITPRICE  BETWEEN 1 and 2 AND COMPOSER is null


select name, round(milliseconds/60000,2)
from track
order by milliseconds DESC
