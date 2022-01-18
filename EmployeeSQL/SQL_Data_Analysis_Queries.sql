-- Data Analysis SQL Queries
-- Once you have a complete database, do the following:


-- Question 1. List the following details of each employee: employee number, last name, first name, sex, 
-- and salary.

SELECT Employees.emp_no, 
	Employees.last_name,
	Employees.first_name,
	Employees.sex,
	Salaries.salary
FROM Employees JOIN Salaries
ON Employees.emp_no = Salaries.emp_no;



-- Question 2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name, last_name, hire_date 
From Employees
WHERE hire_date >= '01/01/1986'
AND hire_date < '01/01/1987';



-- Question 3. List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.

SELECT
	Departments.dept_no,
	Departments.dept_name,
	Dept_Manager.emp_no,
	Employees.last_name,
	Employees.first_name
FROM Departments JOIN Dept_Manager
	ON Departments.dept_no = Dept_Manager.dept_no
	JOIN Employees
		ON Dept_Manager.emp_no = Employees.emp_no;
		
		
		
-- Question 4. List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.

SELECT
	Departments.dept_name,
	Employees.emp_no,
	Employees.last_name,
	Employees.first_name
FROM Departments JOIN dept_emp 
ON Departments.dept_no = dept_emp.dept_no
JOIN Employees 
On dept_emp.emp_no = employees.emp_no;




-- Question 5. List first name, last name, and sex for employees whose first name is 
-- "Hercules" and last names begin with "B."

SELECT first_name, last_name, hire_date 
From Employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';


-- Question 6. List all employees in the Sales department, including their employee number, 
-- last name, first name, and department name.

SELECT
    Employees.emp_no,
	Employees.last_name,
	Employees.first_name,
	Departments.dept_name
FROM Departments JOIN dept_emp 
ON Departments.dept_no = dept_emp.dept_no
JOIN Employees 
On dept_emp.emp_no = employees.emp_no
Where Departments.dept_name = 'Sales';




-- Question 7. List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.

SELECT
    Employees.emp_no,
	Employees.last_name,
	Employees.first_name,
	Departments.dept_name
FROM Departments JOIN dept_emp 
ON Departments.dept_no = dept_emp.dept_no
JOIN Employees 
On dept_emp.emp_no = employees.emp_no
Where Departments.dept_name = 'Sales' or Departments.dept_name = 'Developments';



-- Question 8. In descending order, list the frequency count of employee last names,
-- i.e., how many employees share each last name.

SELECT last_name, COUNT(*) AS "Number of Last Name"
FROM Employees
GROUP BY last_name
ORDER BY COUNT(*) DESC;


