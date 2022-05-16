DROP DATABASE IF EXISTS tracker_db;
CREATE DATABASE tracker_db;

USE tracker_db;

CREATE TABLE department (
	dept_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL,
  INDEX (dept_name)
);

CREATE TABLE roles (
  role_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL(10, 2) NOT NULL,
  dept_id INT,
  INDEX (title),
  INDEX (salary)
);

CREATE TABLE employees (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  title VARCHAR(30),
  dept_name VARCHAR(30),
  salary DECIMAL(10, 2),
  manager_id INT,
  FOREIGN KEY (title) REFERENCES roles (title) ON DELETE SET NULL,
  FOREIGN KEY (dept_name) REFERENCES department (dept_name) ON DELETE SET NULL,
  FOREIGN KEY (salary) REFERENCES roles (salary) ON DELETE SET NULL
);

-- commands
-- mysql -u root -p
-- SOURCE schema.sql;
-- describe department;
-- select * from department;