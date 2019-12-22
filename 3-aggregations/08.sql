SELECT a.name,
    o.total_amt_usd
FROM orders o
JOIN accounts a
ON a.id = o.account_id