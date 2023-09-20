CREATE TABLE departments (
	department_id SERIAL PRIMARY KEY,
	name TEXT NOT NULL
);

CREATE TABLE employees (
	employee_id SERIAL PRIMARY KEY,
	department_id INTEGER REFERENCES departments(department_id),
	salary INTEGER NOT NULL,
	joined_at DATE NOT NULL DEFAULT CURRENT_DATE
);