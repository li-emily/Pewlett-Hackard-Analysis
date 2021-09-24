--Deliverable 1

-- create table of retiring age employees
SELECT e.emp_no,
	   e.first_name,
	   e.last_name,
	   t.title,
	   t.from_date,
	   t.to_date
INTO retirement_titles
FROM employees as e
	INNER JOIN titles as t
		ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no ASC;

select count(emp_no) from retirement_titles;
-- output 133,776

-- remove duplicate entries
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
					rt.first_name,
					rt.last_name,
					rt.title
INTO unique_titles
FROM retirement_titles as rt
ORDER BY emp_no ASC, rt.to_date DESC;

select count(emp_no) from unique_titles;
-- output 90,398

-- retrieve number of retiring titles
SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY COUNT(ut.title) DESC;

-- Deliverable 2

-- create table for mentorship eligibility
SELECT DISTINCT ON (e.emp_no) e.emp_no,
					e.first_name, e.last_name,
					e.birth_date, de.from_date,
					de.to_date, t.title
INTO ment_elig
FROM employees AS e
	INNER JOIN dept_emp as de
		ON (e.emp_no = de.emp_no)
	INNER JOIN titles as t
		ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND (de.to_date = '9999-01-01') AND (t.to_date = '9999-01-01')
ORDER BY e.emp_no ASC, de.to_date ASC;

select count(emp_no) from ment_elig;
-- output 1549

-- Deliverable 3

-- retrieve number of mentorship eligible employees by title
SELECT COUNT(me.title), me.title
FROM ment_elig AS me
GROUP BY me.title
ORDER BY COUNT(me.title) DESC;

-- retrieve number of employees birth date from 1966-1970
SELECT DISTINCT ON (e.emp_no) e.emp_no,
					e.first_name, e.last_name,
					e.birth_date, t.title, 
					t.from_date, t.to_date
INTO new_mentors
FROM employees AS e
	INNER JOIN titles as t
		ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1956-01-01' AND '1960-12-31')
	AND (t.to_date = '9999-01-01')
	AND (t.from_date BETWEEN '1980-01-01' AND '1990-01-01')
ORDER BY e.emp_no ASC;

select count(emp_no) from new_mentors;
-- output 7,316

-- retrieve number of new eligible mentors by title
SELECT COUNT(nm.title), nm.title
FROM new_mentors AS nm
GROUP BY nm.title
ORDER BY COUNT(nm.title) DESC;