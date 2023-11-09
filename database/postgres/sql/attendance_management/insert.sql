INSERT INTO
	users (username)
VALUES
	('A'),
	('B'),
	('C');

INSERT INTO
	start_works (user_id, started_at)
VALUES
	(1, '2023-11-01 10:00:00'),
	(2, '2023-11-01 10:00:00'),
	(3, '2023-11-01 10:00:00'),
	(1, '2023-11-02 10:00:00'),
	(2, '2023-11-02 10:00:00'),
	(3, '2023-11-02 10:00:00'),
	(1, '2023-11-10 10:00:00');

INSERT INTO
	end_works (user_id, ended_at)
VALUES
	(1, '2023-11-01 19:00:00'),
	(2, '2023-11-01 19:00:00'),
	(3, '2023-11-01 19:00:00'),
	(1, '2023-11-02 19:00:00'),
	(2, '2023-11-02 19:00:00'),
	(3, '2023-11-02 19:00:00');

INSERT INTO
	start_breaks (user_id, started_at)
VALUES
	(1, '2023-11-01 12:00:00'),
	(2, '2023-11-01 12:00:00'),
	(3, '2023-11-01 12:00:00'),
	(1, '2023-11-02 12:00:00'),
	(2, '2023-11-02 12:00:00'),
	(3, '2023-11-02 12:00:00');

INSERT INTO
	end_breaks (user_id, ended_at)
VALUES
	(1, '2023-11-01 13:00:00'),
	(2, '2023-11-01 13:00:00'),
	(3, '2023-11-01 13:00:00'),
	(1, '2023-11-02 13:00:00'),
	(2, '2023-11-02 13:00:00'),
	(3, '2023-11-02 13:00:00');