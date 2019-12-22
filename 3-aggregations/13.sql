SELECT r.name region_name,
	COUNT(s.name) reps
FROM region r
JOIN sales_reps s
ON r.id = s.region_id
GROUP BY r.name
ORDER BY reps;