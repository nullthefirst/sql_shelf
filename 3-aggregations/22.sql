SELECT a.name account,
	MAX(o.total) orders
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY a.name
ORDER BY orders DESC
LIMIT 1;