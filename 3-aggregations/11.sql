SELECT MIN(w.occurred_at) date_of_web_event,
	a.primary_poc primary_poc
FROM web_events w
JOIN accounts a
ON w.account_id = a.id
GROUP BY w.occurred_at, a.primary_poc
ORDER BY w.occurred_at
LIMIT 1;
