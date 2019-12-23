SELECT
  s.name rep,
  a.name account,
  COUNT(*) total_orders,
  CASE
    WHEN COUNT(*) > 200 THEN 'top'
    ELSE 'not'
  END AS ranking
FROM sales_reps s
JOIN accounts a ON s.id = a.sales_rep_id
JOIN orders o ON a.id = o.account_id
GROUP BY
  1,
  2
ORDER BY
  3 DESC