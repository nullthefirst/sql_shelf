SELECT a.name accounts,
	w.channel channel_of_choice,
    COUNT(*) favorite
FROM accounts a
JOIN web_events w
ON a.id = w.account_id
GROUP BY a.name, w.channel
HAVING (w.channel = 'facebook') AND (COUNT(*) > 6)
ORDER BY favorite DESC;