SELECT
	r.reserve_id AS id,
	r.application_date,
	u.name AS user_name,
	u.lending_ticket_number,
	cm.name AS contact_method_name,
	c.number AS contact_number,
	l.name AS library_name,
	b.name AS book_name,
	b.author,
	b.price
FROM
	reserves AS r
	JOIN contacts AS c USING(contact_id)
	JOIN contact_methods AS cm USING(contact_method_id)
	JOIN users AS u USING(user_id)
	JOIN libraries AS l USING(library_id)
	JOIN books AS b USING(book_id);