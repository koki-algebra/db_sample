-- ユーザー
CREATE TABLE users (user_id SERIAL PRIMARY KEY, username TEXT);

-- 勤怠
CREATE TABLE attendances (
	attendance_id SERIAL PRIMARY KEY,
	user_id INTEGER NOT NULL REFERENCES users(user_id),
	started_at TIMESTAMP NOT NULL,
	ended_at TIMESTAMP,
	CONSTRAINT check_attendances_01 CHECK (
		ended_at IS NULL
		OR started_at <= ended_at
	)
);

CREATE UNIQUE INDEX uq_attendances_01 ON attendances (CAST(started_at AS DATE), user_id);

-- 休憩
CREATE TABLE breaks (
	break_id SERIAL PRIMARY KEY,
	attendance_id INTEGER NOT NULL REFERENCES attendances(attendance_id),
	started_at TIMESTAMP NOT NULL,
	ended_at TIMESTAMP,
	CONSTRAINT check_breaks_01 CHECK (
		ended_at IS NULL
		OR (started_at <= ended_at)
	)
);