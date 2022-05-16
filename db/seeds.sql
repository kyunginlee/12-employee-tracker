INSERT INTO department (dept_name)
VALUES
    ( "Admin"),
    ("Sales"),
    ("Engineering"),
    ("Product"),
    ("Delivery");

INSERT INTO roles (role_id, title, salary, dept_id)
VALUES 
    ("11", "Associate", "55000", "1"),
    ("22", "Senior Associate", "70000", "2"),
    ("33", "Associate Manager", "85000", "2"),
    ("44", "Manager", "95000", "3"),
    ("55", "Senior Manager", "105000", "4"),
    ("66", "Associate Director", "1250000", "5");

INSERT INTO employees (first_name, last_name, manager_id)
VALUES 
    ("Miriam", "Baxter", "005"),
    ("Ray", "Harmon", "005"),
    ("Xiomara", "Bridges", "005"),
    ("Waylon", "Dean", "008"),
    ("Peter", "Gregory", "008"),
    ("Rebekah", "Finley", "008"),
    ("Amiah", "Sampson", "008"),
    ("Eileen", "Gentry", "009"),
    ("Haylie", "Gallegos", "010"),
    ("Aidan", "Lozano", NULL);


-- commands
-- mysql -u root -p
-- SOURCE schema.sql;
-- SOURCE seeds.sql;
-- select * from products;

-- SELECT database();
-- DESCRIBE categories;