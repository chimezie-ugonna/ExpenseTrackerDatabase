db.Categories.insertMany([
    { category_name: 'Food', user_id: 1 },
    { category_name: 'Transport', user_id: 1 },
    { category_name: 'Entertainment', user_id: 2 },
    { category_name: 'Rent', user_id: 2 },
    { category_name: 'Shopping', user_id: 3 },
    { category_name: 'Utilities', user_id: 4 },
    { category_name: 'Health', user_id: 5 },
    { category_name: 'Education', user_id: 6 },
    { category_name: 'Travel', user_id: 7 },
    { category_name: 'Subscriptions', user_id: 8 }
]);

db.Categories.find().pretty();

db.Categories.find({ user_id: 1 }).pretty();

// Create Index on category_name for optimization
db.Categories.createIndex({ category_name: 1 });