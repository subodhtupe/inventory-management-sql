#View All Products
SELECT * FROM products;

#Products with Low Stock
SELECT 
	product_name, stock_qty
FROM
	products
WHERE
	stock_qty < 20;
    
#WHERE Clause + Comparison Operators
SELECT 
	product_name, price
FROM 
	products
WHERE
	price > 10000;
    
#Logical Operators
SELECT 
	product_name
FROM
	products
WHERE
	category = 'Electronics' AND stock_qty > 50;
    
#Sorting Data (ORDER BY)
SELECT
	product_name, price
FROM
	products
ORDER BY
	price
DESC;

#Limiting Results (LIMIT)
SELECT
	product_name, stock_qty
FROM
	products
ORDER BY
	stock_qty 
ASC
	LIMIT 2;
    
#Aliases
SELECT 
	product_name AS Item, price AS Cost
FROM 
	products;
    
#Arithmetic Functions
SELECT 
	product_name, price * stock_qty AS stock_value
FROM 
	products;
    
#Aggregate (Basic) Functions
SELECT
    COUNT(*) AS total_products,
    SUM(stock_qty) AS total_stock,
    AVG(price) AS avg_price
FROM 
	products;
    
#JOIN Query (Interview Favorite)
SELECT 
    p.product_name,
    s.supplier_name,
    p.stock_qty
FROM 
	products p
JOIN
	suppliers s
ON 
	p.supplier_id = s.supplier_id;
    
#UPDATE Data
UPDATE
	products
SET 
	stock_qty = stock_qty - 2
WHERE
	product_id = 1;
    
#DELETE Data
DELETE FROM 
	sales
WHERE 
	sale_id = 3;
    
#Business Report Queries
#1.Total Sales Per Product
SELECT 
    p.product_name,
    SUM(s.quantity_sold) AS total_sold
FROM 
	sales s
JOIN
	products p
ON 
	s.product_id = p.product_id
GROUP BY
	p.product_name;
    
#2.Inventory Value Report
SELECT 
    product_name,
    price,
    stock_qty,
    price * stock_qty AS inventory_value
FROM 
	products;
    







