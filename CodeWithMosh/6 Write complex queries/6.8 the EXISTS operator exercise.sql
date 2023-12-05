USE sql_store;
-- find the products that have never been ordered
SELECT *
FROM products
WHERE product_id NOT IN (
	SELECT product_id
    FROM order_items
);

SELECT *
FROM products p
WHERE 
	NOT EXISTS (
		select 1
        FROM order_items oi
        WHERE oi.product_id = p.product_id
    )