-- Transactions Table
CREATE TABLE Transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    expense_id INT,
    transaction_type ENUM('ADD', 'UPDATE', 'DELETE') NOT NULL,
    transaction_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (expense_id) REFERENCES Expenses(expense_id) ON DELETE CASCADE
);

INSERT INTO Transactions (user_id, expense_id, transaction_type) VALUES
(1, 1, 'ADD'),
(1, 2, 'ADD'),
(2, 3, 'ADD'),
(2, 4, 'ADD'),
(3, 5, 'ADD'),
(4, 6, 'ADD'),
(5, 7, 'ADD'),
(6, 8, 'ADD'),
(7, 9, 'ADD'),
(8, 10, 'ADD');

-- Trigger: Log Transactions on Expense Insert
DELIMITER $$
CREATE TRIGGER after_expense_insert
AFTER INSERT ON Expenses
FOR EACH ROW
BEGIN
    INSERT INTO Transactions (user_id, expense_id, transaction_type) 
    VALUES (NEW.user_id, NEW.expense_id, 'ADD');
END $$
DELIMITER ;