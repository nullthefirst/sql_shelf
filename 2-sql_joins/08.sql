SELECT r.name AS region_name,
	s.name AS sales_rep,
    a.name AS account_name
FROM region AS r
JOIN sales_reps AS s
ON r.id = s.region_id
JOIN accounts AS a
ON s.id = a.sales_rep_id
WHERE r.name = 'Midwest' AND s.name LIKE 'S%'
ORDER BY a.name;