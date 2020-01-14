SELECT
  AVG(o.standard_qty) avg_standard,
  AVG(o.gloss_qty) avg_gloss,
  AVG(o.poster_qty) avg_poster,
  SUM(o.total_amt_usd) total_amt
FROM orders o
WHERE
  DATE_TRUNC('month', o.occurred_at) = (
    SELECT
      DATE_TRUNC('month', MIN(o.occurred_at)) earliest_order
    FROM orders o
  )