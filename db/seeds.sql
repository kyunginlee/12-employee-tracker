INSERT INTO department (id, emp_name)
VALUES (001, "Miriam Baxter"),
       (002, "Ray Harmon"),
       (003, "Xiomara Bridges"),
       (004, "Waylon Dean"),
       (005, "Peter Gregory"),
       (006, "Rebekah Finley"),
       (007, "Amiah Sampson"),
       (008, "Eileen Gentry"),
       (009, "Haylie  Gallegos"),
       (010, "Aidan Lozano");
       
INSERT INTO roles (id, title, salary, department_id)
VALUES (001, "Associate", "55000", "1"),
       (002, "Associate", "55000", "1"),
       (003, "Senior Associate", "70000", "2"),
       (004, "Senior Associate", "70000", "2"),
       (005, "Associate Manager", "85000", "3"),
       (006, "Associate Manager", "85000", "3"),
       (007, "Manager", "95000", "4"),
       (008, "Manager", "95000", "4"),
       (009, "Senior Manager", "105000", "5"),
       (010, "Associate Director", "1250000", "5");

INSERT INTO employees (id, first_name, last_name, role_id, manager_id)
VALUES (001, "Miriam", "Baxter", "01", "005"),
       (002, "Ray", "Harmon", "01", "005"),
       (003, "Xiomara", "Bridges", "02", "005"),
       (004, "Waylon", "Dean", "02", "008"),
       (005, "Peter", "Gregory", "03", "008"),
       (006, "Rebekah", "Finley", "03", "008"),
       (007, "Amiah", "Sampson", "04", "008"),
       (008, "Eileen", "Gentry", "04", "009"),
       (009, "Haylie", "Gallegos", "05", "010"),
       (010, "Aidan", "Lozano", "05", NULL);

-- commands
-- mysql -u root -p
-- SOURCE schema.sql;
-- SOURCE seeds.sql;
-- select * from products;

-- SELECT database();
-- DESCRIBE categories;