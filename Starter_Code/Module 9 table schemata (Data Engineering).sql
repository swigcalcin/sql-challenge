DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS titles;

CREATE TABLE departments(
	dept_no VARCHAR(30) PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL 
);


SELECT * FROM departments;

CREATE TABLE titles(
	title_id VARCHAR(30) PRIMARY KEY, 
	title VARCHAR(30) NOT NULL
	);

SELECT * FROM titles;


CREATE TABLE employees(
	emp_no INTEGER PRIMARY KEY, 
	emp_title_Id VARCHAR(30),
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(30),
	hired_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
	);
	
SELECT * FROM employees;

CREATE TABLE dept_emp(
	emp_no INTEGER, 
	dept_no VARCHAR(30),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
	);
	
SELECT * FROM dept_emp;

CREATE TABLE dept_manager(
	dept_no VARCHAR(30), 
	emp_no INTEGER,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
	);

SELECT * FROM dept_manager;

	
CREATE TABLE salaries(
	emp_no INTEGER PRIMARY KEY,
	salary INTEGER,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
	);

SELECT * FROM salaries;