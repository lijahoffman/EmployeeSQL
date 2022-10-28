-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, birth_date
FROM employees 
WHERE hire_date LIKE '%1986';


-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees 
WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%';

-- List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY count DESC;