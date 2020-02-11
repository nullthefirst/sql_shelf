SELECT
  s.name rep,
  r.name region,
  SUM(o.total_amt_usd) total_amt
FROM region r
JOIN sales_reps s ON r.id = s.region_id
JOIN accounts a ON s.id = a.sales_rep_id
JOIN orders o ON a.id = o.account_id
GROUP BY
  1,
  2
ORDER BY
  3 DESC