SELECT r.name AS region_name,
    a.name AS account_name,
    o.total_amt_usd/(o.total + 0.01) AS unit_price
FROM region AS r
JOIN sales_reps AS s
ON r.id = s.region_id
JOIN accounts AS a
ON s.id = a.sales_rep_id
JOIN orders AS o
ON a.id = o.account_id
WHERE (o.standard_qty > 100) AND (poster_qty > 50)
ORDER BY unit_price DESC
LIMIT 20;