SELECT w.channel channel,
	COUNT(w.channel) channel_frequency
FROM web_events w
GROUP BY channel
ORDER BY channel_frequency DESC;