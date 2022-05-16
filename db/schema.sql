DROP DATABASE IF EXISTS tracker_db;
CREATE DATABASE tracker_db;

USE tracker_db;

CREATE TABLE department (
	dept_id INT NOT NULL AUTO_INCREMENT,
	dept_name VARCHAR(30) NOT NULL,
  PRIMARY KEY (dept_id),
  INDEX (dept_name)
);

CREATE TABLE roles (
  role_id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL(10, 2) NOT NULL,
  dept_id INT,
  PRIMARY KEY (role_id),
  INDEX (title),
  INDEX (salary)
);

CREATE TABLE employees (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  title VARCHAR(30) NOT NULL,
  dept_name VARCHAR(30) NOT NULL,
  salary DECIMAL(10, 2)NOT NULL,
  manager_id INT,
  FOREIGN KEY (title) REFERENCES roles (title),
  FOREIGN KEY (dept_name) REFERENCES department (dept_name),
  FOREIGN KEY (salary) REFERENCES roles (salary)
);

-- commands
-- mysql -u root -p
-- SOURCE schema.sql;
-- describe department;
-- select * from department;