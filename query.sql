--NUMBER 1

SELECT
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.sex,
	salaries.salary

FROM
	salaries

INNER JOIN employees ON
	employees.emp_no= salaries.emp_no;



--NUMBER 2

SELECT
	first_name,
	last_name,
	hire_date
	
FROM 
	employees

WHERE 
	hire_date>= '1986-01-01' AND hire_date <= '1986-12-31';

--NUMBER 3* joins


SELECT
	dept_manager.dept_no,
	departments.dept_name,
	dept_manager.emp_no,
	employees.last_name,
	employees.first_name
	

FROM
	departments
INNER JOIN dep_manager ON
dep_manager.dept_no= departments.dept_no
INNER JOIN employees ON
employees.emp_no= dep_manager.emp_no;




--NUMBER 4* how do I join with no common column?

SELECT
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
	
FROM
	deptartments
	
INNER JOIN employees ON
employees.emp_no=dept_emp.emp_no;

--Number 5 *NO RESULTS?

SELECT
	first_name,
	last_name,
	sex
FROM
	employees
WHERE
	first_name = 'Hercules' AND last_name LIKE 'b%';
	
--NUMBER 6

SELECT 
	employees.emp_no, 
	employees.last_name, 
	employees.first_name, 
	departments.dept_name
FROM
	employees
JOIN 
	dept_emp
ON (employees.emp_no = dept_emp.emp_no)
JOIN
	departments
ON (departments.dept_no = dept_emp.dept_no)
WHERE 
departments.dept_name = 'Sales'
;

--NUMBER 7

SELECT 
	e.emp_no, 
	e.last_name, 
	e.first_name,
	d.dept_name
FROM 
	employees AS e
JOIN 
	dept_emp AS de
ON (e.emp_no = de.emp_no)
JOIN 
	departments AS d
ON (d.dept_no = de.dept_no)
WHERE 
	d.dept_name = 'Sales' OR d.dept_name = 'Development'
;

--NUMBER 8

SELECT
	e.last_name, 
	COUNT(e.last_name) 
	AS "count last names"
FROM
	employees e
GROUP BY 
	e.last_name
ORDER BY 
	"count last names" DESC
;