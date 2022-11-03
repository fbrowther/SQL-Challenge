--Create tables for EmployeeSQL challenge

CREATE TABLE departments(
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR 
);

CREATE TABLE dept_manager(
	dept_no VARCHAR,
	emp_no INT PRIMARY KEY
);

CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	sex VARCHAR(10),
	hire_date DATE
);

CREATE TABLE salaries(
	emp_no INT PRIMARY KEY,
	salary INT
);

CREATE TABLE titles(
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR
);

CREATE TABLE dept_emp(
	emp_no INT PRIMARY KEY,
	dept_no VARCHAR
);

--List employee number, last name, first name, sex, and salary
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
FULL OUTER JOIN salaries
ON employees.emp_no = salaries.emp_no;


--List first name, last name, and hire date for employees who were hired in 1986
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees 
WHERE employees.hire_date > '1986-01-01' AND employees.hire_date < '1987-01-01'
LIMIT(20);

--List the manager of each department with the following information
--(department number, department name, the manager's employee number, last name, first name).
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.first_name, employees.last_name
FROM dept_manager
JOIN employees
ON dept_manager.emp_no = employees.emp_no
JOIN departments
ON dept_manager.dept_no = departments.dept_no;


--List the department of each employee with the following information: 
--(employee number, last name, first name, and department name)
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no;

--List first name, last name, and sex for employees whose first name is 
--"Hercules" and last names begin with "B."
SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

--List all employees in the Sales department, 
--including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';


--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';

--List the frequency count of employee last names 
--(i.e., how many employees share each last name) in descending order.
SELECT employees.last_name, 
COUNT(employees.last_name) as total_last_name
FROM employees
GROUP BY employees.last_name
ORDER BY total_last_name DESC;



