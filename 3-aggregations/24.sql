SELECT a.name account,
	MAX(o.total) orders
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY a.name, o.total
HAVING o.total < 1000
ORDER BY orders DESC
LIMIT 1;