--List the following details of each employee: employee number, last name, first name, gender, and salary.
select e.emp_no, e.last_name, e.first_name, e.gender, s.salary from employees as e
INNER JOIN salaries as s
ON e.emp_no = s.emp_no

--List employees who were hired in 1986
select * from employees where hire_date > '1985-12-31' and hire_date < '1987-01-01'

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates
select m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, m.from_date, m.to_date from dept_manager as m
INNER JOIN departments as d on d.dept_no = m.dept_no
INNER JOIN employees as e on m.emp_no = e.emp_no

--List the department of each employee with the following information: employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name from employees as e
INNER JOIN dept_emp as de on de.emp_no = e.emp_no
INNER JOIN departments as d on d.dept_no = de.dept_no

--List all employees whose first name is "Hercules" and last names begin with "B."
select * from employees where first_name = 'Hercules' and last_name like 'B%'

--List all employees in the Sales department, including their employee number, last name, first name, and department name
select e.emp_no, e.last_name, e.first_name, d.dept_name from employees as e
INNER JOIN dept_emp as de on de.emp_no = e.emp_no
INNER JOIN departments as d on d.dept_no = de.dept_no
where d.dept_name = 'Sales'

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name from employees as e
INNER JOIN dept_emp as de on de.emp_no = e.emp_no
INNER JOIN departments as d on d.dept_no = de.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development'

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name) as "Total Count" from employees
group by last_name
order by last_name desc