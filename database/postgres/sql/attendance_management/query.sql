-- 勤怠履歴を取得
WITH attendances AS (
	SELECT
		CAST(sw.started_at AS DATE) AS date,
		sw.user_id,
		sw.started_at AS work_started_at,
		sb.started_at AS break_started_at,
		eb.ended_at AS break_ended_at,
		ew.ended_at AS work_ended_at
	FROM
		start_works AS sw
		LEFT JOIN end_works AS ew ON CAST(sw.started_at AS DATE) = CAST(ew.ended_at AS DATE)
		AND sw.user_id = ew.user_id
		LEFT JOIN start_breaks AS sb ON CAST(sw.started_at AS DATE) = CAST(sb.started_at AS DATE)
		AND sw.user_id = sb.user_id
		LEFT JOIN end_breaks AS eb ON CAST(sw.started_at AS DATE) = CAST(eb.ended_at AS DATE)
		AND sw.user_id = eb.user_id
)
SELECT
	date,
	u.user_id,
	username,
	work_started_at,
	break_started_at,
	break_ended_at,
	work_ended_at
FROM
	users AS u
	JOIN attendances USING(user_id)
ORDER BY
	date ASC;