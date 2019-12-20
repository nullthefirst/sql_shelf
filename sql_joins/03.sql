SELECT r.name AS region_name, 
	s.name AS sales_rep_name, 
    a.name AS account_name
FROM accounts AS a
JOIN sales_reps AS s
ON a.sales_rep_id = s.id
JOIN region AS r
ON s.region_id = r.id;