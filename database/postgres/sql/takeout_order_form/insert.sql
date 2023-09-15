INSERT INTO
	product_categories (product_category_id, name)
VALUES
	(1, '点心・前菜'),
	(2, '一品料理'),
	(3, '飯・麺');

INSERT INTO
	product_labels (product_label_id, name)
VALUES
	(1, 'New');

INSERT INTO
	products (
		name,
		price,
		price_with_tax,
		product_label_id,
		product_category_id
	)
VALUES
	('自慢・焼餃子(5ヶ)', 180, 189, NULL, 1),
	('ゴマ付きだんご(2ヶ)', 240, 252, NULL, 1),
	('西瓜ジュース', 330, 346, 1, 1),
	('海老マヨネーズ', 580, 609, NULL, 1),
	('マーボー豆腐', 480, 504, NULL, 2),
	('角切り牛肉のカシューナッツ炒め', 680, 714, 1, 2),
	('海老のチリソース', 780, 819, NULL, 2),
	('大海老の旨辛あんかけご飯', 680, 714, 1, 3),
	('海鮮・皿うどん', 780, 819, 1, 3);

INSERT INTO
	customers (customer_id, name, phone_number)
VALUES
	(1, '小坂菜緒', '000-0000-0000'),
	(2, '金村美玖', '000-0000-0000'),
	(3, '上村ひなの', '000-0000-0000');