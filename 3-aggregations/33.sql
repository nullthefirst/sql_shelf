SELECT a.name account_name,
	DATE_TRUNC('month', o.occurred_at) months,
	MAX(o.gloss_qty) gloss_orders
FROM orders o
JOIN accounts a
ON o.account_id = a.id
WHERE a.name = 'Walmart'
GROUP BY 1, 2
ORDER BY 3 DESC
LIMIT 1;