SELECT
  a.name account_name,
  o.total_amt_usd total_sales,
  DATE_TRUNC('year', o.occurred_at) years,
  CASE
    WHEN o.total_amt_usd > 200000 THEN 'top level'
    WHEN o.total_amt_usd <= 200000
    AND o.total_amt_usd >= 100000 THEN 'second level'
    WHEN o.total_amt_usd < 100000 THEN 'lowest level'
  END AS levels
FROM orders o
JOIN accounts a ON o.account_id = a.id
WHERE
  o.occurred_at >= '2015-12-31'
GROUP BY
  1,
  2,
  3,
  4
ORDER BY
  4 DESC;