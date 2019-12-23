SELECT
  s.name rep,
  a.name account,
  COUNT(*) total_orders,
  SUM(o.total_amt_usd) total_sales,
  CASE
    WHEN (COUNT(*) > 200)
    OR (SUM(o.total_amt_usd) >= 75000) THEN 'top'
    WHEN (COUNT(*) > 150)
    OR (SUM(o.total_amt_usd) >= 50000) THEN 'middle'
    ELSE 'low'
  END AS ranking
FROM sales_reps s
JOIN accounts a ON s.id = a.sales_rep_id
JOIN orders o ON a.id = o.account_id
GROUP BY
  1,
  2
ORDER BY
  3 DESC