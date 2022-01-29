-- MODULE 7: Employee Database with SQL --
------------ CHALLENGE ------------
-- Starter Code
-- Use Dictinct with Orderby to remove duplicate rows
-- https://www.postgresql.org/docs/9.5/sql-select.html
-- BETTER: https://www.techonthenet.com/postgresql/distinct.php
-- BEST: https://www.postgresqltutorial.com/postgresql-select-distinct


-- CHALLENGE Deliverable 1: The Number of Retiring Employees by Title
-- A. Retirement Table - Titles of all Employees 1/1/52-12/31/55
SELECT e.emp_no, 
e.first_name, 
e.last_name,
ts.title,
ts.from_date,
ts.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ts
ON (e.emp_no = ts.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31');

-- B. Table limited to active employees in latest role
SELECT DISTINCT ON (emp_no) emp_no,
last_name,
first_name,
title
INTO unique_titles
FROM retirement_titles
WHERE (to_date = '9999-01-01')
ORDER BY emp_no ASC;

-- C. Count of active employees retiring by title
SELECT COUNT(emp_no) as count,
title as title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;


-- CHALLENGE Deliverable 2: The Employees Eligible for the Mentorship Program
-- Mentorship Eligibility - Table of all current employees eligible by year of birth (1965)
SELECT DISTINCT ON (e.emp_no) e.emp_no, 
e.first_name, 
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
ts.title
INTO membership_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ts
ON (e.emp_no = ts.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND de.to_date = '9999-01-01'
ORDER BY emp_no ASC;