-- 部署ごとの平均給与が知りたい
SELECT
	d.name AS department_name,
	e.employee_id,
	e.salary,
	AVG(salary) OVER(PARTITION BY department_id) AS avg_salary
FROM
	employees AS e
	JOIN departments AS d USING(department_id);

-- 部署ごとの給与ランキングが知りたい
SELECT
	d.name AS department_name,
	e.employee_id,
	e.salary,
	RANK() OVER(
		PARTITION BY department_id
		ORDER BY
			e.salary DESC
	) AS salary_rank
FROM
	employees AS e
	JOIN departments AS d USING(department_id);

-- 入社順に番号を振りたい
SELECT
	d.name AS department_name,
	e.employee_id,
	e.salary,
	ROW_NUMBER() OVER(
		PARTITION BY department_id
		ORDER BY
			e.joined_at
	) AS join_id,
	e.joined_at
FROM
	employees AS e
	JOIN departments AS d USING(department_id);

-- 一つ前・一つ後に入社した従業員の入社日が知りたい
SELECT
	d.name AS department_name,
	e.employee_id,
	e.salary,
	e.joined_at,
	LAG(e.joined_at) OVER(
		ORDER BY
			e.joined_at
	) AS prev_joined_at,
	LEAD(e.joined_at) OVER(
		ORDER BY
			e.joined_at
	) AS post_joined_at
FROM
	employees AS e
	JOIN departments AS d USING(department_id);