CREATE TABLE product_categories (
	product_category_id SERIAL PRIMARY KEY,
	name TEXT NOT NULL
);

CREATE TABLE product_labels (
	product_label_id SERIAL PRIMARY KEY,
	name TEXT NOT NULL
);

CREATE TABLE products (
	product_id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	price INTEGER NOT NULL,
	price_with_tax INTEGER NOT NULL,
	product_category_id INTEGER REFERENCES product_categories(product_category_id),
	product_label_id INTEGER REFERENCES product_labels(product_label_id)
);

CREATE TABLE customers (
	customer_id SERIAL PRIMARY KEY,
	name TEXT,
	phone_number TEXT
);

CREATE TABLE orders (
	order_id SERIAL PRIMARY KEY,
	order_quantity INTEGER NOT NULL,
	product_id INTEGER NOT NULL REFERENCES products(product_id),
	customer_id INTEGER NOT NULL REFERENCES customers(customer_id),
	timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);