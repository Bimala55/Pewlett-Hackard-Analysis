SELECT em.emp_no, 
em.first_name,
em.last_name,
ti.title,
ti.from_date,
ti.to_date
--INTO unique titles
FROM employees AS em
INNER JOIN titles AS ti
ON em.emp_no::VARCHAR = ti.emp_no
WHERE (em.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC; 