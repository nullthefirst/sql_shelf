SELECT SUM(standard_amt_usd/(standard_qty + 0.01)) AS total_unit_price
FROM orders;