USE employees;


SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
  JOIN dept_manager as dm
    ON dm.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = dm.dept_no
  WHERE dm.to_date >= current_date
  ORDER by d.dept_name;


SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
  JOIN dept_manager AS dm
    ON dm.emp_no = e.emp_no
  JOIN departments AS d
    ON d.dept_no = dm.dept_no
  WHERE dm.to_date >= current_date
  AND e.gender = 'F'
  ORDER BY d.dept_name ASC;


SELECT t.title AS 'Title', count(t.title) AS 'Count'
FROM titles AS t
JOIN dept_emp AS de ON de.emp_no = t.emp_no
WHERE de.dept_no = 'd009'
AND t.to_date > now()
AND de.to_date > now()
GROUP BY t.title;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS
'Department Manager',
s.salary
FROM employees as e
  JOIN dept_manager as dm
    ON dm.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = dm.dept_no
  JOIN salaries as s
  ON s.emp_no = e.emp_no
  WHERE dm.to_date >= current_date
  AND s.to_date >= current_date
  ORDER by d.dept_name;


  SELECT
  d.dept_name,
  mortals.first_name,
  mortals.last_name,
  mgmt.first_name,
  mgmt.last_name
FROM employees mortals
  JOIN dept_emp de ON mortals.emp_no = de.emp_no
  JOIN departments d ON de.dept_no = d.dept_no
  JOIN dept_manager manager ON d.dept_no = manager.dept_no
  JOIN employees mgmt ON manager.emp_no = mgmt.emp_no
WHERE de.to_date > curdate()
      AND manager.to_date > curdate()
ORDER BY d.dept_name;








