SELECT a.name accounts,
	COUNT(*) orders
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY a.name
HAVING COUNT(*) > 20
ORDER BY orders DESC;