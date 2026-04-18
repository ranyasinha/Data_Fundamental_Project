-- E-Commerce Customer Purchase Analysis (SQL)

-- 1. Display all purchase records
SELECT * FROM purchases;

-- 2. Total spending per customer
SELECT customer_name, SUM(quantity * price) AS total_spending
FROM purchases
GROUP BY customer_name;

-- 3. Most purchased product (by quantity)
SELECT product, SUM(quantity) AS total_quantity
FROM purchases
GROUP BY product
ORDER BY total_quantity DESC
LIMIT 1;

-- 4. City-wise revenue
SELECT city, SUM(quantity * price) AS total_revenue
FROM purchases
GROUP BY city;
