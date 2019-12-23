SELECT a.name accounts,
	w.channel channel_of_choice,
    COUNT(*) channel_use
FROM accounts a
JOIN web_events w
ON a.id = w.account_id
GROUP BY a.name, w.channel
ORDER BY channel_use DESC
LIMIT 1;