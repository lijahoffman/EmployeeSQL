# EmployeeSQL

## Summary
Performs data modeling, data engineering, and data analysis using six CSV files containing data on employees from the 1980s and 1990s found in data folder. 


## Data Modeling
CSVs inspected and used to create below Entity Relationship Diagram (ERD). 

![alt text](employee_erd.jpg?raw=True)


## Data Engineering
Data used to create a table schema for each CSV file, specifying data types, primary keys, foreign keys, and other constraints. 
Each CSV file imported into the corresponding SQL table. 

## Data Analysis 
Tables joined to return the following information: 
1. Employee number, last name, first name, sex, and salary.
2. First name, last name, and hire data for employees who were hired in 1986.
3. Department number; department name; and the manager's employee number, last name, and first name. 
4. Employee number, last name, first name, department name. 
5. First name, last name, and sex for employees whose first name is "Hercules" and last name begins with "B."
6. Employee number, last name, first name, and department name for all employees in the Sales department. 
7. Employee number, last name, first name, and department name for all employees in the Sales and Development departments. 
8. The frequency count of employee last names in descending order. 


## Technologies Used
SQL, PostgresSQL