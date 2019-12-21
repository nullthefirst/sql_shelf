SELECT MIN(occurred_at) earliest_order
FROM orders;

-- ALTERNATIVE
SELECT occurred_at earliest_order
FROM orders
ORDER BY occurred_at
LIMIT 1;