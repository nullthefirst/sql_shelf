SELECT a.name account,
	a.id account_id,
	s.name rep_name,
    s.id rep_id
FROM accounts a
JOIN sales_reps s
ON a.sales_rep_id = s.id;

SELECT DISTINCT s.name, s.id
FROM sales_reps s