-- ユーザー
CREATE TABLE users (user_id SERIAL PRIMARY KEY, username TEXT);

-- 出勤開始
CREATE TABLE start_works (
	start_work_id SERIAL PRIMARY KEY,
	user_id INTEGER NOT NULL REFERENCES users(user_id),
	started_at TIMESTAMP
);

-- 同日に二度出勤できないようにする
CREATE UNIQUE INDEX uq_start_works_01 ON start_works (CAST(started_at AS DATE), user_id);

-- 出勤終了
CREATE TABLE end_works (
	end_work_id SERIAL PRIMARY KEY,
	user_id INTEGER NOT NULL REFERENCES users(user_id),
	ended_at TIMESTAMP
);

-- 同日に二度退勤できないようにする
CREATE UNIQUE INDEX uq_end_works_01 ON end_works (CAST(ended_at AS DATE), user_id);

-- 休憩開始
CREATE TABLE start_breaks (
	start_break_id SERIAL PRIMARY KEY,
	user_id INTEGER NOT NULL REFERENCES users(user_id),
	started_at TIMESTAMP
);

-- 同日に二度休憩開始できないようにする
CREATE UNIQUE INDEX uq_start_breaks_01 ON start_breaks (CAST(started_at AS DATE), user_id);

-- 休憩終了
CREATE TABLE end_breaks (
	end_break_id SERIAL PRIMARY KEY,
	user_id INTEGER NOT NULL REFERENCES users(user_id),
	ended_at TIMESTAMP
);

-- 同日に二度休憩終了できないようにする
CREATE UNIQUE INDEX uq_end_breaks_01 ON end_breaks (CAST(ended_at AS DATE), user_id);