CREATE DATABASE join_test_db;
USE join_test_db;


CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

DELETE FROM roles WHERE id > 4;


INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 2),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 2),
('mike', 'mike@example.com', null);

SELECT * FROM roles;
SELECT * FROM users;

SELECT CONCAT(u.name, ' is a ', r.name)
FROM users AS u
INNER JOIN roles AS r
ON u.role_id = r.id;

SELECT r.name, COUNT(u.name)
FROM roles AS r
JOIN users AS u
ON u.role_id = r.id
GROUP BY r.name;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees AS e
JOIN dept_manager AS de
  ON de.emp_no = e.emp_no
JOIN departments AS d
  ON d.dept_no = de.dept_no
  WHERE de.to_date > NOW()
  AND gender = 'f'
  ORDER by dept_name ASC;


SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) as 'Department Manager'
FROM departments d
JOIN dept_manager dm
ON dm.dept_no = d.dept_no
JOIN employees e ON e.emp_no = dm.emp_no
WHERE dm.to_date > NOW()
AND gender = 'f'
ORDER by d.dept_name;

SELECT t.title, count(t.title)
FROM titles t
JOIN dept_emp de
ON de.emp_no = t.emp_no
WHERE de.dept_no = 'd009'
AND t.to_date > NOW()
AND de.to_date > NOW()
GROUP BY t.title;

SELECT
  d.dept_name AS 'Department Name',
  CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
  s.salary AS 'Salary'
FROM employees e
  JOIN dept_manager manager ON e.emp_no = manager.emp_no
  JOIN departments d ON manager.dept_no = d.dept_no
  JOIN salaries s ON e.emp_no = s.emp_no
WHERE manager.to_date > NOW()
  AND s.to_date > NOW()
ORDER BY d.dept_name;



