create table employees (
emp_no INT PRIMARY KEY,
birth_date DATE,
first_name VARCHAR(50),
last_name VARCHAR(60),
gender VARCHAR(6),
hire_date DATE
);
	
create table salaries (
emp_no INT,
salary INT,
from_date DATE,
to_date DATE
)

create table titles (
emp_no INT,
tile VARCHAR(50),
from_date DATE,
to_date DATE
)

create table dept_emp (
emp_no INT,
dept_no VARCHAR(10),
from_date DATE,
to_date DATE
)

create table departments(
dept_no VARCHAR(10) PRIMARY KEY,
dept_name VARCHAR(20)
)

create table dept_manager(
dept_no VARCHAR(10),
emp_no INT,
from_date DATE,
to_date DATE
)
