SELECT a.name account,
	a.id account_id,
	r.name region,
    r.id region_id
FROM accounts a
JOIN sales_reps s
ON a.sales_rep_id = s.id
JOIN region r
ON s.region_id = r.id;

SELECT DISTINCT id, name
FROM accounts;