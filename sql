1-SELECT * FROM customers;
2-SELECT product_name, category 
FROM products 
WHERE price BETWEEN 5000 AND 10000;
3-SELECT * 
FROM products 
ORDER BY price DESC;
4-SELECT 
    COUNT(*) AS total_orders,
    AVG(amount) AS average_amount,
    MAX(amount) AS highest_amount,
    MIN(amount) AS lowest_amount
FROM orders;
SELECT product_id, COUNT(*) AS order_count 
FROM order_details 
GROUP BY product_id;
5-SELECT customer_id 
FROM orders 
GROUP BY customer_id 
HAVING COUNT(*) > 2;
6-SELECT 
    MONTH(order_date) AS month,
    COUNT(*) AS order_count
FROM orders
WHERE YEAR(order_date) = 2020
GROUP BY MONTH(order_date);
7-SELECT 
    o.order_date, 
    p.product_name, 
    c.customer_name
FROM orders o
JOIN products p ON o.product_id = p.product_id
JOIN customers c ON o.customer_id = c.customer_id;

8-SELECT *
FROM orders
WHERE order_date BETWEEN (CURRENT_DATE - INTERVAL '3 MONTH') AND (CURRENT_DATE - INTERVAL '2 MONTH');

9-SELECT c.customer_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;



