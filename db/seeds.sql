INSERT INTO department (id, dept_name, emp_name)
VALUES (001, "Admin", "Miriam Baxter"),
       (002, "Admin", "Ray Harmon"),
       (003, "Sales", "Xiomara Bridges"),
       (004, "Sales", "Waylon Dean"),
       (005, "Sales", "Peter Gregory"),
       (006, "Engineering", "Rebekah Finley"),
       (007, "Engineering", "Amiah Sampson"),
       (008, "Product", "Eileen Gentry"),
       (009, "Product", "Haylie  Gallegos"),
       (010, "Delivery", "Aidan Lozano");
       
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