SELECT id, account_id,
	standard_amt_usd/standard_qty AS unit_price
FROM orders
LIMIT 10;