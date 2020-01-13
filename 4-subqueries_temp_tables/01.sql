SELECT
  channel,
  AVG(num_events) avg_event_count
FROM (
    SELECT
      DATE_TRUNC('day', occurred_at) AS day,
      channel,
      COUNT(channel) AS num_events
    FROM web_events
    GROUP BY
      day,
      channel
    LIMIT
      50
  ) sub
GROUP BY
  sub.channel
ORDER BY
  avg_event_count DESC;