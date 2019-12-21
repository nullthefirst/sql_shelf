SELECT w.occurred_at occurred_at,
	a.name account_name,
    o.total order_total,
    o.total_amt_usd total_amt_usd
FROM web_events w
JOIN accounts a
ON w.account_id = a.id
JOIN orders o
ON a.id = o.account_id
WHERE w.occurred_at BETWEEN '2015-01-01' AND '2016-01-01';