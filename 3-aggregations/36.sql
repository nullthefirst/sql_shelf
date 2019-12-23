SELECT a.name account_name,
	o.total_amt_usd total_sales,
    CASE WHEN o.total_amt_usd > 200000 THEN 'top level'
    	WHEN o.total_amt_usd <= 200000 AND o.total_amt_usd >= 100000 THEN 'second level'
        WHEN o.total_amt_usd < 100000 THEN 'lowest level'
        END AS levels
FROM orders o
JOIN accounts a
ON o.account_id = a.id
ORDER BY 3 DESC;