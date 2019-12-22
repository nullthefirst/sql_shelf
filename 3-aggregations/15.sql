SELECT a.name account_name,
	AVG(o.standard_amt_usd) avg_standard_amt_usd,
    AVG(o.gloss_amt_usd) avg_gloss_amt_usd,
    AVG(o.poster_amt_usd) avg_poster_amt_usd
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY a.name
ORDER BY a.name;