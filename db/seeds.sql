INSERT INTO department (name)
VALUES
    ( "Admin"),
    ("Sales"),
    ("Engineering"),
    ("Product"),
    ("Delivery");

INSERT INTO roles (title, salary, department_id)
VALUES 
    ("Associate", 55000, 1),
    ("Senior Associate", 70000, 2),
    ("Associate Manager", 85000, 2),
    ("Manager", 95000, 3),
    ("Senior Manager", 105000, 4),
    ("Associate Director", 1250000, 5);

INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES 
    ("Miriam", "Baxter", 1, null),
    ("Ray", "Harmon", 2, 1),
    ("Xiomara", "Bridges", 3, null),
    ("Waylon", "Dean", 4, 3),
    ("Peter", "Gregory", 5, null),
    ("Rebekah", "Finley", 6, 5);
