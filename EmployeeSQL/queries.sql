-- The following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries on employees.emp_no = salaries.emp_no;



-- The first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, birth_date
FROM employees 
WHERE hire_date LIKE '%1986';



-- The manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager
INNER JOIN departments on dept_manager.dept_no = departments.dept_no
INNER JOIN employees on dept_manager.emp_no = employees.emp_no;


-- The department of each employee with the following information: employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN employees on dept_emp.emp_no = employees.emp_no
INNER JOIN departments on dept_emp.dept_no = departments.dept_no;



-- The first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees 
WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%';



-- All employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN employees on dept_emp.emp_no = employees.emp_no
INNER JOIN departments on dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales';



-- All employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN employees on dept_emp.emp_no = employees.emp_no
INNER JOIN departments on dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';



-- The frequency count of employee last names (i.e., how many employees share each last name) in descending order.
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY count DESC;