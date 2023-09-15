CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE sample (
	id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
	message TEXT NOT NULL
);

INSERT INTO
	sample (message)
VALUES
	('Hello, World!'),
	('Hello, PostgreSQL!');