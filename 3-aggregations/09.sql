SELECT w.occurred_at date,
	w.channel channel,
    a.name account_name
FROM web_events w
JOIN accounts a
ON w.account_id = a.id;