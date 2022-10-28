CREATE TABLE departments (
	dept_no VARCHAR(4) NOT NULL,
	dept_name VARCHAR NOT NULL
);


CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(4) NOT NULL
);


CREATE TABLE dept_manager (
	dept_no VARCHAR(4) NOT NULL,
	emp_no INT
);


CREATE TABLE employees (
	emp_no INT,
	emp_title_id VARCHAR(5) NOT NULL,
	birth_date VARCHAR NOT NULL, 
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date VARCHAR NOT NULL
);


CREATE TABLE salaries (
	emp_no INT,
	salary INT
);


CREATE TABLE titles (
	title_id VARCHAR(5) NOT NULL,
	title VARCHAR NOT NULL
);

