SELECT SUM(standard_amt_usd) standard_usd,
	SUM(gloss_amt_usd) gloss_usd
FROM orders;