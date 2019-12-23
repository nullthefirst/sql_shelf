SELECT
	DATE_PART('year', o.occurred_at) years,
	SUM(o.total_amt_usd) spending
FROM orders o
GROUP BY 1
ORDER BY 2 DESC;