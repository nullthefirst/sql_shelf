SELECT
	DATE_PART('year', o.occurred_at) months,
	MAX(o.total) sales_orders
FROM orders o
GROUP BY 1
ORDER BY 2 DESC;