USE employees;


-- LESSON SAMPLE PROBLEM
-- SELECT first_name, last_name, birth_date
-- FROM employees
-- WHERE emp_no IN (
--     SELECT emp_no
--     FROM dept_manager
-- )
-- LIMIT 10;

SELECT *
FROM employees
WHERE hire_date IN (
SELECT hire_date
FROM employees
WHERE emp_no = 101010
);

SELECT *
FROM titles
WHERE emp_no IN (
SELECT emp_no
FROM employees AS e
WHERE e.first_name = 'Aamod');

SELECT first_name, last_name
FROM employees
WHERE gender = 'F'
AND emp_no IN (
SELECT emp_no
FROM dept_manager
WHERE to_date > now()
);


-- bonus

SELECT dept_name
FROM departments
WHERE dept_no IN (
  SELECT dept_no
    FROM dept_manager
    WHERE to_date > now()
  AND emp_no in (
    SELECT emp_no
      FROM employees
      WHERE gender = 'F'
  )
);


SELECT first_name, last_name, salaries.salary
FROM employees
JOIN salaries on salaries.emp_no = employees.emp_no
ORDER BY salaries.salary DESC
LIMIT 1;


-- Another way to do it
-- SELECT first_name, last_name
-- FROM employees
-- WHERE emp_no = (
-- SELECT emp_no
-- FROM salaries
-- WHERE salary in (
-- select max(salary)
-- FROM salaries
-- )
-- );
