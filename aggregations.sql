-- Aggregation Query: Total Monthly Expenses
SELECT user_id, MONTH(expense_date) AS month, SUM(amount) AS total_spent
FROM Expenses
GROUP BY user_id, MONTH(expense_date)
ORDER BY month DESC;