db.Users.insertMany([
    { full_name: 'John Doe', email: 'john.doe@example.com', password_hash: 'hashed_password_123', created_at: new Date() },
    { full_name: 'Jane Smith', email: 'jane.smith@example.com', password_hash: 'hashed_password_456', created_at: new Date() },
    { full_name: 'Alice Johnson', email: 'alice.johnson@example.com', password_hash: 'hashed_password_789', created_at: new Date() },
    { full_name: 'Bob Brown', email: 'bob.brown@example.com', password_hash: 'hashed_password_101', created_at: new Date() },
    { full_name: 'Charlie Davis', email: 'charlie.davis@example.com', password_hash: 'hashed_password_202', created_at: new Date() },
    { full_name: 'Diana Evans', email: 'diana.evans@example.com', password_hash: 'hashed_password_303', created_at: new Date() },
    { full_name: 'Edward Frank', email: 'edward.frank@example.com', password_hash: 'hashed_password_404', created_at: new Date() },
    { full_name: 'Fiona Green', email: 'fiona.green@example.com', password_hash: 'hashed_password_505', created_at: new Date() },
    { full_name: 'George Harris', email: 'george.harris@example.com', password_hash: 'hashed_password_606', created_at: new Date() },
    { full_name: 'Hannah Ivy', email: 'hannah.ivy@example.com', password_hash: 'hashed_password_707', created_at: new Date() }
]);

db.Users.find().pretty();

db.Users.find({ email: 'john.doe@example.com' }).pretty();

db.Users.createIndex({ email: 1 });