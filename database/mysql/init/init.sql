CREATE TABLE sample (
	id BINARY(16) PRIMARY KEY DEFAULT (UUID_TO_BIN(UUID(), TRUE)),
	message TEXT NOT NULL
);

INSERT INTO
	sample (message)
VALUES
	('Hello, World!'),
	('Hello, MySQL!');