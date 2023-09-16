-- 予約者
CREATE TABLE users (
	user_id SERIAL PRIMARY KEY,
	name TEXT,
	hiragana_name TEXT,
	lending_ticket_number TEXT
);

-- 連絡方法
CREATE TABLE contact_methods (
	contact_method_id SERIAL PRIMARY KEY,
	name TEXT
);

-- 連絡先
CREATE TABLE contacts (
	contact_id SERIAL PRIMARY KEY,
	user_id INTEGER REFERENCES users(user_id),
	contact_method_id INTEGER REFERENCES contact_methods(contact_method_id),
	number TEXT
);

-- 図書館
CREATE TABLE libraries (library_id SERIAL PRIMARY KEY, name TEXT);

-- 出版社
CREATE TABLE publishers (publisher_id SERIAL PRIMARY KEY, name TEXT);

-- 書籍
CREATE TABLE books (
	book_id SERIAL PRIMARY KEY,
	name TEXT,
	author TEXT,
	price INTEGER,
	publisher_id INTEGER NOT NULL REFERENCES publishers(publisher_id),
	published_at DATE
);

-- 予約
CREATE TABLE reserves (
	reserve_id SERIAL PRIMARY KEY,
	application_date DATE,
	contact_id INTEGER NOT NULL REFERENCES contacts(contact_id),
	library_id INTEGER NOT NULL REFERENCES libraries(library_id),
	book_id INTEGER NOT NULL REFERENCES books(book_id)
);