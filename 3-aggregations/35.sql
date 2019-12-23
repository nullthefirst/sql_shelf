SELECT
  account_id,
  total,
  CASE
    WHEN total >= 2000 THEN 'At Least 2000'
    WHEN total > 1000
    AND total < 2000 THEN 'Between 1000 and 2000'
    WHEN total <= 1000 THEN 'Less than 1000'
  END AS order_quantity
FROM orders;