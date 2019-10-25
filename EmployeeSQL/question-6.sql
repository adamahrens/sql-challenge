SELECT employees.emp_no, last_name, first_name, dept_name
FROM employees
JOIN department_employee ON department_employee.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = department_employee.dept_no
WHERE dept_name = 'Sales'