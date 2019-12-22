SELECT a.name account_name,
	AVG(o.standard_qty) avg_standard_qty,
    AVG(o.gloss_qty) avg_gloss_qty,
    AVG(o.poster_qty) avg_poster_qty
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY a.name
ORDER BY a.name;