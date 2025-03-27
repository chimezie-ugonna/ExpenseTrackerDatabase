-- Categories Table
CREATE TABLE Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) UNIQUE NOT NULL,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);

INSERT INTO Categories (category_name, user_id) VALUES
('Food', 1),
('Transport', 1),
('Entertainment', 2),
('Rent', 2),
('Shopping', 3),
('Utilities', 4),
('Health', 5),
('Education', 6),
('Travel', 7),
('Subscriptions', 8);

-- Index for optimization
CREATE INDEX idx_category_name ON Categories(category_name);