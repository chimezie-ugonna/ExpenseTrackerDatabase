-- Expenses Table
CREATE TABLE Expenses (
    expense_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    category_id INT,
    amount DECIMAL(10,2) NOT NULL,
    description TEXT,
    expense_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id) ON DELETE SET NULL
);

INSERT INTO Expenses (user_id, category_id, amount, description, expense_date) VALUES
(1, 1, 50.00, 'Groceries at Walmart', '2025-03-20'),
(1, 2, 20.00, 'Taxi fare', '2025-03-21'),
(2, 3, 15.00, 'Movie ticket', '2025-03-22'),
(2, 4, 700.00, 'Monthly rent payment', '2025-03-01'),
(3, 5, 120.00, 'New clothes', '2025-03-23'),
(4, 6, 60.00, 'Electricity bill', '2025-03-18'),
(5, 7, 200.00, 'Medical checkup', '2025-03-15'),
(6, 8, 500.00, 'Course enrollment', '2025-03-10'),
(7, 9, 300.00, 'Flight ticket', '2025-03-05'),
(8, 10, 15.99, 'Netflix subscription', '2025-03-01');

-- Index for optimization
CREATE INDEX idx_expense_date ON Expenses(expense_date);