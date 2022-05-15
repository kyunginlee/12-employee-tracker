DROP DATABASE IF EXISTS tracker_db;
CREATE DATABASE tracker_db;

USE tracker_db;

CREATE TABLE department (
  id INT NOT NULL,
  dept_name VARCHAR(30),
  emp_name VARCHAR(30),
  PRIMARY KEY (id)
);

CREATE TABLE roles (
  id INT,
  title VARCHAR(30),
  salary DECIMAL,
  department_id INT,
  FOREIGN KEY (department_id)
  REFERENCES department(id)
  ON DELETE SET NULL
);

CREATE TABLE employees (
  id INT,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  role_id INT,
  manager_id INT,
  PRIMARY KEY (id)
);

-- commands
-- mysql -u root -p
-- SOURCE schema.sql;
-- describe department;
-- select * from department;