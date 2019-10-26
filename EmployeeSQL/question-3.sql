SELECT departments.dept_no, dept_name, employees.emp_no, first_name, last_name, from_date AS start_date, to_date AS end_date
FROM departments
JOIN department_manager ON department_manager.dept_no = departments.dept_no
JOIN employees ON employees.emp_no = department_manager.emp_no
ORDER BY departments.dept_no, employees.emp_no