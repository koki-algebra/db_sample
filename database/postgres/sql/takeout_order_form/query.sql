INSERT INTO
	orders (order_quantity, product_id, customer_id)
VALUES
	(1, 1, 1),
	(1, 5, 2),
	(1, 8, 3);

WITH joined_products AS (
	SELECT
		p.product_id,
		p.name AS product_name,
		p.price,
		p.price_with_tax,
		pc.name AS product_category_name,
		pl.name AS product_label_name
	FROM
		products AS p
		LEFT JOIN product_categories AS pc USING(product_category_id)
		LEFT JOIN product_labels AS pl USING(product_label_id)
)
SELECT
	o.order_id AS id,
	o.timestamp,
	c.name AS customer_name,
	c.phone_number AS phone_number,
	o.order_quantity,
	p.product_name,
	p.price,
	p.price_with_tax,
	p.product_category_name,
	p.product_label_name
FROM
	orders AS o
	JOIN joined_products AS p USING(product_id)
	JOIN customers AS c USING(customer_id);