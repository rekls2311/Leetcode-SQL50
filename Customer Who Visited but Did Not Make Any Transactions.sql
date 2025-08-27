--Write a solution to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.

SELECT visits.customer_id, SUM(CASE WHEN transactions.transaction_id IS NULL THEN 1 ELSE 0 END) as count_no_trans
FROM visits
LEFT JOIN transactions
ON visits.visit_id = transactions.visit_id
where transactions.transaction_id IS NULL
GROUP BY visits.customer_id
