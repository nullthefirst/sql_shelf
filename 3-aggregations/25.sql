SELECT a.name account,
	MAX(o.total_amt_usd) spending
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY a.name
ORDER BY spending DESC
LIMIT 1;