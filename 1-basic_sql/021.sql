-- find all the companies whose names do not start with 'C' and end with 's'
SELECT *
FROM accounts
WHERE name NOT LIKE 'C%' AND name LIKE '%s';