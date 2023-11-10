-- 勤怠履歴を取得
SELECT
	CAST(a.started_at AS DATE) AS date,
	attendance_id,
	u.user_id,
	username,
	a.started_at AS work_started_at,
	a.ended_at AS work_ended_at,
	b.started_at AS break_started_at,
	b.ended_at AS break_ended_at
FROM
	attendances AS a
	INNER JOIN users AS u USING(user_id)
	LEFT JOIN breaks AS b USING(attendance_id);