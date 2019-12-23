SELECT
	DATE_TRUNC('month', o.occurred_at) months,
	MAX(o.total) sales_orders
FROM orders o
GROUP BY 1
ORDER BY 2 DESC;