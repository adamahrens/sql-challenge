SELECT employees.emp_no, first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '1986-%'