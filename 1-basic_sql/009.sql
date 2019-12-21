SELECT id, account_id,
poster_amt_usd / gloss_amt_usd + poster_amt_usd AS poster_percent_revenue
FROM orders
LIMIT 10;