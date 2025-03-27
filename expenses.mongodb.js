db.Expenses.insertMany([
    { user_id: 1, category_id: 1, amount: 50.00, description: 'Groceries at Walmart', expense_date: new Date('2025-03-20') },
    { user_id: 1, category_id: 2, amount: 20.00, description: 'Taxi fare', expense_date: new Date('2025-03-21') },
    { user_id: 2, category_id: 3, amount: 15.00, description: 'Movie ticket', expense_date: new Date('2025-03-22') },
    { user_id: 2, category_id: 4, amount: 700.00, description: 'Monthly rent payment', expense_date: new Date('2025-03-01') },
    { user_id: 3, category_id: 5, amount: 120.00, description: 'New clothes', expense_date: new Date('2025-03-23') },
    { user_id: 4, category_id: 6, amount: 60.00, description: 'Electricity bill', expense_date: new Date('2025-03-18') },
    { user_id: 5, category_id: 7, amount: 200.00, description: 'Medical checkup', expense_date: new Date('2025-03-15') },
    { user_id: 6, category_id: 8, amount: 500.00, description: 'Course enrollment', expense_date: new Date('2025-03-10') },
    { user_id: 7, category_id: 9, amount: 300.00, description: 'Flight ticket', expense_date: new Date('2025-03-05') },
    { user_id: 8, category_id: 10, amount: 15.99, description: 'Netflix subscription', expense_date: new Date('2025-03-01') }
]);

db.Expenses.find().pretty();

db.Expenses.find({ user_id: 1 }).pretty();

// View expenses from March 1st, 2025 onwards
db.Expenses.find({ expense_date: { $gte: new Date('2025-03-01') } }).pretty();

// Create Index on expense_date for optimization
db.Expenses.createIndex({ expense_date: 1 });