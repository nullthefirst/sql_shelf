SELECT
  account_id accounts,
  total_amt_usd total_usd,
  DATE_TRUNC('year', occurred_at) years,
  CASE
    WHEN total_amt_usd > 200000 THEN 'top level'
    WHEN total_amt_usd <= 200000
    AND total_amt_usd >= 100000 THEN 'second level'
    WHEN total_amt_usd < 100000 THEN 'lowest level'
  END AS levels
FROM orders
WHERE
  occurred_at > '2015-12-31'
  AND occurred_at < '2018-01-01'
GROUP BY
  account_id,
  total_amt_usd,
  occurred_at,
  levels
ORDER BY
  total_usd DESC;