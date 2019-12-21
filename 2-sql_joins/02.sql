SELECT w.occurred_at, w.channel, 
	a.primary_poc, a.name
FROM web_events AS w
JOIN accounts AS a
ON w.account_id = a.id
WHERE a.name = 'Walmart';