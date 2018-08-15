-- Return 10 employees in a result set named 'full_name' in the format of 'lastname, firstname' for each employee.
-- Add the date of birth for each employee as 'DOB' to the query.
-- Update the query to format full name to include the employee number so it is formatted as 'employee number - lastname, firstname'.

SELECT CONCAT (emp_no , ' - ', last_name, ', ', first_name) AS 'full_name', birth_date AS 'DOB'
FROM employees
LIMIT 10;



select * FROM albums;

DESCRIBE albums;

ALTER TABLE albums
ADD UNIQUE (record_name, artist);

INSERT INTO albums (artist, record_name, release_date, genre, sales)
VALUES ('Test', 'test albums', 2011, 'punk rock', 12);



SHOW INDEX FROM albums;

ALTER TABLE albums DROP INDEX record_name;

SELECT * FROM employees LIMIT 2;
SELECT * FROM titles LIMIT 2;

SELECT CONCAT(employees.first_name, ' ', employees.last_name, ' is a ', titles.title)
FROM employees
JOIN titles
ON titles.emp_no = employees.emp_no
WHERE titles.to_date > NOW();

SELECT CONCAT(e.first_name, ' ', e.last_name, ' is a ', t.title)
FROM employees AS e
JOIN titles AS t
ON t.emp_no = e.emp_no
WHERE t.to_date > NOW();