/*
find all information regarding individuals 
who were contacted via the organic or adwords channels, 
and started their account at any point in 2016, sorted from newest to oldest
*/

SELECT *
FROM web_events
WHERE channel IN ('organic', 'adwords')
	AND occurred_at BETWEEN '2016-01-01' AND '2017-01-01';