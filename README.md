# SQL Challenge
As a new data engineer at Pewlett Hackard (a fictitious company), my first major task is on a research project that included querying a database to gather information about employees of the corporation from the 1980s and 1990s. All that remains of the database of employees from that period are six CSV files to carry out this project (https://github.com/fbrowther/SQL-Challenge/tree/main/EmployeeSQL%20).

# Data Modelling
First and foremost, i inspected the CSV files at hand and sketched out an ERD (entity relatiobship diagram) of the data employing a free online tool (http://www.quickdatabasediagrams.com).

![alt text](https://github.com/fbrowther/SQL-Challenge/blob/main/Results%20images/ERD%20employeeSQL.png)

# Data Engineering 
Using the provide information, i created a table schema for each of the six CSV files and specified their data types, primary keys, foreign keys, and other constraints. Finally the CSV file was imported to the corresponding SQL table under the database named 'Employees' (on ProsgreSQL accessed using pgadmin4).

# Data Analysis
As requested by the new manager, i queried the six database tables (departments, dept_emp, dept_manager, employees, salaries, titles) to answer the following questions -

(1) List the following details of each employee: employee number, last name, first name, sex, and salary.




List first name, last name, and hire date for employees who were hired in 1986.


List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.


List the department of each employee with the following information: employee number, last name, first name, and department name.


List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."


List all employees in the Sales department, including their employee number, last name, first name, and department name.


List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.



Bonus (Optional)
As you examine the data, you begin to suspect that the dataset is fake. Maybe your boss gave you spurious data in order to test the data engineering skills of a new employee? To confirm your hunch, you decide to create a visualization of the data to present to your boss. Follow these steps:


Import the SQL database into Pandas. (Yes, you could read the CSVs directly in Pandas, but you are, after all, trying to prove your technical mettle.) This step may require some research. Feel free to use the following code to get started. Be sure to make any necessary modifications for your username, password, host, port, and database name:

from sqlalchemy import create_engine
engine = create_engine('postgresql://localhost:5432/<your_db_name>')
connection = engine.connect()




Consult the SQLAlchemy documentation for more information.


If you’re using a password, do not upload your password to your GitHub repository. Review this video and the GitHub website for more information.




Create a histogram to visualize the most common salary ranges for employees.


Create a bar chart of average salary by title.



