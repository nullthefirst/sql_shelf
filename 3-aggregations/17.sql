SELECT s.name rep_name,
	w.channel channel,
	COUNT(w.channel) channel_frequency
FROM web_events w
JOIN accounts a
ON w.account_id = a.id
JOIN sales_reps s
ON a.sales_rep_id = s.id
GROUP BY rep_name, channel
ORDER BY rep_name;