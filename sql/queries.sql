-- Total revenue per region
SELECT region, SUM(revenue) AS total_revenue
FROM ecommerce
GROUP BY region;

-- Top 5 products by revenue
SELECT product_name, SUM(revenue) AS revenue
FROM ecommerce
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 5;

-- Average order value by payment method
SELECT payment_method, AVG(revenue) AS avg_order_value
FROM ecommerce
GROUP BY payment_method;

-- Orders per month
SELECT DATE_TRUNC('month', order_date) AS month,
COUNT(order_id) AS total_orders
FROM ecommerce
GROUP BY month;

-- Top 10 customers by revenue
SELECT customer_id, SUM(revenue) AS total_revenue
FROM ecommerce
GROUP BY customer_id
ORDER BY total_revenue DESC
LIMIT 10;

-- Rank products by revenue within each category
SELECT
category,
product_name,
SUM(revenue) revenue,
RANK() OVER(PARTITION BY category ORDER BY SUM(revenue) DESC) AS rank
FROM ecommerce
GROUP BY category, product_name;