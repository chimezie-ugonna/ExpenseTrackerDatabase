-- Stored Procedure: Insert Expense
DELIMITER $$
CREATE PROCEDURE AddExpense(
    IN p_user_id INT, 
    IN p_category_id INT, 
    IN p_amount DECIMAL(10,2), 
    IN p_description TEXT, 
    IN p_expense_date DATE
)
BEGIN
    INSERT INTO Expenses (user_id, category_id, amount, description, expense_date) 
    VALUES (p_user_id, p_category_id, p_amount, p_description, p_expense_date);
END $$
DELIMITER ;