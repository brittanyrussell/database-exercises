USE employees;

SELECT DISTINCT title FROM titles;


SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%e'
GROUP BY first_name, last_name;

SELECT DISTINCT COUNT(last_name)
FROM employees
WHERE last_name LIKE '%q%'
AND (
last_name NOT LIKE '%qu%')
ORDER BY last_name;

SELECT count(*)
FROM employees
WHERE first_name = 'Irena'
     OR first_name = 'Vidya'
     OR first_name = 'Maya'
GROUP BY gender;

