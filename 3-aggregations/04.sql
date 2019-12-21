/*
SELECT SUM(standard_amt_usd) standard_usd,
	SUM(gloss_amt_usd) gloss_usd
FROM orders;
*/

SELECT standard_amt_usd + gloss_amt_usd AS total_standard_gloss
FROM orders;