SELECT
	DATE_TRUNC('month', o.occurred_at) months,
	MAX(o.total_amt_usd) sales
FROM orders o
GROUP BY 1
ORDER BY 2 DESC;