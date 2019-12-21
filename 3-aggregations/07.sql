SELECT MAX(occurred_at)
FROM web_events;

-- ALTERNATIVE
SELECT occurred_at
FROM web_events
ORDER BY occurred_at DESC
LIMIT 1;