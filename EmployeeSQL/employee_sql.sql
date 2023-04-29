SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
inner join salaries s on
e.emp_no = s.emp_no;

SELECT hire_date, last_name, first_name
FROM employees
WHERE hire_date > '1985-12-31'  and hire_date < '1987-01-01';

-- List the manager of each department along with their department number, 
-- department name, employee number, last name, and first name.

SELECT dm.dept_no, dm.emp_no, d.dept_name, e.last_name, e.first_name
FROM dept_manager dm
INNER JOIN departments d on
dm.dept_no = d.dept_no
INNER JOIN employees e on
dm.emp_no = e.emp_no

--List the department number for each employee along with that employee’s 
--employee number, last name, first name, and department name.

SELECT de.dept_no, de.emp_no, d.dept_name, e.last_name, e.first_name
FROM dept_emp de
INNER JOIN departments d on
de.dept_no = d.dept_no
INNER JOIN employees e on
de.emp_no = e.emp_no

Select first_name,
		last_name,
		sex
FROM employees
WHERE last_name LIKE 'B%'
AND first_name = 'Hercules';

SELECT de.emp_no, e.first_name, e.last_name
FROM employees e
INNER JOIN dept_emp de on
e.emp_no = de.emp_no
INNER JOIN departments d on
de.dept_no = d.dept_no
WHERE d.dept_name ='Sales';

-- List each employee in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.

SELECT de.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de on
e.emp_no = de.emp_no
INNER JOIN departments d on
de.dept_no = d.dept_no
WHERE d.dept_name ='Sales' 
OR d.dept_name = 'Development'

-- List the frequency counts, in descending order, of all the employee last names 
-- (that is, how many employees share each last name).

SELECT last_name, COUNT(last_name) AS Frequency
FROM employees
GROUP BY last_name
ORDER BY Frequency DESC;