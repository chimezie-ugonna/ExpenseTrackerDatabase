// Total Monthly Expenses
db.Expenses.aggregate([
    { $group: { _id: { user_id: "$user_id", month: { $month: "$expense_date" } }, total_spent: { $sum: "$amount" } } },
    { $sort: { "_id.month": -1 } }
]);

// Total amount spent by each user
db.Expenses.aggregate([
    { $group: { _id: "$user_id", total_spent: { $sum: "$amount" } } },
    { $sort: { total_spent: -1 } }
]);

// Total expenses for the past week
db.Expenses.aggregate([
    { $match: { expense_date: { $gte: new Date(new Date().setDate(new Date().getDate() - 7)) } } },
    { $group: { _id: null, total_spent: { $sum: "$amount" } } }
]);

// Total expenses made in the last 30 days
db.Expenses.aggregate([
    { $match: { expense_date: { $gte: new Date(new Date().setDate(new Date().getDate() - 30)) } } },
    { $group: { _id: null, total_spent: { $sum: "$amount" } } }
]);

// Top 5 categories by amount spent
db.Expenses.aggregate([
    { $group: { _id: "$category_id", total_spent: { $sum: "$amount" } } },
    { $sort: { total_spent: -1 } },
    { $limit: 5 }
]);