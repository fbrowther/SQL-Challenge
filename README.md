# SQL Challenge
As a new data engineer at Pewlett Hackard (a fictitious company), my first major task was on a research project to gather information about employees of the corporation from the 1980s and 1990s. To carry out this project, all I had access to were six CSV files that are remains of the database of employees from that period (https://github.com/fbrowther/SQL-Challenge/tree/main/EmployeeSQL%20).

# Data Modelling
First and foremost, i inspected the CSV files at hand and sketched out an ERD (entity relationship diagram) of the data employing a free online tool (http://www.quickdatabasediagrams.com).

![alt text](https://github.com/fbrowther/SQL-Challenge/blob/main/Results%20images/ERD%20employeeSQL.png)

# Data Engineering 
Using the provide information, i created a table schema for each of the six CSV files and specified their data types, primary keys, foreign keys, and other constraints. Finally the CSV file was imported to the corresponding SQL table under the database named 'Employees' (on ProsgreSQL accessed using pgadmin4).

# Data Cleaning
On closer inspection, one of the CSV file (dept_emp) had lots of duplicate data for the employees; using Excel conditional formating i idetified all the duplicate data and removed them using 'remove duplicate' function. The clean file was then uploaded onto the database to create dept_emp table.


# Data Analysis
As requested by the new manager, i queried the six database tables (departments, dept_emp, dept_manager, employees, salaries, titles) to answer the following questions -

(1) List the following details of each employee: employee number, last name, first name, sex, and salary.

![alt text](https://github.com/fbrowther/SQL-Challenge/blob/main/Results%20images/Query%201.png)


(2) List first name, last name, and hire date for employees who were hired in 1986.

![alt text](https://github.com/fbrowther/SQL-Challenge/blob/main/Results%20images/Query%202.png)

(3) List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

![alt text](https://github.com/fbrowther/SQL-Challenge/blob/main/Results%20images/Query%203.png)

(4) List the department of each employee with the following information: employee number, last name, first name, and department name.

![alt text](https://github.com/fbrowther/SQL-Challenge/blob/main/Results%20images/Query%204.png)

(5) List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

![alt text](https://github.com/fbrowther/SQL-Challenge/blob/main/Results%20images/Query%205.png)

(6) List all employees in the Sales department, including their employee number, last name, first name, and department name.

![alt text](https://github.com/fbrowther/SQL-Challenge/blob/main/Results%20images/Query%206.png)

(7) List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

![alt text](https://github.com/fbrowther/SQL-Challenge/blob/main/Results%20images/Query%207.png)

(8) List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.

![alt text](https://github.com/fbrowther/SQL-Challenge/blob/main/Results%20images/Query%208.png)


### Additional files
(1) The output files for all the above queries were exported as CSVs and are included in the folder 'ProsgreSQL query output csv files' (https://github.com/fbrowther/SQL-Challenge/tree/main/ProsgreSQL%20query%20output%20csv%20files)
(2) SQL script file (.sql) for the entire analysis is also included as (https://github.com/fbrowther/SQL-Challenge/blob/main/EmployeeSQL_scriptfile.sql)


