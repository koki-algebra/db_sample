INSERT INTO
	users (name, hiragana_name, lending_ticket_number)
VALUES
	('小坂菜緒', 'こさかなお', '9xxxxxx-x');

INSERT INTO
	contact_methods (name)
VALUES
	('自宅TEL'),
	('携帯'),
	('FAX'),
	('勤務先TEL');

INSERT INTO
	contacts (user_id, contact_method_id, number)
VALUES
	(1, 2, '000-0000-0000');

INSERT INTO
	libraries (name)
VALUES
	('日向図書館');

INSERT INTO
	publishers (name)
VALUES
	('集英社');

INSERT INTO
	books (name, author, price, publisher_id, published_at)
VALUES
	(
		'小坂菜緒(日向坂46)1st写真集 君は誰?',
		'小坂菜緒',
		2200,
		1,
		'2021-6-29'
	);

INSERT INTO
	reserves (
		application_date,
		contact_id,
		library_id,
		book_id
	)
VALUES
	('2023-09-07', 1, 1, 1);