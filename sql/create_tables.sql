-- Dimension Tables
CREATE TABLE dim_customer (
customer_id INT PRIMARY KEY
);

CREATE TABLE dim_product (
product_id INT PRIMARY KEY,
product_name VARCHAR(200),
category VARCHAR(100)
);

CREATE TABLE dim_region (
region_id INT PRIMARY KEY,
region VARCHAR(100)
);

CREATE TABLE dim_date (
date_id DATE PRIMARY KEY,
year INT,
month INT,
day INT
);


-- Fact Table
CREATE TABLE fact_sales (

order_id INT PRIMARY KEY,

customer_id INT,
product_id INT,
region_id INT,
date_id DATE,

quantity INT,
unit_price FLOAT,
revenue FLOAT,
payment_method VARCHAR(50),

FOREIGN KEY (customer_id) REFERENCES dim_customer(customer_id),
FOREIGN KEY (product_id) REFERENCES dim_product(product_id),
FOREIGN KEY (region_id) REFERENCES dim_region(region_id),
FOREIGN KEY (date_id) REFERENCES dim_date(date_id)

);