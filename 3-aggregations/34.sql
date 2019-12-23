SELECT
  account_id,
  total_amt_usd,
  CASE
    WHEN total_amt_usd >= 3000 THEN 'Large'
    WHEN total_amt_usd < 3000 THEN 'Small'
  END AS order_size
FROM orders;