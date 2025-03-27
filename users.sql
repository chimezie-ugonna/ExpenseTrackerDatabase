-- Users Table
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Users (full_name, email, password_hash) VALUES
('John Doe', 'john.doe@example.com', 'hashed_password_123'),
('Jane Smith', 'jane.smith@example.com', 'hashed_password_456'),
('Alice Johnson', 'alice.johnson@example.com', 'hashed_password_789'),
('Bob Brown', 'bob.brown@example.com', 'hashed_password_101'),
('Charlie Davis', 'charlie.davis@example.com', 'hashed_password_202'),
('Diana Evans', 'diana.evans@example.com', 'hashed_password_303'),
('Edward Frank', 'edward.frank@example.com', 'hashed_password_404'),
('Fiona Green', 'fiona.green@example.com', 'hashed_password_505'),
('George Harris', 'george.harris@example.com', 'hashed_password_606'),
('Hannah Ivy', 'hannah.ivy@example.com', 'hashed_password_707');

-- Index for optimization
CREATE INDEX idx_user_email ON Users(email);