DROP DATABASE IF EXISTS tracker_db;
CREATE DATABASE tracker_db;

USE tracker_db;

CREATE TABLE department (
	dept_id INT NOT NULL AUTO_INCREMENT,
	dept_name VARCHAR(30) NOT NULL,
  PRIMARY KEY (dept_id)
);

CREATE TABLE roles (
  role_id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL(10, 2) NOT NULL,
  dept_id INT,
  PRIMARY KEY (role_id)
);

CREATE TABLE employees (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  title VARCHAR(30),
  dept_name VARCHAR(30),
  salary DECIMAL(10, 2),
  manager_id INT,
  PRIMARY KEY (id)
  
);

-- commands
-- mysql -u root -p
-- SOURCE schema.sql;
-- describe department;
-- select * from department;